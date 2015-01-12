//===============================================================================
//  File Name       : t_altivec_interface.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 2013/12/9  v1.0 wangjie
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform
//  Function        : interface altivec_clk_if
//						        interface altivec_dut_pins_if
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

`include	"./Define.v"
interface altivec_clk_if;
  bit clk, rst, dut_busy;
endinterface

interface altivec_dut_pins_if(altivec_clk_if clk_if);
	bit [127:0] vr_a, vr_a1, vr_a2, vr_a3, vr_a2monitor,
              vr_b, vr_b1, vr_b2, vr_b3, vr_b2monitor,
              vr_c, vr_c1, vr_c2, vr_c3, vr_c2monitor;
	bit [7:0] ins, ins1, ins2, ins3, ins2monitor;
	bit rc;
	string str_ins, str_ins1, str_ins2, str_ins3, str_ins2monitor;
	reg go1, go2, go3;
	bit [127:0] vrt;
	
	always @ (posedge go1)
	begin
	  ins1       <= ins;
	  str_ins1   <= str_ins;
    vr_a1      <= vr_a;
	end
	always @ (posedge go2)
	begin
    vr_b1      <= vr_b;
	end
	always @ (posedge go3)
	begin
    vr_c1      <= vr_c;
	end
	
  int checkmode = `CHECKMODE;
	
	always @ (posedge clk_if.clk)
	begin
	  if (checkmode == 0 || checkmode == 3)//vsfx or pu, last for 1 cycle
	  begin
      ins2monitor       <= ins;
      str_ins2monitor   <= str_ins;
      vr_a2monitor      <= vr_a;
      vr_b2monitor      <= vr_b;
      vr_c2monitor      <= vr_c;
	  end
	  else if (checkmode == 1)//vcfx, last for 3 cycles
	  begin
      ins2              <= ins1;
      ins2monitor       <= ins2;
      str_ins2          <= str_ins1;
      str_ins2monitor   <= str_ins2;
      vr_a2             <= vr_a1;
      vr_b2             <= vr_b1;
      vr_c2             <= vr_c1;
      vr_a2monitor      <= vr_a2;
      vr_b2monitor      <= vr_b2;
      vr_c2monitor      <= vr_c2;
	  end
	  else if (checkmode == 2)//vfpu, last for 4 cycles
	  begin
      ins2              <= ins1;
      ins3              <= ins2;
      ins2monitor       <= ins3;
      str_ins2          <= str_ins1;
      str_ins3          <= str_ins2;
      str_ins2monitor   <= str_ins3;
      vr_a2             <= vr_a1;
      vr_b2             <= vr_b1;
      vr_c2             <= vr_c1;
      vr_a3             <= vr_a2;
      vr_b3             <= vr_b2;
      vr_c3             <= vr_c2;
      vr_a2monitor      <= vr_a3;
      vr_b2monitor      <= vr_b3;
      vr_c2monitor      <= vr_c3;
	  end
	end
endinterface
