//===============================================================================
//  File Name       : t_altivec_dut_wrapper.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 2013/12/9  v1.0 wangjie
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform
//  Function        : wrap the dut unit, for better display of the "bind" function 
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

module altivec_dut_wrapper(input bit [127:0] vra, vrb, vrc,//vra_vfpu, vrb_vfpu, vrc_vfpu,
  input bit [7:0] ins,
  input bit go1, go2, go3,
  input bit clk, rst,
  input bit rc,

  output bit dut_busy,
  output bit [127:0] vrt
  );
						
  altivec_dut dut(.*);

endmodule
