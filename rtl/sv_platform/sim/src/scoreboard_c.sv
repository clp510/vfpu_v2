//==================================================================
//File Name	: scoreboard_c.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.15
//Revision	: v1.0
//Description: scoreboard transactor 
//  1) receive result data from monitor through mailbox
//  2) receive stimulus data from driver through data class
//  3) obtain software result and perform comparison between software result and hardware result
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================

class   scoreboard_c;

mailbox #( res_data_dc )    mon2scb_mbx;
drv
