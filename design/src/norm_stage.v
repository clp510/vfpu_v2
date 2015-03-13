//==================================================================
//File Name	: norm_stage.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.05
//Revision	: v1.0
//Description: normalization stage
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module  norm_stage  (
                    s_tmp,
                    final_m,
                    frac_inter_h_s,
                    exp_tmp,
                    frac_inter,

                    s_final,
                    exp_norm,
                    frac_inter_norm,
                    zero_m,//zero mask signal,to indicate whether result is zero,active high
                    denorm_m
                    );
//I/O
input               s_tmp;
input               final_m;
input               frac_inter_h_s;
input   [9:0]       exp_tmp;
input   [74:0]      frac_inter;

output              s_final;
output  [9:0]       exp_norm;
output  [26:0]      frac_inter_norm;
output              zero_m;
output              denorm_m;

wire    [9:0]       exp_norm_w;
//--------------------------------------
//sign logic,to get the final sign bit
//-------------------------------------
assign  s_final = final_m ? s_tmp : ( s_tmp ^ frac_inter_h_s );

//---------------------------
//fractional part logic
//-----------------------------
//leading zero count
wire            lz_count_msb;
wire    [6:0]   lz_count;
/* commit out by clp,2015.03.13
lza_80  lza_80_inst (
                    .a      (   {frac_inter,5'd0}   ),
                    .count  (   lz_count            )
                    );
*/

//added by clp,2015.03.13
DW_lzd  #(75) lzd_75    (
                        .a  (   frac_inter  ),
                        .dec (),
                        .enc(   {lz_count_msb,lz_count}    )
                        );

//shift left to let the MSB be one
wire    [74:0]  frac_inter_norm_t1;//after shift left,MSB is 1
wire    [74:0]  frac_inter_norm_t2;//after denormalization logic,maybe will shift right
assign  frac_inter_norm_t1  = lz_count_msb ? 75'h0 : (frac_inter    << lz_count);

//instance denorm_handler
denorm_handler  denorm_handler_inst (
                                    .frac_inter_norm_t1 (   frac_inter_norm_t1  ),
                                    .exp_norm           (   exp_norm_w    ),

                                    .frac_inter_norm_t2 (   frac_inter_norm_t2  ),
                                    .denorm_m           (   denorm_m    ),
                                    .zero_m             (   zero_m      )
                                    );

//----------------------------
//exponent logic
//-----------------------------------
exp_adjust  exp_adjust_inst (
                            .exp_tmp    (   exp_tmp     ),
                            .lz_count   (   lz_count    ),

                            .exp_norm   (   exp_norm_w  )
                            );
assign  exp_norm    = exp_norm_w;
//---------------------------------------
//sticky logic
//--------------------------------------
wire        sticky_bit;
assign  sticky_bit  = | frac_inter_norm_t2[48:0];//reduction or

//get the normalized fraction
assign  frac_inter_norm = {frac_inter_norm_t2[74:49],sticky_bit};
endmodule
