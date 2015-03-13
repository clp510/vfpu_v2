//=====================================================
//File Name	: csa4_2.v
//Author	: clp
//Email		; clp510@tju.edu.cn
//Date		: 2014.12.22
//Description	: 4:2 CSA consist of two  3:2 CSA
//-------------------------------------------------
//=====================================================
module csa4_2  (
			ci,
			a,
			b,
			c,
			d,
			sum,
			carry
			);

parameter WIDTH = 32;

input			ci;
input	[WIDTH-1:0] 	a;
input	[WIDTH-1:0]	b;
input	[WIDTH-1:0]	c;
input	[WIDTH-1:0]	d;

output	[WIDTH:0]	sum;
output	[WIDTH:0]	carry;

wire	[WIDTH-1:0]	sum_00;
wire	[WIDTH-1:0]	carry_00;
wire			co_00;
wire	[WIDTH-1:0]	sum_10;
wire	[WIDTH-1:0]	carry_10;
wire			co_10;
wire	[WIDTH-1:0]	sum_20;
wire	[WIDTH-1:0]	carry_20;

//Instance of DW01_csa
DW01_csa #( WIDTH ) csa_inst0 (
				.ci	( ci ),
				.a	( a	),
				.b	( b	),
				.c	( c	),
				.sum	( sum_00),
				.carry	( carry_00),
				.co	( co_00	)
				);
DW01_csa #( WIDTH ) csa_inst1 (
				.ci	( 1'b0	),
				.a	( sum_00),
				.b	( carry_00),
				.c	( d	),
				.sum	( sum_10),
				.carry	( carry_10),
				.co	( co_10 )
				);

//get the final result
assign	sum	= {co_00,sum_10};
assign	carry	= {co_10,carry_10};
endmodule



