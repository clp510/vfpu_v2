onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb_m/test_dutw_if_inst/clk
add wave -noupdate -radix hexadecimal /top_tb_m/test_dutw_if_inst/operand_a
add wave -noupdate -radix hexadecimal /top_tb_m/test_dutw_if_inst/operand_b
add wave -noupdate -radix hexadecimal /top_tb_m/test_dutw_if_inst/operand_c
add wave -noupdate /top_tb_m/test_dutw_if_inst/op_vld
add wave -noupdate -radix hexadecimal /top_tb_m/test_dutw_if_inst/res
add wave -noupdate /top_tb_m/test_dutw_if_inst/res_rdy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {200 ns} 0}
configure wave -namecolwidth 432
configure wave -valuecolwidth 57
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
WaveRestoreZoom {0 ns} {268 ns}
