//===========================================
//tb of mul_24x24.v
//==========================================
`timescale 1ns/1ns
`define CASE_NUM 5000
module mul_24x24_tb;
reg	[23:0]	a;
reg	[23:0]	b;

wire	[47:0]	carry;
wire	[47:0]	sum;

wire	[47:0]  res;
wire	[47:0] 	res_ref;//right result

assign res = carry + sum;

assign res_ref=a*b;

//Instance mul_24x24 module
mul_24x24 mul_24x24_inst (
			.a	( a	),
			.b	( b	),
			.carry	( carry	),
			.sum	( sum	)
			);

integer i;
integer error_num;
//stimulus generator
initial
begin
error_num=0;
a = 24'h0;
b = 24'h0;
for (i=0;i<`CASE_NUM;i=i+1)
begin
#5 ;
a = {$random}/16777216;//generate a ramdom number between 0~2^24-1
b = {$random}/16777216;
#0;
$display("------------testcase %d begin---------------\n",i+1);
$display("a=%h\nb=%h\n",a,b);
$display("res    =%h\nres_ref=%h\n",res,res_ref);
if(res == res_ref)
begin
	$display("pass\n");
end	
else
begin
	$display("fail\n");
	error_num=error_num+1;
end	
$display("------------testcase %d end----------------\n",i+1);
end
$display("total number of testcases:%d\n",`CASE_NUM);
$display("error_num                :%d\n",error_num);
end
endmodule

