//==================================================================
//File Name	: dut_wrapper_m.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.10
//Revision	: v1.0
//Description: dut wrapper module,just for connecting the dut with the test program
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================
import  vfpu_dc_pkg::BIT;

module dut_wrapper_m(
                    input BIT clk,
                    test_dutw_if.D  dutw_if_inst
                    );


//instance the dut

maf     maf_inst    (
                    .clk        (   clk                     ),
                    .op_vld     (   dutw_if_inst.op_vld     ),
                    .nj_mode    (   1'b1                    ),
                    .a          (   dutw_if_inst.operand_a  ),
                    .b          (   dutw_if_inst.operand_b  ),
                    .c          (   dutw_if_inst.operand_c  ),

                    .res        (   dutw_if_inst.res        ),
                    .res_rdy    (   dutw_if_inst.res_rdy    )
                    );

//instance maf_tm(timing model)
// register input signals for software result calculation
maf_tm  maf_tm_inst (
                    .clk        (   clk                     ),
                    .op_vld     (   dutw_if_inst.op_vld     ),
                    .a          (   dutw_if_inst.operand_a  ),
                    .b          (   dutw_if_inst.operand_b  ),
                    .c          (   dutw_if_inst.operand_c  ),

                    .op_vld_rx  (   dutw_if_inst.op_vld_rx  ),
                    .a_rx       (   dutw_if_inst.operand_a_rx   ),
                    .b_rx       (   dutw_if_inst.operand_b_rx   ),
                    .c_rx       (   dutw_if_inst.operand_c_rx   )
                    );


endmodule                   

//timing model of maf
//register input signal for software result calculation

module  maf_tm  (
                clk,
                op_vld,
                a,
                b,
                c,

                op_vld_rx,
                a_rx,
                b_rx,
                c_rx
                );
input               clk;
input               op_vld;
input   [31:0]      a;
input   [31:0]      b;
input   [31:0]      c;

output              op_vld_rx;
output  [31:0]      a_rx;
output  [31:0]      b_rx;
output  [31:0]      c_rx;

reg                 op_vld_r0;
reg                 op_vld_r1;
reg                 op_vld_r2;
reg                 op_vld_r3;

reg [31:0]          a_r0;
reg [31:0]          a_r1;
reg [31:0]          a_r2;
reg [31:0]          a_r3;
reg [31:0]          b_r0;
reg [31:0]          b_r1;
reg [31:0]          b_r2;
reg [31:0]          b_r3;
reg [31:0]          c_r0;
reg [31:0]          c_r1;
reg [31:0]          c_r2;
reg [31:0]          c_r3;



always @ (posedge clk)
begin
    op_vld_r0   <=  op_vld;
    op_vld_r1   <=  op_vld_r0;
    op_vld_r2   <=  op_vld_r1;
    op_vld_r3   <=  op_vld_r2;

    a_r0        <=  a;
    a_r1        <=  a_r0;
    a_r2        <=  a_r1;
    a_r3        <=  a_r2;

    b_r0        <=  b;
    b_r1        <=  b_r0;
    b_r2        <=  b_r1;
    b_r3        <=  b_r2;
    
    c_r0        <=  c;
    c_r1        <=  c_r0;
    c_r2        <=  c_r1;
    c_r3        <=  c_r2;
end

assign  op_vld_rx   =   op_vld_r3;
assign  a_rx        =   a_r3;
assign  b_rx        =   b_r3;
assign  c_rx        =   c_r3;
endmodule
