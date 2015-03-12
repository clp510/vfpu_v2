exec gcc -c ref_top.c -o ref_top.o
exec gcc -shared -o ref_top.so ref_top.o

vlib work
vlog -f run.f
vsim top_tb_m -novopt -sv_lib ref_top 
#do wave.do
#run 0.1ms
