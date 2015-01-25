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
program test_p  (
                test_dutw_if.T test_if_inst
                );
                
//env class declaration
env_c               env_c_inst;

//inteface instance
test_dutw_if.IN     dutw2mon_if_inst;
test_dutw_if.OUT    drv2dutw_if_inst;

//wire connection
assign  dutw2mon_if_inst.clk     = test_if_inst.clk;
assign  dutw2mon_if_inst.res     = test_if_inst.res;
assign  dutw2mon_if_inst.res_rdy = test_if_inst.res_rdy;

assign  drv2dutw_if_inst        = test_if_inst.clk;
assign  test_if_inst.op_vld     = drv2dutw_if_inst.op_vld;
assign  test_if_inst.operand_a  = drv2dutw_if_inst.operand_a;
assign  test_if_inst.operand_b  = drv2dutw_if_inst.operand_b;
assign  test_if_inst.operand_c  = drv2dutw_if_inst.operand_c;


initial
begin
//-------------------------------------------
// system initialization
//------------------------------------------
env_c_inst  = new( dutw2mon_if_inst,
                   drv2dutw_if_inst
                   );
//reset the system
system_init(test_if_inst.clk,
            test_if_inst.rst_n
            );

//-----------------------------------------
//
//-----------------------------------------

fork
env_c_inst.stimu_gen_c_inst.run();//generate constraint random data
env_c_inst.driver_c_inst.run();//receive stimulus from stimu_gen_c_inst,and transmit to dutw and scoreboard
env_c_inst.monitor_c_inst.run();//monitor result data from dutw,and transmit to scoreboard transactor
env_c_inst.scb_c_inst.run();//compare and print running info

env_c_inst.end_detect();//sim end detection
join_any

end

endmodule


//task defination
task    system_init(
                    input   BIT clk,
                    output  BIT rst_n
                    );

rst_n       = 1'b1;
repeat(5)   @(posedge clk);
rst_n       = 1'b0;
repeat(10)  @(posedge clk);
rst_n       = 1'b1;

endtask
