#========================================================
# Script for Design Compiler
# Language  : TCL
# Usage     :
#           1) make sure the lib in the current directory
#           2) if you have the file .synopsys_dc.setup,
#              set synopsys_dc_setup_file 1, 
#              if not, set synopsys_dc_setup_file 0
#           3) change Step 3 : Variables to what you want
#              Especially : top module name, clock name,
#              reset name, all files name, and period
#           4) typing dc_shell-t -f run.tcl | tee -i run.log
#           5) Good Luck!
#
# Author    : TanXingliang
# Date      : 2009.07
#=========================================================
# Modified by cuiluping (2013.8.12),resolve the problem of 
# multiple instance in dc,namely a module can be  instiated 
# several times with different parameter.
#========================================================

set synopsys_dc_setup_file 0
#-----------------------------------------------------
# Step 1 :
# Setting Up path and library
# If you have edited the file .synopsys_dc.setup,
# then you can skip over this step
#-----------------------------------------------------
if {$synopsys_dc_setup_file == 0} {
set search_path [list . ${synopsys_root}/libraries/syn ./src  /usr/eda/synopsys/lib/smic13_lib]
set target_library  {typical_1v2c25.db};                  # if you want use fast library,change to fast.db
set link_library  [list {*} $target_library dw_foundation.sldb ] 
set symbol_library  {smic13g.sdb}
set synthetic_library  {dw_foundation.sldb};    # Design Ware
set command_log_file   "./command.log"
}

#-----------------------------------------------------
# Step 2 :
# Compile Swithes
#-----------------------------------------------------
set verilogout_no_tri 				 true ;         # if inout used, tri net will be used
set test_default_scan_style          multiplexed_flip_flop
set link_force_case                  case_insensitive
define_name_rules VLSI_NET -allowed "a-zA-Z0-9_" -first_restricted "0-9_" -type net -max_length 256
define_name_rules VLSI_CELL -allowed "a-zA-Z0-9_" -first_restricted "0-9_" -type cell -max_length 256
define_name_rules VLSI_PORT -allowed "a-zA-Z0-9_" -first_restricted "0-9_" -type port -max_length 256
define_name_rules TAN_RULE -allowed "a-zA-Z0-9_" -first_restricted "0-9_\[]" -max_length 256 -map {{{"*cell*", "mycell"}, {"*-return", "myreturn"}}};
set hdlin_check_no_latch "true"
set hdlin_merge_nested_conditional_statements "true"
set bus_naming_style       {%s[%d]}

#-----------------------------------------------------
# Step 3 :
# Define Variables
#-----------------------------------------------------
set active_design "maf";                      # Top module name
source files.tcl;                                   # All RTL source_files (verilog)
set clock_name "clk";                           # Name of clock
set reset_name "rst_b";                       # Name of reset


set clk_period 3;                               # Desired Clock Period = 1000/Frequence
set clk_uncertainty_setup 0.5;                 # Uncertainty of clock
set clk_latency 0.5;                            # Network Latency of clock
set input_delay 0;           # Input Delay of all input ports except clock
set output_delay 0;        # Output Delay of all output ports

set area_desired 0;

set wire_load_model "smic13_wl10";              # Model of the intra net
set output_load "typical_1v2c25/INVX8/A" ;                # model of the output_load

set synthesis_reports  {synthesis_reports};    #name of report directory
sh  mkdir $synthesis_reports;
set timing_report       "./$synthesis_reports/$active_design\_timing.rpt"
set timing_max20_report "./$synthesis_reports/$active_design\_timing_max20.rpt"
set area_report         "./$synthesis_reports/$active_design\_area.rpt"
set references_report   "./$synthesis_reports/$active_design\_references.rpt"
set cell_report         "./$synthesis_reports/$active_design\_cell.rpt"
set constraint_report   "./$synthesis_reports/$active_design\_constraint.rpt"
set power_report        "./$synthesis_reports/$active_design\_power.rpt"
set check_syntax_report "./$synthesis_reports/$active_design\_check_design.rpt"

