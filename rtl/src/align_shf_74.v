//=====================================================
//File Name	: align_shf_74.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2014.12.23
//Revision	: v1.0
//Description	: 74-bits alignment righ shifter,filling high or low bits with 0 or 1.
//After shifting,will get 98-bits shift results which consists of 3 parts:high 26-bits(c_frac_align_h),middle 48-bits(c_frac_align_m),low 24-bits(c_frac_align_m).
// according to inv_mask signal
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module align_shf_74 (
			inv_mask,
			c_frac,
			shf_num,

			shf_res
			);
input			inv_mask;//1---equivalent multiply-minus operation,0--equivalent multiply-add operation
input	[23:0]		c_frac;//24-bits fraction part of c operation
input	[6:0]		shf_num;//shift number,in between[0,74].

output	[97:0]		shf_res;//98-bits shift result

//
wire	[97:0]		c_frac_fil;//c_frac with low 74-bits filling with zero.
wire	[97:0]		c_frac_fil_inv;//inverse the c_frac_fil according to inv_mask
wire	[97:0]		shf_res_tmp;//to store unsigned right shift result
wire	[97:0]		res_mask;//
wire	[97:0]		res_mask_inv;	
wire	[97:0]		final_mask;
assign 	c_frac_fil	= {c_frac,74'h0};
assign	c_frac_fil_inv	= ( {~c_frac_fil} & {98{inv_mask}} ) |
			  (   c_frac_fil  & {98{~inv_mask}});
//get the unsigned shift result,with high bits filling with 0s.
assign	shf_res_tmp	= c_frac_fil_inv >> shf_num;
assign	res_mask	= 98'h3_ffff_ffff_ffff_ffff_ffff_ffff >> shf_num;
assign	res_mask_inv	= ~res_mask;
assign	final_mask	= res_mask_inv & {98{inv_mask}};

//get the final result
assign	shf_res		= shf_res_tmp | final_mask;
endmodule

			 
