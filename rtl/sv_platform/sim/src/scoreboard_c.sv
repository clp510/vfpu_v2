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

import vfpu_dc_pkg::res_data_dc;
import vfpu_dc_pkg::BIT;
//import c program as reference model  
import "DPI-C" function void do_vec_vmaddfp    (output bit[31:0]vrt, 

                                                input bit[31:0]vra, vrb, vrc);

class   scoreboard_c;
//-------------------------------------------------------------------

mailbox #( res_data_dc )    mon2scb_mbx;
res_data_dc                 res_data_dc_hw;//store hardware result data
BIT [31:0]                  res_sw;//store software result data
int                         counter;
//function and task declaration
extern  function new (
                    input   mailbox #( res_data_dc ) mon2scb_mbx
                    );

extern  task    run ();

endclass : scoreboard_c

//----------------------------------------------------
//function and task defination
//----------------------------------------------------
function    scoreboard_c::new (
                                input   mailbox #( res_data_dc ) mon2scb_mbx
                                );

    this.mon2scb_mbx        = mon2scb_mbx;
    res_data_dc_hw          = new();
    counter                 = 0;//

endfunction : new

task    scoreboard_c::run ();

while ( 1 )
begin
//retrieve hardware result data from monitor through mailbox
mon2scb_mbx.get( res_data_dc_hw );

//get software result
//pay attention the operand order
do_vec_vmaddfp( res_sw,res_data_dc_hw.operand_a_rx,res_data_dc_hw.operand_c_rx,res_data_dc_hw.operand_b_rx);
/*
$display("software input operand");
$display("\
a=0x%h,\n\
b=0x%h,\n\
c=0x%h,\n",res_data_dc_hw.operand_a_rx,res_data_dc_hw.operand_b_rx,res_data_dc_hw.operand_c_rx);

$display("software result:res_sw=0x%h",res_sw);
 */

//hardware and software result comparison
if( res_data_dc_hw.res_rdy == 1'b1 )//result is ready
begin

    counter = counter +1;

    if( res_data_dc_hw.res == res_sw )//match
    begin
    /*
        $display( 
"===============testcase %d pass==================\n\
                a = 0x%h,\n\
                b = 0x%h,\n\
                c = 0x%h,\n\
 software result  = 0x%h,\n\
 hardware result  = 0x%h\n",counter,res_data_dc_hw.operand_a_rx,res_data_dc_hw.operand_b_rx,res_data_dc_hw.operand_c_rx,res_sw,res_data_dc_hw.res);
 */
        $display("=======================testcase %d pass==================",counter);
    end
    else//mismatch
    begin
        $display( 
"-------------testcase %d mismatch------------------\n\
                a = 0x%h,\n\
                b = 0x%h,\n\
                c = 0x%h,\n\
 software result  = 0x%h,\n\
 hardware result  = 0x%h",counter,res_data_dc_hw.operand_a_rx,res_data_dc_hw.operand_b_rx,res_data_dc_hw.operand_c_rx,res_sw,res_data_dc_hw.res);
    end
end
end//end while

endtask : run