set synthesis_netlist  {synthesis_netlist};   #name of outfile directory
sh  mkdir $synthesis_netlist;
set out_netlist         "./$synthesis_netlist/$active_design\_netlist.v";
set out_db              "./$synthesis_netlist/$active_design.db";
set out_sdf             "./$synthesis_netlist/$active_design.sdf";
set out_sdc             "./$synthesis_netlist/$active_design.sdc";


#-----------------------------------------------------
# Step 4 :
# Read design to DC Memory
#-----------------------------------------------------
#foreach active_files $files {
#			read_verilog $active_files
#}

define_design_lib work -path ./WORK
foreach active_files $files {
			analyze -f verilog $active_files
}

elaborate $active_design

current_design $active_design



#saif_map -start

# to resolve multiple instances in DC
uniquify

if {[link] ==0} {
    echo "Linking Error!";
    exit;
}
uniquify
if {[check_design] == 0} {
    echo "Check Design Error!";
    exit;
}
#check_design > $check_syntax_report

#-----------------------------------------------------
# Step 5 :
# Constraint 
#-----------------------------------------------------
set_operating_conditions "typical_1v2c25"
#-----Net load------
#set_max_transition 6 $active_design
set_wire_load_model -name $wire_load_model
set_wire_load_mode top

#-----clock------
create_clock -name $clock_name -period [expr $clk_period] [get_ports $clock_name]
set_clock_uncertainty -setup $clk_uncertainty_setup [get_clocks $clock_name]
set_clock_latency $clk_latency [get_clocks $clock_name]
set_dont_touch_network [get_clocks $clock_name]
#set_dont_touch_network [get_ports $reset_name]
#set_ideal_network [get_ports $reset_name]


#-----drive------
set_drive 0 [get_ports $clock_name]
set_drive 0 [get_ports $reset_name]

#-----input/output delay------
set_input_delay [expr $input_delay] -clock $clock_name [all_inputs]
remove_input_delay [get_ports $clock_name ]
set_output_delay [expr $output_delay] -clock $clock_name [all_outputs]

#-----Output load------
set_load [expr [load_of $output_load]*5] [all_outputs]

#----- Area ------
set_max_area $area_desired

#----- insert buffer replace assign ------
set_fix_multiple_port_nets -all -buffer_constants
set compile_implementation_selection "true"
set compile_disable_hierarchical_inverter_opt "true"
#-----------------------------------------------------
# Step 6 :
# Compile 
# Also can use compile_ultra
#-----------------------------------------------------
compile -map_effort high


#-----------------------------------------------------
# Step 7 :
# Reports (Timing, Area ...)
#-----------------------------------------------------
set verilogout_show_unconnected_pins    ture;
remove_unconnected_ports [get_cells -hier {*}]
###############################
change_names -hierarchy -rules TAN_RULE
report_timing -delay max -max_paths 20 > $timing_report
report_timing -delay max -path end -max_path 10 > $timing_max20_report
report_area > $area_report
report_reference > $references_report
report_cell > $cell_report
report_constraint -all_violators -verbose > $constraint_report
report_power -analysis_effort high -verbose > $power_report
check_design > $check_syntax_report


#-----------------------------------------------------
# Step 8 :
# Write Files (netlist out)
#-----------------------------------------------------
change_names -rule verilog -hier
write -format verilog -hierarchy -output $out_netlist
#write -format db -hierarchy -output $out_db
write_sdf  $out_sdf
write_sdc  $out_sdc
write_parasitics -output ./$active_design.spf
#sh vcd2saif -input ./$active_design.dump -output ./rtlvcd.saif
#saif_map -create_map -source_instance l-r_t/lr1 -input ./rtlvcd.saif 
#saif_map -write_map ./$active_design\_ptpxmap.tcl -type ptpx



#============================ End ============================
