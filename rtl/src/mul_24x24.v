//=====================================================
//File Name	: mul_24x24.v
//Author	: clp
//Email		: clp510@tju.edu.cn
//Date		: 2014.12.22
//Revision	: v1.0
//Description	: 1) carry out 24 x 24 multiplication,obtain two result:48-bit
// carry and 48-bit sum.
// 2) using tradiional algorithm,fisrt generate 24 partial products,then csa trees are
// employed to get the final carry and sum result.
// 3) 3 levels csa are employed
// 4) combinational logic
//------------------------------------------------------------
//Copyright(c)by VLSI lab of Tianjin university
//all rights reserved
//========================================================================
module mul_24x24(
		a,
		b,
		carry,
		sum
		);
input	[23:0]	a;//multiplicand
input	[23:0]	b;//multiplier

output	[47:0]	carry;
output	[47:0]	sum;

//generate the 24 partial productions
wire	[23:0] pp0;
wire	[23:0] pp1;
wire	[23:0] pp2;
wire	[23:0] pp3;
wire	[23:0] pp4;
wire	[23:0] pp5;
wire	[23:0] pp6;
wire	[23:0] pp7;
wire	[23:0] pp8;
wire	[23:0] pp9;
wire	[23:0] pp10;
wire	[23:0] pp11;
wire	[23:0] pp12;
wire	[23:0] pp13;
wire	[23:0] pp14;
wire	[23:0] pp15;
wire	[23:0] pp16;
wire	[23:0] pp17;
wire	[23:0] pp18;
wire	[23:0] pp19;
wire	[23:0] pp20;
wire	[23:0] pp21;
wire	[23:0] pp22;
wire	[23:0] pp23;

assign	pp0	= a & {24{b[0]}};
assign	pp1	= a & {24{b[1]}};
assign	pp2	= a & {24{b[2]}};
assign	pp3	= a & {24{b[3]}};
assign	pp4	= a & {24{b[4]}};
assign	pp5	= a & {24{b[5]}};
assign	pp6	= a & {24{b[6]}};
assign	pp7	= a & {24{b[7]}};
assign	pp8	= a & {24{b[8]}};
assign	pp9	= a & {24{b[9]}};
assign	pp10	= a & {24{b[10]}};
assign	pp11	= a & {24{b[11]}};
assign	pp12	= a & {24{b[12]}};
assign	pp13	= a & {24{b[13]}};
assign	pp14	= a & {24{b[14]}};
assign	pp15	= a & {24{b[15]}};
assign	pp16	= a & {24{b[16]}};
assign	pp17	= a & {24{b[17]}};
assign	pp18	= a & {24{b[18]}};
assign	pp19	= a & {24{b[19]}};
assign	pp20	= a & {24{b[20]}};
assign	pp21	= a & {24{b[21]}};
assign	pp22	= a & {24{b[22]}};
assign	pp23	= a & {24{b[23]}};
//-----------------------------------------------
//CSA tree to accumulate the partial products
//------------------------------------------------

//1st level csa
wire	[27:0] sum_00;
wire	[27:0] carry_00;
wire	[27:0] sum_01;
wire	[27:0] carry_01;
wire	[27:0] sum_02;
wire	[27:0] carry_02;
wire	[27:0] sum_03;
wire	[27:0] carry_03;
wire	[27:0] sum_04;
wire	[27:0] carry_04;
wire	[27:0] sum_05;
wire	[27:0] carry_05;

