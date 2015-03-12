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

//global interface for clk and rst_n
`define BIT bit
interface   test_clk_if ;
BIT         clk;
BIT         rst_n;
endinterface : test_clk_if

//interface between SV program and dut_wrapper
interface   test_dutw_if ;

BIT         clk;
BIT         rst_n;

BIT [5:0]   vfpu_ins;//encoding of 16 vfpu instruction
BIT [31:0]  operand_a;//32-bit sigle-precision data
BIT [31:0]  operand_b;
BIT [31:0]  operand_c;
BIT         op_vld;

BIT [31:0]  res;//32-bit single-precision result
BIT         res_rdy;

modport D   (
            input   clk,
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
            input   clk,
                    res,
                    res_rdy,
            output  rst_n,
                    //vfpu_ins,
                    operand_a,
                    operand_b,
                    operand_c,
                    op_vld
            );

//define clocking blocks
//sample input signals
clocking    in_sample   @( posedge clk )
input           res_rdy;
input           res;
endclocking : in_sample

modport IN  ( clocking in_sample );

//drive output signals
clocking    out_drive   @( posedge clk )
output          op_vld;
output          operand_a;
output          operand_b;
output          operand_c;
endclocking : out_drive

modport OUT ( clocking out_drive );

endinterface : test_dutw_if            

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
