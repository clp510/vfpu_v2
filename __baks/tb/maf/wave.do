onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /maf_tb/clk
add wave -noupdate -format Logic /maf_tb/nj_mode
add wave -noupdate -format Logic /maf_tb/op_vld
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/a
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/b
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/c
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/res
add wave -noupdate -format Logic /maf_tb/res_rdy
add wave -noupdate -format Literal -radix unsigned /maf_tb/counter
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/sa
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/sb
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/sc
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/ea_bias
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/eb_bias
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/ec_bias
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/ea
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/eb
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/ec
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/a_frac
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/b_frac
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/c_frac
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/inv_mask
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/s_tmp
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/final_m
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/exp_ab
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/mul_stage_inst/exp_handler_inst/exp_ab_27
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/exp_tmp
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/mul_stage_inst/exp_handler_inst/d
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/mul_stage_inst/shf_num
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/c_frac_align_h
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/c_frac_align_m
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/c_frac_align_l
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/carry
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/sum
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/exp_ab
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/nan_ecp
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/invalid_ecp
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/inf_ecp
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/zero_ecp
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/overflow_ecp
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/underflow_ecp
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_mask
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/res_spec
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/a_nan_m
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/spec_handler_inst/operand_a
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/frac_inter_h_s
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/frac_inter
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/s_final
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/exp_norm
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/frac_inter_norm
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/zero_m
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/denorm_m
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/frac_inter_norm
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/round_stage_inst/res_tmp
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/round_stage_inst/frac_final
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/round_stage_inst/frac_z2
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/round_stage_inst/frac_z1
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/round_stage_inst/tie_m
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/round_stage_inst/grs
add wave -noupdate -format Logic -radix hexadecimal /maf_tb/maf_inst/round_stage_inst/inf_m
add wave -noupdate -format Literal -radix hexadecimal /maf_tb/maf_inst/res
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {95 ns} 0}
configure wave -namecolwidth 202
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {75 ns} {172 ns}
