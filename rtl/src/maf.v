//=====================================================
//File Name	: maf.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2014.12.24
//Revision	: v1.0
//Description: top module of multiply-add module,carrying out 
//operation:axb+c,where a,b,c are single-precision operand compliant with
//IEEE-754 standard.
//maf module support two modes:java mode and non-java mode.
//which uses nj_mode signal to distinguish:1---non java mode,
//0---java mode.
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module maf  (
            nj_mode,//mask signal for operation mode:1--non java mode,0---java mode
            op_vld,//operation valid,active high
            a,
            b,
            c,
            
            res,
            res_rdy//result ready signal,active high
            );

input           nj_mode;
input           op_vld;
input   [31:0]  a;
input   [31:0]  b;
input   [31:0]  c;

output  [31:0]  res;
output          res_rdy;

//-----------------------------------------------------------------
// Unpack the input operand
//-----------------------------------------------------------------
//unpack the operand a
unpackage unpackage_a   (
                        .nj_mode    ( nj_mode   ),
                        .operand    ( a         ),
                        .s          ( sa        ),//sign bit
                        .exp_bias   ( ea_bias   ),//biased exponent,to special case handle logic pipeline
                        .exp        ( ea        ),//exponent without offset,to main logic pipeline
                        .frac       ( a_frac    )//24-bits fractional bit
                        );
//unpack the operand b
unpackage unpackage_b   (
                        .nj_mode    ( nj_mode   ),
                        .operand    ( b         ),
                        .s          ( sb        ),//sign bit
                        .exp_bias   ( eb_bias   ),//biased exponent
                        .exp        ( eb        ),//exponent without offset
                        .frac       ( b_frac    )//24-bits fractional bit
                        );
//unpack the operand c
unpackage unpackage_c   (
                        .nj_mode    ( nj_mode   ),
                        .operand    ( c         ),
                        .s          ( sc        ),//sign bit
                        .exp_bias   ( ec_bias   ),//biased exponent
                        .exp        ( ec        ),//exponent without offset
                        .frac       ( c_frac    )//24-bits fractional bit
                        );
//========================================================
//1st stage:multiply stage
//=======================================================

//-----------------------------------------------
//main pipeline (1st stage)
//----------------------------------------------

//-----------------------------------
//get the inv_mask signal
// 1'b0->equivalent to multiply-add,1'b1->equivalent to multiply-minus
//----------------------------------
wire        inv_mask;
assign  inv_mask    = sa ^ sb ^ sc;

//sign logic
//to get s_tmp and final_m
wire        s_tmp;
wire        final_m;
sign_handler sign_handler_inst   (
                                .sa     (   sa  ),
                                .sb     (   sb  ),
                                .sc     (   sc  ),

                                .s_tmp  (   s_tmp   ),
                                .final_m(   final_m )
                                );                                
//exponent logic,get the exp_tmp and shf_num
//exp_tmp=max(ea+eb+27,ec),

wire    [9:0]       exp_tmp;//signed value with 2's complement format
wire    [6:0]       shf_num;//shift number to align_shf_74 module
wire    [8:0]       exp_ab;//exp_a+exp_b
exp_handler exp_handler_inst    (
                                .exp_a      (   ea  ),
                                .exp_b      (   eb  ),
                                .exp_c      (   ec  ),

                                .exp_tmp    (   exp_tmp ),
                                .shf_num    (   shf_num ),
                                .exp_ab     (   exp_ab  )
                                );

//alignment shift
wire    [97:0]      c_frac_align;//the MSB is the integer bit,the remaining 97 bits are fractional part
wire    [25:0]      c_frac_align_h;
wire    [47:0]      c_frac_align_m;
wire    [23:0]      c_frac_align_l;

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
wire    [47:0]      carry;
wire    [47:0]      sum;
mul_24x24   mul_24x24_inst  (
                            .a      (   a_frac  ),
                            .b      (   b_frac  ),

                            .carry  (   carry   ),
                            .sum    (   sum     )
                            );

//---------------------------------------------------------
// special case handle logic pipeline (1st stage)
//---------------------------------------------------------






//reg the tmp result of 1st pipeline
reg         op_vld_r0;
reg         nj_mode_r0;

reg         s_tmp_r0;
reg         final_m_r0;

reg [9:0]   exp_tmp_r0;//bigger one between (ea+eb+27,ec)

reg [25:0]  c_frac_align_h_r0;
reg [47:0]  c_frac_align_m_r0;
reg [23:0]  c_frac_align_l_r0;

reg [47:0]  carry_r0;
reg [47:0]  sum_r0;

reg         inv_mask_r0;
always @ ( posedge clk  )
begin
    if ( op_vld )
    begin
        op_vld_r0           <= op_vld;
        nj_mode_r0          <= nj_mode;
        s_tmp_r0            <= s_tmp;
        final_m_r0          <= final_m;
        exp_tmp_r0          <= exp_tmp;
        c_frac_align_h_r0   <= c_frac_align_h;
        c_frac_align_m_r0   <= c_frac_align_m;
        c_frac_align_l_r0   <= c_frac_align_l;
        carry_r0            <= carry;
        sum_r0              <= sum;
        inv_mask_r0         <= inv_mask;
    end
    else
    begin
        op_vld_r0           <= 1'b0;
        nj_mode_r0          <= 1'b0;
        s_tmp_r0            <= 1'b0;
        final_m_r0          <= 1'b0;
        exp_tmp_r0          <= 10'd0;
        c_frac_align_h_r0   <= 26'd0;
        c_frac_align_m_r0   <= 48'd0;
        c_frac_align_l_r0   <= 24'd0;
        carry_r0            <= 48'd0;
        sum_r0              <= 48'd0;
        inv_mask_r0         <= 1'b0;
    end
end

//================================================================
//2nd stage ( add stage )
//================================================================

wire            frac_inter_h_s;
wire    [74:0]  frac_inter;//intermediate result of fractional part
add_stage   add_stage_inst  (
                            .c_frac_align_h (   c_frac_align_h_r0   ),
                            .c_frac_align_m (   c_frac_align_m_r0   ),
                            .c_frac_align_l (   c_frac_align_l_r0   ),
                            .carry          (   carry_r0    ),
                            .sum            (   sum_r0      ),
                            .inv_mask       (   inv_mask_r0 ),

                            .frac_inter_h_s (   frac_inter_h_s  ),
                            .frac_inter     (   frac_inter      )
                            );






