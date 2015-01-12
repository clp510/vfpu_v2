//===============================================================================
//  File Name       : t_top_class_based.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform				   
//  Function        : top module for the varification platform
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

module top_class_based;
  import t_altivec_env_pkg::*;
  `include "./src/SystemVerilog/test/t_altivec_driver.sv"
  `include "./src/SystemVerilog/test/t_altivec_monitor.sv"
  `include "./src/SystemVerilog/test/t_altivec_env.sv"
  `include "./src/SystemVerilog/test/t_altivec_clock_reset.sv"
  `include	"./Define.v"
  
  parameter CHECK_CS = `CHECKMODE;

  altivec_clk_if clk_if();
  
  altivec_clock_reset cr(.clk(clk_if.clk),
                         .rst(clk_if.rst)
                         );
					  
  altivec_dut_pins_if pins_if(clk_if);
  
  
  altivec_dut_wrapper dut_wrapper(.vra(pins_if.vr_a),
                                  .vrb(pins_if.vr_b),
                                  .vrc(pins_if.vr_c),
                                  .ins(pins_if.ins),
                                  .go1(pins_if.go1),
                                  .go2(pins_if.go2),
                                  .go3(pins_if.go3),
                                  .clk(clk_if.clk),
                                  .rst(clk_if.rst),
                                  .rc (pins_if.rc),
                                         
                                  .dut_busy(clk_if.dut_busy),
                                  .vrt(pins_if.vrt)
                                  );

  bind dut_wrapper.dut sva_unit sva_interface(clk, go1, go2, go3, dut_busy);

  altivec_env env;

  initial
  begin
    env = new(pins_if);
    fork  
      cr.run();
    join_none
    env.execute();
    $stop;
  end
endmodule
