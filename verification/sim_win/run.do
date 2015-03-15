gcc -c ../ref_model/ref_top.c -o ref_top.o
gcc -shared -Bsymbolic -o ref_top.dll ref_top.o

vlib work
vlog -f run.f
vsim top_tb_m -novopt -sv_lib ref_top 
#do wave.do
