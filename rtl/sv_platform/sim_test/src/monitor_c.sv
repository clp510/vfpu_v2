//==================================================================
//File Name	: monitor_c.sv
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.15
//Revision	: v1.0
//Description: monitor transactor,
//  1) sample the result data from DUT through interface
//  2) transimit result data to scoreboard through interface
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================
`define BIT bit

class   res_data_dc ;

BIT         res_rdy;
BIT [31:0]  res;

endclass : res_data_dc

class   monitor_c   ;

virtual test_dutw_if.IN     dutw2mon_if_inst;
mailbox #( res_data_dc )    mon2scb_mbx;
res_data_dc                 res_data_dc_inst;

extern  function new    (
                        input   mailbox #( res_data_dc ) mon2scb_mbx,
                        input   test_dutw_if.IN         dutw2mon_if_inst
                        );
extern  task    run();

endclass : monitor_c

//------------------------------------------
//function and task defination
//------------------------------------------
function    monitor::new    (
                        input   mailbox #( res_data_dc ) mon2scb_mbx,
                        input   test_dutw_if.IN         dutw2mon_if_inst
                        );
    this.dutw2mon_if_inst   = dutw2mon_if_inst;
    this.mon2scb_mbx        = mon2scb_mbx;

    res_data_dc_inst        = new();
endfunction : new

task    monitor::run();

while( 1 )
begin

    res_data_dc_inst        = dutw2mon_if_inst.res_rdy;
    res_data_dc_inst        = dutw2mon_if_inst.res;

    if( res_data_dc_inst.res_rdy == 1 )//current result is ready
        mon2scb.put( res_data_dc );
end//end while

endtask : run        
                            
