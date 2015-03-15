1. Meanings of suffix
_p      : program
_pkg    : package
_m      : module
_mbx    : mailbox
_t      : task
_f      : function
_if     : interface
_s      : typedef struct packed
_c      : class
_dc     : data class ,a class that only contains data,no function or task.


//2015.03.13 added by clp
2. Both Modelsim and VCS now can simulate the whole verification environment.
 1) for vsim:
    change directory into sim_vsim,type the following command in terminal:
        vsim -do run.do -c
 2) for vcs:
    change directory into sim_vcs,type the following command in terminal:
        ./run.sh
    ps:donnot forget to load the license of sysnopsys eda tools before run the above command.

//2015.03.15
3. add windows simulation dir :sim_win
