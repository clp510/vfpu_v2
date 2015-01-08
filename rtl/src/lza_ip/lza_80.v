//===============================================================================
//              80 bits leading zero anticipator  
//  ----------------------------------------------------------------------------
//  File Name            : lza_80.v
//  File Revision        : 1.0
//  Author               : clp
//  Email                 :clp510@tju.edu.cn
//  ----------------------------------------------------------------------------
//  Description      : leading zero detector for normalization for 80 bit long
//  ----------------------------------------------------------------------------
// Copyright (c) 2014,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
//===============================================================================
module  lza_80 (
                a,
                count
                );
input   [79:0]  a;
output  [6:0]   count;
reg     [6:0]   count;

wire    [4:0]   count1;
wire    [6:0]   count0;


//instance lza_32
lza_16 lza_16_1 (
                  .a ( a[79:64]),
                  .count( count1)
                  );
//instance lza_32
lza_64 lza_64_0 (
                  .a ( a[63:0]),
                  .count( count0)
                  );


always @ ( * )
begin
    if ( count1[4] )//leading 16 bits are all zero
    begin
        count = 7'd16 + count0;
    end
    else
    begin
        count = {2'b00, count1};
    end
end
endmodule   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
