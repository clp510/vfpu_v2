//==================================================================
//File Name	: vfpu_s.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.10
//Revision	: v1.0
//Description: all vfpu struct data are defined in this file
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================

//stimulus data struct,used for communication between driver_c and dut_wrapper
typedef struct packed{
BIT         op_vld;
BIT [31:0]  operand_a;
BIT [31:0]  operand_b;
BIT [31:0]  operand_c;
}stimu_s;//stimulus data struct

//result data struct,used for communication between dut_wrapper and monitor_c
typedef struct packed{
BIT         res_rdy;
BIT [31:0]  res;
}res_s;//result data struct
