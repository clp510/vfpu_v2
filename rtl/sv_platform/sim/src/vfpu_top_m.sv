//==================================================================
//File Name	: vfpu_top_m.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.09
//Revision	: v1.0
//Description: top level module of vfpu verification platform
// 1) instance DUT and SV program
// 2) generate clk and rst_n signal
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================
`timescale 1ns/1ns
`define BIT bit//bit or logic,bit is two state,will speed up simulation.


module  vfpu_top_m();

BIT         clk;
BIT         rst_n;


//generate clk and rst_n signal
initial
begin
    clk     = 1'b1;
    forever #5 clk = ~clk;
end

initial
begin
    rst_n   =1'b0;
    repeat(10)@(posedge clk);
    rst_n   =1'b1;
end

test_dutw_if    test_dutw_if_inst;
//instance test program
test    test_inst   (
                   // .clk            (   clk                 ),
                   // .rst_n  (   rst_n   ),
                   .test_if_inst    (   test_dutw_if_inst   )
                   );
//instance dut_wrapper module
dut_wrapper dut_wrapper_inst    (
                                //.clk            (   clk             ),
                                //.rst_n          (   rst_n           ),
                                .dutw_if_inst   (   test_dutw_if_inst)
                                );
endmodule                               

