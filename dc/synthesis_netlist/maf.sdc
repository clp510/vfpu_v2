###################################################################

# Created by write_sdc on Fri Mar 13 11:16:20 2015

###################################################################
set sdc_version 1.7

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions typical_1v2c25 -library typical_1v2c25
set_wire_load_mode top
set_wire_load_model -name smic13_wl10 -library typical_1v2c25
set_max_area 0
set_load -pin_load 0.092465 [get_ports {res[31]}]
set_load -pin_load 0.092465 [get_ports {res[30]}]
set_load -pin_load 0.092465 [get_ports {res[29]}]
set_load -pin_load 0.092465 [get_ports {res[28]}]
set_load -pin_load 0.092465 [get_ports {res[27]}]
set_load -pin_load 0.092465 [get_ports {res[26]}]
set_load -pin_load 0.092465 [get_ports {res[25]}]
set_load -pin_load 0.092465 [get_ports {res[24]}]
set_load -pin_load 0.092465 [get_ports {res[23]}]
set_load -pin_load 0.092465 [get_ports {res[22]}]
set_load -pin_load 0.092465 [get_ports {res[21]}]
set_load -pin_load 0.092465 [get_ports {res[20]}]
set_load -pin_load 0.092465 [get_ports {res[19]}]
set_load -pin_load 0.092465 [get_ports {res[18]}]
set_load -pin_load 0.092465 [get_ports {res[17]}]
set_load -pin_load 0.092465 [get_ports {res[16]}]
set_load -pin_load 0.092465 [get_ports {res[15]}]
set_load -pin_load 0.092465 [get_ports {res[14]}]
set_load -pin_load 0.092465 [get_ports {res[13]}]
set_load -pin_load 0.092465 [get_ports {res[12]}]
set_load -pin_load 0.092465 [get_ports {res[11]}]
set_load -pin_load 0.092465 [get_ports {res[10]}]
set_load -pin_load 0.092465 [get_ports {res[9]}]
set_load -pin_load 0.092465 [get_ports {res[8]}]
set_load -pin_load 0.092465 [get_ports {res[7]}]
set_load -pin_load 0.092465 [get_ports {res[6]}]
set_load -pin_load 0.092465 [get_ports {res[5]}]
set_load -pin_load 0.092465 [get_ports {res[4]}]
set_load -pin_load 0.092465 [get_ports {res[3]}]
set_load -pin_load 0.092465 [get_ports {res[2]}]
set_load -pin_load 0.092465 [get_ports {res[1]}]
set_load -pin_load 0.092465 [get_ports {res[0]}]
set_load -pin_load 0.092465 [get_ports res_rdy]
create_clock [get_ports clk]  -period 3  -waveform {0 1.5}
set_clock_latency 0.5  [get_clocks clk]
set_clock_uncertainty -setup 0.5  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports nj_mode]
set_input_delay -clock clk  0  [get_ports op_vld]
set_input_delay -clock clk  0  [get_ports {a[31]}]
set_input_delay -clock clk  0  [get_ports {a[30]}]
set_input_delay -clock clk  0  [get_ports {a[29]}]
set_input_delay -clock clk  0  [get_ports {a[28]}]
set_input_delay -clock clk  0  [get_ports {a[27]}]
set_input_delay -clock clk  0  [get_ports {a[26]}]
set_input_delay -clock clk  0  [get_ports {a[25]}]
set_input_delay -clock clk  0  [get_ports {a[24]}]
set_input_delay -clock clk  0  [get_ports {a[23]}]
set_input_delay -clock clk  0  [get_ports {a[22]}]
set_input_delay -clock clk  0  [get_ports {a[21]}]
set_input_delay -clock clk  0  [get_ports {a[20]}]
set_input_delay -clock clk  0  [get_ports {a[19]}]
set_input_delay -clock clk  0  [get_ports {a[18]}]
set_input_delay -clock clk  0  [get_ports {a[17]}]
set_input_delay -clock clk  0  [get_ports {a[16]}]
set_input_delay -clock clk  0  [get_ports {a[15]}]
set_input_delay -clock clk  0  [get_ports {a[14]}]
set_input_delay -clock clk  0  [get_ports {a[13]}]
set_input_delay -clock clk  0  [get_ports {a[12]}]
set_input_delay -clock clk  0  [get_ports {a[11]}]
set_input_delay -clock clk  0  [get_ports {a[10]}]
set_input_delay -clock clk  0  [get_ports {a[9]}]
set_input_delay -clock clk  0  [get_ports {a[8]}]
set_input_delay -clock clk  0  [get_ports {a[7]}]
set_input_delay -clock clk  0  [get_ports {a[6]}]
set_input_delay -clock clk  0  [get_ports {a[5]}]
set_input_delay -clock clk  0  [get_ports {a[4]}]
set_input_delay -clock clk  0  [get_ports {a[3]}]
set_input_delay -clock clk  0  [get_ports {a[2]}]
set_input_delay -clock clk  0  [get_ports {a[1]}]
set_input_delay -clock clk  0  [get_ports {a[0]}]
set_input_delay -clock clk  0  [get_ports {b[31]}]
set_input_delay -clock clk  0  [get_ports {b[30]}]
set_input_delay -clock clk  0  [get_ports {b[29]}]
set_input_delay -clock clk  0  [get_ports {b[28]}]
set_input_delay -clock clk  0  [get_ports {b[27]}]
set_input_delay -clock clk  0  [get_ports {b[26]}]
set_input_delay -clock clk  0  [get_ports {b[25]}]
set_input_delay -clock clk  0  [get_ports {b[24]}]
set_input_delay -clock clk  0  [get_ports {b[23]}]
set_input_delay -clock clk  0  [get_ports {b[22]}]
set_input_delay -clock clk  0  [get_ports {b[21]}]
set_input_delay -clock clk  0  [get_ports {b[20]}]
set_input_delay -clock clk  0  [get_ports {b[19]}]
set_input_delay -clock clk  0  [get_ports {b[18]}]
set_input_delay -clock clk  0  [get_ports {b[17]}]
set_input_delay -clock clk  0  [get_ports {b[16]}]
set_input_delay -clock clk  0  [get_ports {b[15]}]
set_input_delay -clock clk  0  [get_ports {b[14]}]
set_input_delay -clock clk  0  [get_ports {b[13]}]
set_input_delay -clock clk  0  [get_ports {b[12]}]
set_input_delay -clock clk  0  [get_ports {b[11]}]
set_input_delay -clock clk  0  [get_ports {b[10]}]
set_input_delay -clock clk  0  [get_ports {b[9]}]
set_input_delay -clock clk  0  [get_ports {b[8]}]
set_input_delay -clock clk  0  [get_ports {b[7]}]
set_input_delay -clock clk  0  [get_ports {b[6]}]
set_input_delay -clock clk  0  [get_ports {b[5]}]
set_input_delay -clock clk  0  [get_ports {b[4]}]
set_input_delay -clock clk  0  [get_ports {b[3]}]
set_input_delay -clock clk  0  [get_ports {b[2]}]
set_input_delay -clock clk  0  [get_ports {b[1]}]
set_input_delay -clock clk  0  [get_ports {b[0]}]
set_input_delay -clock clk  0  [get_ports {c[31]}]
set_input_delay -clock clk  0  [get_ports {c[30]}]
set_input_delay -clock clk  0  [get_ports {c[29]}]
set_input_delay -clock clk  0  [get_ports {c[28]}]
set_input_delay -clock clk  0  [get_ports {c[27]}]
set_input_delay -clock clk  0  [get_ports {c[26]}]
set_input_delay -clock clk  0  [get_ports {c[25]}]
set_input_delay -clock clk  0  [get_ports {c[24]}]
set_input_delay -clock clk  0  [get_ports {c[23]}]
set_input_delay -clock clk  0  [get_ports {c[22]}]
set_input_delay -clock clk  0  [get_ports {c[21]}]
set_input_delay -clock clk  0  [get_ports {c[20]}]
set_input_delay -clock clk  0  [get_ports {c[19]}]
set_input_delay -clock clk  0  [get_ports {c[18]}]
set_input_delay -clock clk  0  [get_ports {c[17]}]
set_input_delay -clock clk  0  [get_ports {c[16]}]
set_input_delay -clock clk  0  [get_ports {c[15]}]
set_input_delay -clock clk  0  [get_ports {c[14]}]
set_input_delay -clock clk  0  [get_ports {c[13]}]
set_input_delay -clock clk  0  [get_ports {c[12]}]
set_input_delay -clock clk  0  [get_ports {c[11]}]
set_input_delay -clock clk  0  [get_ports {c[10]}]
set_input_delay -clock clk  0  [get_ports {c[9]}]
set_input_delay -clock clk  0  [get_ports {c[8]}]
set_input_delay -clock clk  0  [get_ports {c[7]}]
set_input_delay -clock clk  0  [get_ports {c[6]}]
set_input_delay -clock clk  0  [get_ports {c[5]}]
set_input_delay -clock clk  0  [get_ports {c[4]}]
set_input_delay -clock clk  0  [get_ports {c[3]}]
set_input_delay -clock clk  0  [get_ports {c[2]}]
set_input_delay -clock clk  0  [get_ports {c[1]}]
set_input_delay -clock clk  0  [get_ports {c[0]}]
set_output_delay -clock clk  0  [get_ports {res[31]}]
set_output_delay -clock clk  0  [get_ports {res[30]}]
set_output_delay -clock clk  0  [get_ports {res[29]}]
set_output_delay -clock clk  0  [get_ports {res[28]}]
set_output_delay -clock clk  0  [get_ports {res[27]}]
set_output_delay -clock clk  0  [get_ports {res[26]}]
set_output_delay -clock clk  0  [get_ports {res[25]}]
set_output_delay -clock clk  0  [get_ports {res[24]}]
set_output_delay -clock clk  0  [get_ports {res[23]}]
set_output_delay -clock clk  0  [get_ports {res[22]}]
set_output_delay -clock clk  0  [get_ports {res[21]}]
set_output_delay -clock clk  0  [get_ports {res[20]}]
set_output_delay -clock clk  0  [get_ports {res[19]}]
set_output_delay -clock clk  0  [get_ports {res[18]}]
set_output_delay -clock clk  0  [get_ports {res[17]}]
set_output_delay -clock clk  0  [get_ports {res[16]}]
set_output_delay -clock clk  0  [get_ports {res[15]}]
set_output_delay -clock clk  0  [get_ports {res[14]}]
set_output_delay -clock clk  0  [get_ports {res[13]}]
set_output_delay -clock clk  0  [get_ports {res[12]}]
set_output_delay -clock clk  0  [get_ports {res[11]}]
set_output_delay -clock clk  0  [get_ports {res[10]}]
set_output_delay -clock clk  0  [get_ports {res[9]}]
set_output_delay -clock clk  0  [get_ports {res[8]}]
set_output_delay -clock clk  0  [get_ports {res[7]}]
set_output_delay -clock clk  0  [get_ports {res[6]}]
set_output_delay -clock clk  0  [get_ports {res[5]}]
set_output_delay -clock clk  0  [get_ports {res[4]}]
set_output_delay -clock clk  0  [get_ports {res[3]}]
set_output_delay -clock clk  0  [get_ports {res[2]}]
set_output_delay -clock clk  0  [get_ports {res[1]}]
set_output_delay -clock clk  0  [get_ports {res[0]}]
set_output_delay -clock clk  0  [get_ports res_rdy]
