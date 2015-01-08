//=====================================================
//File Name	: spec_handler.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.07
//Revision	: v1.0
//Description: special case handler logic
//two special case defined in design doc are handled in this module
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module  spec_handler    (
                            nj_mode,
                            inv_mask,
                            operand_a,
                            operand_b,
                            operand_c,
                            sa,
                            sb,
                            sc,
                            exp_a_bias,
                            exp_b_bias,
                            exp_c_bias,
                            manti_a,
                            manti_b,
                            manti_c,
                            exp_ab,//exp_a +exp_b

                            spec_mask,
                            res_spec
                            );
//I/O
input                   nj_mode;
input                   inv_mask;
input   [31:0]          operand_a;
input   [31:0]          operand_b;
input   [31:0]          operand_c;
input                   sa;
input                   sb;
input                   sc;
input   [7:0]           exp_a_bias;
input   [7:0]           exp_b_bias;
input   [7:0]           exp_c_bias;
input   [22:0]          manti_a;
input   [22:0]          manti_b;
input   [22:0]          manti_c;
input   [8:0]           exp_ab;

output                  spec_mask;
output  [31:0]          res_spec;


//generate mask signal
wire            exp_a_zero_m;
wire            exp_b_zero_m;
wire            exp_c_zero_m;
wire            manti_a_zero_m;
wire            manti_b_zero_m;
wire            manti_c_zero_m;

wire            exp_a_max_m;//whether exponent of a is 255
wire            exp_b_max_m;
wire            exp_c_max_m;

wire            a_zero_m;//whether operand a is zero or not
wire            b_zero_m;
wire            c_zero_m;

wire            a_inf_m;//whether operand a is infinity or not
wire            b_inf_m;
wire            c_inf_m;

wire            a_nan_m;//whether operand a is NaN
wire            b_nan_m;
wire            c_nan_m;

wire    [9:0]   diff_126;//exp_ab -(-126)
wire            underflow_m;//whether exp_ab is underflow
wire            overflow_m;//whether exp_ab is overflow

wire            sign_ab;//sign of a x b;

wire            nan_ecp;//mask signal to indicate whether nan operand exception occurs
wire    [31:0]  res_spec_tmp0;

wire            invalid_ecp;//
wire    [31:0]  res_spec_tmp1;

wire            overflow_ecp;
wire    [31:0]  res_spec_tmp2;

wire            underflow_ecp;
wire    [31:0]  res_spec_tmp3;

wire            zero_ecp;//input operand has zero
wire    [31:0]  res_spec_tmp4;

wire            inf_ecp;//input operand has infinity 
wire    [31:0]  res_spec_tmp5;


assign  sign_ab = sa ^ sb;


assign  exp_a_zero_m    = ~| exp_a_bias;
assign  exp_b_zero_m    = ~| exp_b_bias;
assign  exp_c_zero_m    = ~| exp_c_bias;

assign  exp_a_max_m     = &  exp_a_bias;
assign  exp_b_max_m     = &  exp_b_bias;
assign  exp_c_max_m     = &  exp_c_bias;

assign  manti_a_zero_m  = ~| manti_a;
assign  manti_b_zero_m  = ~| manti_b;
assign  manti_c_zero_m  = ~| manti_c;

assign  a_zero_m        = exp_a_zero_m & manti_a_zero_m;
assign  b_zero_m        = exp_b_zero_m & manti_b_zero_m;
assign  c_zero_m        = exp_c_zero_m & manti_c_zero_m;

assign  a_inf_m         = exp_a_max_m & manti_a_zero_m;
assign  b_inf_m         = exp_b_max_m & manti_b_zero_m;
assign  c_inf_m         = exp_c_max_m & manti_c_zero_m;

assign  a_nan_m         = exp_a_max_m & {~manti_a_zero_m};
assign  b_nan_m         = exp_b_max_m & {~manti_b_zero_m};
assign  c_nan_m         = exp_c_max_m & {~manti_c_zero_m};