//pp0~pp3
csa4_2 #( 27 ) csa4_2_inst00 (
				.ci	( 1'b0 			),
				.a	( {3'h0,pp0}		),
				.b	( {2'h0,pp1,1'h0}	),
				.c	( {1'h0,pp2,2'h0}	),
				.d	( {pp3,3'h0}		),
				.sum	( sum_00	),
				.carry	( carry_00	)
				);

csa4_2 #( 27 ) csa4_2_inst01 (
				.ci	( 1'b0 			),
				.a	( {3'h0,pp4}		),
				.b	( {2'h0,pp5,1'h0}	),
				.c	( {1'h0,pp6,2'h0}	),
				.d	( {pp7,3'h0}		),
				.sum	( sum_01	),
				.carry	( carry_01	)
				);

csa4_2 #( 27 ) csa4_2_inst02 (
				.ci	( 1'b0 			),
				.a	( {3'h0,pp8}		),
				.b	( {2'h0,pp9,1'h0}	),
				.c	( {1'h0,pp10,2'h0}	),
				.d	( {pp11,3'h0}		),
				.sum	( sum_02	),
				.carry	( carry_02	)
				);

csa4_2 #( 27 ) csa4_2_inst03 (
				.ci	( 1'b0 			),
				.a	( {3'h0,pp12}		),
				.b	( {2'h0,pp13,1'h0}	),
				.c	( {1'h0,pp14,2'h0}	),
				.d	( {pp15,3'h0}		),
				.sum	( sum_03	),
				.carry	( carry_03	)
				);

csa4_2 #( 27 ) csa4_2_inst04 (
				.ci	( 1'b0 			),
				.a	( {3'h0,pp16}		),
				.b	( {2'h0,pp17,1'h0}	),
				.c	( {1'h0,pp18,2'h0}	),
				.d	( {pp19,3'h0}		),
				.sum	( sum_04	),
				.carry	( carry_04	)
				);

csa4_2 #( 27 ) csa4_2_inst05 (
				.ci	( 1'b0 			),
				.a	( {3'h0,pp20}		),
				.b	( {2'h0,pp21,1'h0}	),
				.c	( {1'h0,pp22,2'h0}	),
				.d	( {pp23,3'h0}		),
				.sum	( sum_05	),
				.carry	( carry_05	)
				);

//2nd level csa tree
wire	[32:0]	sum_10;
wire	[32:0]	carry_10;
wire	[32:0]	sum_11;
wire	[32:0]	carry_11;
wire	[32:0]	sum_12;
wire	[32:0]	carry_12;

csa4_2 #( 32 ) csa4_2_inst10 (
				.ci	( 1'b0		),
				.a	( {4'h0,sum_00}	),
				.b	( {4'h0,carry_00}),
				.c	( {sum_01,4'h0}	),
				.d	( {carry_01,4'h0}),
				.sum	( sum_10	),
				.carry	( carry_10	)
				);

csa4_2 #( 32 ) csa4_2_inst11 (
				.ci	( 1'b0		),
				.a	( {4'h0,sum_02}	),
				.b	( {4'h0,carry_02}),
				.c	( {sum_03,4'h0}	),
				.d	( {carry_03,4'h0}),
				.sum	( sum_11	),
				.carry	( carry_11	)
				);

csa4_2 #( 32 ) csa4_2_inst12 (
				.ci	( 1'b0		),
				.a	( {4'h0,sum_04}	),
				.b	( {4'h0,carry_04}),
				.c	( {sum_05,4'h0}	),
				.d	( {carry_05,4'h0}),
				.sum	( sum_12	),
				.carry	( carry_12	)
				);

//3rd level csa tree
wire	[40:0]	sum_20;
wire	[40:0]	carry_20;
wire		co_20;
wire	[40:0]	sum_21;
wire	[40:0]	carry_21;
wire		co_21;


DW01_csa #( 41 ) DW01_csa_inst20 (
				.ci	( 1'b0	),
				.a	( {8'h0,sum_10}	),
				.b	( {8'h0,carry_10}),
				.c	( {sum_11,8'h0}	),
				.sum	( sum_20	),
				.carry	( carry_20	),
				.co	( co_20		)
				);
DW01_csa #( 41 ) DW01_csa_inst21 (
				.ci	( 1'b0		),
				.a	( {8'h0,carry_11}),
				.b	( {sum_12,8'h0}),
				.c	( {carry_12,8'h0}),
				.sum	( sum_21	),
				.carry	( carry_21	),
				.co	( co_21		)
				);
//4th level csa tree(final level)
wire	[50:0]	sum_30;
wire	[50:0]	carry_30;

csa4_2 #( 50 ) csa4_2_inst40 (
				.ci	( 1'b0		),
				.a	( {9'h0,sum_20}	),
				.b	( {8'h0,co_20,carry_20}),
				.c	( {1'b0,sum_21,8'h0}),
				.d	( {co_21,carry_21,8'h0}),
				.sum	( sum_30		),
				.carry	( carry_30		)
				);
//get the final results
assign	sum 	= sum_30[47:0];
assign	carry	= carry_30[47:0];
endmodule









