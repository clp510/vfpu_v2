//=====================================================
//File Name	: exp_adjust.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.06
//Revision	: v1.0
//Description: adjust exponent part accroding to lz_count
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module  exp_adjust  (
                    exp_tmp,
                    lz_count,

                    exp_norm
                    );
//I/O
input   [9:0]   exp_tmp;
input   [6:0]   lz_count;

output  [9:0]   exp_norm;

wire    [10:0]  exp_norm_tmp;

assign  exp_norm_tmp    = {exp_tmp,1'b1} + {3'b111,~lz_count,1'b1};//equal to exp_tmp-{3'd0,lz_count}
assign  exp_norm        = exp_norm_tmp[10:1];
endmodule
