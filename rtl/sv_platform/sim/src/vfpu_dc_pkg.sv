//==================================================================
//File Name	: vfpu_dc_pkg.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.13
//Revision	: v1.0
//Description: vfpu data class package,define data class for data 
//communication between different transactor
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================
package     vfpu_dc_pkg;
//-----------------------------------------------------------------------------------                                                
`ifdef  SIM
    typedef bit BIT;
`else
    typedef logic BIT;
`endif

//=======================================================================================
//defination of data class stimu_data_c
class   stimu_data_c;//vfpu stimulus data class

randc   BIT                 op_vld;
randc   BIT [31:0]  operand_a;
randc   BIT [31:0]  operand_b;
randc   BIT [31:0]  operand_c;
//------------------------------------------
//constraints defined here
//------------------------------------------
constraint  vld_cons{
                    op_vld  > 1'b0;
                    }

                    
constraint  a_cons  {
                    operand_a[30:23] < 8'hff;
                    }
constraint  b_cons  {   
                    operand_b[30:23] < 8'hff;
                    }
constraint  c_cons  {
                    operand_c[30:23] < 8'hff;
                    }
/*
constraint a_cons {
                    operand_a inside {32'h6f5011b5};
                    }
constraint b_cons {
                    operand_b inside {32'hd06686c5};
                    }
constraint c_cons {
                    operand_c inside {32'hcdcf2603};
                    }
 */                   
//-------------------------------------------
endclass : stimu_data_c

//=========================================================================================
//defination of data class res_data_dc
class   res_data_dc ;

//registered input signals for software result calculation
BIT         op_vld_rx;
BIT [31:0]  operand_a_rx;
BIT [31:0]  operand_b_rx;
BIT [31:0]  operand_c_rx;

BIT         res_rdy;
BIT [31:0]  res;

endclass : res_data_dc

//=========================================================================================

endpackage : vfpu_dc_pkg
