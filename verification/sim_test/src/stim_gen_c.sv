//==================================================================
//File Name	: stimu_gen_c.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.10
//Revision	: v1.0
//Description: stimulus generator class defination
//first generate constraint random data,then transmit to driver class
//through mailbox
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================

`define BIT bit
//defination of random stimulus data class
class   stimu_data_c;//vfpu stimulus data class
BIT                 op_vld;
randc   BIT [31:0]  operand_a;
randc   BIT [31:0]  operand_b;
randc   BIT [31:0]  operand_c;
//------------------------------------------
//constraints defined here
//------------------------------------------
constraint  a_cons  {
                    a[30:23] < 8'hff;
                    }
constraint  b_cons  {   
                    b[30:23] < 8'hff;
                    }
constraint  c_cons  {
                    c[30:23] < 8'hff;
                    }
//-------------------------------------------
endclass : stimu_data_c


//defination of stimu_gen_c
class   stimu_gen_c;

stimu_data_c    stimu_data_c_inst;


mailbox #( stimu_data_c ) gen2drv_mbx;//communication between stimu_gen_c to driver_c transactor


//function and task prototype declaration
extern function    new     (
                    input   mailbox #( stimu_data_c )gen2drv_mbx
                    );
                    
extern task run ();

endclass : stimu_gen_c

//--------------------------------------------------
//function and task defination
//--------------------------------------------------
function    stimu_gen_c::new    (
                                input   mailbox #( stimu_data_c ) gen2drv_mbx
                                );
    this.gen2drv_mbx    = gen2drv_mbx;

endfunction : constructor

//------------------------------------------------------------
task    stimu_gen_c::run    ();

    stimu_data_c_inst           = new();//create a object
    stimu_data_c_inst.op_vld    =1'b1;
    
    repeat ( `MAX_NUM )//MAX_NUM is macro
    begin
        assert ( stimu_data_c_inst.randomize() )//to generate constranit random data
        else $fatal(0,"randomize failed");
        
        gen2drv_mbx.put( stimu_data_c_inst ); //put constraint random data input mailbox
    end

    //stimu_data_c_inst.op_vld    = 1'b0;//how to end the op_vld signal
    //may use event to syn
endtask : run

