//==================================================================
//File Name	: denorm_handler.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.05
//Revision	: v1.0
//Description: denormalization handler,to handle the denormal number
//case.
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module  denorm_handler  (
                       frac_inter_norm_t1,
                       exp_norm,
                       
                       frac_inter_norm_t2,
                       denorm_m,
                       zero_m
                       );
//I/O
input   [74:0]      frac_inter_norm_t1;
input   [9:0]       exp_norm;//exponent number after normalization shift

output  [74:0]      frac_inter_norm_t2;
output              denorm_m;
output              zero_m;

wire                denorm_m_w;
wire    [9:0]       diff_val;//-126-exp_norm
wire                diff_zero_m;//whether diff_val is zero
assign  diff_val    = 10'b11_1000_0011 + { ~exp_norm };//equal to -126-exp_norm
assign  diff_zero_m = ~| diff_val;

assign  denorm_m_w    = diff_zero_m ? 1'b0 : { ~diff_val[9]};

//choose the smaller one between diff_val and 27
wire    [9:0]   diff_27;//diff_val -27
wire    [4:0]   denorm_shf_num;//right shift number
wire    [74:0]  frac_inter_norm_t1_shf;//after right shift
assign  diff_27         = diff_val + 10'b11_1110_0101;//=diff_val-27
assign  denorm_shf_num  = diff_27[9] ? diff_val[4:0] : 5'd27;
assign  frac_inter_norm_t1_shf = frac_inter_norm_t1 >> denorm_shf_num;
//get the fraction after denorm shift
assign  frac_inter_norm_t2  = denorm_m_w ? frac_inter_norm_t1_shf : frac_inter_norm_t1;
//get the denorm_m signal
assign  denorm_m    = denorm_m_w;
assign  zero_m      =(~| frac_inter_norm_t2 ) || (~diff_27[9]);//whether the fraction is zero or the result is too small to represent as denormal number ,the result is zero.
endmodule








