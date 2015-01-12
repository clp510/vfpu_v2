//===============================================================================
//  File Name       : t_altivec_monitor.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform
//  Function        : get the hardware result from altivec_dut and pack the result
//						        into a altivec_c class
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

class altivec_monitor;
  virtual altivec_dut_pins_if dut_vf;
  mailbox #(altivec_c) ap;
  function new (virtual altivec_dut_pins_if dut_vf_i);
    dut_vf = dut_vf_i;
  endfunction
  function altivec_c pins2transaction;
    altivec_c transaction  = new;
    transaction.vra        = dut_vf.vr_a2monitor;
    transaction.vrb        = dut_vf.vr_b2monitor;
    transaction.vrc        = dut_vf.vr_c2monitor;
    transaction.ins        = dut_vf.ins2monitor;
    transaction.rc         = dut_vf.rc;
    transaction.str_ins    = dut_vf.str_ins2monitor;
    transaction.vrt        = dut_vf.vrt;
    /*
    $display("transaction.vrt: %h", transaction.vrt);
    */
    return transaction;
  endfunction
  
  task run;
    forever @ (posedge dut_vf.clk_if.dut_busy)
    begin
      #1;//consume time
      ap.put(pins2transaction());
    end
  endtask
endclass
