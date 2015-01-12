//===============================================================================
//  File Name       : t_altivec_driver.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform
//  Function        : get the stimulus, generate the corresponding control signal
//						        and pass them to altivec_dut 
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

`include	"./Define.v"

class altivec_driver;
  virtual altivec_dut_pins_if dut_vf;
  mailbox #(altivec_c) nb_get_port;
  altivec_c transaction;
  function new (virtual altivec_dut_pins_if dut_vf_i);
    dut_vf = dut_vf_i;
  endfunction
  task run;
    dut_vf.vr_a      = 0;
    dut_vf.vr_b      = 0;
    dut_vf.vr_c      = 0;
    dut_vf.ins       = 0;
    dut_vf.rc        = 0;
    dut_vf.str_ins   = "";
    dut_vf.go1       = 0;
    dut_vf.go2       = 0;
    dut_vf.go3       = 0;
    @ (negedge dut_vf.clk_if.rst);
    forever @ (posedge dut_vf.clk_if.clk)
      if (nb_get_port.try_get(transaction))
      begin
        dut_vf.vr_a      = 0;
        dut_vf.vr_b      = 0;
        dut_vf.vr_c      = 0;
        dut_vf.ins       = 0;
        dut_vf.rc        = 0;
        dut_vf.str_ins   = "";
        /*
        $display("driver%0d get a stimulus: vr: %0h, ins: %0d",
                id, transaction.vr, transaction.ins);
        $display("\ntransaction.vra_vfpu:  %h",transaction.vra_vfpu);
        $display("\ntransaction.vra_vfpu2: %h",transaction.vra_vfpu2);
        */
        if (`CHECKMODE == 2)
        begin
          if (transaction.ins inside {[93:96]})
            dut_vf.vr_a = transaction.vra_vfpu;
          else
            dut_vf.vr_a = transaction.vra_vfpu2;
          dut_vf.vr_b = transaction.vrb_vfpu;
          dut_vf.vr_c = transaction.vrc_vfpu;
        end
        else
        begin
          dut_vf.vr_a = transaction.vra;
          dut_vf.vr_b = transaction.vrb;
          dut_vf.vr_c = transaction.vrc;
        end
        dut_vf.ins       = transaction.ins;
        dut_vf.rc        = transaction.rc;
        dut_vf.str_ins   = transaction.str_ins;
        dut_vf.go1       = 1;
        dut_vf.go2       = 1;
        dut_vf.go3       = 1;
        @ (posedge dut_vf.clk_if.clk);
        dut_vf.go1       = 0;
        dut_vf.go2       = 0;
        dut_vf.go3       = 0;
        dut_vf.vr_a      = 0;
        dut_vf.vr_b      = 0;
        dut_vf.vr_c      = 0;
      end//if
  endtask
endclass
