//==================================================================
//File Name	: driver_c.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.13
//Revision	: v1.0
//Description: driver transactor,
//  1) receive constraint random data from mailbox 
//  2) send stimulus data to dut_wrapper and scoreboard transactor through data class
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================

import vfpu_dc_pkg::*;

class   driver_c    ;

mailbox #( stimu_data_c ) gen2drv_mbx;// mailbox

stimu_data_c                stimu_data_c_inst;//receive data from mailbox
virtual test_dutw_if.TST    drv2dutw_if_inst;//communicate with dut_wrapper
extern  function new    (
                        input mailbox #( stimu_data_c )     gen2drv_mbx,
                        virtual test_dutw_if.TST      test_if_inst
                        //input test_dutw_if.TST      test_if_inst
                        );
extern  task    run ();

endclass : driver_c

//---------------------------------------------------
//function and task defination
//---------------------------------------------------
function    driver_c::new   (
                        input mailbox #( stimu_data_c )     gen2drv_mbx,
                        virtual test_dutw_if.TST      test_if_inst
                            );
    this.gen2drv_mbx        = gen2drv_mbx;
    this.drv2dutw_if_inst   = test_if_inst;
    this.stimu_data_c_inst  = new();
endfunction : new

//---------------------------------------------------

task    driver_c::run   ();


//
drv2dutw_if_inst.cbt.op_vld     <= 1'b0;
drv2dutw_if_inst.cbt.operand_a  <= 32'h0;
drv2dutw_if_inst.cbt.operand_b  <= 32'h0;
drv2dutw_if_inst.cbt.operand_c  <= 32'h0;

while ( 1 )//or forever 
begin

//retrieve data from mailbox
gen2drv_mbx.get( stimu_data_c_inst );

//print the retrieved data
//$display("driver_c\n,op_vld=%b\n,a=%h\n,b=%h\n,c=%h\n",stimu_data_c_inst.op_vld,stimu_data_c_inst.operand_a,stimu_data_c_inst.operand_b,stimu_data_c_inst.operand_c);

//send data to dut_wrapper and scoreboard transactor
@(drv2dutw_if_inst.cbt);

//to dut_wrapper
    drv2dutw_if_inst.cbt.op_vld     <= stimu_data_c_inst.op_vld;
    drv2dutw_if_inst.cbt.operand_a  <= stimu_data_c_inst.operand_a;
    drv2dutw_if_inst.cbt.operand_b  <= stimu_data_c_inst.operand_b;
    drv2dutw_if_inst.cbt.operand_c  <= stimu_data_c_inst.operand_c;
                        
end //end while

endtask : run
