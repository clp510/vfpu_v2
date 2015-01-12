//===============================================================================
//  File Name       : t_altivec_sva.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 2013/12/9  v1.0 wangjie
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform				　　　　 
//  Function        : systemverilog assertion for vsfx and pu
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//　　　　　　　 No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

module sva_unit(input sva_clk, sva_go1, sva_go2, sva_go3, sva_dut_busy);
	property altivec_busy;//in vsfx and pu, dut_busy should be set to 1 
                        //when go1, go2 and go3 were logic high simultaneously
		@(posedge sva_clk)(sva_go1 && sva_go2 && sva_go3)|-> sva_dut_busy;
	endproperty
  //altivec_sva: assert property (altivec_busy);
endmodule
