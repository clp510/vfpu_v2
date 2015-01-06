//===============================================================================
//              32 bits leading zero anticipator  
//  ----------------------------------------------------------------------------
//  File Name            : lza_32.v
//  File Revision        : 1.0
//  Author               : clp
//  Email                 :clp510@tju.edu.cn
//  ----------------------------------------------------------------------------
//  Description      : leading zero detector for normalization for 32 bit long
//  ----------------------------------------------------------------------------
// Copyright (c) 2014,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
//===============================================================================
module lza_32 (
               a,
               count
               );
input   [31:0]  a;
output  [5:0]   count;

reg		[5:0]	count;
wire    [3:0]   count3;
wire    [3:0]   count2;
wire    [3:0]   count1;
wire    [3:0]   count0;


//instance lza_8
lza_8   lza_8_3 (
                .a ( a[31:24] ),
                .count ( count3 )
                );
//instance lza_8
lza_8   lza_8_2 (
                .a ( a[23:16] ),
                .count ( count2 )
                );
//instance lza_8
lza_8   lza_8_1 (
                .a ( a[15:8] ),
                .count ( count1 )
                );
//instance lza_8
lza_8   lza_8_0 (
                .a ( a[7:0] ),
                .count ( count0 )
                );

always @ ( * )
begin
    if ( {count3[3],count2[3]} == 2'b11 )
    begin
        if( count1[3] == 1'b1 )
        begin
            count = 6'd24 + {2'b00,count0};
        end
        else
        begin
            count = 6'd16 + {2'b00,count1};
        end
    end
    else
    begin
        if ( count3[3] == 1'b1 )
        begin
            count = 6'd8 + {2'b00,count2};
        end
        else
        begin
            count = {2'b00,count3};
        end
    end
end
endmodule





