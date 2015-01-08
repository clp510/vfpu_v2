//===============================================================================
//              64 bits leading zero anticipator  
//  ----------------------------------------------------------------------------
//  File Name            : lza_64.v
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
module  lza_64 (
                a,
                count
                );
input   [63:0]  a;
output  [6:0]   count;
reg     [6:0]   count;

wire    [5:0]   count1;
wire    [5:0]   count0;


//instance lza_32
lza_32 lza_32_1 (
                  .a ( a[63:32]),
                  .count( count1)
                  );
//instance lza_32
lza_32 lza_32_0 (
                  .a ( a[31:0]),
                  .count( count0)
                  );


always @ ( * )
begin
    if ( count1[5] )//leading 32 bits are all zero
    begin
        count = 7'd32 + {1'b0,count0};
    end
    else
    begin
        count = {1'b0, count1};
    end
end
endmodule   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
