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

class   env_c;

stimu_gen_c                 stimu_gen_c_inst;//stimulus generator transactor
mailbox #( stimu_data_c )   gen2drv_mbx;//mailbox to send stimulus data from stimu_gen_c to driver_c transactor
driver_c                    driver_c_inst;//driver transactor 

monitor_c                   monitor_c_inst;//monitor transactor
mailbox #( res_data_c   )   mon2scb_mbx;//mailbox to send result data from monitor to scoreboard transactor 
scoreboard_c                scb_c_inst;//scoreboard transacotr

//data class declaration
drv2scb_dc                  drv2scb_dc_inst;//class data from driver to scoreboard

//function and task declaration
extern  function    new (
                        input   test_dutw_if.IN     dutw2mon_if_inst,
                        input   test_dutw_if.OUT    drv2dutw_if_inst
                        );
extern  task    end_detect();

endclass : env_c

//----------------------------------------------------------
//function and task declaration
//----------------------------------------------------------
function    env_c::new(
                        input   test_dutw_if.IN     dutw2mon_if_inst,
                        input   test_dutw_if.OUT    drv2dutw_if_inst
                        );

    gen2drv_mbx                 = new();
    mon2scb_mbx                 = new();
    drv2scb_dc_inst             = new();

    stimu_gen_c_inst            = new( gen2drv_mbx      );

    driver_c_inst               = new( gen2drv_mbx,//communicate with stimu_gen_c_inst
                                       drv2scb_dc_inst,//communicate with scoreboard
                                       drv2dutw_if_inst//communicate with dut_wrapper
                                       );
    scb_c_inst                  = new( drv2scb_dc_inst,  
                                       mon2scb_mbx 
                                       );
    monitor_c_inst              = new( 
                                        dutw2mon_if_inst,
                                        mon2scb_mbx      
                                        );
    counter                     = 0;                                        

endfunction : new

//-------------------------------------------------------------

task    env_c::end_detect  ();

if( scb_c_inst.counter >= `MAX_NUM )
    $stop;

endtask : end_detect    



