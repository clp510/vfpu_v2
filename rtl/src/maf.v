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

output reg [31:0]  res;
output reg         res_rdy;

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
wire                    inv_mask;//1'b0:multiply-add operation,1'b1:multiply-minus operation
wire                    s_tmp;
wire                    final_m;
wire    [9:0]           exp_tmp;//bigger one between (ea+eb+27) and (ec)
wire    [25:0]          c_frac_align_h;
wire    [47:0]          c_frac_align_m;
wire    [23:0]          c_frac_align_l;
wire    [47:0]          carry;
wire    [47:0]          sum;
wire    [8:0]           exp_ab;
mul_stage   mul_stage_inst  (
                            .sa             (   sa          ),
                            .sb             (   sb          ),
                            .sc             (   sc          ),
                            .exp_a          (   ea          ),
                            .exp_b          (   eb          ),
                            .exp_c          (   ec          ),
                            .a_frac         (   a_frac      ),
                            .b_frac         (   b_frac      ),
                            .c_frac         (   c_frac      ),

                            .inv_mask       (   inv_mask    ),
                            .s_tmp          (   s_tmp       ),
                            .final_m        (   final_m     ),
                            .exp_tmp        (   exp_tmp     ),
                            .c_frac_align_h (   c_frac_align_h  ),
                            .c_frac_align_m (   c_frac_align_m  ),
                            .c_frac_align_l (   c_frac_align_l  ),
                            .carry          (   carry       ),
                            .sum            (   sum         ),
                            
                            .exp_ab         (   exp_ab      )//to special case handler
                            );

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


//---------------------------------------------------------
// special case handle logic pipeline (1st stage)
//---------------------------------------------------------
wire            spec_mask;
wire    [31:0]  res_spec;//special case result
spec_handler_1st    spec_handler_1st_inst   (
                                            .nj_mode        (   nj_mode     ),
                                            .inv_mask       (   inv_mask    ),
                                            .operand_a      (   a       ),
                                            .operand_b      (   b       ),
                                            .operand_c      (   c       ),
                                            .sa             (   sa          ),
                                            .sb             (   sb          ),
                                            .sc             (   sc          ),
                                            .exp_a_bias          (   ea_bias          ),
                                            .exp_b_bias          (   eb_bias          ),
                                            .exp_c_bias          (   ec_bias          ),
                                            .manti_a        (   a_frac[22:0]     ),
                                            .manti_b        (   b_frac[22:0]     ),
                                            .manti_c        (   c_frac[22:0]     ),
                                            .exp_ab         (   exp_ab          ),
                                            
                                            .spec_mask      (   spec_mask       ),//to indicate whether special cases are detected,active high
                                            .res_spec       (   res_spec        )//special case result
                                            );

//reg the tmp result of special case pipeline
reg             spec_mask_r0;
reg [31:0]      res_spec_r0;

always @ ( posedge clk )
begin
    if(op_vld)
    begin
        spec_mask_r0    <= spec_mask;
        res_spec_r0     <= res_spec;
    end
    else
    begin
        spec_mask_r0    <= 1'b0;
        res_spec_r0     <= 32'h0;
    end
end




//================================================================
//2nd stage ( add stage )
//================================================================

//--------------------------------------------------------------
// main pipeline
//--------------------------------------------------------------
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
//reg the tmp result of 2nd pipeline
reg                 nj_mode_r1;
reg                 op_vld_r1;

reg                 s_tmp_r1;
reg                 final_m_r1;
reg [9:0]           exp_tmp_r1;
reg                 frac_inter_h_s_r1;
reg [74:0]          frac_inter_r1;

always @ ( posedge clk )
begin
    nj_mode_r1          <= nj_mode_r0;
    op_vld_r1           <= op_vld_r0;
    s_tmp_r1            <= s_tmp_r0;
    final_m_r1          <= final_m_r0;
    exp_tmp_r1          <= exp_tmp_r0;
    frac_inter_h_s_r1   <= frac_inter_h_s;
    frac_inter_r1       <= frac_inter;
end
//--------------------------------------------
//special case handle logic
//--------------------------------------------
reg                 spec_mask_r1;
reg [31:0]          res_spec_r1;

always @ ( posedge clk )
begin
    spec_mask_r1        <= spec_mask_r0;
    res_spec_r1         <= res_spec_r0;
end




//=====================================================================
// normalization stage,3rd pipeline
//=====================================================================

wire                s_final;
wire    [9:0]       exp_norm;
wire    [26:0]      frac_inter_norm;
wire                zero_m;
wire                denorm_m;

norm_stage  norm_stage_inst (
                            .s_tmp          (   s_tmp_r1            ),
                            .final_m        (   final_m_r1          ),
                            .frac_inter_h_s (   frac_inter_h_s_r1   ),
                            .exp_tmp        (   exp_tmp_r1          ),
                            .frac_inter     (   frac_inter_r1       ),

                            .s_final        (   s_final             ),
                            .exp_norm       (   exp_norm            ),
                            .frac_inter_norm(   frac_inter_norm     ),
                            .zero_m         (   zero_m              ),//zero mask bit
                            .denorm_m       (   denorm_m            )//denormal mask signal ,active high
                            );
//reg the result of 3rd pipeline
reg             nj_mode_r2;
reg             op_vld_r2;

reg             s_final_r2;
reg [9:0]       exp_norm_r2;
reg [26:0]      frac_inter_norm_r2;
reg             zero_m_r2;
reg             denorm_m_r2;

always @ ( posedge clk )
begin   
    nj_mode_r2          <= nj_mode_r1;
    op_vld_r2           <= op_vld_r1;
    s_final_r2          <= s_final;
    exp_norm_r2         <= exp_norm;
    frac_inter_norm_r2  <= frac_inter_norm;
    zero_m_r2           <= zero_m;
    denorm_m_r2         <= denorm_m;
end

//----------------------------------------
//special case handle logic
//----------------------------------------
reg             spec_mask_r2;
reg [31:0]      res_spec_r2;

always @ ( posedge clk )
begin
    spec_mask_r2        <= spec_mask_r1;
    res_spec_r2         <= res_spec_r1;
end



//=====================================================================
//rounding stage,4th pipeline
//=====================================================================

wire    [31:0]  res_w;

round_stage round_stage_inst    (
                                .nj_mode        (   nj_mode_r2  ),
                                .s_final        (   s_final_r2  ),
                                .exp_norm       (   exp_norm_r2 ),
                                .frac_inter_norm(   frac_inter_norm_r2  ),
                                .denorm_m       (   denorm_m_r2 ),
                                .zero_m         (   zero_m_r2   ),
                                
                                .res            (   res_w       )
                                );


//------------------------------------------
//special case handle logic,4rd pipeline
//------------------------------------------
wire            spec_mask_f;
wire    [31:0]  res_spec_f;
assign  spec_mask_f     = spec_mask_r2;
assign  res_spec_f      = res_spec_r2;



//================================================
//get the final result of maf
//================================================
wire    [31:0]  res_final;
assign  res_final   = spec_mask_f ? res_spec_f : res_w;

always @ ( posedge clk )
begin
    res     <= res_final;
    res_rdy <= op_vld_r2;
end


endmodule
















