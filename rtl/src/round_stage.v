//==================================================================
//File Name	: round_stage.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.06
//Revision	: v1.0
//Description: rounding stage
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module  round_stage (
                    nj_mode,
                    s_final,
                    exp_norm,
                    frac_inter_norm,
                    denorm_m,
                    zero_m,

                    res
                    );
//I/O
input           nj_mode;
input           s_final;
input   [9:0]   exp_norm;
input   [26:0]  frac_inter_norm;
input           denorm_m;
input           zero_m;

output  [31:0]  res;


//--------------------------------------------------
//rounding logic
//round to the nearest number. in case of tie,choose the even number
//--------------------------------------------------
wire    [2:0]   grs;//{guard bit,round bit ,sticky bit}
wire    [23:0]  frac_z1;
wire    [23:0]  frac_z2;
reg     [23:0]  frac_final;//final fraction choose from frac_z1 and frac_z2
reg             z2_m;//whether choose frac_z2 as final frac,active high
wire            overflow_round;
wire            tie_m;//tie mask signal,active high

wire            inf_m;//active high to indicate the exponent is overflow(independent upon special case handle logic)
assign  frac_z1                     = frac_inter_norm[26:3];
assign  {overflow_round,frac_z2}    = frac_z1+24'b1;
assign  grs                         = frac_inter_norm[2:0];//{guard bit,round bit,sticky bit}
assign  tie_m                       = ( grs == 3'b100 );

always @ ( * )
begin
    case    ( tie_m )
    1'b0    : begin//not in tie
                if ( grs[2] )//>0.5
                begin
                    frac_final  = frac_z2;
                    z2_m        = 1'b1;
                end
                else//<0.5
                begin
                    frac_final  = frac_z1;
                    z2_m        = 1'b0;
                end
            end
    1'b1    :begin//in case of tie
                if ( frac_z1[0] )
                begin
                    frac_final  = frac_z2;
                    z2_m        = 1'b1;
                end
                else
                begin
                    frac_final  = frac_z1;
                    z2_m        = 1'b0;
                end
            end
    endcase
end
//-------------------------------
//exponent logic
//-----------------------------
reg     [9:0]   exp_adjust;
wire    [7:0]   exp_final;

always @ ( * )
begin
    case    ( { denorm_m,{overflow_round&z2_m} } )
    2'b00   :   exp_adjust  = exp_norm + 10'd127;
    2'b01   :   exp_adjust  = exp_norm + 10'd128;
    2'b10   :   exp_adjust  = 10'd0;
    2'b11   :   exp_adjust  = 10'd1;
    endcase
end

assign  inf_m       = {{~|exp_adjust[9:8]} & {&exp_adjust[7:0]}} || {{~exp_adjust[9]} & exp_adjust[8]} ;//whether exp_adjust is 255 or above
assign  exp_final   = exp_adjust[7:0];

//---------------------------------------------
//package logic
//--------------------------------------------
wire    [31:0]  res_tmp;
assign  res_tmp = inf_m ? {s_final,8'hff,23'h0}:{s_final,exp_final,frac_final[22:0]};

assign  res     = zero_m ?      32'h0 : 
                  {~nj_mode}?   res_tmp:
                  denorm_m  ?   {s_final,31'h0} : res_tmp;
endmodule                  
                            
