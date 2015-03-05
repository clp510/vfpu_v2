//==================================================================
//File Name	: test_p.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.19
//Revision	: v1.0
//Description: test program, top test environment
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================

import vfpu_dc_pkg::BIT;

program automatic test_p  (
                input BIT clk,
                test_dutw_if.TST test_if_inst
                );
                
`include "./src/env_c.sv"
//env class declaration
env_c               env_c_inst;


initial
begin

//$monitor($time,"test_if_inst.clk=%b\n",test_if_inst.clk);
//-------------------------------------------
// system initialization
//------------------------------------------
env_c_inst  = new( 
                    test_if_inst
                   );
env_c_inst.build();
$display("after env_c_inst.build\n");
//reset the system

repeat(5)   @(posedge clk);
//rst_n       = 1'b0;
$display("after 5 clk");
repeat(10)  @(posedge clk);
$display("after 5 clk");

//-----------------------------------------
//
//-----------------------------------------

fork
env_c_inst.stimu_gen_c_inst.run();//generate constraint random data
env_c_inst.driver_c_inst.run();//receive stimulus from stimu_gen_c_inst,and transmit to dutw and scoreboard
env_c_inst.monitor_c_inst.run();//monitor result data from dutw,and transmit to scoreboard transactor
env_c_inst.scb_c_inst.run();//compare and print running info

//env_c_inst.end_detect();//sim end detection
join_any

end

endprogram

/*
//task defination
task    system_init;

//rst_n       = 1'b1;
repeat(5)   @(posedge clk);
//rst_n       = 1'b0;
$display("after 5 clk1");
repeat(10)  @(posedge clk);
$display("after 5 clk1");
//rst_n       = 1'b1;

endtask
*/
