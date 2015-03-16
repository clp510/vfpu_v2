//==================================================================
//File Name	: env_c.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.13
//Revision	: v1.0
//Description: top level class defination
// 1) instance all the verification transactor(stimu_gen_c,driver_c,etc)
// 2) define basic function and task to run the verification
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================


import  vfpu_dc_pkg::stimu_data_c ;
import  vfpu_dc_pkg::res_data_dc;
import  vfpu_dc_pkg::BIT;

`include    "../src/stimu_gen_c.sv"
`include    "../src/scoreboard_c.sv"
`include    "../src/monitor_c.sv"
`include    "../src/driver_c.sv"
//`include    "./src/vfpu_if.sv"

class   env_c;

stimu_gen_c                 stimu_gen_c_inst;//stimulus generator transactor
mailbox #( stimu_data_c )   gen2drv_mbx;//mailbox to send stimulus data from stimu_gen_c to driver_c transactor
driver_c                    driver_c_inst;//driver transactor 

monitor_c                   monitor_c_inst;//monitor transactor
mailbox #( res_data_dc   )   mon2scb_mbx;//mailbox to send result data from monitor to scoreboard transactor 
scoreboard_c                scb_c_inst;//scoreboard transacotr


virtual test_dutw_if.TST    test_if_inst;
//function and task declaration
extern  function    new ( virtual test_dutw_if.TST  test_if_inst);

//build function 
extern  function    void build();

//run task
//extern  task    end_detect();

endclass : env_c

//----------------------------------------------------------
//function and task declaration
//----------------------------------------------------------
function    env_c::new(
                        virtual test_dutw_if.TST    test_if_inst   
                        );

    this.test_if_inst           = test_if_inst;
    $display("new function of env_c\n");

endfunction : new

//build function
function    void env_c::build ();

    gen2drv_mbx                 = new( 5 );//capcity is  5
    mon2scb_mbx                 = new();


    stimu_gen_c_inst            = new( gen2drv_mbx      );

    driver_c_inst               = new( gen2drv_mbx,//communicate with stimu_gen_c_inst
                                       test_if_inst//communicate with dut_wrapper
                                       );
    scb_c_inst                  = new(   
                                       mon2scb_mbx//from monitor transactor 
                                       );
    monitor_c_inst              = new( 
                                        mon2scb_mbx,     
                                        test_if_inst
                                        );
//    counter                     = 0;                                        

endfunction : build

//-------------------------------------------------------------




