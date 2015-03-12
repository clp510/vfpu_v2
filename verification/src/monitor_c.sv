//==================================================================
//File Name	: monitor_c.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.15
//Revision	: v1.0
//Description: monitor transactor,
//  1) sample the result data as well as corresponding inputs from DUT through interface
//  2) transimit result data to scoreboard through interface
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================

import vfpu_dc_pkg::*;

class   monitor_c   ;

virtual test_dutw_if.TST    dutw2mon_if_inst;
mailbox #( res_data_dc )    mon2scb_mbx;
res_data_dc                 res_data_dc_inst;

extern  function new    (
                        input   mailbox #( res_data_dc )    mon2scb_mbx,
                        input   virtual test_dutw_if.TST   test_if_inst 
                        );
extern  task    run();

endclass : monitor_c

//------------------------------------------
//function and task defination
//------------------------------------------
function    monitor_c::new    (
                        input   mailbox #( res_data_dc ) mon2scb_mbx,
                        input   virtual test_dutw_if.TST test_if_inst
                        );
    this.dutw2mon_if_inst   = test_if_inst;
    this.mon2scb_mbx        = mon2scb_mbx;

    res_data_dc_inst        = new();
endfunction : new

task    monitor_c::run();

while( 1 )//or forever
begin

    if( res_data_dc_inst.res_rdy == 1'b1 )//current result is ready
        mon2scb_mbx.put( res_data_dc_inst );//put data into mailbox

//retrieve data from DUT. use clocking block to syn
    @(dutw2mon_if_inst.cbt);
    res_data_dc_inst.res_rdy        = dutw2mon_if_inst.cbt.res_rdy;
    res_data_dc_inst.res            = dutw2mon_if_inst.cbt.res;
    res_data_dc_inst.op_vld_rx      = dutw2mon_if_inst.cbt.op_vld_rx;
    res_data_dc_inst.operand_a_rx   = dutw2mon_if_inst.cbt.operand_a_rx;
    res_data_dc_inst.operand_b_rx   = dutw2mon_if_inst.cbt.operand_b_rx;
    res_data_dc_inst.operand_c_rx   = dutw2mon_if_inst.cbt.operand_c_rx;
end//end while

endtask : run        
                            
