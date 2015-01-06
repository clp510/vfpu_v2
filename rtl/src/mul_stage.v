//==================================================================
//File Name	: mul_stage.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.05
//Revision	: v1.0
//Description: mul stage
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module  mul_stage   (
                    sa,
                    sb,
                    sc,
                    exp_a,
                    exp_b,
                    exp_c,
                    a_frac,
                    b_frac,
                    c_frac,

                    inv_mask,
                    s_tmp,
                    final_m,
                    exp_tmp,//bigger one between (ea+eb+27) and (ec)
                    c_frac_align_h,
                    c_frac_align_m,
                    c_frac_align_l,
                    carry,
                    sum,

                    exp_ab//to special case pipeline
                    );
//I/O
input               sa;
input               sb;
input               sc;
input   [7:0]       exp_a;
input   [7:0]       exp_b;
input   [7:0]       exp_c;
input   [23:0]      a_frac;
input   [23:0]      b_frac;
input   [23:0]      c_frac;

output              inv_mask;
output              s_tmp;
output              final_m;
output  [9:0]       exp_tmp;
output  [25:0]      c_frac_align_h;
output  [47:0]      c_frac_align_m;
output  [23:0]      c_frac_align_l;
output  [47:0]      carry;
output  [47:0]      sum;
output  [8:0]       exp_ab;



//-----------------------------------
//get the inv_mask signal
// 1'b0->equivalent to multiply-add,1'b1->equivalent to multiply-minus
//----------------------------------
assign  inv_mask    = sa ^ sb ^ sc;

//sign logic
//to get s_tmp and final_m
sign_handler sign_handler_inst   (
                                .sa     (   sa  ),
                                .sb     (   sb  ),
                                .sc     (   sc  ),

                                .s_tmp  (   s_tmp   ),
                                .final_m(   final_m )
                                );                                
//exponent logic,get the exp_tmp and shf_num
//exp_tmp=max(ea+eb+27,ec),

wire    [6:0]       shf_num;//shift number to align_shf_74 module
wire    [8:0]       exp_ab;//exp_a+exp_b
exp_handler exp_handler_inst    (
                                .exp_a      (   exp_a  ),
                                .exp_b      (   exp_b  ),
                                .exp_c      (   exp_c  ),

                                .exp_tmp    (   exp_tmp ),
                                .shf_num    (   shf_num ),
                                .exp_ab     (   exp_ab  )
                                );

//alignment shift
wire    [97:0]      c_frac_align;//the MSB is the integer bit,the remaining 97 bits are fractional part

align_shf_74    align_shf_74_inst   (
                                    .inv_mask   (   inv_mask    ),
                                    .c_frac     (   c_frac      ),
                                    .shf_num    (   shf_num     ),
                                    
                                    .shf_res    (   c_frac_align)
                                    );
assign  {c_frac_align_h,c_frac_align_m,c_frac_align_l}  = c_frac_align;

//---------------------------------------------------
//a_frac x b_frac
//---------------------------------------------------
mul_24x24   mul_24x24_inst  (
                            .a      (   a_frac  ),
                            .b      (   b_frac  ),

                            .carry  (   carry   ),
                            .sum    (   sum     )
                            );
endmodule

