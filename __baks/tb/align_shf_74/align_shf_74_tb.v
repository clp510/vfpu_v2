//=================================================
//tb of algin_shf_74 
//=================================================
`timescale 1ns/1ns
module align_shf_74_tb;
reg		inv_mask;
reg	[23:0]	c_frac;
reg	[6:0]	shf_num;

wire	[97:0]	shf_res;

//Instance of DUT
align_shf_74 align_shf_74_inst (
				.inv_mask	( inv_mask	),
				.c_frac		( c_frac	),
				.shf_num	( shf_num	),
				.shf_res	( shf_res	)
				);

integer i ;
//stimulus generator
initial
begin
c_frac  = 24'hff_ffff;
inv_mask= 1'b0;
$display("inv_mask=1'b0");
for ( i=0;i<=74;i=i+1)
begin
    #5;
    shf_num = i;
    #0;
    $display("shf_num = %d",shf_num);
    $display("shf_res = %b",shf_res);
end
$display("==========================================\n");
$display("inv_mask=1'b1");
inv_mask = 1'b1;
for(i=0;i<=74;i=i+1)
begin
    #5;
    shf_num = i;
    #0;
    $display("shf_num = %d",shf_num);
    $display("shf_res = %b",shf_res);
end
end
endmodule 
