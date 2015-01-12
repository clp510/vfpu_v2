//===============================================================================
//  File Name       : t_altivec_dut.sv
//  File Revision   : 1.0
//  Date            : 2013/12/10
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 2013/12/10  v1.0 wangjie
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform
//  Function        : design under test
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

`include	"./Define.v"

module altivec_dut(
  input bit[127:0] vra,
  input bit[127:0] vrb,
  input bit[127:0] vrc,
  input bit[  7:0] ins,
  input bit go1, go2, go3,
  input bit clk, rst,
  input bit rc,

  output bit dut_busy,
  output bit [127:0] vrt
  );
  
  bit en_vsfx, en_vcfx, en_vfpu, en_pu;
  bit dut_busy4, dut_busy3, dut_busy2, dut_busy1;
  bit [7:0] ins_vsfx;
  bit [5:0] ins_pu;
  bit [4:0] ins_vcfx, ins_vfpu;
  
  assign both_ready = (go1 & go2 & go3);
  assign ins_vcfx   = ins -  71;
  assign ins_vfpu   = ins -  93;
  assign ins_pu     = ins - 108;
  
  always @ ( * )
  case (ins)
     1:ins_vsfx <= 8'b00110000;
     2:ins_vsfx <= 8'b01100000;
     3:ins_vsfx <= 8'b01101000;
     4:ins_vsfx <= 8'b01110000;
     5:ins_vsfx <= 8'b00000000;
     6:ins_vsfx <= 8'b00001000;
     7:ins_vsfx <= 8'b00010000;
     8:ins_vsfx <= 8'b01000000;
     9:ins_vsfx <= 8'b01001000;
    10:ins_vsfx <= 8'b01010000;
    11:ins_vsfx <= 8'b10110000;
    12:ins_vsfx <= 8'b11100000;
    13:ins_vsfx <= 8'b11101000;
    14:ins_vsfx <= 8'b11110000;
    15:ins_vsfx <= 8'b10000000;
    16:ins_vsfx <= 8'b10001000;
    17:ins_vsfx <= 8'b10010000;
    18:ins_vsfx <= 8'b11000000;
    19:ins_vsfx <= 8'b11001000;
    20:ins_vsfx <= 8'b11010000;
    21:ins_vsfx <= 8'b10100001;
    22:ins_vsfx <= 8'b10101001;
    23:ins_vsfx <= 8'b10110001;
    24:ins_vsfx <= 8'b10000001;
    25:ins_vsfx <= 8'b10001001;
    26:ins_vsfx <= 8'b10010001;
    27:ins_vsfx <= 8'b00100001;
    28:ins_vsfx <= 8'b00101001;
    29:ins_vsfx <= 8'b00110001;
    30:ins_vsfx <= 8'b00000001;
    31:ins_vsfx <= 8'b00001001;
    32:ins_vsfx <= 8'b00010001;
    33:ins_vsfx <= 8'b01100001;
    34:ins_vsfx <= 8'b01101001;
    35:ins_vsfx <= 8'b01110001;
    36:ins_vsfx <= 8'b01000001;
    37:ins_vsfx <= 8'b01001001;
    38:ins_vsfx <= 8'b01010001;
    39:ins_vsfx <= 8'b00000011;
    40:ins_vsfx <= 8'b00001011;
    41:ins_vsfx <= 8'b00010011;//all rc = 0
    42:ins_vsfx <= 8'b01100011;
    43:ins_vsfx <= 8'b01101011;
    44:ins_vsfx <= 8'b01110011;
    45:ins_vsfx <= 8'b01000011;
    46:ins_vsfx <= 8'b01001011;
    47:ins_vsfx <= 8'b01010011;
    48:ins_vsfx <= 8'b10000010;//vand
    49:ins_vsfx <= 8'b10001010;
    50:ins_vsfx <= 8'b10100010;
    51:ins_vsfx <= 8'b10010010;
    52:ins_vsfx <= 8'b10011010;
    53:ins_vsfx <= 8'b00000010;//vrlb
    54:ins_vsfx <= 8'b00001010;
    55:ins_vsfx <= 8'b00010010;
    56:ins_vsfx <= 8'b00100010;
    57:ins_vsfx <= 8'b00101010;
    58:ins_vsfx <= 8'b00110010;
    59:ins_vsfx <= 8'b01000010;
    60:ins_vsfx <= 8'b01001010;
    61:ins_vsfx <= 8'b01010010;
    62:ins_vsfx <= 8'b01100010;
    63:ins_vsfx <= 8'b01101010;
    64:ins_vsfx <= 8'b01110010;
    65:ins_vsfx <= 8'b10000101;//vmaxfp
    66:ins_vsfx <= 8'b10001101;//vminfp
    67:ins_vsfx <= 8'b01111011;//vcmpbfp
    68:ins_vsfx <= 8'b00011011;//vcmpeqfp
    69:ins_vsfx <= 8'b00111011;//vcmpgefp
    70:ins_vsfx <= 8'b11011011;//vcmpgtfp
  endcase
  
  always @ (posedge both_ready)
  begin
  #1;//consume time
  dut_busy4 <= 1;
	  @ (posedge clk);
  dut_busy4 <= 0;
  end
		
  always @ (posedge clk)
  if (`CHECKMODE == 0)//vsfx
  begin
    en_vsfx   <= 1'b1;
    en_vcfx   <= 1'b0;
    en_vfpu   <= 1'b0;
    en_pu     <= 1'b0;
    dut_busy  <= dut_busy4;
  end
  else if (`CHECKMODE == 1)//vcfx
  begin
    en_vsfx   <= 1'b0;
    en_vcfx   <= 1'b1;
    en_vfpu   <= 1'b0;
    en_pu     <= 1'b0;
    dut_busy3 <= dut_busy4;
    dut_busy2 <= dut_busy3;
    dut_busy  <= dut_busy2;
  end
  else if (`CHECKMODE == 2)//vfpu
  begin
    en_vsfx   <= 1'b0;
    en_vcfx   <= 1'b0;
    en_vfpu   <= 1'b1;
    en_pu     <= 1'b0;
    dut_busy3 <= dut_busy4;
    dut_busy2 <= dut_busy3;
    dut_busy1 <= dut_busy2;
    dut_busy  <= dut_busy1;
  end
  else if (`CHECKMODE == 3)//pu
  begin
    en_vsfx   <= 1'b0;
    en_vcfx   <= 1'b0;
    en_vfpu   <= 1'b0;
    en_pu     <= 1'b1;
    dut_busy  <= dut_busy4;
  end

  generate
    case (`CHECKMODE)
      0: begin: vsfx_generate
        vsfx_top vstop(
                      .clk,
                      .en(en_vsfx),
                      .vra,
                      .vrb,
                      .ins(ins_vsfx),
                        
                      .vrt_en(),	
                      .vrt,
                      .sat(),
                      .cr_en(),
                      .cr6()
                      );
          end
      1: begin: vcfx_generate
			  vcfx_top vctop(
                      .clk,
                      .en(en_vcfx),
                      .ins(ins_vcfx),
                      .vra,
                      .vrb,
                      .vrc,
                      
                      .vrt,
                      .sat(),
                      .vrt_en()
                      ); 
          end
      2: begin: vfpu_generate
			  vfpu_top vftop(
                      .clk,
                      .vfpu_type(ins_vfpu),
                      .op_valid(en_vfpu),//operand valid signal,last for one cycle
                      .vra,
                      .vrb,
                      .vrc,
                      .uim(vra[4:0]),//unsigned immediate
                      .vrt,
                      .vrt_rd()  //operand ready signal,last for one cycle
                      );
            end
      3: begin: pu_generate
			  PermuteUnit PU(	
                      .clk,
                      .rst_n(rst),
                      .in_PU_cs(en_pu),			
                      .in_PUType(ins_pu),
                      .in_PUAOperand(vra),
                      .in_PUBOperand(vrb),
                      .in_PUCOperand(vrc),
                      .in_PUTargetRegister(5'd0),
                      
                      .out_PUTargetRegisterEnable(),
                      .out_PUTargetRegister(),
                      .out_PUResult(vrt),
                      .out_PUTargetRegisterPipe(),
                      .out_PUtoVSCREnable(),
                      .out_PUtoVSCR()
                      );
          end//pu_generate
	  endcase
	endgenerate
				 
endmodule
