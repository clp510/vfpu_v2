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

class   driver_c    ;

mailbox #( stimu_data_c ) gen2drv_mbx;// mailbox

stimu_data_c                stimu_data_c_inst;//receive data from mailbox
drv2scb_dc                  drv2scb_dc_inst;//data send to scoreboard class
virtual test_dutw_if.OUT    drv2dutw_if_inst;//communicate with dut_wrapper
extern  function new    (
                        input mailbox #( stimu_data_c )     gen2drv_mbx,
                        input drv2scb_dc                    drv2scb_dc_inst,
                        input test_dutw_if.OUT              drv2dutw_if_inst
                        );
extern  task    run ();

endclass : driver_c

//---------------------------------------------------
//function and task defination
//---------------------------------------------------
function    driver_c::new   (
                        input mailbox #( stimu_data_c )     gen2drv_mbx,
                        input drv2scb_dc                    drv2scb_dc_inst,
                        input test_dutw_if.OUT              drv2dutw_if_inst
                            );
    this.gen2drv_mbx        = gen2drv_mbx;
    this.drv2scb_dc_inst    = drv2scb_dc_inst;
    this.drv2dutw_if_inst   = drv2dutw_if_inst;
    this.stimu_data_c_inst  = new();
endfunction : new

//---------------------------------------------------

task    driver_c::run   ();

//retrieve data from mailbox
gen2drv_mbx.get( stimu_data_c_inst );

//send data to dut_wrapper and scoreboard transactor
//to dut_wrapper,trigged @(posedge clk )
drv2dutw_if_inst.op_vld     = stimu_data_c_inst.op_vld;
drv2dutw_if_inst.operand_a  = stimu_data_c_inst.operand_a;
drv2dutw_if_inst.operand_b  = stimu_data_c_inst.operand_b;
drv2dutw_if_inst.operand_c  = stimu_data_c_inst.operand_c;
                        
//to scoreboard
drv2scb_dc_inst.operand_a   = stimu_data_c_inst.operand_a;
drv2scb_dc_inst.operand_b   = stimu_data_c_inst.operand_b;
drv2scb_dc_inst.operand_c   = stimu_data_c_inst.operand_c;

endtask : run
