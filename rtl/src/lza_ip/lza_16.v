//===============================================================================
//              16 bits leading zero anticipator  
//  ----------------------------------------------------------------------------
//  File Name            : lza_16.v
//  File Revision        : 1.0
//  Author               : clp
//  Email                 :clp510@tju.edu.cn
//  ----------------------------------------------------------------------------
//  Description      : leading zero detector for normalization for 64 bit long
//  ----------------------------------------------------------------------------
// Copyright (c) 2014,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
//===============================================================================
module  lza_16 (
                a,
                count
                );
input   [15:0]  a;
output  [4:0]   count;
reg     [4:0]   count;

wire    [3:0]   count1;
wire    [3:0]   count0;


//instance lza_32
lza_8 lza_8_1 (
                  .a ( a[15:8]),
                  .count( count1)
                  );
//instance lza_32
lza_8 lza_8_0 (
                  .a ( a[7:0]),
                  .count( count0)
                  );


always @ ( * )
begin
    if ( count1[3] == 1'b1 )//leading 8 bits are all zero
    begin
        count = 5'd8 + {1'b0,count0};
    end
    else
    begin
        count = {1'b0, count1};
    end
end
endmodule   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    