//===============================================================================
//  File Name       : t_altivec_coverage.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 2013/12/9  v1.0 wangjie
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform
//  Function        : class altivec_coverage
//						        each coverpoint has 16 bins default
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

class altivec_coverage;
  mailbox #(altivec_c) fifo1;
  altivec_c t1;
  int ins_cov;
  bit[127:0] vra_cov;
  bit[127:0] vrb_cov;
  bit[127:0] vrc_cov;

  covergroup altivec_cover;
    option.auto_bin_max = 0;// specifi es the maximum number of bins to automatically create
    i: coverpoint ins_cov
    {
      bins i_vsfx[70] = {[  1: 70]};
      bins i_vcfx[22] = {[ 71: 92]};
      bins i_vfpu[16] = {[ 93:108]};
      bins i_pu  [34] = {[109:142]};
    }
  endgroup
    
  function new();
    altivec_cover = new;
    fifo1         = new;
  endfunction
  
  task run();
    forever
    begin
      fifo1.get(t1);
      ins_cov    = t1.ins;
      vra_cov    = t1.vra;
      vrb_cov    = t1.vrb;
      vrc_cov    = t1.vrc;
      altivec_cover.sample();
    end
  endtask
endclass
