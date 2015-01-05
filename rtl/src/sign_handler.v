//==================================================================
//File Name	: sign_handler.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.05
//Revision	: v1.0
//Description: sign logic to get s_tmp and final_m signal
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//==================================================================
module  sign_handler    (
                        sa,
                        sb,
                        sc,

                        s_tmp,
                        final_m
                        );
//I/O
input       sa;
input       sb;
input       sc;

output reg      s_tmp;
output reg     final_m;//final mask signal to indicate whether s_tmp is the final sign 

wire    oppo_ab;//mask signal, whether sign a and sign b are opposite sign
assign  oppo_ab = sa ^ sb;

//get the s_tmp and final_m
always @ ( * )
begin
    case    ( { c, oppo_ab } )
    2'b00   :   begin//
                s_tmp   =   1'b0;
                final_m =   1'b1;
                end
    2'b01   :   begin
                s_tmp   =   1'b1;
                final_m =   1'b0;
                end
    2'b10   :   begin
                s_tmp   =   1'b0;
                final_m =   1'b0;
                end
    2'b11   :   begin
                s_tmp   =   1'b1;
                final_m =   1'b1;
                end
    endcase
end
endmodule

