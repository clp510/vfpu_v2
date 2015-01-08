//=====================================================
//File Name	: maf_tb.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2015.01.07
//Revision	: v1.0
//Description:simple testbench of maf
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
`timescale 1ns/1ns

module  maf_tb  ();

reg             clk;
reg             nj_mode;
reg             op_vld;
reg [31:0]      a;
reg [31:0]      b;
reg [31:0]      c;

wire    [31:0]  res;
wire            res_rdy;


//add counter
reg [31:0]  counter;
//reg the input signal
reg             nj_mode_r0;
reg             nj_mode_r1;
reg             nj_mode_r2;
reg             nj_mode_r3;

reg [31:0]      a_r0;
reg [31:0]      a_r1;
reg [31:0]      a_r2;
reg [31:0]      a_r3;
reg [31:0]      b_r0;
reg [31:0]      b_r1;
reg [31:0]      b_r2;
reg [31:0]      b_r3;
reg [31:0]      c_r0;
reg [31:0]      c_r1;
reg [31:0]      c_r2;
reg [31:0]      c_r3;

always @ ( posedge clk)
begin
    nj_mode_r0  <=  nj_mode;
    nj_mode_r1  <=  nj_mode_r0;
    nj_mode_r2  <= nj_mode_r1;
    nj_mode_r3  <= nj_mode_r2;

    a_r0        <= a;
    a_r1        <= a_r0;
    a_r2        <= a_r1;
    a_r3        <= a_r2;
    b_r0        <= b;
    b_r1        <= b_r0;
    b_r2        <= b_r1;
    b_r3        <= b_r2;
    c_r0        <= c;
    c_r1        <= c_r0;
    c_r2        <= c_r1;
    c_r3        <= c_r2;
end

//Instance of maf module
maf maf_inst    (
                .clk        (   clk     ),
                .nj_mode    (   nj_mode ),
                .op_vld     (   op_vld  ),
                .a          (   a       ),
                .b          (   b       ),
                .c          (   c       ),

                .res        (   res     ),
                .res_rdy    (   res_rdy )
                );
//generate clk signal
initial clk = 1;
always #5 clk = !clk;

//stimulus generator
initial
begin
    nj_mode     = 1'b1;
    op_vld      = 1'b0;
    a           = 32'h0;
    b           = 32'h0;
    c           = 32'h0;
    repeat(10)@(posedge clk);
    op_vld      = 1'b1;
    a           = 32'h40000000;//2
    b           = 32'h40400000;//3
    c           = 32'h40800000;//4
    repeat(1)@(posedge clk);
    a           = 32'h40000000;//2
    b           = 32'h40400000;//3
    c           = 32'h00000000;//0
    //corner case 1 :result is zero
    repeat(1)@(posedge clk);
    a           = 32'h40000000;//2
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 2: a is denormal number
    repeat(1)@(posedge clk);
    a           = {1'b0,8'h0,23'h400000};//0.1x2^(-126)
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 3: a is NaN
    repeat(1)@(posedge clk);
    a           = 32'h7fc00000;//QNaN
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 4: a is zero
    repeat(1)@(posedge clk);
    a           = 32'h00000000;//+0
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 5: a is inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+Inf
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 6: inf - inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+inf
    b           = 32'h40400000;//3
    c           = 32'hff800000;//-inf
    //corner case 7: 0*inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+inf
    b           = 32'h00000000;//0
    c           = 32'hc0c00000;//-6
    //corner case 8:denrom * inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+inf
    b           = {1'b0,8'h0,23'h400000};//0.1x2^(-126)
    c           = 32'hc0c00000;//-6
    //corner case 9: a x b overflow
    repeat(1)@(posedge clk);
    a           = {1'b0,8'hf0,23'h0};
    b           = {1'b0,8'hf1,23'h2};
    c           = 32'hc0c00000;//-6
    //corner case 10 :a x b underflow
    repeat(1)@(posedge clk);
    a           = {1'b0,8'h02,23'h0};
    b           = {1'b0,8'h03,23'h0};
    c           = 32'hc0c00000;//-6
    //corner case 11:result is min normalized num
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    b           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    c           = 32'h00000000;//+0
    //corner case 12:
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    b           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    c           = 32'h80000000;//-0
    //corner case 13:result is denormal num
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    b           = {1'b0,8'd63,23'h0};//1.0x2^(-64)
    c           = 32'h00000000;//+0
    //corner case 14:result is max normalized number
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd190,23'h7fffff};
    b           = {1'b0,8'd191,23'h0};
    c           = 32'h00000000;//+0
    //corner case 15:
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd190,23'h7fffff};
    b           = {1'b0,8'd191,23'h0};
    c           = 32'h3f800000;//+1
    //corner case 16:
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd190,23'h7fffff};
    b           = {1'b0,8'd191,23'h0};
    c           = {1'b0,8'hfe,23'h0};


    //==============================================
    //java mode
    //==============================================
    repeat(1)@(posedge clk);
    nj_mode     = 1'b0;
    a           = 32'h40000000;//2
    b           = 32'h40400000;//3
    c           = 32'h40800000;//4
    repeat(1)@(posedge clk);
    a           = 32'h40000000;//2
    b           = 32'h40400000;//3
    c           = 32'h00000000;//0
    //corner case 1 :result is zero
    repeat(1)@(posedge clk);
    a           = 32'h40000000;//2
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 2: a is denormal number
    repeat(1)@(posedge clk);
    a           = {1'b0,8'h0,23'h400000};//0.1x2^(-126)
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 3: a is NaN
    repeat(1)@(posedge clk);
    a           = 32'h7fc00000;//QNaN
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 4: a is zero
    repeat(1)@(posedge clk);
    a           = 32'h00000000;//+0
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 5: a is inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+Inf
    b           = 32'h40400000;//3
    c           = 32'hc0c00000;//-6
    //corner case 6: inf - inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+inf
    b           = 32'h40400000;//3
    c           = 32'hff800000;//-inf
    //corner case 7: 0*inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+inf
    b           = 32'h00000000;//0
    c           = 32'hc0c00000;//-6
    //corner case 8:denrom * inf
    repeat(1)@(posedge clk);
    a           = 32'h7f800000;//+inf
    b           = {1'b0,8'h0,23'h400000};//0.1x2^(-126)
    c           = 32'hc0c00000;//-6
    //corner case 9: a x b overflow
    repeat(1)@(posedge clk);
    a           = {1'b0,8'hf0,23'h0};
    b           = {1'b0,8'hf1,23'h2};
    c           = 32'hc0c00000;//-6
    //corner case 10 :a x b underflow
    repeat(1)@(posedge clk);
    a           = {1'b0,8'h02,23'h0};
    b           = {1'b0,8'h03,23'h0};
    c           = 32'hc0c00000;//-6
    //corner case 11:result is min normalized num
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    b           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    c           = 32'h00000000;//+0
    //corner case 12:
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    b           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    c           = 32'h80000000;//-0
    //corner case 13:result is denormal num
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd64,23'h0};//1.0x2^(-63)
    b           = {1'b0,8'd63,23'h0};//1.0x2^(-64)
    c           = 32'h00000000;//+0
    //corner case 14:result is max normalized number
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd190,23'h7fffff};
    b           = {1'b0,8'd191,23'h0};
    c           = 32'h00000000;//+0
    //corner case 15:
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd190,23'h7fffff};
    b           = {1'b0,8'd191,23'h0};
    c           = 32'h3f800000;//+1
    //corner case 16:
    repeat(1)@(posedge clk);
    a           = {1'b0,8'd190,23'h7fffff};
    b           = {1'b0,8'd191,23'h0};
    c           = {1'b0,8'hfe,23'h0};
    
    repeat(1)@(posedge clk);
    op_vld      = 1'b0;

end

initial counter = 32'hffffffff;
always @ (posedge clk )
begin
    if(res_rdy)
        counter <= counter +1;
end

initial
begin
    $monitor ( $time,,"corner case :%d \nnj_mode=%b\na=0x%h\nb=0x%h\nc=0x%h\nres=0x%h\nres_rdy=%b",counter,nj_mode_r3,a_r3,b_r3,c_r3,res,res_rdy);
end
endmodule
