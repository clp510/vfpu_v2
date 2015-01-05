//==================================================================
//File Name	: exp_handler.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.05
//Revision	: v1.0
//Description: exponent logic,to get exp_tmp(bigger of (ea+eb+27,ec)
// and to get shf_num
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module  exp_handler (
                    exp_a,
                    exp_b,
                    exp_c,//true value of exp

                    exp_tmp,//9-bit
                    shf_num,
                    exp_ab//exp_a+exp_b
                    );
// I/O declaration
input   [7:0]   exp_a;
input   [7:0]   exp_b;
input   [7:0]   exp_c;

output  [9:0]   exp_tmp;
output  [6:0]   shf_num;
output  [8:0]   exp_ab;
reg     [6:0]   shf_num;

//calculate exp_a + exp_b and exp_a+exp_b+27
wire    [8:0]   exp_ab;//exp_ab in [-254,254]
wire    [9:0]   exp_ab_27;//exp_a+exp_b+27
assign  exp_ab      = exp_a + exp_b;
assign  exp_ab_27   = {exp_ab[8],exp_ab} + 10'd27;

//logic to get exp_tmp
//choose the bigger one between exp_ab_27 and exp_c

wire    [10:0]   diff_c_ab_27_tmp;//exp_c-(exp_ab+27)
assign  diff_c_ab_27_tmp   = {exp_c[7],exp_c[7],exp_c,1'b1}+{~exp_ab_27,1'b1};

assign  exp_tmp     = diff_c_ab_27_tmp[10] ? {exp_c[7],exp_c[7],exp_c} : exp_ab_27;
assign  diff_c_ab_27       = diff_c_ab_27_tmp[11:1];

//logic to get the shf_num
wire    [10:0]      d_tmp;
wire    [9:0]       d;//exp_c-(exp_a+exp_b)
assign  d_tmp   = {exp_c[7],exp_c[7],exp_c,1'b1}+{~exp_ab[8],~exp_ab,1'b1};
assign  d       = d_tmp[10:1];

wire    [9:0]   d_add_46;//d+46
wire    [9:0]   d_min_26;//26-d
wire            s_sel0;
wire            s_sel1;

assign  d_add_46    = d + 10'd46;
assign  d_min_26    = 10'd27+{~d};//= 10'd26-d;
assign  s_sel0      = d_min_26[9];
assign  s_sel1      = d_add_46[9];

//get shf_num
always @ ( * )
begin
    case    ( {s_sel0,s_sel1} )
    2'b00   : shf_num   = d_min_26[6:0];
    2'b01   : shf_num   = 74;
    2'b10   : shf_num   = 0;
    2'b11   : shf_num   = 0;
    endcase
end

endmodule
