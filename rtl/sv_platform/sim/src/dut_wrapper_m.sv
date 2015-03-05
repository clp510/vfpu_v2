//==================================================================
//File Name	: dut_wrapper_m.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.10
//Revision	: v1.0
//Description: dut wrapper module,just for connecting the dut with the test program
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================
import  vfpu_dc_pkg::BIT;

module dut_wrapper_m(
                    input BIT clk,
                    test_dutw_if.D  dutw_if_inst
                    );


//instance the dut

maf     maf_inst    (
                    .clk        (   clk                     ),
                    .op_vld     (   dutw_if_inst.op_vld     ),
                    .nj_mode    (   1'b1                    ),
                    .a          (   dutw_if_inst.operand_a  ),
                    .b          (   dutw_if_inst.operand_b  ),
                    .c          (   dutw_if_inst.operand_c  ),

                    .res        (   dutw_if_inst.res        ),
                    .res_rdy    (   dutw_if_inst.res_rdy    )
                    );
endmodule                    
