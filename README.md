2014.12.03
second version of vfpu,MAF module is rewrite to exactly obey the <<PowerISA_v2.06B>>. by clp
2014.12.23
about git:push local files to github
git push -u origin master 

2015.01.19
create shared .so file in linux
for example ,the c source file is "counter.c"
step1:create the .o file
    gcc -c counter.c -o counter.o
step2:create the shared .so file
    gcc -shared -o counter.so counter.o
(vsim -sv_lib *.so work.* )
see the directory "./test_svdpi"

2015.01.25
how to execute shell command in tcl script?
solution: exec

2014.03.13
adding VCS support
