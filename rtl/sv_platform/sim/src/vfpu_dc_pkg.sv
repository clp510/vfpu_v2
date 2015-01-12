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

//data class drv2scb_dc
class   drv2scb_dc  ;
BIT [31:0]      operand_a;
BIT [31:0]      operand_b;
BIT [31:0]      operand_c;
endclass : drv2scb_dc

/*
//data class drv2dutw_dc
class   drv2dutw_dc;
BIT             op_vld;
BIT [31:0]      operand_a;
BIT [31:0]      operand_b;
BIT [31:0]      operand_c;
endclass : drv2dutw_dc
*/

endpackage : vfpu_dc_pkg
