//==================================================================
//File Name	: vfpu_if.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.09
//Revision	: v1.0
//Description: all interfaces between different transactors are defined in this file
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================
import  vfpu_dc_pkg::BIT;

//interface between SV program and dut_wrapper
interface   test_dutw_if ( input BIT clk );


//BIT         clk;
//BIT         rst_n;

//BIT [5:0]   vfpu_ins;//encoding of 16 vfpu instruction
BIT [31:0]  operand_a;//32-bit sigle-precision data
BIT [31:0]  operand_b;
BIT [31:0]  operand_c;
BIT         op_vld;

BIT [31:0]  res;//32-bit single-precision result
BIT         res_rdy;

modport D   (
            input   //clk,
                    //rst_n,
                    //vfpu_ins,
                    operand_a,
                    operand_b,
                    operand_c,
                    op_vld,
            output  res,
                    res_rdy
            );

modport T   (
            input   //clk,
                    res_rdy,
                    res,
            output  //rst_n,
                    //vfpu_ins,
                    operand_a,
                    operand_b,
                    operand_c,
                    op_vld
            );
//define clocking blocks
clocking    cbt   @( posedge clk );
//input           clk;
input           res_rdy;
input           res;

//output          rst_n;
output          op_vld;
//outptu        vfpu_ins;
output          operand_a;
output          operand_b;
output          operand_c;
endclocking : cbt

modport TST ( clocking cbt );

endinterface : test_dutw_if           

/*
//interface between driver and dut_wrapper
interface   drv2dutw_if ;

BIT         op_vld;
BIT [31:0]  operand_a;
BIT [31:0]  operand_b;
BIT [31:0]  operand_c;

endinterface : drv2dutw_if

//interface between driver and scoreboard
interface   drv2scb_if;

BIT [31:0]  operand_a;
BIT [31:0]  operand_b;
BIT [31:0]  operand_c;
endinterface : drv2scb_if
//interface between dut_wrapper and monitor
interface   dutw2mon_if;

BIT         res_rdy;
BIT [31:0]  res;
endinterface : dutw2mon_if
*/
