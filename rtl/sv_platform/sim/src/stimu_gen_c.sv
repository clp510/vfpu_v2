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
import  vfpu_dc_pkg::stimu_data_c;



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

endfunction : new

//------------------------------------------------------------
task    stimu_gen_c::run    ();

    stimu_data_c_inst           = new();//create a object
//    stimu_data_c_inst.op_vld    =1'b1;
    $display("entering stimu_gen_c run task\n");
    
    forever
    begin
        assert ( stimu_data_c_inst.randomize() )//to generate constranit random data
        else $fatal(0,"randomize failed");
        //print the stimulus generated
        //$display("stimu_gen_c\n,op_vld=%b\n,a=%h\n,b=%h\n,c=%h\n",stimu_data_c_inst.op_vld,stimu_data_c_inst.operand_a,stimu_data_c_inst.operand_b,stimu_data_c_inst.operand_c);
        
        gen2drv_mbx.put( stimu_data_c_inst ); //put constraint random data input mailbox
    end

    //stimu_data_c_inst.op_vld    = 1'b0;//how to end the op_vld signal
    //may use event to syn
endtask : run

