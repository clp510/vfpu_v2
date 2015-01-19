//==================================================================
//File Name	: scoreboard_c.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.15
//Revision	: v1.0
//Description: scoreboard transactor 
//  1) receive result data from monitor through mailbox
//  2) receive stimulus data from driver through data class
//  3) obtain software result and perform comparison between software result and hardware result
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================

class   scoreboard_c;
//import c program as reference model  
import "DPI-C" function void do_vec_vmaddfp    (output bit[127:0]vrt, 

                                                input bit[127:0]vra, vrb, vrc);
//-------------------------------------------------------------------

mailbox #( res_data_dc )    mon2scb_mbx;
drv2scb_dc                  drv2scb_dc_inst;
res_data_dc                 res_data_dc_hw;//store hardware result data
BIT [31:0]                  res_sw;//store software result data
integer                     counter;
//function and task declaration
extern  function new (
                    input   mailbox #( res_data_dc ) mon2scb_mbx,
                    input   drv2scb_dc              drv2scb_dc_inst
                    );

extern  run ();

endclass : scoreboard_c

//----------------------------------------------------
//function and task defination
//----------------------------------------------------
function    scoreboard_c::new (
                                input   mailbox #( res_data_dc ) mon2scb_mbc,
                                input   drv2scb_dc              drv2scb_dc_inst
                                );

    this.mon2scb_mbx        = mon2scb_mbx;
    this.drv2scb_dc_inst    = drv2scb_dc_inst;
    res_data_dc_hw          = new();
    counter                 = 0;//

endfunction : new

task    scoreboard::run ();

while ( 1 )
begin
//retrieve hardware result data from monitor through mailbox
mon2scb_mbx.get( res_data_dc_hw );

//get software result
do_vec_vmaddfp( {4{res_sw}},{4{drv2scb_dc_inst.operand_a}},{4{drv2scb_dc_inst.operand_b}},{4{drv2scb_dc_inst.operand_c}} );

//hardware and software result comparison
if( res_data_dc_hw.res_rdy == 1'b1 )//result is ready
begin
    counter = counter +1;
    if( res_data_dc_hw.res == res_sw )//match
    begin
        $display( "test case %d pass",counter);
    end
    else//mismatch
    begin
        $sformat( "-------------testcase %d mismatch------------------
                a = 0x%h,
                b = 0x%h,
                c = 0x%h,
 software result  = 0x%h,
 hardware result  = 0x%h",counter,drv2scb_dc_inst.operand_a,drv2scb_dc_inst.operand_b,drv2scb_dc_inst.operand_c,res_sw,res_data_dc_hw.res);
    end
end
end//end while

endtask : run





