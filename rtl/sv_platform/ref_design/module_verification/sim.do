#===============================================================================
#  File Name            : t_vsfx_env.sv
#  File Revision        : 1.0
#  Date                 : 2013/12/9
#  Author               : wangjie
#  Email                : ycyquick@foxmail.com
#  History				: 
#  ----------------------------------------------------------------------------
#  Description      :   fuctional simulation platform				     
#  Function         :   autorun script
#  ----------------------------------------------------------------------------
# Copyright (c) 2013,Tianjin University.
#               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
# Tianjin University Confidential Proprietary
# ==============================================================================

#===============================================================================

vlib work
vlog -incr -f run.f
vlog -incr -f run.f
gcc -c gcc_top.c
gcc -shared -Bsymbolic -o gcc_top.dll gcc_top.o
vsim -c -sv_lib gcc_top top_class_based -novopt -wlfdeleteonquit
#add wave -r /*
run -all
quit -f