assign  diff_126        = {exp_ab[8],exp_ab} + 10'd126;
assign  underflow_m     = diff_126[9];
assign  overflow_m      = {~exp_ab[8]} & exp_ab[7];//if overflow,the 2 msb must be 2'b01,means > 127
//----------------------------------------------
//special case detect order
//Nan -> invalide -> inf -> zero -> overflow -> underflow
//------------------------------------------------------


//=====================================
// special case 1
//=====================================
//-------------------------------------------
//NaN Operand Exception handle logic
//-------------------------------------------

assign  nan_ecp         = a_nan_m | b_nan_m | c_nan_m;//highest order
assign  res_spec_tmp0   = a_nan_m ? operand_a :
                          b_nan_m ? operand_b :
                          c_nan_m ? operand_c : 32'h0;
//--------------------------------------------
//invalid operation exception handle logic
//infinity - infinity or 0 * infinity
//--------------------------------------------
wire            inf_minus_m;//inf-inf
wire            inf_zero_mul_m;//inf*0
assign  inf_minus_m     = inv_mask && c_inf_m &&( (a_inf_m & {~b_zero_m}) || (b_inf_m & { ~a_zero_m}));
assign  inf_zero_mul_m  = (a_inf_m & b_zero_m ) || (a_zero_m & b_inf_m);
assign  invalid_ecp     = !nan_ecp && (inf_minus_m | inf_zero_mul_m);//order 2
assign  res_spec_tmp1   = invalid_ecp ? 32'h7fc0_0000 : 32'h0;//QNaN

//-----------------------------------------------
//overflow exception handle logic
//----------------------------------------------
assign  overflow_ecp    =  !nan_ecp && !invalid_ecp && !inf_ecp && !zero_ecp  && overflow_m;//order 5
assign  res_spec_tmp2   = overflow_ecp ? {sign_ab,8'hff,23'h0} : 32'h0;

//-----------------------------------------------
//underflow handle logic
//if non-java mode treated as zero
//if java mode treat as normal number
//----------------------------------------------
assign  underflow_ecp   =  !nan_ecp && !invalid_ecp && !inf_ecp && !zero_ecp && !overflow_ecp && underflow_m && nj_mode;//order 6
assign  res_spec_tmp3   = underflow_ecp ? operand_c : 32'h0;

//=============================================================
//special case 2
//=============================================================
//----------------------------------------------
//input operand has zero
//---------------------------------------------
assign  zero_ecp        =  !nan_ecp && !invalid_ecp && !inf_ecp &&  (a_zero_m | b_zero_m) ;//order 4
assign  res_spec_tmp4   = zero_ecp ? operand_c : 32'h0;

//-------------------------------------------------------------
//input operand has infinity
//-------------------------------------------------------------
assign  inf_ecp         = !nan_ecp && !invalid_ecp  && ( a_inf_m | b_inf_m | c_inf_m);//order 3
assign  res_spec_tmp5   = (!inf_ecp) ? 32'h0:
                          (a_inf_m & {~b_inf_m} & {~c_inf_m}) ? operand_a:
                          ({~a_inf_m}&b_inf_m&{~c_inf_m}) ? operand_b:
                          ({~a_inf_m}&{~b_inf_m}&c_inf_m) ? operand_c:
                          (a_inf_m &{~b_inf_m}&c_inf_m&{~inv_mask}) ?operand_c:
                          ({~a_inf_m}&b_inf_m&c_inf_m&{~inv_mask})  ?operand_c:
                          (a_inf_m & b_inf_m ) ? {sign_ab,8'hff,23'h0}:32'h0;



//generate output
assign  spec_mask   = nan_ecp | invalid_ecp | overflow_ecp | underflow_ecp | zero_ecp | inf_ecp;
assign  res_spec    = res_spec_tmp0 | res_spec_tmp1 | res_spec_tmp2 | res_spec_tmp3 | res_spec_tmp4 | res_spec_tmp5;


endmodule



            







