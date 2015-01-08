//=====================================================
//File Name	: unpackage.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2014.12.24
//Revision	: v1.0
//Description : unpackage the input operand according to nj_mode signal
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module unpackage    (
                    nj_mode,
                    operand,
                    
                    s,
                    exp_bias,
                    exp,
                    frac
                    );
input           nj_mode;
input   [31:0]  operand;

output          s;
output  [7:0]   exp_bias;//unsigned value,0~255
output  [7:0]   exp;//signed value,-127~+127
output  [23:0]  frac;
reg     [23:0]  frac;

wire            denorm_m;//denormal number mask signal
wire            frac_zero_m;//fractional part all zero mask signal
wire            exp_zero_m;//exponent part all zero
wire            zero_m;//zero_m signal

assign  s           = operand[31];
assign  exp_zero_m  = ~| operand[30:23];
assign  frac_zero_m = ~| operand[22:0];
assign  denorm_m    = exp_zero_m & ( !frac_zero_m );
assign  zero_m      = exp_zero_m & frac_zero_m;

//get the frac according to denorm_m and nj_mode bit
always @ ( * )
begin
    case ( {denorm_m,nj_mode} )
    2'b00:  frac    = {{~zero_m},operand[22:0]};
    2'b01:  frac    = {{~zero_m},operand[22:0]};
    2'b10:  frac    = {1'b0,operand[22:0]};
    2'b11:  frac    = 24'h0;
    endcase
end

//get exp_bias according to denorm_m and nj_mode bit
assign  exp_bias    = ( {denorm_m,nj_mode} == 2'b10 ) ? 8'h1 : operand[30:23];

//get the exponent part without offset
assign  exp         = exp_bias + 8'b1000_0001;//equal to exp_bias-8'b0111_1111(127);
endmodule




