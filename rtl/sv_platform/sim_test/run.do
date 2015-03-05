exec gcc -c ref_top.c -o ref_top.o
exec gcc -shared -o ref_top.so ref_top.o

vlib work
vlog -incr -f run.f
vsim vfpu_top_m -novopt -sv_lib ref_top 
