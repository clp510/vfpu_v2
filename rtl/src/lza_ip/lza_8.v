//===============================================================================
//              8 bits leading zero anticipator  
//  ----------------------------------------------------------------------------
//  File Name            : lza_8.v
//  File Revision        : 1.0
//  Author               : clp
//  Email                 :clp510@tju.edu.cn
//  ----------------------------------------------------------------------------
//  Description      : leading zero detector for normalization for 8 bit long
//  ----------------------------------------------------------------------------
// Copyright (c) 2014,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
//===============================================================================
module lza_8   (
                a,
                count
                );

                
input   [7:0] a;
output  [3:0] count;
reg		[3:0] count;

always @ ( * )
begin
    if ( ~| a[7:4] )//a[7:4] == 4'b0000 ?
    begin
        if ( ~| a[3:2]) //a[3:0] == 2'b00 ?
        begin
            if( ~ a[1] )//a[1] == 1'b0 ?
            begin
                count  = 7 + {~a[0]};
            end
            else
            begin
                count = 6;
            end
        end
        else
        begin
            if ( ~a[3] )//a[3] == 1'b0
            begin
                count = 5;
            end
            else
            begin
                count = 4;
            end
        end
    end
    else
    begin
        if ( ~| a[7:6] )//a[7:6] == 2'b00
        begin
            if ( ~a[5] )//a[5] == 1'b0
            begin
                count = 3;
            end
            else
            begin
                count = 2;
            end
        end
        else
        begin
            if ( ~a[7] )//a[7] == 1'b0
            begin
                count = 1;
            end
            else
            begin
                count = 0;
            end
        end
    end
end
endmodule    
            
            
            
            
            
            
            
            
            
            
            
            
            
            
             
