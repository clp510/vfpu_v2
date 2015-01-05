//==================================================================
//File Name	: add_stage.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.05
//Revision	: v1.0
//Description: add stage
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module add_stage   (
                    c_frac_align_h,
                    c_frac_align_m,
                    c_frac_align_l,
                    carry,
                    sum,
                    inv_mask,

                    frac_inter_h_s,//sign bit of frac part
                    frac_inter
                    );
input   [25:0]  c_frac_align_h;
input   [47:0]  c_frac_align_m;
input   [23:0]  c_frac_align_l;
input   [47:0]  carry;
input   [47:0]  sum;
input           inv_mask;

output          frac_inter_h_s;
output  [74:0]  frac_inter;//intermediate result of fractional part

//c_frac_align_l part logic
// get the intermediate sticky bit
wire        compen_bit;
wire        st1;
sticky_handler  sticky_handler_inst (
                                    .c_frac_align_l (   c_frac_align_l   ),
                                    inv_mask        (   inv_mask ),
                                    
                                    .compen_bit     (   compen_bit  ),
                                    .st1            (   st1     )
                                    );
//c_frac_align_m part logic
wire            csa_co;
wire            cla_co;
wire    [47:0]  carry1;
wire    [47:0]  sum1;
wire    [47:0]  frac_inter_m;
wire            inc_mask;//mask signal of whether has carry in bit

//3:2 csa
DW01_csa    # ( 48 ) csa_inst   (
                                .a      (   c_frac_align_m  ),
                                .b      (   carry           ),
                                .c      (   sum             ),
                                .ci     (   compen_bit      ),

                                .carry  (   carry1          ),
                                .sum    (   sum1            ),
                                .co     (   csa_co          )
                                );
//adder
assign  {cla_co,frac_inter_m}   = carry1 + sum1;

assign  inc_mask                = csa_co | cla_co;


//c_frac_align_h part logic

wire    [26:0]  c_frac_align_h_signed;//concatenate sign bit
wire    [26:0]  c_frac_align_h_signed_inc;//+1
wire    [26:0]  frac_inter_h;//high part of fractional result
assign  c_frac_align_h_signed       = {inv_mask,c_frac_align_h};
assign  c_frac_align_h_signed_inc   = c_frac_align_h_signed + 27'd1;

//choose the high part of fraction
assign  frac_inter_h    = inc_mask ? c_frac_align_h_signed_inc : c_frac_align_h_signed;

//2's complementory logic
wire    [74:0]  frac_inter_tmp;
wire    [74:0]  frac_inter_tmp_c;//2's complementory of frac_inter_tmp
assign  frac_inter_tmp      = {frac_inter_h[25:0],frac_inter_m[47:0],st1};
assign  frac_inter_tmp_c    = {~frac_inter_tmp} + 75'd1;

//get the output
assign  frac_inter_h_s      = frac_inter_h[26];
assign  frac_inter          = frac_inter_h_s ? frac_inter_tmp_c : frac_inter_tmp;

endmodule









