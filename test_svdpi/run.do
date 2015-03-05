exec gcc -c top.c -o top.o
exec gcc -shared -o top.so top.o

vlib work
vlog -incr -f run.f
vsim counter -novopt -sv_lib top
run 1000ns
