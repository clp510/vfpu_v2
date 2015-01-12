//===============================================================================
//  File Name       : Define.v
//  File Revision   : 1.0
//  Date            : 2014/2/21
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//  History         : 
//  ----------------------------------------------------------------------------
//  Description     : define verification parameter            
//  Function        : 
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

//added by wangjie
`define CHECKMODE               0 //0 = vsfx, 1 = vcfx, 2 = vfpu, 3 = pu
`define BASE                    0 //0 = random test only, 1 = base + random
`define LIMIT               10000 //number of test patterns generated in base mode and random mode

//used in pu
`define INST_WIDTH             32 //instrustion witdh
`define HALF_VECTOR_WIDTH      64 //half vector register width
`define VECTOR_REG_WIDTH      128 //vector register width
`define DUAL_VECTOR_REG_WIDTH 256 //dual vector register width
`define GPR_REG_WIDTH          32 //general purpose register width
`define WORD_WIDTH             32 //machine word width
`define HALF_WORD_WIDTH        16 //half word width
`define BYTE_WIDTH              8 //byte width
`define VECTOR_REG_ADDR_WIDTH   5 //vector registor address width 
`define GPR_REG_ADDR_WIDTH      5 //general purpose register address width
`define SwitchTypeWidth         6 //control signal width for the switch block
`define MuxTypeWidth            6 //control signal width for the switch block
`define ClampTypeWidth          6 //the Clamp Block Control signal
`define PERM_VRC_SEG            5 //used in the vperm instruction for the vrc control segment
`define Bit_PixelTypeWidth      6 //used  control segment
`define SAT_Pixel_Width        72 //used to mark the SAT control bits 16+16+16+8+8+8=72
`define PERM_VRC_SEG            5 //used int the vperm instruction for the vrc control segment

`define InstructionWidth       32 //instruction width
`define DataWidth             128 //data width
`define AddressBusWidth        32 //external access address width
`define RegisterAddrWidth       5 //internal register address width,  32
`define WordWidth              32 //normal word width
`define LSTypeWidth             4 //10
`define PUTypeWidth             6 //34
`define VALUWidth               2 //VSXF / VCFX / VFPU,2'b01->VSFX,2'b10->VCFX,2'b11->VFPU
`define VALUTypeWidth           7 //22
`define AltiVecOPCDWidth       17 //operate code width(basic abd extended)
`define VSCRWidth              32 //internal VSCR width
`define CRWidth                32 //external CR width
`define ForwardFrom            15 //identify Forwarding, one high bit for PU and four low bits for VALU
`define EXP_W                   8 //width of exponent of single precison
`define FRA_W                  23 //width of fraction of single precision
