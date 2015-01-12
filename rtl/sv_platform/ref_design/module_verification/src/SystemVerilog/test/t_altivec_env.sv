//===============================================================================
//  File Name       : t_altivec_env.sv
//  File Revision   : 1.0
//  Date            : 2013/12/9
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform				　　　　 
//  Function        : task execute
//						        task terminate
//						        task check_coverage
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//　　　　　　　 No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

`include	"./Define.v"

class altivec_env;
  stimulus_generator s1;
  mailbox #(altivec_c) f1, ap1;
  altivec_driver  d1;
  altivec_monitor m1;
  altivec_scoreboard sb;

  function new(virtual altivec_dut_pins_if p1);
    s1             = new;
    f1             = new (5);//the depth of the mailbox is 5
    ap1            = new;
    d1             = new(p1);
    m1             = new(p1);
    sb             = new (ap1);
    sb.limit       = `LIMIT;
    s1.fifo        = f1;
    d1.nb_get_port = f1;
    m1.ap          = ap1;
  endfunction
  
  task execute;
    fork
      s1.generate_stimulus();
      d1.run();
      m1.run();
      sb.run();
      terminate;
    join_any
  endtask
  
  task terminate;
    fork
      begin
        @ (posedge sb.test_done)
        s1.stop_stimulus_generation();
        $display("Test finished!");
      end
      begin
        check_coverage();
      end
    join
  endtask
  
  task check_coverage;
    forever
    begin
      if ( $get_coverage() == 100 )
      begin
        repeat (3) @ ( posedge d1.dut_vf.clk_if.clk);
        $display("Final coverage report is %0d%%", 
                sb.cov.altivec_cover.get_inst_coverage());
        break;
  	  end
      else
      begin
        @ ( posedge d1.dut_vf.go1 );
        $display("coverage report : %0d%%",
                sb.cov.altivec_cover.get_inst_coverage());
      end
    end
    s1.stop_stimulus_generation();
    $display("Test finished: reach 100%% coverage!");
  endtask 
  
endclass
