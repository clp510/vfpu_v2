//===============================================================================
//  File Name            : run.f
//  File Revision        : 1.0
//  Date                 : 2013/12/9
//  Author               : wangjie
//  Email                : ycyquick@foxmail.com
//	History				 : 2013/12/9  v1.0 wangjie
//  ----------------------------------------------------------------------------
//  Description      :   fuctional simulation platform				     
//  Function         :   run file of the verification platform
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

./src/SystemVerilog/test/t_altivec_env_pkg.sv
./src/SystemVerilog/test/t_altivec_dut.sv
./src/SystemVerilog/test/t_altivec_interface.sv
./src/SystemVerilog/test/t_altivec_sva.sv
./src/SystemVerilog/test/t_altivec_dut_wrapper.sv
./src/SystemVerilog/test/t_top_class_based.sv
./Define.v

../src/Verilog_DW/vsfx/vsfx_decoder.v
../src/Verilog_DW/vsfx/vsfx_add32.v
../src/Verilog_DW/vsfx/vsfx_cmp32.v
../src/Verilog_DW/vsfx/vsfx_decoder.v
../src/Verilog_DW/vsfx/vsfx_logical.v
../src/Verilog_DW/vsfx/vsfx_mux6.v
../src/Verilog_DW/vsfx/vsfx_shift8.v
../src/Verilog_DW/vsfx/vsfx_shift16.v
../src/Verilog_DW/vsfx/vsfx_shift32.v
../src/Verilog_DW/vsfx/vsfx_cr_logic.v
../src/Verilog_DW/vsfx/vsfx_top.v


../src/Verilog_DW/vcfx/chop_16.v
../src/Verilog_DW/vcfx/DW01_add.v
../src/Verilog_DW/vcfx/DW01_csa.v
../src/Verilog_DW/vcfx/DW02_multp.v
../src/Verilog_DW/vcfx/mux2_1.v
../src/Verilog_DW/vcfx/mux3_1.v
../src/Verilog_DW/vcfx/mux4_1.v
../src/Verilog_DW/vcfx/shift_right_si_15.v
../src/Verilog_DW/vcfx/sui_process.v
../src/Verilog_DW/vcfx/vcfx_decoder.v
../src/Verilog_DW/vcfx/vcfx_result.v
../src/Verilog_DW/vcfx/vcfx_top.v
../src/Verilog_DW/vcfx/vcfx_word_01.v
../src/Verilog_DW/vcfx/vcfx_word_23.v

../src/Verilog_DW/./vfpu/ip/add.v
../src/Verilog_DW/./vfpu/ip/csa.v
../src/Verilog_DW/./vfpu/ip/lza_8.v
../src/Verilog_DW/./vfpu/ip/lza_18.v
../src/Verilog_DW/./vfpu/ip/lza_19.v
../src/Verilog_DW/./vfpu/ip/lza_32.v
../src/Verilog_DW/./vfpu/ip/lza_64.v
../src/Verilog_DW/./vfpu/ip/lza_73.v
../src/Verilog_DW/./vfpu/ip/multp.v

../src/Verilog_DW/./vfpu/bypass_mux.v
../src/Verilog_DW/./vfpu/norm_rcp_bl.v
../src/Verilog_DW/./vfpu/norm_rsq_bl.v
../src/Verilog_DW/./vfpu/exp2.v
../src/Verilog_DW/./vfpu/fp_arith.v
../src/Verilog_DW/./vfpu/fp2int.v
../src/Verilog_DW/./vfpu/int2fp.v
../src/Verilog_DW/./vfpu/log2.v
../src/Verilog_DW/./vfpu/lut_exp2.v
../src/Verilog_DW/./vfpu/lut_log2.v
../src/Verilog_DW/./vfpu/maf_p0.v
../src/Verilog_DW/./vfpu/maf_p1.v
../src/Verilog_DW/./vfpu/mux2_1.v
../src/Verilog_DW/./vfpu/mux2_1_en.v
../src/Verilog_DW/./vfpu/mux3_1.v
../src/Verilog_DW/./vfpu/mux4_1.v
../src/Verilog_DW/./vfpu/rcp_exp.v
../src/Verilog_DW/./vfpu/rcp_fra.v
../src/Verilog_DW/./vfpu/rnd2fpint.v
../src/Verilog_DW/./vfpu/rsq_exp.v
../src/Verilog_DW/./vfpu/rsq_fra.v
../src/Verilog_DW/./vfpu/sfu_lut.v
../src/Verilog_DW/./vfpu/fpu.v
../src/Verilog_DW/./vfpu/except_c1.v
../src/Verilog_DW/./vfpu/spec_case.v
../src/Verilog_DW/./vfpu/vfpu_top.v

../src/Verilog_DW/pu/PermuteUnit.v
../src/Verilog_DW/pu/Crossbar_Switch.v
../src/Verilog_DW/pu/Clamp.v
../src/Verilog_DW/pu/Bit_Pixel_Operation_Block.v
../src/Verilog_DW/pu/Result_Mux.v
../src/Verilog_DW/pu/Perm_Block.v
../src/Verilog_DW/pu/Pack_Block.v
../src/Verilog_DW/pu/Unpack_Block.v
../src/Verilog_DW/pu/Unpack_Mux.v
../src/Verilog_DW/pu/Pack_Unpack_Mux.v
../src/Verilog_DW/pu/Unpack_Pixel.v
../src/Verilog_DW/pu/Unpack_Signed_Byte.v
../src/Verilog_DW/pu/Unpack_Signed_Halfword.v
../src/Verilog_DW/pu/Word_Pixel_Pack_Block.v
../src/Verilog_DW/pu/Signed_Halfword_Signed_Saturate.v
../src/Verilog_DW/pu/Signed_Halfword_Unsigned_Saturate.v
../src/Verilog_DW/pu/Signed_Word_Signed_Saturate.v
../src/Verilog_DW/pu/Signed_Word_Unsigned_Saturate.v
../src/Verilog_DW/pu/Unsigned_Halfword_Unsigned_Saturate.v
../src/Verilog_DW/pu/Unsigned_Word_Unsigned_Saturate.v
../src/Verilog_DW/pu/Clamp_Mux.v

