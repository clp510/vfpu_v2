//==================================================================
//File Name	: sticky_handler.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.05
//Revision	: v1.0
//Description: sticky logic to get the intermediate sticky bit
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module sticky_handler   (
                        c_frac_align_l,
                        inv_mask,

                        compen_bit,//compensation bit
                        st1//intermediate sticy bit
                        );
//I/O
input       [23:0]  c_frac_align_l;
input               inv_mask;

output              compen_bit;
output              st1;

wire        c_frac_align_l_bitor;//bitwise or of c_frac_align_l

wire        c_frac_align_l_bitand;//bitwise and of c_frac_align_l

assign  c_frac_align_l_bitor    = | c_frac_align_l;
assign  c_frac_align_l_bitand   = & c_frac_align_l;

assign  st1         = ( !inv_mask ) ? c_frac_align_l_bitor : {~c_frac_align_l_bitand};
assign  compen_bit  = ( inv_mask && c_frac_align_l_bitand );
endmodule

