
module exp_handler_DW01_add_14 ( A, B, SUM );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  wire   n1, n4, n6, n7, n8, n9, n11, n12, n14, n16, n20, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n40, n42,
         n43, n44, n45, n46, n49, n51, n55, n56, net50198, n2, n18, n22, n21,
         n19, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n108, n109;

  NOR2X8 U26 ( .A(B[7]), .B(A[7]), .Y(n25) );
  OAI21X4 U31 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  NOR2X8 U34 ( .A(B[6]), .B(A[6]), .Y(n29) );
  OAI21X4 U37 ( .A0(n34), .A1(n98), .B0(n102), .Y(n31) );
  NOR2X8 U40 ( .A(B[5]), .B(A[5]), .Y(n32) );
  OAI21X4 U44 ( .A0(n38), .A1(n36), .B0(n37), .Y(n35) );
  XOR2X2 U57 ( .A(n9), .B(n46), .Y(SUM[2]) );
  OAI21X4 U58 ( .A0(n44), .A1(n46), .B0(n45), .Y(n43) );
  AOI21X4 U29 ( .A0(n27), .A1(n35), .B0(n28), .Y(n1) );
  NOR2X8 U16 ( .A(n25), .B(n22), .Y(n20) );
  NOR2X8 U20 ( .A(B[8]), .B(A[8]), .Y(n22) );
  OAI21X4 U17 ( .A0(n22), .A1(n26), .B0(n23), .Y(n21) );
  INVX8 U71 ( .A(n21), .Y(n19) );
  OR2X4 U72 ( .A(B[6]), .B(A[6]), .Y(n92) );
  OR2X8 U73 ( .A(B[8]), .B(A[8]), .Y(n93) );
  INVX4 U74 ( .A(n25), .Y(n49) );
  AOI21X2 U75 ( .A0(n108), .A1(n43), .B0(n40), .Y(n94) );
  CLKINVX6 U76 ( .A(n42), .Y(n40) );
  BUFX6 U77 ( .A(n26), .Y(n96) );
  NOR2X6 U78 ( .A(n109), .B(n32), .Y(n27) );
  NAND2X8 U79 ( .A(net50198), .B(n16), .Y(n2) );
  NAND2X6 U80 ( .A(B[7]), .B(A[7]), .Y(n26) );
  INVX4 U81 ( .A(n20), .Y(n18) );
  AND2X4 U82 ( .A(n93), .B(n23), .Y(n97) );
  INVX2 U83 ( .A(n19), .Y(n100) );
  BUFX6 U84 ( .A(n1), .Y(n105) );
  AND2X4 U85 ( .A(n92), .B(n30), .Y(n99) );
  NOR2X6 U86 ( .A(B[4]), .B(A[4]), .Y(n36) );
  NAND2X6 U87 ( .A(n55), .B(n56), .Y(n16) );
  INVX8 U88 ( .A(B[10]), .Y(n55) );
  CLKBUFX3 U89 ( .A(n33), .Y(n102) );
  NAND2X1 U90 ( .A(n20), .B(net50198), .Y(n11) );
  XNOR2X4 U91 ( .A(n95), .B(n2), .Y(n106) );
  OA21X4 U92 ( .A0(n18), .A1(n1), .B0(n19), .Y(n95) );
  XNOR2X4 U93 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  NAND2BX4 U94 ( .AN(n36), .B(n37), .Y(n7) );
  NAND2X6 U95 ( .A(B[4]), .B(A[4]), .Y(n37) );
  AOI21X4 U96 ( .A0(n108), .A1(n43), .B0(n40), .Y(n38) );
  NAND2X8 U97 ( .A(B[5]), .B(A[5]), .Y(n33) );
  INVX6 U98 ( .A(n35), .Y(n34) );
  XOR2X4 U99 ( .A(n34), .B(n6), .Y(SUM[5]) );
  XOR2X4 U100 ( .A(n24), .B(n97), .Y(SUM[8]) );
  INVX2 U101 ( .A(n51), .Y(n98) );
  INVX6 U102 ( .A(n32), .Y(n51) );
  NAND2X6 U103 ( .A(B[3]), .B(A[3]), .Y(n42) );
  XOR2X4 U104 ( .A(n31), .B(n99), .Y(SUM[6]) );
  INVX16 U105 ( .A(n106), .Y(SUM[9]) );
  OR2X8 U106 ( .A(B[3]), .B(A[3]), .Y(n108) );
  NAND2X4 U107 ( .A(n49), .B(n96), .Y(n4) );
  NAND2X4 U108 ( .A(B[2]), .B(A[2]), .Y(n45) );
  BUFX4 U109 ( .A(n43), .Y(n101) );
  NOR2X6 U110 ( .A(B[2]), .B(A[2]), .Y(n44) );
  INVX1 U111 ( .A(n94), .Y(n103) );
  CLKINVX4 U112 ( .A(n103), .Y(n104) );
  NAND2X4 U113 ( .A(A[8]), .B(B[8]), .Y(n23) );
  AOI21X2 U114 ( .A0(net50198), .A1(n100), .B0(n14), .Y(n12) );
  OR2X8 U115 ( .A(n55), .B(n56), .Y(net50198) );
  NOR2X4 U116 ( .A(B[1]), .B(A[1]), .Y(n46) );
  NAND2X4 U117 ( .A(n51), .B(n33), .Y(n6) );
  INVX1 U118 ( .A(n16), .Y(n14) );
  XNOR2X4 U119 ( .A(n8), .B(n101), .Y(SUM[3]) );
  NAND2X1 U120 ( .A(n108), .B(n42), .Y(n8) );
  NAND2BXL U121 ( .AN(n44), .B(n45), .Y(n9) );
  OA21X4 U122 ( .A0(n11), .A1(n105), .B0(n12), .Y(SUM[10]) );
  OAI21X2 U123 ( .A0(n1), .A1(n25), .B0(n96), .Y(n24) );
  NAND2X6 U124 ( .A(B[6]), .B(A[6]), .Y(n30) );
  NOR2X6 U125 ( .A(B[6]), .B(A[6]), .Y(n109) );
  INVX4 U126 ( .A(A[9]), .Y(n56) );
  XOR2X4 U127 ( .A(n105), .B(n4), .Y(SUM[7]) );
  XOR2X4 U128 ( .A(n104), .B(n7), .Y(SUM[4]) );
endmodule


module exp_handler_DW01_add_13 ( A, B, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n11, n12, n14, n16, n21, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n40,
         n42, n43, n44, n45, n48, net49558, net53533, n19, n17, n22, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n98, n99, n100;

  XNOR2X4 U12 ( .A(n24), .B(n3), .Y(SUM[6]) );
  XNOR2X4 U28 ( .A(n31), .B(n5), .Y(SUM[4]) );
  NOR2X8 U40 ( .A(B[3]), .B(A[3]), .Y(n32) );
  OAI21X4 U44 ( .A0(n38), .A1(n36), .B0(n37), .Y(n35) );
  XNOR2X4 U49 ( .A(n8), .B(n43), .Y(SUM[1]) );
  AOI21X4 U50 ( .A0(n100), .A1(n43), .B0(n40), .Y(n38) );
  OAI21X4 U17 ( .A0(n22), .A1(n26), .B0(n23), .Y(n21) );
  INVX4 U68 ( .A(n48), .Y(n87) );
  INVX8 U69 ( .A(n25), .Y(n48) );
  NAND2X4 U70 ( .A(A[5]), .B(B[5]), .Y(n26) );
  OAI21X4 U71 ( .A0(n87), .A1(n1), .B0(n26), .Y(n24) );
  AND2X2 U72 ( .A(net49558), .B(n16), .Y(n90) );
  OR2X4 U73 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2X2 U74 ( .A(B[8]), .B(A[8]), .Y(net49558) );
  OR2X2 U75 ( .A(n89), .B(n88), .Y(n11) );
  INVXL U76 ( .A(net49558), .Y(n88) );
  NOR2BX4 U77 ( .AN(n45), .B(n44), .Y(SUM[0]) );
  NAND2X6 U78 ( .A(n94), .B(n19), .Y(n17) );
  INVX3 U79 ( .A(n21), .Y(n19) );
  OR2X8 U80 ( .A(n25), .B(n22), .Y(n89) );
  XOR2X4 U81 ( .A(n17), .B(n90), .Y(SUM[7]) );
  CLKINVX2 U82 ( .A(n32), .Y(n98) );
  NAND2X2 U83 ( .A(A[4]), .B(B[4]), .Y(n30) );
  NAND2X8 U84 ( .A(n91), .B(n92), .Y(n100) );
  INVX8 U85 ( .A(B[1]), .Y(n91) );
  CLKINVX2 U86 ( .A(A[1]), .Y(n92) );
  NAND2BX1 U87 ( .AN(n22), .B(n23), .Y(n3) );
  NOR2X1 U88 ( .A(B[0]), .B(A[0]), .Y(n44) );
  NAND2X6 U89 ( .A(B[3]), .B(A[3]), .Y(n33) );
  NAND2X6 U90 ( .A(B[1]), .B(A[1]), .Y(n42) );
  AND2X8 U91 ( .A(n35), .B(n27), .Y(n93) );
  NOR2X8 U92 ( .A(n93), .B(n28), .Y(n1) );
  NOR2X4 U93 ( .A(n29), .B(n32), .Y(n27) );
  OR2X8 U94 ( .A(n1), .B(n89), .Y(n94) );
  NOR2X6 U95 ( .A(B[5]), .B(A[5]), .Y(n25) );
  NOR2X8 U96 ( .A(B[2]), .B(A[2]), .Y(n36) );
  INVX8 U97 ( .A(n42), .Y(n40) );
  NAND2BX1 U98 ( .AN(n29), .B(n30), .Y(n5) );
  NAND2X4 U99 ( .A(B[0]), .B(A[0]), .Y(n45) );
  NAND2BX2 U100 ( .AN(n32), .B(n33), .Y(n6) );
  AOI21X4 U101 ( .A0(n100), .A1(n43), .B0(n40), .Y(n95) );
  CLKBUFX2 U102 ( .A(n1), .Y(n96) );
  OA21X4 U103 ( .A0(n11), .A1(n96), .B0(n12), .Y(SUM[8]) );
  NOR2X8 U104 ( .A(B[6]), .B(A[6]), .Y(n22) );
  NAND2X6 U105 ( .A(net53533), .B(n98), .Y(n99) );
  INVX6 U106 ( .A(n35), .Y(n34) );
  NAND2X4 U107 ( .A(A[6]), .B(B[6]), .Y(n23) );
  XOR2X4 U108 ( .A(n7), .B(n95), .Y(SUM[2]) );
  AOI21X1 U109 ( .A0(n21), .A1(net49558), .B0(n14), .Y(n12) );
  NAND2X6 U110 ( .A(n99), .B(n33), .Y(n31) );
  NAND2BX4 U111 ( .AN(n36), .B(n37), .Y(n7) );
  NOR2X8 U112 ( .A(B[4]), .B(A[4]), .Y(n29) );
  CLKINVX8 U113 ( .A(n34), .Y(net53533) );
  NAND2X4 U114 ( .A(A[2]), .B(B[2]), .Y(n37) );
  NAND2X4 U115 ( .A(n48), .B(n26), .Y(n4) );
  OAI21X4 U116 ( .A0(n33), .A1(n29), .B0(n30), .Y(n28) );
  INVXL U117 ( .A(n16), .Y(n14) );
  NAND2X2 U118 ( .A(n100), .B(n42), .Y(n8) );
  INVX6 U119 ( .A(n45), .Y(n43) );
  XOR2X4 U120 ( .A(n34), .B(n6), .Y(SUM[3]) );
  XOR2X4 U121 ( .A(n1), .B(n4), .Y(SUM[5]) );
endmodule


module denorm_handler_DW_rightsh_7 ( A, SH, B );
  input [74:0] A;
  input [4:0] SH;
  output [74:0] B;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n21, n23, n24, n25, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n41, n42, n43, n47, n48, n49, n50, n51, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n96, n97, n100,
         n101, n102, n104, n105, n106, n108, n111, n112, n113, n117, n120,
         n121, n122, n123, n125, n126, n127, n128, n129, n130, n131, n133,
         n134, n136, n137, n138, n142, n143, n144, n145, n146, n147, n148,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n170, n171, n172,
         n173, n174, n175, n176, n177, n179, n181, n182, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n195, n196, n198, n199,
         n200, n201, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n214, n215, n216, n217, n218, n220, n221, n222, n223, n225,
         n226, n227, n228, n229, n230, n232, n233, n234, n235, n236, n237,
         n238, n240, n241, n242, n243, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n270, n272, n274, n276, n277, n278,
         n279, n280, n281, n282, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n298, n300, net47434, net47432,
         net47430, net47428, net47426, net47440, net47436, net47458, net47452,
         net47450, net47448, net47446, net47444, net47472, net47470, net47466,
         net47490, net47488, net47486, net47484, net47518, net47512, net47510,
         net47508, net47506, net47504, net47502, net51313, net51988, net52224,
         net52649, net52853, net53213, net53250, net53275, net53407, net53413,
         net53432, net53439, net53470, net53477, net53514, net53576, net53601,
         net53615, net53613, net53653, net53660, net53690, net53706, net53714,
         n74, n299, n224, n149, net61010, net61011, net61223, net61235,
         net61234, net61266, net61288, net61334, net61369, net61373, net61378,
         net61462, net61494, net61543, net61542, net61734, net61745, net61804,
         net61807, net61890, net61916, net62527, net62534, net62550, net62601,
         n271, n135, net60774, net47482, n44, n40, net61302, net53560,
         net53559, net47498, n202, n194, net60802, net53590, net53212,
         net47516, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604;

  BUFX12 U379 ( .A(net47498), .Y(net47490) );
  BUFX6 U380 ( .A(SH[4]), .Y(net47440) );
  BUFX6 U381 ( .A(SH[4]), .Y(net47436) );
  INVX16 U382 ( .A(net47512), .Y(net53250) );
  INVX16 U383 ( .A(net47512), .Y(net53212) );
  MX2X6 U384 ( .A(n34), .B(n30), .S0(net61916), .Y(B[29]) );
  NAND2X2 U385 ( .A(n35), .B(n461), .Y(n462) );
  NAND2X4 U386 ( .A(n31), .B(net61916), .Y(n463) );
  NAND2X6 U387 ( .A(n462), .B(n463), .Y(B[30]) );
  INVX1 U388 ( .A(net61916), .Y(n461) );
  INVX20 U389 ( .A(net47470), .Y(net61916) );
  CLKINVX8 U390 ( .A(net61890), .Y(net62534) );
  NOR2X4 U391 ( .A(n143), .B(net47426), .Y(n68) );
  NAND2X4 U392 ( .A(net47484), .B(n291), .Y(n537) );
  MX2X6 U393 ( .A(n65), .B(n69), .S0(net47466), .Y(B[64]) );
  MXI2X4 U394 ( .A(n478), .B(n221), .S0(net47452), .Y(n464) );
  MX2X6 U395 ( .A(n68), .B(n64), .S0(net61916), .Y(B[63]) );
  MX2X2 U396 ( .A(n58), .B(n62), .S0(net47466), .Y(B[57]) );
  NOR2X6 U397 ( .A(n513), .B(n514), .Y(n512) );
  BUFX20 U398 ( .A(n122), .Y(n574) );
  NOR2X6 U399 ( .A(n150), .B(net47426), .Y(n75) );
  NAND2X6 U400 ( .A(n294), .B(net53660), .Y(n539) );
  NAND2X6 U401 ( .A(net61011), .B(n191), .Y(n552) );
  MXI2X2 U402 ( .A(A[52]), .B(A[53]), .S0(net47506), .Y(n498) );
  NAND2X2 U403 ( .A(net47506), .B(A[58]), .Y(n580) );
  NAND2X6 U404 ( .A(A[64]), .B(net61235), .Y(n581) );
  CLKBUFX20 U405 ( .A(net47516), .Y(net61234) );
  AND2X6 U406 ( .A(n97), .B(net61223), .Y(n506) );
  CLKMX2X6 U407 ( .A(n15), .B(n19), .S0(net47472), .Y(B[14]) );
  NAND2X4 U408 ( .A(net47446), .B(n181), .Y(n542) );
  CLKBUFX20 U409 ( .A(net47518), .Y(net47506) );
  NAND2X2 U410 ( .A(n182), .B(net47446), .Y(n561) );
  NAND2X8 U411 ( .A(A[47]), .B(net53432), .Y(n568) );
  MXI2X6 U412 ( .A(n205), .B(n478), .S0(net47452), .Y(n130) );
  MXI2X8 U413 ( .A(A[60]), .B(A[61]), .S0(net61234), .Y(n286) );
  INVX1 U414 ( .A(net47472), .Y(n467) );
  INVX16 U415 ( .A(net47486), .Y(net62550) );
  INVX16 U416 ( .A(net47490), .Y(net53706) );
  BUFX6 U417 ( .A(SH[2]), .Y(net47482) );
  MX2X2 U418 ( .A(n8), .B(n12), .S0(net47472), .Y(B[7]) );
  NAND2X4 U419 ( .A(net61011), .B(n194), .Y(net53559) );
  AND3X4 U420 ( .A(n527), .B(n528), .C(net53653), .Y(n520) );
  INVX3 U421 ( .A(net47488), .Y(net53653) );
  NAND2X6 U422 ( .A(n536), .B(n537), .Y(n538) );
  OAI2BB1X4 U423 ( .A0N(n512), .A1N(net61916), .B0(n492), .Y(B[25]) );
  NAND2BX4 U424 ( .AN(net47430), .B(n120), .Y(n603) );
  NAND2X2 U425 ( .A(net53690), .B(n255), .Y(n532) );
  CLKINVX6 U426 ( .A(net47488), .Y(net53690) );
  NAND2X4 U427 ( .A(net61378), .B(n127), .Y(n546) );
  OAI2BB1X4 U428 ( .A0N(n39), .A1N(net61916), .B0(n493), .Y(B[38]) );
  MXI2X6 U429 ( .A(n237), .B(n487), .S0(net62601), .Y(n162) );
  MXI2X4 U430 ( .A(n470), .B(n186), .S0(net47448), .Y(n465) );
  CLKBUFX12 U431 ( .A(net47482), .Y(net47466) );
  CLKBUFX12 U432 ( .A(net47482), .Y(net47472) );
  NAND2X2 U433 ( .A(n182), .B(net53576), .Y(n548) );
  AND2X6 U434 ( .A(n260), .B(net47488), .Y(n521) );
  AND2X8 U435 ( .A(net47432), .B(n117), .Y(n513) );
  MXI2X4 U436 ( .A(n204), .B(n196), .S0(n466), .Y(n121) );
  CLKINVX20 U437 ( .A(net47450), .Y(n466) );
  INVX12 U438 ( .A(net61234), .Y(net53432) );
  MXI2X2 U439 ( .A(n211), .B(n496), .S0(net47452), .Y(n522) );
  CLKMX2X6 U440 ( .A(n44), .B(n48), .S0(net47472), .Y(B[43]) );
  NAND2X8 U441 ( .A(net53477), .B(A[42]), .Y(n529) );
  CLKAND2X12 U442 ( .A(n575), .B(n576), .Y(net61373) );
  CLKMX2X6 U443 ( .A(n15), .B(n11), .S0(n467), .Y(B[10]) );
  CLKMX2X6 U444 ( .A(n44), .B(n40), .S0(net61916), .Y(B[39]) );
  NAND2BX4 U445 ( .AN(n468), .B(n193), .Y(n564) );
  CLKINVX20 U446 ( .A(net61011), .Y(n468) );
  MXI2X4 U447 ( .A(n170), .B(n162), .S0(net61734), .Y(n87) );
  CLKMX2X6 U448 ( .A(n28), .B(n32), .S0(net47470), .Y(B[27]) );
  AND2X8 U449 ( .A(n558), .B(n559), .Y(n476) );
  MX2X4 U450 ( .A(n41), .B(n479), .S0(net47470), .Y(B[40]) );
  NAND2X4 U451 ( .A(n215), .B(net47452), .Y(n600) );
  NOR2X6 U452 ( .A(n521), .B(n520), .Y(n519) );
  MXI2X2 U453 ( .A(n229), .B(n476), .S0(net47484), .Y(n154) );
  NAND2X4 U454 ( .A(n253), .B(net53706), .Y(n530) );
  INVX16 U455 ( .A(net47444), .Y(net61734) );
  NAND2X6 U456 ( .A(n474), .B(net61378), .Y(n583) );
  NAND2X2 U457 ( .A(n223), .B(net47452), .Y(n596) );
  AND2X8 U458 ( .A(n590), .B(n591), .Y(n475) );
  CLKMX2X4 U459 ( .A(n68), .B(n72), .S0(net47466), .Y(B[67]) );
  INVX16 U460 ( .A(net47490), .Y(net61462) );
  INVX20 U461 ( .A(net47502), .Y(net53477) );
  AND2X8 U462 ( .A(n562), .B(n563), .Y(n469) );
  AND2X8 U463 ( .A(n530), .B(n531), .Y(n470) );
  AND2X8 U464 ( .A(n578), .B(n577), .Y(n471) );
  INVX20 U465 ( .A(net47450), .Y(net61011) );
  INVX16 U466 ( .A(net47446), .Y(net61807) );
  AND2X8 U467 ( .A(n542), .B(n541), .Y(n472) );
  CLKAND2X12 U468 ( .A(n583), .B(n584), .Y(n473) );
  AND2X8 U469 ( .A(n534), .B(n535), .Y(n474) );
  NOR2X4 U470 ( .A(n146), .B(net47426), .Y(n71) );
  NAND2X6 U471 ( .A(n201), .B(net47450), .Y(n565) );
  INVX1 U472 ( .A(A[8]), .Y(n509) );
  NAND2X4 U473 ( .A(n470), .B(net47446), .Y(n535) );
  INVX16 U474 ( .A(net47432), .Y(net61378) );
  CLKMX2X4 U475 ( .A(n66), .B(n70), .S0(net47472), .Y(B[65]) );
  MX2X6 U476 ( .A(n67), .B(n63), .S0(net61916), .Y(B[62]) );
  CLKINVX6 U477 ( .A(net47450), .Y(net61890) );
  NAND2X6 U478 ( .A(n289), .B(net61462), .Y(n536) );
  MXI2X4 U479 ( .A(n478), .B(n221), .S0(net47452), .Y(n138) );
  MXI2X4 U480 ( .A(n511), .B(n485), .S0(net47430), .Y(n41) );
  MXI2X2 U481 ( .A(n476), .B(n233), .S0(net47484), .Y(n156) );
  INVX16 U482 ( .A(net47432), .Y(net61223) );
  NOR2X4 U483 ( .A(n500), .B(net47426), .Y(n65) );
  MX2X4 U484 ( .A(n1), .B(n5), .S0(net47472), .Y(B[0]) );
  MXI2X2 U485 ( .A(n474), .B(n79), .S0(net61378), .Y(n4) );
  MX2X2 U486 ( .A(n71), .B(n75), .S0(net47472), .Y(B[70]) );
  INVX4 U487 ( .A(net47430), .Y(net53514) );
  AND2X6 U488 ( .A(n548), .B(n549), .Y(n477) );
  CLKAND2X12 U489 ( .A(n597), .B(n598), .Y(n478) );
  CLKAND2X12 U490 ( .A(n603), .B(n604), .Y(n479) );
  AND2X8 U491 ( .A(n543), .B(net53615), .Y(n480) );
  AND2X6 U492 ( .A(n544), .B(n545), .Y(n481) );
  AND2X6 U493 ( .A(n566), .B(n567), .Y(n482) );
  AND2X8 U494 ( .A(n546), .B(n547), .Y(n483) );
  MX2X2 U495 ( .A(n56), .B(n60), .S0(net47466), .Y(B[55]) );
  AND2X8 U496 ( .A(n579), .B(n580), .Y(n484) );
  MX2X6 U497 ( .A(n62), .B(n66), .S0(net47472), .Y(B[61]) );
  NAND2X6 U498 ( .A(n214), .B(net51313), .Y(n601) );
  NOR2X4 U499 ( .A(n135), .B(net47428), .Y(n60) );
  MX2X2 U500 ( .A(n55), .B(n59), .S0(net47466), .Y(B[54]) );
  NOR2X6 U501 ( .A(n138), .B(net47428), .Y(n63) );
  MX2X2 U502 ( .A(n483), .B(n56), .S0(net47466), .Y(B[51]) );
  MX2X6 U503 ( .A(n61), .B(n65), .S0(net47466), .Y(B[60]) );
  AND2X8 U504 ( .A(n599), .B(n600), .Y(n485) );
  MX2X4 U505 ( .A(n54), .B(n58), .S0(net47466), .Y(B[53]) );
  MXI2X4 U506 ( .A(n214), .B(n206), .S0(net61807), .Y(n131) );
  NAND2X6 U507 ( .A(net53213), .B(n581), .Y(n582) );
  INVX12 U508 ( .A(n582), .Y(n289) );
  CLKMX2X6 U509 ( .A(n10), .B(n14), .S0(net47472), .Y(B[9]) );
  INVX3 U510 ( .A(net61235), .Y(net61494) );
  NAND2X6 U511 ( .A(net53250), .B(A[43]), .Y(n486) );
  AND2X8 U512 ( .A(n486), .B(net53590), .Y(net60802) );
  NAND2X6 U513 ( .A(net53212), .B(A[63]), .Y(net53213) );
  BUFX20 U514 ( .A(net47516), .Y(net47512) );
  BUFX20 U515 ( .A(SH[0]), .Y(net47516) );
  CLKBUFX20 U516 ( .A(net47516), .Y(net47502) );
  CLKBUFX20 U517 ( .A(net47516), .Y(net47504) );
  NAND2X4 U518 ( .A(net61542), .B(A[43]), .Y(net53714) );
  BUFX20 U519 ( .A(SH[0]), .Y(net47518) );
  MXI2X4 U520 ( .A(net60802), .B(n267), .S0(net61369), .Y(n192) );
  MXI2X4 U521 ( .A(net60802), .B(n271), .S0(net47488), .Y(n194) );
  NAND2X4 U522 ( .A(A[44]), .B(net47508), .Y(net53590) );
  BUFX20 U523 ( .A(net47518), .Y(net47508) );
  MXI2X4 U524 ( .A(A[44]), .B(A[45]), .S0(net47502), .Y(n270) );
  AND2X8 U525 ( .A(net53560), .B(net53559), .Y(net61302) );
  MXI2X4 U526 ( .A(net61302), .B(n465), .S0(net61223), .Y(n28) );
  MXI2X4 U527 ( .A(n135), .B(net61302), .S0(net60774), .Y(n44) );
  CLKBUFX20 U528 ( .A(net47458), .Y(net47450) );
  BUFX20 U529 ( .A(SH[3]), .Y(net47458) );
  NAND2X2 U530 ( .A(n202), .B(net47450), .Y(net53560) );
  MXI2X4 U531 ( .A(n186), .B(n194), .S0(net47448), .Y(n111) );
  CLKBUFX20 U532 ( .A(net47498), .Y(net47488) );
  BUFX20 U533 ( .A(SH[1]), .Y(net47498) );
  CLKBUFX20 U534 ( .A(net47498), .Y(net47486) );
  CLKBUFX20 U535 ( .A(net47498), .Y(net47484) );
  MXI2X4 U536 ( .A(n277), .B(n279), .S0(net47486), .Y(n202) );
  MXI2X4 U537 ( .A(n210), .B(n202), .S0(net61890), .Y(n127) );
  MXI2X4 U538 ( .A(n271), .B(net61334), .S0(net47486), .Y(n196) );
  MXI2X4 U539 ( .A(n277), .B(net61266), .S0(net61369), .Y(n200) );
  MXI2X4 U540 ( .A(n281), .B(n279), .S0(net62550), .Y(n204) );
  INVX8 U541 ( .A(net47430), .Y(net60774) );
  MXI2X4 U542 ( .A(net61804), .B(n123), .S0(net60774), .Y(n48) );
  MXI2X4 U543 ( .A(n471), .B(net61288), .S0(net60774), .Y(n19) );
  MXI2X4 U544 ( .A(n472), .B(n82), .S0(net60774), .Y(n7) );
  BUFX20 U545 ( .A(SH[4]), .Y(net47430) );
  BUFX20 U546 ( .A(net47440), .Y(net47432) );
  MXI2X4 U547 ( .A(net61373), .B(n131), .S0(net47430), .Y(n40) );
  MX2X6 U548 ( .A(n36), .B(n40), .S0(net47470), .Y(B[35]) );
  MXI2X4 U549 ( .A(net61373), .B(net61010), .S0(net61223), .Y(n24) );
  MXI2X4 U550 ( .A(n131), .B(n147), .S0(net47428), .Y(n56) );
  MXI2X4 U551 ( .A(n210), .B(n218), .S0(net47452), .Y(n135) );
  CLKBUFX20 U552 ( .A(net47458), .Y(net47452) );
  NAND2BX4 U553 ( .AN(net47452), .B(n218), .Y(n143) );
  MXI2X4 U554 ( .A(A[45]), .B(A[46]), .S0(net47506), .Y(n271) );
  MXI2X4 U555 ( .A(A[46]), .B(A[47]), .S0(net47502), .Y(n272) );
  CLKINVX20 U556 ( .A(net53706), .Y(net62601) );
  MXI2X2 U557 ( .A(n167), .B(n159), .S0(net61734), .Y(n84) );
  MXI2X4 U558 ( .A(n502), .B(n134), .S0(net47434), .Y(n43) );
  BUFX8 U559 ( .A(net47458), .Y(net47444) );
  AND2X8 U560 ( .A(n572), .B(n573), .Y(n487) );
  MX2X4 U561 ( .A(n42), .B(n501), .S0(net47470), .Y(B[41]) );
  CLKAND2X8 U562 ( .A(n72), .B(net61916), .Y(B[71]) );
  MXI2X4 U563 ( .A(n511), .B(n100), .S0(net53514), .Y(n25) );
  NOR2X4 U564 ( .A(net61804), .B(net47426), .Y(n64) );
  NOR2X4 U565 ( .A(n149), .B(net47426), .Y(n74) );
  MXI2X4 U566 ( .A(n517), .B(n256), .S0(net62550), .Y(n181) );
  AND2X8 U567 ( .A(n564), .B(n565), .Y(n502) );
  MXI2X4 U568 ( .A(n299), .B(n494), .S0(net61369), .Y(n222) );
  BUFX6 U569 ( .A(n235), .Y(n488) );
  MXI2X4 U570 ( .A(n188), .B(n196), .S0(net62534), .Y(n113) );
  CLKINVX20 U571 ( .A(net61734), .Y(net62527) );
  MXI2X4 U572 ( .A(n469), .B(n242), .S0(net61369), .Y(n167) );
  BUFX20 U573 ( .A(net47440), .Y(net47434) );
  INVX3 U574 ( .A(net47450), .Y(net53439) );
  AND2X8 U575 ( .A(n113), .B(net47432), .Y(n507) );
  MXI2X4 U576 ( .A(n494), .B(n295), .S0(net61369), .Y(n220) );
  NAND2X4 U577 ( .A(n216), .B(net53613), .Y(n543) );
  MX2X6 U578 ( .A(n21), .B(n25), .S0(net47470), .Y(B[20]) );
  NAND2X4 U579 ( .A(n190), .B(net61011), .Y(n575) );
  NAND2X4 U580 ( .A(net47448), .B(n190), .Y(n549) );
  MXI2X4 U581 ( .A(A[54]), .B(A[53]), .S0(net53250), .Y(n279) );
  NAND2X4 U582 ( .A(net47448), .B(n192), .Y(n545) );
  MXI2X4 U583 ( .A(A[54]), .B(A[55]), .S0(net61542), .Y(n489) );
  MXI2X4 U584 ( .A(n241), .B(n487), .S0(net53690), .Y(n164) );
  MXI2X4 U585 ( .A(n127), .B(n111), .S0(net61378), .Y(n36) );
  MXI2X2 U586 ( .A(n154), .B(n162), .S0(net47444), .Y(n79) );
  MXI2X4 U587 ( .A(A[27]), .B(A[28]), .S0(net61542), .Y(n490) );
  MXI2X4 U588 ( .A(n163), .B(n155), .S0(net61807), .Y(n80) );
  MXI2X4 U589 ( .A(n123), .B(n477), .S0(net61223), .Y(n32) );
  AND2X8 U590 ( .A(n595), .B(n596), .Y(n500) );
  MXI2X4 U591 ( .A(n102), .B(n86), .S0(net61223), .Y(n11) );
  MXI2X4 U592 ( .A(n284), .B(n282), .S0(net61369), .Y(n207) );
  NAND2X2 U593 ( .A(n189), .B(net53413), .Y(n570) );
  CLKINVX12 U594 ( .A(net47488), .Y(net61369) );
  MXI2X4 U595 ( .A(n465), .B(n87), .S0(net61378), .Y(n12) );
  MXI2X4 U596 ( .A(n94), .B(n78), .S0(net61223), .Y(n3) );
  MXI2X2 U597 ( .A(n172), .B(n524), .S0(net47446), .Y(n491) );
  MXI2X4 U598 ( .A(n172), .B(n524), .S0(net47446), .Y(n97) );
  MXI2X4 U599 ( .A(n121), .B(n105), .S0(net61378), .Y(n30) );
  MXI2X4 U600 ( .A(n289), .B(n287), .S0(net53706), .Y(n212) );
  NAND2X4 U601 ( .A(n199), .B(net47450), .Y(n553) );
  NAND2X6 U602 ( .A(A[33]), .B(net61234), .Y(n528) );
  NAND2X6 U603 ( .A(n523), .B(net62601), .Y(n531) );
  NOR2X4 U604 ( .A(n142), .B(net47426), .Y(n67) );
  AND2X8 U605 ( .A(n274), .B(net47486), .Y(n516) );
  NAND2X4 U606 ( .A(A[71]), .B(net52853), .Y(n585) );
  MX2X6 U607 ( .A(n50), .B(n54), .S0(net47466), .Y(B[49]) );
  CLKMX2X6 U608 ( .A(n59), .B(n63), .S0(net47466), .Y(B[58]) );
  NAND2X6 U609 ( .A(n144), .B(net47428), .Y(n591) );
  MX2X6 U610 ( .A(n28), .B(n24), .S0(net61916), .Y(B[23]) );
  MXI2X2 U611 ( .A(n510), .B(n177), .S0(net47446), .Y(n94) );
  INVX2 U612 ( .A(A[7]), .Y(n508) );
  MXI2X6 U613 ( .A(n497), .B(n130), .S0(net47430), .Y(n39) );
  MX2X4 U614 ( .A(n36), .B(n32), .S0(net61916), .Y(B[31]) );
  MX2X4 U615 ( .A(n2), .B(n6), .S0(net47472), .Y(B[1]) );
  INVX4 U616 ( .A(net47452), .Y(net52649) );
  CLKMX2X6 U617 ( .A(n38), .B(n42), .S0(net47466), .Y(B[37]) );
  NAND2X2 U618 ( .A(n30), .B(net47466), .Y(n492) );
  CLKMX2X6 U619 ( .A(n501), .B(n50), .S0(net47466), .Y(B[45]) );
  NOR2X6 U620 ( .A(n147), .B(net47426), .Y(n72) );
  NAND2X6 U621 ( .A(A[32]), .B(net53477), .Y(n527) );
  MXI2X4 U622 ( .A(n175), .B(n167), .S0(net61807), .Y(n92) );
  AND2X8 U623 ( .A(n602), .B(n601), .Y(net61804) );
  NAND2X4 U624 ( .A(n207), .B(net51988), .Y(n599) );
  NAND2X2 U625 ( .A(n215), .B(net61807), .Y(n595) );
  INVX2 U626 ( .A(net47502), .Y(net53407) );
  AND2X8 U627 ( .A(n272), .B(net61462), .Y(n515) );
  MX2X4 U628 ( .A(n14), .B(n18), .S0(net47472), .Y(B[13]) );
  MXI2X6 U629 ( .A(n574), .B(n464), .S0(net47430), .Y(n47) );
  NAND2X4 U630 ( .A(net61745), .B(n43), .Y(n493) );
  CLKINVX1 U631 ( .A(net61916), .Y(net61745) );
  CLKMX2X6 U632 ( .A(n12), .B(n16), .S0(net47472), .Y(B[11]) );
  CLKMX2X6 U633 ( .A(n49), .B(n475), .S0(net47466), .Y(B[48]) );
  MX2X6 U634 ( .A(n505), .B(n512), .S0(net47470), .Y(B[21]) );
  CLKMX2X6 U635 ( .A(n473), .B(n24), .S0(net47470), .Y(B[19]) );
  MXI2X4 U636 ( .A(n234), .B(n236), .S0(net47484), .Y(n159) );
  MX2X4 U637 ( .A(n70), .B(n74), .S0(net47472), .Y(B[69]) );
  NAND2X2 U638 ( .A(net47484), .B(n290), .Y(n598) );
  NAND2X4 U639 ( .A(net47448), .B(n193), .Y(n578) );
  AND2X8 U640 ( .A(n585), .B(n586), .Y(n494) );
  MXI2X4 U641 ( .A(n295), .B(n293), .S0(net61462), .Y(n218) );
  INVX1 U642 ( .A(net47446), .Y(net53470) );
  NAND2X4 U643 ( .A(A[19]), .B(net47508), .Y(n563) );
  MXI2X4 U644 ( .A(A[64]), .B(A[65]), .S0(net61235), .Y(n495) );
  MX2X6 U645 ( .A(n479), .B(n49), .S0(net47472), .Y(B[44]) );
  CLKMX2X4 U646 ( .A(n508), .B(n509), .S0(net47504), .Y(n233) );
  NAND2X2 U647 ( .A(A[14]), .B(net47504), .Y(n573) );
  MXI2X4 U648 ( .A(A[27]), .B(A[28]), .S0(net61542), .Y(n253) );
  MX2X6 U649 ( .A(n48), .B(n483), .S0(net47466), .Y(B[47]) );
  NOR2X4 U650 ( .A(n299), .B(net47484), .Y(n224) );
  NAND2X4 U651 ( .A(n199), .B(net53439), .Y(n566) );
  MXI2X4 U652 ( .A(A[21]), .B(A[22]), .S0(net47502), .Y(n247) );
  CLKAND2X12 U653 ( .A(n539), .B(n540), .Y(n496) );
  MX2X4 U654 ( .A(n4), .B(n8), .S0(net47472), .Y(B[3]) );
  NAND2X6 U655 ( .A(n136), .B(net47430), .Y(n604) );
  MXI2X4 U656 ( .A(A[73]), .B(A[74]), .S0(net47510), .Y(n299) );
  BUFX20 U657 ( .A(net47518), .Y(net61542) );
  BUFX20 U658 ( .A(net47518), .Y(net61543) );
  CLKINVX12 U659 ( .A(n589), .Y(n128) );
  MX2X6 U660 ( .A(n35), .B(n39), .S0(net47470), .Y(B[34]) );
  NOR2BX4 U661 ( .AN(n75), .B(net47466), .Y(B[74]) );
  NAND2X2 U662 ( .A(n222), .B(net47452), .Y(n602) );
  MX2X4 U663 ( .A(n475), .B(n57), .S0(net47466), .Y(B[52]) );
  CLKMX2X6 U664 ( .A(n43), .B(n47), .S0(net47466), .Y(B[42]) );
  INVX12 U665 ( .A(n594), .Y(n211) );
  NAND2X8 U666 ( .A(n592), .B(n593), .Y(n594) );
  MXI2X4 U667 ( .A(n240), .B(n242), .S0(net62601), .Y(n165) );
  NAND2X4 U668 ( .A(net53212), .B(A[57]), .Y(n579) );
  MXI2X4 U669 ( .A(n519), .B(n191), .S0(net47448), .Y(n108) );
  AND2X8 U670 ( .A(n571), .B(n570), .Y(n497) );
  NAND2X8 U671 ( .A(n286), .B(net52224), .Y(n592) );
  MX2X6 U672 ( .A(n27), .B(n31), .S0(net47470), .Y(B[26]) );
  MXI2X4 U673 ( .A(A[62]), .B(A[63]), .S0(net61234), .Y(n499) );
  NAND2X2 U674 ( .A(n143), .B(net47428), .Y(n547) );
  NOR2X4 U675 ( .A(n137), .B(net47428), .Y(n62) );
  MX2X4 U676 ( .A(n6), .B(n10), .S0(net47472), .Y(B[5]) );
  NAND2X8 U677 ( .A(n211), .B(net47452), .Y(n588) );
  NAND2X6 U678 ( .A(net47484), .B(n296), .Y(n540) );
  NAND2X4 U679 ( .A(n184), .B(net53601), .Y(n544) );
  MXI2X2 U680 ( .A(n76), .B(n92), .S0(net47434), .Y(n1) );
  MX2X6 U681 ( .A(n23), .B(n27), .S0(net47470), .Y(B[22]) );
  CLKMX2X4 U682 ( .A(n67), .B(n71), .S0(net47466), .Y(B[66]) );
  MXI2X4 U683 ( .A(n272), .B(n270), .S0(net61462), .Y(n195) );
  CLKAND2X12 U684 ( .A(n556), .B(n557), .Y(n501) );
  NAND2X6 U685 ( .A(n198), .B(net47450), .Y(n576) );
  MXI2X4 U686 ( .A(n247), .B(n245), .S0(net61462), .Y(n170) );
  MXI2X4 U687 ( .A(n249), .B(n251), .S0(net62601), .Y(n174) );
  MXI2X4 U688 ( .A(A[59]), .B(A[60]), .S0(net61235), .Y(n285) );
  MX2X6 U689 ( .A(n29), .B(n25), .S0(net61916), .Y(B[24]) );
  NAND2BX4 U690 ( .AN(net47444), .B(n224), .Y(n149) );
  MXI2X4 U691 ( .A(n158), .B(n166), .S0(net62527), .Y(n83) );
  MXI2X1 U692 ( .A(n226), .B(n228), .S0(net47484), .Y(n151) );
  MXI2X2 U693 ( .A(A[0]), .B(A[1]), .S0(net47504), .Y(n226) );
  CLKINVX2 U694 ( .A(net47518), .Y(net52853) );
  MXI2X4 U695 ( .A(n240), .B(n238), .S0(net61369), .Y(n163) );
  NAND2X8 U696 ( .A(n587), .B(n588), .Y(n589) );
  NAND2X6 U697 ( .A(n137), .B(net47430), .Y(n557) );
  AND2X8 U698 ( .A(n551), .B(n550), .Y(n510) );
  NAND2X4 U699 ( .A(n469), .B(net61462), .Y(n550) );
  NAND2X2 U700 ( .A(n246), .B(net62601), .Y(n551) );
  CLKMX2X6 U701 ( .A(n16), .B(n473), .S0(net47472), .Y(B[15]) );
  NAND2X2 U702 ( .A(n174), .B(net53470), .Y(n560) );
  AND2X8 U703 ( .A(n560), .B(n561), .Y(net61010) );
  NOR2X8 U704 ( .A(n503), .B(n504), .Y(n526) );
  AND2X8 U705 ( .A(n108), .B(net47432), .Y(n503) );
  AND2X8 U706 ( .A(n92), .B(net61223), .Y(n504) );
  MXI2X4 U707 ( .A(n88), .B(n104), .S0(net47434), .Y(n13) );
  MXI2X2 U708 ( .A(n157), .B(n165), .S0(net47444), .Y(n82) );
  MXI2X2 U709 ( .A(n232), .B(n234), .S0(net47484), .Y(n157) );
  MXI2X4 U710 ( .A(A[6]), .B(A[7]), .S0(net47504), .Y(n232) );
  AND2X8 U711 ( .A(n568), .B(n569), .Y(net61334) );
  NOR2X6 U712 ( .A(n506), .B(n507), .Y(n505) );
  INVX1 U713 ( .A(net47444), .Y(net53613) );
  MXI2X1 U714 ( .A(n227), .B(n229), .S0(net47484), .Y(n152) );
  MXI2X2 U715 ( .A(A[1]), .B(A[2]), .S0(net47504), .Y(n227) );
  MXI2X4 U716 ( .A(n120), .B(n104), .S0(net61223), .Y(n29) );
  AND2X8 U717 ( .A(n552), .B(n553), .Y(n511) );
  NAND2BX4 U718 ( .AN(net52224), .B(n257), .Y(n533) );
  INVX20 U719 ( .A(net47484), .Y(net52224) );
  INVX1 U720 ( .A(net47448), .Y(net53601) );
  MXI2X4 U721 ( .A(n519), .B(n175), .S0(net61011), .Y(n100) );
  CLKBUFX20 U722 ( .A(net47458), .Y(net47446) );
  MXI2X4 U723 ( .A(n163), .B(n171), .S0(net62527), .Y(n88) );
  MXI2X4 U724 ( .A(n284), .B(n286), .S0(net47486), .Y(n209) );
  NAND2X4 U725 ( .A(A[72]), .B(net47512), .Y(n586) );
  AND2X8 U726 ( .A(n101), .B(net61378), .Y(n514) );
  MXI2X4 U727 ( .A(n510), .B(n177), .S0(net47446), .Y(net61288) );
  BUFX20 U728 ( .A(net47482), .Y(net47470) );
  INVX1 U729 ( .A(net47448), .Y(net53576) );
  NAND2X4 U730 ( .A(net47484), .B(n499), .Y(n593) );
  MXI2X4 U731 ( .A(n243), .B(n245), .S0(net62601), .Y(n168) );
  MXI2X2 U732 ( .A(n152), .B(n160), .S0(net62527), .Y(n77) );
  MXI2X4 U733 ( .A(n261), .B(n259), .S0(net52224), .Y(n184) );
  AND2X8 U734 ( .A(n554), .B(n555), .Y(net61266) );
  NOR2X8 U735 ( .A(n515), .B(n516), .Y(n518) );
  NAND2X4 U736 ( .A(n173), .B(net53439), .Y(n541) );
  MXI2X4 U737 ( .A(n96), .B(n80), .S0(net61378), .Y(n5) );
  NAND2X4 U738 ( .A(n185), .B(net53275), .Y(n577) );
  INVX1 U739 ( .A(net47448), .Y(net53275) );
  BUFX20 U740 ( .A(net47518), .Y(net61235) );
  BUFX20 U741 ( .A(net47518), .Y(net47510) );
  NAND2X2 U742 ( .A(n288), .B(net52224), .Y(n597) );
  INVX1 U743 ( .A(net47448), .Y(net53413) );
  AND2X8 U744 ( .A(n527), .B(n528), .Y(n517) );
  INVX3 U745 ( .A(net47452), .Y(net51313) );
  INVX3 U746 ( .A(net47452), .Y(net51988) );
  MX2X4 U747 ( .A(n19), .B(n23), .S0(net47470), .Y(B[18]) );
  CLKMX2X6 U748 ( .A(n47), .B(n51), .S0(net47466), .Y(B[46]) );
  MX2X4 U749 ( .A(n9), .B(n13), .S0(net47472), .Y(B[8]) );
  CLKMX2X6 U750 ( .A(n526), .B(n13), .S0(net61916), .Y(B[12]) );
  MXI2X4 U751 ( .A(A[5]), .B(A[4]), .S0(net61494), .Y(n230) );
  NAND2X6 U752 ( .A(n170), .B(net61807), .Y(n534) );
  CLKMX2X6 U753 ( .A(n3), .B(n7), .S0(net47472), .Y(B[2]) );
  MXI2X4 U754 ( .A(n280), .B(n282), .S0(net47486), .Y(n205) );
  MXI2X4 U755 ( .A(A[54]), .B(A[55]), .S0(net61542), .Y(n280) );
  MXI2X4 U756 ( .A(A[2]), .B(A[3]), .S0(net47504), .Y(n228) );
  MX2X4 U757 ( .A(n5), .B(n9), .S0(net47472), .Y(B[4]) );
  NAND2X4 U758 ( .A(A[48]), .B(net47506), .Y(n569) );
  MXI2X4 U759 ( .A(A[29]), .B(A[30]), .S0(net47506), .Y(n255) );
  MXI2X4 U760 ( .A(A[3]), .B(A[4]), .S0(net47504), .Y(n229) );
  MXI2X2 U761 ( .A(n166), .B(n174), .S0(net47446), .Y(n91) );
  NAND2X4 U762 ( .A(n203), .B(net52649), .Y(n587) );
  MXI2X4 U763 ( .A(n247), .B(n249), .S0(net62601), .Y(n172) );
  MXI2X4 U764 ( .A(n176), .B(n184), .S0(net47446), .Y(n101) );
  MXI2X4 U765 ( .A(A[8]), .B(A[9]), .S0(net47504), .Y(n234) );
  MXI2X2 U766 ( .A(n151), .B(n159), .S0(net62527), .Y(n76) );
  NAND2X4 U767 ( .A(n207), .B(net47450), .Y(n567) );
  MXI2X4 U768 ( .A(n209), .B(n201), .S0(net61011), .Y(n126) );
  NAND2X4 U769 ( .A(net53212), .B(A[49]), .Y(n554) );
  AND2X8 U770 ( .A(n529), .B(net53714), .Y(n525) );
  MX2X6 U771 ( .A(n37), .B(n41), .S0(net47466), .Y(B[36]) );
  MXI2X1 U772 ( .A(n228), .B(n230), .S0(net47484), .Y(n153) );
  MXI2X4 U773 ( .A(n211), .B(n496), .S0(net47452), .Y(n136) );
  MXI2X4 U774 ( .A(n510), .B(n161), .S0(net61734), .Y(n86) );
  MXI2X4 U775 ( .A(A[10]), .B(A[11]), .S0(net47504), .Y(n236) );
  MXI2X4 U776 ( .A(A[11]), .B(A[12]), .S0(net47504), .Y(n237) );
  NAND2X2 U777 ( .A(A[6]), .B(net47502), .Y(n559) );
  MXI2X4 U778 ( .A(A[29]), .B(A[30]), .S0(net47508), .Y(n523) );
  CLKAND2X12 U779 ( .A(n533), .B(n532), .Y(n524) );
  MXI2X2 U780 ( .A(n165), .B(n173), .S0(net47446), .Y(n90) );
  MXI2X2 U781 ( .A(n233), .B(n488), .S0(net47484), .Y(n158) );
  MXI2X4 U782 ( .A(A[48]), .B(A[49]), .S0(net47512), .Y(n274) );
  MX2X4 U783 ( .A(n33), .B(n37), .S0(net47470), .Y(B[32]) );
  MXI2X4 U784 ( .A(n274), .B(n276), .S0(net47486), .Y(n199) );
  NAND2X6 U785 ( .A(n128), .B(net60774), .Y(n590) );
  CLKMX2X6 U786 ( .A(n7), .B(n11), .S0(net47472), .Y(B[6]) );
  MXI2X4 U787 ( .A(n488), .B(n237), .S0(net62601), .Y(n160) );
  CLKINVX4 U788 ( .A(net47484), .Y(net53660) );
  MXI2X4 U789 ( .A(A[70]), .B(A[71]), .S0(net47512), .Y(n296) );
  MXI2X6 U790 ( .A(n106), .B(n574), .S0(net47432), .Y(n31) );
  MXI2X4 U791 ( .A(A[62]), .B(A[63]), .S0(net61234), .Y(n288) );
  MXI2X4 U792 ( .A(A[55]), .B(A[56]), .S0(net47510), .Y(n281) );
  MXI2X4 U793 ( .A(A[64]), .B(A[65]), .S0(net61235), .Y(n290) );
  MXI2X4 U794 ( .A(n160), .B(n168), .S0(net62527), .Y(n85) );
  MXI2X4 U795 ( .A(A[41]), .B(A[42]), .S0(net47506), .Y(n267) );
  NAND2X4 U796 ( .A(net47448), .B(n518), .Y(n571) );
  MXI2X4 U797 ( .A(n208), .B(n200), .S0(net61011), .Y(n125) );
  INVX8 U798 ( .A(n538), .Y(n214) );
  NOR2BX4 U799 ( .AN(n73), .B(net47472), .Y(B[72]) );
  MXI2X4 U800 ( .A(n133), .B(n149), .S0(net47428), .Y(n58) );
  MX2X4 U801 ( .A(n57), .B(n61), .S0(net47466), .Y(B[56]) );
  MXI2X4 U802 ( .A(A[26]), .B(A[27]), .S0(net47508), .Y(n252) );
  NAND2X4 U803 ( .A(A[13]), .B(net53407), .Y(n572) );
  NAND2X6 U804 ( .A(n121), .B(net53514), .Y(n556) );
  MXI2X4 U805 ( .A(n156), .B(n164), .S0(net62527), .Y(n81) );
  MXI2X4 U806 ( .A(n164), .B(n172), .S0(net47446), .Y(n89) );
  MX2X4 U807 ( .A(n34), .B(n38), .S0(net47466), .Y(B[33]) );
  CLKMX2X6 U808 ( .A(n29), .B(n33), .S0(net47470), .Y(B[28]) );
  MXI2X2 U809 ( .A(n153), .B(n161), .S0(net62527), .Y(n78) );
  CLKMX2X6 U810 ( .A(n526), .B(n21), .S0(net47470), .Y(B[16]) );
  MXI2X4 U811 ( .A(n209), .B(n217), .S0(net47452), .Y(n134) );
  MXI2X4 U812 ( .A(n292), .B(n294), .S0(net47484), .Y(n217) );
  MXI2X4 U813 ( .A(n134), .B(n150), .S0(net47428), .Y(n59) );
  NOR2BX4 U814 ( .AN(n74), .B(net47466), .Y(B[73]) );
  NAND2X4 U815 ( .A(net47432), .B(n111), .Y(n584) );
  MXI2X4 U816 ( .A(n195), .B(n203), .S0(net47450), .Y(n120) );
  MX2X4 U817 ( .A(n18), .B(n505), .S0(net47470), .Y(B[17]) );
  NAND2BX4 U818 ( .AN(net47452), .B(n496), .Y(n144) );
  MXI2X4 U819 ( .A(n130), .B(n146), .S0(net47428), .Y(n55) );
  MX2X4 U820 ( .A(n51), .B(n55), .S0(net47466), .Y(B[50]) );
  MX2X4 U821 ( .A(n69), .B(n73), .S0(net47472), .Y(B[68]) );
  NAND2X2 U822 ( .A(n224), .B(net47452), .Y(net53615) );
  NOR2X4 U823 ( .A(n145), .B(net47426), .Y(n70) );
  BUFX12 U824 ( .A(net47436), .Y(net47426) );
  MXI2X4 U825 ( .A(n260), .B(n262), .S0(net47488), .Y(n185) );
  MXI2X4 U826 ( .A(n485), .B(n148), .S0(net47428), .Y(n57) );
  MXI2X4 U827 ( .A(A[35]), .B(A[36]), .S0(net47502), .Y(n261) );
  MXI2X4 U828 ( .A(n102), .B(n502), .S0(net47432), .Y(n27) );
  MXI2X4 U829 ( .A(A[65]), .B(A[66]), .S0(net47510), .Y(n291) );
  NOR2X4 U830 ( .A(n522), .B(net47428), .Y(n61) );
  MXI2X4 U831 ( .A(n171), .B(n179), .S0(net47446), .Y(n96) );
  MXI2X4 U832 ( .A(n246), .B(n248), .S0(net62601), .Y(n171) );
  MXI2X4 U833 ( .A(n129), .B(n145), .S0(net47428), .Y(n54) );
  NAND2X4 U834 ( .A(net53477), .B(A[18]), .Y(n562) );
  NAND2BX4 U835 ( .AN(net47452), .B(n222), .Y(n147) );
  MXI2X4 U836 ( .A(n84), .B(n100), .S0(net47434), .Y(n9) );
  MXI2X4 U837 ( .A(n482), .B(n500), .S0(net47428), .Y(n49) );
  MXI2X4 U838 ( .A(n187), .B(n195), .S0(net47448), .Y(n112) );
  NOR2X4 U839 ( .A(n148), .B(net47426), .Y(n73) );
  MXI2X4 U840 ( .A(n484), .B(n285), .S0(net47486), .Y(n208) );
  NAND2X4 U841 ( .A(A[50]), .B(net47506), .Y(n555) );
  MXI2X4 U842 ( .A(n81), .B(n491), .S0(net47434), .Y(n6) );
  MXI2X4 U843 ( .A(n471), .B(n126), .S0(net47430), .Y(n35) );
  MXI2X4 U844 ( .A(n208), .B(n216), .S0(net47452), .Y(n133) );
  MXI2X4 U845 ( .A(n248), .B(n250), .S0(net62601), .Y(n173) );
  MXI2X4 U846 ( .A(n257), .B(n259), .S0(net47488), .Y(n182) );
  MXI2X4 U847 ( .A(n125), .B(n480), .S0(net47428), .Y(n50) );
  MXI2X4 U848 ( .A(n291), .B(n293), .S0(net47484), .Y(n216) );
  MXI2X4 U849 ( .A(n265), .B(n267), .S0(net47488), .Y(n190) );
  MXI2X4 U850 ( .A(n117), .B(n133), .S0(net47430), .Y(n42) );
  MXI2X4 U851 ( .A(n264), .B(n266), .S0(net47488), .Y(n189) );
  MXI2X4 U852 ( .A(n217), .B(n225), .S0(net47452), .Y(n142) );
  MXI2X4 U853 ( .A(n93), .B(n481), .S0(net47432), .Y(n18) );
  MXI2X4 U854 ( .A(n168), .B(n176), .S0(net47446), .Y(n93) );
  MXI2X4 U855 ( .A(n518), .B(n205), .S0(net47450), .Y(n122) );
  MXI2X4 U856 ( .A(n177), .B(n185), .S0(net47448), .Y(n102) );
  MXI2X4 U857 ( .A(n252), .B(n254), .S0(net62601), .Y(n177) );
  MXI2X4 U858 ( .A(A[58]), .B(A[59]), .S0(net61234), .Y(n284) );
  MXI2X4 U859 ( .A(A[40]), .B(A[41]), .S0(net61543), .Y(n266) );
  MXI2X4 U860 ( .A(n263), .B(n265), .S0(net47488), .Y(n188) );
  MXI2X4 U861 ( .A(A[39]), .B(A[40]), .S0(net61543), .Y(n265) );
  MXI2X4 U862 ( .A(A[37]), .B(A[38]), .S0(net47508), .Y(n263) );
  NOR2X4 U863 ( .A(n144), .B(net47426), .Y(n69) );
  MXI2X4 U864 ( .A(n266), .B(n525), .S0(net47488), .Y(n191) );
  MXI2X4 U865 ( .A(n276), .B(n498), .S0(net47486), .Y(n201) );
  MX2X4 U866 ( .A(n60), .B(n64), .S0(net47466), .Y(B[59]) );
  NOR2X6 U867 ( .A(n300), .B(net47484), .Y(n225) );
  MXI2X4 U868 ( .A(A[68]), .B(A[69]), .S0(net47510), .Y(n294) );
  MXI2X4 U869 ( .A(n285), .B(n287), .S0(net47486), .Y(n210) );
  MXI2X4 U870 ( .A(n108), .B(n482), .S0(net47430), .Y(n33) );
  MXI2X4 U871 ( .A(n298), .B(n300), .S0(net47484), .Y(n223) );
  NAND2BX4 U872 ( .AN(net47452), .B(n223), .Y(n148) );
  MXI2X4 U873 ( .A(A[23]), .B(A[24]), .S0(net47502), .Y(n249) );
  MXI2X4 U874 ( .A(n85), .B(n101), .S0(net47434), .Y(n10) );
  MXI2X4 U875 ( .A(n241), .B(n243), .S0(net62601), .Y(n166) );
  MXI2X4 U876 ( .A(A[15]), .B(A[16]), .S0(net47504), .Y(n241) );
  MXI2X4 U877 ( .A(n495), .B(n292), .S0(net47484), .Y(n215) );
  MXI2X4 U878 ( .A(n254), .B(n256), .S0(net47488), .Y(n179) );
  MXI2X4 U879 ( .A(A[28]), .B(A[29]), .S0(net61543), .Y(n254) );
  MXI2X4 U880 ( .A(n192), .B(n200), .S0(net47450), .Y(n117) );
  MXI2X4 U881 ( .A(n181), .B(n189), .S0(net47448), .Y(n106) );
  MXI2X4 U882 ( .A(A[30]), .B(A[31]), .S0(net61542), .Y(n256) );
  MXI2X4 U883 ( .A(A[56]), .B(A[57]), .S0(net47510), .Y(n282) );
  MXI2X4 U884 ( .A(A[19]), .B(A[20]), .S0(net47504), .Y(n245) );
  MXI2X4 U885 ( .A(A[12]), .B(A[13]), .S0(net47504), .Y(n238) );
  MXI2X4 U886 ( .A(n89), .B(n105), .S0(net47434), .Y(n14) );
  MXI2X4 U887 ( .A(A[25]), .B(A[26]), .S0(net47502), .Y(n251) );
  MXI2X4 U888 ( .A(n212), .B(n220), .S0(net47452), .Y(n137) );
  MXI2X4 U889 ( .A(A[61]), .B(A[62]), .S0(net61234), .Y(n287) );
  MXI2X4 U890 ( .A(n90), .B(n106), .S0(net47434), .Y(n15) );
  MXI2X4 U891 ( .A(A[14]), .B(A[15]), .S0(net47504), .Y(n240) );
  MXI2X4 U892 ( .A(A[16]), .B(A[17]), .S0(net47504), .Y(n242) );
  MXI2X4 U893 ( .A(n204), .B(n212), .S0(net47452), .Y(n129) );
  MXI2X4 U894 ( .A(n113), .B(n129), .S0(net47430), .Y(n38) );
  MXI2X4 U895 ( .A(n278), .B(n489), .S0(net47486), .Y(n203) );
  MXI2X4 U896 ( .A(A[52]), .B(A[53]), .S0(net61542), .Y(n278) );
  NAND2BX4 U897 ( .AN(net62534), .B(n220), .Y(n145) );
  MXI2X4 U898 ( .A(A[38]), .B(A[39]), .S0(net61543), .Y(n264) );
  MXI2X4 U899 ( .A(A[34]), .B(A[35]), .S0(net61234), .Y(n260) );
  MXI2X4 U900 ( .A(A[69]), .B(A[70]), .S0(net47508), .Y(n295) );
  MXI2X4 U901 ( .A(A[67]), .B(A[68]), .S0(net61235), .Y(n293) );
  MXI2X4 U902 ( .A(n251), .B(n490), .S0(net62601), .Y(n176) );
  MXI2X4 U903 ( .A(A[33]), .B(A[34]), .S0(net61543), .Y(n259) );
  MXI2X4 U904 ( .A(A[22]), .B(A[23]), .S0(net47502), .Y(n248) );
  MXI2X4 U905 ( .A(A[24]), .B(A[25]), .S0(net47504), .Y(n250) );
  MXI2X4 U906 ( .A(A[50]), .B(A[51]), .S0(net61543), .Y(n276) );
  MXI2X4 U907 ( .A(n179), .B(n187), .S0(net47448), .Y(n104) );
  MXI2X2 U908 ( .A(n77), .B(n93), .S0(net47434), .Y(n2) );
  MXI2X4 U909 ( .A(n198), .B(n206), .S0(net47450), .Y(n123) );
  MXI2X4 U910 ( .A(n281), .B(n484), .S0(net47486), .Y(n206) );
  MXI2X4 U911 ( .A(A[51]), .B(A[52]), .S0(net47506), .Y(n277) );
  MXI2X4 U912 ( .A(A[36]), .B(A[37]), .S0(net47508), .Y(n262) );
  MXI2X4 U913 ( .A(n481), .B(n125), .S0(net47430), .Y(n34) );
  MXI2X4 U914 ( .A(A[31]), .B(A[32]), .S0(net47506), .Y(n257) );
  NAND2BX4 U915 ( .AN(net62527), .B(n221), .Y(n146) );
  MXI2X4 U916 ( .A(n296), .B(n298), .S0(net47484), .Y(n221) );
  MXI2X4 U917 ( .A(A[72]), .B(A[73]), .S0(net61543), .Y(n298) );
  MXI2X4 U918 ( .A(n262), .B(n264), .S0(net47488), .Y(n187) );
  MXI2X4 U919 ( .A(n261), .B(n263), .S0(net47488), .Y(n186) );
  MXI2X4 U920 ( .A(n250), .B(n252), .S0(net62601), .Y(n175) );
  MXI2X4 U921 ( .A(A[66]), .B(A[67]), .S0(net61235), .Y(n292) );
  MXI2X4 U922 ( .A(n525), .B(n270), .S0(net47488), .Y(n193) );
  MXI2X4 U923 ( .A(n524), .B(n188), .S0(net47448), .Y(n105) );
  MXI2X4 U924 ( .A(n472), .B(n497), .S0(net47432), .Y(n23) );
  NOR2X4 U925 ( .A(n480), .B(net47426), .Y(n66) );
  MXI2X4 U926 ( .A(A[20]), .B(A[21]), .S0(net61542), .Y(n246) );
  MXI2X4 U927 ( .A(net61334), .B(net61266), .S0(net47486), .Y(n198) );
  NAND2X2 U928 ( .A(A[5]), .B(net53432), .Y(n558) );
  MXI2X4 U929 ( .A(n83), .B(net61010), .S0(net47434), .Y(n8) );
  NAND2BX4 U930 ( .AN(net61235), .B(A[74]), .Y(n300) );
  MXI2X4 U931 ( .A(n126), .B(n142), .S0(net47428), .Y(n51) );
  MXI2X4 U932 ( .A(n96), .B(n112), .S0(net47432), .Y(n21) );
  MXI2X4 U933 ( .A(n112), .B(n128), .S0(net47430), .Y(n37) );
  MXI2X2 U934 ( .A(n236), .B(n238), .S0(net47484), .Y(n161) );
  NAND2BX4 U935 ( .AN(net47446), .B(n225), .Y(n150) );
  MXI2X2 U936 ( .A(n230), .B(n232), .S0(net47484), .Y(n155) );
  MXI2X4 U937 ( .A(n91), .B(n477), .S0(net47434), .Y(n16) );
  MXI2X2 U938 ( .A(A[9]), .B(A[10]), .S0(net47512), .Y(n235) );
  MXI2X4 U939 ( .A(A[17]), .B(A[18]), .S0(net47504), .Y(n243) );
  BUFX20 U940 ( .A(net47458), .Y(net47448) );
  BUFX20 U941 ( .A(net47436), .Y(net47428) );
endmodule


module norm_stage_DW_leftsh_1 ( A, SH, B );
  input [74:0] A;
  input [6:0] SH;
  output [74:0] B;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n61, n62, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n100, n101, n102, n103, n104, n105,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n163, n166, n168, n170,
         n171, n172, n173, n174, n175, n176, n179, n180, n181, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n226, n227, n228, n229, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n253, n254,
         n255, n256, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n301, n302, n303, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, net47056, net47062, net47080, net47074, net47072,
         net47070, net47066, net47106, net47104, net47100, net47098, net47096,
         net47092, net47090, net47116, net47114, net47134, net47132, net47130,
         net47128, net47140, net47154, net47160, net47182, net47180, net47194,
         net51706, net52441, net52657, net53237, net53282, net53419, net53463,
         net53582, net53607, net53647, net53678, n75, n450, n375, n300, n225,
         n150, n177, n327, n252, net47178, net47172, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668;

  CLKMX2X4 U528 ( .A(n617), .B(n630), .S0(net47180), .Y(B[63]) );
  MXI2X4 U529 ( .A(n392), .B(n390), .S0(net47160), .Y(n317) );
  MXI2X2 U530 ( .A(n313), .B(n309), .S0(net47140), .Y(n238) );
  MXI2X4 U531 ( .A(n191), .B(n175), .S0(net47098), .Y(n116) );
  MXI2X4 U532 ( .A(n266), .B(n258), .S0(net47130), .Y(n191) );
  AND2X4 U533 ( .A(n657), .B(n658), .Y(n621) );
  NAND2X2 U534 ( .A(n242), .B(net53282), .Y(n657) );
  MXI2X2 U535 ( .A(n216), .B(n200), .S0(net47090), .Y(n141) );
  INVX3 U536 ( .A(net47140), .Y(net53237) );
  NAND2X2 U537 ( .A(net52441), .B(n239), .Y(n665) );
  NAND2BX2 U538 ( .AN(net47098), .B(n626), .Y(n86) );
  NAND2X2 U539 ( .A(n245), .B(net47116), .Y(n650) );
  NAND2X2 U540 ( .A(n253), .B(net53282), .Y(n649) );
  INVX2 U541 ( .A(net47074), .Y(net53463) );
  MXI2X2 U542 ( .A(n269), .B(n261), .S0(net47130), .Y(n194) );
  MXI2X2 U543 ( .A(n189), .B(n173), .S0(net47098), .Y(n114) );
  NAND2X2 U544 ( .A(n124), .B(net52657), .Y(n659) );
  NAND2X2 U545 ( .A(net51706), .B(n193), .Y(n639) );
  MXI2X2 U546 ( .A(n224), .B(n208), .S0(net47090), .Y(n149) );
  MX2X4 U547 ( .A(n65), .B(n617), .S0(net47180), .Y(B[64]) );
  MX2X2 U548 ( .A(n67), .B(n66), .S0(net47180), .Y(B[66]) );
  MXI2X2 U549 ( .A(n137), .B(n105), .S0(net47074), .Y(n62) );
  MXI2X2 U550 ( .A(n138), .B(n614), .S0(net47074), .Y(n630) );
  MXI2X2 U551 ( .A(n136), .B(n104), .S0(net47074), .Y(n61) );
  MXI2X2 U552 ( .A(n130), .B(n98), .S0(net47074), .Y(n55) );
  INVXL U553 ( .A(net47114), .Y(net52441) );
  CLKMX2X2 U554 ( .A(n48), .B(n47), .S0(net47194), .Y(B[47]) );
  MXI2X2 U555 ( .A(n135), .B(n103), .S0(net47074), .Y(n619) );
  CLKMX2X2 U556 ( .A(n46), .B(n45), .S0(net47194), .Y(B[45]) );
  MXI2X2 U557 ( .A(n142), .B(n110), .S0(net47074), .Y(n67) );
  AOI22X4 U558 ( .A0(n235), .A1(net53419), .B0(n227), .B1(net47128), .Y(n625)
         );
  CLKMX2X2 U559 ( .A(n56), .B(n55), .S0(net47194), .Y(B[55]) );
  AOI22X4 U560 ( .A0(n236), .A1(net53419), .B0(n228), .B1(net47128), .Y(n626)
         );
  MXI2X1 U561 ( .A(n295), .B(n287), .S0(net47134), .Y(n220) );
  MXI2X1 U562 ( .A(n289), .B(n281), .S0(net47134), .Y(n214) );
  NAND2X2 U563 ( .A(net51706), .B(n174), .Y(n667) );
  CLKMX2X2 U564 ( .A(n58), .B(n57), .S0(net47194), .Y(B[57]) );
  MXI2X4 U565 ( .A(n244), .B(n236), .S0(net47128), .Y(n620) );
  MXI2X1 U566 ( .A(n288), .B(n280), .S0(net47134), .Y(n213) );
  MXI2X2 U567 ( .A(n134), .B(n102), .S0(net47074), .Y(n59) );
  CLKMX2X2 U568 ( .A(n54), .B(n53), .S0(net47194), .Y(B[53]) );
  MXI2X4 U569 ( .A(n237), .B(n229), .S0(net47128), .Y(n615) );
  MXI2X1 U570 ( .A(n297), .B(n289), .S0(net47134), .Y(n222) );
  INVX6 U571 ( .A(net47096), .Y(net51706) );
  MXI2X1 U572 ( .A(n300), .B(n292), .S0(net47134), .Y(n225) );
  CLKMX2X2 U573 ( .A(n619), .B(n59), .S0(net47194), .Y(B[59]) );
  BUFX12 U574 ( .A(net47128), .Y(net47114) );
  INVX8 U575 ( .A(net47130), .Y(net53419) );
  NAND2BX2 U576 ( .AN(net47062), .B(A[16]), .Y(n392) );
  NAND2BX2 U577 ( .AN(net47062), .B(A[15]), .Y(n391) );
  MX2X4 U578 ( .A(n636), .B(n637), .S0(n634), .Y(n320) );
  NAND2X2 U579 ( .A(n139), .B(net53463), .Y(n653) );
  MXI2X1 U580 ( .A(n294), .B(n286), .S0(net47132), .Y(n219) );
  MXI2X1 U581 ( .A(n369), .B(n365), .S0(n633), .Y(n294) );
  MXI2X2 U582 ( .A(n391), .B(n389), .S0(n635), .Y(n316) );
  NAND2X4 U583 ( .A(n622), .B(net53419), .Y(n655) );
  CLKMX2X2 U584 ( .A(n33), .B(n32), .S0(net47182), .Y(B[32]) );
  MX2X2 U585 ( .A(n8), .B(n7), .S0(net47180), .Y(B[7]) );
  MXI2X2 U586 ( .A(n261), .B(n253), .S0(net47130), .Y(n186) );
  MXI2X2 U587 ( .A(n278), .B(n270), .S0(net47130), .Y(n203) );
  MXI2X2 U588 ( .A(n443), .B(n441), .S0(net47160), .Y(n368) );
  AND2X4 U589 ( .A(n659), .B(n660), .Y(n638) );
  MXI2X2 U590 ( .A(n199), .B(n183), .S0(net47098), .Y(n124) );
  MXI2X2 U591 ( .A(n210), .B(n194), .S0(net47092), .Y(n135) );
  MXI2X2 U592 ( .A(n284), .B(n276), .S0(net47130), .Y(n209) );
  MX2X2 U593 ( .A(n69), .B(n68), .S0(net47180), .Y(B[68]) );
  BUFX20 U594 ( .A(net47194), .Y(net47182) );
  CLKBUFX2 U595 ( .A(SH[4]), .Y(net47104) );
  CLKBUFX2 U596 ( .A(SH[4]), .Y(net47106) );
  CLKBUFX8 U597 ( .A(SH[4]), .Y(net47098) );
  BUFX20 U598 ( .A(net47104), .Y(net47096) );
  BUFX20 U599 ( .A(net47080), .Y(net47072) );
  BUFX12 U600 ( .A(net47080), .Y(net47070) );
  BUFX12 U601 ( .A(SH[5]), .Y(net47074) );
  INVX3 U602 ( .A(net47074), .Y(net52657) );
  MXI2X2 U603 ( .A(n440), .B(n438), .S0(net47160), .Y(n365) );
  MXI2X2 U604 ( .A(n436), .B(n434), .S0(net47160), .Y(n361) );
  MXI2X4 U605 ( .A(n258), .B(n250), .S0(net47130), .Y(n183) );
  AND2X8 U606 ( .A(n647), .B(n648), .Y(n612) );
  AND2X8 U607 ( .A(n641), .B(n642), .Y(n613) );
  MXI2X4 U608 ( .A(n338), .B(n334), .S0(n633), .Y(n263) );
  MXI2X4 U609 ( .A(n330), .B(n326), .S0(n633), .Y(n255) );
  NOR2X2 U610 ( .A(n229), .B(net47114), .Y(n154) );
  CLKAND2X12 U611 ( .A(n663), .B(n664), .Y(n614) );
  BUFX20 U612 ( .A(net47194), .Y(net47180) );
  BUFX20 U613 ( .A(SH[0]), .Y(net47194) );
  MXI2X2 U614 ( .A(n195), .B(n179), .S0(net47098), .Y(n120) );
  MXI2X2 U615 ( .A(n629), .B(n195), .S0(net47092), .Y(n136) );
  MXI2X4 U616 ( .A(n270), .B(n262), .S0(net47130), .Y(n195) );
  NAND2BX1 U617 ( .AN(net47062), .B(A[1]), .Y(n377) );
  MXI2X1 U618 ( .A(A[65]), .B(A[1]), .S0(net47062), .Y(n441) );
  NOR2X2 U619 ( .A(n105), .B(net47070), .Y(n30) );
  MXI2X2 U620 ( .A(n378), .B(n376), .S0(n634), .Y(n303) );
  MXI2X2 U621 ( .A(n382), .B(n380), .S0(net47160), .Y(n307) );
  INVX1 U622 ( .A(n395), .Y(n636) );
  NAND2BX2 U623 ( .AN(n632), .B(n302), .Y(n227) );
  MXI2X2 U624 ( .A(n404), .B(n402), .S0(net47160), .Y(n329) );
  NAND2X2 U625 ( .A(n305), .B(net53237), .Y(n661) );
  BUFX16 U626 ( .A(net47178), .Y(net47172) );
  NAND2X2 U627 ( .A(n234), .B(net47116), .Y(n658) );
  NOR2X4 U628 ( .A(n232), .B(net47114), .Y(n157) );
  NOR2X4 U629 ( .A(n233), .B(net47114), .Y(n158) );
  NOR2X2 U630 ( .A(n101), .B(net47070), .Y(n26) );
  NOR2X4 U631 ( .A(n82), .B(net47066), .Y(n7) );
  NOR2X6 U632 ( .A(n616), .B(net47114), .Y(n155) );
  MXI2X4 U633 ( .A(n621), .B(n151), .S0(net47098), .Y(n92) );
  NAND2X2 U634 ( .A(n286), .B(net53282), .Y(n651) );
  MX2X2 U635 ( .A(n30), .B(n29), .S0(net47182), .Y(B[29]) );
  MXI2X2 U636 ( .A(n207), .B(n191), .S0(net47092), .Y(n132) );
  MX2X2 U637 ( .A(n41), .B(n40), .S0(net47182), .Y(B[40]) );
  MXI2X2 U638 ( .A(n448), .B(n450), .S0(net53582), .Y(n375) );
  MX2X2 U639 ( .A(n630), .B(n62), .S0(net47180), .Y(B[62]) );
  MX2X2 U640 ( .A(n61), .B(n619), .S0(net47180), .Y(B[60]) );
  MX2X2 U641 ( .A(n53), .B(n52), .S0(net47194), .Y(B[52]) );
  AND2X6 U642 ( .A(n661), .B(n662), .Y(n616) );
  CLKAND2X12 U643 ( .A(n653), .B(n654), .Y(n617) );
  AND2X6 U644 ( .A(n667), .B(n668), .Y(n618) );
  AND2X4 U645 ( .A(n643), .B(n644), .Y(n622) );
  CLKAND2X12 U646 ( .A(n655), .B(n656), .Y(n623) );
  AND2X4 U647 ( .A(n665), .B(n666), .Y(n624) );
  AND2X4 U648 ( .A(n649), .B(n650), .Y(n627) );
  AND2X4 U649 ( .A(n645), .B(n646), .Y(n628) );
  AND2X2 U650 ( .A(n651), .B(n652), .Y(n629) );
  AND2X6 U651 ( .A(n639), .B(n640), .Y(n631) );
  MXI2X4 U652 ( .A(A[70]), .B(A[6]), .S0(net47056), .Y(n446) );
  MXI2X4 U653 ( .A(A[66]), .B(A[2]), .S0(net47062), .Y(n442) );
  MXI2X4 U654 ( .A(A[68]), .B(A[4]), .S0(net47062), .Y(n444) );
  NAND2BX4 U655 ( .AN(net47062), .B(A[17]), .Y(n393) );
  MXI2X4 U656 ( .A(n111), .B(n79), .S0(net47070), .Y(n36) );
  MXI2X4 U657 ( .A(n245), .B(n237), .S0(net47116), .Y(n170) );
  NAND2BX1 U658 ( .AN(net47062), .B(A[0]), .Y(n376) );
  NAND2BX1 U659 ( .AN(net47062), .B(A[10]), .Y(n386) );
  NAND2BX1 U660 ( .AN(net47062), .B(A[8]), .Y(n384) );
  NAND2BX1 U661 ( .AN(net47062), .B(A[18]), .Y(n394) );
  NAND2BX1 U662 ( .AN(net47062), .B(A[13]), .Y(n389) );
  NAND2BX1 U663 ( .AN(net47062), .B(A[9]), .Y(n385) );
  NAND2BX1 U664 ( .AN(net47062), .B(A[14]), .Y(n390) );
  NAND2BX1 U665 ( .AN(net47062), .B(A[5]), .Y(n381) );
  NAND2BX2 U666 ( .AN(net47056), .B(A[56]), .Y(n432) );
  NAND2BX1 U667 ( .AN(net47056), .B(A[30]), .Y(n406) );
  NAND2BX2 U668 ( .AN(net47062), .B(A[7]), .Y(n383) );
  MXI2X4 U669 ( .A(n385), .B(n383), .S0(net47160), .Y(n310) );
  NAND2X4 U670 ( .A(n92), .B(net47072), .Y(n660) );
  NAND2BX4 U671 ( .AN(net47062), .B(A[4]), .Y(n380) );
  MXI2X4 U672 ( .A(n432), .B(n430), .S0(n635), .Y(n357) );
  MXI2X2 U673 ( .A(n372), .B(n368), .S0(n633), .Y(n297) );
  MXI2X4 U674 ( .A(A[71]), .B(A[7]), .S0(SH[6]), .Y(n447) );
  CLKBUFX3 U675 ( .A(SH[1]), .Y(net47178) );
  MXI2X2 U676 ( .A(n441), .B(n439), .S0(n635), .Y(n366) );
  MXI2X1 U677 ( .A(n449), .B(n447), .S0(n635), .Y(n374) );
  MXI2X4 U678 ( .A(n428), .B(n426), .S0(n635), .Y(n353) );
  NAND2BX2 U679 ( .AN(net47056), .B(A[50]), .Y(n426) );
  MXI2X4 U680 ( .A(n431), .B(n429), .S0(n635), .Y(n356) );
  NAND2BX2 U681 ( .AN(net47056), .B(A[55]), .Y(n431) );
  MXI2X4 U682 ( .A(n427), .B(n425), .S0(n635), .Y(n352) );
  NAND2BX2 U683 ( .AN(net47056), .B(A[51]), .Y(n427) );
  MXI2X1 U684 ( .A(A[74]), .B(A[10]), .S0(net47062), .Y(n450) );
  MXI2X4 U685 ( .A(n393), .B(n391), .S0(n634), .Y(n318) );
  INVX2 U686 ( .A(n393), .Y(n637) );
  CLKBUFX20 U687 ( .A(net47154), .Y(n632) );
  CLKBUFX20 U688 ( .A(net47154), .Y(n633) );
  MXI2X2 U689 ( .A(A[69]), .B(A[5]), .S0(net47062), .Y(n445) );
  BUFX20 U690 ( .A(net47134), .Y(net47130) );
  CLKBUFX20 U691 ( .A(SH[6]), .Y(net47062) );
  MXI2X4 U692 ( .A(A[72]), .B(A[8]), .S0(net47062), .Y(n448) );
  CLKBUFX20 U693 ( .A(net47172), .Y(n634) );
  CLKBUFX20 U694 ( .A(net47172), .Y(n635) );
  INVX3 U695 ( .A(n634), .Y(net53582) );
  MX2X4 U696 ( .A(n71), .B(n70), .S0(net47180), .Y(B[70]) );
  MXI2X4 U697 ( .A(n146), .B(n114), .S0(net47070), .Y(n71) );
  MXI2X4 U698 ( .A(n325), .B(n329), .S0(net53237), .Y(n254) );
  MXI2X4 U699 ( .A(n310), .B(n306), .S0(net47140), .Y(n235) );
  MX2X2 U700 ( .A(n28), .B(n27), .S0(net47182), .Y(B[27]) );
  MXI2X2 U701 ( .A(n280), .B(n272), .S0(net47130), .Y(n205) );
  MXI2X2 U702 ( .A(n272), .B(n264), .S0(net47130), .Y(n197) );
  MXI2X4 U703 ( .A(n347), .B(n343), .S0(n633), .Y(n272) );
  MX2X2 U704 ( .A(n57), .B(n56), .S0(net47182), .Y(B[56]) );
  MX2X2 U705 ( .A(n50), .B(n638), .S0(net47180), .Y(B[49]) );
  NAND2X2 U706 ( .A(n158), .B(net47096), .Y(n668) );
  MXI2X2 U707 ( .A(n346), .B(n342), .S0(n632), .Y(n271) );
  MX2X2 U708 ( .A(n72), .B(n71), .S0(net47180), .Y(B[71]) );
  BUFX20 U709 ( .A(SH[2]), .Y(net47154) );
  MX2X2 U710 ( .A(n62), .B(n61), .S0(net47180), .Y(B[61]) );
  NAND2X2 U711 ( .A(n231), .B(net47114), .Y(n666) );
  MX2X2 U712 ( .A(n73), .B(n72), .S0(net47180), .Y(B[72]) );
  MXI2X6 U713 ( .A(n623), .B(n166), .S0(net47096), .Y(n107) );
  MXI2X4 U714 ( .A(n168), .B(n184), .S0(net51706), .Y(n109) );
  MX2X4 U715 ( .A(n34), .B(n33), .S0(net47182), .Y(B[33]) );
  MX2X2 U716 ( .A(n55), .B(n54), .S0(net47180), .Y(B[54]) );
  CLKMX2X4 U717 ( .A(n7), .B(n6), .S0(net47180), .Y(B[6]) );
  NAND2BX1 U718 ( .AN(net47062), .B(A[11]), .Y(n387) );
  MX2X2 U719 ( .A(n59), .B(n58), .S0(net47180), .Y(B[58]) );
  MXI2X2 U720 ( .A(n446), .B(n444), .S0(n634), .Y(n371) );
  MXI2X1 U721 ( .A(n447), .B(n445), .S0(n634), .Y(n372) );
  MXI2X2 U722 ( .A(n285), .B(n277), .S0(net47130), .Y(n210) );
  MXI2X2 U723 ( .A(n437), .B(n435), .S0(n635), .Y(n362) );
  MXI2X4 U724 ( .A(n336), .B(n332), .S0(net47140), .Y(n261) );
  NOR2X2 U725 ( .A(n376), .B(n634), .Y(n301) );
  NOR2X4 U726 ( .A(n80), .B(net47066), .Y(n5) );
  MXI2X4 U727 ( .A(n171), .B(n155), .S0(net47098), .Y(n96) );
  CLKINVX3 U728 ( .A(n635), .Y(net53607) );
  NOR2X4 U729 ( .A(n104), .B(net47070), .Y(n29) );
  MXI2X4 U730 ( .A(n341), .B(n337), .S0(n633), .Y(n266) );
  NAND2BX1 U731 ( .AN(net47056), .B(A[38]), .Y(n414) );
  MXI2X2 U732 ( .A(n370), .B(n366), .S0(net47140), .Y(n295) );
  NOR2X4 U733 ( .A(n97), .B(net47066), .Y(n22) );
  MXI2X4 U734 ( .A(n172), .B(n156), .S0(net47104), .Y(n97) );
  MXI2X2 U735 ( .A(n442), .B(n440), .S0(n635), .Y(n367) );
  NAND2BX1 U736 ( .AN(net47062), .B(A[2]), .Y(n378) );
  MX2X2 U737 ( .A(n31), .B(n30), .S0(net47182), .Y(B[30]) );
  NOR2X4 U738 ( .A(n614), .B(net47070), .Y(n31) );
  MXI2X4 U739 ( .A(n383), .B(n381), .S0(n635), .Y(n308) );
  MXI2X2 U740 ( .A(n424), .B(n422), .S0(n634), .Y(n349) );
  MXI2X2 U741 ( .A(n439), .B(n437), .S0(n634), .Y(n364) );
  MXI2X4 U742 ( .A(n342), .B(n338), .S0(n633), .Y(n267) );
  MXI2X2 U743 ( .A(n275), .B(n267), .S0(net47130), .Y(n200) );
  MXI2X2 U744 ( .A(n417), .B(n415), .S0(n634), .Y(n342) );
  MXI2X4 U745 ( .A(n426), .B(n424), .S0(n635), .Y(n351) );
  NAND2BX1 U746 ( .AN(net47062), .B(A[12]), .Y(n388) );
  NAND2BX4 U747 ( .AN(net47056), .B(A[43]), .Y(n419) );
  MXI2X4 U748 ( .A(n343), .B(n339), .S0(n632), .Y(n268) );
  NOR2X4 U749 ( .A(n231), .B(net47114), .Y(n156) );
  NOR2X4 U750 ( .A(n81), .B(net47066), .Y(n6) );
  NAND2BX4 U751 ( .AN(net47100), .B(n156), .Y(n81) );
  MX2X4 U752 ( .A(n75), .B(n74), .S0(net47180), .Y(B[74]) );
  MXI2X4 U753 ( .A(n149), .B(n117), .S0(net47072), .Y(n74) );
  CLKMX2X6 U754 ( .A(n66), .B(n65), .S0(net47180), .Y(B[65]) );
  MXI2X4 U755 ( .A(n110), .B(n78), .S0(net47070), .Y(n35) );
  NAND2BX1 U756 ( .AN(net47062), .B(A[6]), .Y(n382) );
  NOR2X4 U757 ( .A(n84), .B(net47066), .Y(n9) );
  MXI2X2 U758 ( .A(n215), .B(n199), .S0(net47090), .Y(n140) );
  MXI2X2 U759 ( .A(n438), .B(n436), .S0(net47160), .Y(n363) );
  MX2X2 U760 ( .A(n42), .B(n41), .S0(net47182), .Y(B[41]) );
  MXI2X4 U761 ( .A(n117), .B(n85), .S0(net47072), .Y(n42) );
  MXI2X4 U762 ( .A(n113), .B(n81), .S0(net47070), .Y(n38) );
  MXI2X2 U763 ( .A(n413), .B(n411), .S0(n635), .Y(n338) );
  NOR2X4 U764 ( .A(n83), .B(net47066), .Y(n8) );
  MXI2X4 U765 ( .A(n334), .B(n330), .S0(n632), .Y(n259) );
  MXI2X2 U766 ( .A(n405), .B(n403), .S0(n634), .Y(n330) );
  MXI2X2 U767 ( .A(n409), .B(n407), .S0(net47160), .Y(n334) );
  NAND2BX2 U768 ( .AN(net47056), .B(A[23]), .Y(n399) );
  NAND2BX4 U769 ( .AN(net47056), .B(A[61]), .Y(n437) );
  MXI2X4 U770 ( .A(n353), .B(n349), .S0(n633), .Y(n278) );
  MXI2X4 U771 ( .A(n326), .B(n322), .S0(n633), .Y(n251) );
  MXI2X2 U772 ( .A(n401), .B(n399), .S0(n635), .Y(n326) );
  NAND2BX4 U773 ( .AN(n632), .B(n301), .Y(n226) );
  NOR2X6 U774 ( .A(n226), .B(net47114), .Y(n151) );
  MXI2X4 U775 ( .A(n327), .B(n323), .S0(net47140), .Y(n252) );
  NAND2BX1 U776 ( .AN(net47056), .B(A[20]), .Y(n396) );
  NAND2BX1 U777 ( .AN(net47056), .B(A[21]), .Y(n397) );
  MXI2X4 U778 ( .A(n323), .B(n319), .S0(n632), .Y(n248) );
  NOR2X6 U779 ( .A(n85), .B(net47066), .Y(n10) );
  MX2X2 U780 ( .A(n43), .B(n42), .S0(net47182), .Y(B[42]) );
  NAND2BX2 U781 ( .AN(net47056), .B(A[36]), .Y(n412) );
  MXI2X2 U782 ( .A(n412), .B(n410), .S0(n634), .Y(n337) );
  NAND2BX2 U783 ( .AN(net47056), .B(A[34]), .Y(n410) );
  MXI2X4 U784 ( .A(n147), .B(n115), .S0(net47072), .Y(n72) );
  MXI2X2 U785 ( .A(n435), .B(n433), .S0(net47160), .Y(n360) );
  NAND2BX4 U786 ( .AN(net47056), .B(A[59]), .Y(n435) );
  MX2X2 U787 ( .A(n26), .B(n25), .S0(net47182), .Y(B[25]) );
  MXI2X2 U788 ( .A(n415), .B(n413), .S0(n635), .Y(n340) );
  MXI2X2 U789 ( .A(n411), .B(n409), .S0(n634), .Y(n336) );
  MXI2X4 U790 ( .A(n351), .B(n347), .S0(n632), .Y(n276) );
  MXI2X2 U791 ( .A(n422), .B(n420), .S0(n634), .Y(n347) );
  MXI2X2 U792 ( .A(n410), .B(n408), .S0(net47160), .Y(n335) );
  NAND2BX1 U793 ( .AN(net47056), .B(A[32]), .Y(n408) );
  MXI2X4 U794 ( .A(n627), .B(n615), .S0(net47096), .Y(n103) );
  NAND2BX4 U795 ( .AN(n632), .B(n628), .Y(n229) );
  NOR2X4 U796 ( .A(n618), .B(net47066), .Y(n24) );
  MXI2X4 U797 ( .A(n316), .B(n312), .S0(net47140), .Y(n241) );
  MXI2X2 U798 ( .A(n434), .B(n432), .S0(n635), .Y(n359) );
  MXI2X4 U799 ( .A(n279), .B(n271), .S0(net47130), .Y(n204) );
  MXI2X2 U800 ( .A(n277), .B(n269), .S0(net47130), .Y(n202) );
  MXI2X2 U801 ( .A(n290), .B(n282), .S0(net47132), .Y(n215) );
  MXI2X4 U802 ( .A(n365), .B(n361), .S0(n632), .Y(n290) );
  NAND2BX4 U803 ( .AN(net47056), .B(A[58]), .Y(n434) );
  MXI2X4 U804 ( .A(n348), .B(n344), .S0(n632), .Y(n273) );
  NAND2BX4 U805 ( .AN(net47056), .B(A[53]), .Y(n429) );
  MXI2X4 U806 ( .A(n331), .B(n327), .S0(net47140), .Y(n256) );
  MXI2X4 U807 ( .A(n112), .B(n80), .S0(net47070), .Y(n37) );
  MXI2X4 U808 ( .A(n187), .B(n171), .S0(net47098), .Y(n112) );
  MXI2X2 U809 ( .A(n407), .B(n405), .S0(n634), .Y(n332) );
  MXI2X4 U810 ( .A(n328), .B(n324), .S0(n633), .Y(n253) );
  MXI2X2 U811 ( .A(n403), .B(n401), .S0(n634), .Y(n328) );
  MXI2X4 U812 ( .A(n315), .B(n311), .S0(net47140), .Y(n240) );
  NAND2BX4 U813 ( .AN(n633), .B(n303), .Y(n228) );
  NAND2X2 U814 ( .A(n332), .B(net53647), .Y(n643) );
  NAND2X6 U815 ( .A(n107), .B(net47074), .Y(n654) );
  INVX2 U816 ( .A(n633), .Y(net53647) );
  NOR2X4 U817 ( .A(n96), .B(net47066), .Y(n21) );
  NAND2BX4 U818 ( .AN(net47098), .B(n166), .Y(n91) );
  MXI2X4 U819 ( .A(n241), .B(n233), .S0(net47116), .Y(n166) );
  CLKMX2X4 U820 ( .A(n44), .B(n43), .S0(net47182), .Y(B[43]) );
  NAND2X2 U821 ( .A(n232), .B(net47116), .Y(n642) );
  CLKBUFX20 U822 ( .A(SH[6]), .Y(net47056) );
  MXI2X2 U823 ( .A(n406), .B(n404), .S0(n635), .Y(n331) );
  NAND2BX1 U824 ( .AN(net47056), .B(A[28]), .Y(n404) );
  MX2X4 U825 ( .A(n70), .B(n69), .S0(net47180), .Y(B[69]) );
  NAND2BX4 U826 ( .AN(net47056), .B(A[19]), .Y(n395) );
  MXI2X4 U827 ( .A(n320), .B(n316), .S0(n633), .Y(n245) );
  MXI2X2 U828 ( .A(n196), .B(n180), .S0(net47098), .Y(n121) );
  MX2X2 U829 ( .A(n47), .B(n46), .S0(net47180), .Y(B[46]) );
  CLKMX2X6 U830 ( .A(n38), .B(n37), .S0(net47182), .Y(B[37]) );
  NOR2X4 U831 ( .A(n94), .B(net47066), .Y(n19) );
  CLKMX2X2 U832 ( .A(n19), .B(n18), .S0(net47182), .Y(B[18]) );
  CLKMX2X4 U833 ( .A(n20), .B(n19), .S0(net47182), .Y(B[19]) );
  NAND2BX2 U834 ( .AN(net47056), .B(A[48]), .Y(n424) );
  MXI2X4 U835 ( .A(n324), .B(n320), .S0(n632), .Y(n249) );
  MXI2X4 U836 ( .A(n131), .B(n618), .S0(net47074), .Y(n56) );
  MXI2X4 U837 ( .A(n120), .B(n88), .S0(net47072), .Y(n45) );
  NAND2BX2 U838 ( .AN(net47056), .B(A[49]), .Y(n425) );
  MX2X4 U839 ( .A(n36), .B(n35), .S0(net47182), .Y(B[35]) );
  MX2X2 U840 ( .A(n37), .B(n36), .S0(net47182), .Y(B[36]) );
  MX2X2 U841 ( .A(n12), .B(n11), .S0(net47180), .Y(B[11]) );
  NOR2X2 U842 ( .A(n87), .B(net47066), .Y(n12) );
  MXI2X4 U843 ( .A(n141), .B(n109), .S0(net47074), .Y(n66) );
  MX2X2 U844 ( .A(n25), .B(n24), .S0(net47182), .Y(B[24]) );
  NOR2X2 U845 ( .A(n100), .B(net47070), .Y(n25) );
  MXI2X2 U846 ( .A(n204), .B(n188), .S0(net47092), .Y(n129) );
  MXI2X4 U847 ( .A(n129), .B(n97), .S0(net47072), .Y(n54) );
  MX2X2 U848 ( .A(n5), .B(n4), .S0(net47180), .Y(B[4]) );
  MX2X2 U849 ( .A(n4), .B(n3), .S0(net47180), .Y(B[3]) );
  NOR2X2 U850 ( .A(n79), .B(net47066), .Y(n4) );
  MXI2X2 U851 ( .A(n402), .B(n400), .S0(n634), .Y(n327) );
  MXI2X2 U852 ( .A(n203), .B(n187), .S0(net47092), .Y(n128) );
  NOR2X4 U853 ( .A(n107), .B(net47070), .Y(n32) );
  MXI2X2 U854 ( .A(n200), .B(n184), .S0(net47092), .Y(n125) );
  MXI2X4 U855 ( .A(n254), .B(n246), .S0(net47116), .Y(n179) );
  MXI2X4 U856 ( .A(n321), .B(n317), .S0(net47140), .Y(n246) );
  MXI2X4 U857 ( .A(n262), .B(n254), .S0(net47130), .Y(n187) );
  MX2X2 U858 ( .A(n11), .B(n10), .S0(net47180), .Y(B[10]) );
  NOR2X2 U859 ( .A(n86), .B(net47066), .Y(n11) );
  MXI2X4 U860 ( .A(n143), .B(n111), .S0(net47074), .Y(n68) );
  NAND2BX1 U861 ( .AN(net47056), .B(A[25]), .Y(n401) );
  MXI2X4 U862 ( .A(n148), .B(n116), .S0(net47070), .Y(n73) );
  MXI2X4 U863 ( .A(n173), .B(n157), .S0(net47098), .Y(n98) );
  NAND2BX4 U864 ( .AN(net47056), .B(A[33]), .Y(n409) );
  NAND2BX1 U865 ( .AN(net47056), .B(A[27]), .Y(n403) );
  NAND2BX1 U866 ( .AN(net47056), .B(A[29]), .Y(n405) );
  MXI2X4 U867 ( .A(n306), .B(n302), .S0(n632), .Y(n231) );
  MXI2X2 U868 ( .A(n418), .B(n416), .S0(n635), .Y(n343) );
  NAND2BX1 U869 ( .AN(net47056), .B(A[40]), .Y(n416) );
  MXI2X1 U870 ( .A(n445), .B(n443), .S0(n635), .Y(n370) );
  NAND2BX4 U871 ( .AN(SH[6]), .B(A[63]), .Y(n439) );
  MXI2X2 U872 ( .A(n218), .B(n202), .S0(net47090), .Y(n143) );
  NAND2BX4 U873 ( .AN(net47056), .B(A[39]), .Y(n415) );
  MXI2X2 U874 ( .A(n425), .B(n423), .S0(n634), .Y(n350) );
  MXI2X4 U875 ( .A(n126), .B(n94), .S0(net47072), .Y(n51) );
  MXI2X2 U876 ( .A(n201), .B(n185), .S0(net47092), .Y(n126) );
  NAND2BX1 U877 ( .AN(net47056), .B(A[37]), .Y(n413) );
  MXI2X2 U878 ( .A(n206), .B(n190), .S0(net47092), .Y(n131) );
  MXI2X4 U879 ( .A(n273), .B(n265), .S0(net47130), .Y(n198) );
  NAND2BX2 U880 ( .AN(net47056), .B(A[35]), .Y(n411) );
  NAND2X6 U881 ( .A(n613), .B(net47096), .Y(n664) );
  MXI2X4 U882 ( .A(n144), .B(n112), .S0(net47074), .Y(n69) );
  MXI2X2 U883 ( .A(n298), .B(n290), .S0(net47132), .Y(n223) );
  MXI2X2 U884 ( .A(n414), .B(n412), .S0(n634), .Y(n339) );
  MXI2X4 U885 ( .A(n133), .B(n101), .S0(net47074), .Y(n58) );
  NAND2X2 U886 ( .A(n177), .B(net47098), .Y(n640) );
  MXI2X4 U887 ( .A(n128), .B(n96), .S0(net47072), .Y(n53) );
  MXI2X4 U888 ( .A(n116), .B(n84), .S0(net47072), .Y(n41) );
  NAND2BX4 U889 ( .AN(net47056), .B(A[60]), .Y(n436) );
  MXI2X4 U890 ( .A(n339), .B(n335), .S0(n633), .Y(n264) );
  MXI2X4 U891 ( .A(n248), .B(n240), .S0(net47116), .Y(n173) );
  MX2X2 U892 ( .A(n27), .B(n26), .S0(net47182), .Y(B[26]) );
  MXI2X4 U893 ( .A(n132), .B(n100), .S0(net47074), .Y(n57) );
  NAND2X2 U894 ( .A(n328), .B(n633), .Y(n644) );
  NAND2BX4 U895 ( .AN(SH[6]), .B(A[62]), .Y(n438) );
  MX2X2 U896 ( .A(n45), .B(n44), .S0(net47182), .Y(B[44]) );
  MXI2X4 U897 ( .A(n198), .B(n623), .S0(net47098), .Y(n123) );
  MXI2X2 U898 ( .A(n202), .B(n186), .S0(net47092), .Y(n127) );
  MXI2X4 U899 ( .A(n322), .B(n318), .S0(net47140), .Y(n247) );
  MXI2X4 U900 ( .A(n318), .B(n314), .S0(n632), .Y(n243) );
  NAND2BX4 U901 ( .AN(net47056), .B(A[31]), .Y(n407) );
  NAND2BX4 U902 ( .AN(net47100), .B(n153), .Y(n78) );
  NOR2X6 U903 ( .A(n228), .B(net47114), .Y(n153) );
  MXI2X4 U904 ( .A(n282), .B(n274), .S0(net47130), .Y(n207) );
  MXI2X4 U905 ( .A(n349), .B(n612), .S0(n632), .Y(n274) );
  NOR2X4 U906 ( .A(n77), .B(net47066), .Y(n2) );
  NAND2BX4 U907 ( .AN(net47100), .B(n152), .Y(n77) );
  BUFX16 U908 ( .A(net47074), .Y(net47066) );
  MXI2X4 U909 ( .A(n119), .B(n87), .S0(net47072), .Y(n44) );
  MXI2X2 U910 ( .A(n194), .B(n627), .S0(net47098), .Y(n119) );
  MXI2X4 U911 ( .A(n250), .B(n242), .S0(net47116), .Y(n175) );
  MXI2X4 U912 ( .A(n325), .B(n321), .S0(net47140), .Y(n250) );
  MXI2X4 U913 ( .A(n267), .B(n259), .S0(net47130), .Y(n192) );
  MXI2X4 U914 ( .A(n357), .B(n353), .S0(net47140), .Y(n282) );
  MXI2X4 U915 ( .A(n333), .B(n329), .S0(net47140), .Y(n258) );
  MX2X2 U916 ( .A(n74), .B(n73), .S0(net47180), .Y(B[73]) );
  MXI2X4 U917 ( .A(n170), .B(n154), .S0(net47098), .Y(n95) );
  MXI2X4 U918 ( .A(n125), .B(n93), .S0(net47072), .Y(n50) );
  MXI2X4 U919 ( .A(n168), .B(n152), .S0(net47098), .Y(n93) );
  NAND2BX1 U920 ( .AN(net47056), .B(A[24]), .Y(n400) );
  MXI2X4 U921 ( .A(n256), .B(n248), .S0(net47130), .Y(n181) );
  MXI2X2 U922 ( .A(n197), .B(n181), .S0(net47098), .Y(n122) );
  MXI2X4 U923 ( .A(n307), .B(n303), .S0(n633), .Y(n232) );
  MXI2X4 U924 ( .A(n274), .B(n266), .S0(net47130), .Y(n199) );
  MXI2X4 U925 ( .A(n612), .B(n341), .S0(net47140), .Y(n270) );
  MXI2X2 U926 ( .A(n416), .B(n414), .S0(net47160), .Y(n341) );
  MXI2X4 U927 ( .A(n311), .B(n307), .S0(n632), .Y(n236) );
  MXI2X2 U928 ( .A(n398), .B(n396), .S0(n635), .Y(n323) );
  NAND2BX4 U929 ( .AN(net47056), .B(A[22]), .Y(n398) );
  MXI2X4 U930 ( .A(n114), .B(n82), .S0(net47072), .Y(n39) );
  MXI2X4 U931 ( .A(n251), .B(n243), .S0(net47116), .Y(n176) );
  NAND2X4 U932 ( .A(n181), .B(net51706), .Y(n663) );
  MXI2X2 U933 ( .A(n223), .B(n207), .S0(net47090), .Y(n148) );
  MXI2X4 U934 ( .A(n312), .B(n308), .S0(n632), .Y(n237) );
  MXI2X2 U935 ( .A(n387), .B(n385), .S0(n634), .Y(n312) );
  MXI2X4 U936 ( .A(n319), .B(n315), .S0(n633), .Y(n244) );
  MXI2X4 U937 ( .A(n314), .B(n310), .S0(n632), .Y(n239) );
  MXI2X2 U938 ( .A(n389), .B(n387), .S0(n634), .Y(n314) );
  MXI2X4 U939 ( .A(n335), .B(n331), .S0(n633), .Y(n260) );
  MXI2X2 U940 ( .A(n150), .B(n631), .S0(net47072), .Y(n75) );
  NAND2BX4 U941 ( .AN(net47056), .B(A[26]), .Y(n402) );
  MXI2X2 U942 ( .A(n291), .B(n283), .S0(net47132), .Y(n216) );
  CLKBUFX20 U943 ( .A(net47172), .Y(net47160) );
  CLKBUFX20 U944 ( .A(net47154), .Y(net47140) );
  MXI2X4 U945 ( .A(n252), .B(n244), .S0(net47116), .Y(n177) );
  MXI2X4 U946 ( .A(n260), .B(n252), .S0(net47130), .Y(n185) );
  MXI2X4 U947 ( .A(n268), .B(n260), .S0(net47130), .Y(n193) );
  BUFX20 U948 ( .A(net47128), .Y(net47116) );
  MXI2X4 U949 ( .A(n177), .B(n626), .S0(net47096), .Y(n102) );
  MXI2X1 U950 ( .A(n225), .B(n209), .S0(net47090), .Y(n150) );
  MXI2X1 U951 ( .A(n375), .B(n371), .S0(n633), .Y(n300) );
  MXI2X2 U952 ( .A(n367), .B(n363), .S0(net47140), .Y(n292) );
  BUFX8 U953 ( .A(net47106), .Y(net47090) );
  MXI2X4 U954 ( .A(n631), .B(n86), .S0(net47072), .Y(n43) );
  MXI2X4 U955 ( .A(n361), .B(n357), .S0(n633), .Y(n286) );
  NAND2BX4 U956 ( .AN(net47056), .B(A[54]), .Y(n430) );
  MXI2X2 U957 ( .A(n283), .B(n275), .S0(net47130), .Y(n208) );
  MXI2X2 U958 ( .A(n350), .B(n346), .S0(n632), .Y(n275) );
  MXI2X2 U959 ( .A(n429), .B(n427), .S0(n635), .Y(n354) );
  MXI2X4 U960 ( .A(n186), .B(n170), .S0(net47096), .Y(n111) );
  MXI2X2 U961 ( .A(n399), .B(n397), .S0(net47160), .Y(n324) );
  NOR2X4 U962 ( .A(n98), .B(net47066), .Y(n23) );
  MXI2X4 U963 ( .A(n179), .B(n163), .S0(net47096), .Y(n104) );
  MXI2X2 U964 ( .A(n388), .B(n386), .S0(n634), .Y(n313) );
  MXI2X4 U965 ( .A(n308), .B(n628), .S0(n633), .Y(n233) );
  NAND2BX4 U966 ( .AN(net47098), .B(n158), .Y(n83) );
  MXI2X2 U967 ( .A(n220), .B(n204), .S0(net47090), .Y(n145) );
  NOR2X2 U968 ( .A(n76), .B(net47066), .Y(n1) );
  MXI2X2 U969 ( .A(n209), .B(n193), .S0(net47092), .Y(n134) );
  MXI2X2 U970 ( .A(n430), .B(n428), .S0(net47160), .Y(n355) );
  MXI2X2 U971 ( .A(n364), .B(n360), .S0(net47140), .Y(n289) );
  MXI2X4 U972 ( .A(n108), .B(n76), .S0(net47070), .Y(n33) );
  MXI2X2 U973 ( .A(n408), .B(n406), .S0(net47160), .Y(n333) );
  MXI2X2 U974 ( .A(n219), .B(n203), .S0(net47090), .Y(n144) );
  NAND2BX4 U975 ( .AN(net47056), .B(A[52]), .Y(n428) );
  MXI2X2 U976 ( .A(n221), .B(n205), .S0(net47090), .Y(n146) );
  MXI2X4 U977 ( .A(n265), .B(n622), .S0(net47130), .Y(n190) );
  MXI2X4 U978 ( .A(n276), .B(n268), .S0(net47130), .Y(n201) );
  MXI2X4 U979 ( .A(n180), .B(n624), .S0(net47096), .Y(n105) );
  NAND2BX4 U980 ( .AN(net47056), .B(A[47]), .Y(n423) );
  MXI2X4 U981 ( .A(n317), .B(n313), .S0(n632), .Y(n242) );
  MXI2X4 U982 ( .A(n234), .B(n226), .S0(net47114), .Y(n159) );
  MXI2X4 U983 ( .A(n309), .B(n305), .S0(n633), .Y(n234) );
  MXI2X2 U984 ( .A(n384), .B(n382), .S0(n635), .Y(n309) );
  NAND2BX4 U985 ( .AN(net47098), .B(n159), .Y(n84) );
  BUFX20 U986 ( .A(net47134), .Y(net47128) );
  BUFX20 U987 ( .A(SH[3]), .Y(net47134) );
  MXI2X2 U988 ( .A(n208), .B(n192), .S0(net47092), .Y(n133) );
  NAND2BX4 U989 ( .AN(net47056), .B(A[57]), .Y(n433) );
  MXI2X2 U990 ( .A(n433), .B(n431), .S0(n634), .Y(n358) );
  MXI2X2 U991 ( .A(n396), .B(n394), .S0(net47160), .Y(n321) );
  MXI2X2 U992 ( .A(n400), .B(n398), .S0(net47160), .Y(n325) );
  MXI2X2 U993 ( .A(n397), .B(n395), .S0(net47160), .Y(n322) );
  NAND2BX4 U994 ( .AN(net47056), .B(A[45]), .Y(n421) );
  CLKINVX1 U995 ( .A(net47116), .Y(net53282) );
  MXI2X1 U996 ( .A(n293), .B(n285), .S0(net47132), .Y(n218) );
  MXI2X2 U997 ( .A(n360), .B(n356), .S0(n633), .Y(n285) );
  MXI2X2 U998 ( .A(n299), .B(n291), .S0(net47132), .Y(n224) );
  MXI2X4 U999 ( .A(A[67]), .B(A[3]), .S0(net47062), .Y(n443) );
  MXI2X4 U1000 ( .A(n249), .B(n241), .S0(net47116), .Y(n174) );
  MXI2X2 U1001 ( .A(n421), .B(n419), .S0(net47160), .Y(n346) );
  MXI2X2 U1002 ( .A(n281), .B(n273), .S0(net47130), .Y(n206) );
  MXI2X2 U1003 ( .A(n356), .B(n352), .S0(n633), .Y(n281) );
  MXI2X2 U1004 ( .A(n423), .B(n421), .S0(net47160), .Y(n348) );
  MXI2X2 U1005 ( .A(n352), .B(n348), .S0(n633), .Y(n277) );
  MXI2X4 U1006 ( .A(n115), .B(n83), .S0(net47072), .Y(n40) );
  MXI2X4 U1007 ( .A(n190), .B(n174), .S0(net47098), .Y(n115) );
  MXI2X4 U1008 ( .A(n263), .B(n255), .S0(net47130), .Y(n188) );
  MXI2X2 U1009 ( .A(n355), .B(n351), .S0(n633), .Y(n280) );
  MXI2X4 U1010 ( .A(n243), .B(n235), .S0(net47116), .Y(n168) );
  MX2X2 U1011 ( .A(n2), .B(n1), .S0(net47180), .Y(B[1]) );
  NAND2BX4 U1012 ( .AN(net47100), .B(n151), .Y(n76) );
  MXI2X2 U1013 ( .A(n340), .B(n336), .S0(n632), .Y(n265) );
  NAND2BX4 U1014 ( .AN(net47056), .B(A[41]), .Y(n417) );
  MXI2X2 U1015 ( .A(n344), .B(n340), .S0(n633), .Y(n269) );
  MXI2X2 U1016 ( .A(n222), .B(n206), .S0(net47090), .Y(n147) );
  NOR2X4 U1017 ( .A(n93), .B(net47066), .Y(n18) );
  MX2X2 U1018 ( .A(n13), .B(n12), .S0(net47180), .Y(B[12]) );
  MXI2X2 U1019 ( .A(n419), .B(n417), .S0(n634), .Y(n344) );
  MXI2X1 U1020 ( .A(n444), .B(n442), .S0(n634), .Y(n369) );
  MXI2X2 U1021 ( .A(n217), .B(n201), .S0(net47090), .Y(n142) );
  NAND2BX4 U1022 ( .AN(net47100), .B(n154), .Y(n79) );
  NAND2BX2 U1023 ( .AN(net47056), .B(A[46]), .Y(n422) );
  MXI2X2 U1024 ( .A(n337), .B(n333), .S0(n632), .Y(n262) );
  MXI2X4 U1025 ( .A(n140), .B(n108), .S0(net47074), .Y(n65) );
  NOR2X2 U1026 ( .A(n377), .B(net47160), .Y(n302) );
  MXI2X1 U1027 ( .A(n292), .B(n284), .S0(net47132), .Y(n217) );
  MXI2X2 U1028 ( .A(n359), .B(n355), .S0(n633), .Y(n284) );
  MXI2X2 U1029 ( .A(n380), .B(n378), .S0(n635), .Y(n305) );
  NOR2X4 U1030 ( .A(n88), .B(net47066), .Y(n13) );
  NOR2X4 U1031 ( .A(n89), .B(net47066), .Y(n14) );
  NAND2BX4 U1032 ( .AN(net47098), .B(n624), .Y(n89) );
  NOR2X2 U1033 ( .A(n90), .B(net47066), .Y(n15) );
  NAND2BX4 U1034 ( .AN(net47098), .B(n625), .Y(n85) );
  MXI2X2 U1035 ( .A(n366), .B(n362), .S0(n632), .Y(n291) );
  MXI2X4 U1036 ( .A(n271), .B(n263), .S0(net47130), .Y(n196) );
  NOR2X2 U1037 ( .A(n92), .B(net47066), .Y(n17) );
  MXI2X4 U1038 ( .A(n247), .B(n239), .S0(net47116), .Y(n172) );
  MXI2X4 U1039 ( .A(n246), .B(n238), .S0(net47116), .Y(n171) );
  MXI2X1 U1040 ( .A(n296), .B(n288), .S0(net47132), .Y(n221) );
  MXI2X2 U1041 ( .A(n363), .B(n359), .S0(n632), .Y(n288) );
  MXI2X1 U1042 ( .A(n371), .B(n367), .S0(net47140), .Y(n296) );
  MXI2X2 U1043 ( .A(A[64]), .B(A[0]), .S0(net47062), .Y(n440) );
  MXI2X4 U1044 ( .A(n259), .B(n251), .S0(net47130), .Y(n184) );
  NOR2X1 U1045 ( .A(n78), .B(net47066), .Y(n3) );
  MXI2X4 U1046 ( .A(n620), .B(n153), .S0(net47098), .Y(n94) );
  MXI2X2 U1047 ( .A(n394), .B(n392), .S0(net47160), .Y(n319) );
  NAND2BX4 U1048 ( .AN(net47100), .B(n155), .Y(n80) );
  MXI2X4 U1049 ( .A(n264), .B(n256), .S0(net47130), .Y(n189) );
  MXI2X2 U1050 ( .A(n390), .B(n388), .S0(net47160), .Y(n315) );
  MXI2X4 U1051 ( .A(n122), .B(n90), .S0(net47072), .Y(n47) );
  MXI2X4 U1052 ( .A(n123), .B(n91), .S0(net47072), .Y(n48) );
  MXI2X2 U1053 ( .A(n354), .B(n350), .S0(n632), .Y(n279) );
  NAND2BX4 U1054 ( .AN(net47100), .B(n157), .Y(n82) );
  MXI2X1 U1055 ( .A(n373), .B(n369), .S0(net47140), .Y(n298) );
  MXI2X4 U1056 ( .A(n255), .B(n247), .S0(net47116), .Y(n180) );
  MXI2X2 U1057 ( .A(n386), .B(n384), .S0(n635), .Y(n311) );
  NOR2X2 U1058 ( .A(n102), .B(net47070), .Y(n27) );
  MXI2X2 U1059 ( .A(n121), .B(n89), .S0(net47072), .Y(n46) );
  MX2X1 U1060 ( .A(n3), .B(n2), .S0(net47180), .Y(B[2]) );
  NAND2X4 U1061 ( .A(n240), .B(net53678), .Y(n641) );
  INVXL U1062 ( .A(net47116), .Y(net53678) );
  NAND2BX2 U1063 ( .AN(net47098), .B(n613), .Y(n90) );
  MXI2X4 U1064 ( .A(n176), .B(n625), .S0(net47096), .Y(n101) );
  NAND2X2 U1065 ( .A(n379), .B(net53607), .Y(n645) );
  NAND2X1 U1066 ( .A(n377), .B(net47160), .Y(n646) );
  NAND2BX2 U1067 ( .AN(net47062), .B(A[3]), .Y(n379) );
  NAND2X2 U1068 ( .A(n420), .B(net53582), .Y(n647) );
  NAND2X1 U1069 ( .A(n418), .B(n634), .Y(n648) );
  NAND2BX2 U1070 ( .AN(net47056), .B(A[44]), .Y(n420) );
  NAND2BX4 U1071 ( .AN(net47056), .B(A[42]), .Y(n418) );
  NAND2X1 U1072 ( .A(n278), .B(net47130), .Y(n652) );
  NAND2BX4 U1073 ( .AN(net47098), .B(n615), .Y(n87) );
  NAND2X2 U1074 ( .A(n249), .B(net47130), .Y(n656) );
  MXI2X4 U1075 ( .A(n185), .B(n620), .S0(net47096), .Y(n110) );
  MX2X2 U1076 ( .A(n68), .B(n67), .S0(net47180), .Y(B[67]) );
  MXI2X4 U1077 ( .A(n192), .B(n176), .S0(net47098), .Y(n117) );
  MXI2X2 U1078 ( .A(n212), .B(n196), .S0(net47092), .Y(n137) );
  MXI2X2 U1079 ( .A(n381), .B(n379), .S0(net47160), .Y(n306) );
  MXI2X4 U1080 ( .A(n188), .B(n172), .S0(net47098), .Y(n113) );
  NOR2X2 U1081 ( .A(n91), .B(net47066), .Y(n16) );
  NOR2X2 U1082 ( .A(n103), .B(net47070), .Y(n28) );
  MXI2X4 U1083 ( .A(n127), .B(n95), .S0(net47072), .Y(n52) );
  MXI2X2 U1084 ( .A(n145), .B(n113), .S0(net47074), .Y(n70) );
  MXI2X2 U1085 ( .A(n205), .B(n189), .S0(net47092), .Y(n130) );
  NOR2X4 U1086 ( .A(n95), .B(net47066), .Y(n20) );
  MXI2X2 U1087 ( .A(n213), .B(n197), .S0(net47090), .Y(n138) );
  MXI2X2 U1088 ( .A(n358), .B(n354), .S0(n632), .Y(n283) );
  MXI2X2 U1089 ( .A(n362), .B(n358), .S0(n632), .Y(n287) );
  MX2X2 U1090 ( .A(n638), .B(n48), .S0(net47180), .Y(B[48]) );
  MX2X2 U1091 ( .A(n35), .B(n34), .S0(net47182), .Y(B[34]) );
  MXI2X2 U1092 ( .A(n109), .B(n77), .S0(net47070), .Y(n34) );
  MXI2X4 U1093 ( .A(n183), .B(n621), .S0(net47096), .Y(n108) );
  NAND2X2 U1094 ( .A(n301), .B(n633), .Y(n662) );
  MXI2X4 U1095 ( .A(n238), .B(n616), .S0(net47114), .Y(n163) );
  BUFX8 U1096 ( .A(net47106), .Y(net47100) );
  MX2X1 U1097 ( .A(n24), .B(n23), .S0(net47182), .Y(B[23]) );
  MX2X1 U1098 ( .A(n32), .B(n31), .S0(net47182), .Y(B[31]) );
  MXI2X2 U1099 ( .A(n214), .B(n198), .S0(net47090), .Y(n139) );
  MX2X1 U1100 ( .A(n16), .B(n15), .S0(net47182), .Y(B[15]) );
  CLKMX2X2 U1101 ( .A(n40), .B(n39), .S0(net47182), .Y(B[39]) );
  CLKBUFX2 U1102 ( .A(SH[5]), .Y(net47080) );
  MXI2X1 U1103 ( .A(n374), .B(n370), .S0(net47140), .Y(n299) );
  MXI2X2 U1104 ( .A(n175), .B(n159), .S0(net47096), .Y(n100) );
  MX2X1 U1105 ( .A(n15), .B(n14), .S0(net47180), .Y(B[14]) );
  MX2X1 U1106 ( .A(n22), .B(n21), .S0(net47182), .Y(B[21]) );
  MX2X1 U1107 ( .A(n18), .B(n17), .S0(net47182), .Y(B[17]) );
  MX2X1 U1108 ( .A(n17), .B(n16), .S0(net47182), .Y(B[16]) );
  MX2X1 U1109 ( .A(n14), .B(n13), .S0(net47180), .Y(B[13]) );
  MX2X1 U1110 ( .A(n9), .B(n8), .S0(net47180), .Y(B[8]) );
  MX2X1 U1111 ( .A(n29), .B(n28), .S0(net47182), .Y(B[28]) );
  MX2X1 U1112 ( .A(n23), .B(n22), .S0(net47182), .Y(B[22]) );
  MX2X1 U1113 ( .A(n10), .B(n9), .S0(net47180), .Y(B[9]) );
  MX2X1 U1114 ( .A(n6), .B(n5), .S0(net47180), .Y(B[5]) );
  MX2X1 U1115 ( .A(n21), .B(n20), .S0(net47182), .Y(B[20]) );
  MXI2XL U1116 ( .A(n448), .B(n446), .S0(n635), .Y(n373) );
  NAND2BX2 U1117 ( .AN(net47098), .B(n163), .Y(n88) );
  MXI2X1 U1118 ( .A(n287), .B(n279), .S0(net47130), .Y(n212) );
  CLKMX2X2 U1119 ( .A(n52), .B(n51), .S0(net47194), .Y(B[51]) );
  CLKMX2X2 U1120 ( .A(n51), .B(n50), .S0(net47180), .Y(B[50]) );
  CLKMX2X2 U1121 ( .A(n39), .B(n38), .S0(net47182), .Y(B[38]) );
  NOR2X2 U1122 ( .A(n227), .B(net47114), .Y(n152) );
  BUFX4 U1123 ( .A(net47134), .Y(net47132) );
  BUFX8 U1124 ( .A(net47106), .Y(net47092) );
  NOR2BX1 U1125 ( .AN(n1), .B(net47180), .Y(B[0]) );
  MXI2X1 U1126 ( .A(n368), .B(n364), .S0(n633), .Y(n293) );
  MXI2XL U1127 ( .A(A[73]), .B(A[9]), .S0(net47062), .Y(n449) );
endmodule


module exp_handler_DW01_add_10 ( A, B, SUM );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n20, n21, n23, n24, n25, n28, n29, n31, n32, n33, n62, n63, n64,
         n65;

  BUFX4 U40 ( .A(B[10]), .Y(n62) );
  NOR2X2 U41 ( .A(B[8]), .B(A[8]), .Y(n10) );
  NOR2X2 U42 ( .A(n10), .B(n12), .Y(n8) );
  AOI21X4 U43 ( .A0(n8), .A1(n14), .B0(n9), .Y(n7) );
  NOR2X1 U44 ( .A(B[5]), .B(A[5]), .Y(n20) );
  NAND2X4 U45 ( .A(B[6]), .B(A[6]), .Y(n16) );
  NOR2X4 U46 ( .A(B[6]), .B(A[6]), .Y(n15) );
  OAI21X2 U47 ( .A0(n10), .A1(n13), .B0(n11), .Y(n9) );
  NAND2X1 U48 ( .A(B[4]), .B(A[4]), .Y(n24) );
  NOR2X1 U49 ( .A(B[4]), .B(A[4]), .Y(n23) );
  OAI21X4 U50 ( .A0(n17), .A1(n15), .B0(n16), .Y(n14) );
  OA21X4 U51 ( .A0(n64), .A1(n20), .B0(n21), .Y(n17) );
  XNOR2X4 U52 ( .A(n4), .B(n1), .Y(SUM[10]) );
  NAND2X1 U53 ( .A(n65), .B(n3), .Y(n1) );
  NAND2X1 U54 ( .A(B[9]), .B(A[8]), .Y(n6) );
  OAI21X2 U55 ( .A0(n7), .A1(n5), .B0(n6), .Y(n4) );
  OA21X2 U56 ( .A0(n28), .A1(n63), .B0(n29), .Y(n25) );
  OA21X2 U57 ( .A0(n31), .A1(n33), .B0(n32), .Y(n63) );
  NAND2XL U58 ( .A(B[8]), .B(A[8]), .Y(n11) );
  NOR2XL U59 ( .A(B[3]), .B(A[3]), .Y(n28) );
  NAND2XL U60 ( .A(B[3]), .B(A[3]), .Y(n29) );
  OA21X2 U61 ( .A0(n25), .A1(n23), .B0(n24), .Y(n64) );
  NAND2X1 U62 ( .A(n62), .B(A[8]), .Y(n3) );
  NOR2X1 U63 ( .A(B[9]), .B(A[8]), .Y(n5) );
  NOR2XL U64 ( .A(B[1]), .B(A[1]), .Y(n33) );
  OR2X2 U65 ( .A(n62), .B(A[8]), .Y(n65) );
  NOR2XL U66 ( .A(B[7]), .B(A[7]), .Y(n12) );
  NAND2XL U67 ( .A(B[7]), .B(A[7]), .Y(n13) );
  NAND2XL U68 ( .A(B[5]), .B(A[5]), .Y(n21) );
  NAND2XL U69 ( .A(B[2]), .B(A[2]), .Y(n32) );
  NOR2XL U70 ( .A(B[2]), .B(A[2]), .Y(n31) );
endmodule


module add_stage_DW01_inc_1 ( A, SUM );
  input [26:0] A;
  output [26:0] SUM;
  wire   n1, n2, n3, n4, n7, n8, n9, n11, n12, n13, n15, n16, n18, n19, n20,
         n21, n22, n24, n25, n28, n29, n31, n32, n35, n36, n37, n38, n40, n42,
         n43, n46, n47, n49, n50, n53, n54, n55, n56, n58, n59, n62, n63, n65,
         n67, n68, n70, n71, n72, n73, n74, n76, n77, n79, n80, n81, n87, n88,
         n89, n90, n92, n93, n95, n96, n97, n159, n160;

  OR3X2 U130 ( .A(n47), .B(n40), .C(n159), .Y(n38) );
  INVX1 U131 ( .A(n55), .Y(n159) );
  NAND3X1 U132 ( .A(A[20]), .B(A[21]), .C(n21), .Y(n13) );
  XOR2X1 U133 ( .A(n54), .B(n53), .Y(SUM[12]) );
  OR2X4 U134 ( .A(n72), .B(n65), .Y(n63) );
  XNOR2XL U135 ( .A(n19), .B(n18), .Y(SUM[20]) );
  NOR2X1 U136 ( .A(n88), .B(n81), .Y(n80) );
  XOR2XL U137 ( .A(n9), .B(n8), .Y(SUM[23]) );
  NAND3BX4 U138 ( .AN(n13), .B(A[22]), .C(n37), .Y(n9) );
  OR2XL U139 ( .A(n87), .B(n88), .Y(n160) );
  INVX1 U140 ( .A(n89), .Y(n88) );
  NOR2X2 U141 ( .A(n54), .B(n47), .Y(n46) );
  XNOR2XL U142 ( .A(n89), .B(n87), .Y(SUM[4]) );
  XNOR2X2 U143 ( .A(n2), .B(n1), .Y(SUM[26]) );
  XOR2X2 U144 ( .A(n46), .B(A[14]), .Y(SUM[14]) );
  NAND2X2 U145 ( .A(n46), .B(A[14]), .Y(n43) );
  NOR2X4 U146 ( .A(n36), .B(n29), .Y(n28) );
  INVX6 U147 ( .A(n37), .Y(n36) );
  NOR2X2 U148 ( .A(n36), .B(n20), .Y(n19) );
  XOR2XL U149 ( .A(n28), .B(A[18]), .Y(SUM[18]) );
  NAND2X2 U150 ( .A(n71), .B(n55), .Y(n54) );
  CLKINVX4 U151 ( .A(n72), .Y(n71) );
  INVXL U152 ( .A(n21), .Y(n20) );
  INVXL U153 ( .A(A[17]), .Y(n31) );
  NOR2XL U154 ( .A(n36), .B(n35), .Y(n32) );
  XOR2XL U155 ( .A(n36), .B(n35), .Y(SUM[16]) );
  NOR2XL U156 ( .A(n36), .B(n13), .Y(n12) );
  INVXL U157 ( .A(A[13]), .Y(n49) );
  NOR2XL U158 ( .A(n54), .B(n53), .Y(n50) );
  INVXL U159 ( .A(A[15]), .Y(n42) );
  INVXL U160 ( .A(A[19]), .Y(n24) );
  INVXL U161 ( .A(A[0]), .Y(SUM[0]) );
  INVXL U162 ( .A(A[6]), .Y(n79) );
  XNOR2XL U163 ( .A(n96), .B(n95), .Y(SUM[2]) );
  INVXL U164 ( .A(A[7]), .Y(n76) );
  NAND2XL U165 ( .A(n80), .B(A[6]), .Y(n77) );
  INVXL U166 ( .A(A[11]), .Y(n58) );
  NOR2X1 U167 ( .A(n63), .B(n62), .Y(n59) );
  XOR2XL U168 ( .A(n7), .B(A[24]), .Y(SUM[24]) );
  XOR2XL U169 ( .A(n4), .B(n3), .Y(SUM[25]) );
  INVX1 U170 ( .A(A[20]), .Y(n18) );
  XOR2XL U171 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  XNOR2XL U172 ( .A(n160), .B(A[5]), .Y(SUM[5]) );
  INVX1 U173 ( .A(A[21]), .Y(n15) );
  INVXL U174 ( .A(A[10]), .Y(n62) );
  INVXL U175 ( .A(A[12]), .Y(n53) );
  INVXL U176 ( .A(A[16]), .Y(n35) );
  INVXL U177 ( .A(A[4]), .Y(n87) );
  INVX1 U178 ( .A(A[23]), .Y(n8) );
  NOR2X1 U179 ( .A(n9), .B(n8), .Y(n7) );
  INVXL U180 ( .A(n97), .Y(n96) );
  NOR2X1 U181 ( .A(n4), .B(n3), .Y(n2) );
  XNOR2X1 U182 ( .A(n80), .B(n79), .Y(SUM[6]) );
  INVXL U183 ( .A(A[2]), .Y(n95) );
  XNOR2XL U184 ( .A(n71), .B(n70), .Y(SUM[8]) );
  INVXL U185 ( .A(A[8]), .Y(n70) );
  XOR2X1 U186 ( .A(n63), .B(n62), .Y(SUM[10]) );
  XNOR2X1 U187 ( .A(n59), .B(n58), .Y(SUM[11]) );
  XOR2X1 U188 ( .A(n43), .B(n42), .Y(SUM[15]) );
  XNOR2X1 U189 ( .A(n50), .B(n49), .Y(SUM[13]) );
  XNOR2X1 U190 ( .A(n32), .B(n31), .Y(SUM[17]) );
  XOR2X1 U191 ( .A(n16), .B(n15), .Y(SUM[21]) );
  NAND2X1 U192 ( .A(n19), .B(A[20]), .Y(n16) );
  XOR2X1 U193 ( .A(n77), .B(n76), .Y(SUM[7]) );
  XOR2X1 U194 ( .A(n25), .B(n24), .Y(SUM[19]) );
  NAND2X1 U195 ( .A(n28), .B(A[18]), .Y(n25) );
  XNOR2X1 U196 ( .A(n12), .B(n11), .Y(SUM[22]) );
  INVXL U197 ( .A(A[3]), .Y(n92) );
  NAND2XL U198 ( .A(n96), .B(A[2]), .Y(n93) );
  INVXL U199 ( .A(A[9]), .Y(n67) );
  NAND2XL U200 ( .A(n71), .B(A[8]), .Y(n68) );
  NAND2X1 U201 ( .A(A[10]), .B(A[11]), .Y(n56) );
  NAND2X1 U202 ( .A(A[4]), .B(A[5]), .Y(n81) );
  NAND2X1 U203 ( .A(A[12]), .B(A[13]), .Y(n47) );
  NAND2X1 U204 ( .A(A[16]), .B(A[17]), .Y(n29) );
  NAND2X1 U205 ( .A(A[1]), .B(A[0]), .Y(n97) );
  NOR2X1 U206 ( .A(n29), .B(n22), .Y(n21) );
  NAND2X1 U207 ( .A(A[18]), .B(A[19]), .Y(n22) );
  NOR2X4 U208 ( .A(n38), .B(n72), .Y(n37) );
  NAND2X1 U209 ( .A(A[14]), .B(A[15]), .Y(n40) );
  NAND2X2 U210 ( .A(n73), .B(n89), .Y(n72) );
  NOR2X1 U211 ( .A(n81), .B(n74), .Y(n73) );
  NAND2X1 U212 ( .A(A[6]), .B(A[7]), .Y(n74) );
  NAND2X1 U213 ( .A(n7), .B(A[24]), .Y(n4) );
  CLKINVX1 U214 ( .A(A[25]), .Y(n3) );
  CLKINVX1 U215 ( .A(A[22]), .Y(n11) );
  INVXL U216 ( .A(A[26]), .Y(n1) );
  NOR2X2 U217 ( .A(n90), .B(n97), .Y(n89) );
  XOR2X1 U218 ( .A(n93), .B(n92), .Y(SUM[3]) );
  NAND2X1 U219 ( .A(A[8]), .B(A[9]), .Y(n65) );
  NOR2X2 U220 ( .A(n65), .B(n56), .Y(n55) );
  XOR2X1 U221 ( .A(n68), .B(n67), .Y(SUM[9]) );
  NAND2X1 U222 ( .A(A[2]), .B(A[3]), .Y(n90) );
endmodule


module round_stage_DW01_inc_1 ( A, SUM );
  input [24:0] A;
  output [24:0] SUM;
  wire   n4, n5, n8, n9, n12, n15, n16, n17, n18, n19, n22, n25, n26, n29, n32,
         n33, n34, n35, n36, n37, n40, n43, n44, n45, n46, n49, n52, n53, n54,
         n55, n56, n59, n62, n63, n64, n65, n68, n71, n72, n73, n74, n77, n80,
         n81, n84, n87, n88, n89, n90, n93, n96, n97;

  NOR2X2 U128 ( .A(n90), .B(n97), .Y(n89) );
  AND3X8 U129 ( .A(n34), .B(n18), .C(n4), .Y(SUM[24]) );
  NAND2X1 U130 ( .A(n71), .B(n64), .Y(n63) );
  INVXL U131 ( .A(n65), .Y(n64) );
  NOR2X1 U132 ( .A(n33), .B(n26), .Y(n25) );
  NOR2X1 U133 ( .A(n44), .B(n43), .Y(n40) );
  NOR2XL U134 ( .A(n88), .B(n87), .Y(n84) );
  NOR2X4 U135 ( .A(n65), .B(n56), .Y(n55) );
  NOR2XL U136 ( .A(n88), .B(n81), .Y(n80) );
  INVX1 U137 ( .A(n72), .Y(n71) );
  INVXL U138 ( .A(n89), .Y(n88) );
  INVXL U139 ( .A(n46), .Y(n45) );
  NAND2XL U140 ( .A(n71), .B(n55), .Y(n54) );
  NOR2XL U141 ( .A(n33), .B(n32), .Y(n29) );
  NOR2XL U142 ( .A(n15), .B(n9), .Y(n8) );
  NOR2XL U143 ( .A(n54), .B(n52), .Y(n49) );
  INVXL U144 ( .A(A[0]), .Y(SUM[0]) );
  XNOR2XL U145 ( .A(n15), .B(A[20]), .Y(SUM[20]) );
  XNOR2XL U146 ( .A(n77), .B(A[7]), .Y(SUM[7]) );
  XNOR2XL U147 ( .A(n68), .B(A[9]), .Y(SUM[9]) );
  XOR2XL U148 ( .A(n33), .B(n32), .Y(SUM[16]) );
  XNOR2XL U149 ( .A(n12), .B(A[21]), .Y(SUM[21]) );
  XNOR2XL U150 ( .A(n93), .B(A[3]), .Y(SUM[3]) );
  XNOR2XL U151 ( .A(n22), .B(A[19]), .Y(SUM[19]) );
  XOR2XL U152 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  XOR2XL U153 ( .A(n84), .B(A[5]), .Y(SUM[5]) );
  XNOR2XL U154 ( .A(n53), .B(n52), .Y(SUM[12]) );
  XOR2XL U155 ( .A(n49), .B(A[13]), .Y(SUM[13]) );
  XOR2XL U156 ( .A(n29), .B(A[17]), .Y(SUM[17]) );
  XOR2XL U157 ( .A(n8), .B(A[22]), .Y(SUM[22]) );
  XOR2XL U158 ( .A(n59), .B(A[11]), .Y(SUM[11]) );
  XOR2XL U159 ( .A(n40), .B(A[15]), .Y(SUM[15]) );
  XOR2XL U160 ( .A(n80), .B(A[6]), .Y(SUM[6]) );
  XOR2XL U161 ( .A(n25), .B(A[18]), .Y(SUM[18]) );
  XOR2XL U162 ( .A(n96), .B(A[2]), .Y(SUM[2]) );
  XOR2XL U163 ( .A(n71), .B(A[8]), .Y(SUM[8]) );
  NAND2XL U164 ( .A(n71), .B(A[8]), .Y(n68) );
  NAND2XL U165 ( .A(n25), .B(A[18]), .Y(n22) );
  NAND2XL U166 ( .A(n96), .B(A[2]), .Y(n93) );
  NAND2XL U167 ( .A(n80), .B(A[6]), .Y(n77) );
  NAND2XL U168 ( .A(n16), .B(A[20]), .Y(n12) );
  INVXL U169 ( .A(A[12]), .Y(n52) );
  INVXL U170 ( .A(A[4]), .Y(n87) );
  INVXL U171 ( .A(A[10]), .Y(n62) );
  INVXL U172 ( .A(A[14]), .Y(n43) );
  INVXL U173 ( .A(A[16]), .Y(n32) );
  CLKINVX1 U174 ( .A(n16), .Y(n15) );
  CLKINVX1 U175 ( .A(n54), .Y(n53) );
  INVX1 U176 ( .A(n34), .Y(n33) );
  NOR2X1 U177 ( .A(n33), .B(n17), .Y(n16) );
  INVXL U178 ( .A(n18), .Y(n17) );
  CLKINVX1 U179 ( .A(n97), .Y(n96) );
  NAND2X1 U180 ( .A(n53), .B(n45), .Y(n44) );
  NOR2X1 U181 ( .A(n63), .B(n62), .Y(n59) );
  NAND2X1 U182 ( .A(A[10]), .B(A[11]), .Y(n56) );
  NOR2X2 U183 ( .A(n26), .B(n19), .Y(n18) );
  NAND2X1 U184 ( .A(A[18]), .B(A[19]), .Y(n19) );
  NOR2X2 U185 ( .A(n35), .B(n72), .Y(n34) );
  NAND2X1 U186 ( .A(n55), .B(n36), .Y(n35) );
  NOR2X1 U187 ( .A(n46), .B(n37), .Y(n36) );
  NAND2X1 U188 ( .A(A[14]), .B(A[15]), .Y(n37) );
  NAND2X1 U189 ( .A(A[2]), .B(A[3]), .Y(n90) );
  XOR2X1 U190 ( .A(n88), .B(n87), .Y(SUM[4]) );
  XOR2X1 U191 ( .A(n63), .B(n62), .Y(SUM[10]) );
  XOR2X1 U192 ( .A(n44), .B(n43), .Y(SUM[14]) );
  NAND2X1 U193 ( .A(A[4]), .B(A[5]), .Y(n81) );
  NAND2X1 U194 ( .A(A[16]), .B(A[17]), .Y(n26) );
  NAND2X1 U195 ( .A(A[20]), .B(A[21]), .Y(n9) );
  NAND2X1 U196 ( .A(A[0]), .B(A[1]), .Y(n97) );
  NAND2X1 U197 ( .A(A[12]), .B(A[13]), .Y(n46) );
  NAND2X1 U198 ( .A(A[8]), .B(A[9]), .Y(n65) );
  NAND2X1 U199 ( .A(n73), .B(n89), .Y(n72) );
  NOR2X1 U200 ( .A(n81), .B(n74), .Y(n73) );
  NAND2X1 U201 ( .A(A[6]), .B(A[7]), .Y(n74) );
  NOR2X1 U202 ( .A(n9), .B(n5), .Y(n4) );
  NAND2X1 U203 ( .A(A[22]), .B(A[23]), .Y(n5) );
endmodule


module add_stage_DW01_add_2 ( A, B, SUM );
  input [48:0] A;
  input [48:0] B;
  output [48:0] SUM;
  wire   n2, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n58, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n71, n72, n74, n76, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n91, n92, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n111, n112, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n125, n126, n127,
         n129, n130, n133, n135, n138, n139, n140, n141, n142, n143, n145,
         n146, n147, n149, n150, n152, n153, n154, n155, n158, n159, n160,
         n161, n162, n163, n164, n167, n168, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n187, n188, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n215, n216, n217, n218, n219, n220, n222, n223, n224, n226, n227,
         n228, n229, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n266, n267, n268, n270, n271, n272, n273, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n310, n312, n313, n316, n317, n318, n319,
         n320, n321, n322, n323, n325, n326, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n342, n343, n344, n345, n346,
         n351, n352, n353, n354, n355, n357, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n372, n374, n375, n376,
         n377, n378, n381, n382, n383, n384, n385, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n433, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n453, n455, n459, n461, n465, n466, n468, n473,
         n477, n479, n484, n487, n489, n491, n493, n495, n496, n497, n498,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677;

  AOI21X4 U15 ( .A0(n83), .A1(n62), .B0(n63), .Y(n61) );
  NOR2X8 U20 ( .A(A[47]), .B(B[47]), .Y(n64) );
  NOR2X8 U30 ( .A(A[46]), .B(B[46]), .Y(n71) );
  XOR2X2 U32 ( .A(n86), .B(n7), .Y(SUM[45]) );
  OAI21X4 U43 ( .A0(n84), .A1(n92), .B0(n85), .Y(n83) );
  AOI21X4 U67 ( .A0(n121), .A1(n102), .B0(n103), .Y(n101) );
  OAI21X4 U93 ( .A0(n122), .A1(n130), .B0(n123), .Y(n121) );
  AOI21X4 U117 ( .A0(n159), .A1(n140), .B0(n141), .Y(n139) );
  NOR2X8 U122 ( .A(A[39]), .B(B[39]), .Y(n142) );
  NOR2X8 U132 ( .A(A[38]), .B(B[38]), .Y(n149) );
  OAI21X4 U143 ( .A0(n160), .A1(n168), .B0(n161), .Y(n159) );
  NOR2X8 U146 ( .A(A[37]), .B(B[37]), .Y(n160) );
  NOR2X8 U156 ( .A(A[36]), .B(B[36]), .Y(n167) );
  XOR2X2 U158 ( .A(n182), .B(n17), .Y(SUM[35]) );
  NOR2X8 U172 ( .A(A[35]), .B(B[35]), .Y(n180) );
  NOR2X8 U194 ( .A(A[33]), .B(B[33]), .Y(n196) );
  AOI21X4 U207 ( .A0(n295), .A1(n206), .B0(n207), .Y(n205) );
  AOI21X4 U211 ( .A0(n235), .A1(n210), .B0(n211), .Y(n209) );
  NOR2X8 U216 ( .A(A[31]), .B(B[31]), .Y(n212) );
  NOR2X8 U230 ( .A(A[30]), .B(B[30]), .Y(n223) );
  OAI21X4 U243 ( .A0(n236), .A1(n246), .B0(n237), .Y(n235) );
  NOR2X8 U246 ( .A(A[29]), .B(B[29]), .Y(n236) );
  AOI21X4 U269 ( .A0(n279), .A1(n256), .B0(n257), .Y(n255) );
  NOR2X8 U274 ( .A(A[27]), .B(B[27]), .Y(n258) );
  NOR2X8 U312 ( .A(A[24]), .B(B[24]), .Y(n287) );
  OAI21X4 U321 ( .A0(n335), .A1(n296), .B0(n297), .Y(n295) );
  AOI21X4 U323 ( .A0(n317), .A1(n298), .B0(n299), .Y(n297) );
  NOR2X8 U328 ( .A(A[23]), .B(B[23]), .Y(n300) );
  NOR2X8 U338 ( .A(A[22]), .B(B[22]), .Y(n307) );
  XOR2X2 U340 ( .A(n320), .B(n31), .Y(SUM[21]) );
  OAI21X4 U349 ( .A0(n318), .A1(n326), .B0(n319), .Y(n317) );
  NOR2X8 U352 ( .A(A[21]), .B(B[21]), .Y(n318) );
  AOI21X4 U373 ( .A0(n353), .A1(n336), .B0(n337), .Y(n335) );
  NOR2X8 U378 ( .A(A[19]), .B(B[19]), .Y(n338) );
  OAI21X4 U397 ( .A0(n354), .A1(n360), .B0(n355), .Y(n353) );
  AOI21X4 U412 ( .A0(n417), .A1(n363), .B0(n364), .Y(n362) );
  OAI21X4 U414 ( .A0(n396), .A1(n365), .B0(n366), .Y(n364) );
  AOI21X4 U416 ( .A0(n382), .A1(n367), .B0(n368), .Y(n366) );
  OAI21X4 U418 ( .A0(n369), .A1(n375), .B0(n370), .Y(n368) );
  NOR2X8 U421 ( .A(A[15]), .B(B[15]), .Y(n369) );
  NOR2X8 U429 ( .A(A[14]), .B(B[14]), .Y(n374) );
  OAI21X4 U438 ( .A0(n383), .A1(n389), .B0(n384), .Y(n382) );
  NOR2X8 U441 ( .A(A[13]), .B(B[13]), .Y(n383) );
  NOR2X8 U449 ( .A(A[12]), .B(B[12]), .Y(n388) );
  AOI21X4 U458 ( .A0(n410), .A1(n397), .B0(n398), .Y(n396) );
  OAI21X4 U460 ( .A0(n399), .A1(n405), .B0(n400), .Y(n398) );
  NOR2X8 U463 ( .A(A[11]), .B(B[11]), .Y(n399) );
  NOR2X8 U471 ( .A(A[10]), .B(B[10]), .Y(n404) );
  OAI21X4 U478 ( .A0(n411), .A1(n415), .B0(n412), .Y(n410) );
  NOR2X8 U481 ( .A(A[9]), .B(B[9]), .Y(n411) );
  NOR2X8 U487 ( .A(A[8]), .B(B[8]), .Y(n414) );
  OAI21X4 U491 ( .A0(n438), .A1(n418), .B0(n419), .Y(n417) );
  AOI21X4 U493 ( .A0(n429), .A1(n420), .B0(n421), .Y(n419) );
  NOR2X8 U498 ( .A(A[7]), .B(B[7]), .Y(n422) );
  NOR2X8 U504 ( .A(A[6]), .B(B[6]), .Y(n425) );
  OAI21X4 U509 ( .A0(n430), .A1(n436), .B0(n431), .Y(n429) );
  NOR2X8 U512 ( .A(A[5]), .B(B[5]), .Y(n430) );
  NOR2X8 U520 ( .A(A[4]), .B(B[4]), .Y(n435) );
  NAND2X8 U521 ( .A(A[4]), .B(B[4]), .Y(n436) );
  AOI21X4 U524 ( .A0(n447), .A1(n439), .B0(n440), .Y(n438) );
  OAI21X4 U526 ( .A0(n441), .A1(n445), .B0(n442), .Y(n440) );
  NOR2X8 U529 ( .A(A[3]), .B(B[3]), .Y(n441) );
  NOR2X8 U535 ( .A(A[2]), .B(B[2]), .Y(n444) );
  OAI21X4 U539 ( .A0(n448), .A1(n451), .B0(n449), .Y(n447) );
  NAND2X4 U552 ( .A(n655), .B(n78), .Y(n76) );
  NOR2X2 U553 ( .A(n100), .B(n80), .Y(n78) );
  NOR2X2 U554 ( .A(n76), .B(n71), .Y(n67) );
  NOR2X4 U555 ( .A(A[34]), .B(B[34]), .Y(n187) );
  CLKAND2X3 U556 ( .A(n655), .B(n58), .Y(n654) );
  NOR2X6 U557 ( .A(A[43]), .B(B[43]), .Y(n104) );
  OAI21X1 U558 ( .A0(n258), .A1(n268), .B0(n259), .Y(n257) );
  NOR2X4 U559 ( .A(n444), .B(n441), .Y(n439) );
  NAND2X1 U560 ( .A(n118), .B(n655), .Y(n116) );
  OAI21X1 U561 ( .A0(n293), .A1(n272), .B0(n273), .Y(n271) );
  INVX1 U562 ( .A(n278), .Y(n272) );
  AO21X4 U563 ( .A0(n203), .A1(n654), .B0(n676), .Y(SUM[48]) );
  NAND2BXL U564 ( .AN(n223), .B(n224), .Y(n22) );
  NOR2X4 U565 ( .A(n254), .B(n208), .Y(n206) );
  AOI31X2 U566 ( .A0(n361), .A1(n344), .A2(n352), .B0(n342), .Y(n340) );
  NAND2BXL U567 ( .AN(n122), .B(n123), .Y(n11) );
  AND2X2 U568 ( .A(n234), .B(n222), .Y(n219) );
  OAI21X1 U569 ( .A0(n135), .A1(n127), .B0(n130), .Y(n126) );
  NAND2XL U570 ( .A(n465), .B(n188), .Y(n18) );
  OAI2BB1X2 U571 ( .A0N(n361), .A1N(n357), .B0(n360), .Y(n661) );
  AOI21X1 U572 ( .A0(n253), .A1(n243), .B0(n244), .Y(n242) );
  INVX4 U573 ( .A(n255), .Y(n253) );
  INVX1 U574 ( .A(n245), .Y(n243) );
  AOI21X2 U575 ( .A0(n98), .A1(n669), .B0(n99), .Y(n97) );
  OAI21X4 U576 ( .A0(n416), .A1(n407), .B0(n408), .Y(n406) );
  INVXL U577 ( .A(n409), .Y(n407) );
  NAND2BXL U578 ( .AN(n142), .B(n143), .Y(n13) );
  NAND2BX1 U579 ( .AN(n354), .B(n355), .Y(n35) );
  OAI2BB1XL U580 ( .A0N(n235), .A1N(n222), .B0(n224), .Y(n220) );
  INVX1 U581 ( .A(n223), .Y(n222) );
  AOI21X2 U582 ( .A0(n118), .A1(n669), .B0(n121), .Y(n117) );
  NAND2BXL U583 ( .AN(n411), .B(n412), .Y(n43) );
  NAND2X1 U584 ( .A(n466), .B(n197), .Y(n19) );
  NOR2XL U585 ( .A(n305), .B(n312), .Y(n303) );
  INVX1 U586 ( .A(n306), .Y(n305) );
  NOR2BX1 U587 ( .AN(n655), .B(n127), .Y(n125) );
  INVX1 U588 ( .A(n459), .Y(n127) );
  OAI21XL U589 ( .A0(n305), .A1(n313), .B0(n308), .Y(n304) );
  NAND2BXL U590 ( .AN(n399), .B(n400), .Y(n41) );
  OAI21X1 U591 ( .A0(n117), .A1(n111), .B0(n112), .Y(n108) );
  OAI2BB1X2 U592 ( .A0N(n332), .A1N(n361), .B0(n331), .Y(n665) );
  NAND2BXL U593 ( .AN(n422), .B(n423), .Y(n45) );
  NAND2XL U594 ( .A(n473), .B(n278), .Y(n263) );
  NOR2X1 U595 ( .A(n89), .B(n96), .Y(n87) );
  NOR2X1 U596 ( .A(n292), .B(n217), .Y(n215) );
  OAI21XL U597 ( .A0(n80), .A1(n101), .B0(n81), .Y(n79) );
  NAND2BXL U598 ( .AN(n111), .B(n112), .Y(n10) );
  AOI21X2 U599 ( .A0(n487), .A1(n390), .B0(n387), .Y(n385) );
  INVX1 U600 ( .A(n388), .Y(n487) );
  OAI2BB1X4 U601 ( .A0N(n437), .A1N(n433), .B0(n436), .Y(n672) );
  OAI2BB1X2 U602 ( .A0N(n361), .A1N(n310), .B0(n313), .Y(n664) );
  INVXL U603 ( .A(n312), .Y(n310) );
  NOR2X4 U604 ( .A(n325), .B(n318), .Y(n316) );
  NAND2BXL U605 ( .AN(n167), .B(n168), .Y(n16) );
  NOR2BX1 U606 ( .AN(n451), .B(n450), .Y(SUM[0]) );
  OAI2BB1X4 U607 ( .A0N(n376), .A1N(n372), .B0(n375), .Y(n659) );
  NAND2BXL U608 ( .AN(n287), .B(n288), .Y(n28) );
  NAND2BX1 U609 ( .AN(n430), .B(n431), .Y(n47) );
  NOR2X4 U610 ( .A(n307), .B(n300), .Y(n298) );
  OAI21X2 U611 ( .A0(n212), .A1(n224), .B0(n213), .Y(n211) );
  NOR2X4 U612 ( .A(A[25]), .B(B[25]), .Y(n280) );
  NOR2X4 U613 ( .A(A[45]), .B(B[45]), .Y(n84) );
  AOI21X1 U614 ( .A0(n253), .A1(n234), .B0(n235), .Y(n229) );
  INVX1 U615 ( .A(n253), .Y(n251) );
  AOI21X1 U616 ( .A0(n361), .A1(n261), .B0(n262), .Y(n260) );
  NOR2X1 U617 ( .A(n116), .B(n111), .Y(n107) );
  INVX3 U618 ( .A(n177), .Y(n175) );
  NOR2X4 U619 ( .A(n223), .B(n212), .Y(n210) );
  NAND2X4 U620 ( .A(n120), .B(n102), .Y(n100) );
  NOR2X1 U621 ( .A(n100), .B(n60), .Y(n58) );
  NOR2X4 U622 ( .A(A[41]), .B(B[41]), .Y(n122) );
  OAI21X2 U623 ( .A0(n300), .A1(n308), .B0(n301), .Y(n299) );
  NOR2X6 U624 ( .A(n435), .B(n430), .Y(n428) );
  OAI21X2 U625 ( .A0(n142), .A1(n150), .B0(n143), .Y(n141) );
  NOR2X6 U626 ( .A(n404), .B(n399), .Y(n397) );
  OAI2BB1X2 U627 ( .A0N(n669), .A1N(n58), .B0(n677), .Y(n676) );
  OA21X2 U628 ( .A0(n101), .A1(n60), .B0(n61), .Y(n677) );
  NOR2X6 U629 ( .A(n374), .B(n369), .Y(n367) );
  OAI21X2 U630 ( .A0(n255), .A1(n208), .B0(n209), .Y(n207) );
  NOR2X4 U631 ( .A(A[28]), .B(B[28]), .Y(n245) );
  AO21X2 U632 ( .A0(n361), .A1(n215), .B0(n216), .Y(n656) );
  AOI21X2 U633 ( .A0(n2), .A1(n199), .B0(n200), .Y(n198) );
  AO21X2 U634 ( .A0(n361), .A1(n352), .B0(n353), .Y(n668) );
  OAI2BB1X2 U635 ( .A0N(n653), .A1N(n453), .B0(n72), .Y(n68) );
  OAI21X2 U636 ( .A0(n427), .A1(n425), .B0(n426), .Y(n424) );
  NOR2X6 U637 ( .A(A[26]), .B(B[26]), .Y(n267) );
  INVX1 U638 ( .A(n267), .Y(n473) );
  AO21X4 U639 ( .A0(n669), .A1(n78), .B0(n79), .Y(n653) );
  INVX1 U640 ( .A(n404), .Y(n489) );
  NOR2X4 U641 ( .A(A[20]), .B(B[20]), .Y(n325) );
  CLKINVX1 U642 ( .A(n325), .Y(n479) );
  INVX1 U643 ( .A(n187), .Y(n465) );
  NOR2X6 U644 ( .A(A[42]), .B(B[42]), .Y(n111) );
  NOR2X4 U645 ( .A(A[32]), .B(B[32]), .Y(n201) );
  INVX1 U646 ( .A(n201), .Y(n199) );
  NOR2X4 U647 ( .A(A[16]), .B(B[16]), .Y(n359) );
  INVX1 U648 ( .A(n359), .Y(n357) );
  NOR2X4 U649 ( .A(A[18]), .B(B[18]), .Y(n345) );
  INVX1 U650 ( .A(n345), .Y(n344) );
  INVX1 U651 ( .A(n374), .Y(n372) );
  NOR2X4 U652 ( .A(A[40]), .B(B[40]), .Y(n129) );
  NOR2X4 U653 ( .A(A[44]), .B(B[44]), .Y(n91) );
  INVX1 U654 ( .A(n91), .Y(n455) );
  CLKINVX6 U655 ( .A(n176), .Y(n174) );
  AO21X1 U656 ( .A0(n361), .A1(n290), .B0(n291), .Y(n671) );
  CLKINVX2 U657 ( .A(n116), .Y(n114) );
  XOR2X2 U658 ( .A(n416), .B(n44), .Y(SUM[8]) );
  XOR2X4 U659 ( .A(n340), .B(n33), .Y(SUM[19]) );
  AO21X1 U660 ( .A0(n2), .A1(n125), .B0(n126), .Y(n658) );
  BUFX20 U661 ( .A(n203), .Y(n2) );
  XNOR2X4 U662 ( .A(n671), .B(n28), .Y(SUM[24]) );
  CLKINVX2 U663 ( .A(n76), .Y(n74) );
  XOR2X4 U664 ( .A(n260), .B(n25), .Y(SUM[27]) );
  INVX4 U665 ( .A(n334), .Y(n332) );
  XNOR2X2 U666 ( .A(n658), .B(n11), .Y(SUM[41]) );
  AO21X4 U667 ( .A0(n2), .A1(n152), .B0(n153), .Y(n666) );
  XNOR2X4 U668 ( .A(n666), .B(n14), .Y(SUM[38]) );
  AO21X2 U669 ( .A0(n361), .A1(n270), .B0(n271), .Y(n675) );
  INVX8 U670 ( .A(n295), .Y(n293) );
  AOI21X4 U671 ( .A0(n2), .A1(n163), .B0(n164), .Y(n162) );
  OAI21X1 U672 ( .A0(n177), .A1(n167), .B0(n168), .Y(n164) );
  XOR2X4 U673 ( .A(n162), .B(n15), .Y(SUM[37]) );
  XNOR2X2 U674 ( .A(n376), .B(n38), .Y(SUM[14]) );
  XNOR2X2 U675 ( .A(n662), .B(n10), .Y(SUM[42]) );
  XNOR2X4 U676 ( .A(n390), .B(n40), .Y(SUM[12]) );
  XNOR2X2 U677 ( .A(n672), .B(n47), .Y(SUM[5]) );
  AO21X4 U678 ( .A0(n2), .A1(n174), .B0(n175), .Y(n667) );
  XNOR2X4 U679 ( .A(n667), .B(n16), .Y(SUM[36]) );
  AO21X2 U680 ( .A0(n361), .A1(n226), .B0(n227), .Y(n674) );
  XNOR2X4 U681 ( .A(n674), .B(n22), .Y(SUM[30]) );
  OAI21X1 U682 ( .A0(n97), .A1(n89), .B0(n92), .Y(n88) );
  XNOR2X4 U683 ( .A(n673), .B(n8), .Y(SUM[44]) );
  CLKINVX2 U684 ( .A(n438), .Y(n437) );
  NAND2X4 U685 ( .A(n316), .B(n298), .Y(n296) );
  NAND2X2 U686 ( .A(A[19]), .B(B[19]), .Y(n339) );
  XNOR2X2 U687 ( .A(n663), .B(n12), .Y(SUM[40]) );
  AOI21X1 U688 ( .A0(n2), .A1(n67), .B0(n68), .Y(n66) );
  XNOR2X2 U689 ( .A(n670), .B(n6), .Y(SUM[46]) );
  NAND2X4 U690 ( .A(A[17]), .B(B[17]), .Y(n355) );
  INVX4 U691 ( .A(n396), .Y(n394) );
  AOI21X4 U692 ( .A0(n394), .A1(n381), .B0(n382), .Y(n378) );
  XNOR2X4 U693 ( .A(n665), .B(n32), .Y(SUM[20]) );
  INVX4 U694 ( .A(n333), .Y(n331) );
  INVX6 U695 ( .A(n335), .Y(n333) );
  OAI21X1 U696 ( .A0(n446), .A1(n444), .B0(n445), .Y(n443) );
  NAND2X4 U697 ( .A(n194), .B(n178), .Y(n176) );
  XOR2X4 U698 ( .A(n385), .B(n39), .Y(SUM[13]) );
  INVX2 U699 ( .A(n417), .Y(n416) );
  AOI21X1 U700 ( .A0(n361), .A1(n283), .B0(n284), .Y(n282) );
  XOR2X4 U701 ( .A(n282), .B(n27), .Y(SUM[25]) );
  CLKINVX1 U702 ( .A(n252), .Y(n250) );
  CLKINVX8 U703 ( .A(n254), .Y(n252) );
  XOR2X4 U704 ( .A(n247), .B(n24), .Y(SUM[28]) );
  AOI21X1 U705 ( .A0(n361), .A1(n248), .B0(n249), .Y(n247) );
  NAND2X4 U706 ( .A(A[1]), .B(B[1]), .Y(n449) );
  NOR2X6 U707 ( .A(A[1]), .B(B[1]), .Y(n448) );
  AOI21X2 U708 ( .A0(n406), .A1(n489), .B0(n403), .Y(n401) );
  XOR2X4 U709 ( .A(n401), .B(n41), .Y(SUM[11]) );
  XOR2X4 U710 ( .A(n66), .B(n5), .Y(SUM[47]) );
  NAND2X4 U711 ( .A(A[16]), .B(B[16]), .Y(n360) );
  AOI21X2 U712 ( .A0(n361), .A1(n321), .B0(n322), .Y(n320) );
  XNOR2X2 U713 ( .A(n443), .B(n49), .Y(SUM[3]) );
  XOR2X4 U714 ( .A(n238), .B(n23), .Y(SUM[29]) );
  AOI21X1 U715 ( .A0(n361), .A1(n239), .B0(n240), .Y(n238) );
  AOI21X1 U716 ( .A0(n2), .A1(n183), .B0(n184), .Y(n182) );
  XNOR2X4 U717 ( .A(n661), .B(n35), .Y(SUM[17]) );
  XOR2X4 U718 ( .A(n198), .B(n19), .Y(SUM[33]) );
  INVX2 U719 ( .A(n117), .Y(n115) );
  INVX4 U720 ( .A(n669), .Y(n135) );
  NOR2X4 U721 ( .A(n359), .B(n354), .Y(n352) );
  NOR2X6 U722 ( .A(A[17]), .B(B[17]), .Y(n354) );
  INVX4 U723 ( .A(n100), .Y(n98) );
  XOR2X4 U724 ( .A(n106), .B(n9), .Y(SUM[43]) );
  AOI21X2 U725 ( .A0(n2), .A1(n107), .B0(n108), .Y(n106) );
  NAND2X2 U726 ( .A(n332), .B(n316), .Y(n312) );
  INVX2 U727 ( .A(n332), .Y(n330) );
  XNOR2X4 U728 ( .A(n406), .B(n42), .Y(SUM[10]) );
  XNOR2X2 U729 ( .A(n664), .B(n30), .Y(SUM[22]) );
  OAI21X2 U730 ( .A0(n416), .A1(n414), .B0(n415), .Y(n413) );
  XNOR2X4 U731 ( .A(n413), .B(n43), .Y(SUM[9]) );
  XNOR2X4 U732 ( .A(n656), .B(n21), .Y(SUM[31]) );
  AOI21X4 U733 ( .A0(n195), .A1(n178), .B0(n179), .Y(n177) );
  XNOR2X4 U734 ( .A(n660), .B(n13), .Y(SUM[39]) );
  AO21X2 U735 ( .A0(n2), .A1(n145), .B0(n146), .Y(n660) );
  AOI21X1 U736 ( .A0(n361), .A1(n303), .B0(n304), .Y(n302) );
  INVX8 U737 ( .A(n362), .Y(n361) );
  XOR2X4 U738 ( .A(n302), .B(n29), .Y(SUM[23]) );
  NAND2X8 U739 ( .A(A[0]), .B(B[0]), .Y(n451) );
  OAI21X4 U740 ( .A0(n416), .A1(n391), .B0(n392), .Y(n390) );
  INVX8 U741 ( .A(n294), .Y(n292) );
  XNOR2X2 U742 ( .A(n675), .B(n26), .Y(SUM[26]) );
  OAI21X4 U743 ( .A0(n362), .A1(n204), .B0(n205), .Y(n203) );
  XNOR2X4 U744 ( .A(n668), .B(n34), .Y(SUM[18]) );
  XNOR2X4 U745 ( .A(n657), .B(n18), .Y(SUM[34]) );
  AO21X4 U746 ( .A0(n2), .A1(n190), .B0(n191), .Y(n657) );
  AOI21X4 U747 ( .A0(n333), .A1(n316), .B0(n317), .Y(n313) );
  XNOR2X4 U748 ( .A(n424), .B(n45), .Y(SUM[7]) );
  AOI21X4 U749 ( .A0(n437), .A1(n428), .B0(n429), .Y(n427) );
  XNOR2X4 U750 ( .A(n659), .B(n37), .Y(SUM[15]) );
  OAI21X4 U751 ( .A0(n416), .A1(n377), .B0(n378), .Y(n376) );
  CLKINVX1 U752 ( .A(n82), .Y(n80) );
  NAND2X2 U753 ( .A(n409), .B(n397), .Y(n395) );
  NAND2X4 U754 ( .A(n234), .B(n210), .Y(n208) );
  NAND2X1 U755 ( .A(n82), .B(n62), .Y(n60) );
  NOR2X2 U756 ( .A(n201), .B(n196), .Y(n194) );
  OAI21X4 U757 ( .A0(n422), .A1(n426), .B0(n423), .Y(n421) );
  NAND2X4 U758 ( .A(A[29]), .B(B[29]), .Y(n237) );
  NAND2X4 U759 ( .A(A[9]), .B(B[9]), .Y(n412) );
  INVXL U760 ( .A(n193), .Y(n191) );
  OAI21X2 U761 ( .A0(n196), .A1(n202), .B0(n197), .Y(n195) );
  NOR2X6 U762 ( .A(n176), .B(n138), .Y(n655) );
  NAND2X1 U763 ( .A(A[23]), .B(B[23]), .Y(n301) );
  INVX1 U764 ( .A(n344), .Y(n343) );
  NAND2X1 U765 ( .A(A[21]), .B(B[21]), .Y(n319) );
  NAND2X1 U766 ( .A(n252), .B(n234), .Y(n228) );
  NOR2X4 U767 ( .A(n334), .B(n296), .Y(n294) );
  NAND2X1 U768 ( .A(n393), .B(n381), .Y(n377) );
  AOI21X1 U769 ( .A0(n175), .A1(n158), .B0(n159), .Y(n155) );
  NAND2X2 U770 ( .A(n352), .B(n336), .Y(n334) );
  NOR2X4 U771 ( .A(n345), .B(n338), .Y(n336) );
  NAND2BXL U772 ( .AN(n180), .B(n181), .Y(n17) );
  NOR2X4 U773 ( .A(n287), .B(n280), .Y(n278) );
  NOR2X4 U774 ( .A(n187), .B(n180), .Y(n178) );
  NAND2X4 U775 ( .A(A[18]), .B(B[18]), .Y(n346) );
  NAND2X2 U776 ( .A(A[35]), .B(B[35]), .Y(n181) );
  NAND2X2 U777 ( .A(A[7]), .B(B[7]), .Y(n423) );
  NAND2X2 U778 ( .A(A[3]), .B(B[3]), .Y(n442) );
  NOR2XL U779 ( .A(n292), .B(n250), .Y(n248) );
  INVX1 U780 ( .A(n393), .Y(n391) );
  INVXL U781 ( .A(n394), .Y(n392) );
  INVXL U782 ( .A(n279), .Y(n273) );
  INVXL U783 ( .A(n155), .Y(n153) );
  INVXL U784 ( .A(n97), .Y(n95) );
  INVXL U785 ( .A(n135), .Y(n133) );
  NOR2X4 U786 ( .A(n395), .B(n365), .Y(n363) );
  NAND2X4 U787 ( .A(n158), .B(n140), .Y(n138) );
  INVXL U788 ( .A(n101), .Y(n99) );
  NAND2XL U789 ( .A(n252), .B(n243), .Y(n241) );
  NOR2XL U790 ( .A(n192), .B(n185), .Y(n183) );
  NOR2XL U791 ( .A(n154), .B(n147), .Y(n145) );
  INVX1 U792 ( .A(n119), .Y(n118) );
  INVXL U793 ( .A(n195), .Y(n193) );
  NAND2BXL U794 ( .AN(n64), .B(n65), .Y(n5) );
  NAND2BXL U795 ( .AN(n104), .B(n105), .Y(n9) );
  NAND2BXL U796 ( .AN(n383), .B(n384), .Y(n39) );
  NAND2BXL U797 ( .AN(n160), .B(n161), .Y(n15) );
  XNOR2X1 U798 ( .A(n2), .B(n20), .Y(SUM[32]) );
  NAND2XL U799 ( .A(n199), .B(n202), .Y(n20) );
  NAND2BXL U800 ( .AN(n338), .B(n339), .Y(n33) );
  OAI21X2 U801 ( .A0(n180), .A1(n188), .B0(n181), .Y(n179) );
  NOR2X4 U802 ( .A(n167), .B(n160), .Y(n158) );
  AO21XL U803 ( .A0(n2), .A1(n114), .B0(n115), .Y(n662) );
  AO21XL U804 ( .A0(n2), .A1(n655), .B0(n133), .Y(n663) );
  NOR2X6 U805 ( .A(n425), .B(n422), .Y(n420) );
  NAND2X2 U806 ( .A(n428), .B(n420), .Y(n418) );
  NOR2X6 U807 ( .A(n267), .B(n258), .Y(n256) );
  OAI21X4 U808 ( .A0(n177), .A1(n138), .B0(n139), .Y(n669) );
  INVXL U809 ( .A(n435), .Y(n495) );
  NAND2BXL U810 ( .AN(n258), .B(n259), .Y(n25) );
  NAND2BXL U811 ( .AN(n236), .B(n237), .Y(n23) );
  NAND2BXL U812 ( .AN(n300), .B(n301), .Y(n29) );
  NAND2BXL U813 ( .AN(n84), .B(n85), .Y(n7) );
  AO21XL U814 ( .A0(n2), .A1(n74), .B0(n653), .Y(n670) );
  NAND2BXL U815 ( .AN(n280), .B(n281), .Y(n27) );
  NAND2BXL U816 ( .AN(n245), .B(n246), .Y(n24) );
  NOR2X6 U817 ( .A(n91), .B(n84), .Y(n82) );
  NAND2BXL U818 ( .AN(n318), .B(n319), .Y(n31) );
  XOR2X1 U819 ( .A(n51), .B(n451), .Y(SUM[1]) );
  OAI21XL U820 ( .A0(n293), .A1(n241), .B0(n242), .Y(n240) );
  AO21XL U821 ( .A0(n2), .A1(n94), .B0(n95), .Y(n673) );
  NOR2X6 U822 ( .A(n111), .B(n104), .Y(n102) );
  NOR2X6 U823 ( .A(n71), .B(n64), .Y(n62) );
  XOR2X1 U824 ( .A(n427), .B(n46), .Y(SUM[6]) );
  NAND2XL U825 ( .A(n493), .B(n426), .Y(n46) );
  INVXL U826 ( .A(n414), .Y(n491) );
  INVX1 U827 ( .A(n461), .Y(n147) );
  INVX1 U828 ( .A(n465), .Y(n185) );
  INVX1 U829 ( .A(n479), .Y(n323) );
  INVX1 U830 ( .A(n286), .Y(n285) );
  NAND2X4 U831 ( .A(A[5]), .B(B[5]), .Y(n431) );
  NAND2X4 U832 ( .A(A[13]), .B(B[13]), .Y(n384) );
  NAND2X2 U833 ( .A(A[22]), .B(B[22]), .Y(n308) );
  NAND2X2 U834 ( .A(A[20]), .B(B[20]), .Y(n326) );
  NAND2X4 U835 ( .A(A[44]), .B(B[44]), .Y(n92) );
  NOR2XL U836 ( .A(n292), .B(n228), .Y(n226) );
  INVXL U837 ( .A(n292), .Y(n290) );
  CLKINVX1 U838 ( .A(n96), .Y(n94) );
  NAND2XL U839 ( .A(n655), .B(n98), .Y(n96) );
  NOR2XL U840 ( .A(n292), .B(n272), .Y(n270) );
  CLKINVX1 U841 ( .A(n154), .Y(n152) );
  OAI21XL U842 ( .A0(n293), .A1(n250), .B0(n251), .Y(n249) );
  OAI21XL U843 ( .A0(n293), .A1(n228), .B0(n229), .Y(n227) );
  NAND2X1 U844 ( .A(n174), .B(n158), .Y(n154) );
  NAND2X1 U845 ( .A(n219), .B(n252), .Y(n217) );
  NOR2XL U846 ( .A(n292), .B(n263), .Y(n261) );
  NOR2XL U847 ( .A(n292), .B(n241), .Y(n239) );
  CLKINVX1 U848 ( .A(n395), .Y(n393) );
  INVXL U849 ( .A(n293), .Y(n291) );
  CLKINVX1 U850 ( .A(n192), .Y(n190) );
  NAND2X2 U851 ( .A(n294), .B(n206), .Y(n204) );
  NAND2X4 U852 ( .A(n381), .B(n367), .Y(n365) );
  INVXL U853 ( .A(n83), .Y(n81) );
  INVXL U854 ( .A(n410), .Y(n408) );
  NAND2X4 U855 ( .A(n278), .B(n256), .Y(n254) );
  NOR2XL U856 ( .A(n292), .B(n285), .Y(n283) );
  INVXL U857 ( .A(n194), .Y(n192) );
  INVXL U858 ( .A(n353), .Y(n351) );
  INVXL U859 ( .A(n120), .Y(n119) );
  NOR2X1 U860 ( .A(n176), .B(n167), .Y(n163) );
  NOR2X1 U861 ( .A(n330), .B(n323), .Y(n321) );
  INVXL U862 ( .A(n447), .Y(n446) );
  NAND2XL U863 ( .A(n498), .B(n449), .Y(n51) );
  INVXL U864 ( .A(n448), .Y(n498) );
  NAND2XL U865 ( .A(n468), .B(n213), .Y(n21) );
  INVXL U866 ( .A(n212), .Y(n468) );
  NAND2XL U867 ( .A(n461), .B(n150), .Y(n14) );
  CLKINVX1 U868 ( .A(n149), .Y(n461) );
  INVXL U869 ( .A(n425), .Y(n493) );
  NAND2XL U870 ( .A(n491), .B(n415), .Y(n44) );
  XOR2X1 U871 ( .A(n446), .B(n50), .Y(SUM[2]) );
  NAND2XL U872 ( .A(n497), .B(n445), .Y(n50) );
  INVXL U873 ( .A(n444), .Y(n497) );
  NAND2XL U874 ( .A(n496), .B(n442), .Y(n49) );
  INVXL U875 ( .A(n441), .Y(n496) );
  NAND2XL U876 ( .A(n372), .B(n375), .Y(n38) );
  NAND2XL U877 ( .A(n487), .B(n389), .Y(n40) );
  XNOR2X1 U878 ( .A(n361), .B(n36), .Y(SUM[16]) );
  NAND2XL U879 ( .A(n357), .B(n360), .Y(n36) );
  NAND2XL U880 ( .A(n489), .B(n405), .Y(n42) );
  XNOR2X1 U881 ( .A(n437), .B(n48), .Y(SUM[4]) );
  NAND2XL U882 ( .A(n495), .B(n436), .Y(n48) );
  OAI21X2 U883 ( .A0(n104), .A1(n112), .B0(n105), .Y(n103) );
  OAI21X2 U884 ( .A0(n338), .A1(n346), .B0(n339), .Y(n337) );
  OAI21X2 U885 ( .A0(n280), .A1(n288), .B0(n281), .Y(n279) );
  NOR2X4 U886 ( .A(n388), .B(n383), .Y(n381) );
  NOR2X4 U887 ( .A(n245), .B(n236), .Y(n234) );
  NOR2X2 U888 ( .A(n129), .B(n122), .Y(n120) );
  NOR2X2 U889 ( .A(n414), .B(n411), .Y(n409) );
  OAI21XL U890 ( .A0(n293), .A1(n263), .B0(n264), .Y(n262) );
  AOI21XL U891 ( .A0(n279), .A1(n473), .B0(n266), .Y(n264) );
  INVXL U892 ( .A(n268), .Y(n266) );
  INVXL U893 ( .A(n246), .Y(n244) );
  OAI21XL U894 ( .A0(n293), .A1(n285), .B0(n288), .Y(n284) );
  OAI21X1 U895 ( .A0(n293), .A1(n217), .B0(n218), .Y(n216) );
  AOI21X1 U896 ( .A0(n253), .A1(n219), .B0(n220), .Y(n218) );
  OAI21XL U897 ( .A0(n155), .A1(n147), .B0(n150), .Y(n146) );
  OAI21XL U898 ( .A0(n193), .A1(n185), .B0(n188), .Y(n184) );
  OAI21XL U899 ( .A0(n351), .A1(n343), .B0(n346), .Y(n342) );
  OAI21XL U900 ( .A0(n331), .A1(n323), .B0(n326), .Y(n322) );
  OAI21X2 U901 ( .A0(n64), .A1(n72), .B0(n65), .Y(n63) );
  NOR2X6 U902 ( .A(n149), .B(n142), .Y(n140) );
  NAND2XL U903 ( .A(n479), .B(n326), .Y(n32) );
  NAND2XL U904 ( .A(n459), .B(n130), .Y(n12) );
  INVXL U905 ( .A(n129), .Y(n459) );
  NAND2XL U906 ( .A(n344), .B(n346), .Y(n34) );
  NAND2XL U907 ( .A(n453), .B(n72), .Y(n6) );
  INVXL U908 ( .A(n71), .Y(n453) );
  NAND2XL U909 ( .A(n455), .B(n92), .Y(n8) );
  NAND2XL U910 ( .A(n477), .B(n308), .Y(n30) );
  INVXL U911 ( .A(n307), .Y(n477) );
  AOI21XL U912 ( .A0(n2), .A1(n87), .B0(n88), .Y(n86) );
  NAND2XL U913 ( .A(n473), .B(n268), .Y(n26) );
  INVXL U914 ( .A(n196), .Y(n466) );
  NAND2XL U915 ( .A(n484), .B(n370), .Y(n37) );
  INVXL U916 ( .A(n369), .Y(n484) );
  INVXL U917 ( .A(n307), .Y(n306) );
  INVXL U918 ( .A(n287), .Y(n286) );
  CLKINVX1 U919 ( .A(n455), .Y(n89) );
  INVXL U920 ( .A(n435), .Y(n433) );
  INVXL U921 ( .A(n405), .Y(n403) );
  INVXL U922 ( .A(n389), .Y(n387) );
  INVXL U923 ( .A(n202), .Y(n200) );
  NAND2X4 U924 ( .A(A[10]), .B(B[10]), .Y(n405) );
  NAND2X4 U925 ( .A(A[14]), .B(B[14]), .Y(n375) );
  NAND2X6 U926 ( .A(A[12]), .B(B[12]), .Y(n389) );
  NAND2X4 U927 ( .A(A[28]), .B(B[28]), .Y(n246) );
  NAND2X4 U928 ( .A(A[26]), .B(B[26]), .Y(n268) );
  NAND2X2 U929 ( .A(A[32]), .B(B[32]), .Y(n202) );
  NAND2X4 U930 ( .A(A[2]), .B(B[2]), .Y(n445) );
  NAND2X4 U931 ( .A(A[6]), .B(B[6]), .Y(n426) );
  NAND2X4 U932 ( .A(A[30]), .B(B[30]), .Y(n224) );
  NAND2X6 U933 ( .A(A[8]), .B(B[8]), .Y(n415) );
  NAND2X4 U934 ( .A(A[46]), .B(B[46]), .Y(n72) );
  NAND2X4 U935 ( .A(A[42]), .B(B[42]), .Y(n112) );
  NAND2X4 U936 ( .A(A[38]), .B(B[38]), .Y(n150) );
  NAND2X4 U937 ( .A(A[40]), .B(B[40]), .Y(n130) );
  NAND2X4 U938 ( .A(A[36]), .B(B[36]), .Y(n168) );
  NAND2X4 U939 ( .A(A[24]), .B(B[24]), .Y(n288) );
  NAND2X2 U940 ( .A(A[34]), .B(B[34]), .Y(n188) );
  NAND2X2 U941 ( .A(A[41]), .B(B[41]), .Y(n123) );
  NAND2X2 U942 ( .A(A[11]), .B(B[11]), .Y(n400) );
  NAND2X2 U943 ( .A(A[15]), .B(B[15]), .Y(n370) );
  NAND2X2 U944 ( .A(A[31]), .B(B[31]), .Y(n213) );
  NAND2X2 U945 ( .A(A[45]), .B(B[45]), .Y(n85) );
  NAND2X2 U946 ( .A(A[47]), .B(B[47]), .Y(n65) );
  NAND2X2 U947 ( .A(A[43]), .B(B[43]), .Y(n105) );
  NAND2X2 U948 ( .A(A[39]), .B(B[39]), .Y(n143) );
  NAND2X2 U949 ( .A(A[27]), .B(B[27]), .Y(n259) );
  NAND2X2 U950 ( .A(A[37]), .B(B[37]), .Y(n161) );
  NAND2X2 U951 ( .A(A[25]), .B(B[25]), .Y(n281) );
  NAND2X2 U952 ( .A(A[33]), .B(B[33]), .Y(n197) );
  NOR2XL U953 ( .A(A[0]), .B(B[0]), .Y(n450) );
endmodule


module norm_stage_DW_lzd_1 ( a, enc );
  input [74:0] a;
  output [7:0] enc;
  wire   U1_or2_inv_2__56_, U1_or2_inv_2__88_, U1_or2_inv_2__104_,
         U1_or2_inv_2__112_, U1_or2_inv_2__120_, U1_or2_inv_3__48_,
         U1_or2_inv_3__112_, U1_or2_inv_4__96_, U1_or2_inv_5__64_,
         U1_or2_inv_0__48_, U1_or2_inv_0__54_, U1_or2_inv_0__56_,
         U1_or2_inv_0__58_, U1_or2_inv_0__60_, U1_or2_inv_0__62_,
         U1_or2_tree_0__3__48_, U1_or2_tree_0__3__64_, U1_or2_tree_0__3__80_,
         U1_or2_tree_0__3__96_, U1_or2_tree_0__3__112_, U1_or2_tree_0__5__64_,
         U1_or2_tree_1__2__80_, U1_or2_tree_1__2__96_, U1_or2_tree_1__2__104_,
         U1_or2_tree_1__2__112_, U1_or2_tree_1__3__96_, U1_or2_tree_2__3__48_,
         U1_or2_tree_2__3__64_, U1_or2_tree_2__3__80_, U1_or2_tree_2__3__112_,
         U1_or2_tree_2__4__32_, U1_or2_tree_2__4__96_, U1_or2_tree_3__4__32_,
         U1_or2_tree_3__4__64_, U1_or2_tree_3__4__96_, U1_or2_tree_0__1__52_,
         U1_or2_tree_0__1__56_, U1_or2_tree_0__1__60_, U1_or2_tree_0__1__64_,
         U1_or2_tree_0__1__88_, U1_or2_tree_0__1__92_, U1_or2_tree_0__1__96_,
         U1_or2_tree_0__1__100_, U1_or2_tree_0__1__104_,
         U1_or2_tree_0__1__108_, U1_or2_tree_0__1__112_,
         U1_or2_tree_0__1__116_, U1_or2_tree_0__1__120_,
         U1_or2_tree_0__1__124_, U1_or2_tree_0__2__48_, U1_or2_tree_0__2__56_,
         U1_or2_tree_0__2__80_, U1_or2_tree_0__2__88_, U1_or2_tree_0__2__96_,
         U1_or2_tree_0__2__104_, U1_or2_tree_0__2__112_,
         U1_or2_tree_0__2__120_, U1_enc_tree_0__3__56_, U1_enc_tree_0__4__48_,
         U1_enc_tree_2__3__56_, U1_enc_tree_2__3__104_, U1_enc_tree_2__3__120_,
         U1_enc_tree_2__4__48_, U1_enc_tree_2__5__32_, U1_enc_tree_2__5__96_,
         U1_enc_tree_3__4__48_, U1_enc_tree_3__4__112_, U1_enc_tree_3__5__32_,
         U1_enc_tree_3__5__96_, U1_enc_tree_4__5__32_, U1_enc_tree_4__5__96_,
         U1_enc_tree_0__1__54_, U1_enc_tree_0__1__58_, U1_enc_tree_0__1__62_,
         U1_enc_tree_0__2__52_, U1_enc_tree_0__2__60_, U1_or_tree_1__56_,
         U1_or_tree_1__58_, U1_or_tree_1__60_, U1_or_tree_1__62_,
         U1_or_tree_1__64_, U1_or_tree_1__66_, U1_or_tree_1__68_,
         U1_or_tree_1__70_, U1_or_tree_1__72_, U1_or_tree_1__74_,
         U1_or_tree_1__76_, U1_or_tree_1__78_, U1_or_tree_1__80_,
         U1_or_tree_1__82_, U1_or_tree_1__84_, U1_or_tree_1__86_,
         U1_or_tree_1__88_, U1_or_tree_1__90_, U1_or_tree_1__92_,
         U1_or_tree_1__94_, U1_or_tree_1__96_, U1_or_tree_1__98_,
         U1_or_tree_1__100_, U1_or_tree_1__102_, U1_or_tree_1__104_,
         U1_or_tree_1__106_, U1_or_tree_1__108_, U1_or_tree_1__110_,
         U1_or_tree_1__112_, U1_or_tree_1__114_, U1_or_tree_1__116_,
         U1_or_tree_1__118_, U1_or_tree_1__120_, U1_or_tree_1__122_,
         U1_or_tree_1__124_, U1_or_tree_1__126_, U1_or_tree_2__52_,
         U1_or_tree_2__56_, U1_or_tree_2__60_, U1_or_tree_2__64_,
         U1_or_tree_2__68_, U1_or_tree_2__72_, U1_or_tree_2__76_,
         U1_or_tree_2__80_, U1_or_tree_2__84_, U1_or_tree_2__88_,
         U1_or_tree_2__92_, U1_or_tree_2__96_, U1_or_tree_2__100_,
         U1_or_tree_2__104_, U1_or_tree_2__108_, U1_or_tree_2__112_,
         U1_or_tree_2__116_, U1_or_tree_2__120_, U1_or_tree_2__124_,
         U1_or_tree_3__48_, U1_or_tree_3__56_, U1_or_tree_3__64_,
         U1_or_tree_3__72_, U1_or_tree_3__80_, U1_or_tree_3__88_,
         U1_or_tree_3__96_, U1_or_tree_3__104_, U1_or_tree_3__112_,
         U1_or_tree_3__120_, U1_or_tree_4__48_, U1_or_tree_4__64_,
         U1_or_tree_4__80_, U1_or_tree_4__96_, U1_or_tree_4__112_,
         U1_or_tree_5__32_, U1_or_tree_5__64_, U1_or_tree_5__96_,
         U1_or_tree_6__0_, U1_or_tree_6__64_, net54061, U1_or2_tree_1__4__96_,
         U1_or2_tree_1__3__80_, U1_or2_tree_1__3__64_, U1_or2_tree_1__3__112_,
         U1_or2_tree_1__2__88_, U1_or2_tree_1__2__72_, U1_or2_tree_1__2__64_,
         U1_or2_tree_1__2__56_, U1_or2_tree_1__2__120_, U1_or2_inv_1__96_,
         U1_or2_inv_1__88_, U1_or2_inv_1__72_, U1_or2_inv_1__68_,
         U1_or2_inv_1__124_, U1_or2_inv_1__120_, U1_or2_inv_1__116_,
         U1_or2_inv_1__104_, U1_enc_tree_1__5__32_, U1_enc_tree_1__4__112_,
         U1_enc_tree_1__2__92_, U1_enc_tree_1__2__84_, U1_enc_tree_1__2__76_,
         U1_enc_tree_1__2__68_, U1_enc_tree_1__2__124_, U1_enc_tree_1__2__116_,
         U1_enc_tree_1__2__100_, net50686, net60728, net60757, net61820,
         net61539, U1_or2_inv_0__94_, U1_or2_inv_0__90_, U1_or2_inv_0__86_,
         U1_or2_inv_0__82_, U1_or2_inv_0__80_, U1_enc_tree_0__3__88_,
         U1_enc_tree_0__2__92_, U1_enc_tree_0__1__94_, U1_enc_tree_0__1__90_,
         U1_enc_tree_0__1__82_, net61538, U1_or2_inv_0__98_,
         U1_or2_inv_0__126_, U1_or2_inv_0__124_, U1_or2_inv_0__122_,
         U1_or2_inv_0__118_, U1_or2_inv_0__116_, U1_or2_inv_0__114_,
         U1_or2_inv_0__110_, U1_or2_inv_0__108_, U1_or2_inv_0__106_,
         U1_or2_inv_0__100_, U1_enc_tree_0__6__64_, U1_enc_tree_0__5__96_,
         U1_enc_tree_0__4__112_, U1_enc_tree_0__3__120_, U1_enc_tree_0__1__98_,
         U1_enc_tree_0__1__126_, U1_enc_tree_0__1__122_,
         U1_enc_tree_0__1__118_, U1_enc_tree_0__1__114_,
         U1_enc_tree_0__1__110_, U1_enc_tree_0__1__106_,
         U1_enc_tree_0__1__102_, net60749, net49578, net49577,
         U1_or2_tree_0__2__72_, U1_or2_tree_0__2__64_, U1_or2_tree_0__1__76_,
         U1_or2_tree_0__1__68_, U1_or2_inv_0__78_, U1_or2_inv_0__74_,
         U1_or2_inv_0__70_, U1_or2_inv_0__68_, U1_or2_inv_0__66_,
         U1_enc_tree_0__3__72_, n2, n3, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n50, n51, n52, n54, n55, n56, n57,
         n58, n59, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  NAND2X4 U1_UORT1_2_16 ( .A(U1_or_tree_1__64_), .B(U1_or_tree_1__66_), .Y(
        U1_or_tree_2__64_) );
  NAND2X4 U1_UOR21_0_2_6 ( .A(1'b1), .B(U1_or2_tree_0__1__52_), .Y(
        U1_or2_tree_0__2__48_) );
  AOI21X4 U1_UEN0_0_3_3 ( .A0(U1_enc_tree_0__2__52_), .A1(U1_or2_inv_0__56_), 
        .B0(U1_enc_tree_0__2__60_), .Y(U1_enc_tree_0__3__56_) );
  OAI21X4 U1_UEN1_0_4_1 ( .A0(1'b1), .A1(U1_or2_inv_0__48_), .B0(
        U1_enc_tree_0__3__56_), .Y(U1_enc_tree_0__4__48_) );
  OAI21X4 U1_UEN1_3_4_1 ( .A0(1'b1), .A1(U1_or2_inv_3__48_), .B0(
        U1_or_tree_3__56_), .Y(U1_enc_tree_3__4__48_) );
  AOI21X4 U1_UEN0_4_5_0 ( .A0(1'b0), .A1(1'b1), .B0(U1_or_tree_4__48_), .Y(
        U1_enc_tree_4__5__32_) );
  NOR2X8 U1_UORT0_3_10 ( .A(U1_or_tree_2__80_), .B(U1_or_tree_2__84_), .Y(
        U1_or_tree_3__80_) );
  NOR2X8 U1_UORT0_1_28 ( .A(a[3]), .B(a[4]), .Y(U1_or_tree_1__56_) );
  NOR2X8 U1_UOR20_0_3_3 ( .A(U1_or2_tree_0__2__48_), .B(U1_or2_tree_0__2__56_), 
        .Y(U1_or2_tree_0__3__48_) );
  NOR2X4 U1_UOR20_0_1_25 ( .A(a[47]), .B(a[49]), .Y(U1_or2_tree_0__1__100_) );
  NOR2XL U1_UORT0_7_0 ( .A(U1_or_tree_6__0_), .B(U1_or_tree_6__64_), .Y(enc[7]) );
  NAND2X6 U1_UORT1_6_1 ( .A(U1_or_tree_5__64_), .B(U1_or_tree_5__96_), .Y(
        U1_or_tree_6__64_) );
  NAND2X2 U1_UOR21_2_4_1 ( .A(1'b1), .B(U1_or2_tree_2__3__48_), .Y(
        U1_or2_tree_2__4__32_) );
  NOR2X8 U1_UORT0_1_56 ( .A(a[59]), .B(a[60]), .Y(U1_or_tree_1__112_) );
  NOR2X8 U1_UORT0_1_60 ( .A(a[67]), .B(a[68]), .Y(U1_or_tree_1__120_) );
  NOR2X8 U1_UORT0_1_48 ( .A(a[43]), .B(a[44]), .Y(U1_or_tree_1__96_) );
  AOI21X4 U1_UEN0_0_1_13 ( .A0(a[0]), .A1(U1_or2_inv_0__54_), .B0(a[2]), .Y(
        U1_enc_tree_0__1__54_) );
  NOR2X4 U1_UOR20_0_1_27 ( .A(a[55]), .B(a[57]), .Y(U1_or2_tree_0__1__108_) );
  NOR2X8 U1_UORT0_3_14 ( .A(U1_or_tree_2__116_), .B(U1_or_tree_2__112_), .Y(
        U1_or_tree_3__112_) );
  NOR2X4 U1_UOR20_2_3_4 ( .A(U1_or_tree_2__64_), .B(U1_or_tree_2__72_), .Y(
        U1_or2_tree_2__3__64_) );
  NOR2X1 U1_UOR20_0_1_28 ( .A(a[59]), .B(a[61]), .Y(U1_or2_tree_0__1__112_) );
  NAND2X2 U1_UOR21_0_2_14 ( .A(U1_or2_tree_0__1__112_), .B(
        U1_or2_tree_0__1__116_), .Y(U1_or2_tree_0__2__112_) );
  NOR2X8 U1_UORT0_5_2 ( .A(U1_or_tree_4__64_), .B(U1_or_tree_4__80_), .Y(
        U1_or_tree_5__64_) );
  NOR2X8 U1_UORT0_5_3 ( .A(U1_or_tree_4__96_), .B(U1_or_tree_4__112_), .Y(
        U1_or_tree_5__96_) );
  NOR2X2 U1_UOR20_0_1_24 ( .A(a[43]), .B(a[45]), .Y(U1_or2_tree_0__1__96_) );
  NOR2X8 U1_UOR20_0_3_5 ( .A(U1_or2_tree_0__2__80_), .B(U1_or2_tree_0__2__88_), 
        .Y(U1_or2_tree_0__3__80_) );
  NOR2X4 U1_UOR20_0_1_16 ( .A(a[11]), .B(a[13]), .Y(U1_or2_tree_0__1__64_) );
  NOR2X4 U1_UOR20_0_1_22 ( .A(a[35]), .B(a[37]), .Y(U1_or2_tree_0__1__88_) );
  NOR2X8 U1_UORT0_3_13 ( .A(U1_or_tree_2__104_), .B(U1_or_tree_2__108_), .Y(
        U1_or_tree_3__104_) );
  NOR2X8 U1_UORT0_3_6 ( .A(1'b0), .B(U1_or_tree_2__52_), .Y(U1_or_tree_3__48_)
         );
  NOR2X8 U1_UORT0_1_44 ( .A(a[35]), .B(a[36]), .Y(U1_or_tree_1__88_) );
  NOR2X8 U1_UOR20_0_1_29 ( .A(a[63]), .B(a[65]), .Y(U1_or2_tree_0__1__116_) );
  NOR2X6 U1_UOR20_0_3_7 ( .A(U1_or2_tree_0__2__112_), .B(
        U1_or2_tree_0__2__120_), .Y(U1_or2_tree_0__3__112_) );
  NAND2X8 U1_UORT1_2_30 ( .A(U1_or_tree_1__120_), .B(U1_or_tree_1__122_), .Y(
        U1_or_tree_2__120_) );
  NOR2X8 U1_UORT0_3_15 ( .A(U1_or_tree_2__124_), .B(U1_or_tree_2__120_), .Y(
        U1_or_tree_3__120_) );
  NAND2X6 U1_UORT1_2_23 ( .A(n55), .B(U1_or_tree_1__94_), .Y(U1_or_tree_2__92_) );
  NAND2X8 U1_UOR21_0_2_7 ( .A(U1_or2_tree_0__1__56_), .B(U1_or2_tree_0__1__60_), .Y(U1_or2_tree_0__2__56_) );
  NOR2X8 U1_UORT0_1_62 ( .A(a[71]), .B(a[72]), .Y(U1_or_tree_1__124_) );
  NOR2X8 U1_UORT0_1_54 ( .A(a[55]), .B(a[56]), .Y(U1_or_tree_1__108_) );
  NOR2X8 U1_UORT0_1_51 ( .A(a[49]), .B(a[50]), .Y(U1_or_tree_1__102_) );
  NOR2X8 U1_UORT0_1_47 ( .A(a[41]), .B(a[42]), .Y(U1_or_tree_1__94_) );
  NAND2X4 U1_UOR21_1_2_11 ( .A(U1_or_tree_1__92_), .B(n9), .Y(
        U1_or2_tree_1__2__88_) );
  NOR2X8 U1_UORT0_1_42 ( .A(a[31]), .B(a[32]), .Y(U1_or_tree_1__84_) );
  NOR2X8 U1_UORT0_1_33 ( .A(a[13]), .B(a[14]), .Y(U1_or_tree_1__66_) );
  OAI21X4 U1_UEN1_1_2_8 ( .A0(U1_or2_inv_1__68_), .A1(U1_or_tree_1__66_), .B0(
        U1_or_tree_1__70_), .Y(U1_enc_tree_1__2__68_) );
  NOR2X4 U1_UOR20_1_3_4 ( .A(U1_or2_tree_1__2__64_), .B(U1_or2_tree_1__2__72_), 
        .Y(U1_or2_tree_1__3__64_) );
  NOR2X8 U1_UORT0_1_29 ( .A(a[5]), .B(a[6]), .Y(U1_or_tree_1__58_) );
  NOR2X2 U1_UOR20_0_1_26 ( .A(a[51]), .B(a[53]), .Y(U1_or2_tree_0__1__104_) );
  NAND2X4 U1_UOR21_0_2_13 ( .A(U1_or2_tree_0__1__104_), .B(
        U1_or2_tree_0__1__108_), .Y(U1_or2_tree_0__2__104_) );
  NOR2X4 U1_UOR20_0_1_31 ( .A(a[71]), .B(a[73]), .Y(U1_or2_tree_0__1__124_) );
  NAND2X4 U1_UOR21_0_2_15 ( .A(U1_or2_tree_0__1__120_), .B(
        U1_or2_tree_0__1__124_), .Y(U1_or2_tree_0__2__120_) );
  NOR2X4 U1_UOR20_0_1_30 ( .A(a[67]), .B(a[69]), .Y(U1_or2_tree_0__1__120_) );
  NOR2X8 U1_UORT0_1_59 ( .A(a[65]), .B(a[66]), .Y(U1_or_tree_1__118_) );
  OAI21X4 U1_UEN1_1_2_14 ( .A0(U1_or2_inv_1__116_), .A1(U1_or_tree_1__114_), 
        .B0(U1_or_tree_1__118_), .Y(U1_enc_tree_1__2__116_) );
  OAI21X4 U1_UEN1_1_2_15 ( .A0(n45), .A1(U1_or2_inv_1__124_), .B0(
        U1_or_tree_1__126_), .Y(U1_enc_tree_1__2__124_) );
  NAND2X8 U1_UORT1_2_22 ( .A(U1_or_tree_1__88_), .B(U1_or_tree_1__90_), .Y(
        U1_or_tree_2__88_) );
  NOR2X8 U1_UORT0_1_53 ( .A(a[53]), .B(a[54]), .Y(U1_or_tree_1__106_) );
  NAND2X4 U1_UORT1_2_25 ( .A(U1_or_tree_1__100_), .B(U1_or_tree_1__102_), .Y(
        U1_or_tree_2__100_) );
  NOR2X8 U1_UORT0_3_12 ( .A(U1_or_tree_2__96_), .B(U1_or_tree_2__100_), .Y(
        U1_or_tree_3__96_) );
  NOR2X8 U1_UORT0_1_27 ( .A(a[1]), .B(a[2]), .Y(net50686) );
  NOR2X8 U1_UORT0_1_55 ( .A(a[57]), .B(a[58]), .Y(U1_or_tree_1__110_) );
  NAND2X8 U1_UORT1_2_20 ( .A(U1_or_tree_1__80_), .B(U1_or_tree_1__82_), .Y(
        U1_or_tree_2__80_) );
  NAND2X8 U1_UORT1_2_14 ( .A(U1_or_tree_1__56_), .B(U1_or_tree_1__58_), .Y(
        U1_or_tree_2__56_) );
  NOR2X8 U1_UOR20_2_3_3 ( .A(U1_or_tree_2__56_), .B(1'b0), .Y(
        U1_or2_tree_2__3__48_) );
  NOR2X8 U1_UORT0_1_45 ( .A(a[37]), .B(a[38]), .Y(U1_or_tree_1__90_) );
  NAND2X1 U1_UOR21_3_4_2 ( .A(U1_or_tree_3__64_), .B(U1_or_tree_3__80_), .Y(
        U1_or2_tree_3__4__64_) );
  NOR2X8 U1_UORT0_1_41 ( .A(a[29]), .B(a[30]), .Y(U1_or_tree_1__82_) );
  NOR2X8 U1_UORT0_1_40 ( .A(a[27]), .B(a[28]), .Y(U1_or_tree_1__80_) );
  NAND2X6 U1_UORT1_4_4 ( .A(U1_or_tree_3__64_), .B(U1_or_tree_3__72_), .Y(
        U1_or_tree_4__64_) );
  NOR2X8 U1_UORT0_1_57 ( .A(a[61]), .B(a[62]), .Y(U1_or_tree_1__114_) );
  NOR2X8 U1_UOR20_1_3_7 ( .A(U1_or2_tree_1__2__112_), .B(
        U1_or2_tree_1__2__120_), .Y(U1_or2_tree_1__3__112_) );
  NOR2X8 U1_UORT0_1_52 ( .A(a[51]), .B(a[52]), .Y(U1_or_tree_1__104_) );
  NOR2X6 U1_UORT0_1_63 ( .A(a[73]), .B(a[74]), .Y(U1_or_tree_1__126_) );
  NAND2X4 U1_UORT1_2_17 ( .A(net61820), .B(U1_or_tree_1__70_), .Y(
        U1_or_tree_2__68_) );
  NAND2X4 U1_UORT1_2_15 ( .A(U1_or_tree_1__60_), .B(U1_or_tree_1__62_), .Y(
        U1_or_tree_2__60_) );
  NOR2X2 U1_UOR20_0_1_23 ( .A(a[39]), .B(a[41]), .Y(U1_or2_tree_0__1__92_) );
  NOR2X8 U1_UORT0_3_8 ( .A(U1_or_tree_2__64_), .B(U1_or_tree_2__68_), .Y(
        U1_or_tree_3__64_) );
  NAND2X8 U1_UORT1_4_5 ( .A(U1_or_tree_3__80_), .B(U1_or_tree_3__88_), .Y(
        U1_or_tree_4__80_) );
  NOR2X6 U1_UOR20_0_1_15 ( .A(a[9]), .B(a[7]), .Y(U1_or2_tree_0__1__60_) );
  NAND2X6 U1_UORT1_2_19 ( .A(U1_or_tree_1__76_), .B(U1_or_tree_1__78_), .Y(
        U1_or_tree_2__76_) );
  NAND2X6 U1_UOR21_1_2_9 ( .A(n10), .B(U1_or_tree_1__76_), .Y(
        U1_or2_tree_1__2__72_) );
  NAND2X2 U1_UOR21_1_2_8 ( .A(U1_or_tree_1__64_), .B(net61820), .Y(
        U1_or2_tree_1__2__64_) );
  NOR2X8 U1_UOR20_2_3_7 ( .A(U1_or_tree_2__112_), .B(U1_or_tree_2__120_), .Y(
        U1_or2_tree_2__3__112_) );
  NAND2X4 U1_UORT1_6_0 ( .A(1'b1), .B(U1_or_tree_5__32_), .Y(U1_or_tree_6__0_)
         );
  NAND2X8 U1_UORT1_2_21 ( .A(U1_or_tree_1__86_), .B(U1_or_tree_1__84_), .Y(
        U1_or_tree_2__84_) );
  NOR2X6 U1_UORT0_1_49 ( .A(a[45]), .B(a[46]), .Y(U1_or_tree_1__98_) );
  AOI21X2 U1_UEN0_2_3_6 ( .A0(U1_or_tree_2__100_), .A1(U1_or2_inv_2__104_), 
        .B0(U1_or_tree_2__108_), .Y(U1_enc_tree_2__3__104_) );
  OAI21X2 U1_UEN1_3_4_3 ( .A0(U1_or_tree_3__104_), .A1(U1_or2_inv_3__112_), 
        .B0(U1_or_tree_3__120_), .Y(U1_enc_tree_3__4__112_) );
  NAND2X2 U1_UOR21_3_4_3 ( .A(U1_or_tree_3__96_), .B(U1_or_tree_3__112_), .Y(
        U1_or2_tree_3__4__96_) );
  NOR2X8 U1_UORT0_3_11 ( .A(U1_or_tree_2__92_), .B(U1_or_tree_2__88_), .Y(
        U1_or_tree_3__88_) );
  NOR2X4 U1_UOR20_0_3_6 ( .A(U1_or2_tree_0__2__96_), .B(U1_or2_tree_0__2__104_), .Y(U1_or2_tree_0__3__96_) );
  NAND2X6 U1_UORT1_2_24 ( .A(U1_or_tree_1__96_), .B(U1_or_tree_1__98_), .Y(
        U1_or_tree_2__96_) );
  OAI21X4 U1_UEN1_1_2_10 ( .A0(n11), .A1(U1_or_tree_1__82_), .B0(
        U1_or_tree_1__86_), .Y(U1_enc_tree_1__2__84_) );
  AOI21X4 U1_UEN0_0_1_14 ( .A0(a[4]), .A1(U1_or2_inv_0__58_), .B0(a[6]), .Y(
        U1_enc_tree_0__1__58_) );
  NOR2X8 U1_UORT0_1_61 ( .A(a[69]), .B(a[70]), .Y(U1_or_tree_1__122_) );
  AOI21X2 U1_UEN0_0_1_20 ( .A0(a[28]), .A1(U1_or2_inv_0__82_), .B0(a[30]), .Y(
        U1_enc_tree_0__1__82_) );
  AOI21X2 U1_UEN0_0_1_22 ( .A0(a[36]), .A1(U1_or2_inv_0__90_), .B0(a[38]), .Y(
        U1_enc_tree_0__1__90_) );
  AOI21X2 U1_UEN0_0_1_23 ( .A0(a[40]), .A1(U1_or2_inv_0__94_), .B0(a[42]), .Y(
        U1_enc_tree_0__1__94_) );
  OAI21X2 U1_UEN1_0_2_11 ( .A0(U1_enc_tree_0__1__90_), .A1(n38), .B0(
        U1_enc_tree_0__1__94_), .Y(U1_enc_tree_0__2__92_) );
  AOI21X2 U1_UEN0_0_1_26 ( .A0(a[52]), .A1(U1_or2_inv_0__106_), .B0(a[54]), 
        .Y(U1_enc_tree_0__1__106_) );
  AOI21X2 U1_UEN0_0_1_28 ( .A0(a[60]), .A1(U1_or2_inv_0__114_), .B0(a[62]), 
        .Y(U1_enc_tree_0__1__114_) );
  AOI21X2 U1_UEN0_0_1_29 ( .A0(a[64]), .A1(U1_or2_inv_0__118_), .B0(a[66]), 
        .Y(U1_enc_tree_0__1__118_) );
  AOI21X2 U1_UEN0_0_1_30 ( .A0(a[68]), .A1(U1_or2_inv_0__122_), .B0(a[70]), 
        .Y(U1_enc_tree_0__1__122_) );
  NOR2X8 U1_UORT0_1_32 ( .A(a[11]), .B(a[12]), .Y(U1_or_tree_1__64_) );
  NAND2X1 U1_UOR21_0_2_8 ( .A(U1_or2_tree_0__1__64_), .B(U1_or2_tree_0__1__68_), .Y(U1_or2_tree_0__2__64_) );
  NOR2X4 U1_UOR20_0_1_17 ( .A(a[17]), .B(a[15]), .Y(U1_or2_tree_0__1__68_) );
  NOR2X8 U1_UORT0_1_35 ( .A(a[17]), .B(a[18]), .Y(U1_or_tree_1__70_) );
  NOR2X8 U1_UORT0_1_34 ( .A(a[15]), .B(a[16]), .Y(U1_or_tree_1__68_) );
  NOR2X8 U1_UORT0_1_37 ( .A(a[21]), .B(a[22]), .Y(U1_or_tree_1__74_) );
  NOR2X8 U1_UORT0_1_38 ( .A(a[23]), .B(a[24]), .Y(U1_or_tree_1__76_) );
  OAI21X4 U1_UEN1_0_2_7 ( .A0(U1_enc_tree_0__1__58_), .A1(U1_or2_inv_0__60_), 
        .B0(U1_enc_tree_0__1__62_), .Y(U1_enc_tree_0__2__60_) );
  NOR2X8 U1_UOR20_1_3_5 ( .A(U1_or2_tree_1__2__80_), .B(U1_or2_tree_1__2__88_), 
        .Y(U1_or2_tree_1__3__80_) );
  NAND2X4 U1_UOR21_3_4_1 ( .A(1'b1), .B(U1_or_tree_3__48_), .Y(
        U1_or2_tree_3__4__32_) );
  NOR2X4 U1_UOR20_0_1_14 ( .A(a[3]), .B(a[5]), .Y(U1_or2_tree_0__1__56_) );
  NAND2X2 U1_UOR21_1_2_10 ( .A(U1_or_tree_1__80_), .B(U1_or_tree_1__84_), .Y(
        U1_or2_tree_1__2__80_) );
  NAND2X8 U1_UORT1_2_28 ( .A(U1_or_tree_1__112_), .B(U1_or_tree_1__114_), .Y(
        U1_or_tree_2__112_) );
  NAND2X6 U1_UORT1_2_27 ( .A(U1_or_tree_1__108_), .B(U1_or_tree_1__110_), .Y(
        U1_or_tree_2__108_) );
  NAND2X6 U1_UORT1_2_31 ( .A(n40), .B(U1_or_tree_1__126_), .Y(
        U1_or_tree_2__124_) );
  NOR2X8 U1_UORT0_1_50 ( .A(a[47]), .B(a[48]), .Y(U1_or_tree_1__100_) );
  NOR2X8 U1_UORT0_3_9 ( .A(U1_or_tree_2__72_), .B(U1_or_tree_2__76_), .Y(
        U1_or_tree_3__72_) );
  NOR2X8 U1_UOR20_1_3_6 ( .A(U1_or2_tree_1__2__104_), .B(U1_or2_tree_1__2__96_), .Y(U1_or2_tree_1__3__96_) );
  AOI21X4 U1_UEN0_0_1_24 ( .A0(a[44]), .A1(U1_or2_inv_0__98_), .B0(a[46]), .Y(
        U1_enc_tree_0__1__98_) );
  NAND2X4 U1_UOR21_1_2_12 ( .A(U1_or_tree_1__96_), .B(U1_or_tree_1__100_), .Y(
        U1_or2_tree_1__2__96_) );
  AOI21X2 U1_UEN0_0_1_27 ( .A0(U1_or2_inv_0__110_), .A1(a[56]), .B0(a[58]), 
        .Y(U1_enc_tree_0__1__110_) );
  NOR2X6 U1_UORT0_1_58 ( .A(a[63]), .B(a[64]), .Y(U1_or_tree_1__116_) );
  AOI21X2 U1_UEN0_0_1_31 ( .A0(a[72]), .A1(U1_or2_inv_0__126_), .B0(a[74]), 
        .Y(U1_enc_tree_0__1__126_) );
  NAND2X6 U1_UOR21_1_2_14 ( .A(n13), .B(U1_or_tree_1__116_), .Y(
        U1_or2_tree_1__2__112_) );
  NOR2X6 U1_UORT0_1_30 ( .A(a[7]), .B(a[8]), .Y(U1_or_tree_1__60_) );
  NOR2X8 U1_UORT0_1_31 ( .A(a[9]), .B(a[10]), .Y(U1_or_tree_1__62_) );
  NAND2X8 U1_UOR21_1_2_15 ( .A(n43), .B(U1_or_tree_1__124_), .Y(
        U1_or2_tree_1__2__120_) );
  NOR2X8 U1_UORT0_1_36 ( .A(a[19]), .B(a[20]), .Y(U1_or_tree_1__72_) );
  NAND2X6 U1_UORT1_2_29 ( .A(n41), .B(U1_or_tree_1__118_), .Y(
        U1_or_tree_2__116_) );
  NAND2X6 U1_UOR21_1_4_3 ( .A(U1_or2_tree_1__3__96_), .B(
        U1_or2_tree_1__3__112_), .Y(U1_or2_tree_1__4__96_) );
  NOR2X4 U1_UORT0_1_46 ( .A(a[39]), .B(a[40]), .Y(U1_or_tree_1__92_) );
  NOR2X4 U1_UOR20_0_1_13 ( .A(1'b0), .B(a[1]), .Y(U1_or2_tree_0__1__52_) );
  NOR2X6 U1_UOR20_2_3_5 ( .A(U1_or_tree_2__80_), .B(U1_or_tree_2__88_), .Y(
        U1_or2_tree_2__3__80_) );
  NOR2X4 U1_UORT0_3_7 ( .A(U1_or_tree_2__56_), .B(U1_or_tree_2__60_), .Y(
        U1_or_tree_3__56_) );
  NAND2X4 U1_UORT1_4_3 ( .A(U1_or_tree_3__56_), .B(U1_or_tree_3__48_), .Y(
        U1_or_tree_4__48_) );
  NOR2X6 U1_UORT0_5_1 ( .A(1'b0), .B(U1_or_tree_4__48_), .Y(U1_or_tree_5__32_)
         );
  NOR2X6 U1_UOR20_0_1_19 ( .A(a[23]), .B(a[25]), .Y(U1_or2_tree_0__1__76_) );
  CLKINVX6 U1 ( .A(U1_enc_tree_2__3__56_), .Y(U1_enc_tree_2__4__48_) );
  CLKINVX6 U2 ( .A(U1_enc_tree_0__1__54_), .Y(U1_enc_tree_0__2__52_) );
  CLKINVX6 U3 ( .A(n54), .Y(U1_enc_tree_1__5__32_) );
  OR2X6 U4 ( .A(a[31]), .B(a[33]), .Y(net60757) );
  INVX2 U5 ( .A(a[33]), .Y(U1_or2_inv_0__86_) );
  NAND2X8 U6 ( .A(n19), .B(n66), .Y(n18) );
  INVX6 U7 ( .A(U1_or_tree_1__68_), .Y(U1_or2_inv_1__68_) );
  AOI21X4 U8 ( .A0(U1_or2_inv_1__120_), .A1(U1_enc_tree_1__2__116_), .B0(
        U1_enc_tree_1__2__124_), .Y(n57) );
  CLKINVX2 U9 ( .A(U1_or2_tree_1__2__120_), .Y(U1_or2_inv_1__120_) );
  NAND2X6 U10 ( .A(U1_or_tree_1__104_), .B(U1_or_tree_1__106_), .Y(
        U1_or_tree_2__104_) );
  NAND2X2 U11 ( .A(U1_or2_tree_0__1__88_), .B(U1_or2_tree_0__1__92_), .Y(
        U1_or2_tree_0__2__88_) );
  OAI2BB1X4 U12 ( .A0N(U1_enc_tree_1__2__100_), .A1N(U1_or2_inv_1__104_), .B0(
        n50), .Y(n63) );
  CLKINVX3 U13 ( .A(U1_or2_tree_1__2__104_), .Y(U1_or2_inv_1__104_) );
  NAND2X1 U14 ( .A(U1_or2_tree_0__1__96_), .B(U1_or2_tree_0__1__100_), .Y(
        U1_or2_tree_0__2__96_) );
  AOI21X4 U15 ( .A0(U1_or2_inv_2__120_), .A1(U1_or_tree_2__116_), .B0(
        U1_or_tree_2__124_), .Y(U1_enc_tree_2__3__120_) );
  NAND2BX4 U16 ( .AN(n68), .B(net60728), .Y(U1_or2_tree_0__2__80_) );
  CLKINVX2 U17 ( .A(net60757), .Y(net60728) );
  NAND3BX4 U18 ( .AN(U1_or_tree_2__96_), .B(n2), .C(U1_or2_tree_2__3__112_), 
        .Y(U1_or2_tree_2__4__96_) );
  CLKINVX3 U19 ( .A(U1_or_tree_2__104_), .Y(n2) );
  OAI21X4 U20 ( .A0(U1_or2_inv_0__80_), .A1(U1_enc_tree_0__3__72_), .B0(
        U1_enc_tree_0__3__88_), .Y(net61539) );
  INVX2 U21 ( .A(U1_or2_tree_0__3__80_), .Y(U1_or2_inv_0__80_) );
  NAND2X6 U22 ( .A(U1_or_tree_3__112_), .B(U1_or_tree_3__120_), .Y(
        U1_or_tree_4__112_) );
  NOR2X1 U23 ( .A(U1_or2_tree_0__2__64_), .B(U1_or2_tree_0__2__72_), .Y(
        U1_or2_tree_0__3__64_) );
  NAND2X2 U24 ( .A(U1_or2_tree_0__3__96_), .B(U1_or2_tree_0__3__112_), .Y(n3)
         );
  CLKINVX3 U25 ( .A(n3), .Y(net61538) );
  NAND3BX4 U26 ( .AN(U1_or2_tree_2__4__96_), .B(U1_or2_tree_2__3__64_), .C(
        U1_or2_tree_2__3__80_), .Y(n6) );
  AND2X4 U27 ( .A(U1_or_tree_1__72_), .B(U1_or_tree_1__74_), .Y(n8) );
  AOI21X4 U28 ( .A0(U1_or2_inv_1__88_), .A1(U1_enc_tree_1__2__84_), .B0(
        U1_enc_tree_1__2__92_), .Y(n66) );
  INVX3 U29 ( .A(U1_or2_tree_1__2__88_), .Y(U1_or2_inv_1__88_) );
  AOI21X2 U30 ( .A0(U1_or2_inv_2__56_), .A1(U1_or_tree_2__52_), .B0(
        U1_or_tree_2__60_), .Y(U1_enc_tree_2__3__56_) );
  AND4X4 U31 ( .A(U1_or2_tree_0__3__64_), .B(U1_or2_tree_0__3__80_), .C(
        U1_or2_tree_0__3__96_), .D(U1_or2_tree_0__3__112_), .Y(
        U1_or2_tree_0__5__64_) );
  NAND2X4 U32 ( .A(n42), .B(U1_or_tree_1__60_), .Y(U1_or2_tree_1__2__56_) );
  NAND2BX4 U33 ( .AN(a[47]), .B(n23), .Y(n58) );
  NAND3BX4 U34 ( .AN(a[19]), .B(U1_or2_inv_0__74_), .C(U1_or2_tree_0__1__76_), 
        .Y(U1_or2_tree_0__2__72_) );
  AOI21X2 U35 ( .A0(U1_or2_inv_4__96_), .A1(U1_or_tree_4__80_), .B0(
        U1_or_tree_4__112_), .Y(U1_enc_tree_4__5__96_) );
  INVX2 U36 ( .A(U1_or_tree_2__104_), .Y(U1_or2_inv_2__104_) );
  CLKINVX4 U37 ( .A(U1_or_tree_2__56_), .Y(U1_or2_inv_2__56_) );
  NOR2X6 U38 ( .A(n59), .B(U1_or_tree_1__58_), .Y(n51) );
  INVX4 U39 ( .A(a[1]), .Y(U1_or2_inv_0__54_) );
  NAND2X6 U40 ( .A(U1_or_tree_1__72_), .B(U1_or_tree_1__74_), .Y(
        U1_or_tree_2__72_) );
  NOR2X4 U41 ( .A(a[35]), .B(a[36]), .Y(n9) );
  CLKINVX6 U42 ( .A(U1_or2_tree_1__2__72_), .Y(U1_or2_inv_1__72_) );
  NAND2X2 U43 ( .A(n26), .B(n27), .Y(n31) );
  INVX2 U44 ( .A(a[13]), .Y(U1_or2_inv_0__66_) );
  INVX1 U45 ( .A(a[37]), .Y(U1_or2_inv_0__90_) );
  INVX3 U46 ( .A(a[73]), .Y(U1_or2_inv_0__126_) );
  INVX2 U47 ( .A(U1_or_tree_3__112_), .Y(U1_or2_inv_3__112_) );
  CLKINVX6 U48 ( .A(n67), .Y(n16) );
  OA21X4 U49 ( .A0(n69), .A1(U1_enc_tree_4__5__32_), .B0(U1_enc_tree_4__5__96_), .Y(enc[4]) );
  OA21X4 U50 ( .A0(U1_or_tree_5__32_), .A1(U1_or2_inv_5__64_), .B0(
        U1_or_tree_5__96_), .Y(enc[5]) );
  OR2X8 U51 ( .A(U1_or2_tree_3__4__64_), .B(U1_or2_tree_3__4__96_), .Y(n7) );
  AND2X6 U52 ( .A(n24), .B(n25), .Y(U1_enc_tree_0__1__62_) );
  NOR2X6 U53 ( .A(a[59]), .B(a[60]), .Y(n13) );
  INVX8 U54 ( .A(U1_or_tree_5__64_), .Y(U1_or2_inv_5__64_) );
  INVX4 U55 ( .A(a[29]), .Y(U1_or2_inv_0__82_) );
  NOR2X8 U56 ( .A(a[67]), .B(a[68]), .Y(n43) );
  INVX4 U57 ( .A(a[21]), .Y(U1_or2_inv_0__74_) );
  NOR2X4 U58 ( .A(a[19]), .B(a[20]), .Y(n10) );
  INVX8 U59 ( .A(a[9]), .Y(U1_or2_inv_0__62_) );
  CLKINVX3 U60 ( .A(U1_or2_tree_0__1__60_), .Y(U1_or2_inv_0__60_) );
  OR2X4 U61 ( .A(a[31]), .B(a[32]), .Y(n11) );
  INVX4 U62 ( .A(a[25]), .Y(U1_or2_inv_0__78_) );
  NAND2X4 U63 ( .A(U1_or2_inv_0__62_), .B(a[8]), .Y(n24) );
  INVX3 U64 ( .A(a[41]), .Y(U1_or2_inv_0__94_) );
  CLKINVX6 U65 ( .A(U1_or_tree_2__92_), .Y(n20) );
  NOR2X2 U66 ( .A(U1_or2_tree_1__2__112_), .B(U1_or2_tree_1__2__120_), .Y(n12)
         );
  OR2X2 U67 ( .A(a[27]), .B(a[29]), .Y(n68) );
  INVX2 U68 ( .A(a[53]), .Y(U1_or2_inv_0__106_) );
  CLKINVX2 U69 ( .A(U1_or2_tree_1__4__96_), .Y(U1_or2_inv_1__96_) );
  CLKINVX3 U70 ( .A(U1_or_tree_2__88_), .Y(U1_or2_inv_2__88_) );
  AOI2BB1X4 U71 ( .A0N(a[49]), .A1N(n23), .B0(a[50]), .Y(
        U1_enc_tree_0__1__102_) );
  INVX4 U72 ( .A(U1_or2_tree_0__1__100_), .Y(U1_or2_inv_0__100_) );
  AO21X4 U73 ( .A0(a[32]), .A1(U1_or2_inv_0__86_), .B0(a[34]), .Y(n39) );
  INVX2 U74 ( .A(U1_or_tree_4__96_), .Y(U1_or2_inv_4__96_) );
  AOI2BB1X4 U75 ( .A0N(n70), .A1N(U1_or2_tree_2__4__96_), .B0(n14), .Y(
        U1_enc_tree_2__5__96_) );
  OAI21X4 U76 ( .A0(U1_enc_tree_2__3__104_), .A1(U1_or2_inv_2__112_), .B0(
        U1_enc_tree_2__3__120_), .Y(n14) );
  INVX2 U77 ( .A(a[61]), .Y(U1_or2_inv_0__114_) );
  INVX3 U78 ( .A(U1_or_tree_2__120_), .Y(U1_or2_inv_2__120_) );
  OAI2BB1X2 U79 ( .A0N(U1_or2_inv_0__70_), .A1N(a[16]), .B0(n22), .Y(n30) );
  CLKINVX3 U80 ( .A(a[17]), .Y(U1_or2_inv_0__70_) );
  OAI2BB1X4 U81 ( .A0N(U1_or2_inv_2__88_), .A1N(U1_or_tree_2__84_), .B0(n20), 
        .Y(n48) );
  NAND2X6 U82 ( .A(n15), .B(n16), .Y(n17) );
  AND2X8 U83 ( .A(n17), .B(n65), .Y(enc[1]) );
  INVX4 U84 ( .A(U1_enc_tree_1__5__32_), .Y(n15) );
  OAI21X4 U85 ( .A0(n58), .A1(n46), .B0(U1_or_tree_1__102_), .Y(
        U1_enc_tree_1__2__100_) );
  NOR2X2 U86 ( .A(a[45]), .B(a[46]), .Y(n46) );
  INVX6 U87 ( .A(U1_or_tree_3__48_), .Y(U1_or2_inv_3__48_) );
  CLKINVX6 U88 ( .A(a[48]), .Y(n23) );
  NAND2X6 U89 ( .A(n64), .B(U1_or2_tree_1__3__80_), .Y(n19) );
  OAI2BB1X4 U90 ( .A0N(n55), .A1N(n21), .B0(U1_or_tree_1__94_), .Y(
        U1_enc_tree_1__2__92_) );
  INVX3 U91 ( .A(U1_or_tree_1__90_), .Y(n21) );
  INVX1 U92 ( .A(a[18]), .Y(n22) );
  NAND3BX4 U93 ( .AN(U1_or2_tree_1__4__96_), .B(U1_or2_tree_1__3__64_), .C(
        U1_or2_tree_1__3__80_), .Y(n67) );
  NAND2X8 U94 ( .A(U1_or_tree_3__104_), .B(U1_or_tree_3__96_), .Y(
        U1_or_tree_4__96_) );
  NOR2X8 U95 ( .A(a[26]), .B(a[25]), .Y(U1_or_tree_1__78_) );
  OAI21X4 U96 ( .A0(U1_or2_tree_0__2__104_), .A1(n34), .B0(n35), .Y(n36) );
  NAND2X6 U97 ( .A(U1_or_tree_1__104_), .B(U1_or_tree_1__108_), .Y(
        U1_or2_tree_1__2__104_) );
  NOR2X8 U98 ( .A(a[33]), .B(a[34]), .Y(U1_or_tree_1__86_) );
  OAI31X2 U99 ( .A0(U1_or_tree_1__74_), .A1(a[24]), .A2(a[23]), .B0(
        U1_or_tree_1__78_), .Y(U1_enc_tree_1__2__76_) );
  CLKINVX1 U100 ( .A(a[10]), .Y(n25) );
  NAND2X2 U101 ( .A(U1_or2_inv_0__74_), .B(a[20]), .Y(n26) );
  INVX1 U102 ( .A(a[22]), .Y(n27) );
  OA21X4 U103 ( .A0(net49577), .A1(U1_or2_tree_0__2__72_), .B0(net49578), .Y(
        U1_enc_tree_0__3__72_) );
  AOI21X4 U104 ( .A0(n31), .A1(U1_or2_tree_0__1__76_), .B0(net60749), .Y(
        net49578) );
  AO21X4 U105 ( .A0(a[24]), .A1(U1_or2_inv_0__78_), .B0(a[26]), .Y(net60749)
         );
  AOI21X4 U106 ( .A0(n29), .A1(n28), .B0(n30), .Y(net49577) );
  CLKINVX8 U107 ( .A(U1_or2_inv_0__68_), .Y(n28) );
  INVX4 U108 ( .A(U1_or2_tree_0__1__68_), .Y(U1_or2_inv_0__68_) );
  AO21X4 U109 ( .A0(a[12]), .A1(U1_or2_inv_0__66_), .B0(a[14]), .Y(n29) );
  NOR2X8 U110 ( .A(a[15]), .B(a[16]), .Y(net61820) );
  OAI2BB1X4 U111 ( .A0N(net54061), .A1N(U1_or2_tree_0__5__64_), .B0(
        U1_enc_tree_0__5__96_), .Y(U1_enc_tree_0__6__64_) );
  INVX12 U112 ( .A(U1_enc_tree_0__6__64_), .Y(enc[0]) );
  AOI21X4 U113 ( .A0(net61539), .A1(net61538), .B0(U1_enc_tree_0__4__112_), 
        .Y(U1_enc_tree_0__5__96_) );
  OAI2BB1X4 U114 ( .A0N(n36), .A1N(U1_or2_tree_0__3__112_), .B0(
        U1_enc_tree_0__3__120_), .Y(U1_enc_tree_0__4__112_) );
  OA21X4 U115 ( .A0(n32), .A1(U1_or2_tree_0__2__120_), .B0(n33), .Y(
        U1_enc_tree_0__3__120_) );
  OA21X4 U116 ( .A0(U1_enc_tree_0__1__122_), .A1(U1_or2_inv_0__124_), .B0(
        U1_enc_tree_0__1__126_), .Y(n33) );
  INVX1 U117 ( .A(U1_or2_tree_0__1__124_), .Y(U1_or2_inv_0__124_) );
  INVX3 U118 ( .A(a[69]), .Y(U1_or2_inv_0__122_) );
  OA21X4 U119 ( .A0(U1_enc_tree_0__1__114_), .A1(U1_or2_inv_0__116_), .B0(
        U1_enc_tree_0__1__118_), .Y(n32) );
  INVX3 U120 ( .A(a[65]), .Y(U1_or2_inv_0__118_) );
  CLKINVX1 U121 ( .A(U1_or2_tree_0__1__116_), .Y(U1_or2_inv_0__116_) );
  OA21X4 U122 ( .A0(U1_enc_tree_0__1__106_), .A1(U1_or2_inv_0__108_), .B0(
        U1_enc_tree_0__1__110_), .Y(n35) );
  INVX4 U123 ( .A(a[57]), .Y(U1_or2_inv_0__110_) );
  INVX1 U124 ( .A(U1_or2_tree_0__1__108_), .Y(U1_or2_inv_0__108_) );
  OA21X4 U125 ( .A0(U1_enc_tree_0__1__98_), .A1(U1_or2_inv_0__100_), .B0(
        U1_enc_tree_0__1__102_), .Y(n34) );
  INVX3 U126 ( .A(a[45]), .Y(U1_or2_inv_0__98_) );
  AOI2BB1X4 U127 ( .A0N(n37), .A1N(U1_or2_tree_0__2__88_), .B0(
        U1_enc_tree_0__2__92_), .Y(U1_enc_tree_0__3__88_) );
  OR2X4 U128 ( .A(a[39]), .B(a[41]), .Y(n38) );
  AOI2BB1X4 U129 ( .A0N(U1_enc_tree_0__1__82_), .A1N(net60757), .B0(n39), .Y(
        n37) );
  NOR2X8 U130 ( .A(a[71]), .B(a[72]), .Y(n40) );
  NOR2X8 U131 ( .A(a[63]), .B(a[64]), .Y(n41) );
  NOR2X6 U132 ( .A(a[3]), .B(a[4]), .Y(n42) );
  INVX4 U133 ( .A(a[5]), .Y(U1_or2_inv_0__58_) );
  NOR2X2 U134 ( .A(a[69]), .B(a[70]), .Y(n45) );
  OR2X8 U135 ( .A(a[55]), .B(a[56]), .Y(n44) );
  INVX2 U136 ( .A(n41), .Y(U1_or2_inv_1__116_) );
  AOI21X4 U137 ( .A0(n47), .A1(U1_or2_tree_2__3__80_), .B0(n48), .Y(n70) );
  AO21X4 U138 ( .A0(U1_or_tree_2__68_), .A1(n8), .B0(U1_or_tree_2__76_), .Y(
        n47) );
  OA21X4 U139 ( .A0(U1_enc_tree_3__5__32_), .A1(n7), .B0(U1_enc_tree_3__5__96_), .Y(enc[3]) );
  INVX4 U140 ( .A(U1_or_tree_1__62_), .Y(n52) );
  OA21X4 U141 ( .A0(n44), .A1(U1_or_tree_1__106_), .B0(U1_or_tree_1__110_), 
        .Y(n50) );
  NOR2X6 U142 ( .A(n51), .B(n52), .Y(n62) );
  OA21X4 U143 ( .A0(U1_enc_tree_2__5__32_), .A1(n6), .B0(U1_enc_tree_2__5__96_), .Y(enc[2]) );
  OAI21X4 U144 ( .A0(net50686), .A1(U1_or2_tree_1__2__56_), .B0(n62), .Y(n54)
         );
  NOR2X8 U145 ( .A(a[39]), .B(a[40]), .Y(n55) );
  OR2X8 U146 ( .A(U1_or_tree_4__64_), .B(U1_or_tree_4__96_), .Y(n69) );
  OR2X8 U147 ( .A(U1_or_tree_2__80_), .B(U1_or_tree_2__84_), .Y(n56) );
  OAI2BB1X4 U148 ( .A0N(n12), .A1N(n63), .B0(n57), .Y(U1_enc_tree_1__4__112_)
         );
  INVX4 U149 ( .A(U1_or2_tree_2__3__112_), .Y(U1_or2_inv_2__112_) );
  OR2X8 U150 ( .A(a[7]), .B(a[8]), .Y(n59) );
  NAND2BX4 U151 ( .AN(a[0]), .B(net50686), .Y(U1_or_tree_2__52_) );
  AOI21X4 U154 ( .A0(n18), .A1(U1_or2_inv_1__96_), .B0(U1_enc_tree_1__4__112_), 
        .Y(n65) );
  AO21X4 U155 ( .A0(U1_enc_tree_1__2__68_), .A1(U1_or2_inv_1__72_), .B0(
        U1_enc_tree_1__2__76_), .Y(n64) );
  INVX3 U156 ( .A(n40), .Y(U1_or2_inv_1__124_) );
  AOI2BB1X4 U157 ( .A0N(1'b1), .A1N(U1_or2_tree_3__4__32_), .B0(
        U1_enc_tree_3__4__48_), .Y(U1_enc_tree_3__5__32_) );
  AO21X4 U158 ( .A0(1'b0), .A1(n72), .B0(U1_enc_tree_0__4__48_), .Y(net54061)
         );
  CLKAND2X3 U159 ( .A(1'b1), .B(U1_or2_tree_0__3__48_), .Y(n72) );
  OA21X4 U160 ( .A0(U1_or_tree_3__72_), .A1(n56), .B0(U1_or_tree_3__88_), .Y(
        n71) );
  AOI2BB1X4 U161 ( .A0N(n71), .A1N(U1_or2_tree_3__4__96_), .B0(
        U1_enc_tree_3__4__112_), .Y(U1_enc_tree_3__5__96_) );
  AOI2BB1X4 U162 ( .A0N(1'b1), .A1N(U1_or2_tree_2__4__32_), .B0(
        U1_enc_tree_2__4__48_), .Y(U1_enc_tree_2__5__32_) );
  CLKINVX8 U163 ( .A(U1_or_tree_6__64_), .Y(enc[6]) );
  INVX4 U164 ( .A(U1_or2_tree_0__3__48_), .Y(U1_or2_inv_0__48_) );
  INVX4 U165 ( .A(U1_or2_tree_0__2__56_), .Y(U1_or2_inv_0__56_) );
endmodule


module add_stage_DW01_sub_1 ( B, DIFF );
  input [74:0] B;
  output [74:0] DIFF;
  wire   n4, n5, n8, n9, n10, n11, n13, n15, n16, n17, n18, n21, n23, n24, n25,
         n26, n27, n32, n33, n34, n37, n39, n40, n41, n42, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n61, n62, n63, n64, n65, n66, n67, n68,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n112, n113, n114, n115,
         n116, n119, n120, n121, n122, n123, n124, n126, n127, n128, n130,
         n131, n132, n133, n134, n135, n136, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n154,
         n156, n157, n158, n159, n160, n163, n164, n165, n166, n167, n168,
         n169, n170, n172, n173, n174, n175, n176, n177, n178, n181, n182,
         n183, n184, n185, n186, n188, n189, n190, n191, n192, n193, n194,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n223, n224, n225, n227, n228, n229, n230, n231, n232,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n269,
         n270, n271, n272, n273, n274, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539;

  NOR2X4 U352 ( .A(n181), .B(n173), .Y(n172) );
  NOR2X4 U353 ( .A(n260), .B(n257), .Y(n256) );
  NAND2X1 U354 ( .A(n538), .B(n115), .Y(n114) );
  NOR2X1 U355 ( .A(n194), .B(n176), .Y(n175) );
  BUFX12 U356 ( .A(n241), .Y(n536) );
  AND4X8 U357 ( .A(n238), .B(n235), .C(n228), .D(n223), .Y(n221) );
  AND4X4 U358 ( .A(n221), .B(n197), .C(n243), .D(n261), .Y(n507) );
  AND4X4 U359 ( .A(n258), .B(n253), .C(n248), .D(n245), .Y(n243) );
  AND4X4 U360 ( .A(n156), .B(n148), .C(n138), .D(n130), .Y(n128) );
  NOR2X2 U361 ( .A(n220), .B(n215), .Y(n214) );
  INVXL U362 ( .A(n216), .Y(n215) );
  AND3X2 U363 ( .A(n164), .B(n138), .C(n146), .Y(n136) );
  NOR2X1 U364 ( .A(n220), .B(n203), .Y(n202) );
  INVX4 U365 ( .A(n221), .Y(n220) );
  NAND2X1 U366 ( .A(n190), .B(n524), .Y(n186) );
  AND2X1 U367 ( .A(n221), .B(n209), .Y(n207) );
  NAND2BX1 U368 ( .AN(B[66]), .B(n39), .Y(n505) );
  INVX1 U369 ( .A(n505), .Y(n515) );
  INVX3 U370 ( .A(n40), .Y(n39) );
  NAND2X2 U371 ( .A(n506), .B(n102), .Y(n101) );
  NAND2BX2 U372 ( .AN(n32), .B(n26), .Y(n25) );
  NOR3X1 U373 ( .A(n194), .B(n181), .C(n173), .Y(n170) );
  AND4X2 U374 ( .A(n538), .B(n516), .C(n92), .D(n84), .Y(n78) );
  NAND2X1 U375 ( .A(n238), .B(n235), .Y(n232) );
  NAND2XL U376 ( .A(n84), .B(n77), .Y(n76) );
  AND2X4 U377 ( .A(n516), .B(n526), .Y(n124) );
  INVX6 U378 ( .A(n127), .Y(n526) );
  NAND2X1 U379 ( .A(n164), .B(n159), .Y(n158) );
  NAND2X2 U380 ( .A(n534), .B(n21), .Y(n532) );
  AND4X8 U381 ( .A(n41), .B(n33), .C(n23), .D(n15), .Y(n13) );
  NAND2X2 U382 ( .A(n70), .B(n58), .Y(n57) );
  INVX1 U383 ( .A(n530), .Y(n58) );
  OR3X4 U384 ( .A(n242), .B(n232), .C(n227), .Y(n225) );
  NOR2BX2 U385 ( .AN(n154), .B(n194), .Y(n152) );
  NOR2BX4 U386 ( .AN(n39), .B(n4), .Y(n37) );
  NOR2X4 U387 ( .A(B[30]), .B(B[31]), .Y(n199) );
  INVX8 U388 ( .A(n537), .Y(n516) );
  NAND2X2 U389 ( .A(n538), .B(n108), .Y(n107) );
  NOR2X2 U390 ( .A(n194), .B(n163), .Y(n160) );
  CLKINVX3 U391 ( .A(n101), .Y(n100) );
  NOR2X1 U392 ( .A(n194), .B(n181), .Y(n178) );
  NAND2X2 U393 ( .A(n538), .B(n123), .Y(n122) );
  NOR2X1 U394 ( .A(n194), .B(n168), .Y(n167) );
  INVX3 U395 ( .A(n182), .Y(n181) );
  AND2X6 U396 ( .A(n120), .B(n112), .Y(n506) );
  INVX4 U397 ( .A(n127), .Y(n126) );
  NOR2X4 U398 ( .A(B[42]), .B(B[43]), .Y(n148) );
  NAND2X1 U399 ( .A(n56), .B(n538), .Y(n55) );
  NAND2X6 U400 ( .A(n164), .B(n128), .Y(n127) );
  CLKAND2X4 U401 ( .A(n534), .B(n515), .Y(n34) );
  CLKAND2X4 U402 ( .A(n534), .B(n514), .Y(n42) );
  XOR2X1 U403 ( .A(n213), .B(B[26]), .Y(DIFF[26]) );
  XNOR2X2 U404 ( .A(n134), .B(B[46]), .Y(DIFF[46]) );
  AND2X4 U405 ( .A(n102), .B(n94), .Y(n508) );
  BUFX16 U406 ( .A(n194), .Y(n535) );
  XNOR2X4 U407 ( .A(n142), .B(B[44]), .Y(DIFF[44]) );
  NOR2X2 U408 ( .A(n537), .B(n143), .Y(n142) );
  AND2X2 U409 ( .A(n538), .B(n509), .Y(n116) );
  NOR2BX4 U410 ( .AN(n120), .B(n537), .Y(n509) );
  NAND2X2 U411 ( .A(n172), .B(n169), .Y(n168) );
  NAND2X2 U412 ( .A(n63), .B(n538), .Y(n62) );
  NOR2X4 U413 ( .A(n91), .B(n64), .Y(n63) );
  XNOR2X4 U414 ( .A(n61), .B(B[61]), .Y(DIFF[61]) );
  NOR2X4 U415 ( .A(n62), .B(n535), .Y(n61) );
  NOR2X2 U416 ( .A(B[18]), .B(B[19]), .Y(n235) );
  XNOR2X4 U417 ( .A(n24), .B(B[69]), .Y(DIFF[69]) );
  NOR2X2 U418 ( .A(n4), .B(n25), .Y(n24) );
  NAND2X1 U419 ( .A(n538), .B(n105), .Y(n104) );
  NOR2X2 U420 ( .A(n537), .B(n135), .Y(n134) );
  CLKAND2X2 U421 ( .A(n164), .B(n156), .Y(n154) );
  NOR2X8 U422 ( .A(n183), .B(n165), .Y(n164) );
  NAND2X1 U423 ( .A(n75), .B(n538), .Y(n74) );
  XNOR2X4 U424 ( .A(n139), .B(B[45]), .Y(DIFF[45]) );
  NOR2X2 U425 ( .A(n140), .B(n537), .Y(n139) );
  NAND2X1 U426 ( .A(n87), .B(n538), .Y(n86) );
  XNOR2X4 U427 ( .A(n85), .B(B[57]), .Y(DIFF[57]) );
  NOR2X4 U428 ( .A(n86), .B(n535), .Y(n85) );
  INVX1 U429 ( .A(n91), .Y(n90) );
  NAND2X2 U430 ( .A(n53), .B(n70), .Y(n52) );
  CLKINVX12 U431 ( .A(n71), .Y(n70) );
  NAND2X2 U432 ( .A(n536), .B(n231), .Y(n230) );
  INVXL U433 ( .A(n232), .Y(n231) );
  NOR2X2 U434 ( .A(n230), .B(n513), .Y(n229) );
  INVXL U435 ( .A(B[41]), .Y(n510) );
  INVX2 U436 ( .A(n510), .Y(n511) );
  XOR2X1 U437 ( .A(n239), .B(B[17]), .Y(DIFF[17]) );
  NOR2X8 U438 ( .A(B[68]), .B(B[69]), .Y(n23) );
  INVX12 U439 ( .A(n92), .Y(n91) );
  NAND2X1 U440 ( .A(n538), .B(n100), .Y(n99) );
  XNOR2X4 U441 ( .A(n131), .B(n518), .Y(DIFF[47]) );
  NOR2X2 U442 ( .A(n132), .B(n537), .Y(n131) );
  INVXL U443 ( .A(B[20]), .Y(n512) );
  INVX2 U444 ( .A(n512), .Y(n513) );
  XNOR2X2 U445 ( .A(n152), .B(B[42]), .Y(DIFF[42]) );
  XNOR2X4 U446 ( .A(n54), .B(B[62]), .Y(DIFF[62]) );
  XNOR2X4 U447 ( .A(n78), .B(B[58]), .Y(DIFF[58]) );
  NOR2X1 U448 ( .A(n194), .B(n186), .Y(n185) );
  NOR2X2 U449 ( .A(n99), .B(n535), .Y(n98) );
  NOR2X2 U450 ( .A(n91), .B(n71), .Y(n68) );
  NOR2X2 U451 ( .A(n67), .B(n535), .Y(n66) );
  NAND2X1 U452 ( .A(n68), .B(n538), .Y(n67) );
  NOR2X1 U453 ( .A(n194), .B(B[32]), .Y(n193) );
  NOR2X1 U454 ( .A(n194), .B(n189), .Y(n188) );
  XNOR2X2 U455 ( .A(n249), .B(B[13]), .Y(DIFF[13]) );
  XNOR2X4 U456 ( .A(n42), .B(B[65]), .Y(DIFF[65]) );
  NOR2X8 U457 ( .A(B[64]), .B(B[65]), .Y(n41) );
  XNOR2X2 U458 ( .A(n246), .B(B[15]), .Y(DIFF[15]) );
  NOR2X1 U459 ( .A(n109), .B(B[52]), .Y(n105) );
  CLKINVX3 U460 ( .A(n506), .Y(n109) );
  NOR2X2 U461 ( .A(n104), .B(n535), .Y(n103) );
  NAND2X2 U462 ( .A(n214), .B(n536), .Y(n213) );
  NOR2X8 U463 ( .A(B[24]), .B(B[25]), .Y(n216) );
  XNOR2X2 U464 ( .A(n66), .B(B[60]), .Y(DIFF[60]) );
  XNOR2X2 U465 ( .A(n175), .B(B[37]), .Y(DIFF[37]) );
  NOR2X8 U466 ( .A(B[66]), .B(B[67]), .Y(n33) );
  XNOR2X4 U467 ( .A(n34), .B(B[67]), .Y(DIFF[67]) );
  INVX2 U468 ( .A(n136), .Y(n135) );
  NAND2X1 U469 ( .A(n538), .B(n97), .Y(n96) );
  NAND2X1 U470 ( .A(n538), .B(n90), .Y(n89) );
  XOR2X2 U471 ( .A(n4), .B(B[64]), .Y(DIFF[64]) );
  INVX4 U472 ( .A(B[64]), .Y(n514) );
  NOR2X2 U473 ( .A(n91), .B(n76), .Y(n75) );
  NOR2X2 U474 ( .A(n96), .B(n535), .Y(n95) );
  XNOR2X4 U475 ( .A(n113), .B(B[51]), .Y(DIFF[51]) );
  NOR2X4 U476 ( .A(n114), .B(n537), .Y(n113) );
  AND2X4 U477 ( .A(n534), .B(n13), .Y(n11) );
  CLKINVX6 U478 ( .A(n4), .Y(n534) );
  XNOR2X2 U479 ( .A(n149), .B(B[43]), .Y(DIFF[43]) );
  NOR2X1 U480 ( .A(n101), .B(B[54]), .Y(n97) );
  XNOR2X1 U481 ( .A(n170), .B(B[38]), .Y(DIFF[38]) );
  NOR2X2 U482 ( .A(n530), .B(B[62]), .Y(n53) );
  NOR2X4 U483 ( .A(B[16]), .B(B[17]), .Y(n238) );
  INVX4 U484 ( .A(n164), .Y(n163) );
  NOR2X6 U485 ( .A(B[41]), .B(B[40]), .Y(n156) );
  XNOR2X2 U486 ( .A(n193), .B(B[33]), .Y(DIFF[33]) );
  XNOR2X2 U487 ( .A(n229), .B(B[21]), .Y(DIFF[21]) );
  INVX2 U488 ( .A(n144), .Y(n143) );
  NOR2X6 U489 ( .A(B[38]), .B(B[39]), .Y(n166) );
  NOR2X2 U490 ( .A(n4), .B(n539), .Y(n5) );
  OR2X4 U491 ( .A(n9), .B(B[73]), .Y(n539) );
  NOR2X2 U492 ( .A(B[70]), .B(B[71]), .Y(n15) );
  XNOR2X2 U493 ( .A(n185), .B(B[35]), .Y(DIFF[35]) );
  NOR2X6 U494 ( .A(B[44]), .B(B[45]), .Y(n138) );
  NOR2X4 U495 ( .A(n122), .B(n537), .Y(n121) );
  XNOR2X4 U496 ( .A(n160), .B(B[40]), .Y(DIFF[40]) );
  XNOR2X4 U497 ( .A(n116), .B(B[50]), .Y(DIFF[50]) );
  NAND2X1 U498 ( .A(n154), .B(n151), .Y(n150) );
  NAND2X2 U499 ( .A(n182), .B(n177), .Y(n176) );
  NAND2X6 U500 ( .A(n41), .B(n33), .Y(n32) );
  BUFX20 U501 ( .A(n126), .Y(n538) );
  CLKINVX1 U502 ( .A(n109), .Y(n108) );
  NOR2X4 U503 ( .A(n107), .B(n537), .Y(n106) );
  NOR2X1 U504 ( .A(n91), .B(B[56]), .Y(n87) );
  INVXL U505 ( .A(B[47]), .Y(n517) );
  INVX2 U506 ( .A(n517), .Y(n518) );
  NAND2X1 U507 ( .A(n70), .B(n65), .Y(n64) );
  INVX8 U508 ( .A(n261), .Y(n260) );
  CLKXOR2X2 U509 ( .A(n237), .B(n523), .Y(DIFF[18]) );
  NAND2X4 U510 ( .A(n536), .B(n238), .Y(n237) );
  XNOR2X2 U511 ( .A(n264), .B(B[7]), .Y(DIFF[7]) );
  NOR2X1 U512 ( .A(n265), .B(B[6]), .Y(n264) );
  INVX6 U513 ( .A(n270), .Y(n269) );
  NAND2X4 U514 ( .A(n271), .B(n274), .Y(n270) );
  CLKINVX6 U515 ( .A(n210), .Y(n209) );
  NAND2X6 U516 ( .A(n216), .B(n211), .Y(n210) );
  NOR2X2 U517 ( .A(n4), .B(n32), .Y(n27) );
  XOR2X1 U518 ( .A(n225), .B(B[22]), .Y(DIFF[22]) );
  NOR2X8 U519 ( .A(B[48]), .B(B[49]), .Y(n120) );
  CLKINVX1 U520 ( .A(B[48]), .Y(n123) );
  NOR2X2 U521 ( .A(n89), .B(n535), .Y(n88) );
  NOR2X2 U522 ( .A(n55), .B(n535), .Y(n54) );
  NOR2X2 U523 ( .A(n4), .B(n17), .Y(n16) );
  NOR2X1 U524 ( .A(n4), .B(n9), .Y(n8) );
  NAND2X2 U525 ( .A(n536), .B(n219), .Y(n218) );
  NAND2X4 U526 ( .A(n13), .B(n10), .Y(n9) );
  INVXL U527 ( .A(B[4]), .Y(n519) );
  XOR2X2 U528 ( .A(n230), .B(n513), .Y(DIFF[20]) );
  INVXL U529 ( .A(B[28]), .Y(n520) );
  INVX2 U530 ( .A(n520), .Y(n521) );
  XNOR2X2 U531 ( .A(n8), .B(B[73]), .Y(DIFF[73]) );
  NAND2X1 U532 ( .A(n136), .B(n133), .Y(n132) );
  XNOR2X2 U533 ( .A(n11), .B(B[72]), .Y(DIFF[72]) );
  NOR2X2 U534 ( .A(n150), .B(n537), .Y(n149) );
  BUFX20 U535 ( .A(n194), .Y(n537) );
  XOR2X2 U536 ( .A(n201), .B(B[30]), .Y(DIFF[30]) );
  NOR2X2 U537 ( .A(n201), .B(B[30]), .Y(n200) );
  NAND2X1 U538 ( .A(n202), .B(n536), .Y(n201) );
  NAND2X2 U539 ( .A(n207), .B(n536), .Y(n206) );
  NOR2X2 U540 ( .A(n206), .B(n521), .Y(n205) );
  XNOR2X1 U541 ( .A(n178), .B(B[36]), .Y(DIFF[36]) );
  INVXL U542 ( .A(B[18]), .Y(n522) );
  INVX2 U543 ( .A(n522), .Y(n523) );
  XNOR2X2 U544 ( .A(n224), .B(B[23]), .Y(DIFF[23]) );
  XNOR2X2 U545 ( .A(n124), .B(B[48]), .Y(DIFF[48]) );
  XOR2X1 U546 ( .A(n206), .B(n521), .Y(DIFF[28]) );
  XNOR2X2 U547 ( .A(n103), .B(B[53]), .Y(DIFF[53]) );
  XNOR2X2 U548 ( .A(n95), .B(B[55]), .Y(DIFF[55]) );
  XNOR2X2 U549 ( .A(n106), .B(B[52]), .Y(DIFF[52]) );
  XOR2X4 U550 ( .A(n218), .B(B[24]), .Y(DIFF[24]) );
  XNOR2X2 U551 ( .A(n5), .B(B[74]), .Y(DIFF[74]) );
  INVXL U552 ( .A(B[34]), .Y(n524) );
  INVX1 U553 ( .A(n524), .Y(n525) );
  XNOR2X2 U554 ( .A(n88), .B(B[56]), .Y(DIFF[56]) );
  XNOR2X2 U555 ( .A(n37), .B(B[66]), .Y(DIFF[66]) );
  OR2X8 U556 ( .A(B[60]), .B(B[61]), .Y(n530) );
  NAND2BX4 U557 ( .AN(n32), .B(n23), .Y(n531) );
  XOR2X4 U558 ( .A(n532), .B(B[70]), .Y(DIFF[70]) );
  OR2X8 U559 ( .A(B[62]), .B(B[63]), .Y(n533) );
  NOR2BX4 U560 ( .AN(n507), .B(n533), .Y(n527) );
  CLKINVX6 U561 ( .A(n531), .Y(n21) );
  NAND3X8 U562 ( .A(n526), .B(n527), .C(n528), .Y(n4) );
  NAND2X6 U563 ( .A(n84), .B(n72), .Y(n71) );
  INVX8 U564 ( .A(n529), .Y(n92) );
  NOR3X8 U565 ( .A(n71), .B(n529), .C(n530), .Y(n528) );
  NAND2X8 U566 ( .A(n508), .B(n506), .Y(n529) );
  XNOR2X2 U567 ( .A(n121), .B(B[49]), .Y(DIFF[49]) );
  XNOR2X4 U568 ( .A(n98), .B(B[54]), .Y(DIFF[54]) );
  XNOR2X1 U569 ( .A(n217), .B(B[25]), .Y(DIFF[25]) );
  XNOR2X2 U570 ( .A(n236), .B(B[19]), .Y(DIFF[19]) );
  NOR2XL U571 ( .A(n237), .B(n523), .Y(n236) );
  XNOR2X2 U572 ( .A(n167), .B(B[39]), .Y(DIFF[39]) );
  NOR2X4 U573 ( .A(B[58]), .B(B[59]), .Y(n72) );
  XNOR2X4 U574 ( .A(n16), .B(B[71]), .Y(DIFF[71]) );
  XNOR2X2 U575 ( .A(n73), .B(B[59]), .Y(DIFF[59]) );
  NOR2X2 U576 ( .A(n74), .B(n535), .Y(n73) );
  INVX4 U577 ( .A(n251), .Y(n250) );
  NAND2X4 U578 ( .A(n251), .B(n248), .Y(n247) );
  NOR2X8 U579 ( .A(n260), .B(n252), .Y(n251) );
  XNOR2X4 U580 ( .A(n49), .B(B[63]), .Y(DIFF[63]) );
  NOR2X2 U581 ( .A(n50), .B(n535), .Y(n49) );
  XNOR2X2 U582 ( .A(n200), .B(B[31]), .Y(DIFF[31]) );
  NOR2X6 U583 ( .A(B[56]), .B(B[57]), .Y(n84) );
  XNOR2X2 U584 ( .A(n205), .B(B[29]), .Y(DIFF[29]) );
  XNOR2X2 U585 ( .A(n27), .B(B[68]), .Y(DIFF[68]) );
  INVX8 U586 ( .A(n507), .Y(n194) );
  XNOR2X2 U587 ( .A(n157), .B(n511), .Y(DIFF[41]) );
  NOR2X2 U588 ( .A(n194), .B(n158), .Y(n157) );
  NOR2X4 U589 ( .A(B[50]), .B(B[51]), .Y(n112) );
  NOR2X4 U590 ( .A(B[1]), .B(B[0]), .Y(n274) );
  CLKINVX1 U591 ( .A(n147), .Y(n146) );
  NOR2X1 U592 ( .A(n91), .B(n57), .Y(n56) );
  CLKINVX1 U593 ( .A(n183), .Y(n182) );
  XNOR2X1 U594 ( .A(n188), .B(n525), .Y(DIFF[34]) );
  NAND2X2 U595 ( .A(n258), .B(n253), .Y(n252) );
  NAND2X1 U596 ( .A(n256), .B(n255), .Y(n254) );
  INVXL U597 ( .A(n120), .Y(n119) );
  INVXL U598 ( .A(n228), .Y(n227) );
  CLKINVX2 U599 ( .A(n242), .Y(n241) );
  NAND2XL U600 ( .A(n269), .B(n266), .Y(n265) );
  INVXL U601 ( .A(n192), .Y(n191) );
  NOR2X2 U602 ( .A(B[8]), .B(B[9]), .Y(n258) );
  NOR2X1 U603 ( .A(n218), .B(B[24]), .Y(n217) );
  NOR2X1 U604 ( .A(n225), .B(B[22]), .Y(n224) );
  INVXL U605 ( .A(B[40]), .Y(n159) );
  NOR2X4 U606 ( .A(B[20]), .B(B[21]), .Y(n228) );
  NOR2X4 U607 ( .A(B[12]), .B(B[13]), .Y(n248) );
  NOR2X2 U608 ( .A(B[10]), .B(B[11]), .Y(n253) );
  NOR2X2 U609 ( .A(B[4]), .B(B[5]), .Y(n266) );
  XNOR2XL U610 ( .A(n256), .B(B[10]), .Y(DIFF[10]) );
  INVXL U611 ( .A(B[42]), .Y(n151) );
  NOR2XL U612 ( .A(n260), .B(B[8]), .Y(n259) );
  INVXL U613 ( .A(B[10]), .Y(n255) );
  NOR2X4 U614 ( .A(B[26]), .B(B[27]), .Y(n211) );
  NOR2X4 U615 ( .A(n262), .B(n270), .Y(n261) );
  NOR2X2 U616 ( .A(B[6]), .B(B[7]), .Y(n263) );
  XOR2XL U617 ( .A(n254), .B(B[11]), .Y(DIFF[11]) );
  XNOR2XL U618 ( .A(n272), .B(B[3]), .Y(DIFF[3]) );
  NOR2XL U619 ( .A(n273), .B(B[2]), .Y(n272) );
  NAND2XL U620 ( .A(n269), .B(n519), .Y(n267) );
  NAND2X1 U621 ( .A(n51), .B(n538), .Y(n50) );
  NOR2X1 U622 ( .A(n91), .B(n52), .Y(n51) );
  NAND2X1 U623 ( .A(n21), .B(n18), .Y(n17) );
  INVXL U624 ( .A(n274), .Y(n273) );
  NOR2X2 U625 ( .A(n163), .B(n145), .Y(n144) );
  INVX1 U626 ( .A(n146), .Y(n145) );
  INVXL U627 ( .A(n220), .Y(n219) );
  CLKINVX1 U628 ( .A(n190), .Y(n189) );
  INVX1 U629 ( .A(n174), .Y(n173) );
  NOR2X4 U630 ( .A(n210), .B(n198), .Y(n197) );
  NAND2X2 U631 ( .A(n204), .B(n199), .Y(n198) );
  CLKINVX1 U632 ( .A(n258), .Y(n257) );
  NAND2XL U633 ( .A(n209), .B(n204), .Y(n203) );
  CLKINVX1 U634 ( .A(n191), .Y(n190) );
  INVX1 U635 ( .A(n41), .Y(n40) );
  NOR2X4 U636 ( .A(B[28]), .B(B[29]), .Y(n204) );
  NOR2X2 U637 ( .A(B[36]), .B(B[37]), .Y(n174) );
  NOR2X2 U638 ( .A(B[32]), .B(B[33]), .Y(n192) );
  NOR2X2 U639 ( .A(B[22]), .B(B[23]), .Y(n223) );
  NAND2X2 U640 ( .A(n174), .B(n166), .Y(n165) );
  NOR2X4 U641 ( .A(B[47]), .B(B[46]), .Y(n130) );
  NAND2X1 U642 ( .A(n266), .B(n263), .Y(n262) );
  NAND2X4 U643 ( .A(n243), .B(n261), .Y(n242) );
  NOR2X2 U644 ( .A(B[14]), .B(B[15]), .Y(n245) );
  NOR2X1 U645 ( .A(n213), .B(B[26]), .Y(n212) );
  NOR2XL U646 ( .A(n247), .B(B[14]), .Y(n246) );
  NOR2XL U647 ( .A(n250), .B(B[12]), .Y(n249) );
  XNOR2XL U648 ( .A(n536), .B(B[16]), .Y(DIFF[16]) );
  XOR2XL U649 ( .A(n194), .B(B[32]), .Y(DIFF[32]) );
  XOR2XL U650 ( .A(n265), .B(B[6]), .Y(DIFF[6]) );
  XOR2XL U651 ( .A(n250), .B(B[12]), .Y(DIFF[12]) );
  XOR2XL U652 ( .A(n247), .B(B[14]), .Y(DIFF[14]) );
  XOR2XL U653 ( .A(n273), .B(B[2]), .Y(DIFF[2]) );
  XOR2XL U654 ( .A(n260), .B(B[8]), .Y(DIFF[8]) );
  XOR2XL U655 ( .A(n267), .B(B[5]), .Y(DIFF[5]) );
  XNOR2XL U656 ( .A(n259), .B(B[9]), .Y(DIFF[9]) );
  XNOR2X1 U657 ( .A(n212), .B(B[27]), .Y(DIFF[27]) );
  XNOR2XL U658 ( .A(n269), .B(B[4]), .Y(DIFF[4]) );
  NAND2X2 U659 ( .A(n156), .B(n148), .Y(n147) );
  NAND2X2 U660 ( .A(n192), .B(n184), .Y(n183) );
  NOR2X1 U661 ( .A(B[34]), .B(B[35]), .Y(n184) );
  INVXL U662 ( .A(B[38]), .Y(n169) );
  INVXL U663 ( .A(B[36]), .Y(n177) );
  INVXL U664 ( .A(B[46]), .Y(n133) );
  NAND2X1 U665 ( .A(n144), .B(n141), .Y(n140) );
  INVXL U666 ( .A(B[44]), .Y(n141) );
  NAND2X1 U667 ( .A(n536), .B(n240), .Y(n239) );
  INVXL U668 ( .A(B[16]), .Y(n240) );
  NOR2X4 U669 ( .A(B[52]), .B(B[53]), .Y(n102) );
  NOR2X4 U670 ( .A(B[54]), .B(B[55]), .Y(n94) );
  NOR2XL U671 ( .A(n119), .B(B[50]), .Y(n115) );
  INVXL U672 ( .A(B[60]), .Y(n65) );
  INVXL U673 ( .A(B[58]), .Y(n77) );
  INVXL U674 ( .A(B[70]), .Y(n18) );
  INVXL U675 ( .A(B[68]), .Y(n26) );
  NOR2X1 U676 ( .A(B[2]), .B(B[3]), .Y(n271) );
  CLKINVX1 U677 ( .A(B[72]), .Y(n10) );
  XOR2XL U678 ( .A(B[1]), .B(B[0]), .Y(DIFF[1]) );
  CLKBUFX2 U679 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module csa4_2_WIDTH27_5_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  ADDFXL L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFX2 U0_9 ( .A(b[9]), .B(a[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFHX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  CMPR32X2 U0_1 ( .A(c[1]), .B(b[1]), .C(a[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX1 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFHX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_5 ( .A(a[5]), .B(n3), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX2 U0_8 ( .A(b[8]), .B(a[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX2 U0_24 ( .A(b[24]), .B(a[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX2 U0_23 ( .A(c[23]), .B(n2), .CI(a[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFHX2 U0_3 ( .A(c[3]), .B(b[3]), .CI(a[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX2 U0_15 ( .A(c[15]), .B(b[15]), .CI(a[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX2 U0_6 ( .A(b[6]), .B(n1), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFX2 U0_21 ( .A(b[21]), .B(a[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFHX1 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX1 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX1 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX2 U0_2 ( .A(a[2]), .B(c[2]), .CI(b[2]), .CO(carry[3]), .S(sum[2]) );
  BUFX3 U1 ( .A(a[6]), .Y(n1) );
  BUFX3 U2 ( .A(b[23]), .Y(n2) );
  BUFX3 U3 ( .A(b[5]), .Y(n3) );
  XOR3X2 U4 ( .A(c[17]), .B(a[17]), .C(b[17]), .Y(sum[17]) );
  NAND2X1 U5 ( .A(b[17]), .B(c[17]), .Y(n4) );
  NAND2X1 U6 ( .A(a[17]), .B(c[17]), .Y(n5) );
  NAND2XL U7 ( .A(a[17]), .B(b[17]), .Y(n6) );
  NAND3X2 U8 ( .A(n4), .B(n5), .C(n6), .Y(carry[18]) );
  CLKBUFX3 U9 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_5_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;


  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25])
         );
  ADDFX2 L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFX2 U0_22 ( .A(c[22]), .B(b[22]), .CI(a[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFX2 U0_21 ( .A(c[21]), .B(b[21]), .CI(a[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFX2 U0_15 ( .A(c[15]), .B(b[15]), .CI(a[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11])
         );
  ADDFX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX1 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFHX1 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  CMPR32X2 U0_9 ( .A(a[9]), .B(b[9]), .C(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX4 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX2 U0_6 ( .A(c[6]), .B(b[6]), .CI(a[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  CMPR32X2 U0_7 ( .A(b[7]), .B(c[7]), .C(a[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_4_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5;

  ADDFXL L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFX1 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFX1 U0_17 ( .A(a[17]), .B(c[17]), .CI(b[17]), .CO(carry[18]), .S(sum[17])
         );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14])
         );
  ADDFX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFHX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFX1 U0_3 ( .A(a[3]), .B(c[3]), .CI(b[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX1 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  CMPR32X2 U0_2 ( .A(a[2]), .B(b[2]), .C(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFHX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_10 ( .A(b[10]), .B(a[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFHX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFX2 U0_5 ( .A(b[5]), .B(a[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFX2 U0_4 ( .A(b[4]), .B(a[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFX2 U0_6 ( .A(b[6]), .B(a[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFHX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  BUFX4 U1 ( .A(b[13]), .Y(n1) );
  CLKXOR2X4 U2 ( .A(n1), .B(c[13]), .Y(n2) );
  XOR2X4 U3 ( .A(a[13]), .B(n2), .Y(sum[13]) );
  NAND2XL U4 ( .A(n1), .B(a[13]), .Y(n3) );
  NAND2X1 U5 ( .A(c[13]), .B(a[13]), .Y(n4) );
  NAND2XL U6 ( .A(c[13]), .B(n1), .Y(n5) );
  NAND3X2 U7 ( .A(n3), .B(n4), .C(n5), .Y(carry[14]) );
  CLKBUFX3 U8 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_4_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5;

  ADDFXL L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25])
         );
  ADDFX2 U0_4 ( .A(c[4]), .B(b[4]), .CI(a[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFX1 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFX2 U0_3 ( .A(c[3]), .B(b[3]), .CI(a[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_13 ( .A(c[13]), .B(b[13]), .CI(a[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX1 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFX2 U0_22 ( .A(c[22]), .B(b[22]), .CI(a[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFHX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX1 U0_2 ( .A(b[2]), .B(a[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX1 L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFHX2 U0_6 ( .A(c[6]), .B(b[6]), .CI(a[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX4 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX4 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  NAND3X1 U1 ( .A(n3), .B(n4), .C(n5), .Y(carry[25]) );
  XOR2X2 U2 ( .A(a[24]), .B(n1), .Y(n2) );
  BUFX4 U3 ( .A(c[24]), .Y(n1) );
  XOR2X4 U4 ( .A(b[24]), .B(n2), .Y(sum[24]) );
  NAND2XL U5 ( .A(a[24]), .B(b[24]), .Y(n3) );
  NAND2X1 U6 ( .A(n1), .B(b[24]), .Y(n4) );
  NAND2XL U7 ( .A(n1), .B(a[24]), .Y(n5) );
  CLKBUFX3 U8 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_3_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  ADDFXL L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  CMPR32X2 U0_24 ( .A(a[24]), .B(b[24]), .C(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX1 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFHX2 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX1 U0_16 ( .A(c[16]), .B(b[16]), .CI(a[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFX2 U0_18 ( .A(a[18]), .B(c[18]), .CI(b[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFX2 U0_15 ( .A(b[15]), .B(a[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFHX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX2 U0_2 ( .A(c[2]), .B(b[2]), .CI(a[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX4 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(n1), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  CMPR32X2 U0_17 ( .A(a[17]), .B(b[17]), .C(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFX2 U0_1 ( .A(a[1]), .B(c[1]), .CI(b[1]), .CO(carry[2]), .S(sum[1]) );
  CMPR32X2 U0_9 ( .A(a[9]), .B(b[9]), .C(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  BUFX4 U1 ( .A(c[3]), .Y(n1) );
  NAND3X1 U2 ( .A(n4), .B(n5), .C(n6), .Y(carry[14]) );
  XOR2X2 U3 ( .A(b[13]), .B(n3), .Y(sum[13]) );
  XOR2X1 U4 ( .A(a[13]), .B(c[13]), .Y(n3) );
  BUFX4 U5 ( .A(c[14]), .Y(n2) );
  NAND2XL U6 ( .A(a[13]), .B(b[13]), .Y(n4) );
  NAND2XL U7 ( .A(c[13]), .B(b[13]), .Y(n5) );
  NAND2XL U8 ( .A(c[13]), .B(a[13]), .Y(n6) );
  XOR3X1 U9 ( .A(a[14]), .B(n2), .C(b[14]), .Y(sum[14]) );
  NAND2X1 U10 ( .A(b[14]), .B(a[14]), .Y(n7) );
  NAND2X1 U11 ( .A(n2), .B(a[14]), .Y(n8) );
  NAND2X1 U12 ( .A(n2), .B(b[14]), .Y(n9) );
  NAND3X2 U13 ( .A(n7), .B(n8), .C(n9), .Y(carry[15]) );
  CLKBUFX3 U14 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_3_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;


  ADDFX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFX2 L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_12 ( .A(c[12]), .B(b[12]), .CI(a[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFHX2 U0_13 ( .A(b[13]), .B(a[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX2 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX2 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_2_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;


  ADDFXL L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFXL U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25])
         );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFX1 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFX1 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX1 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX1 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFX1 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFHX1 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFX1 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX1 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFX1 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX2 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  CMPR32X2 U0_8 ( .A(a[8]), .B(b[8]), .C(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX1 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14])
         );
  ADDFX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  CMPR32X2 U0_17 ( .A(a[17]), .B(b[17]), .C(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_2_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;


  ADDFXL L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX1 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFX1 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFX1 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFHX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX1 L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFX1 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFHX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX1 U0_8 ( .A(b[8]), .B(a[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX1 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25])
         );
  ADDFHX2 U0_12 ( .A(c[12]), .B(b[12]), .CI(a[12]), .CO(carry[13]), .S(sum[12]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_1_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;
  wire   n1, n2, n3;

  ADDFXL L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFX2 U0_3 ( .A(b[3]), .B(a[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_24 ( .A(b[24]), .B(a[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX2 U0_19 ( .A(c[19]), .B(b[19]), .CI(a[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFHX2 U0_17 ( .A(a[17]), .B(n3), .CI(c[17]), .CO(carry[18]), .S(sum[17])
         );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  CMPR32X2 U0_8 ( .A(a[8]), .B(b[8]), .C(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFHX1 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFHX1 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX1 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFX1 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11])
         );
  ADDFHX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX2 U0_23 ( .A(a[23]), .B(n1), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFHX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX2 U0_10 ( .A(a[10]), .B(n2), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFX2 U0_5 ( .A(b[5]), .B(c[5]), .CI(a[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFHX2 U0_22 ( .A(b[22]), .B(a[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  BUFX3 U1 ( .A(b[23]), .Y(n1) );
  BUFX3 U2 ( .A(b[10]), .Y(n2) );
  BUFX3 U3 ( .A(b[17]), .Y(n3) );
  CLKBUFX3 U4 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_1_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;


  ADDFX2 L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  CMPR32X2 U0_9 ( .A(a[9]), .B(b[9]), .C(c[9]), .CO(carry[10]), .S(sum[9]) );
  CMPR32X2 U0_6 ( .A(c[6]), .B(b[6]), .C(a[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFHX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX4 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX2 U0_13 ( .A(c[13]), .B(b[13]), .CI(a[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX4 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_0_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;


  ADDFXL L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFXL U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25])
         );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX1 U0_21 ( .A(b[21]), .B(a[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX1 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX1 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFHX1 U0_13 ( .A(a[13]), .B(c[13]), .CI(b[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFX1 U0_4 ( .A(b[4]), .B(a[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX1 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX1 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX1 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFX1 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX2 U0_23 ( .A(a[23]), .B(c[23]), .CI(b[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFX1 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFX2 U0_5 ( .A(b[5]), .B(a[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  CMPR32X2 U0_3 ( .A(a[3]), .B(b[3]), .C(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX1 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX1 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH27_0_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  output [26:0] carry;
  output [26:0] sum;
  input ci;
  output co;


  ADDFX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFX1 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX1 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFX1 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX1 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFX1 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17])
         );
  ADDFX1 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX1 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX1 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  CMPR32X2 U0_20 ( .A(a[20]), .B(b[20]), .C(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11])
         );
  ADDFX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14])
         );
  ADDFX1 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFX1 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 L3 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(co), .S(sum[26]) );
  ADDFHX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_10 ( .A(c[10]), .B(b[10]), .CI(a[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFHX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX4 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX2 U0_19 ( .A(c[19]), .B(b[19]), .CI(a[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX2 U0_6 ( .A(c[6]), .B(b[6]), .CI(a[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFX1 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX4 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH32_2_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  output [31:0] carry;
  output [31:0] sum;
  input ci;
  output co;


  ADDFXL L3 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(co), .S(sum[31]) );
  ADDFX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27])
         );
  ADDFX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26])
         );
  ADDFX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFX2 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFX2 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29])
         );
  ADDFX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14])
         );
  ADDFX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFX2 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30])
         );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFHX4 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28]) );
  ADDFHX4 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX4 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX4 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX4 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX4 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX4 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX4 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX2 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH32_2_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  output [31:0] carry;
  output [31:0] sum;
  input ci;
  output co;


  ADDFX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30])
         );
  ADDFX2 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28])
         );
  ADDFX2 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27])
         );
  ADDFX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26])
         );
  ADDFX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFX2 U0_21 ( .A(a[21]), .B(c[21]), .CI(b[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 L3 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(co), .S(sum[31]) );
  ADDFX2 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29])
         );
  ADDFHX4 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX4 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX4 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 U0_13 ( .A(c[13]), .B(b[13]), .CI(a[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX4 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX4 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX4 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX4 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX4 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX4 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX4 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH32_1_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  output [31:0] carry;
  output [31:0] sum;
  input ci;
  output co;


  ADDFXL L3 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(co), .S(sum[31]) );
  ADDFX2 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27])
         );
  ADDFX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFX2 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFHX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX4 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX4 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFHX4 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14])
         );
  ADDFHX4 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFHX4 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX4 U0_16 ( .A(c[16]), .B(b[16]), .CI(a[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX4 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX1 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX2 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29]) );
  ADDFHX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX4 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH32_1_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  output [31:0] carry;
  output [31:0] sum;
  input ci;
  output co;


  ADDFXL L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26])
         );
  ADDFX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19])
         );
  ADDFX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17])
         );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFX1 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28])
         );
  ADDFX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFX2 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX4 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX1 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX1 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX4 L3 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(co), .S(sum[31]) );
  ADDFHX4 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX2 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27]) );
  ADDFHX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX1 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFX2 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29])
         );
  ADDFHX4 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH32_0_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  output [31:0] carry;
  output [31:0] sum;
  input ci;
  output co;


  ADDFXL L3 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(co), .S(sum[31]) );
  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27])
         );
  ADDFX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25])
         );
  ADDFX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22])
         );
  ADDFX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21])
         );
  ADDFX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11])
         );
  ADDFX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFX2 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFX2 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30])
         );
  ADDFX1 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29])
         );
  ADDFX2 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28])
         );
  ADDFX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX1 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23])
         );
  ADDFHX4 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX4 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFHX4 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX4 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH32_0_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  output [31:0] carry;
  output [31:0] sum;
  input ci;
  output co;


  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFXL L3 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(co), .S(sum[31]) );
  ADDFX2 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16])
         );
  ADDFX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14])
         );
  ADDFX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13])
         );
  ADDFX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12])
         );
  ADDFX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10])
         );
  ADDFX1 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX1 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX1 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29])
         );
  ADDFX1 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX2 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28])
         );
  ADDFHX4 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX4 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24])
         );
  ADDFHX4 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27]) );
  ADDFHX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX4 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX4 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX4 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX4 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX4 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX2 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX1 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFHX4 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX4 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH50_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [49:0] a;
  input [49:0] b;
  input [49:0] c;
  output [49:0] carry;
  output [49:0] sum;
  input ci;
  output co;
  wire   n1, n2;

  XOR3X1 U0_47 ( .A(a[47]), .B(b[47]), .C(c[47]), .Y(sum[47]) );
  ADDFX2 U0_38 ( .A(a[38]), .B(b[38]), .CI(c[38]), .CO(carry[39]), .S(sum[38])
         );
  ADDFX2 U0_46 ( .A(a[46]), .B(b[46]), .CI(c[46]), .CO(carry[47]), .S(sum[46])
         );
  ADDFX1 U0_43 ( .A(a[43]), .B(b[43]), .CI(c[43]), .CO(carry[44]), .S(sum[43])
         );
  ADDFX1 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX2 U0_45 ( .A(a[45]), .B(b[45]), .CI(c[45]), .CO(carry[46]), .S(sum[45]) );
  ADDFHX2 U0_44 ( .A(a[44]), .B(b[44]), .CI(c[44]), .CO(carry[45]), .S(sum[44]) );
  ADDFHX4 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX4 U0_23 ( .A(c[23]), .B(b[23]), .CI(a[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX2 U0_36 ( .A(a[36]), .B(b[36]), .CI(c[36]), .CO(carry[37]), .S(sum[36]) );
  ADDFHX2 U0_33 ( .A(a[33]), .B(b[33]), .CI(c[33]), .CO(carry[34]), .S(sum[33]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 U0_35 ( .A(c[35]), .B(b[35]), .CI(a[35]), .CO(carry[36]), .S(sum[35]) );
  ADDFHX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFHX4 U0_41 ( .A(a[41]), .B(b[41]), .CI(c[41]), .CO(carry[42]), .S(sum[41]) );
  ADDFHX2 U0_39 ( .A(a[39]), .B(b[39]), .CI(c[39]), .CO(carry[40]), .S(sum[39]) );
  ADDFHX4 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX4 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX4 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX4 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX4 U0_37 ( .A(a[37]), .B(b[37]), .CI(c[37]), .CO(carry[38]), .S(sum[37]) );
  ADDFHX2 U0_40 ( .A(a[40]), .B(b[40]), .CI(n2), .CO(carry[41]), .S(sum[40])
         );
  ADDFHX4 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX4 U0_24 ( .A(c[24]), .B(b[24]), .CI(a[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27]) );
  ADDFHX4 U0_12 ( .A(c[12]), .B(b[12]), .CI(a[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX4 U0_34 ( .A(a[34]), .B(b[34]), .CI(c[34]), .CO(carry[35]), .S(sum[34]) );
  ADDFHX4 U0_31 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(carry[32]), .S(sum[31]) );
  ADDFHX4 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX4 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28]) );
  ADDFHX4 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX4 U0_42 ( .A(a[42]), .B(b[42]), .CI(c[42]), .CO(carry[43]), .S(sum[42]) );
  ADDFHX4 U0_32 ( .A(a[32]), .B(b[32]), .CI(c[32]), .CO(carry[33]), .S(sum[32]) );
  ADDFHX4 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX4 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX4 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX4 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX4 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFHX2 U0_10 ( .A(c[10]), .B(b[10]), .CI(a[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  INVX4 U1 ( .A(c[40]), .Y(n1) );
  INVX4 U2 ( .A(n1), .Y(n2) );
  CLKBUFX3 U3 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH50_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [49:0] a;
  input [49:0] b;
  input [49:0] c;
  output [49:0] carry;
  output [49:0] sum;
  input ci;
  output co;


  XOR3X1 U0_47 ( .A(c[47]), .B(b[47]), .C(a[47]), .Y(sum[47]) );
  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11])
         );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX4 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX4 U0_45 ( .A(a[45]), .B(b[45]), .CI(c[45]), .CO(carry[46]), .S(sum[45]) );
  ADDFHX4 U0_28 ( .A(c[28]), .B(b[28]), .CI(a[28]), .CO(carry[29]), .S(sum[28]) );
  ADDFHX2 U0_31 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(carry[32]), .S(sum[31]) );
  ADDFHX2 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX2 U0_37 ( .A(a[37]), .B(b[37]), .CI(c[37]), .CO(carry[38]), .S(sum[37]) );
  ADDFHX4 U0_38 ( .A(c[38]), .B(b[38]), .CI(a[38]), .CO(carry[39]), .S(sum[38]) );
  ADDFHX4 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX4 U0_32 ( .A(a[32]), .B(b[32]), .CI(c[32]), .CO(carry[33]), .S(sum[32]) );
  ADDFHX2 U0_39 ( .A(a[39]), .B(b[39]), .CI(c[39]), .CO(carry[40]), .S(sum[39]) );
  ADDFHX4 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX4 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27]) );
  ADDFHX2 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFHX4 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX2 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX4 U0_35 ( .A(a[35]), .B(b[35]), .CI(c[35]), .CO(carry[36]), .S(sum[35]) );
  ADDFHX4 U0_33 ( .A(a[33]), .B(b[33]), .CI(c[33]), .CO(carry[34]), .S(sum[33]) );
  ADDFHX4 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX2 U0_40 ( .A(c[40]), .B(b[40]), .CI(a[40]), .CO(carry[41]), .S(sum[40]) );
  ADDFHX4 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFHX4 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX2 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29]) );
  ADDFHX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX4 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX4 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX2 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX4 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX4 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX2 U0_43 ( .A(a[43]), .B(b[43]), .CI(c[43]), .CO(carry[44]), .S(sum[43]) );
  ADDFHX4 U0_42 ( .A(a[42]), .B(b[42]), .CI(c[42]), .CO(carry[43]), .S(sum[42]) );
  ADDFHX4 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX2 U0_46 ( .A(a[46]), .B(b[46]), .CI(c[46]), .CO(carry[47]), .S(sum[46]) );
  ADDFHX2 U0_36 ( .A(a[36]), .B(b[36]), .CI(c[36]), .CO(carry[37]), .S(sum[36]) );
  ADDFHX2 U0_44 ( .A(a[44]), .B(b[44]), .CI(c[44]), .CO(carry[45]), .S(sum[44]) );
  ADDFHX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX2 U0_41 ( .A(a[41]), .B(b[41]), .CI(c[41]), .CO(carry[42]), .S(sum[41]) );
  ADDFHX2 U0_34 ( .A(c[34]), .B(b[34]), .CI(a[34]), .CO(carry[35]), .S(sum[34]) );
  CLKBUFX3 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module mul_24x24_DW01_csa_1 ( a, b, c, ci, carry, sum, co );
  input [40:0] a;
  input [40:0] b;
  input [40:0] c;
  output [40:0] carry;
  output [40:0] sum;
  input ci;
  output co;
  wire   n1, n2;

  ADDFXL L3 ( .A(a[40]), .B(b[40]), .CI(c[40]), .CO(co), .S(sum[40]) );
  ADDFX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFX2 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFX2 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX4 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX2 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX4 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX4 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX2 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX4 U0_20 ( .A(n2), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20])
         );
  ADDFHX4 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX4 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX2 U0_38 ( .A(a[38]), .B(b[38]), .CI(c[38]), .CO(carry[39]), .S(sum[38]) );
  ADDFHX4 U0_36 ( .A(a[36]), .B(b[36]), .CI(c[36]), .CO(carry[37]), .S(sum[36]) );
  ADDFHX4 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX4 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX2 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX2 U0_39 ( .A(a[39]), .B(b[39]), .CI(c[39]), .CO(carry[40]), .S(sum[39]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX4 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFHX4 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX4 U0_33 ( .A(a[33]), .B(b[33]), .CI(c[33]), .CO(carry[34]), .S(sum[33]) );
  ADDFHX4 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28]) );
  ADDFHX4 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX4 U0_31 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(carry[32]), .S(sum[31]) );
  ADDFHX4 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX4 U0_34 ( .A(a[34]), .B(b[34]), .CI(c[34]), .CO(carry[35]), .S(sum[34]) );
  ADDFHX4 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27]) );
  ADDFHX2 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29]) );
  ADDFHX4 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX2 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFHX4 U0_35 ( .A(a[35]), .B(b[35]), .CI(c[35]), .CO(carry[36]), .S(sum[35]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX4 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX2 U0_37 ( .A(a[37]), .B(b[37]), .CI(c[37]), .CO(carry[38]), .S(sum[37]) );
  ADDFHX4 U0_32 ( .A(a[32]), .B(b[32]), .CI(c[32]), .CO(carry[33]), .S(sum[32]) );
  CLKINVX6 U1 ( .A(a[20]), .Y(n1) );
  INVX6 U2 ( .A(n1), .Y(n2) );
  CLKBUFX3 U3 ( .A(c[0]), .Y(carry[0]) );
endmodule


module mul_24x24_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [40:0] a;
  input [40:0] b;
  input [40:0] c;
  output [40:0] carry;
  output [40:0] sum;
  input ci;
  output co;
  wire   n1, n2;

  ADDFXL L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFX2 U0_34 ( .A(a[34]), .B(b[34]), .CI(c[34]), .CO(carry[35]), .S(sum[34])
         );
  ADDFX2 U0_33 ( .A(a[33]), .B(b[33]), .CI(c[33]), .CO(carry[34]), .S(sum[33])
         );
  ADDFXL L3 ( .A(a[40]), .B(b[40]), .CI(c[40]), .CO(co), .S(sum[40]) );
  ADDFX2 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_36 ( .A(a[36]), .B(b[36]), .CI(c[36]), .CO(carry[37]), .S(sum[36]) );
  ADDFHX2 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX4 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX2 U0_15 ( .A(a[15]), .B(n2), .CI(c[15]), .CO(carry[16]), .S(sum[15])
         );
  ADDFHX2 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18])
         );
  ADDFX2 U0_31 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(carry[32]), .S(sum[31])
         );
  ADDFHX2 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX2 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFHX1 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFHX2 U0_38 ( .A(a[38]), .B(b[38]), .CI(c[38]), .CO(carry[39]), .S(sum[38]) );
  ADDFHX4 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX4 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX4 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27]) );
  ADDFHX4 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX4 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX2 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX4 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX4 U0_35 ( .A(a[35]), .B(b[35]), .CI(c[35]), .CO(carry[36]), .S(sum[35]) );
  ADDFHX4 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX2 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX4 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28]) );
  ADDFHX4 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX2 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX1 U0_39 ( .A(a[39]), .B(b[39]), .CI(c[39]), .CO(carry[40]), .S(sum[39]) );
  ADDFHX2 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX4 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX2 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFX2 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29])
         );
  ADDFHX2 U0_14 ( .A(b[14]), .B(a[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX1 U0_37 ( .A(a[37]), .B(b[37]), .CI(c[37]), .CO(carry[38]), .S(sum[37]) );
  ADDFHX2 U0_32 ( .A(a[32]), .B(b[32]), .CI(c[32]), .CO(carry[33]), .S(sum[32]) );
  CLKINVX6 U1 ( .A(b[15]), .Y(n1) );
  INVX6 U2 ( .A(n1), .Y(n2) );
  CLKBUFX3 U3 ( .A(c[0]), .Y(carry[0]) );
endmodule


module add_stage_DW01_csa_0 ( a, b, c, ci, carry, sum, co );
  input [47:0] a;
  input [47:0] b;
  input [47:0] c;
  output [47:0] carry;
  output [47:0] sum;
  input ci;
  output co;


  ADDFHX4 U0_45 ( .A(a[45]), .B(b[45]), .CI(c[45]), .CO(carry[46]), .S(sum[45]) );
  ADDFHX4 U0_31 ( .A(a[31]), .B(b[31]), .CI(c[31]), .CO(carry[32]), .S(sum[31]) );
  ADDFHX4 U0_30 ( .A(a[30]), .B(b[30]), .CI(c[30]), .CO(carry[31]), .S(sum[30]) );
  ADDFHX4 U0_29 ( .A(a[29]), .B(b[29]), .CI(c[29]), .CO(carry[30]), .S(sum[29]) );
  ADDFHX4 U0_28 ( .A(a[28]), .B(b[28]), .CI(c[28]), .CO(carry[29]), .S(sum[28]) );
  ADDFHX4 U0_27 ( .A(a[27]), .B(b[27]), .CI(c[27]), .CO(carry[28]), .S(sum[27]) );
  ADDFHX4 U0_26 ( .A(a[26]), .B(b[26]), .CI(c[26]), .CO(carry[27]), .S(sum[26]) );
  ADDFHX4 U0_24 ( .A(a[24]), .B(b[24]), .CI(c[24]), .CO(carry[25]), .S(sum[24]) );
  ADDFHX4 U0_23 ( .A(a[23]), .B(b[23]), .CI(c[23]), .CO(carry[24]), .S(sum[23]) );
  ADDFHX4 U0_22 ( .A(a[22]), .B(b[22]), .CI(c[22]), .CO(carry[23]), .S(sum[22]) );
  ADDFHX4 U0_21 ( .A(a[21]), .B(b[21]), .CI(c[21]), .CO(carry[22]), .S(sum[21]) );
  ADDFHX4 U0_20 ( .A(a[20]), .B(b[20]), .CI(c[20]), .CO(carry[21]), .S(sum[20]) );
  ADDFHX4 U0_15 ( .A(a[15]), .B(b[15]), .CI(c[15]), .CO(carry[16]), .S(sum[15]) );
  ADDFHX4 U0_14 ( .A(a[14]), .B(b[14]), .CI(c[14]), .CO(carry[15]), .S(sum[14]) );
  ADDFHX4 U0_13 ( .A(a[13]), .B(b[13]), .CI(c[13]), .CO(carry[14]), .S(sum[13]) );
  ADDFHX4 U0_12 ( .A(a[12]), .B(b[12]), .CI(c[12]), .CO(carry[13]), .S(sum[12]) );
  ADDFHX4 U0_11 ( .A(a[11]), .B(b[11]), .CI(c[11]), .CO(carry[12]), .S(sum[11]) );
  ADDFHX4 U0_10 ( .A(a[10]), .B(b[10]), .CI(c[10]), .CO(carry[11]), .S(sum[10]) );
  ADDFHX4 U0_9 ( .A(a[9]), .B(b[9]), .CI(c[9]), .CO(carry[10]), .S(sum[9]) );
  ADDFHX4 U0_8 ( .A(a[8]), .B(b[8]), .CI(c[8]), .CO(carry[9]), .S(sum[8]) );
  ADDFHX4 U0_7 ( .A(a[7]), .B(b[7]), .CI(c[7]), .CO(carry[8]), .S(sum[7]) );
  ADDFHX4 U0_6 ( .A(a[6]), .B(b[6]), .CI(c[6]), .CO(carry[7]), .S(sum[6]) );
  ADDFHX4 U0_5 ( .A(a[5]), .B(b[5]), .CI(c[5]), .CO(carry[6]), .S(sum[5]) );
  ADDFHX4 U0_4 ( .A(a[4]), .B(b[4]), .CI(c[4]), .CO(carry[5]), .S(sum[4]) );
  ADDFHX4 U0_3 ( .A(a[3]), .B(b[3]), .CI(c[3]), .CO(carry[4]), .S(sum[3]) );
  ADDFHX4 U0_1 ( .A(a[1]), .B(b[1]), .CI(c[1]), .CO(carry[2]), .S(sum[1]) );
  ADDFHX4 L1 ( .A(a[0]), .B(b[0]), .CI(ci), .CO(carry[1]), .S(sum[0]) );
  ADDFHX2 U0_41 ( .A(a[41]), .B(b[41]), .CI(c[41]), .CO(carry[42]), .S(sum[41]) );
  ADDFHX2 U0_33 ( .A(a[33]), .B(b[33]), .CI(c[33]), .CO(carry[34]), .S(sum[33]) );
  ADDFHX2 U0_35 ( .A(a[35]), .B(b[35]), .CI(c[35]), .CO(carry[36]), .S(sum[35]) );
  ADDFHX2 U0_34 ( .A(a[34]), .B(b[34]), .CI(c[34]), .CO(carry[35]), .S(sum[34]) );
  ADDFHX2 U0_37 ( .A(a[37]), .B(b[37]), .CI(c[37]), .CO(carry[38]), .S(sum[37]) );
  ADDFHX2 U0_38 ( .A(a[38]), .B(b[38]), .CI(c[38]), .CO(carry[39]), .S(sum[38]) );
  ADDFHX2 U0_39 ( .A(a[39]), .B(b[39]), .CI(c[39]), .CO(carry[40]), .S(sum[39]) );
  ADDFHX2 L3 ( .A(a[47]), .B(b[47]), .CI(c[47]), .CO(co), .S(sum[47]) );
  ADDFHX2 U0_42 ( .A(a[42]), .B(b[42]), .CI(c[42]), .CO(carry[43]), .S(sum[42]) );
  ADDFHX2 U0_43 ( .A(a[43]), .B(b[43]), .CI(c[43]), .CO(carry[44]), .S(sum[43]) );
  ADDFHX2 U0_25 ( .A(a[25]), .B(b[25]), .CI(c[25]), .CO(carry[26]), .S(sum[25]) );
  ADDFHX2 U0_36 ( .A(a[36]), .B(b[36]), .CI(c[36]), .CO(carry[37]), .S(sum[36]) );
  ADDFHX2 U0_40 ( .A(a[40]), .B(b[40]), .CI(c[40]), .CO(carry[41]), .S(sum[40]) );
  ADDFHX2 U0_18 ( .A(a[18]), .B(b[18]), .CI(c[18]), .CO(carry[19]), .S(sum[18]) );
  ADDFHX2 U0_19 ( .A(a[19]), .B(b[19]), .CI(c[19]), .CO(carry[20]), .S(sum[19]) );
  ADDFHX2 U0_32 ( .A(a[32]), .B(b[32]), .CI(c[32]), .CO(carry[33]), .S(sum[32]) );
  ADDFHX2 U0_16 ( .A(a[16]), .B(b[16]), .CI(c[16]), .CO(carry[17]), .S(sum[16]) );
  ADDFHX4 U0_17 ( .A(a[17]), .B(b[17]), .CI(c[17]), .CO(carry[18]), .S(sum[17]) );
  ADDFHX2 U0_2 ( .A(a[2]), .B(b[2]), .CI(c[2]), .CO(carry[3]), .S(sum[2]) );
  ADDFHX2 U0_44 ( .A(a[44]), .B(b[44]), .CI(c[44]), .CO(carry[45]), .S(sum[44]) );
  ADDFHX2 U0_46 ( .A(a[46]), .B(b[46]), .CI(c[46]), .CO(carry[47]), .S(sum[46]) );
  BUFX8 U1 ( .A(c[0]), .Y(carry[0]) );
endmodule


module csa4_2_WIDTH32_1 ( ci, a, b, c, d, sum, carry );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  input [31:0] d;
  output [32:0] sum;
  output [32:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_31_, sum_00_30_, sum_00_2_, sum_00_29_, sum_00_28_,
         sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_31_, carry_00_30_, carry_00_2_, carry_00_29_,
         carry_00_28_, carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_, n2;

  csa4_2_WIDTH32_1_DW01_csa_0 csa_inst1 ( .a({sum_00_31_, sum_00_30_, 
        sum_00_29_, sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, 
        sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, sum_00_18_, 
        sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, sum_00_12_, 
        sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, 
        sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, sum_00_0_}), 
        .b({carry_00_31_, carry_00_30_, carry_00_29_, carry_00_28_, 
        carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), .carry(
        carry[31:0]), .sum(sum[31:0]), .co(carry[32]) );
  csa4_2_WIDTH32_1_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c({c[31], n2, c[29:0]}), .ci(ci), .carry({carry_00_31_, carry_00_30_, carry_00_29_, carry_00_28_, 
        carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_31_, sum_00_30_, 
        sum_00_29_, sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, 
        sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, sum_00_18_, 
        sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, sum_00_12_, 
        sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, 
        sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, sum_00_0_}), 
        .co(sum[32]) );
  BUFX4 U3 ( .A(c[30]), .Y(n2) );
endmodule


module csa4_2_WIDTH32_0 ( ci, a, b, c, d, sum, carry );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  input [31:0] d;
  output [32:0] sum;
  output [32:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_31_, sum_00_30_, sum_00_2_, sum_00_29_, sum_00_28_,
         sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_31_, carry_00_30_, carry_00_2_, carry_00_29_,
         carry_00_28_, carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_;

  csa4_2_WIDTH32_0_DW01_csa_0 csa_inst1 ( .a({sum_00_31_, sum_00_30_, 
        sum_00_29_, sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, 
        sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, sum_00_18_, 
        sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, sum_00_12_, 
        sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, 
        sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, sum_00_0_}), 
        .b({carry_00_31_, carry_00_30_, carry_00_29_, carry_00_28_, 
        carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), .carry(
        carry[31:0]), .sum(sum[31:0]), .co(carry[32]) );
  csa4_2_WIDTH32_0_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), 
        .carry({carry_00_31_, carry_00_30_, carry_00_29_, carry_00_28_, 
        carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_31_, sum_00_30_, 
        sum_00_29_, sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, 
        sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, sum_00_18_, 
        sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, sum_00_12_, 
        sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, 
        sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, sum_00_0_}), 
        .co(sum[32]) );
endmodule


module csa4_2_WIDTH27_4 ( ci, a, b, c, d, sum, carry );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  input [26:0] d;
  output [27:0] sum;
  output [27:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_2_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_2_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_;

  csa4_2_WIDTH27_4_DW01_csa_0 csa_inst1 ( .a({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .b({carry_00_26_, carry_00_25_, carry_00_24_, 
        carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, 
        carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, 
        carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, 
        carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, 
        carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), 
        .carry(carry[26:0]), .sum(sum[26:0]), .co(carry[27]) );
  csa4_2_WIDTH27_4_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), 
        .carry({carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .co(sum[27]) );
endmodule


module csa4_2_WIDTH27_3 ( ci, a, b, c, d, sum, carry );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  input [26:0] d;
  output [27:0] sum;
  output [27:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_2_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_2_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_;

  csa4_2_WIDTH27_3_DW01_csa_0 csa_inst1 ( .a({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .b({carry_00_26_, carry_00_25_, carry_00_24_, 
        carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, 
        carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, 
        carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, 
        carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, 
        carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), 
        .carry(carry[26:0]), .sum(sum[26:0]), .co(carry[27]) );
  csa4_2_WIDTH27_3_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), 
        .carry({carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .co(sum[27]) );
endmodule


module csa4_2_WIDTH27_2 ( ci, a, b, c, d, sum, carry );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  input [26:0] d;
  output [27:0] sum;
  output [27:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_2_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_2_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_;

  csa4_2_WIDTH27_2_DW01_csa_0 csa_inst1 ( .a({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .b({carry_00_26_, carry_00_25_, carry_00_24_, 
        carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, 
        carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, 
        carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, 
        carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, 
        carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), 
        .carry(carry[26:0]), .sum(sum[26:0]), .co(carry[27]) );
  csa4_2_WIDTH27_2_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), 
        .carry({carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .co(sum[27]) );
endmodule


module csa4_2_WIDTH27_1 ( ci, a, b, c, d, sum, carry );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  input [26:0] d;
  output [27:0] sum;
  output [27:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_2_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_2_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_, n2;

  csa4_2_WIDTH27_1_DW01_csa_0 csa_inst1 ( .a({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .b({carry_00_26_, carry_00_25_, carry_00_24_, 
        carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, 
        carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, n2, 
        carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, 
        carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, 
        carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), 
        .carry(carry[26:0]), .sum(sum[26:0]), .co(carry[27]) );
  csa4_2_WIDTH27_1_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), 
        .carry({carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .co(sum[27]) );
  BUFX4 U3 ( .A(carry_00_14_), .Y(n2) );
endmodule


module csa4_2_WIDTH27_0 ( ci, a, b, c, d, sum, carry );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  input [26:0] d;
  output [27:0] sum;
  output [27:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_2_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_2_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_;

  csa4_2_WIDTH27_0_DW01_csa_0 csa_inst1 ( .a({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .b({carry_00_26_, carry_00_25_, carry_00_24_, 
        carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, 
        carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, 
        carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, 
        carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, 
        carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), 
        .carry(carry[26:0]), .sum(sum[26:0]), .co(carry[27]) );
  csa4_2_WIDTH27_0_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), 
        .carry({carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .co(sum[27]) );
endmodule


module unpackage_1 ( nj_mode, operand, s, exp_bias, exp, frac );
  input [31:0] operand;
  output [7:0] exp_bias;
  output [7:0] exp;
  output [23:0] frac;
  input nj_mode;
  output s;
  wire   net44573, net44580, net44584, net44588, net44589, net44590, net44591,
         net44592, net44593, net44594, net44595, net44596, net44597, net44599,
         net44601, net44602, net44605, net44606, net44607, net44608, net44609,
         net44610, net44624, net44625, net44626, net44627, net47640, net47639,
         net49300, net44576, net44575, net44586, net44578, net50675, net50558,
         net50557, net44585, n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n22, n23, n24, n25;

  NOR2X8 U3 ( .A(net47639), .B(net44599), .Y(frac[11]) );
  CLKINVX8 U4 ( .A(net47640), .Y(n1) );
  NOR2X8 U5 ( .A(net47639), .B(net44609), .Y(frac[1]) );
  NOR2X6 U6 ( .A(net47640), .B(net44590), .Y(frac[20]) );
  CLKAND2X3 U7 ( .A(n1), .B(operand[12]), .Y(frac[12]) );
  NOR3BX4 U8 ( .AN(n4), .B(n24), .C(net44573), .Y(n25) );
  NOR2X8 U9 ( .A(net47640), .B(net44601), .Y(frac[9]) );
  CLKAND2X3 U10 ( .A(n1), .B(operand[6]), .Y(frac[6]) );
  NAND2BX2 U11 ( .AN(net47640), .B(operand[10]), .Y(n2) );
  INVX3 U12 ( .A(n2), .Y(frac[10]) );
  AND2X2 U13 ( .A(n3), .B(operand[7]), .Y(frac[7]) );
  INVX1 U14 ( .A(net47640), .Y(n3) );
  OAI2BB1X2 U15 ( .A0N(net50557), .A1N(net50558), .B0(net50675), .Y(n5) );
  INVX4 U16 ( .A(operand[24]), .Y(net44584) );
  NOR2X6 U17 ( .A(net47639), .B(net44610), .Y(frac[0]) );
  NOR2X2 U18 ( .A(net47639), .B(net44608), .Y(frac[2]) );
  NOR2X2 U19 ( .A(net47639), .B(net44605), .Y(frac[5]) );
  NOR2X2 U20 ( .A(net47639), .B(net44607), .Y(frac[3]) );
  AND4X6 U21 ( .A(n4), .B(operand[24]), .C(operand[25]), .D(operand[26]), .Y(
        net44578) );
  OAI21X4 U22 ( .A0(n9), .A1(nj_mode), .B0(net44586), .Y(n7) );
  INVX20 U23 ( .A(operand[23]), .Y(net44586) );
  XOR2X4 U24 ( .A(n23), .B(exp_bias[3]), .Y(exp[3]) );
  INVX2 U25 ( .A(operand[26]), .Y(net44580) );
  BUFX3 U26 ( .A(operand[26]), .Y(exp_bias[3]) );
  INVXL U27 ( .A(exp[0]), .Y(exp_bias[0]) );
  NOR2X4 U28 ( .A(net44573), .B(exp[0]), .Y(n23) );
  NOR2X8 U29 ( .A(exp[0]), .B(net44584), .Y(n22) );
  NAND2X2 U30 ( .A(operand[24]), .B(operand[25]), .Y(net44573) );
  OAI21X4 U31 ( .A0(net44585), .A1(nj_mode), .B0(net44586), .Y(n4) );
  NOR2X4 U32 ( .A(net47639), .B(net44606), .Y(frac[4]) );
  NOR2X4 U33 ( .A(net47639), .B(net44602), .Y(frac[8]) );
  NOR3X6 U34 ( .A(operand[13]), .B(operand[14]), .C(operand[12]), .Y(n15) );
  INVX20 U35 ( .A(operand[9]), .Y(net44601) );
  NOR2X8 U36 ( .A(operand[21]), .B(operand[22]), .Y(n18) );
  NOR2X4 U37 ( .A(net47640), .B(net44596), .Y(frac[14]) );
  NOR2X8 U38 ( .A(operand[26]), .B(operand[25]), .Y(net44626) );
  NAND4X2 U39 ( .A(net44624), .B(net44625), .C(net44626), .D(net44627), .Y(
        frac[23]) );
  NOR3X6 U40 ( .A(operand[4]), .B(operand[5]), .C(operand[3]), .Y(n12) );
  NOR2X6 U41 ( .A(operand[30]), .B(operand[29]), .Y(net44624) );
  NOR2X4 U42 ( .A(net47640), .B(net44597), .Y(frac[13]) );
  AND4X6 U43 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(net50557) );
  NOR3X6 U44 ( .A(operand[16]), .B(operand[17]), .C(operand[15]), .Y(n16) );
  NOR2BX4 U45 ( .AN(nj_mode), .B(n5), .Y(net49300) );
  NOR2X8 U46 ( .A(operand[28]), .B(operand[27]), .Y(net44625) );
  NOR3X4 U47 ( .A(exp[0]), .B(net44573), .C(net44580), .Y(n10) );
  INVX8 U48 ( .A(n7), .Y(exp[0]) );
  OAI21X4 U49 ( .A0(net44585), .A1(nj_mode), .B0(net44586), .Y(n6) );
  OAI2BB1X4 U50 ( .A0N(net50557), .A1N(net50558), .B0(net50675), .Y(n9) );
  AND4X6 U51 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(net50558) );
  NOR3X6 U52 ( .A(operand[7]), .B(operand[8]), .C(operand[6]), .Y(n13) );
  NAND2X6 U53 ( .A(operand[27]), .B(net44578), .Y(net44575) );
  NOR2X2 U54 ( .A(net47640), .B(net44592), .Y(frac[18]) );
  OAI2BB1X4 U55 ( .A0N(net50557), .A1N(net50558), .B0(net50675), .Y(net44585)
         );
  NOR3X8 U56 ( .A(operand[19]), .B(operand[18]), .C(operand[20]), .Y(n17) );
  NOR3X4 U57 ( .A(operand[1]), .B(operand[2]), .C(operand[0]), .Y(n11) );
  NOR3X8 U58 ( .A(operand[10]), .B(operand[11]), .C(operand[9]), .Y(n14) );
  AND4X8 U59 ( .A(net44624), .B(net44625), .C(net44626), .D(net44627), .Y(
        net50675) );
  NOR2X8 U60 ( .A(operand[24]), .B(operand[23]), .Y(net44627) );
  XOR2X4 U61 ( .A(n10), .B(operand[27]), .Y(exp[4]) );
  XOR2X4 U62 ( .A(n19), .B(operand[29]), .Y(exp[6]) );
  NOR2X8 U63 ( .A(net44575), .B(net44576), .Y(n19) );
  CLKINVX1 U64 ( .A(operand[28]), .Y(net44576) );
  XOR2X4 U65 ( .A(net44575), .B(net44576), .Y(exp[5]) );
  NOR2X1 U66 ( .A(net47640), .B(net44595), .Y(frac[15]) );
  BUFX20 U67 ( .A(net49300), .Y(net47640) );
  NOR2X2 U68 ( .A(net47640), .B(net44588), .Y(frac[22]) );
  BUFX20 U69 ( .A(net47640), .Y(net47639) );
  INVX1 U70 ( .A(operand[0]), .Y(net44610) );
  INVX1 U71 ( .A(operand[13]), .Y(net44597) );
  INVX1 U72 ( .A(operand[4]), .Y(net44606) );
  INVX1 U73 ( .A(operand[22]), .Y(net44588) );
  INVX1 U74 ( .A(operand[14]), .Y(net44596) );
  INVX1 U75 ( .A(operand[18]), .Y(net44592) );
  INVX1 U76 ( .A(operand[15]), .Y(net44595) );
  INVX1 U77 ( .A(operand[11]), .Y(net44599) );
  NOR2XL U78 ( .A(net47640), .B(net44591), .Y(frac[19]) );
  INVX1 U79 ( .A(operand[19]), .Y(net44591) );
  BUFX8 U80 ( .A(operand[31]), .Y(s) );
  XOR2X4 U81 ( .A(n22), .B(operand[25]), .Y(exp[2]) );
  CLKINVX1 U82 ( .A(operand[3]), .Y(net44607) );
  XNOR2X2 U83 ( .A(n25), .B(operand[30]), .Y(exp[7]) );
  NAND4X2 U84 ( .A(operand[28]), .B(operand[29]), .C(operand[26]), .D(
        operand[27]), .Y(n24) );
  CLKINVX1 U85 ( .A(operand[1]), .Y(net44609) );
  NOR2X2 U86 ( .A(net47640), .B(net44593), .Y(frac[17]) );
  CLKINVX1 U87 ( .A(operand[17]), .Y(net44593) );
  CLKINVX1 U88 ( .A(operand[20]), .Y(net44590) );
  NOR2X2 U89 ( .A(net47640), .B(net44594), .Y(frac[16]) );
  CLKINVX1 U90 ( .A(operand[16]), .Y(net44594) );
  CLKINVX1 U91 ( .A(operand[8]), .Y(net44602) );
  CLKINVX1 U92 ( .A(operand[5]), .Y(net44605) );
  NOR2X2 U93 ( .A(net47640), .B(net44589), .Y(frac[21]) );
  CLKINVX1 U94 ( .A(operand[21]), .Y(net44589) );
  CLKINVX1 U95 ( .A(operand[2]), .Y(net44608) );
  BUFX2 U96 ( .A(operand[24]), .Y(exp_bias[1]) );
  BUFX2 U97 ( .A(operand[28]), .Y(exp_bias[5]) );
  BUFX2 U98 ( .A(operand[30]), .Y(exp_bias[7]) );
  BUFX2 U99 ( .A(operand[29]), .Y(exp_bias[6]) );
  BUFX2 U100 ( .A(operand[27]), .Y(exp_bias[4]) );
  BUFX2 U101 ( .A(operand[25]), .Y(exp_bias[2]) );
  XOR2X4 U102 ( .A(n6), .B(operand[24]), .Y(exp[1]) );
endmodule


module unpackage_0 ( nj_mode, operand, s, exp_bias, exp, frac );
  input [31:0] operand;
  output [7:0] exp_bias;
  output [7:0] exp;
  output [23:0] frac;
  input nj_mode;
  output s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57;

  NOR2BX4 U3 ( .AN(nj_mode), .B(n56), .Y(n8) );
  BUFX12 U4 ( .A(n8), .Y(n17) );
  BUFX12 U5 ( .A(n8), .Y(n18) );
  XOR2X4 U6 ( .A(n6), .B(operand[25]), .Y(exp[2]) );
  NOR2X2 U7 ( .A(n18), .B(n52), .Y(frac[20]) );
  NOR2X2 U8 ( .A(n17), .B(n35), .Y(frac[3]) );
  XOR2X4 U9 ( .A(n5), .B(operand[26]), .Y(exp[3]) );
  AND2X8 U10 ( .A(operand[25]), .B(n6), .Y(n5) );
  NOR2X4 U11 ( .A(operand[28]), .B(operand[27]), .Y(n21) );
  AND2X8 U12 ( .A(operand[24]), .B(exp_bias[0]), .Y(n6) );
  XOR2X4 U13 ( .A(exp_bias[0]), .B(operand[24]), .Y(exp[1]) );
  INVX3 U14 ( .A(exp_bias[0]), .Y(exp[0]) );
  AND2X8 U15 ( .A(operand[27]), .B(n7), .Y(n4) );
  CLKAND2X12 U16 ( .A(operand[28]), .B(n4), .Y(n3) );
  NOR2X8 U17 ( .A(operand[26]), .B(operand[25]), .Y(n20) );
  NAND2X6 U18 ( .A(operand[29]), .B(n3), .Y(n57) );
  XOR2X4 U19 ( .A(n7), .B(operand[27]), .Y(exp[4]) );
  NOR2X2 U20 ( .A(n17), .B(n32), .Y(frac[0]) );
  NOR2X2 U21 ( .A(n17), .B(n42), .Y(frac[10]) );
  NOR2X2 U22 ( .A(n17), .B(n37), .Y(frac[5]) );
  NOR2X2 U23 ( .A(n17), .B(n34), .Y(frac[2]) );
  NOR2X2 U24 ( .A(n17), .B(n40), .Y(frac[8]) );
  NOR2X2 U25 ( .A(n17), .B(n38), .Y(frac[6]) );
  NOR2X2 U26 ( .A(n17), .B(n41), .Y(frac[9]) );
  NAND4X4 U27 ( .A(n22), .B(n21), .C(n20), .D(n19), .Y(frac[23]) );
  NOR2X4 U28 ( .A(operand[24]), .B(operand[23]), .Y(n19) );
  XOR2X4 U29 ( .A(n3), .B(operand[29]), .Y(exp[6]) );
  CLKINVX1 U30 ( .A(operand[23]), .Y(n55) );
  AND2X8 U31 ( .A(operand[26]), .B(n5), .Y(n7) );
  BUFX4 U32 ( .A(operand[31]), .Y(s) );
  OAI2BB1X4 U33 ( .A0N(n1), .A1N(n2), .B0(n31), .Y(n56) );
  AND4X2 U34 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(n1) );
  AND4X2 U35 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(n2) );
  XOR2X4 U36 ( .A(n4), .B(operand[28]), .Y(exp[5]) );
  NOR2X2 U37 ( .A(operand[30]), .B(operand[29]), .Y(n22) );
  NOR3X2 U38 ( .A(operand[20]), .B(operand[18]), .C(operand[19]), .Y(n24) );
  NOR3X2 U39 ( .A(operand[17]), .B(operand[15]), .C(operand[16]), .Y(n25) );
  NOR3X2 U40 ( .A(operand[2]), .B(operand[0]), .C(operand[1]), .Y(n30) );
  NOR3X2 U41 ( .A(operand[14]), .B(operand[12]), .C(operand[13]), .Y(n26) );
  NOR3X2 U42 ( .A(operand[11]), .B(operand[9]), .C(operand[10]), .Y(n27) );
  NOR3X2 U43 ( .A(operand[8]), .B(operand[6]), .C(operand[7]), .Y(n28) );
  NOR3X2 U44 ( .A(operand[5]), .B(operand[3]), .C(operand[4]), .Y(n29) );
  NOR2X2 U45 ( .A(operand[21]), .B(operand[22]), .Y(n23) );
  BUFX2 U46 ( .A(operand[24]), .Y(exp_bias[1]) );
  NOR2X1 U47 ( .A(n18), .B(n47), .Y(frac[15]) );
  CLKINVX1 U48 ( .A(operand[15]), .Y(n47) );
  NOR2X1 U49 ( .A(n18), .B(n48), .Y(frac[16]) );
  CLKINVX1 U50 ( .A(operand[16]), .Y(n48) );
  NOR2X1 U51 ( .A(n18), .B(n46), .Y(frac[14]) );
  CLKINVX1 U52 ( .A(operand[14]), .Y(n46) );
  NOR2X1 U53 ( .A(n18), .B(n49), .Y(frac[17]) );
  CLKINVX1 U54 ( .A(operand[17]), .Y(n49) );
  NOR2X1 U55 ( .A(n18), .B(n54), .Y(frac[22]) );
  CLKINVX1 U56 ( .A(operand[22]), .Y(n54) );
  CLKINVX1 U57 ( .A(operand[3]), .Y(n35) );
  CLKINVX1 U58 ( .A(operand[6]), .Y(n38) );
  CLKINVX1 U59 ( .A(operand[9]), .Y(n41) );
  NOR2X1 U60 ( .A(n18), .B(n53), .Y(frac[21]) );
  CLKINVX1 U61 ( .A(operand[21]), .Y(n53) );
  NOR2X1 U62 ( .A(n18), .B(n51), .Y(frac[19]) );
  CLKINVX1 U63 ( .A(operand[19]), .Y(n51) );
  NOR2X1 U64 ( .A(n18), .B(n45), .Y(frac[13]) );
  CLKINVX1 U65 ( .A(operand[13]), .Y(n45) );
  CLKINVX1 U66 ( .A(operand[2]), .Y(n34) );
  CLKINVX1 U67 ( .A(operand[5]), .Y(n37) );
  CLKINVX1 U68 ( .A(operand[8]), .Y(n40) );
  NOR2X1 U69 ( .A(n17), .B(n43), .Y(frac[11]) );
  CLKINVX1 U70 ( .A(operand[11]), .Y(n43) );
  CLKINVX1 U71 ( .A(operand[20]), .Y(n52) );
  NOR2X1 U72 ( .A(n18), .B(n50), .Y(frac[18]) );
  CLKINVX1 U73 ( .A(operand[18]), .Y(n50) );
  NOR2X1 U74 ( .A(n17), .B(n33), .Y(frac[1]) );
  CLKINVX1 U75 ( .A(operand[1]), .Y(n33) );
  NOR2X1 U76 ( .A(n17), .B(n36), .Y(frac[4]) );
  CLKINVX1 U77 ( .A(operand[4]), .Y(n36) );
  NOR2X1 U78 ( .A(n17), .B(n39), .Y(frac[7]) );
  CLKINVX1 U79 ( .A(operand[7]), .Y(n39) );
  NOR2X1 U80 ( .A(n18), .B(n44), .Y(frac[12]) );
  CLKINVX1 U81 ( .A(operand[12]), .Y(n44) );
  CLKINVX1 U82 ( .A(operand[0]), .Y(n32) );
  CLKINVX1 U83 ( .A(operand[10]), .Y(n42) );
  BUFX2 U84 ( .A(operand[27]), .Y(exp_bias[4]) );
  BUFX2 U85 ( .A(operand[28]), .Y(exp_bias[5]) );
  BUFX2 U86 ( .A(operand[29]), .Y(exp_bias[6]) );
  BUFX2 U87 ( .A(operand[30]), .Y(exp_bias[7]) );
  BUFX2 U88 ( .A(operand[26]), .Y(exp_bias[3]) );
  BUFX2 U89 ( .A(operand[25]), .Y(exp_bias[2]) );
  CLKINVX4 U90 ( .A(frac[23]), .Y(n31) );
  OAI21X4 U91 ( .A0(n56), .A1(nj_mode), .B0(n55), .Y(exp_bias[0]) );
  XOR2X4 U92 ( .A(n57), .B(operand[30]), .Y(exp[7]) );
endmodule


module csa4_2_WIDTH50 ( ci, a, b, c, d, sum, carry );
  input [49:0] a;
  input [49:0] b;
  input [49:0] c;
  input [49:0] d;
  output [50:0] sum;
  output [50:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_49_, sum_00_48_, sum_00_47_, sum_00_46_, sum_00_45_,
         sum_00_44_, sum_00_43_, sum_00_42_, sum_00_41_, sum_00_40_, sum_00_3_,
         sum_00_39_, sum_00_38_, sum_00_37_, sum_00_36_, sum_00_35_,
         sum_00_34_, sum_00_33_, sum_00_32_, sum_00_31_, sum_00_30_, sum_00_2_,
         sum_00_29_, sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_,
         sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_,
         sum_00_19_, sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_,
         sum_00_14_, sum_00_13_, sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_,
         carry_00_9_, carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_,
         carry_00_4_, carry_00_49_, carry_00_48_, carry_00_47_, carry_00_46_,
         carry_00_45_, carry_00_44_, carry_00_43_, carry_00_42_, carry_00_41_,
         carry_00_40_, carry_00_3_, carry_00_39_, carry_00_38_, carry_00_37_,
         carry_00_36_, carry_00_35_, carry_00_34_, carry_00_33_, carry_00_32_,
         carry_00_31_, carry_00_30_, carry_00_2_, carry_00_29_, carry_00_28_,
         carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_,
         carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_, carry_00_19_,
         carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_,
         carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_0_,
         n2;

  csa4_2_WIDTH50_DW01_csa_0 csa_inst1 ( .a({sum_00_49_, sum_00_48_, sum_00_47_, 
        sum_00_46_, sum_00_45_, sum_00_44_, sum_00_43_, sum_00_42_, sum_00_41_, 
        sum_00_40_, sum_00_39_, sum_00_38_, sum_00_37_, sum_00_36_, sum_00_35_, 
        sum_00_34_, sum_00_33_, sum_00_32_, sum_00_31_, sum_00_30_, sum_00_29_, 
        sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_, 
        sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, sum_00_18_, sum_00_17_, 
        sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, sum_00_12_, sum_00_11_, 
        sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, 
        sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, sum_00_0_}), .b({
        carry_00_49_, carry_00_48_, carry_00_47_, carry_00_46_, carry_00_45_, 
        carry_00_44_, carry_00_43_, carry_00_42_, carry_00_41_, carry_00_40_, 
        carry_00_39_, carry_00_38_, carry_00_37_, carry_00_36_, carry_00_35_, 
        carry_00_34_, carry_00_33_, carry_00_32_, carry_00_31_, carry_00_30_, 
        carry_00_29_, carry_00_28_, carry_00_27_, carry_00_26_, carry_00_25_, 
        carry_00_24_, n2, carry_00_22_, carry_00_21_, carry_00_20_, 
        carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, 
        carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, 
        carry_00_9_, carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, 
        carry_00_4_, carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .c(
        d), .ci(1'b0), .carry(carry[49:0]), .sum(sum[49:0]), .co(carry[50]) );
  csa4_2_WIDTH50_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), .carry({
        carry_00_49_, carry_00_48_, carry_00_47_, carry_00_46_, carry_00_45_, 
        carry_00_44_, carry_00_43_, carry_00_42_, carry_00_41_, carry_00_40_, 
        carry_00_39_, carry_00_38_, carry_00_37_, carry_00_36_, carry_00_35_, 
        carry_00_34_, carry_00_33_, carry_00_32_, carry_00_31_, carry_00_30_, 
        carry_00_29_, carry_00_28_, carry_00_27_, carry_00_26_, carry_00_25_, 
        carry_00_24_, carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, 
        carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, 
        carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, 
        carry_00_9_, carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, 
        carry_00_4_, carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), 
        .sum({sum_00_49_, sum_00_48_, sum_00_47_, sum_00_46_, sum_00_45_, 
        sum_00_44_, sum_00_43_, sum_00_42_, sum_00_41_, sum_00_40_, sum_00_39_, 
        sum_00_38_, sum_00_37_, sum_00_36_, sum_00_35_, sum_00_34_, sum_00_33_, 
        sum_00_32_, sum_00_31_, sum_00_30_, sum_00_29_, sum_00_28_, sum_00_27_, 
        sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, 
        sum_00_20_, sum_00_19_, sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, 
        sum_00_14_, sum_00_13_, sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, 
        sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, 
        sum_00_2_, sum_00_1_, sum_00_0_}), .co(sum[50]) );
  BUFX16 U3 ( .A(carry_00_23_), .Y(n2) );
endmodule


module csa4_2_WIDTH32_2 ( ci, a, b, c, d, sum, carry );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  input [31:0] d;
  output [32:0] sum;
  output [32:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_31_, sum_00_30_, sum_00_2_, sum_00_29_, sum_00_28_,
         sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_31_, carry_00_30_, carry_00_2_, carry_00_29_,
         carry_00_28_, carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_, n2, n3;

  csa4_2_WIDTH32_2_DW01_csa_0 csa_inst1 ( .a({sum_00_31_, sum_00_30_, 
        sum_00_29_, sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_, sum_00_24_, 
        sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, sum_00_18_, 
        sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, sum_00_12_, 
        sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, 
        sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, sum_00_0_}), 
        .b({carry_00_31_, carry_00_30_, carry_00_29_, carry_00_28_, 
        carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), .carry(
        carry[31:0]), .sum(sum[31:0]), .co(carry[32]) );
  csa4_2_WIDTH32_2_DW01_csa_1 csa_inst0 ( .a(a), .b({b[31:20], n3, b[18:0]}), 
        .c(c), .ci(ci), .carry({carry_00_31_, carry_00_30_, carry_00_29_, 
        carry_00_28_, carry_00_27_, carry_00_26_, carry_00_25_, carry_00_24_, 
        carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, 
        carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, 
        carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, 
        carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, 
        carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_31_, 
        sum_00_30_, sum_00_29_, sum_00_28_, sum_00_27_, sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .co(sum[32]) );
  INVX8 U3 ( .A(b[19]), .Y(n2) );
  CLKINVX12 U4 ( .A(n2), .Y(n3) );
endmodule


module csa4_2_WIDTH27_5 ( ci, a, b, c, d, sum, carry );
  input [26:0] a;
  input [26:0] b;
  input [26:0] c;
  input [26:0] d;
  output [27:0] sum;
  output [27:0] carry;
  input ci;
  wire   sum_00_9_, sum_00_8_, sum_00_7_, sum_00_6_, sum_00_5_, sum_00_4_,
         sum_00_3_, sum_00_2_, sum_00_26_, sum_00_25_, sum_00_24_, sum_00_23_,
         sum_00_22_, sum_00_21_, sum_00_20_, sum_00_1_, sum_00_19_, sum_00_18_,
         sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_,
         sum_00_12_, sum_00_11_, sum_00_10_, sum_00_0_, carry_00_9_,
         carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_,
         carry_00_3_, carry_00_2_, carry_00_26_, carry_00_25_, carry_00_24_,
         carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_1_,
         carry_00_19_, carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_,
         carry_00_14_, carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_,
         carry_00_0_;

  csa4_2_WIDTH27_5_DW01_csa_0 csa_inst1 ( .a({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .b({carry_00_26_, carry_00_25_, carry_00_24_, 
        carry_00_23_, carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, 
        carry_00_18_, carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, 
        carry_00_13_, carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, 
        carry_00_8_, carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, 
        carry_00_3_, carry_00_2_, carry_00_1_, carry_00_0_}), .c(d), .ci(1'b0), 
        .carry(carry[26:0]), .sum(sum[26:0]), .co(carry[27]) );
  csa4_2_WIDTH27_5_DW01_csa_1 csa_inst0 ( .a(a), .b(b), .c(c), .ci(ci), 
        .carry({carry_00_26_, carry_00_25_, carry_00_24_, carry_00_23_, 
        carry_00_22_, carry_00_21_, carry_00_20_, carry_00_19_, carry_00_18_, 
        carry_00_17_, carry_00_16_, carry_00_15_, carry_00_14_, carry_00_13_, 
        carry_00_12_, carry_00_11_, carry_00_10_, carry_00_9_, carry_00_8_, 
        carry_00_7_, carry_00_6_, carry_00_5_, carry_00_4_, carry_00_3_, 
        carry_00_2_, carry_00_1_, carry_00_0_}), .sum({sum_00_26_, sum_00_25_, 
        sum_00_24_, sum_00_23_, sum_00_22_, sum_00_21_, sum_00_20_, sum_00_19_, 
        sum_00_18_, sum_00_17_, sum_00_16_, sum_00_15_, sum_00_14_, sum_00_13_, 
        sum_00_12_, sum_00_11_, sum_00_10_, sum_00_9_, sum_00_8_, sum_00_7_, 
        sum_00_6_, sum_00_5_, sum_00_4_, sum_00_3_, sum_00_2_, sum_00_1_, 
        sum_00_0_}), .co(sum[27]) );
endmodule


module exp_adjust ( exp_tmp, lz_count, exp_norm );
  input [9:0] exp_tmp;
  input [6:0] lz_count;
  output [9:0] exp_norm;
  wire   net43103, net43104, net43105, net43106, net43114, net47170, net60807,
         net43113, net43111, net43109, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47;

  NAND2X4 U2 ( .A(exp_tmp[2]), .B(n6), .Y(n7) );
  NAND3X4 U3 ( .A(n21), .B(n26), .C(n38), .Y(n35) );
  NAND2X4 U4 ( .A(n7), .B(n8), .Y(net60807) );
  AND2X8 U5 ( .A(n2), .B(exp_tmp[3]), .Y(n1) );
  NAND2X6 U6 ( .A(n24), .B(lz_count[4]), .Y(n26) );
  NOR2X2 U7 ( .A(n35), .B(n34), .Y(n43) );
  AND2X2 U8 ( .A(n21), .B(n26), .Y(n20) );
  XOR2X1 U9 ( .A(n24), .B(lz_count[4]), .Y(n10) );
  INVX3 U10 ( .A(exp_tmp[8]), .Y(n45) );
  NAND2BX4 U11 ( .AN(n24), .B(n1), .Y(n17) );
  NAND2BX4 U12 ( .AN(lz_count[2]), .B(exp_tmp[2]), .Y(net43105) );
  INVX12 U13 ( .A(exp_tmp[4]), .Y(n24) );
  CLKINVX4 U14 ( .A(lz_count[3]), .Y(n2) );
  OA22X4 U15 ( .A0(lz_count[5]), .A1(n23), .B0(lz_count[4]), .B1(n24), .Y(n25)
         );
  NAND2X2 U16 ( .A(n38), .B(n40), .Y(n28) );
  NAND2X8 U17 ( .A(lz_count[0]), .B(n3), .Y(n4) );
  OAI21X2 U18 ( .A0(lz_count[0]), .A1(n3), .B0(n4), .Y(exp_norm[0]) );
  XOR2X4 U19 ( .A(net43114), .B(n4), .Y(exp_norm[1]) );
  AOI21X4 U20 ( .A0(net43111), .A1(n4), .B0(net43113), .Y(net43109) );
  CLKINVX6 U21 ( .A(exp_tmp[0]), .Y(n3) );
  OAI211X2 U22 ( .A0(net47170), .A1(net43106), .B0(lz_count[0]), .C0(n3), .Y(
        net43104) );
  XOR2X4 U23 ( .A(net43109), .B(net60807), .Y(exp_norm[2]) );
  NOR2X2 U24 ( .A(net47170), .B(net43106), .Y(net43113) );
  INVX8 U25 ( .A(exp_tmp[1]), .Y(net43106) );
  BUFX20 U26 ( .A(lz_count[1]), .Y(net47170) );
  NAND2X2 U27 ( .A(net47170), .B(net43106), .Y(net43111) );
  NAND2X4 U28 ( .A(n5), .B(lz_count[2]), .Y(n8) );
  INVX4 U29 ( .A(lz_count[2]), .Y(n6) );
  AOI22X4 U30 ( .A0(n5), .A1(lz_count[2]), .B0(net43106), .B1(net47170), .Y(
        net43103) );
  INVX6 U31 ( .A(exp_tmp[2]), .Y(n5) );
  NAND2X6 U32 ( .A(n12), .B(n28), .Y(n30) );
  NAND3X2 U33 ( .A(n32), .B(n33), .C(n36), .Y(n44) );
  NOR2X6 U34 ( .A(n1), .B(exp_tmp[4]), .Y(n18) );
  NAND3X2 U35 ( .A(n14), .B(n11), .C(n39), .Y(n32) );
  CLKINVX4 U36 ( .A(n35), .Y(n11) );
  XOR2X4 U37 ( .A(n9), .B(n13), .Y(exp_norm[5]) );
  AO21X4 U38 ( .A0(n14), .A1(n20), .B0(n19), .Y(n9) );
  CLKXOR2X2 U39 ( .A(n23), .B(lz_count[5]), .Y(n13) );
  XNOR2X4 U40 ( .A(n16), .B(n10), .Y(exp_norm[4]) );
  XOR2X4 U41 ( .A(n31), .B(lz_count[6]), .Y(n29) );
  NAND2BX2 U42 ( .AN(exp_tmp[7]), .B(n36), .Y(n37) );
  NOR2X4 U43 ( .A(n46), .B(exp_tmp[8]), .Y(n47) );
  NAND2X4 U44 ( .A(n11), .B(n14), .Y(n12) );
  NOR2X8 U45 ( .A(lz_count[3]), .B(n22), .Y(n27) );
  OAI21X4 U46 ( .A0(n18), .A1(lz_count[4]), .B0(n17), .Y(n19) );
  NAND2X2 U47 ( .A(n31), .B(lz_count[6]), .Y(n39) );
  NAND3X2 U48 ( .A(n38), .B(n39), .C(n40), .Y(n33) );
  XOR2X4 U49 ( .A(n47), .B(exp_tmp[9]), .Y(exp_norm[9]) );
  NAND2BX1 U50 ( .AN(lz_count[6]), .B(exp_tmp[6]), .Y(n36) );
  INVX1 U51 ( .A(n39), .Y(n34) );
  NAND2X8 U52 ( .A(n22), .B(lz_count[3]), .Y(n21) );
  BUFX20 U53 ( .A(n42), .Y(n14) );
  XOR2X4 U54 ( .A(n14), .B(n15), .Y(exp_norm[3]) );
  INVX6 U55 ( .A(exp_tmp[5]), .Y(n23) );
  INVX6 U56 ( .A(exp_tmp[3]), .Y(n22) );
  XOR2X4 U57 ( .A(n46), .B(n45), .Y(exp_norm[8]) );
  INVX3 U58 ( .A(exp_tmp[6]), .Y(n31) );
  OAI2BB1X4 U59 ( .A0N(n43), .A1N(n14), .B0(n41), .Y(n46) );
  NAND2X8 U60 ( .A(n23), .B(lz_count[5]), .Y(n38) );
  XOR2X4 U61 ( .A(net47170), .B(net43106), .Y(net43114) );
  OAI2BB1X4 U62 ( .A0N(net43103), .A1N(net43104), .B0(net43105), .Y(n42) );
  XOR2X4 U63 ( .A(n22), .B(lz_count[3]), .Y(n15) );
  AOI21X4 U64 ( .A0(n14), .A1(n21), .B0(n1), .Y(n16) );
  OAI2BB1X4 U65 ( .A0N(n27), .A1N(n26), .B0(n25), .Y(n40) );
  XOR2X4 U66 ( .A(n30), .B(n29), .Y(exp_norm[6]) );
  AOI31X2 U67 ( .A0(n40), .A1(n39), .A2(n38), .B0(n37), .Y(n41) );
  OAI2BB1X4 U68 ( .A0N(exp_tmp[7]), .A1N(n44), .B0(n46), .Y(exp_norm[7]) );
endmodule


module denorm_handler ( frac_inter_norm_t1, exp_norm, frac_inter_norm_t2, 
        denorm_m, zero_m );
  input [74:0] frac_inter_norm_t1;
  input [9:0] exp_norm;
  output [74:0] frac_inter_norm_t2;
  output denorm_m, zero_m;
  wire   net43223, net43274, net43275, net43276, net43279, net43289, net43291,
         net47556, net47552, net47550, net47546, net47542, net47540, net47536,
         net47532, net47530, net47528, net47526, net47524, net53305, net62286,
         net62349, net60514, net52847, net52844, net52846, net43297, net43277,
         net62357, net62356, net62322, net62321, net62135, net62134, net60608,
         net60607, net43218, net53304, net43273, net60804, net49553, net43299,
         net43298, net62348, net62167, net61910, net61827, net60803, net60798,
         net60642, net60639, net60511, net53506, net53505, net49927, net43300,
         net43286, net43285, net43283, net43282, net43224, net43221, net49900,
         net43294, net43293, net43280, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156;
  wire   [4:0] denorm_shf_num;
  wire   [74:0] frac_inter_norm_t1_shf;

  denorm_handler_DW_rightsh_7 srl_43 ( .A(frac_inter_norm_t1), .SH(
        denorm_shf_num), .B(frac_inter_norm_t1_shf) );
  BUFX6 U3 ( .A(frac_inter_norm_t1_shf[9]), .Y(n1) );
  CLKMX2X4 U4 ( .A(frac_inter_norm_t1[59]), .B(frac_inter_norm_t1_shf[59]), 
        .S0(denorm_m), .Y(frac_inter_norm_t2[59]) );
  NOR2X4 U5 ( .A(frac_inter_norm_t1_shf[59]), .B(frac_inter_norm_t1_shf[58]), 
        .Y(n21) );
  MX2X2 U6 ( .A(frac_inter_norm_t1[56]), .B(frac_inter_norm_t1_shf[56]), .S0(
        net47536), .Y(frac_inter_norm_t2[56]) );
  MX2X1 U7 ( .A(frac_inter_norm_t1[64]), .B(frac_inter_norm_t1_shf[64]), .S0(
        net47542), .Y(frac_inter_norm_t2[64]) );
  NOR2X4 U8 ( .A(frac_inter_norm_t1_shf[61]), .B(frac_inter_norm_t1_shf[60]), 
        .Y(n14) );
  MX2X2 U9 ( .A(frac_inter_norm_t1[53]), .B(frac_inter_norm_t1_shf[53]), .S0(
        net47536), .Y(frac_inter_norm_t2[53]) );
  MX2X2 U10 ( .A(frac_inter_norm_t1[55]), .B(frac_inter_norm_t1_shf[55]), .S0(
        denorm_m), .Y(frac_inter_norm_t2[55]) );
  NAND4X4 U11 ( .A(n63), .B(n60), .C(n61), .D(n62), .Y(n107) );
  NOR3X4 U12 ( .A(n11), .B(frac_inter_norm_t1_shf[8]), .C(n1), .Y(n63) );
  NOR3X8 U13 ( .A(n55), .B(n53), .C(n54), .Y(n56) );
  NOR2X2 U14 ( .A(frac_inter_norm_t1[54]), .B(frac_inter_norm_t1[55]), .Y(n64)
         );
  NOR3BXL U15 ( .AN(net60803), .B(net43223), .C(net60798), .Y(net43218) );
  NAND4X4 U16 ( .A(n37), .B(n36), .C(n38), .D(n35), .Y(n44) );
  NAND4BX1 U17 ( .AN(frac_inter_norm_t1[11]), .B(n95), .C(n94), .D(n93), .Y(
        n101) );
  CLKBUFX4 U18 ( .A(frac_inter_norm_t1_shf[10]), .Y(n11) );
  OAI2BB1X4 U19 ( .A0N(net43218), .A1N(n9), .B0(net62322), .Y(n7) );
  INVX6 U20 ( .A(net53304), .Y(net53305) );
  NOR2X4 U21 ( .A(frac_inter_norm_t1_shf[65]), .B(frac_inter_norm_t1_shf[64]), 
        .Y(n16) );
  INVX2 U22 ( .A(exp_norm[0]), .Y(net43273) );
  BUFX16 U23 ( .A(exp_norm[6]), .Y(net60511) );
  NAND4X1 U24 ( .A(n87), .B(n86), .C(n85), .D(n84), .Y(n91) );
  NOR3X6 U25 ( .A(n24), .B(n23), .C(n22), .Y(n59) );
  NAND4X4 U26 ( .A(n17), .B(n16), .C(n15), .D(n14), .Y(n24) );
  NAND2X4 U27 ( .A(n19), .B(n18), .Y(n23) );
  CLKINVX1 U28 ( .A(net60607), .Y(net60608) );
  MX2X2 U29 ( .A(frac_inter_norm_t1[49]), .B(frac_inter_norm_t1_shf[49]), .S0(
        denorm_m), .Y(frac_inter_norm_t2[49]) );
  MX2X2 U30 ( .A(frac_inter_norm_t1[73]), .B(frac_inter_norm_t1_shf[73]), .S0(
        denorm_m), .Y(frac_inter_norm_t2[73]) );
  MX2X2 U31 ( .A(frac_inter_norm_t1[70]), .B(frac_inter_norm_t1_shf[70]), .S0(
        denorm_m), .Y(frac_inter_norm_t2[70]) );
  BUFX20 U32 ( .A(net47556), .Y(denorm_m) );
  MX2X2 U33 ( .A(frac_inter_norm_t1[54]), .B(frac_inter_norm_t1_shf[54]), .S0(
        denorm_m), .Y(frac_inter_norm_t2[54]) );
  MX2X2 U34 ( .A(frac_inter_norm_t1[50]), .B(frac_inter_norm_t1_shf[50]), .S0(
        net47532), .Y(frac_inter_norm_t2[50]) );
  MX2X2 U35 ( .A(frac_inter_norm_t1[51]), .B(frac_inter_norm_t1_shf[51]), .S0(
        net47532), .Y(frac_inter_norm_t2[51]) );
  INVX12 U36 ( .A(exp_norm[9]), .Y(net61910) );
  AND3X2 U37 ( .A(exp_norm[2]), .B(exp_norm[1]), .C(exp_norm[0]), .Y(n2) );
  INVX4 U38 ( .A(n2), .Y(net43291) );
  NAND2X8 U39 ( .A(net53304), .B(net43273), .Y(denorm_shf_num[0]) );
  OR2X8 U40 ( .A(exp_norm[4]), .B(net43293), .Y(net49900) );
  INVXL U41 ( .A(net49900), .Y(net62356) );
  XNOR2X4 U42 ( .A(net49900), .B(exp_norm[5]), .Y(net60642) );
  NAND2X6 U43 ( .A(n3), .B(net43294), .Y(net43293) );
  CLKINVX8 U44 ( .A(net43280), .Y(net43294) );
  INVXL U45 ( .A(net43294), .Y(net62286) );
  AO21X4 U46 ( .A0(exp_norm[1]), .A1(exp_norm[0]), .B0(exp_norm[2]), .Y(
        net43280) );
  INVX12 U47 ( .A(exp_norm[3]), .Y(n3) );
  NAND2X2 U48 ( .A(n3), .B(net43289), .Y(net52846) );
  INVX4 U49 ( .A(n3), .Y(net60514) );
  NAND2X6 U50 ( .A(n3), .B(net52844), .Y(net43297) );
  BUFX16 U51 ( .A(exp_norm[4]), .Y(net62167) );
  AO21X4 U52 ( .A0(exp_norm[1]), .A1(exp_norm[0]), .B0(exp_norm[2]), .Y(
        net43289) );
  XNOR2X4 U53 ( .A(exp_norm[1]), .B(exp_norm[0]), .Y(net43223) );
  NAND2X8 U54 ( .A(net53505), .B(net61827), .Y(n6) );
  NAND2X8 U55 ( .A(n6), .B(net53506), .Y(net49553) );
  INVX8 U56 ( .A(net43282), .Y(net53505) );
  XOR2X4 U57 ( .A(net43298), .B(net61910), .Y(net61827) );
  INVXL U58 ( .A(net61827), .Y(net62321) );
  NOR2X8 U59 ( .A(net43283), .B(net43224), .Y(net43282) );
  NAND2X4 U60 ( .A(net43221), .B(net43282), .Y(net53506) );
  XOR2X4 U61 ( .A(net49927), .B(net60639), .Y(net43224) );
  BUFX6 U62 ( .A(net60511), .Y(net60639) );
  XOR2XL U63 ( .A(net49927), .B(net60639), .Y(net60798) );
  NOR2X6 U64 ( .A(net43297), .B(net60511), .Y(net43300) );
  XOR2X4 U65 ( .A(exp_norm[7]), .B(net60511), .Y(net43286) );
  NAND4X6 U66 ( .A(net60642), .B(net43285), .C(net43286), .D(net60803), .Y(
        net43283) );
  BUFX8 U67 ( .A(exp_norm[8]), .Y(net60803) );
  NAND3X6 U68 ( .A(n4), .B(net62348), .C(net43277), .Y(net43285) );
  INVX12 U69 ( .A(net62167), .Y(net62348) );
  INVX1 U70 ( .A(net62348), .Y(net62349) );
  NAND3BX4 U71 ( .AN(exp_norm[5]), .B(net43300), .C(net62348), .Y(net43299) );
  OR2X8 U72 ( .A(net62167), .B(net43297), .Y(net49927) );
  NAND2X4 U73 ( .A(net43275), .B(n5), .Y(n4) );
  NAND2X2 U74 ( .A(exp_norm[0]), .B(net43223), .Y(n5) );
  XOR2X4 U75 ( .A(net43298), .B(exp_norm[9]), .Y(net43221) );
  AND2X4 U76 ( .A(exp_norm[7]), .B(exp_norm[8]), .Y(net60804) );
  INVXL U77 ( .A(exp_norm[7]), .Y(net62134) );
  INVX2 U78 ( .A(net43277), .Y(net43276) );
  INVX12 U79 ( .A(net49553), .Y(net53304) );
  NAND2X6 U80 ( .A(net43299), .B(net60804), .Y(net43298) );
  NAND2X4 U81 ( .A(net43274), .B(net53304), .Y(denorm_shf_num[1]) );
  OAI2BB1X4 U82 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[39]), .B0(n8), 
        .Y(frac_inter_norm_t2[39]) );
  NAND2XL U83 ( .A(frac_inter_norm_t1[39]), .B(net47528), .Y(n8) );
  INVX12 U84 ( .A(net47556), .Y(net47528) );
  MX2X2 U85 ( .A(frac_inter_norm_t1[52]), .B(frac_inter_norm_t1_shf[52]), .S0(
        denorm_m), .Y(frac_inter_norm_t2[52]) );
  BUFX12 U86 ( .A(net47556), .Y(net47536) );
  BUFX8 U87 ( .A(net47556), .Y(net47532) );
  INVX12 U88 ( .A(n7), .Y(net47556) );
  INVX1 U89 ( .A(net62321), .Y(net62322) );
  NOR4BX2 U90 ( .AN(net62135), .B(n10), .C(net60608), .D(exp_norm[0]), .Y(n9)
         );
  INVXL U91 ( .A(exp_norm[5]), .Y(net60607) );
  XOR2X1 U92 ( .A(net60608), .B(net62357), .Y(n10) );
  INVX1 U93 ( .A(net62356), .Y(net62357) );
  CLKINVX1 U94 ( .A(net62134), .Y(net62135) );
  NAND2X6 U95 ( .A(net52847), .B(net52846), .Y(net43277) );
  NAND2X4 U96 ( .A(net52844), .B(net60514), .Y(net52847) );
  NOR2XL U97 ( .A(net62286), .B(net60514), .Y(net43279) );
  INVX8 U98 ( .A(net43289), .Y(net52844) );
  NOR2X6 U99 ( .A(frac_inter_norm_t1_shf[15]), .B(frac_inter_norm_t1_shf[14]), 
        .Y(n49) );
  NAND4X4 U100 ( .A(n42), .B(n39), .C(n40), .D(n41), .Y(n43) );
  INVX3 U101 ( .A(net43223), .Y(net43274) );
  XOR2X1 U102 ( .A(net62349), .B(net43279), .Y(n13) );
  NOR3X2 U103 ( .A(frac_inter_norm_t1[1]), .B(net47532), .C(
        frac_inter_norm_t1[0]), .Y(n99) );
  NAND2X4 U104 ( .A(net43291), .B(net43289), .Y(net43275) );
  OAI2BB1X4 U105 ( .A0N(frac_inter_norm_t1_shf[5]), .A1N(net47542), .B0(n114), 
        .Y(frac_inter_norm_t2[5]) );
  NAND4X6 U106 ( .A(n59), .B(n58), .C(n57), .D(n56), .Y(n108) );
  NOR2X4 U107 ( .A(frac_inter_norm_t1_shf[38]), .B(frac_inter_norm_t1_shf[39]), 
        .Y(n25) );
  OR4X8 U108 ( .A(frac_inter_norm_t1_shf[72]), .B(frac_inter_norm_t1_shf[71]), 
        .C(frac_inter_norm_t1_shf[73]), .D(frac_inter_norm_t1_shf[74]), .Y(n45) );
  NOR3X4 U109 ( .A(frac_inter_norm_t1_shf[68]), .B(frac_inter_norm_t1_shf[70]), 
        .C(frac_inter_norm_t1_shf[69]), .Y(n46) );
  NOR2X4 U110 ( .A(frac_inter_norm_t1_shf[45]), .B(frac_inter_norm_t1_shf[44]), 
        .Y(n29) );
  NOR2X4 U111 ( .A(frac_inter_norm_t1_shf[47]), .B(frac_inter_norm_t1_shf[46]), 
        .Y(n30) );
  NOR2X4 U112 ( .A(frac_inter_norm_t1_shf[40]), .B(frac_inter_norm_t1_shf[41]), 
        .Y(n27) );
  NOR2X4 U113 ( .A(frac_inter_norm_t1_shf[51]), .B(frac_inter_norm_t1_shf[50]), 
        .Y(n32) );
  NAND4BX2 U114 ( .AN(n91), .B(n90), .C(n89), .D(n88), .Y(n102) );
  OR2X4 U115 ( .A(frac_inter_norm_t1[28]), .B(frac_inter_norm_t1[29]), .Y(n12)
         );
  MX2XL U116 ( .A(frac_inter_norm_t1[57]), .B(frac_inter_norm_t1_shf[57]), 
        .S0(net47536), .Y(frac_inter_norm_t2[57]) );
  NOR2X4 U117 ( .A(frac_inter_norm_t1_shf[43]), .B(frac_inter_norm_t1_shf[42]), 
        .Y(n28) );
  NOR2X4 U118 ( .A(frac_inter_norm_t1_shf[20]), .B(frac_inter_norm_t1_shf[21]), 
        .Y(n52) );
  NOR2X4 U119 ( .A(frac_inter_norm_t1_shf[33]), .B(frac_inter_norm_t1_shf[34]), 
        .Y(n41) );
  NOR2X6 U120 ( .A(frac_inter_norm_t1_shf[23]), .B(frac_inter_norm_t1_shf[24]), 
        .Y(n35) );
  NAND2X6 U121 ( .A(n52), .B(n51), .Y(n53) );
  NOR2X4 U122 ( .A(frac_inter_norm_t1_shf[19]), .B(frac_inter_norm_t1_shf[18]), 
        .Y(n51) );
  NOR2X4 U123 ( .A(frac_inter_norm_t1_shf[49]), .B(frac_inter_norm_t1_shf[48]), 
        .Y(n31) );
  NOR2X4 U124 ( .A(frac_inter_norm_t1_shf[13]), .B(frac_inter_norm_t1_shf[12]), 
        .Y(n48) );
  NOR2X4 U125 ( .A(frac_inter_norm_t1_shf[63]), .B(frac_inter_norm_t1_shf[62]), 
        .Y(n15) );
  NOR2X4 U126 ( .A(frac_inter_norm_t1_shf[36]), .B(frac_inter_norm_t1_shf[35]), 
        .Y(n42) );
  NOR2X4 U127 ( .A(frac_inter_norm_t1_shf[26]), .B(frac_inter_norm_t1_shf[25]), 
        .Y(n37) );
  NOR3X2 U128 ( .A(net47524), .B(frac_inter_norm_t1_shf[1]), .C(
        frac_inter_norm_t1_shf[0]), .Y(n60) );
  INVX3 U129 ( .A(frac_inter_norm_t1_shf[37]), .Y(n26) );
  NOR3X2 U130 ( .A(frac_inter_norm_t1_shf[2]), .B(frac_inter_norm_t1_shf[4]), 
        .C(frac_inter_norm_t1_shf[3]), .Y(n61) );
  NAND2BX4 U131 ( .AN(net53305), .B(net43276), .Y(denorm_shf_num[3]) );
  NAND3X6 U132 ( .A(n48), .B(n47), .C(n46), .Y(n55) );
  NAND4X4 U133 ( .A(n28), .B(n27), .C(n25), .D(n26), .Y(n34) );
  OAI2BB1X4 U134 ( .A0N(frac_inter_norm_t1_shf[0]), .A1N(denorm_m), .B0(n109), 
        .Y(frac_inter_norm_t2[0]) );
  NOR2X4 U135 ( .A(frac_inter_norm_t1_shf[29]), .B(frac_inter_norm_t1_shf[30]), 
        .Y(n39) );
  NOR2X6 U136 ( .A(n43), .B(n44), .Y(n57) );
  OAI2BB1X4 U137 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[47]), .B0(n155), 
        .Y(frac_inter_norm_t2[47]) );
  OAI2BB1X4 U138 ( .A0N(frac_inter_norm_t1_shf[13]), .A1N(net47552), .B0(n122), 
        .Y(frac_inter_norm_t2[13]) );
  NOR2X4 U139 ( .A(frac_inter_norm_t1_shf[52]), .B(frac_inter_norm_t1_shf[53]), 
        .Y(n18) );
  NAND2X6 U140 ( .A(n50), .B(n49), .Y(n54) );
  OAI2BB1X4 U141 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[2]), .B0(n111), 
        .Y(frac_inter_norm_t2[2]) );
  OAI2BB1X4 U142 ( .A0N(frac_inter_norm_t1_shf[33]), .A1N(denorm_m), .B0(n142), 
        .Y(frac_inter_norm_t2[33]) );
  OAI2BB1X4 U143 ( .A0N(frac_inter_norm_t1_shf[37]), .A1N(denorm_m), .B0(n146), 
        .Y(frac_inter_norm_t2[37]) );
  NOR2X4 U144 ( .A(frac_inter_norm_t1_shf[55]), .B(frac_inter_norm_t1_shf[54]), 
        .Y(n19) );
  NOR2X4 U145 ( .A(frac_inter_norm_t1_shf[57]), .B(frac_inter_norm_t1_shf[56]), 
        .Y(n20) );
  OAI2BB1X4 U146 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[41]), .B0(n149), 
        .Y(frac_inter_norm_t2[41]) );
  OAI2BB1X4 U147 ( .A0N(frac_inter_norm_t1_shf[17]), .A1N(net47550), .B0(n126), 
        .Y(frac_inter_norm_t2[17]) );
  OAI2BB1X4 U148 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[40]), .B0(n148), 
        .Y(frac_inter_norm_t2[40]) );
  INVX2 U149 ( .A(frac_inter_norm_t1_shf[22]), .Y(n36) );
  NOR2X4 U150 ( .A(frac_inter_norm_t1_shf[28]), .B(frac_inter_norm_t1_shf[27]), 
        .Y(n38) );
  NOR2X6 U151 ( .A(n34), .B(n33), .Y(n58) );
  OAI2BB1X4 U152 ( .A0N(frac_inter_norm_t1_shf[19]), .A1N(net47550), .B0(n128), 
        .Y(frac_inter_norm_t2[19]) );
  AOI31X4 U153 ( .A0(n105), .A1(n104), .A2(n103), .B0(net53305), .Y(n106) );
  NAND2BX4 U154 ( .AN(net53305), .B(n13), .Y(denorm_shf_num[4]) );
  NOR2X1 U155 ( .A(net53305), .B(net43275), .Y(denorm_shf_num[2]) );
  NOR2X4 U156 ( .A(frac_inter_norm_t1_shf[17]), .B(frac_inter_norm_t1_shf[16]), 
        .Y(n50) );
  NOR2X4 U157 ( .A(frac_inter_norm_t1_shf[32]), .B(frac_inter_norm_t1_shf[31]), 
        .Y(n40) );
  OAI2BB1X4 U158 ( .A0N(net47550), .A1N(frac_inter_norm_t1_shf[27]), .B0(n136), 
        .Y(frac_inter_norm_t2[27]) );
  NOR3X2 U159 ( .A(frac_inter_norm_t1_shf[5]), .B(frac_inter_norm_t1_shf[7]), 
        .C(frac_inter_norm_t1_shf[6]), .Y(n62) );
  NOR2X4 U160 ( .A(frac_inter_norm_t1_shf[67]), .B(frac_inter_norm_t1_shf[66]), 
        .Y(n17) );
  OAI2BB1X4 U161 ( .A0N(frac_inter_norm_t1_shf[8]), .A1N(net47540), .B0(n117), 
        .Y(frac_inter_norm_t2[8]) );
  OAI2BB1X4 U162 ( .A0N(frac_inter_norm_t1_shf[1]), .A1N(denorm_m), .B0(n110), 
        .Y(frac_inter_norm_t2[1]) );
  OAI2BB1X4 U163 ( .A0N(frac_inter_norm_t1_shf[9]), .A1N(net47552), .B0(n118), 
        .Y(frac_inter_norm_t2[9]) );
  OAI2BB1X4 U164 ( .A0N(frac_inter_norm_t1_shf[15]), .A1N(net47550), .B0(n124), 
        .Y(frac_inter_norm_t2[15]) );
  OAI2BB1X4 U165 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[46]), .B0(n154), 
        .Y(frac_inter_norm_t2[46]) );
  OAI2BB1X4 U166 ( .A0N(net47550), .A1N(frac_inter_norm_t1_shf[25]), .B0(n134), 
        .Y(frac_inter_norm_t2[25]) );
  OAI2BB1X4 U167 ( .A0N(denorm_m), .A1N(frac_inter_norm_t1_shf[35]), .B0(n144), 
        .Y(frac_inter_norm_t2[35]) );
  OAI2BB1X4 U168 ( .A0N(net47552), .A1N(frac_inter_norm_t1_shf[12]), .B0(n121), 
        .Y(frac_inter_norm_t2[12]) );
  OAI2BB1X4 U169 ( .A0N(frac_inter_norm_t1_shf[4]), .A1N(denorm_m), .B0(n113), 
        .Y(frac_inter_norm_t2[4]) );
  OAI2BB1X4 U170 ( .A0N(frac_inter_norm_t1_shf[44]), .A1N(net47546), .B0(n152), 
        .Y(frac_inter_norm_t2[44]) );
  OAI2BB1X4 U171 ( .A0N(net47552), .A1N(frac_inter_norm_t1_shf[10]), .B0(n119), 
        .Y(frac_inter_norm_t2[10]) );
  OAI2BB1X4 U172 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[45]), .B0(n153), 
        .Y(frac_inter_norm_t2[45]) );
  OAI2BB1X4 U173 ( .A0N(denorm_m), .A1N(frac_inter_norm_t1_shf[34]), .B0(n143), 
        .Y(frac_inter_norm_t2[34]) );
  OAI2BB1X4 U174 ( .A0N(frac_inter_norm_t1_shf[3]), .A1N(denorm_m), .B0(n112), 
        .Y(frac_inter_norm_t2[3]) );
  OAI2BB1X4 U175 ( .A0N(frac_inter_norm_t1_shf[36]), .A1N(denorm_m), .B0(n145), 
        .Y(frac_inter_norm_t2[36]) );
  OAI21X4 U176 ( .A0(n108), .A1(n107), .B0(n106), .Y(zero_m) );
  OAI2BB1X4 U177 ( .A0N(net47550), .A1N(frac_inter_norm_t1_shf[18]), .B0(n127), 
        .Y(frac_inter_norm_t2[18]) );
  OAI2BB1X4 U178 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[16]), .B0(n125), 
        .Y(frac_inter_norm_t2[16]) );
  OAI2BB1X4 U179 ( .A0N(net47552), .A1N(frac_inter_norm_t1_shf[11]), .B0(n120), 
        .Y(frac_inter_norm_t2[11]) );
  OAI2BB1X4 U180 ( .A0N(frac_inter_norm_t1_shf[7]), .A1N(denorm_m), .B0(n116), 
        .Y(frac_inter_norm_t2[7]) );
  NAND2X4 U181 ( .A(n21), .B(n20), .Y(n22) );
  OAI2BB1X4 U182 ( .A0N(frac_inter_norm_t1_shf[32]), .A1N(denorm_m), .B0(n141), 
        .Y(frac_inter_norm_t2[32]) );
  OAI2BB1X4 U183 ( .A0N(net47550), .A1N(frac_inter_norm_t1_shf[21]), .B0(n130), 
        .Y(frac_inter_norm_t2[21]) );
  OAI2BB1X4 U184 ( .A0N(net47550), .A1N(frac_inter_norm_t1_shf[22]), .B0(n131), 
        .Y(frac_inter_norm_t2[22]) );
  OAI2BB1X4 U185 ( .A0N(denorm_m), .A1N(frac_inter_norm_t1_shf[38]), .B0(n147), 
        .Y(frac_inter_norm_t2[38]) );
  OAI2BB1X4 U186 ( .A0N(frac_inter_norm_t1_shf[29]), .A1N(denorm_m), .B0(n138), 
        .Y(frac_inter_norm_t2[29]) );
  NAND4X4 U187 ( .A(n32), .B(n30), .C(n29), .D(n31), .Y(n33) );
  OAI2BB1X4 U188 ( .A0N(frac_inter_norm_t1_shf[6]), .A1N(denorm_m), .B0(n115), 
        .Y(frac_inter_norm_t2[6]) );
  OAI2BB1X4 U189 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[48]), .B0(n156), 
        .Y(frac_inter_norm_t2[48]) );
  OAI2BB1X4 U190 ( .A0N(denorm_m), .A1N(frac_inter_norm_t1_shf[31]), .B0(n140), 
        .Y(frac_inter_norm_t2[31]) );
  OAI2BB1X4 U191 ( .A0N(denorm_m), .A1N(frac_inter_norm_t1_shf[28]), .B0(n137), 
        .Y(frac_inter_norm_t2[28]) );
  OAI2BB1X4 U192 ( .A0N(net47546), .A1N(frac_inter_norm_t1_shf[42]), .B0(n150), 
        .Y(frac_inter_norm_t2[42]) );
  OAI2BB1X4 U193 ( .A0N(frac_inter_norm_t1_shf[20]), .A1N(net47550), .B0(n129), 
        .Y(frac_inter_norm_t2[20]) );
  OAI2BB1X4 U194 ( .A0N(frac_inter_norm_t1_shf[26]), .A1N(net47550), .B0(n135), 
        .Y(frac_inter_norm_t2[26]) );
  OAI2BB1X4 U195 ( .A0N(frac_inter_norm_t1_shf[14]), .A1N(net47552), .B0(n123), 
        .Y(frac_inter_norm_t2[14]) );
  OAI2BB1X4 U196 ( .A0N(net47550), .A1N(frac_inter_norm_t1_shf[23]), .B0(n132), 
        .Y(frac_inter_norm_t2[23]) );
  OAI2BB1X4 U197 ( .A0N(net47550), .A1N(frac_inter_norm_t1_shf[24]), .B0(n133), 
        .Y(frac_inter_norm_t2[24]) );
  OAI2BB1X4 U198 ( .A0N(denorm_m), .A1N(frac_inter_norm_t1_shf[30]), .B0(n139), 
        .Y(frac_inter_norm_t2[30]) );
  OAI2BB1X4 U199 ( .A0N(frac_inter_norm_t1_shf[43]), .A1N(net47546), .B0(n151), 
        .Y(frac_inter_norm_t2[43]) );
  BUFX4 U200 ( .A(net47556), .Y(net47546) );
  INVX6 U201 ( .A(net47532), .Y(net47530) );
  NAND2XL U202 ( .A(frac_inter_norm_t1[13]), .B(net47526), .Y(n122) );
  NAND2XL U203 ( .A(frac_inter_norm_t1[27]), .B(net47526), .Y(n136) );
  NAND2XL U204 ( .A(frac_inter_norm_t1[21]), .B(net47526), .Y(n130) );
  NAND2XL U205 ( .A(frac_inter_norm_t1[33]), .B(net47528), .Y(n142) );
  NAND2XL U206 ( .A(frac_inter_norm_t1[15]), .B(net47526), .Y(n124) );
  NAND2XL U207 ( .A(frac_inter_norm_t1[9]), .B(net47524), .Y(n118) );
  NAND2XL U208 ( .A(frac_inter_norm_t1[6]), .B(net47524), .Y(n115) );
  NAND2XL U209 ( .A(frac_inter_norm_t1[0]), .B(net47524), .Y(n109) );
  NAND2XL U210 ( .A(frac_inter_norm_t1[25]), .B(net47526), .Y(n134) );
  NAND2XL U211 ( .A(frac_inter_norm_t1[31]), .B(net47528), .Y(n140) );
  NAND2XL U212 ( .A(frac_inter_norm_t1[19]), .B(net47526), .Y(n128) );
  NAND2XL U213 ( .A(frac_inter_norm_t1[7]), .B(net47524), .Y(n116) );
  NAND2XL U214 ( .A(frac_inter_norm_t1[4]), .B(net47524), .Y(n113) );
  NAND2XL U215 ( .A(frac_inter_norm_t1[1]), .B(net47524), .Y(n110) );
  NAND2XL U216 ( .A(frac_inter_norm_t1[11]), .B(net47524), .Y(n120) );
  NAND2XL U217 ( .A(frac_inter_norm_t1[8]), .B(net47524), .Y(n117) );
  NAND2XL U218 ( .A(frac_inter_norm_t1[5]), .B(net47524), .Y(n114) );
  NAND2XL U219 ( .A(frac_inter_norm_t1[29]), .B(net47528), .Y(n138) );
  NAND2XL U220 ( .A(frac_inter_norm_t1[26]), .B(net47526), .Y(n135) );
  NAND2XL U221 ( .A(frac_inter_norm_t1[23]), .B(net47526), .Y(n132) );
  NAND2XL U222 ( .A(frac_inter_norm_t1[17]), .B(net47526), .Y(n126) );
  NAND2XL U223 ( .A(frac_inter_norm_t1[38]), .B(net47528), .Y(n147) );
  NAND2XL U224 ( .A(frac_inter_norm_t1[20]), .B(net47526), .Y(n129) );
  NAND2XL U225 ( .A(frac_inter_norm_t1[14]), .B(net47526), .Y(n123) );
  NAND2XL U226 ( .A(frac_inter_norm_t1[32]), .B(net47528), .Y(n141) );
  NAND2XL U227 ( .A(frac_inter_norm_t1[35]), .B(net47528), .Y(n144) );
  NAND2XL U228 ( .A(frac_inter_norm_t1[46]), .B(net47530), .Y(n154) );
  NAND2XL U229 ( .A(frac_inter_norm_t1[45]), .B(net47530), .Y(n153) );
  NAND2XL U230 ( .A(frac_inter_norm_t1[44]), .B(net47530), .Y(n152) );
  NAND2XL U231 ( .A(frac_inter_norm_t1[41]), .B(net47528), .Y(n149) );
  NAND2XL U232 ( .A(frac_inter_norm_t1[47]), .B(net47530), .Y(n155) );
  NOR4XL U233 ( .A(n12), .B(frac_inter_norm_t1[31]), .C(frac_inter_norm_t1[32]), .D(frac_inter_norm_t1[30]), .Y(n89) );
  NAND2XL U234 ( .A(frac_inter_norm_t1[43]), .B(net47530), .Y(n151) );
  NAND2XL U235 ( .A(frac_inter_norm_t1[48]), .B(net47530), .Y(n156) );
  NAND2XL U236 ( .A(frac_inter_norm_t1[3]), .B(net47524), .Y(n112) );
  BUFX2 U237 ( .A(net47556), .Y(net47540) );
  BUFX2 U238 ( .A(net47556), .Y(net47542) );
  NOR3X1 U239 ( .A(n102), .B(n101), .C(n100), .Y(n103) );
  NAND4X1 U240 ( .A(n99), .B(n98), .C(n97), .D(n96), .Y(n100) );
  NAND2XL U241 ( .A(frac_inter_norm_t1[37]), .B(net47528), .Y(n146) );
  NAND2XL U242 ( .A(frac_inter_norm_t1[34]), .B(net47528), .Y(n143) );
  NAND2XL U243 ( .A(frac_inter_norm_t1[42]), .B(net47528), .Y(n150) );
  NAND2X1 U244 ( .A(frac_inter_norm_t1[2]), .B(net47524), .Y(n111) );
  NAND2XL U245 ( .A(frac_inter_norm_t1[18]), .B(net47526), .Y(n127) );
  NAND2XL U246 ( .A(frac_inter_norm_t1[28]), .B(net47528), .Y(n137) );
  NAND2XL U247 ( .A(frac_inter_norm_t1[24]), .B(net47526), .Y(n133) );
  NAND2XL U248 ( .A(frac_inter_norm_t1[10]), .B(net47524), .Y(n119) );
  NOR4XL U249 ( .A(n78), .B(frac_inter_norm_t1[58]), .C(frac_inter_norm_t1[56]), .D(frac_inter_norm_t1[57]), .Y(n79) );
  OR2XL U250 ( .A(frac_inter_norm_t1[59]), .B(frac_inter_norm_t1[60]), .Y(n78)
         );
  NOR3XL U251 ( .A(n92), .B(frac_inter_norm_t1[16]), .C(frac_inter_norm_t1[17]), .Y(n93) );
  OR2XL U252 ( .A(frac_inter_norm_t1[14]), .B(frac_inter_norm_t1[15]), .Y(n92)
         );
  NOR3XL U253 ( .A(frac_inter_norm_t1[25]), .B(frac_inter_norm_t1[23]), .C(
        frac_inter_norm_t1[24]), .Y(n85) );
  NOR3XL U254 ( .A(frac_inter_norm_t1[44]), .B(frac_inter_norm_t1[42]), .C(
        frac_inter_norm_t1[43]), .Y(n69) );
  NOR3XL U255 ( .A(frac_inter_norm_t1[6]), .B(frac_inter_norm_t1[4]), .C(
        frac_inter_norm_t1[5]), .Y(n97) );
  NOR3XL U256 ( .A(frac_inter_norm_t1[49]), .B(frac_inter_norm_t1[47]), .C(
        frac_inter_norm_t1[48]), .Y(n67) );
  NOR3XL U257 ( .A(frac_inter_norm_t1[39]), .B(frac_inter_norm_t1[37]), .C(
        frac_inter_norm_t1[38]), .Y(n71) );
  NOR3XL U258 ( .A(frac_inter_norm_t1[68]), .B(frac_inter_norm_t1[66]), .C(
        frac_inter_norm_t1[67]), .Y(n77) );
  NOR3XL U259 ( .A(frac_inter_norm_t1[63]), .B(frac_inter_norm_t1[61]), .C(
        frac_inter_norm_t1[62]), .Y(n81) );
  NOR2XL U260 ( .A(frac_inter_norm_t1[45]), .B(frac_inter_norm_t1[46]), .Y(n68) );
  NOR2XL U261 ( .A(frac_inter_norm_t1[7]), .B(frac_inter_norm_t1[8]), .Y(n96)
         );
  NOR2XL U262 ( .A(frac_inter_norm_t1[33]), .B(frac_inter_norm_t1[34]), .Y(n88) );
  NOR2XL U263 ( .A(frac_inter_norm_t1[12]), .B(frac_inter_norm_t1[13]), .Y(n94) );
  NOR2XL U264 ( .A(frac_inter_norm_t1[52]), .B(frac_inter_norm_t1[53]), .Y(n65) );
  NOR2XL U265 ( .A(frac_inter_norm_t1[40]), .B(frac_inter_norm_t1[41]), .Y(n70) );
  NOR2XL U266 ( .A(frac_inter_norm_t1[9]), .B(frac_inter_norm_t1[10]), .Y(n95)
         );
  NOR2XL U267 ( .A(frac_inter_norm_t1[2]), .B(frac_inter_norm_t1[3]), .Y(n98)
         );
  NOR2XL U268 ( .A(frac_inter_norm_t1[69]), .B(frac_inter_norm_t1[70]), .Y(n76) );
  NOR2XL U269 ( .A(frac_inter_norm_t1[35]), .B(frac_inter_norm_t1[36]), .Y(n90) );
  NOR2XL U270 ( .A(frac_inter_norm_t1[21]), .B(frac_inter_norm_t1[22]), .Y(n86) );
  NOR2XL U271 ( .A(frac_inter_norm_t1[26]), .B(frac_inter_norm_t1[27]), .Y(n84) );
  NOR3XL U272 ( .A(frac_inter_norm_t1[20]), .B(frac_inter_norm_t1[18]), .C(
        frac_inter_norm_t1[19]), .Y(n87) );
  NOR2XL U273 ( .A(frac_inter_norm_t1[64]), .B(frac_inter_norm_t1[65]), .Y(n80) );
  INVX12 U274 ( .A(net47536), .Y(net47526) );
  NOR2X1 U275 ( .A(n73), .B(n72), .Y(n105) );
  NAND4X1 U276 ( .A(n67), .B(n66), .C(n65), .D(n64), .Y(n73) );
  NAND4X1 U277 ( .A(n71), .B(n70), .C(n69), .D(n68), .Y(n72) );
  NOR2XL U278 ( .A(frac_inter_norm_t1[50]), .B(frac_inter_norm_t1[51]), .Y(n66) );
  INVX12 U279 ( .A(net47556), .Y(net47524) );
  NAND2XL U280 ( .A(frac_inter_norm_t1[16]), .B(net47526), .Y(n125) );
  NAND2XL U281 ( .A(frac_inter_norm_t1[22]), .B(net47526), .Y(n131) );
  NAND2XL U282 ( .A(frac_inter_norm_t1[40]), .B(net47528), .Y(n148) );
  NAND2XL U283 ( .A(frac_inter_norm_t1[30]), .B(net47528), .Y(n139) );
  NAND2XL U284 ( .A(frac_inter_norm_t1[36]), .B(net47528), .Y(n145) );
  NAND2XL U285 ( .A(frac_inter_norm_t1[12]), .B(net47524), .Y(n121) );
  MX2XL U286 ( .A(frac_inter_norm_t1[58]), .B(frac_inter_norm_t1_shf[58]), 
        .S0(denorm_m), .Y(frac_inter_norm_t2[58]) );
  MX2XL U287 ( .A(frac_inter_norm_t1[61]), .B(frac_inter_norm_t1_shf[61]), 
        .S0(net47540), .Y(frac_inter_norm_t2[61]) );
  MX2XL U288 ( .A(frac_inter_norm_t1[66]), .B(frac_inter_norm_t1_shf[66]), 
        .S0(net47540), .Y(frac_inter_norm_t2[66]) );
  MX2XL U289 ( .A(frac_inter_norm_t1[62]), .B(frac_inter_norm_t1_shf[62]), 
        .S0(net47540), .Y(frac_inter_norm_t2[62]) );
  MX2XL U290 ( .A(frac_inter_norm_t1[63]), .B(frac_inter_norm_t1_shf[63]), 
        .S0(net47540), .Y(frac_inter_norm_t2[63]) );
  MX2XL U291 ( .A(frac_inter_norm_t1[68]), .B(frac_inter_norm_t1_shf[68]), 
        .S0(net47542), .Y(frac_inter_norm_t2[68]) );
  MX2XL U292 ( .A(frac_inter_norm_t1[67]), .B(frac_inter_norm_t1_shf[67]), 
        .S0(net47542), .Y(frac_inter_norm_t2[67]) );
  MX2XL U293 ( .A(frac_inter_norm_t1[69]), .B(frac_inter_norm_t1_shf[69]), 
        .S0(net47542), .Y(frac_inter_norm_t2[69]) );
  MX2XL U294 ( .A(frac_inter_norm_t1[71]), .B(frac_inter_norm_t1_shf[71]), 
        .S0(net47542), .Y(frac_inter_norm_t2[71]) );
  MX2XL U295 ( .A(frac_inter_norm_t1[65]), .B(frac_inter_norm_t1_shf[65]), 
        .S0(net47540), .Y(frac_inter_norm_t2[65]) );
  MX2XL U296 ( .A(frac_inter_norm_t1[72]), .B(frac_inter_norm_t1_shf[72]), 
        .S0(net47542), .Y(frac_inter_norm_t2[72]) );
  MX2XL U297 ( .A(frac_inter_norm_t1[60]), .B(frac_inter_norm_t1_shf[60]), 
        .S0(denorm_m), .Y(frac_inter_norm_t2[60]) );
  NOR2X1 U298 ( .A(n83), .B(n82), .Y(n104) );
  NAND4X1 U299 ( .A(n77), .B(n76), .C(n75), .D(n74), .Y(n83) );
  NAND3X1 U300 ( .A(n81), .B(n80), .C(n79), .Y(n82) );
  NOR2XL U301 ( .A(frac_inter_norm_t1[71]), .B(frac_inter_norm_t1[72]), .Y(n75) );
  BUFX8 U302 ( .A(net47536), .Y(net47550) );
  BUFX4 U303 ( .A(net47536), .Y(net47552) );
  NOR2XL U304 ( .A(frac_inter_norm_t1[73]), .B(frac_inter_norm_t1[74]), .Y(n74) );
  MX2XL U305 ( .A(frac_inter_norm_t1[74]), .B(frac_inter_norm_t1_shf[74]), 
        .S0(net47540), .Y(frac_inter_norm_t2[74]) );
  NOR2X4 U306 ( .A(n45), .B(frac_inter_norm_t1_shf[11]), .Y(n47) );
endmodule


module sticky_handler ( c_frac_align_l, inv_mask, compen_bit, st1 );
  input [23:0] c_frac_align_l;
  input inv_mask;
  output compen_bit, st1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  NOR2X4 U1 ( .A(n19), .B(n18), .Y(n20) );
  NOR2X4 U2 ( .A(n13), .B(n12), .Y(n23) );
  NOR2X4 U3 ( .A(n17), .B(n16), .Y(n21) );
  NAND3X4 U4 ( .A(c_frac_align_l[16]), .B(c_frac_align_l[15]), .C(
        c_frac_align_l[17]), .Y(n14) );
  NAND3X4 U5 ( .A(c_frac_align_l[10]), .B(c_frac_align_l[9]), .C(
        c_frac_align_l[11]), .Y(n16) );
  NAND4X8 U6 ( .A(n23), .B(n22), .C(n21), .D(n20), .Y(n25) );
  NOR2X8 U7 ( .A(n25), .B(n24), .Y(compen_bit) );
  NAND3X4 U8 ( .A(c_frac_align_l[22]), .B(c_frac_align_l[21]), .C(
        c_frac_align_l[23]), .Y(n12) );
  NAND3X4 U9 ( .A(c_frac_align_l[4]), .B(c_frac_align_l[3]), .C(
        c_frac_align_l[5]), .Y(n18) );
  NAND3X2 U10 ( .A(c_frac_align_l[19]), .B(c_frac_align_l[18]), .C(
        c_frac_align_l[20]), .Y(n13) );
  NAND3X2 U11 ( .A(c_frac_align_l[13]), .B(c_frac_align_l[12]), .C(
        c_frac_align_l[14]), .Y(n15) );
  NAND3X2 U12 ( .A(c_frac_align_l[7]), .B(c_frac_align_l[6]), .C(
        c_frac_align_l[8]), .Y(n17) );
  MX2X1 U13 ( .A(n1), .B(n25), .S0(inv_mask), .Y(st1) );
  NOR2X4 U14 ( .A(n15), .B(n14), .Y(n22) );
  INVX4 U15 ( .A(inv_mask), .Y(n24) );
  NAND3X4 U16 ( .A(c_frac_align_l[1]), .B(c_frac_align_l[0]), .C(
        c_frac_align_l[2]), .Y(n19) );
  OR2X1 U17 ( .A(n11), .B(n10), .Y(n1) );
  NOR3XL U18 ( .A(c_frac_align_l[2]), .B(c_frac_align_l[0]), .C(
        c_frac_align_l[1]), .Y(n9) );
  NOR3XL U19 ( .A(c_frac_align_l[8]), .B(c_frac_align_l[6]), .C(
        c_frac_align_l[7]), .Y(n7) );
  NOR3XL U20 ( .A(c_frac_align_l[20]), .B(c_frac_align_l[18]), .C(
        c_frac_align_l[19]), .Y(n3) );
  NOR3XL U21 ( .A(c_frac_align_l[14]), .B(c_frac_align_l[12]), .C(
        c_frac_align_l[13]), .Y(n5) );
  NOR3XL U22 ( .A(c_frac_align_l[23]), .B(c_frac_align_l[21]), .C(
        c_frac_align_l[22]), .Y(n2) );
  NOR3XL U23 ( .A(c_frac_align_l[5]), .B(c_frac_align_l[3]), .C(
        c_frac_align_l[4]), .Y(n8) );
  NOR3X1 U24 ( .A(c_frac_align_l[17]), .B(c_frac_align_l[15]), .C(
        c_frac_align_l[16]), .Y(n4) );
  NAND4X1 U25 ( .A(n5), .B(n4), .C(n3), .D(n2), .Y(n11) );
  NOR3XL U26 ( .A(c_frac_align_l[11]), .B(c_frac_align_l[9]), .C(
        c_frac_align_l[10]), .Y(n6) );
  NAND4X1 U27 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(n10) );
endmodule


module mul_24x24 ( a, b, carry, sum );
  input [23:0] a;
  input [23:0] b;
  output [47:0] carry;
  output [47:0] sum;
  wire   co_20, co_21, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148;
  wire   [23:0] pp0;
  wire   [23:0] pp1;
  wire   [23:0] pp2;
  wire   [23:0] pp3;
  wire   [23:0] pp4;
  wire   [23:0] pp5;
  wire   [23:0] pp6;
  wire   [23:0] pp7;
  wire   [23:0] pp8;
  wire   [23:0] pp9;
  wire   [23:0] pp10;
  wire   [23:0] pp11;
  wire   [23:0] pp12;
  wire   [23:0] pp13;
  wire   [23:0] pp14;
  wire   [23:0] pp15;
  wire   [23:0] pp16;
  wire   [23:0] pp17;
  wire   [23:0] pp18;
  wire   [23:0] pp19;
  wire   [23:0] pp20;
  wire   [23:0] pp21;
  wire   [23:0] pp22;
  wire   [23:0] pp23;
  wire   [27:0] sum_00;
  wire   [27:0] carry_00;
  wire   [27:0] sum_01;
  wire   [27:0] carry_01;
  wire   [27:0] sum_02;
  wire   [27:0] carry_02;
  wire   [27:0] sum_03;
  wire   [27:0] carry_03;
  wire   [27:0] sum_04;
  wire   [27:0] carry_04;
  wire   [27:0] sum_05;
  wire   [27:0] carry_05;
  wire   [32:0] sum_10;
  wire   [32:0] carry_10;
  wire   [32:0] sum_11;
  wire   [32:0] carry_11;
  wire   [32:0] sum_12;
  wire   [32:0] carry_12;
  wire   [40:0] sum_20;
  wire   [40:0] carry_20;
  wire   [40:0] sum_21;
  wire   [40:0] carry_21;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  csa4_2_WIDTH27_5 csa4_2_inst00 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, pp0[23:6], 
        n3, pp0[4:0]}), .b({1'b0, 1'b0, pp1, 1'b0}), .c({1'b0, pp2, 1'b0, 1'b0}), .d({pp3, 1'b0, 1'b0, 1'b0}), .sum(sum_00), .carry(carry_00) );
  csa4_2_WIDTH27_4 csa4_2_inst01 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, pp4}), .b(
        {1'b0, 1'b0, pp5, 1'b0}), .c({1'b0, pp6, 1'b0, 1'b0}), .d({pp7, 1'b0, 
        1'b0, 1'b0}), .sum(sum_01), .carry(carry_01) );
  csa4_2_WIDTH27_3 csa4_2_inst02 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, pp8}), .b(
        {1'b0, 1'b0, pp9, 1'b0}), .c({1'b0, pp10, 1'b0, 1'b0}), .d({pp11, 1'b0, 
        1'b0, 1'b0}), .sum(sum_02), .carry(carry_02) );
  csa4_2_WIDTH27_2 csa4_2_inst03 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, pp12}), 
        .b({1'b0, 1'b0, pp13, 1'b0}), .c({1'b0, pp14, 1'b0, 1'b0}), .d({pp15, 
        1'b0, 1'b0, 1'b0}), .sum(sum_03), .carry(carry_03) );
  csa4_2_WIDTH27_1 csa4_2_inst04 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, pp16}), 
        .b({1'b0, 1'b0, pp17, 1'b0}), .c({1'b0, pp18, 1'b0, 1'b0}), .d({pp19, 
        1'b0, 1'b0, 1'b0}), .sum(sum_04), .carry(carry_04) );
  csa4_2_WIDTH27_0 csa4_2_inst05 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, pp20}), 
        .b({1'b0, 1'b0, pp21, 1'b0}), .c({1'b0, pp22, 1'b0, 1'b0}), .d({pp23, 
        1'b0, 1'b0, 1'b0}), .sum(sum_05), .carry(carry_05) );
  csa4_2_WIDTH32_2 csa4_2_inst10 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, 1'b0, 
        sum_00}), .b({1'b0, 1'b0, 1'b0, 1'b0, carry_00}), .c({sum_01, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d({carry_01, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(
        sum_10), .carry(carry_10) );
  csa4_2_WIDTH32_1 csa4_2_inst11 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, 1'b0, 
        sum_02}), .b({1'b0, 1'b0, 1'b0, 1'b0, carry_02}), .c({sum_03, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d({carry_03, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(
        sum_11), .carry(carry_11) );
  csa4_2_WIDTH32_0 csa4_2_inst12 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, 1'b0, 
        sum_04}), .b({1'b0, 1'b0, 1'b0, 1'b0, carry_04}), .c({sum_05, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d({carry_05, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(
        sum_12), .carry(carry_12) );
  csa4_2_WIDTH50 csa4_2_inst40 ( .ci(1'b0), .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, sum_20[40:29], n9, sum_20[27:14], n13, n12, 
        sum_20[11:0]}), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        co_20, n10, carry_20[39:0]}), .c({1'b0, sum_21, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .d({co_21, carry_21, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .sum({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, sum}), .carry({
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, carry}) );
  mul_24x24_DW01_csa_0 DW01_csa_inst21 ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, carry_11}), .b({sum_12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .c({carry_12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .ci(1'b0), .carry(carry_21), .sum(sum_21), .co(co_21) );
  mul_24x24_DW01_csa_1 DW01_csa_inst20 ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, sum_10}), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, carry_10}), .c({sum_11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .ci(1'b0), .carry(carry_20), .sum(sum_20), .co(co_20) );
  NOR2X4 U3 ( .A(n65), .B(n30), .Y(pp17[12]) );
  NOR2X2 U4 ( .A(n136), .B(n45), .Y(pp2[20]) );
  NOR2X2 U5 ( .A(n63), .B(n14), .Y(pp0[11]) );
  NOR2X4 U6 ( .A(n75), .B(n14), .Y(pp0[18]) );
  NOR2X2 U7 ( .A(n89), .B(n51), .Y(pp5[4]) );
  NOR2X2 U8 ( .A(n143), .B(n41), .Y(pp21[6]) );
  NOR2X2 U9 ( .A(n63), .B(n20), .Y(pp12[11]) );
  NOR2X2 U10 ( .A(n86), .B(n15), .Y(pp0[2]) );
  NOR2X2 U11 ( .A(n95), .B(n51), .Y(pp5[8]) );
  NOR2X4 U12 ( .A(n91), .B(n45), .Y(pp2[5]) );
  BUFX20 U13 ( .A(n117), .Y(n46) );
  INVX4 U14 ( .A(b[3]), .Y(n117) );
  NOR2X2 U15 ( .A(n79), .B(n16), .Y(pp10[1]) );
  NOR2X2 U16 ( .A(n88), .B(n31), .Y(pp17[4]) );
  OR2X4 U17 ( .A(n143), .B(n37), .Y(n7) );
  BUFX20 U18 ( .A(n112), .Y(n37) );
  NOR2X2 U19 ( .A(n59), .B(n95), .Y(pp9[8]) );
  NOR2X4 U20 ( .A(n78), .B(n40), .Y(pp21[19]) );
  NOR2X4 U21 ( .A(n76), .B(n40), .Y(pp21[18]) );
  NOR2X4 U22 ( .A(n82), .B(n31), .Y(pp17[21]) );
  NOR2X4 U23 ( .A(n85), .B(n57), .Y(pp8[22]) );
  NOR2X2 U24 ( .A(n71), .B(n22), .Y(pp13[16]) );
  INVX4 U25 ( .A(b[10]), .Y(n102) );
  NOR2X2 U26 ( .A(n71), .B(n36), .Y(pp1[16]) );
  NOR2X2 U27 ( .A(n74), .B(n52), .Y(pp6[17]) );
  INVX1 U28 ( .A(n4), .Y(pp9[15]) );
  NOR2X1 U29 ( .A(n139), .B(n118), .Y(pp4[2]) );
  OR2X4 U30 ( .A(n96), .B(n37), .Y(n2) );
  CLKINVX3 U31 ( .A(n2), .Y(pp1[9]) );
  NOR2X2 U32 ( .A(n124), .B(n52), .Y(pp6[0]) );
  NOR2X2 U33 ( .A(n58), .B(n124), .Y(pp9[0]) );
  NOR2X1 U34 ( .A(n143), .B(n51), .Y(pp5[6]) );
  NOR2X2 U35 ( .A(n136), .B(n51), .Y(pp5[20]) );
  NOR2X1 U36 ( .A(n98), .B(n23), .Y(pp13[23]) );
  NOR2X2 U37 ( .A(n98), .B(n43), .Y(pp22[23]) );
  NOR2X2 U38 ( .A(n90), .B(n15), .Y(n3) );
  INVX4 U39 ( .A(a[15]), .Y(n130) );
  INVX6 U40 ( .A(a[17]), .Y(n132) );
  INVX3 U41 ( .A(a[22]), .Y(n138) );
  INVX3 U42 ( .A(b[2]), .Y(n116) );
  INVX6 U43 ( .A(b[8]), .Y(n122) );
  INVX3 U44 ( .A(a[13]), .Y(n128) );
  NOR2X4 U45 ( .A(n67), .B(n56), .Y(pp8[13]) );
  INVX4 U46 ( .A(a[10]), .Y(n125) );
  NOR2X2 U47 ( .A(n82), .B(n23), .Y(pp13[21]) );
  NOR2X2 U48 ( .A(n82), .B(n39), .Y(pp20[21]) );
  NOR2X2 U49 ( .A(n98), .B(n51), .Y(pp5[23]) );
  NOR2X2 U50 ( .A(n98), .B(n49), .Y(pp4[23]) );
  NOR2X2 U51 ( .A(n98), .B(n41), .Y(pp21[23]) );
  NOR2X1 U52 ( .A(n98), .B(n57), .Y(pp8[23]) );
  NOR2X1 U53 ( .A(n59), .B(n98), .Y(pp9[23]) );
  INVX4 U54 ( .A(a[18]), .Y(n133) );
  NOR2X2 U55 ( .A(n87), .B(n29), .Y(pp16[3]) );
  NOR2X1 U56 ( .A(n78), .B(n52), .Y(pp6[19]) );
  NOR2X1 U57 ( .A(n92), .B(n29), .Y(pp16[7]) );
  NOR2X1 U58 ( .A(n67), .B(n52), .Y(pp6[13]) );
  NOR2X1 U59 ( .A(n90), .B(n37), .Y(pp1[5]) );
  NOR2X1 U60 ( .A(n84), .B(n15), .Y(pp0[22]) );
  NOR2X1 U61 ( .A(n69), .B(n44), .Y(pp2[14]) );
  NOR2X1 U62 ( .A(n139), .B(n57), .Y(pp8[2]) );
  NOR2X1 U63 ( .A(n92), .B(n33), .Y(pp18[7]) );
  NOR2X1 U64 ( .A(n84), .B(n33), .Y(pp18[22]) );
  NOR2X1 U65 ( .A(n66), .B(n30), .Y(pp17[13]) );
  NOR2X1 U66 ( .A(n66), .B(n14), .Y(pp0[13]) );
  NOR2X1 U67 ( .A(n79), .B(n30), .Y(pp17[1]) );
  NOR2X1 U68 ( .A(n68), .B(n14), .Y(pp0[14]) );
  NOR2X1 U69 ( .A(n91), .B(n53), .Y(pp6[5]) );
  NOR2X1 U70 ( .A(n88), .B(n15), .Y(pp0[4]) );
  NOR2X1 U71 ( .A(n63), .B(n30), .Y(pp17[11]) );
  NOR2X1 U72 ( .A(n61), .B(n28), .Y(pp16[10]) );
  NOR2X1 U73 ( .A(n96), .B(n29), .Y(pp16[9]) );
  BUFX8 U74 ( .A(n108), .Y(n29) );
  NOR2X1 U75 ( .A(n94), .B(n29), .Y(pp16[8]) );
  NOR2X1 U76 ( .A(n85), .B(n53), .Y(pp6[22]) );
  NOR2XL U77 ( .A(n65), .B(n50), .Y(pp5[12]) );
  NOR2X1 U78 ( .A(n83), .B(n53), .Y(pp6[21]) );
  NOR2X1 U79 ( .A(n61), .B(n30), .Y(pp17[10]) );
  NOR2X1 U80 ( .A(n143), .B(n31), .Y(pp17[6]) );
  NOR2X2 U81 ( .A(n63), .B(n16), .Y(pp10[11]) );
  NOR2X4 U82 ( .A(n124), .B(n44), .Y(pp2[0]) );
  NOR2X1 U83 ( .A(n85), .B(n45), .Y(pp2[22]) );
  NOR2X1 U84 ( .A(n143), .B(n57), .Y(pp8[6]) );
  NOR2X1 U85 ( .A(n84), .B(n23), .Y(pp13[22]) );
  NOR2X1 U86 ( .A(n143), .B(n45), .Y(pp2[6]) );
  NOR2X1 U87 ( .A(n88), .B(n37), .Y(pp1[4]) );
  NOR2X1 U88 ( .A(n75), .B(n28), .Y(pp16[18]) );
  NOR2X2 U89 ( .A(n76), .B(n54), .Y(pp7[18]) );
  NOR2X2 U90 ( .A(n78), .B(n54), .Y(pp7[19]) );
  NOR2X2 U91 ( .A(n124), .B(n54), .Y(pp7[0]) );
  NOR2X2 U92 ( .A(n62), .B(n54), .Y(pp7[10]) );
  NOR2X2 U93 ( .A(n80), .B(n54), .Y(pp7[1]) );
  NOR2X2 U94 ( .A(n64), .B(n54), .Y(pp7[11]) );
  NOR2X2 U95 ( .A(n130), .B(n54), .Y(pp7[15]) );
  NOR2X2 U96 ( .A(n74), .B(n54), .Y(pp7[17]) );
  NOR2XL U97 ( .A(n72), .B(n54), .Y(pp7[16]) );
  NOR2X2 U98 ( .A(n67), .B(n54), .Y(pp7[13]) );
  BUFX8 U99 ( .A(n121), .Y(n54) );
  NOR2X1 U100 ( .A(n98), .B(n31), .Y(pp17[23]) );
  NOR2X1 U101 ( .A(n68), .B(n36), .Y(pp1[14]) );
  NOR2X1 U102 ( .A(n70), .B(n52), .Y(pp6[15]) );
  NOR2X1 U103 ( .A(n94), .B(n37), .Y(pp1[8]) );
  BUFX12 U104 ( .A(n116), .Y(n44) );
  NOR2X1 U105 ( .A(n87), .B(n57), .Y(pp8[3]) );
  BUFX20 U106 ( .A(n102), .Y(n17) );
  NOR2X4 U107 ( .A(n98), .B(n17), .Y(pp10[23]) );
  NOR2X4 U108 ( .A(n86), .B(n17), .Y(pp10[2]) );
  BUFX20 U109 ( .A(n116), .Y(n45) );
  NOR2X2 U110 ( .A(n87), .B(n45), .Y(pp2[3]) );
  NOR2X2 U111 ( .A(n95), .B(n45), .Y(pp2[8]) );
  NOR2X2 U112 ( .A(n98), .B(n45), .Y(pp2[23]) );
  NOR2X2 U113 ( .A(n127), .B(n44), .Y(pp2[12]) );
  NOR2X2 U114 ( .A(n78), .B(n44), .Y(pp2[19]) );
  NOR2X2 U115 ( .A(n62), .B(n44), .Y(pp2[10]) );
  NOR2X2 U116 ( .A(n76), .B(n44), .Y(pp2[18]) );
  NOR2X2 U117 ( .A(n67), .B(n44), .Y(pp2[13]) );
  NOR2X2 U118 ( .A(n72), .B(n44), .Y(pp2[16]) );
  NOR2X1 U119 ( .A(n136), .B(n57), .Y(pp8[20]) );
  NOR2X1 U120 ( .A(n58), .B(n78), .Y(pp9[19]) );
  NOR2X1 U121 ( .A(n139), .B(n45), .Y(pp2[2]) );
  NOR2X2 U122 ( .A(n79), .B(n38), .Y(pp20[1]) );
  NOR2X1 U123 ( .A(n92), .B(n37), .Y(pp1[7]) );
  NOR2X1 U124 ( .A(n81), .B(n37), .Y(pp1[20]) );
  NOR2X1 U125 ( .A(n98), .B(n37), .Y(pp1[23]) );
  NOR2X1 U126 ( .A(n82), .B(n37), .Y(pp1[21]) );
  NAND2BXL U127 ( .AN(n58), .B(a[15]), .Y(n4) );
  BUFX20 U128 ( .A(n142), .Y(n90) );
  OR2X2 U129 ( .A(n86), .B(n37), .Y(n5) );
  CLKINVX4 U130 ( .A(n5), .Y(pp1[2]) );
  BUFX20 U131 ( .A(n146), .Y(n96) );
  OR2X2 U132 ( .A(n73), .B(n28), .Y(n6) );
  CLKINVX4 U133 ( .A(n6), .Y(pp16[17]) );
  NOR2X1 U134 ( .A(n136), .B(n49), .Y(pp4[20]) );
  CLKINVX3 U135 ( .A(n7), .Y(pp1[6]) );
  OR2X2 U136 ( .A(n68), .B(n16), .Y(n8) );
  CLKINVX4 U137 ( .A(n8), .Y(pp10[14]) );
  BUFX20 U138 ( .A(n129), .Y(n68) );
  NOR2X2 U139 ( .A(n80), .B(n44), .Y(pp2[1]) );
  BUFX20 U140 ( .A(n135), .Y(n80) );
  NOR2X2 U141 ( .A(n93), .B(n45), .Y(pp2[7]) );
  BUFX20 U142 ( .A(n144), .Y(n93) );
  NOR2X1 U143 ( .A(n98), .B(n29), .Y(pp16[23]) );
  NOR2X1 U144 ( .A(n65), .B(n14), .Y(pp0[12]) );
  NOR2X1 U145 ( .A(n136), .B(n41), .Y(pp21[20]) );
  NOR2X1 U146 ( .A(n83), .B(n45), .Y(pp2[21]) );
  NOR2X1 U147 ( .A(n98), .B(n35), .Y(pp19[23]) );
  NOR2X1 U148 ( .A(n66), .B(n36), .Y(pp1[13]) );
  NOR2XL U149 ( .A(n65), .B(n16), .Y(pp10[12]) );
  NOR2X1 U150 ( .A(n79), .B(n14), .Y(pp0[1]) );
  NOR2X1 U151 ( .A(n70), .B(n56), .Y(pp8[15]) );
  NOR2X1 U152 ( .A(n84), .B(n29), .Y(pp16[22]) );
  NOR2XL U153 ( .A(n84), .B(n31), .Y(pp17[22]) );
  NOR2X1 U154 ( .A(n84), .B(n21), .Y(pp12[22]) );
  NOR2X1 U155 ( .A(n84), .B(n39), .Y(pp20[22]) );
  BUFX8 U156 ( .A(sum_20[28]), .Y(n9) );
  NOR2X1 U157 ( .A(n71), .B(n16), .Y(pp10[16]) );
  NOR2X8 U158 ( .A(n78), .B(n50), .Y(pp5[19]) );
  NOR2X1 U159 ( .A(n70), .B(n50), .Y(pp5[15]) );
  NOR2X1 U160 ( .A(n67), .B(n50), .Y(pp5[13]) );
  NOR2X1 U161 ( .A(n76), .B(n50), .Y(pp5[18]) );
  BUFX20 U162 ( .A(n119), .Y(n50) );
  NOR2X1 U163 ( .A(n58), .B(n62), .Y(pp9[10]) );
  BUFX20 U164 ( .A(n115), .Y(n43) );
  INVX4 U165 ( .A(b[22]), .Y(n115) );
  NOR2X4 U166 ( .A(n62), .B(n40), .Y(pp21[10]) );
  NOR2X1 U167 ( .A(n97), .B(n43), .Y(pp22[9]) );
  NOR2X1 U168 ( .A(n59), .B(n85), .Y(pp9[22]) );
  NOR2X1 U169 ( .A(n63), .B(n36), .Y(pp1[11]) );
  BUFX20 U170 ( .A(n112), .Y(n36) );
  INVX6 U171 ( .A(b[1]), .Y(n112) );
  BUFX20 U172 ( .A(n119), .Y(n51) );
  NOR2X4 U173 ( .A(n93), .B(n51), .Y(pp5[7]) );
  NOR2X1 U174 ( .A(n94), .B(n31), .Y(pp17[8]) );
  INVX6 U175 ( .A(b[5]), .Y(n119) );
  NOR2X4 U176 ( .A(n60), .B(n14), .Y(pp0[0]) );
  BUFX8 U177 ( .A(carry_20[40]), .Y(n10) );
  NOR2X1 U178 ( .A(n58), .B(n81), .Y(pp9[20]) );
  NOR2X1 U179 ( .A(n69), .B(n40), .Y(pp21[14]) );
  INVX8 U180 ( .A(b[0]), .Y(n101) );
  NOR2X1 U181 ( .A(n77), .B(n14), .Y(pp0[19]) );
  BUFX20 U182 ( .A(n134), .Y(n77) );
  INVX8 U183 ( .A(b[4]), .Y(n118) );
  NOR2X4 U184 ( .A(n60), .B(n48), .Y(pp4[0]) );
  BUFX20 U185 ( .A(n118), .Y(n48) );
  BUFX20 U186 ( .A(n145), .Y(n94) );
  INVX6 U187 ( .A(a[8]), .Y(n145) );
  NOR2X1 U188 ( .A(n94), .B(n23), .Y(pp13[8]) );
  BUFX20 U189 ( .A(n105), .Y(n23) );
  NOR2X4 U190 ( .A(n124), .B(n56), .Y(pp8[0]) );
  BUFX20 U191 ( .A(n105), .Y(n22) );
  INVX6 U192 ( .A(b[13]), .Y(n105) );
  BUFX20 U193 ( .A(n133), .Y(n75) );
  INVX8 U194 ( .A(b[9]), .Y(n123) );
  NOR2X1 U195 ( .A(n60), .B(n28), .Y(pp16[0]) );
  NOR2X1 U196 ( .A(n92), .B(n31), .Y(pp17[7]) );
  NOR2X1 U197 ( .A(n59), .B(n87), .Y(pp9[3]) );
  NOR2X1 U198 ( .A(n69), .B(n50), .Y(pp5[14]) );
  NOR2X2 U199 ( .A(n73), .B(n14), .Y(pp0[17]) );
  NOR2X1 U200 ( .A(n65), .B(n36), .Y(pp1[12]) );
  NOR2X1 U201 ( .A(n85), .B(n51), .Y(pp5[22]) );
  NOR2X1 U202 ( .A(n59), .B(n89), .Y(pp9[4]) );
  INVX3 U203 ( .A(b[19]), .Y(n111) );
  BUFX12 U204 ( .A(n110), .Y(n33) );
  NOR2X2 U205 ( .A(n98), .B(n53), .Y(pp6[23]) );
  NOR2X1 U206 ( .A(n98), .B(n47), .Y(pp3[23]) );
  BUFX3 U207 ( .A(b[11]), .Y(n11) );
  INVX4 U208 ( .A(b[18]), .Y(n110) );
  BUFX20 U209 ( .A(n135), .Y(n79) );
  INVX6 U210 ( .A(a[1]), .Y(n135) );
  NOR2X4 U211 ( .A(n79), .B(n28), .Y(pp16[1]) );
  BUFX20 U212 ( .A(n108), .Y(n28) );
  NOR2X2 U213 ( .A(n80), .B(n40), .Y(pp21[1]) );
  NOR2X2 U214 ( .A(n80), .B(n48), .Y(pp4[1]) );
  NOR2X2 U215 ( .A(n80), .B(n42), .Y(pp22[1]) );
  NOR2X2 U216 ( .A(n80), .B(n56), .Y(pp8[1]) );
  NOR2X2 U217 ( .A(n58), .B(n80), .Y(pp9[1]) );
  BUFX20 U218 ( .A(n136), .Y(n81) );
  INVX8 U219 ( .A(a[20]), .Y(n136) );
  NOR2X1 U220 ( .A(n81), .B(n31), .Y(pp17[20]) );
  BUFX20 U221 ( .A(n109), .Y(n31) );
  NOR2X1 U222 ( .A(n87), .B(n37), .Y(pp1[3]) );
  NOR2X2 U223 ( .A(n87), .B(n39), .Y(pp20[3]) );
  NOR2X2 U224 ( .A(n87), .B(n31), .Y(pp17[3]) );
  NOR2X2 U225 ( .A(n87), .B(n33), .Y(pp18[3]) );
  NOR2X2 U226 ( .A(n87), .B(n17), .Y(pp10[3]) );
  BUFX20 U227 ( .A(n140), .Y(n87) );
  BUFX20 U228 ( .A(n118), .Y(n49) );
  BUFX20 U229 ( .A(n125), .Y(n62) );
  BUFX20 U230 ( .A(n106), .Y(n24) );
  INVX4 U231 ( .A(b[14]), .Y(n106) );
  NOR2X2 U232 ( .A(n75), .B(n36), .Y(pp1[18]) );
  NOR2X2 U233 ( .A(n77), .B(n36), .Y(pp1[19]) );
  NOR2X2 U234 ( .A(n70), .B(n36), .Y(pp1[15]) );
  NOR2X2 U235 ( .A(n60), .B(n36), .Y(pp1[0]) );
  NOR2X2 U236 ( .A(n61), .B(n36), .Y(pp1[10]) );
  BUFX20 U237 ( .A(n137), .Y(n82) );
  BUFX3 U238 ( .A(n107), .Y(n26) );
  NOR2X4 U239 ( .A(n60), .B(n20), .Y(pp12[0]) );
  BUFX20 U240 ( .A(n104), .Y(n20) );
  BUFX20 U241 ( .A(n124), .Y(n60) );
  BUFX20 U242 ( .A(n127), .Y(n65) );
  INVX8 U243 ( .A(a[12]), .Y(n127) );
  BUFX20 U244 ( .A(n134), .Y(n78) );
  INVX4 U245 ( .A(a[19]), .Y(n134) );
  NOR2X1 U246 ( .A(n59), .B(n91), .Y(pp9[5]) );
  BUFX20 U247 ( .A(n142), .Y(n91) );
  INVX8 U248 ( .A(a[0]), .Y(n124) );
  BUFX20 U249 ( .A(n132), .Y(n73) );
  INVX6 U250 ( .A(a[14]), .Y(n129) );
  NOR2X2 U251 ( .A(n65), .B(n18), .Y(pp11[12]) );
  NOR2X2 U252 ( .A(n66), .B(n18), .Y(pp11[13]) );
  BUFX16 U253 ( .A(n103), .Y(n18) );
  NOR2X4 U254 ( .A(n60), .B(n40), .Y(pp21[0]) );
  NOR2X2 U255 ( .A(n124), .B(n50), .Y(pp5[0]) );
  NOR2X4 U256 ( .A(n64), .B(n56), .Y(pp8[11]) );
  NOR2X4 U257 ( .A(n58), .B(n64), .Y(pp9[11]) );
  NOR2X4 U258 ( .A(n64), .B(n40), .Y(pp21[11]) );
  NOR2X4 U259 ( .A(n64), .B(n42), .Y(pp22[11]) );
  NOR2X2 U260 ( .A(n64), .B(n44), .Y(pp2[11]) );
  BUFX20 U261 ( .A(n126), .Y(n64) );
  BUFX16 U262 ( .A(n115), .Y(n42) );
  NOR2X4 U263 ( .A(n74), .B(n40), .Y(pp21[17]) );
  NOR2X4 U264 ( .A(n74), .B(n56), .Y(pp8[17]) );
  NOR2X2 U265 ( .A(n74), .B(n44), .Y(pp2[17]) );
  NOR2X2 U266 ( .A(n74), .B(n50), .Y(pp5[17]) );
  BUFX20 U267 ( .A(n132), .Y(n74) );
  NOR2X1 U268 ( .A(n78), .B(n56), .Y(pp8[19]) );
  BUFX20 U269 ( .A(n133), .Y(n76) );
  BUFX20 U270 ( .A(n139), .Y(n86) );
  INVX8 U271 ( .A(a[2]), .Y(n139) );
  BUFX20 U272 ( .A(n130), .Y(n70) );
  NOR2X2 U273 ( .A(n75), .B(n32), .Y(pp18[18]) );
  NOR2X2 U274 ( .A(n73), .B(n32), .Y(pp18[17]) );
  NOR2X2 U275 ( .A(n68), .B(n32), .Y(pp18[14]) );
  NOR2X2 U276 ( .A(n66), .B(n32), .Y(pp18[13]) );
  NOR2X2 U277 ( .A(n77), .B(n32), .Y(pp18[19]) );
  BUFX20 U278 ( .A(n110), .Y(n32) );
  NOR2X2 U279 ( .A(n82), .B(n21), .Y(pp12[21]) );
  NOR2X2 U280 ( .A(n98), .B(n21), .Y(pp12[23]) );
  NOR2X2 U281 ( .A(n81), .B(n21), .Y(pp12[20]) );
  NOR2X2 U282 ( .A(n92), .B(n21), .Y(pp12[7]) );
  BUFX20 U283 ( .A(n104), .Y(n21) );
  BUFX20 U284 ( .A(n128), .Y(n67) );
  NOR2X2 U285 ( .A(n127), .B(n42), .Y(pp22[12]) );
  BUFX20 U286 ( .A(n101), .Y(n14) );
  NOR2X1 U287 ( .A(n91), .B(n57), .Y(pp8[5]) );
  BUFX20 U288 ( .A(n122), .Y(n57) );
  NOR2X2 U289 ( .A(n68), .B(n38), .Y(pp20[14]) );
  NOR2X2 U290 ( .A(n71), .B(n38), .Y(pp20[16]) );
  NOR2X2 U291 ( .A(n65), .B(n38), .Y(pp20[12]) );
  NOR2X2 U292 ( .A(n63), .B(n38), .Y(pp20[11]) );
  NOR2X2 U293 ( .A(n73), .B(n38), .Y(pp20[17]) );
  BUFX20 U294 ( .A(n113), .Y(n38) );
  BUFX20 U295 ( .A(n123), .Y(n58) );
  BUFX20 U296 ( .A(n146), .Y(n97) );
  NOR2X1 U297 ( .A(n67), .B(n40), .Y(pp21[13]) );
  NOR2X1 U298 ( .A(n70), .B(n40), .Y(pp21[15]) );
  NOR2X4 U299 ( .A(n72), .B(n40), .Y(pp21[16]) );
  BUFX20 U300 ( .A(n114), .Y(n40) );
  BUFX20 U301 ( .A(n138), .Y(n85) );
  BUFX6 U302 ( .A(sum_20[12]), .Y(n12) );
  NOR2X2 U303 ( .A(n83), .B(n41), .Y(pp21[21]) );
  NOR2X4 U304 ( .A(n59), .B(n83), .Y(pp9[21]) );
  NOR2X2 U305 ( .A(n83), .B(n57), .Y(pp8[21]) );
  NOR2X2 U306 ( .A(n83), .B(n43), .Y(pp22[21]) );
  NOR2X2 U307 ( .A(n83), .B(n49), .Y(pp4[21]) );
  BUFX20 U308 ( .A(n137), .Y(n83) );
  INVX8 U309 ( .A(a[6]), .Y(n143) );
  NOR2X1 U310 ( .A(n89), .B(n57), .Y(pp8[4]) );
  BUFX20 U311 ( .A(n123), .Y(n59) );
  NOR2X2 U312 ( .A(n80), .B(n52), .Y(pp6[1]) );
  NOR2X1 U313 ( .A(n76), .B(n52), .Y(pp6[18]) );
  NOR2X2 U314 ( .A(n62), .B(n52), .Y(pp6[10]) );
  NOR2X2 U315 ( .A(n64), .B(n52), .Y(pp6[11]) );
  BUFX20 U316 ( .A(n120), .Y(n52) );
  NOR2X2 U317 ( .A(n81), .B(n29), .Y(pp16[20]) );
  NOR2X2 U318 ( .A(n82), .B(n29), .Y(pp16[21]) );
  NOR2X2 U319 ( .A(n88), .B(n29), .Y(pp16[4]) );
  NOR2X2 U320 ( .A(n86), .B(n29), .Y(pp16[2]) );
  NOR2X2 U321 ( .A(n62), .B(n50), .Y(pp5[10]) );
  NOR2X2 U322 ( .A(n80), .B(n50), .Y(pp5[1]) );
  NOR2X1 U323 ( .A(n64), .B(n50), .Y(pp5[11]) );
  NOR2X4 U324 ( .A(n60), .B(n30), .Y(pp17[0]) );
  NOR2X1 U325 ( .A(n73), .B(n30), .Y(pp17[17]) );
  NOR2X2 U326 ( .A(n77), .B(n30), .Y(pp17[19]) );
  NOR2X1 U327 ( .A(n70), .B(n30), .Y(pp17[15]) );
  NOR2X2 U328 ( .A(n75), .B(n30), .Y(pp17[18]) );
  NOR2X2 U329 ( .A(n68), .B(n30), .Y(pp17[14]) );
  BUFX20 U330 ( .A(n109), .Y(n30) );
  BUFX6 U331 ( .A(sum_20[13]), .Y(n13) );
  BUFX20 U332 ( .A(n102), .Y(n16) );
  NOR2X2 U333 ( .A(n94), .B(n15), .Y(pp0[8]) );
  NOR2X2 U334 ( .A(n92), .B(n15), .Y(pp0[7]) );
  NOR2X2 U335 ( .A(n81), .B(n15), .Y(pp0[20]) );
  NOR2X2 U336 ( .A(n82), .B(n15), .Y(pp0[21]) );
  NOR2X2 U337 ( .A(n96), .B(n15), .Y(pp0[9]) );
  BUFX20 U338 ( .A(n101), .Y(n15) );
  NOR2X1 U339 ( .A(n73), .B(n36), .Y(pp1[17]) );
  BUFX20 U340 ( .A(n131), .Y(n72) );
  BUFX12 U341 ( .A(n129), .Y(n69) );
  NOR2X1 U342 ( .A(n67), .B(n48), .Y(pp4[13]) );
  NOR2X1 U343 ( .A(n58), .B(n65), .Y(pp9[12]) );
  NOR2X2 U344 ( .A(n69), .B(n56), .Y(pp8[14]) );
  NOR2X1 U345 ( .A(n58), .B(n67), .Y(pp9[13]) );
  NOR2X2 U346 ( .A(n70), .B(n44), .Y(pp2[15]) );
  BUFX8 U347 ( .A(n138), .Y(n84) );
  NOR2XL U348 ( .A(n87), .B(n27), .Y(pp15[3]) );
  BUFX8 U349 ( .A(n128), .Y(n66) );
  BUFX8 U350 ( .A(n126), .Y(n63) );
  BUFX8 U351 ( .A(n121), .Y(n55) );
  BUFX8 U352 ( .A(n120), .Y(n53) );
  BUFX8 U353 ( .A(n114), .Y(n41) );
  BUFX8 U354 ( .A(n103), .Y(n19) );
  BUFX8 U355 ( .A(n113), .Y(n39) );
  BUFX8 U356 ( .A(n125), .Y(n61) );
  BUFX8 U357 ( .A(n106), .Y(n25) );
  BUFX8 U358 ( .A(n131), .Y(n71) );
  BUFX8 U359 ( .A(n147), .Y(n98) );
  BUFX8 U360 ( .A(n107), .Y(n27) );
  INVX3 U361 ( .A(n11), .Y(n103) );
  INVX3 U362 ( .A(a[21]), .Y(n137) );
  BUFX3 U363 ( .A(n148), .Y(n99) );
  NOR2XL U364 ( .A(n85), .B(n41), .Y(pp21[22]) );
  NOR2X1 U365 ( .A(n97), .B(n45), .Y(pp2[9]) );
  NOR2XL U366 ( .A(n89), .B(n55), .Y(pp7[4]) );
  NOR2XL U367 ( .A(n143), .B(n19), .Y(pp11[6]) );
  NOR2XL U368 ( .A(n96), .B(n19), .Y(pp11[9]) );
  BUFX6 U369 ( .A(n144), .Y(n92) );
  INVX4 U370 ( .A(a[9]), .Y(n146) );
  INVX4 U371 ( .A(a[11]), .Y(n126) );
  NOR2XL U372 ( .A(n98), .B(n39), .Y(pp20[23]) );
  NOR2XL U373 ( .A(n88), .B(n23), .Y(pp13[4]) );
  NOR2XL U374 ( .A(n90), .B(n21), .Y(pp12[5]) );
  NOR2XL U375 ( .A(n69), .B(n52), .Y(pp6[14]) );
  NOR2XL U376 ( .A(n72), .B(n50), .Y(pp5[16]) );
  NOR2XL U377 ( .A(n79), .B(n24), .Y(pp14[1]) );
  NOR2XL U378 ( .A(n86), .B(n19), .Y(pp11[2]) );
  BUFX8 U379 ( .A(n111), .Y(n35) );
  BUFX8 U380 ( .A(n141), .Y(n88) );
  BUFX6 U381 ( .A(n148), .Y(n100) );
  NOR2X1 U382 ( .A(n60), .B(n32), .Y(pp18[0]) );
  NOR2XL U383 ( .A(n87), .B(n55), .Y(pp7[3]) );
  NOR2XL U384 ( .A(n93), .B(n55), .Y(pp7[7]) );
  NOR2XL U385 ( .A(n95), .B(n55), .Y(pp7[8]) );
  NOR2XL U386 ( .A(n97), .B(n55), .Y(pp7[9]) );
  NOR2XL U387 ( .A(n139), .B(n55), .Y(pp7[2]) );
  NOR2XL U388 ( .A(n64), .B(n46), .Y(pp3[11]) );
  NOR2XL U389 ( .A(n87), .B(n19), .Y(pp11[3]) );
  NOR2XL U390 ( .A(n61), .B(n18), .Y(pp11[10]) );
  NOR2XL U391 ( .A(n69), .B(n46), .Y(pp3[14]) );
  NOR2XL U392 ( .A(n63), .B(n18), .Y(pp11[11]) );
  NOR2XL U393 ( .A(n92), .B(n19), .Y(pp11[7]) );
  NOR2XL U394 ( .A(n76), .B(n46), .Y(pp3[18]) );
  NOR2XL U395 ( .A(n136), .B(n47), .Y(pp3[20]) );
  NOR2XL U396 ( .A(n74), .B(n46), .Y(pp3[17]) );
  NOR2XL U397 ( .A(n93), .B(n47), .Y(pp3[7]) );
  NOR2XL U398 ( .A(n127), .B(n46), .Y(pp3[12]) );
  NOR2XL U399 ( .A(n72), .B(n46), .Y(pp3[16]) );
  NOR2XL U400 ( .A(n88), .B(n19), .Y(pp11[4]) );
  NOR2XL U401 ( .A(n67), .B(n46), .Y(pp3[13]) );
  NOR2XL U402 ( .A(n70), .B(n46), .Y(pp3[15]) );
  NOR2XL U403 ( .A(n90), .B(n19), .Y(pp11[5]) );
  NOR2XL U404 ( .A(n91), .B(n47), .Y(pp3[5]) );
  NOR2XL U405 ( .A(n94), .B(n19), .Y(pp11[8]) );
  NOR2XL U406 ( .A(n78), .B(n46), .Y(pp3[19]) );
  NOR2XL U407 ( .A(n73), .B(n18), .Y(pp11[17]) );
  NOR2XL U408 ( .A(n74), .B(n99), .Y(pp23[17]) );
  NOR2XL U409 ( .A(n140), .B(n100), .Y(pp23[3]) );
  NOR2XL U410 ( .A(n77), .B(n34), .Y(pp19[19]) );
  NOR2XL U411 ( .A(n70), .B(n34), .Y(pp19[15]) );
  NOR2XL U412 ( .A(n71), .B(n34), .Y(pp19[16]) );
  NOR2XL U413 ( .A(n73), .B(n34), .Y(pp19[17]) );
  NOR2XL U414 ( .A(n66), .B(n34), .Y(pp19[13]) );
  NOR2XL U415 ( .A(n81), .B(n35), .Y(pp19[20]) );
  NOR2XL U416 ( .A(n87), .B(n35), .Y(pp19[3]) );
  NOR2XL U417 ( .A(n88), .B(n35), .Y(pp19[4]) );
  NOR2XL U418 ( .A(n63), .B(n34), .Y(pp19[11]) );
  NOR2XL U419 ( .A(n143), .B(n35), .Y(pp19[6]) );
  NOR2XL U420 ( .A(n92), .B(n35), .Y(pp19[7]) );
  NOR2XL U421 ( .A(n94), .B(n35), .Y(pp19[8]) );
  NOR2XL U422 ( .A(n64), .B(n99), .Y(pp23[11]) );
  NOR2XL U423 ( .A(n130), .B(n99), .Y(pp23[15]) );
  NOR2XL U424 ( .A(n127), .B(n99), .Y(pp23[12]) );
  NOR2XL U425 ( .A(n72), .B(n99), .Y(pp23[16]) );
  NOR2XL U426 ( .A(n62), .B(n99), .Y(pp23[10]) );
  NOR2XL U427 ( .A(n67), .B(n99), .Y(pp23[13]) );
  NOR2XL U428 ( .A(n69), .B(n99), .Y(pp23[14]) );
  NOR2XL U429 ( .A(n97), .B(n100), .Y(pp23[9]) );
  NOR2XL U430 ( .A(n76), .B(n99), .Y(pp23[18]) );
  NOR2XL U431 ( .A(n124), .B(n99), .Y(pp23[0]) );
  NOR2XL U432 ( .A(n93), .B(n100), .Y(pp23[7]) );
  NOR2XL U433 ( .A(n80), .B(n99), .Y(pp23[1]) );
  NOR2XL U434 ( .A(n75), .B(n26), .Y(pp15[18]) );
  NOR2XL U435 ( .A(n95), .B(n100), .Y(pp23[8]) );
  NOR2XL U436 ( .A(n139), .B(n100), .Y(pp23[2]) );
  NOR2XL U437 ( .A(n143), .B(n100), .Y(pp23[6]) );
  NOR2XL U438 ( .A(n89), .B(n100), .Y(pp23[4]) );
  NOR2XL U439 ( .A(n91), .B(n100), .Y(pp23[5]) );
  NOR2XL U440 ( .A(n86), .B(n27), .Y(pp15[2]) );
  NOR2XL U441 ( .A(n143), .B(n27), .Y(pp15[6]) );
  NOR2XL U442 ( .A(n92), .B(n27), .Y(pp15[7]) );
  NOR2XL U443 ( .A(n90), .B(n27), .Y(pp15[5]) );
  NOR2XL U444 ( .A(n94), .B(n27), .Y(pp15[8]) );
  NOR2XL U445 ( .A(n88), .B(n27), .Y(pp15[4]) );
  NOR2XL U446 ( .A(n96), .B(n27), .Y(pp15[9]) );
  NOR2XL U447 ( .A(n61), .B(n26), .Y(pp15[10]) );
  NOR2XL U448 ( .A(n63), .B(n26), .Y(pp15[11]) );
  NOR2XL U449 ( .A(n81), .B(n19), .Y(pp11[20]) );
  NOR2XL U450 ( .A(n75), .B(n34), .Y(pp19[18]) );
  NOR2XL U451 ( .A(n68), .B(n34), .Y(pp19[14]) );
  NOR2XL U452 ( .A(n89), .B(n47), .Y(pp3[4]) );
  NOR2XL U453 ( .A(n65), .B(n34), .Y(pp19[12]) );
  NOR2XL U454 ( .A(n87), .B(n47), .Y(pp3[3]) );
  NOR2XL U455 ( .A(n61), .B(n34), .Y(pp19[10]) );
  NOR2XL U456 ( .A(n96), .B(n35), .Y(pp19[9]) );
  NOR2XL U457 ( .A(n75), .B(n18), .Y(pp11[18]) );
  NOR2XL U458 ( .A(n77), .B(n18), .Y(pp11[19]) );
  NOR2XL U459 ( .A(n68), .B(n18), .Y(pp11[14]) );
  NOR2XL U460 ( .A(n71), .B(n18), .Y(pp11[16]) );
  NOR2XL U461 ( .A(n70), .B(n18), .Y(pp11[15]) );
  BUFX12 U462 ( .A(n122), .Y(n56) );
  BUFX8 U463 ( .A(n145), .Y(n95) );
  BUFX8 U464 ( .A(n141), .Y(n89) );
  INVX3 U465 ( .A(b[6]), .Y(n120) );
  INVX4 U466 ( .A(b[16]), .Y(n108) );
  INVX4 U467 ( .A(b[20]), .Y(n113) );
  INVX4 U468 ( .A(b[17]), .Y(n109) );
  INVX4 U469 ( .A(b[21]), .Y(n114) );
  INVX4 U470 ( .A(b[12]), .Y(n104) );
  INVX3 U471 ( .A(b[7]), .Y(n121) );
  INVX3 U472 ( .A(b[15]), .Y(n107) );
  INVX3 U473 ( .A(a[7]), .Y(n144) );
  INVX3 U474 ( .A(a[5]), .Y(n142) );
  INVX3 U475 ( .A(a[4]), .Y(n141) );
  NOR2XL U476 ( .A(n98), .B(n19), .Y(pp11[23]) );
  INVXL U477 ( .A(a[23]), .Y(n147) );
  NOR2XL U478 ( .A(n84), .B(n25), .Y(pp14[22]) );
  NOR2XL U479 ( .A(n84), .B(n17), .Y(pp10[22]) );
  NOR2X1 U480 ( .A(n79), .B(n36), .Y(pp1[1]) );
  NOR2X1 U481 ( .A(n61), .B(n14), .Y(pp0[10]) );
  NOR2XL U482 ( .A(n70), .B(n14), .Y(pp0[15]) );
  NOR2XL U483 ( .A(n71), .B(n14), .Y(pp0[16]) );
  NOR2XL U484 ( .A(n89), .B(n45), .Y(pp2[4]) );
  NOR2XL U485 ( .A(n143), .B(n15), .Y(pp0[6]) );
  NOR2XL U486 ( .A(n87), .B(n15), .Y(pp0[3]) );
  NOR2X1 U487 ( .A(n60), .B(n24), .Y(pp14[0]) );
  NOR2XL U488 ( .A(n79), .B(n22), .Y(pp13[1]) );
  NOR2XL U489 ( .A(n86), .B(n21), .Y(pp12[2]) );
  NOR2XL U490 ( .A(n86), .B(n33), .Y(pp18[2]) );
  NOR2XL U491 ( .A(n90), .B(n29), .Y(pp16[5]) );
  NOR2XL U492 ( .A(n88), .B(n33), .Y(pp18[4]) );
  NOR2XL U493 ( .A(n90), .B(n31), .Y(pp17[5]) );
  NOR2XL U494 ( .A(n143), .B(n29), .Y(pp16[6]) );
  NOR2XL U495 ( .A(n90), .B(n33), .Y(pp18[5]) );
  NOR2XL U496 ( .A(n143), .B(n33), .Y(pp18[6]) );
  NOR2XL U497 ( .A(n94), .B(n33), .Y(pp18[8]) );
  NOR2XL U498 ( .A(n96), .B(n31), .Y(pp17[9]) );
  NOR2XL U499 ( .A(n96), .B(n33), .Y(pp18[9]) );
  NOR2XL U500 ( .A(n63), .B(n28), .Y(pp16[11]) );
  NOR2XL U501 ( .A(n61), .B(n32), .Y(pp18[10]) );
  NOR2XL U502 ( .A(n65), .B(n28), .Y(pp16[12]) );
  NOR2XL U503 ( .A(n63), .B(n32), .Y(pp18[11]) );
  NOR2XL U504 ( .A(n66), .B(n28), .Y(pp16[13]) );
  NOR2XL U505 ( .A(n65), .B(n32), .Y(pp18[12]) );
  NOR2XL U506 ( .A(n68), .B(n28), .Y(pp16[14]) );
  NOR2XL U507 ( .A(n70), .B(n28), .Y(pp16[15]) );
  NOR2XL U508 ( .A(n71), .B(n28), .Y(pp16[16]) );
  NOR2XL U509 ( .A(n70), .B(n32), .Y(pp18[15]) );
  NOR2XL U510 ( .A(n71), .B(n30), .Y(pp17[16]) );
  NOR2XL U511 ( .A(n71), .B(n32), .Y(pp18[16]) );
  NOR2XL U512 ( .A(n77), .B(n28), .Y(pp16[19]) );
  NOR2XL U513 ( .A(n81), .B(n33), .Y(pp18[20]) );
  NOR2XL U514 ( .A(n79), .B(n32), .Y(pp18[1]) );
  NOR2XL U515 ( .A(n86), .B(n31), .Y(pp17[2]) );
  NOR2XL U516 ( .A(n60), .B(n42), .Y(pp22[0]) );
  NOR2XL U517 ( .A(n86), .B(n39), .Y(pp20[2]) );
  NOR2XL U518 ( .A(n86), .B(n23), .Y(pp13[2]) );
  NOR2XL U519 ( .A(n87), .B(n21), .Y(pp12[3]) );
  NOR2XL U520 ( .A(n86), .B(n25), .Y(pp14[2]) );
  NOR2XL U521 ( .A(n87), .B(n23), .Y(pp13[3]) );
  NOR2XL U522 ( .A(n88), .B(n21), .Y(pp12[4]) );
  NOR2XL U523 ( .A(n87), .B(n25), .Y(pp14[3]) );
  NOR2XL U524 ( .A(n88), .B(n25), .Y(pp14[4]) );
  NOR2XL U525 ( .A(n90), .B(n23), .Y(pp13[5]) );
  NOR2XL U526 ( .A(n143), .B(n21), .Y(pp12[6]) );
  NOR2XL U527 ( .A(n90), .B(n25), .Y(pp14[5]) );
  NOR2XL U528 ( .A(n143), .B(n23), .Y(pp13[6]) );
  NOR2XL U529 ( .A(n143), .B(n25), .Y(pp14[6]) );
  NOR2XL U530 ( .A(n92), .B(n23), .Y(pp13[7]) );
  NOR2XL U531 ( .A(n94), .B(n21), .Y(pp12[8]) );
  NOR2XL U532 ( .A(n92), .B(n25), .Y(pp14[7]) );
  NOR2XL U533 ( .A(n96), .B(n21), .Y(pp12[9]) );
  NOR2XL U534 ( .A(n94), .B(n25), .Y(pp14[8]) );
  NOR2XL U535 ( .A(n96), .B(n23), .Y(pp13[9]) );
  NOR2XL U536 ( .A(n61), .B(n20), .Y(pp12[10]) );
  NOR2XL U537 ( .A(n96), .B(n25), .Y(pp14[9]) );
  NOR2XL U538 ( .A(n61), .B(n22), .Y(pp13[10]) );
  NOR2XL U539 ( .A(n61), .B(n24), .Y(pp14[10]) );
  NOR2XL U540 ( .A(n63), .B(n22), .Y(pp13[11]) );
  NOR2XL U541 ( .A(n65), .B(n20), .Y(pp12[12]) );
  NOR2XL U542 ( .A(n63), .B(n24), .Y(pp14[11]) );
  NOR2XL U543 ( .A(n65), .B(n22), .Y(pp13[12]) );
  NOR2XL U544 ( .A(n66), .B(n20), .Y(pp12[13]) );
  NOR2XL U545 ( .A(n65), .B(n24), .Y(pp14[12]) );
  NOR2XL U546 ( .A(n66), .B(n22), .Y(pp13[13]) );
  NOR2XL U547 ( .A(n68), .B(n20), .Y(pp12[14]) );
  NOR2XL U548 ( .A(n66), .B(n24), .Y(pp14[13]) );
  NOR2XL U549 ( .A(n68), .B(n22), .Y(pp13[14]) );
  NOR2XL U550 ( .A(n70), .B(n20), .Y(pp12[15]) );
  NOR2XL U551 ( .A(n68), .B(n24), .Y(pp14[14]) );
  NOR2XL U552 ( .A(n70), .B(n22), .Y(pp13[15]) );
  NOR2XL U553 ( .A(n71), .B(n20), .Y(pp12[16]) );
  NOR2XL U554 ( .A(n70), .B(n24), .Y(pp14[15]) );
  NOR2XL U555 ( .A(n73), .B(n20), .Y(pp12[17]) );
  NOR2XL U556 ( .A(n71), .B(n24), .Y(pp14[16]) );
  NOR2XL U557 ( .A(n73), .B(n22), .Y(pp13[17]) );
  NOR2XL U558 ( .A(n75), .B(n20), .Y(pp12[18]) );
  NOR2XL U559 ( .A(n73), .B(n24), .Y(pp14[17]) );
  NOR2XL U560 ( .A(n75), .B(n22), .Y(pp13[18]) );
  NOR2XL U561 ( .A(n77), .B(n20), .Y(pp12[19]) );
  NOR2XL U562 ( .A(n75), .B(n24), .Y(pp14[18]) );
  NOR2XL U563 ( .A(n77), .B(n22), .Y(pp13[19]) );
  NOR2XL U564 ( .A(n81), .B(n25), .Y(pp14[20]) );
  NOR2XL U565 ( .A(n77), .B(n24), .Y(pp14[19]) );
  NOR2XL U566 ( .A(n81), .B(n23), .Y(pp13[20]) );
  NOR2XL U567 ( .A(n139), .B(n41), .Y(pp21[2]) );
  NOR2XL U568 ( .A(n139), .B(n43), .Y(pp22[2]) );
  NOR2XL U569 ( .A(n87), .B(n41), .Y(pp21[3]) );
  NOR2XL U570 ( .A(n88), .B(n39), .Y(pp20[4]) );
  NOR2XL U571 ( .A(n87), .B(n43), .Y(pp22[3]) );
  NOR2XL U572 ( .A(n89), .B(n41), .Y(pp21[4]) );
  NOR2XL U573 ( .A(n90), .B(n39), .Y(pp20[5]) );
  NOR2XL U574 ( .A(n89), .B(n43), .Y(pp22[4]) );
  NOR2XL U575 ( .A(n91), .B(n41), .Y(pp21[5]) );
  NOR2XL U576 ( .A(n143), .B(n39), .Y(pp20[6]) );
  NOR2XL U577 ( .A(n91), .B(n43), .Y(pp22[5]) );
  NOR2XL U578 ( .A(n92), .B(n39), .Y(pp20[7]) );
  NOR2XL U579 ( .A(n143), .B(n43), .Y(pp22[6]) );
  NOR2XL U580 ( .A(n93), .B(n41), .Y(pp21[7]) );
  NOR2XL U581 ( .A(n94), .B(n39), .Y(pp20[8]) );
  NOR2XL U582 ( .A(n93), .B(n43), .Y(pp22[7]) );
  NOR2XL U583 ( .A(n95), .B(n41), .Y(pp21[8]) );
  NOR2XL U584 ( .A(n96), .B(n39), .Y(pp20[9]) );
  NOR2XL U585 ( .A(n95), .B(n43), .Y(pp22[8]) );
  NOR2XL U586 ( .A(n97), .B(n41), .Y(pp21[9]) );
  NOR2XL U587 ( .A(n61), .B(n38), .Y(pp20[10]) );
  NOR2XL U588 ( .A(n62), .B(n42), .Y(pp22[10]) );
  NOR2XL U589 ( .A(n127), .B(n40), .Y(pp21[12]) );
  NOR2XL U590 ( .A(n66), .B(n38), .Y(pp20[13]) );
  NOR2XL U591 ( .A(n67), .B(n42), .Y(pp22[13]) );
  NOR2XL U592 ( .A(n70), .B(n38), .Y(pp20[15]) );
  NOR2XL U593 ( .A(n69), .B(n42), .Y(pp22[14]) );
  NOR2XL U594 ( .A(n70), .B(n42), .Y(pp22[15]) );
  NOR2XL U595 ( .A(n72), .B(n42), .Y(pp22[16]) );
  NOR2XL U596 ( .A(n75), .B(n38), .Y(pp20[18]) );
  NOR2XL U597 ( .A(n74), .B(n42), .Y(pp22[17]) );
  NOR2XL U598 ( .A(n77), .B(n38), .Y(pp20[19]) );
  NOR2XL U599 ( .A(n76), .B(n42), .Y(pp22[18]) );
  NOR2XL U600 ( .A(n81), .B(n39), .Y(pp20[20]) );
  NOR2XL U601 ( .A(n78), .B(n42), .Y(pp22[19]) );
  NOR2XL U602 ( .A(n136), .B(n43), .Y(pp22[20]) );
  NOR2XL U603 ( .A(n136), .B(n53), .Y(pp6[20]) );
  NOR2X1 U604 ( .A(n83), .B(n51), .Y(pp5[21]) );
  NOR2X1 U605 ( .A(n85), .B(n49), .Y(pp4[22]) );
  NOR2XL U606 ( .A(n87), .B(n53), .Y(pp6[3]) );
  NOR2XL U607 ( .A(n91), .B(n49), .Y(pp4[5]) );
  NOR2XL U608 ( .A(n89), .B(n53), .Y(pp6[4]) );
  NOR2XL U609 ( .A(n91), .B(n51), .Y(pp5[5]) );
  NOR2XL U610 ( .A(n143), .B(n49), .Y(pp4[6]) );
  NOR2XL U611 ( .A(n93), .B(n49), .Y(pp4[7]) );
  NOR2XL U612 ( .A(n143), .B(n53), .Y(pp6[6]) );
  NOR2XL U613 ( .A(n95), .B(n49), .Y(pp4[8]) );
  NOR2XL U614 ( .A(n93), .B(n53), .Y(pp6[7]) );
  NOR2XL U615 ( .A(n97), .B(n49), .Y(pp4[9]) );
  NOR2XL U616 ( .A(n95), .B(n53), .Y(pp6[8]) );
  NOR2XL U617 ( .A(n97), .B(n51), .Y(pp5[9]) );
  NOR2XL U618 ( .A(n62), .B(n48), .Y(pp4[10]) );
  NOR2XL U619 ( .A(n97), .B(n53), .Y(pp6[9]) );
  NOR2XL U620 ( .A(n64), .B(n48), .Y(pp4[11]) );
  NOR2XL U621 ( .A(n127), .B(n48), .Y(pp4[12]) );
  NOR2XL U622 ( .A(n127), .B(n52), .Y(pp6[12]) );
  NOR2XL U623 ( .A(n69), .B(n48), .Y(pp4[14]) );
  NOR2XL U624 ( .A(n70), .B(n48), .Y(pp4[15]) );
  NOR2XL U625 ( .A(n72), .B(n48), .Y(pp4[16]) );
  NOR2XL U626 ( .A(n74), .B(n48), .Y(pp4[17]) );
  NOR2XL U627 ( .A(n78), .B(n48), .Y(pp4[19]) );
  NOR2XL U628 ( .A(n139), .B(n53), .Y(pp6[2]) );
  NOR2XL U629 ( .A(n87), .B(n51), .Y(pp5[3]) );
  NOR2XL U630 ( .A(n89), .B(n49), .Y(pp4[4]) );
  NOR2XL U631 ( .A(n139), .B(n51), .Y(pp5[2]) );
  NOR2XL U632 ( .A(n87), .B(n49), .Y(pp4[3]) );
  NOR2XL U633 ( .A(n72), .B(n52), .Y(pp6[16]) );
  NOR2XL U634 ( .A(n76), .B(n48), .Y(pp4[18]) );
  NOR2X1 U635 ( .A(n60), .B(n16), .Y(pp10[0]) );
  NOR2XL U636 ( .A(n88), .B(n17), .Y(pp10[4]) );
  NOR2XL U637 ( .A(n90), .B(n17), .Y(pp10[5]) );
  NOR2XL U638 ( .A(n59), .B(n143), .Y(pp9[6]) );
  NOR2XL U639 ( .A(n93), .B(n57), .Y(pp8[7]) );
  NOR2XL U640 ( .A(n143), .B(n17), .Y(pp10[6]) );
  NOR2XL U641 ( .A(n59), .B(n93), .Y(pp9[7]) );
  NOR2XL U642 ( .A(n95), .B(n57), .Y(pp8[8]) );
  NOR2XL U643 ( .A(n92), .B(n17), .Y(pp10[7]) );
  NOR2XL U644 ( .A(n97), .B(n57), .Y(pp8[9]) );
  NOR2XL U645 ( .A(n94), .B(n17), .Y(pp10[8]) );
  NOR2XL U646 ( .A(n97), .B(n59), .Y(pp9[9]) );
  NOR2XL U647 ( .A(n62), .B(n56), .Y(pp8[10]) );
  NOR2XL U648 ( .A(n96), .B(n17), .Y(pp10[9]) );
  NOR2XL U649 ( .A(n61), .B(n16), .Y(pp10[10]) );
  NOR2XL U650 ( .A(n65), .B(n56), .Y(pp8[12]) );
  NOR2XL U651 ( .A(n66), .B(n16), .Y(pp10[13]) );
  NOR2XL U652 ( .A(n58), .B(n69), .Y(pp9[14]) );
  NOR2XL U653 ( .A(n72), .B(n56), .Y(pp8[16]) );
  NOR2XL U654 ( .A(n70), .B(n16), .Y(pp10[15]) );
  NOR2XL U655 ( .A(n58), .B(n72), .Y(pp9[16]) );
  NOR2XL U656 ( .A(n58), .B(n74), .Y(pp9[17]) );
  NOR2XL U657 ( .A(n76), .B(n56), .Y(pp8[18]) );
  NOR2XL U658 ( .A(n73), .B(n16), .Y(pp10[17]) );
  NOR2XL U659 ( .A(n58), .B(n76), .Y(pp9[18]) );
  NOR2XL U660 ( .A(n75), .B(n16), .Y(pp10[18]) );
  NOR2XL U661 ( .A(n59), .B(n139), .Y(pp9[2]) );
  NOR2XL U662 ( .A(n77), .B(n16), .Y(pp10[19]) );
  NOR2XL U663 ( .A(n81), .B(n17), .Y(pp10[20]) );
  NOR2XL U664 ( .A(n84), .B(n37), .Y(pp1[22]) );
  NOR2XL U665 ( .A(n98), .B(n15), .Y(pp0[23]) );
  NOR2XL U666 ( .A(n82), .B(n17), .Y(pp10[21]) );
  NOR2XL U667 ( .A(n82), .B(n33), .Y(pp18[21]) );
  NOR2XL U668 ( .A(n82), .B(n25), .Y(pp14[21]) );
  NOR2XL U669 ( .A(n124), .B(n46), .Y(pp3[0]) );
  NOR2X1 U670 ( .A(n143), .B(n47), .Y(pp3[6]) );
  NOR2X1 U671 ( .A(n95), .B(n47), .Y(pp3[8]) );
  NOR2X1 U672 ( .A(n97), .B(n47), .Y(pp3[9]) );
  NOR2X1 U673 ( .A(n62), .B(n46), .Y(pp3[10]) );
  NOR2XL U674 ( .A(n139), .B(n47), .Y(pp3[2]) );
  NOR2XL U675 ( .A(n80), .B(n46), .Y(pp3[1]) );
  NOR2XL U676 ( .A(n60), .B(n18), .Y(pp11[0]) );
  NOR2XL U677 ( .A(n79), .B(n18), .Y(pp11[1]) );
  NOR2XL U678 ( .A(n79), .B(n34), .Y(pp19[1]) );
  NOR2XL U679 ( .A(n86), .B(n35), .Y(pp19[2]) );
  NOR2X1 U680 ( .A(n90), .B(n35), .Y(pp19[5]) );
  NOR2XL U681 ( .A(n60), .B(n34), .Y(pp19[0]) );
  NOR2XL U682 ( .A(n81), .B(n27), .Y(pp15[20]) );
  NOR2XL U683 ( .A(n136), .B(n100), .Y(pp23[20]) );
  NOR2X1 U684 ( .A(n60), .B(n26), .Y(pp15[0]) );
  NOR2X1 U685 ( .A(n79), .B(n26), .Y(pp15[1]) );
  NOR2X1 U686 ( .A(n65), .B(n26), .Y(pp15[12]) );
  NOR2X1 U687 ( .A(n66), .B(n26), .Y(pp15[13]) );
  NOR2X1 U688 ( .A(n68), .B(n26), .Y(pp15[14]) );
  NOR2X1 U689 ( .A(n70), .B(n26), .Y(pp15[15]) );
  NOR2X1 U690 ( .A(n71), .B(n26), .Y(pp15[16]) );
  NOR2X1 U691 ( .A(n73), .B(n26), .Y(pp15[17]) );
  NOR2XL U692 ( .A(n77), .B(n26), .Y(pp15[19]) );
  NOR2XL U693 ( .A(n78), .B(n99), .Y(pp23[19]) );
  NOR2XL U694 ( .A(n136), .B(n55), .Y(pp7[20]) );
  NOR2X1 U695 ( .A(n143), .B(n55), .Y(pp7[6]) );
  NOR2X1 U696 ( .A(n91), .B(n55), .Y(pp7[5]) );
  NOR2X1 U697 ( .A(n127), .B(n54), .Y(pp7[12]) );
  NOR2X1 U698 ( .A(n69), .B(n54), .Y(pp7[14]) );
  BUFX4 U699 ( .A(n117), .Y(n47) );
  BUFX8 U700 ( .A(n111), .Y(n34) );
  INVX3 U701 ( .A(a[3]), .Y(n140) );
  INVX3 U702 ( .A(a[16]), .Y(n131) );
  NOR2XL U703 ( .A(n83), .B(n47), .Y(pp3[21]) );
  NOR2XL U704 ( .A(n85), .B(n47), .Y(pp3[22]) );
  NOR2XL U705 ( .A(n82), .B(n19), .Y(pp11[21]) );
  NOR2XL U706 ( .A(n82), .B(n35), .Y(pp19[21]) );
  NOR2XL U707 ( .A(n84), .B(n19), .Y(pp11[22]) );
  NOR2XL U708 ( .A(n84), .B(n35), .Y(pp19[22]) );
  NOR2X1 U709 ( .A(n98), .B(n55), .Y(pp7[23]) );
  NOR2X1 U710 ( .A(n98), .B(n27), .Y(pp15[23]) );
  NOR2X1 U711 ( .A(n98), .B(n100), .Y(pp23[23]) );
  NOR2XL U712 ( .A(n85), .B(n55), .Y(pp7[22]) );
  NOR2XL U713 ( .A(n82), .B(n27), .Y(pp15[21]) );
  NOR2XL U714 ( .A(n83), .B(n100), .Y(pp23[21]) );
  NOR2XL U715 ( .A(n84), .B(n27), .Y(pp15[22]) );
  NOR2XL U716 ( .A(n85), .B(n100), .Y(pp23[22]) );
  NOR2XL U717 ( .A(n83), .B(n55), .Y(pp7[21]) );
  NOR2X1 U718 ( .A(n85), .B(n43), .Y(pp22[22]) );
  NOR2XL U719 ( .A(n60), .B(n38), .Y(pp20[0]) );
  NOR2XL U720 ( .A(n60), .B(n22), .Y(pp13[0]) );
  NOR2XL U721 ( .A(n79), .B(n20), .Y(pp12[1]) );
  NOR2X1 U722 ( .A(n98), .B(n33), .Y(pp18[23]) );
  NOR2X1 U723 ( .A(n98), .B(n25), .Y(pp14[23]) );
  INVXL U724 ( .A(b[23]), .Y(n148) );
endmodule


module align_shf_74 ( inv_mask, c_frac, shf_num, shf_res );
  input [23:0] c_frac;
  input [6:0] shf_num;
  output [97:0] shf_res;
  input inv_mask;
  wire   net43742, net43756, net43757, net43764, net43765, net43767, net43773,
         net43797, net43820, net43885, net43886, net43902, net43916, net43945,
         net43956, net44004, net44016, net44029, net44037, net44050, net44055,
         net44061, net44106, net44122, net44129, net44134, net44135, net44136,
         net44141, net44142, net44144, net44145, net44146, net44152, net44194,
         net44200, net44204, net44237, net44246, net44279, net44281, net44293,
         net44298, net44299, net44307, net44330, net44331, net46990, net46988,
         net46982, net46978, net46976, net46974, net47222, net47220, net47228,
         net47226, net47580, net47584, net47586, net47590, net47596, net47602,
         net47604, net47616, net47615, net47620, net47626, net47625, net47630,
         net47916, net47931, net47951, net49482, net49493, net49502, net50220,
         net50372, net51175, net51181, net53231, net43915, net50184, net44309,
         net44143, net44295, net44280, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655;

  AND2X8 U3 ( .A(net44122), .B(n202), .Y(n1) );
  INVX3 U4 ( .A(n41), .Y(net44122) );
  INVX12 U5 ( .A(n427), .Y(n202) );
  NAND3X2 U6 ( .A(n98), .B(n97), .C(n96), .Y(shf_res[59]) );
  NAND2X8 U7 ( .A(net44122), .B(n202), .Y(n428) );
  NAND3X2 U8 ( .A(n644), .B(n634), .C(n633), .Y(shf_res[91]) );
  NAND2X2 U9 ( .A(n655), .B(net43765), .Y(n634) );
  NAND2BX2 U10 ( .AN(n251), .B(n63), .Y(n159) );
  INVX16 U11 ( .A(net51181), .Y(n63) );
  AND2X6 U12 ( .A(net53231), .B(n44), .Y(n37) );
  NAND4X4 U13 ( .A(n519), .B(n518), .C(n517), .D(n516), .Y(shf_res[60]) );
  AND2X4 U14 ( .A(net43764), .B(net43885), .Y(n99) );
  NAND2BX4 U15 ( .AN(net47586), .B(net44106), .Y(n2) );
  NAND2BX4 U16 ( .AN(n91), .B(n600), .Y(n3) );
  BUFX20 U17 ( .A(shf_num[2]), .Y(net47586) );
  NAND2X8 U18 ( .A(n484), .B(n483), .Y(n510) );
  INVX12 U19 ( .A(n499), .Y(n484) );
  NAND3X2 U20 ( .A(n487), .B(n489), .C(n488), .Y(shf_res[51]) );
  CLKAND2X3 U21 ( .A(net44144), .B(n319), .Y(n77) );
  INVX12 U22 ( .A(n65), .Y(n410) );
  OAI2BB1X4 U23 ( .A0N(n54), .A1N(n14), .B0(n650), .Y(shf_res[90]) );
  NAND4X4 U24 ( .A(n531), .B(n21), .C(n530), .D(n529), .Y(shf_res[62]) );
  CLKBUFX20 U25 ( .A(net43902), .Y(net47228) );
  AND2X8 U26 ( .A(n231), .B(net47228), .Y(n79) );
  NOR2X2 U27 ( .A(n460), .B(n134), .Y(n457) );
  NAND4X8 U28 ( .A(n267), .B(n269), .C(n268), .D(n6), .Y(n565) );
  OAI211X2 U29 ( .A0(net44055), .A1(n399), .B0(n398), .C0(n397), .Y(
        shf_res[27]) );
  OAI2BB1X2 U30 ( .A0N(net43773), .A1N(n4), .B0(n622), .Y(shf_res[82]) );
  OAI2BB1X4 U31 ( .A0N(n164), .A1N(n4), .B0(n436), .Y(shf_res[34]) );
  OAI2BB1X4 U32 ( .A0N(net47222), .A1N(n4), .B0(n548), .Y(shf_res[66]) );
  NAND4X8 U33 ( .A(n210), .B(n158), .C(n211), .D(n209), .Y(n4) );
  OR2X8 U34 ( .A(n64), .B(net46982), .Y(n620) );
  NAND2X4 U35 ( .A(net44144), .B(n325), .Y(n255) );
  NOR2X8 U36 ( .A(n76), .B(n77), .Y(n285) );
  INVX12 U37 ( .A(n282), .Y(n251) );
  NAND4X8 U38 ( .A(n190), .B(n191), .C(n56), .D(n57), .Y(n282) );
  NOR2X2 U39 ( .A(n510), .B(n131), .Y(n496) );
  NAND2X2 U40 ( .A(n133), .B(n547), .Y(n220) );
  AOI21X2 U41 ( .A0(n547), .A1(n126), .B0(n460), .Y(n436) );
  NAND2X2 U42 ( .A(n547), .B(n164), .Y(n360) );
  AOI21X2 U43 ( .A0(n547), .A1(net43773), .B0(n104), .Y(n548) );
  NAND2X2 U44 ( .A(n547), .B(net47222), .Y(n485) );
  BUFX20 U45 ( .A(n615), .Y(n154) );
  NAND2X2 U46 ( .A(n560), .B(n126), .Y(n448) );
  OAI2BB1X4 U47 ( .A0N(n405), .A1N(n5), .B0(n252), .Y(n615) );
  CLKINVX20 U48 ( .A(n10), .Y(n5) );
  NAND2X2 U49 ( .A(n429), .B(n533), .Y(n416) );
  NAND2X2 U50 ( .A(n1), .B(n429), .Y(n432) );
  AND2X8 U51 ( .A(net47226), .B(n150), .Y(n38) );
  AND2X8 U52 ( .A(net47226), .B(net49482), .Y(n87) );
  NAND2X6 U53 ( .A(net44122), .B(net47226), .Y(n250) );
  NAND2X4 U54 ( .A(net47226), .B(n222), .Y(n223) );
  CLKBUFX20 U55 ( .A(net43902), .Y(net47226) );
  OAI21X2 U56 ( .A0(n642), .A1(n138), .B0(n641), .Y(shf_res[94]) );
  NAND3X6 U57 ( .A(n411), .B(n412), .C(n22), .Y(shf_res[30]) );
  INVX8 U58 ( .A(n362), .Y(n379) );
  INVX6 U59 ( .A(n356), .Y(n651) );
  NAND2X2 U60 ( .A(n549), .B(n126), .Y(n440) );
  NAND4X8 U61 ( .A(n173), .B(n172), .C(n175), .D(n174), .Y(n277) );
  NAND4BX2 U62 ( .AN(net44016), .B(n568), .C(n566), .D(n567), .Y(shf_res[71])
         );
  NAND2X1 U63 ( .A(n623), .B(net47220), .Y(n566) );
  CLKINVX12 U64 ( .A(net47630), .Y(net53231) );
  OR2X8 U65 ( .A(net47630), .B(net44330), .Y(n57) );
  NOR2X2 U66 ( .A(n212), .B(net47630), .Y(n183) );
  OR2X4 U67 ( .A(net47630), .B(n41), .Y(n67) );
  AND2X8 U68 ( .A(net47625), .B(n149), .Y(n78) );
  INVX2 U69 ( .A(n8), .Y(net44106) );
  NAND2X4 U70 ( .A(net51175), .B(n249), .Y(n297) );
  OAI2BB1X4 U71 ( .A0N(net46976), .A1N(n639), .B0(n638), .Y(shf_res[93]) );
  AND2X6 U72 ( .A(n85), .B(n86), .Y(n284) );
  NAND2X2 U73 ( .A(n629), .B(n133), .Y(n90) );
  NAND2X2 U74 ( .A(n629), .B(n139), .Y(n290) );
  NAND2X2 U75 ( .A(n629), .B(n126), .Y(n508) );
  MXI2X2 U76 ( .A(n251), .B(n250), .S0(n70), .Y(n9) );
  NAND3X6 U77 ( .A(n388), .B(n387), .C(n386), .Y(shf_res[25]) );
  AND2X8 U78 ( .A(n90), .B(n372), .Y(n386) );
  NAND4BX2 U79 ( .AN(net44016), .B(n555), .C(n554), .D(n553), .Y(shf_res[68])
         );
  AOI21X2 U80 ( .A0(net43916), .A1(net43773), .B0(net47596), .Y(n96) );
  AOI21X2 U81 ( .A0(n607), .A1(n139), .B0(n303), .Y(n240) );
  NAND2X2 U82 ( .A(n133), .B(n607), .Y(n364) );
  NAND2X2 U83 ( .A(net43773), .B(n607), .Y(n610) );
  NAND2X2 U84 ( .A(n607), .B(n163), .Y(n439) );
  NAND2X8 U85 ( .A(net44309), .B(n95), .Y(net44143) );
  NAND2X2 U86 ( .A(n552), .B(net43773), .Y(n553) );
  NAND2X2 U87 ( .A(n552), .B(n164), .Y(n367) );
  NAND2X2 U88 ( .A(n552), .B(net47222), .Y(n490) );
  NAND4X8 U89 ( .A(n259), .B(n246), .C(n245), .D(n244), .Y(n552) );
  NAND2X8 U90 ( .A(n122), .B(n123), .Y(n307) );
  NAND2X8 U91 ( .A(n119), .B(n118), .Y(n309) );
  NAND2X4 U92 ( .A(net44144), .B(n334), .Y(n335) );
  NAND2X2 U93 ( .A(net44129), .B(n334), .Y(n211) );
  OAI21X4 U94 ( .A0(n578), .A1(n161), .B0(n298), .Y(shf_res[10]) );
  NAND2X2 U95 ( .A(n32), .B(n131), .Y(n494) );
  NAND2BX4 U96 ( .AN(n160), .B(net47580), .Y(net43956) );
  OAI2BB1X4 U97 ( .A0N(n164), .A1N(n523), .B0(n328), .Y(n329) );
  NAND2X8 U98 ( .A(n160), .B(net46978), .Y(net43757) );
  AOI22X2 U99 ( .A0(n429), .A1(net43765), .B0(net43764), .B1(n13), .Y(n397) );
  NAND3X2 U100 ( .A(n632), .B(net47602), .C(n631), .Y(shf_res[89]) );
  NAND2X2 U101 ( .A(net46978), .B(n630), .Y(n631) );
  OR2X8 U102 ( .A(net44135), .B(net47931), .Y(n6) );
  NAND2X1 U103 ( .A(net43773), .B(n528), .Y(n531) );
  NAND2X2 U104 ( .A(net43742), .B(n400), .Y(n26) );
  AND2X8 U105 ( .A(net43742), .B(n400), .Y(n20) );
  CLKAND2X12 U106 ( .A(n25), .B(net43742), .Y(n140) );
  CLKAND2X12 U107 ( .A(net43742), .B(n9), .Y(n136) );
  NAND2X8 U108 ( .A(net43742), .B(n651), .Y(n427) );
  NAND3X2 U109 ( .A(net43742), .B(n655), .C(n647), .Y(n649) );
  NAND3X6 U110 ( .A(n7), .B(n347), .C(n346), .Y(n532) );
  OR2X4 U111 ( .A(net44135), .B(net44136), .Y(n7) );
  NAND2BX1 U112 ( .AN(net47602), .B(n630), .Y(n387) );
  BUFX16 U113 ( .A(net44237), .Y(n10) );
  NAND2X4 U114 ( .A(n196), .B(n197), .Y(n322) );
  OR2X4 U115 ( .A(n189), .B(net47916), .Y(n56) );
  AOI2BB2X2 U116 ( .B0(net47615), .B1(n48), .A0N(n46), .A1N(net47916), .Y(n197) );
  INVX6 U117 ( .A(n83), .Y(n8) );
  INVX8 U118 ( .A(shf_num[1]), .Y(n83) );
  INVX4 U119 ( .A(n83), .Y(n84) );
  CLKINVX16 U120 ( .A(net47584), .Y(net44237) );
  INVX20 U121 ( .A(n63), .Y(n64) );
  OAI21X2 U122 ( .A0(n106), .A1(net51175), .B0(n484), .Y(n480) );
  NAND2X8 U123 ( .A(n284), .B(n283), .Y(n629) );
  NAND3BX4 U124 ( .AN(n41), .B(n60), .C(n651), .Y(n283) );
  OR2X8 U125 ( .A(net47584), .B(net47586), .Y(net43820) );
  OR2X6 U126 ( .A(n422), .B(n10), .Y(n30) );
  INVX8 U127 ( .A(n301), .Y(n581) );
  AOI22X4 U128 ( .A0(net44293), .A1(n35), .B0(net47615), .B1(n36), .Y(n186) );
  NAND2X2 U129 ( .A(n573), .B(net43773), .Y(n576) );
  NAND2X2 U130 ( .A(n573), .B(net47222), .Y(n507) );
  NAND2X8 U131 ( .A(net47586), .B(net47584), .Y(net51181) );
  BUFX20 U132 ( .A(net44295), .Y(n11) );
  NAND2X8 U133 ( .A(net50220), .B(net50184), .Y(net43915) );
  NAND3X2 U134 ( .A(n587), .B(n655), .C(n595), .Y(n592) );
  NAND2X2 U135 ( .A(n587), .B(net47220), .Y(n529) );
  NAND4X8 U136 ( .A(n82), .B(n337), .C(n336), .D(n335), .Y(n587) );
  INVX6 U137 ( .A(n338), .Y(n471) );
  NAND4X6 U138 ( .A(n71), .B(n323), .C(n324), .D(n72), .Y(n524) );
  CLKINVX3 U139 ( .A(n253), .Y(n68) );
  AOI22X2 U140 ( .A0(net47228), .A1(n44), .B0(net53231), .B1(n45), .Y(n196) );
  AOI22X2 U141 ( .A0(net47626), .A1(n36), .B0(n232), .B1(net47226), .Y(
        net44299) );
  INVX16 U142 ( .A(net53231), .Y(n12) );
  OAI21X4 U143 ( .A0(net47604), .A1(n578), .B0(n461), .Y(shf_res[42]) );
  NAND2X6 U144 ( .A(net44298), .B(net44299), .Y(net44134) );
  NAND2X4 U145 ( .A(n595), .B(n655), .Y(net43797) );
  NAND2X6 U146 ( .A(n410), .B(n527), .Y(n642) );
  NAND2X2 U147 ( .A(n204), .B(n203), .Y(shf_res[1]) );
  NAND2X2 U148 ( .A(net46978), .B(n83), .Y(n165) );
  AOI2BB2X4 U149 ( .B0(net44129), .B1(n339), .A0N(n73), .A1N(n64), .Y(n157) );
  NAND3BX2 U150 ( .AN(net44016), .B(n636), .C(n637), .Y(shf_res[92]) );
  NAND2X1 U151 ( .A(net46978), .B(net43764), .Y(n633) );
  NOR2XL U152 ( .A(n601), .B(net47580), .Y(n340) );
  INVXL U153 ( .A(net47602), .Y(n13) );
  NAND2X2 U154 ( .A(n543), .B(n542), .Y(n545) );
  NOR2X4 U155 ( .A(n600), .B(n390), .Y(n132) );
  OAI2BB1X4 U156 ( .A0N(net47584), .A1N(net53231), .B0(net51181), .Y(n449) );
  OAI21X2 U157 ( .A0(n578), .A1(n138), .B0(n577), .Y(shf_res[74]) );
  NAND2X2 U158 ( .A(n384), .B(n383), .Y(n630) );
  OR2X6 U159 ( .A(n601), .B(net51181), .Y(n437) );
  AOI2BB1X2 U160 ( .A0N(n527), .A1N(net47602), .B0(n413), .Y(n22) );
  INVXL U161 ( .A(n138), .Y(n14) );
  CLKINVX4 U162 ( .A(n652), .Y(n650) );
  NAND3BX2 U163 ( .AN(net44016), .B(n614), .C(n613), .Y(shf_res[84]) );
  NAND2X1 U164 ( .A(n133), .B(n619), .Y(n375) );
  NOR2X1 U165 ( .A(n303), .B(n128), .Y(n178) );
  NAND2X6 U166 ( .A(n384), .B(n355), .Y(n541) );
  NAND2X2 U167 ( .A(net44129), .B(net44145), .Y(n229) );
  NAND2X1 U168 ( .A(n133), .B(n552), .Y(n247) );
  INVX1 U169 ( .A(n15), .Y(n44) );
  NAND2X4 U170 ( .A(n194), .B(n195), .Y(n320) );
  OA21X4 U171 ( .A0(n93), .A1(n10), .B0(net44050), .Y(n315) );
  NAND2X4 U172 ( .A(n410), .B(n142), .Y(n588) );
  NOR2X1 U173 ( .A(n602), .B(n460), .Y(n461) );
  INVX3 U174 ( .A(net47226), .Y(n32) );
  NAND2XL U175 ( .A(net46978), .B(n608), .Y(n609) );
  NAND4X2 U176 ( .A(n541), .B(n543), .C(n160), .D(n542), .Y(n204) );
  NAND2X1 U177 ( .A(n133), .B(n623), .Y(n377) );
  NAND2X6 U178 ( .A(n185), .B(n186), .Y(n319) );
  AND2X6 U179 ( .A(n504), .B(n503), .Y(n129) );
  NAND2X2 U180 ( .A(n540), .B(n541), .Y(n546) );
  NOR2BX4 U181 ( .AN(n532), .B(n399), .Y(n349) );
  OAI2BB1X2 U182 ( .A0N(net47931), .A1N(n477), .B0(n484), .Y(n469) );
  OAI211X1 U183 ( .A0(n600), .A1(net46982), .B0(n650), .C0(n649), .Y(
        shf_res[96]) );
  NOR2X6 U184 ( .A(n78), .B(n79), .Y(n185) );
  NAND2X6 U185 ( .A(n217), .B(n216), .Y(n332) );
  NAND2X2 U186 ( .A(n550), .B(n551), .Y(shf_res[67]) );
  NAND3X2 U187 ( .A(n375), .B(n374), .C(n373), .Y(shf_res[22]) );
  OR2X6 U188 ( .A(n471), .B(net47604), .Y(n102) );
  NAND2X6 U189 ( .A(net44050), .B(n20), .Y(n635) );
  CLKINVX1 U190 ( .A(n213), .Y(n231) );
  BUFX20 U191 ( .A(net44295), .Y(net47616) );
  INVX6 U192 ( .A(n601), .Y(n606) );
  NAND4X6 U193 ( .A(n259), .B(n256), .C(n255), .D(n254), .Y(n556) );
  NAND3X6 U194 ( .A(n30), .B(n279), .C(n278), .Y(n628) );
  NAND2X4 U195 ( .A(net44144), .B(n331), .Y(n261) );
  BUFX12 U196 ( .A(shf_num[5]), .Y(net47580) );
  NAND3X6 U197 ( .A(n219), .B(n218), .C(n347), .Y(n547) );
  INVX3 U198 ( .A(n46), .Y(n47) );
  CLKINVX1 U199 ( .A(n16), .Y(n48) );
  CLKINVX1 U200 ( .A(n34), .Y(n35) );
  INVX12 U201 ( .A(n640), .Y(n527) );
  NAND2X2 U202 ( .A(net44129), .B(n319), .Y(n324) );
  NAND4X6 U203 ( .A(n159), .B(n198), .C(n199), .D(n200), .Y(n430) );
  NAND2X2 U204 ( .A(net44144), .B(n322), .Y(n198) );
  NAND2X2 U205 ( .A(net44142), .B(n320), .Y(n199) );
  NAND2X2 U206 ( .A(net44129), .B(n332), .Y(n337) );
  INVX3 U207 ( .A(n460), .Y(n455) );
  AND2X6 U208 ( .A(net43885), .B(n427), .Y(n127) );
  INVX2 U209 ( .A(n586), .Y(n327) );
  INVX1 U210 ( .A(n354), .Y(n92) );
  NAND2X2 U211 ( .A(n655), .B(n140), .Y(n637) );
  AOI21X2 U212 ( .A0(n549), .A1(net43773), .B0(net47596), .Y(n551) );
  NAND2X2 U213 ( .A(n573), .B(n126), .Y(n459) );
  AOI21X2 U214 ( .A0(n429), .A1(n140), .B0(n406), .Y(n404) );
  NAND2X2 U215 ( .A(n154), .B(net43773), .Y(n618) );
  NAND4X2 U216 ( .A(n382), .B(n504), .C(n381), .D(n380), .Y(shf_res[24]) );
  NAND2X2 U217 ( .A(n154), .B(net47220), .Y(n559) );
  NAND3X2 U218 ( .A(n513), .B(n512), .C(n511), .Y(shf_res[58]) );
  NAND2X2 U219 ( .A(net47596), .B(n616), .Y(n369) );
  AND2X4 U220 ( .A(n164), .B(n481), .Y(n358) );
  NAND2X4 U221 ( .A(n102), .B(n470), .Y(shf_res[46]) );
  CLKINVX8 U222 ( .A(net46990), .Y(net46976) );
  INVX3 U223 ( .A(inv_mask), .Y(net46990) );
  CLKBUFX3 U224 ( .A(net46990), .Y(net46988) );
  XNOR2XL U225 ( .A(c_frac[11]), .B(net46976), .Y(n15) );
  XNOR2XL U226 ( .A(c_frac[12]), .B(net46976), .Y(n16) );
  XNOR2XL U227 ( .A(c_frac[9]), .B(net46974), .Y(n17) );
  XOR2XL U228 ( .A(c_frac[23]), .B(net46974), .Y(n18) );
  XNOR2XL U229 ( .A(c_frac[14]), .B(net46976), .Y(n19) );
  INVX3 U230 ( .A(n297), .Y(n263) );
  INVX3 U231 ( .A(net46982), .Y(net46978) );
  CLKINVX1 U232 ( .A(n49), .Y(n50) );
  CLKINVX1 U233 ( .A(n151), .Y(n49) );
  CLKINVX1 U234 ( .A(net49493), .Y(n46) );
  CLKINVX1 U235 ( .A(n19), .Y(n45) );
  INVX3 U236 ( .A(net47602), .Y(net44016) );
  OR2X1 U237 ( .A(n449), .B(n162), .Y(n625) );
  AOI21X2 U238 ( .A0(n606), .A1(n449), .B0(n460), .Y(n450) );
  NAND2XL U239 ( .A(n162), .B(n449), .Y(n266) );
  OAI2BB1X2 U240 ( .A0N(net46976), .A1N(n625), .B0(n624), .Y(shf_res[87]) );
  NOR2X6 U241 ( .A(net44061), .B(net47951), .Y(net43765) );
  INVX8 U242 ( .A(n435), .Y(n462) );
  INVX4 U243 ( .A(n588), .Y(n589) );
  AOI21X1 U244 ( .A0(n640), .A1(net43885), .B0(net44016), .Y(n21) );
  NAND2BX4 U245 ( .AN(net47951), .B(n396), .Y(net43764) );
  INVX20 U246 ( .A(net47951), .Y(net43742) );
  OAI21X2 U247 ( .A0(n521), .A1(net51175), .B0(net47602), .Y(n522) );
  NAND4X2 U248 ( .A(n404), .B(n402), .C(n403), .D(n401), .Y(shf_res[28]) );
  NAND2X2 U249 ( .A(n628), .B(n126), .Y(n506) );
  NAND4X4 U250 ( .A(n644), .B(n599), .C(n598), .D(n597), .Y(shf_res[79]) );
  INVX2 U251 ( .A(n391), .Y(n381) );
  AOI21X2 U252 ( .A0(n623), .A1(net43773), .B0(n104), .Y(n624) );
  INVX3 U253 ( .A(net43915), .Y(net44055) );
  INVX4 U254 ( .A(n626), .Y(n622) );
  OR2X4 U255 ( .A(n104), .B(n606), .Y(n626) );
  INVX4 U256 ( .A(n331), .Y(n389) );
  CLKAND2X12 U257 ( .A(n595), .B(n429), .Y(n133) );
  NAND4X6 U258 ( .A(n237), .B(n259), .C(n236), .D(n235), .Y(n549) );
  NAND2X4 U259 ( .A(net47620), .B(net44146), .Y(n235) );
  NAND2X4 U260 ( .A(net47620), .B(n306), .Y(n168) );
  AND2X4 U261 ( .A(n306), .B(net44144), .Y(n81) );
  NAND3X2 U262 ( .A(n502), .B(n500), .C(n501), .Y(shf_res[55]) );
  NAND3X2 U263 ( .A(n452), .B(n451), .C(n450), .Y(shf_res[39]) );
  NAND2X6 U264 ( .A(n125), .B(n124), .Y(n306) );
  MXI2X4 U265 ( .A(n395), .B(n62), .S0(n70), .Y(net44061) );
  AND4X6 U266 ( .A(n66), .B(n67), .C(n206), .D(n205), .Y(n65) );
  NAND2X2 U267 ( .A(net43886), .B(n54), .Y(n512) );
  AOI21X2 U268 ( .A0(net43886), .A1(n136), .B0(n522), .Y(n526) );
  AND2X8 U269 ( .A(n595), .B(net43886), .Y(n130) );
  CLKINVX16 U270 ( .A(net47604), .Y(net43886) );
  NAND2X2 U271 ( .A(n619), .B(net47220), .Y(n563) );
  NAND4X6 U272 ( .A(n23), .B(n24), .C(n215), .D(n214), .Y(n339) );
  OR2X2 U273 ( .A(net47916), .B(n212), .Y(n23) );
  OR2X2 U274 ( .A(n213), .B(n12), .Y(n24) );
  CLKMX2X6 U275 ( .A(n277), .B(net44279), .S0(n70), .Y(n25) );
  NAND2X2 U276 ( .A(n628), .B(net47220), .Y(n571) );
  NAND2X2 U277 ( .A(n628), .B(n163), .Y(n454) );
  NAND2X2 U278 ( .A(n139), .B(n628), .Y(n280) );
  AOI22X4 U279 ( .A0(net44293), .A1(n150), .B0(net47615), .B1(n33), .Y(n116)
         );
  AOI22X4 U280 ( .A0(net44293), .A1(n36), .B0(net47616), .B1(n231), .Y(n124)
         );
  NAND2X2 U281 ( .A(net44142), .B(n414), .Y(n271) );
  NAND4X2 U282 ( .A(n258), .B(n263), .C(n94), .D(n257), .Y(shf_res[5]) );
  AOI22X4 U283 ( .A0(net44293), .A1(n33), .B0(n11), .B1(n149), .Y(n234) );
  NAND2X2 U284 ( .A(net44142), .B(n339), .Y(n219) );
  NAND2X2 U285 ( .A(n556), .B(net47222), .Y(n493) );
  NAND2X2 U286 ( .A(n556), .B(n126), .Y(n444) );
  NAND2X2 U287 ( .A(n556), .B(n164), .Y(n370) );
  NAND4BX4 U288 ( .AN(n27), .B(n409), .C(n408), .D(n407), .Y(shf_res[29]) );
  AO21X4 U289 ( .A0(n429), .A1(n136), .B0(n406), .Y(n27) );
  NAND2X2 U290 ( .A(n84), .B(net47586), .Y(n400) );
  INVX8 U291 ( .A(net44050), .Y(n28) );
  INVX3 U292 ( .A(net47580), .Y(net44050) );
  AOI21X2 U293 ( .A0(net43916), .A1(n126), .B0(n413), .Y(n398) );
  OAI211X2 U294 ( .A0(n394), .A1(n399), .B0(n392), .C0(n393), .Y(shf_res[26])
         );
  NAND2X6 U295 ( .A(n162), .B(n201), .Y(n543) );
  NAND2BX4 U296 ( .AN(n593), .B(net46976), .Y(n599) );
  NAND2X4 U297 ( .A(n162), .B(n472), .Y(n593) );
  NAND4X2 U298 ( .A(n431), .B(n433), .C(n432), .D(n434), .Y(shf_res[33]) );
  OAI2BB1X4 U299 ( .A0N(n162), .A1N(n465), .B0(n315), .Y(n582) );
  AND2X8 U300 ( .A(n162), .B(net44129), .Y(n142) );
  AOI21X4 U301 ( .A0(n139), .A1(n619), .B0(n264), .Y(n265) );
  NAND2X2 U302 ( .A(n133), .B(n628), .Y(n380) );
  CLKINVX2 U303 ( .A(n434), .Y(n406) );
  NAND4X2 U304 ( .A(n371), .B(n372), .C(n370), .D(n369), .Y(shf_res[21]) );
  CLKINVX8 U305 ( .A(n345), .Y(n475) );
  NOR2X2 U306 ( .A(n127), .B(n303), .Y(n203) );
  AOI21X2 U307 ( .A0(n139), .A1(n623), .B0(n303), .Y(n272) );
  CLKINVX6 U308 ( .A(n249), .Y(n303) );
  INVX6 U309 ( .A(n481), .Y(n355) );
  NAND2X1 U310 ( .A(net43885), .B(n26), .Y(n518) );
  INVX6 U311 ( .A(n646), .Y(n533) );
  OAI221X2 U312 ( .A0(n646), .A1(n138), .B0(n645), .B1(net46982), .C0(n644), 
        .Y(shf_res[95]) );
  AO21X4 U313 ( .A0(n595), .A1(net43885), .B0(n413), .Y(n29) );
  CLKINVX8 U314 ( .A(n430), .Y(n201) );
  OAI21X2 U315 ( .A0(n107), .A1(n161), .B0(n359), .Y(shf_res[17]) );
  BUFX20 U316 ( .A(n456), .Y(n163) );
  NAND2X4 U317 ( .A(net47620), .B(n308), .Y(n244) );
  AOI22X4 U318 ( .A0(n481), .A1(n126), .B0(n156), .B1(n163), .Y(n431) );
  NAND2X2 U319 ( .A(n569), .B(n133), .Y(n281) );
  NAND2X4 U320 ( .A(net44293), .B(n145), .Y(n175) );
  NAND3X2 U321 ( .A(n610), .B(n644), .C(n609), .Y(shf_res[83]) );
  NAND3X8 U322 ( .A(n347), .B(n169), .C(n168), .Y(n478) );
  NAND3X8 U323 ( .A(n310), .B(n311), .C(n312), .Y(n515) );
  BUFX20 U324 ( .A(net50372), .Y(net47220) );
  INVX8 U325 ( .A(n73), .Y(n333) );
  NAND2X8 U326 ( .A(net46978), .B(n162), .Y(n601) );
  NAND2X2 U327 ( .A(n84), .B(n162), .Y(n242) );
  INVX4 U328 ( .A(n162), .Y(n93) );
  CLKMX2X2 U329 ( .A(net51175), .B(net47602), .S0(n162), .Y(n135) );
  NAND2X8 U330 ( .A(n162), .B(net43886), .Y(n399) );
  NAND3X4 U331 ( .A(n162), .B(net47931), .C(n326), .Y(n586) );
  NAND2BX4 U332 ( .AN(n601), .B(n60), .Y(n296) );
  AND3X2 U333 ( .A(n651), .B(n354), .C(net44122), .Y(n108) );
  INVX8 U334 ( .A(net47586), .Y(net44037) );
  NAND2X4 U335 ( .A(net44237), .B(net47586), .Y(net44200) );
  OA21X4 U336 ( .A0(n291), .A1(n64), .B0(n259), .Y(n109) );
  NAND2X2 U337 ( .A(n565), .B(n133), .Y(n273) );
  NAND2X4 U338 ( .A(net44144), .B(n321), .Y(n72) );
  NAND2X4 U339 ( .A(n314), .B(net44144), .Y(n245) );
  NAND2X2 U340 ( .A(n552), .B(n126), .Y(n441) );
  NAND2X6 U341 ( .A(shf_num[1]), .B(net47590), .Y(net44029) );
  INVX8 U342 ( .A(n295), .Y(n578) );
  NAND3X2 U343 ( .A(n505), .B(n506), .C(n129), .Y(shf_res[56]) );
  NAND2X4 U344 ( .A(net47620), .B(n319), .Y(n187) );
  NAND3X6 U345 ( .A(n347), .B(n188), .C(n187), .Y(n481) );
  NAND2X4 U346 ( .A(net44142), .B(n325), .Y(n188) );
  NAND2BX4 U347 ( .AN(n64), .B(n320), .Y(n323) );
  NAND2BX2 U348 ( .AN(n64), .B(n277), .Y(n176) );
  OAI2BB2X2 U349 ( .B0(n31), .B1(n41), .A0N(net44281), .A1N(net47228), .Y(
        net44279) );
  NAND2X1 U350 ( .A(net43885), .B(n643), .Y(n534) );
  NAND2X1 U351 ( .A(n163), .B(n524), .Y(n408) );
  NAND2X2 U352 ( .A(n560), .B(n164), .Y(n374) );
  NAND2X8 U353 ( .A(n143), .B(n157), .Y(n293) );
  NAND2X1 U354 ( .A(net44144), .B(n282), .Y(n85) );
  NAND3X2 U355 ( .A(n618), .B(net47602), .C(n617), .Y(shf_res[85]) );
  OAI2BB1X2 U356 ( .A0N(n395), .A1N(n142), .B0(n39), .Y(n89) );
  NAND4X2 U357 ( .A(n559), .B(n644), .C(n558), .D(n557), .Y(shf_res[69]) );
  NAND3X1 U358 ( .A(net47620), .B(n32), .C(n606), .Y(n558) );
  NAND2X4 U359 ( .A(n28), .B(n428), .Y(n542) );
  CLKINVX20 U360 ( .A(n53), .Y(net44144) );
  CLKAND2X8 U361 ( .A(net44142), .B(n308), .Y(n80) );
  NAND2X4 U362 ( .A(net44142), .B(n395), .Y(n228) );
  OAI21X4 U363 ( .A0(n478), .A1(n179), .B0(n171), .Y(n539) );
  NOR3X4 U364 ( .A(n349), .B(n348), .C(n385), .Y(n350) );
  INVX6 U365 ( .A(n385), .Y(n372) );
  AOI211X2 U366 ( .A0(n164), .A1(net43916), .B0(n304), .C0(n385), .Y(n305) );
  NAND2X1 U367 ( .A(net46978), .B(n616), .Y(n617) );
  INVXL U368 ( .A(net44295), .Y(n31) );
  INVX12 U369 ( .A(net44280), .Y(net44295) );
  NAND2X2 U370 ( .A(net47620), .B(net44145), .Y(n269) );
  INVX6 U371 ( .A(net44145), .Y(net44204) );
  NAND2X4 U372 ( .A(net44142), .B(n410), .Y(n262) );
  NAND2X1 U373 ( .A(n263), .B(n437), .Y(n264) );
  OAI2BB1X4 U374 ( .A0N(net47620), .A1N(n314), .B0(net44152), .Y(n514) );
  NAND2X4 U375 ( .A(net47596), .B(n639), .Y(n407) );
  NAND2X2 U376 ( .A(n549), .B(n164), .Y(n363) );
  AOI22X4 U377 ( .A0(net44293), .A1(n149), .B0(net47615), .B1(n35), .Y(n217)
         );
  NAND3X6 U378 ( .A(n344), .B(n343), .C(net44141), .Y(n596) );
  OAI21X2 U379 ( .A0(n605), .A1(net47604), .B0(n479), .Y(shf_res[48]) );
  NAND4X2 U380 ( .A(n379), .B(n378), .C(n377), .D(n376), .Y(shf_res[23]) );
  OAI21X2 U381 ( .A0(n585), .A1(n161), .B0(n330), .Y(shf_res[13]) );
  NAND2X6 U382 ( .A(n193), .B(n192), .Y(n321) );
  OAI21X2 U383 ( .A0(n585), .A1(net47604), .B0(n468), .Y(shf_res[45]) );
  AOI221X2 U384 ( .A0(n478), .A1(net47222), .B0(n2), .B1(n477), .C0(n476), .Y(
        n479) );
  CLKINVX6 U385 ( .A(n313), .Y(n354) );
  NAND2BX1 U386 ( .AN(n60), .B(n162), .Y(n313) );
  CLKBUFX2 U387 ( .A(n148), .Y(n33) );
  XOR2XL U388 ( .A(c_frac[7]), .B(net46974), .Y(n148) );
  XNOR2XL U389 ( .A(c_frac[5]), .B(net46974), .Y(n34) );
  CLKBUFX2 U390 ( .A(n146), .Y(n36) );
  XOR2XL U391 ( .A(c_frac[4]), .B(net46974), .Y(n146) );
  NAND2X4 U392 ( .A(net47615), .B(n144), .Y(n174) );
  NAND2X4 U393 ( .A(net47228), .B(n144), .Y(n190) );
  NAND2X4 U394 ( .A(n331), .B(net47620), .Y(n82) );
  NAND2BX2 U395 ( .AN(net47931), .B(n325), .Y(n286) );
  NOR2X6 U396 ( .A(n37), .B(n38), .Y(n207) );
  CLKXOR2X2 U397 ( .A(c_frac[8]), .B(net46974), .Y(n150) );
  AO21X4 U398 ( .A0(n91), .A1(net47620), .B0(n612), .Y(n616) );
  OR2X1 U399 ( .A(net47916), .B(net44330), .Y(n66) );
  INVX4 U400 ( .A(n342), .Y(n51) );
  OAI2BB1X4 U401 ( .A0N(n164), .A1N(n528), .B0(n341), .Y(n342) );
  AOI2BB2X1 U402 ( .B0(net47931), .B1(n606), .A0N(n655), .A1N(net46988), .Y(
        n590) );
  NOR2X4 U403 ( .A(n29), .B(n329), .Y(n330) );
  NOR2X1 U404 ( .A(n651), .B(net46982), .Y(n653) );
  INVX12 U405 ( .A(n483), .Y(n477) );
  INVX4 U406 ( .A(n643), .Y(n645) );
  NAND2X4 U407 ( .A(n62), .B(n527), .Y(n646) );
  NAND3X2 U408 ( .A(n448), .B(n447), .C(n446), .Y(shf_res[38]) );
  AOI21X2 U409 ( .A0(n478), .A1(n126), .B0(n423), .Y(n424) );
  OAI31X4 U410 ( .A0(n422), .A1(n161), .A2(net47951), .B0(n434), .Y(n423) );
  NOR2X8 U411 ( .A(n87), .B(n88), .Y(n194) );
  NAND2X2 U412 ( .A(n549), .B(net47222), .Y(n489) );
  OAI2BB1X2 U413 ( .A0N(net43773), .A1N(n628), .B0(n627), .Y(shf_res[88]) );
  NOR2X1 U414 ( .A(n626), .B(n132), .Y(n627) );
  NAND2X4 U415 ( .A(net47226), .B(n145), .Y(n205) );
  AO21X4 U416 ( .A0(net46978), .A1(net47951), .B0(n104), .Y(n652) );
  NAND2X2 U417 ( .A(n560), .B(net47222), .Y(n497) );
  NAND3X2 U418 ( .A(n498), .B(n497), .C(n496), .Y(shf_res[54]) );
  NOR2X2 U419 ( .A(n316), .B(net47602), .Y(n317) );
  INVX4 U420 ( .A(n201), .Y(n156) );
  AND2X8 U421 ( .A(n100), .B(n101), .Y(n39) );
  AOI21X2 U422 ( .A0(n623), .A1(n126), .B0(n499), .Y(n500) );
  AOI21X1 U423 ( .A0(net46974), .A1(n640), .B0(n104), .Y(n641) );
  AOI22X4 U424 ( .A0(net47625), .A1(n33), .B0(n36), .B1(net47228), .Y(n216) );
  NAND2X2 U425 ( .A(net44142), .B(n322), .Y(n71) );
  OAI21X2 U426 ( .A0(n605), .A1(n138), .B0(n604), .Y(shf_res[80]) );
  INVX20 U427 ( .A(n138), .Y(n655) );
  CLKXOR2X1 U428 ( .A(c_frac[20]), .B(net46976), .Y(n145) );
  XNOR2X1 U429 ( .A(c_frac[3]), .B(net46974), .Y(n213) );
  AOI22X4 U430 ( .A0(net44293), .A1(n147), .B0(net47616), .B1(n40), .Y(n208)
         );
  CLKXOR2X1 U431 ( .A(c_frac[10]), .B(net46976), .Y(n147) );
  INVX3 U432 ( .A(n17), .Y(n40) );
  CLKXOR2X1 U433 ( .A(c_frac[19]), .B(net46976), .Y(n144) );
  INVX3 U434 ( .A(n18), .Y(n41) );
  INVX3 U435 ( .A(n572), .Y(n42) );
  INVX6 U436 ( .A(n42), .Y(n43) );
  AOI22X4 U437 ( .A0(net47616), .A1(net49482), .B0(net44293), .B1(net49502), 
        .Y(n122) );
  CLKINVX1 U438 ( .A(net49502), .Y(n61) );
  CLKXOR2X2 U439 ( .A(c_frac[16]), .B(net46976), .Y(net49502) );
  XOR2XL U440 ( .A(c_frac[13]), .B(net46976), .Y(net49493) );
  NAND2X2 U441 ( .A(net47626), .B(n232), .Y(n166) );
  AND2X4 U442 ( .A(net47626), .B(n152), .Y(n88) );
  BUFX20 U443 ( .A(shf_num[6]), .Y(n160) );
  OAI211X2 U444 ( .A0(n471), .A1(n421), .B0(n51), .C0(n379), .Y(shf_res[14])
         );
  OR2X8 U445 ( .A(n112), .B(n113), .Y(n331) );
  INVX20 U446 ( .A(net44136), .Y(net44142) );
  BUFX3 U447 ( .A(n170), .Y(n52) );
  BUFX20 U448 ( .A(net44200), .Y(n53) );
  NAND2X2 U449 ( .A(n4), .B(n126), .Y(n486) );
  NAND2X1 U450 ( .A(n623), .B(n163), .Y(n451) );
  AOI22X4 U451 ( .A0(net47228), .A1(n40), .B0(net47626), .B1(n48), .Y(n226) );
  NOR2X8 U452 ( .A(net47951), .B(n55), .Y(n54) );
  MX2X6 U453 ( .A(n389), .B(n65), .S0(n70), .Y(n55) );
  NOR2X6 U454 ( .A(n93), .B(n419), .Y(n141) );
  NAND2X4 U455 ( .A(net44129), .B(n333), .Y(n260) );
  BUFX20 U456 ( .A(net43820), .Y(net47931) );
  NAND2X4 U457 ( .A(net44142), .B(n333), .Y(n336) );
  AOI21X2 U458 ( .A0(n523), .A1(net47220), .B0(n467), .Y(n468) );
  NAND2BX4 U459 ( .AN(n642), .B(net43886), .Y(n530) );
  NAND2X2 U460 ( .A(n560), .B(net43773), .Y(n564) );
  NAND2X2 U461 ( .A(n629), .B(net47222), .Y(n575) );
  BUFX20 U462 ( .A(net44029), .Y(net47630) );
  INVX6 U463 ( .A(n104), .Y(n644) );
  NAND4X2 U464 ( .A(n507), .B(n508), .C(n509), .D(n129), .Y(shf_res[57]) );
  NOR3X1 U465 ( .A(n351), .B(net47602), .C(n384), .Y(n352) );
  INVX8 U466 ( .A(n179), .Y(n384) );
  NAND2X2 U467 ( .A(n4), .B(n133), .Y(n361) );
  NAND2X2 U468 ( .A(n573), .B(n133), .Y(n289) );
  NAND2X4 U469 ( .A(n194), .B(n195), .Y(n58) );
  AOI22X4 U470 ( .A0(net47616), .A1(net49502), .B0(net44293), .B1(n50), .Y(
        n195) );
  AOI22X4 U471 ( .A0(net44134), .A1(net44129), .B0(net44143), .B1(net47620), 
        .Y(net50184) );
  NAND2X1 U472 ( .A(net47220), .B(n596), .Y(n536) );
  AOI22X4 U473 ( .A0(net44293), .A1(n48), .B0(n11), .B1(n44), .Y(n118) );
  NAND2BX1 U474 ( .AN(net47584), .B(net47228), .Y(n326) );
  NAND4X2 U475 ( .A(n503), .B(n492), .C(n491), .D(n490), .Y(shf_res[52]) );
  NAND4X2 U476 ( .A(n443), .B(n455), .C(n442), .D(n441), .Y(shf_res[36]) );
  NAND4X8 U477 ( .A(n59), .B(n229), .C(n228), .D(net44307), .Y(n607) );
  OR2X8 U478 ( .A(n299), .B(n64), .Y(n59) );
  NAND4X2 U479 ( .A(n368), .B(n372), .C(n367), .D(n366), .Y(shf_res[20]) );
  AOI2BB2X2 U480 ( .B0(net47226), .B1(n45), .A0N(net47630), .A1N(n49), .Y(n123) );
  NAND2X1 U481 ( .A(n163), .B(n596), .Y(n417) );
  AOI22X4 U482 ( .A0(net44142), .A1(n309), .B0(net44144), .B1(n308), .Y(n310)
         );
  NAND2X6 U483 ( .A(net47580), .B(net46976), .Y(net51175) );
  CLKBUFX20 U484 ( .A(net43757), .Y(net47602) );
  NAND2X2 U485 ( .A(net47620), .B(n321), .Y(n254) );
  AND2X4 U486 ( .A(net44142), .B(n321), .Y(n76) );
  OR2X8 U487 ( .A(net46982), .B(n138), .Y(n434) );
  NAND2X8 U488 ( .A(n207), .B(n208), .Y(n334) );
  INVX20 U489 ( .A(net44237), .Y(n60) );
  AOI22X4 U490 ( .A0(net44129), .A1(n322), .B0(net44144), .B1(n58), .Y(n252)
         );
  AOI2BB2X4 U491 ( .B0(net47228), .B1(n47), .A0N(n12), .A1N(n61), .Y(net44309)
         );
  NAND3BX4 U492 ( .AN(n225), .B(n223), .C(n224), .Y(n62) );
  NOR3BX1 U493 ( .AN(n644), .B(n603), .C(n602), .Y(n604) );
  NAND2X8 U494 ( .A(n121), .B(n120), .Y(n395) );
  AOI22X4 U495 ( .A0(net47616), .A1(n152), .B0(net44293), .B1(n144), .Y(n120)
         );
  NAND4X2 U496 ( .A(n281), .B(n263), .C(n43), .D(n280), .Y(shf_res[8]) );
  NOR2BX2 U497 ( .AN(n503), .B(n137), .Y(n511) );
  INVX12 U498 ( .A(n510), .Y(n503) );
  NAND3X2 U499 ( .A(n289), .B(n290), .C(n288), .Y(shf_res[9]) );
  OAI2BB1X4 U500 ( .A0N(n595), .A1N(n596), .B0(n594), .Y(n345) );
  OAI2BB1X4 U501 ( .A0N(n63), .A1N(n84), .B0(n384), .Y(n612) );
  OAI2BB1X4 U502 ( .A0N(n60), .A1N(n25), .B0(n241), .Y(n611) );
  NAND3BX4 U503 ( .AN(n111), .B(n176), .C(n177), .Y(n69) );
  NAND2BX2 U504 ( .AN(net47580), .B(n160), .Y(n421) );
  NAND2X1 U505 ( .A(net43886), .B(n533), .Y(n535) );
  NAND2X2 U506 ( .A(net44129), .B(net44143), .Y(net44246) );
  OAI21X2 U507 ( .A0(n64), .A1(n12), .B0(n595), .Y(n608) );
  NOR3X1 U508 ( .A(n12), .B(n64), .C(n595), .Y(n238) );
  AO22X4 U509 ( .A0(n11), .A1(n50), .B0(net44293), .B1(n152), .Y(n112) );
  INVX8 U510 ( .A(n405), .Y(n253) );
  NAND3X2 U511 ( .A(n621), .B(n620), .C(n622), .Y(shf_res[86]) );
  NAND2X2 U512 ( .A(n619), .B(net43773), .Y(n621) );
  INVX4 U513 ( .A(net44037), .Y(n70) );
  AOI22X2 U514 ( .A0(n524), .A1(net47220), .B0(n523), .B1(net43773), .Y(n525)
         );
  NAND2X4 U515 ( .A(n600), .B(n52), .Y(n422) );
  NAND2X2 U516 ( .A(n629), .B(net43773), .Y(n632) );
  AOI22X4 U517 ( .A0(net47625), .A1(n47), .B0(net47228), .B1(n147), .Y(n119)
         );
  NAND2BX2 U518 ( .AN(net47584), .B(net46976), .Y(n347) );
  OAI221X2 U519 ( .A0(n106), .A1(net46988), .B0(n107), .B1(n138), .C0(n644), 
        .Y(shf_res[81]) );
  INVX8 U520 ( .A(n414), .Y(n299) );
  INVX12 U521 ( .A(net43945), .Y(net43902) );
  OAI21X4 U522 ( .A0(n546), .A1(n545), .B0(n544), .Y(shf_res[65]) );
  CLKAND2X12 U523 ( .A(n162), .B(n429), .Y(n139) );
  INVX20 U524 ( .A(n161), .Y(n429) );
  NAND2X4 U525 ( .A(net47615), .B(n145), .Y(n191) );
  OAI21X2 U526 ( .A0(n422), .A1(net47951), .B0(n28), .Y(n171) );
  INVX3 U527 ( .A(n422), .Y(n647) );
  NAND2X8 U528 ( .A(net47602), .B(n155), .Y(n460) );
  NOR2X2 U529 ( .A(n106), .B(n155), .Y(n357) );
  NAND2BX4 U530 ( .AN(net47580), .B(net46976), .Y(n155) );
  NAND2X4 U531 ( .A(net47228), .B(n152), .Y(n172) );
  NOR2X8 U532 ( .A(n114), .B(n115), .Y(n73) );
  AOI22X4 U533 ( .A0(net47226), .A1(n50), .B0(net47626), .B1(n145), .Y(n121)
         );
  NOR2X1 U534 ( .A(n520), .B(net47951), .Y(n521) );
  AND2X8 U535 ( .A(n595), .B(n430), .Y(n103) );
  NAND2X4 U536 ( .A(n515), .B(n595), .Y(n74) );
  NAND2X1 U537 ( .A(n25), .B(n354), .Y(n75) );
  AND2X8 U538 ( .A(n74), .B(n75), .Y(n584) );
  OAI21X2 U539 ( .A0(n584), .A1(n161), .B0(n318), .Y(shf_res[12]) );
  OAI21X2 U540 ( .A0(n584), .A1(net47604), .B0(n466), .Y(shf_res[44]) );
  NAND3X2 U541 ( .A(n574), .B(n576), .C(n575), .Y(shf_res[73]) );
  NAND2X2 U542 ( .A(n60), .B(n3), .Y(n383) );
  NAND2X6 U543 ( .A(n12), .B(n527), .Y(n643) );
  NAND2X4 U544 ( .A(net47620), .B(n332), .Y(n218) );
  NAND3X8 U545 ( .A(n285), .B(n286), .C(n287), .Y(n573) );
  CLKXOR2X1 U546 ( .A(c_frac[6]), .B(net46974), .Y(n149) );
  NAND2X2 U547 ( .A(n154), .B(n163), .Y(n445) );
  NOR2X1 U548 ( .A(n104), .B(n561), .Y(n562) );
  NAND2BX4 U549 ( .AN(net47580), .B(net46976), .Y(n435) );
  NAND2BX1 U550 ( .AN(net47630), .B(net47586), .Y(n396) );
  NAND3X2 U551 ( .A(n440), .B(n439), .C(n438), .Y(shf_res[35]) );
  NAND2X4 U552 ( .A(n153), .B(n11), .Y(n182) );
  NAND2X2 U553 ( .A(n153), .B(net47226), .Y(n214) );
  NOR2X8 U554 ( .A(n80), .B(n81), .Y(n274) );
  NAND2X2 U555 ( .A(net47626), .B(n222), .Y(n173) );
  NAND2X2 U556 ( .A(net47620), .B(n322), .Y(n287) );
  BUFX6 U557 ( .A(n558), .Y(n94) );
  NAND2X8 U558 ( .A(n227), .B(n226), .Y(net44145) );
  AOI22X4 U559 ( .A0(net44293), .A1(n44), .B0(net47616), .B1(n147), .Y(n227)
         );
  AOI21X2 U560 ( .A0(n133), .A1(n549), .B0(n105), .Y(n239) );
  NAND2X2 U561 ( .A(net44144), .B(net44194), .Y(n236) );
  INVX4 U562 ( .A(net44135), .Y(net44194) );
  NAND2X2 U563 ( .A(n232), .B(n11), .Y(n215) );
  INVX12 U564 ( .A(n648), .Y(n600) );
  NOR3XL U565 ( .A(net47580), .B(n2), .C(n60), .Y(n351) );
  NOR2X2 U566 ( .A(net47596), .B(n127), .Y(n544) );
  NAND2X6 U567 ( .A(n234), .B(n233), .Y(net44146) );
  AOI22X2 U568 ( .A0(net47626), .A1(n150), .B0(net47228), .B1(n35), .Y(n233)
         );
  NAND2X2 U569 ( .A(net44129), .B(n58), .Y(n86) );
  CLKXOR2X1 U570 ( .A(c_frac[15]), .B(net46976), .Y(net49482) );
  NAND2X6 U571 ( .A(net44281), .B(net47615), .Y(n224) );
  OR2X8 U572 ( .A(net47580), .B(n160), .Y(n138) );
  OAI221X2 U573 ( .A0(n586), .A1(net46988), .B0(n585), .B1(n138), .C0(n644), 
        .Y(shf_res[77]) );
  AOI21X2 U574 ( .A0(net43886), .A1(net43765), .B0(n99), .Y(n98) );
  NOR2X2 U575 ( .A(net47916), .B(n41), .Y(n225) );
  AO22X4 U576 ( .A0(net47625), .A1(net49482), .B0(net47228), .B1(n48), .Y(n115) );
  AO22X4 U577 ( .A0(net44293), .A1(n45), .B0(n11), .B1(n47), .Y(n114) );
  NAND2X8 U578 ( .A(net46976), .B(net44129), .Y(n259) );
  NAND2X2 U579 ( .A(net44142), .B(n306), .Y(n246) );
  NAND2X2 U580 ( .A(net44142), .B(n319), .Y(n256) );
  CLKINVX20 U581 ( .A(net47916), .Y(net44293) );
  NAND2X2 U582 ( .A(n4), .B(n139), .Y(n221) );
  NAND2X6 U583 ( .A(net43915), .B(n93), .Y(n100) );
  OAI21X4 U584 ( .A0(n581), .A1(n161), .B0(n305), .Y(shf_res[11]) );
  AOI21X2 U585 ( .A0(n655), .A1(n136), .B0(net47596), .Y(n638) );
  NAND2X2 U586 ( .A(n629), .B(n163), .Y(n458) );
  OAI21X4 U587 ( .A0(n581), .A1(net47604), .B0(n464), .Y(shf_res[43]) );
  NAND2BX2 U588 ( .AN(n64), .B(n307), .Y(n311) );
  NAND2X2 U589 ( .A(n619), .B(n163), .Y(n447) );
  NAND2X1 U590 ( .A(net44293), .B(n153), .Y(n167) );
  NAND3X2 U591 ( .A(n564), .B(n563), .C(n562), .Y(shf_res[70]) );
  NAND2X4 U592 ( .A(net44144), .B(n395), .Y(n270) );
  NAND2X2 U593 ( .A(net46978), .B(net47228), .Y(n181) );
  NAND2X2 U594 ( .A(n139), .B(n611), .Y(n248) );
  NAND2X2 U595 ( .A(net44129), .B(net44146), .Y(n344) );
  INVX8 U596 ( .A(n334), .Y(n291) );
  NAND2X2 U597 ( .A(net44142), .B(net44146), .Y(n268) );
  OAI2BB1X2 U598 ( .A0N(n1), .A1N(n655), .B0(n654), .Y(shf_res[97]) );
  CLKINVX20 U599 ( .A(n162), .Y(n595) );
  CLKBUFX20 U600 ( .A(shf_num[4]), .Y(n162) );
  NAND2X4 U601 ( .A(net43742), .B(n600), .Y(n420) );
  AOI22X4 U602 ( .A0(net44293), .A1(n40), .B0(n11), .B1(n150), .Y(n193) );
  OAI2BB1X2 U603 ( .A0N(n133), .A1N(n560), .B0(n265), .Y(shf_res[6]) );
  AO21X4 U604 ( .A0(n91), .A1(n70), .B0(n635), .Y(n639) );
  AO22X4 U605 ( .A0(net47226), .A1(net49502), .B0(net47626), .B1(n144), .Y(
        n113) );
  OAI2BB1X4 U606 ( .A0N(n587), .A1N(n595), .B0(n588), .Y(n338) );
  NAND2X2 U607 ( .A(net44144), .B(n277), .Y(n278) );
  AOI22X4 U608 ( .A0(net44293), .A1(net49482), .B0(net47616), .B1(n45), .Y(n95) );
  NAND2X1 U609 ( .A(net47596), .B(n643), .Y(n415) );
  AOI21X2 U610 ( .A0(n532), .A1(net47220), .B0(n473), .Y(n474) );
  NAND2X2 U611 ( .A(n514), .B(net43773), .Y(n517) );
  AOI211X2 U612 ( .A0(n514), .A1(n164), .B0(n317), .C0(n385), .Y(n318) );
  OAI2BB1X4 U613 ( .A0N(net47620), .A1N(net44194), .B0(net44152), .Y(net43916)
         );
  NAND2X2 U614 ( .A(n12), .B(net44129), .Y(n472) );
  INVX20 U615 ( .A(net47630), .Y(net44004) );
  OAI21X2 U616 ( .A0(n107), .A1(net47604), .B0(n482), .Y(shf_res[49]) );
  NAND2X2 U617 ( .A(n154), .B(n139), .Y(n258) );
  NOR3X4 U618 ( .A(n29), .B(n358), .C(n357), .Y(n359) );
  CLKBUFX2 U619 ( .A(net47590), .Y(n91) );
  OAI31X2 U620 ( .A0(n539), .A1(n540), .A2(n141), .B0(n178), .Y(shf_res[0]) );
  NAND2X2 U621 ( .A(net44134), .B(net47620), .Y(n346) );
  NAND4X2 U622 ( .A(n445), .B(n455), .C(n94), .D(n444), .Y(shf_res[37]) );
  NAND2X2 U623 ( .A(n419), .B(n163), .Y(n426) );
  AOI21X2 U624 ( .A0(n607), .A1(net47220), .B0(n105), .Y(n550) );
  NAND2X2 U625 ( .A(net43915), .B(net47222), .Y(n97) );
  NAND2X2 U626 ( .A(net44144), .B(n333), .Y(n209) );
  OR2X4 U627 ( .A(n65), .B(n64), .Y(n158) );
  NAND2X2 U628 ( .A(n133), .B(n611), .Y(n368) );
  BUFX20 U629 ( .A(net44295), .Y(net47615) );
  NAND2X6 U630 ( .A(n116), .B(n117), .Y(n308) );
  AOI22X2 U631 ( .A0(net47625), .A1(n40), .B0(net47228), .B1(n149), .Y(n117)
         );
  NAND4X2 U632 ( .A(n570), .B(n644), .C(n571), .D(n43), .Y(shf_res[72]) );
  NAND2X2 U633 ( .A(net44129), .B(n308), .Y(n177) );
  NAND2X2 U634 ( .A(n515), .B(net47222), .Y(n516) );
  NAND2X2 U635 ( .A(n573), .B(n163), .Y(n388) );
  AOI2BB2X4 U636 ( .B0(n69), .B1(n595), .A0N(n422), .A1N(n92), .Y(n605) );
  OAI2BB1X4 U637 ( .A0N(n655), .A1N(n89), .B0(n580), .Y(shf_res[75]) );
  OAI21X2 U638 ( .A0(n3), .A1(n60), .B0(n162), .Y(n106) );
  AOI21X2 U639 ( .A0(n481), .A1(net47220), .B0(n480), .Y(n482) );
  NAND2X6 U640 ( .A(n109), .B(n110), .Y(n560) );
  NAND2X2 U641 ( .A(n154), .B(n126), .Y(n495) );
  AOI21X2 U642 ( .A0(n532), .A1(n126), .B0(n413), .Y(n418) );
  OAI2BB1X4 U643 ( .A0N(n28), .A1N(net47596), .B0(n434), .Y(n413) );
  AOI2BB2X2 U644 ( .B0(n587), .B1(n163), .A0N(n642), .A1N(n161), .Y(n411) );
  OAI31X2 U645 ( .A0(n160), .A1(n539), .A2(n141), .B0(n538), .Y(shf_res[64])
         );
  NAND3X8 U646 ( .A(n275), .B(n276), .C(n274), .Y(n569) );
  NAND2X2 U647 ( .A(n569), .B(net47222), .Y(n505) );
  NAND2X2 U648 ( .A(n569), .B(net43773), .Y(n570) );
  NAND2X2 U649 ( .A(n569), .B(n164), .Y(n382) );
  NAND2X2 U650 ( .A(n569), .B(n126), .Y(n453) );
  OAI21X2 U651 ( .A0(n605), .A1(n161), .B0(n353), .Y(shf_res[16]) );
  NAND2X2 U652 ( .A(n526), .B(n525), .Y(shf_res[61]) );
  NAND3X2 U653 ( .A(n592), .B(n591), .C(n590), .Y(shf_res[78]) );
  OAI2BB1X4 U654 ( .A0N(net44050), .A1N(n266), .B0(net46976), .Y(n567) );
  NAND2X2 U655 ( .A(net46978), .B(n635), .Y(n636) );
  NAND2X2 U656 ( .A(net47596), .B(n635), .Y(n401) );
  NAND3X2 U657 ( .A(n596), .B(n595), .C(n655), .Y(n597) );
  AOI22X2 U658 ( .A0(net47625), .A1(n147), .B0(net47226), .B1(n33), .Y(n192)
         );
  OAI211X2 U659 ( .A0(n584), .A1(n138), .B0(n583), .C0(net47602), .Y(
        shf_res[76]) );
  AOI21X2 U660 ( .A0(n607), .A1(n126), .B0(n499), .Y(n487) );
  AND2X4 U661 ( .A(net43885), .B(n420), .Y(n128) );
  NAND2X2 U662 ( .A(n611), .B(net47220), .Y(n555) );
  NAND2X2 U663 ( .A(n611), .B(net43773), .Y(n614) );
  NAND2X2 U664 ( .A(n611), .B(n163), .Y(n443) );
  NAND2X2 U665 ( .A(n611), .B(n126), .Y(n492) );
  OAI21X2 U666 ( .A0(n475), .A1(net47604), .B0(n474), .Y(shf_res[47]) );
  NOR2X8 U667 ( .A(n103), .B(n108), .Y(n107) );
  NOR2X6 U668 ( .A(n65), .B(n53), .Y(n292) );
  NAND4X2 U669 ( .A(n248), .B(n247), .C(n554), .D(n249), .Y(shf_res[4]) );
  OAI21X1 U670 ( .A0(n243), .A1(n28), .B0(net46978), .Y(n554) );
  MXI2X6 U671 ( .A(n292), .B(n293), .S0(n93), .Y(n294) );
  NAND2X1 U672 ( .A(n462), .B(n625), .Y(n378) );
  OAI21X1 U673 ( .A0(n427), .A1(n28), .B0(net44016), .Y(n433) );
  NAND2X4 U674 ( .A(net44129), .B(n321), .Y(n200) );
  BUFX20 U675 ( .A(n63), .Y(net47620) );
  NAND2X2 U676 ( .A(n565), .B(n164), .Y(n376) );
  NAND2X2 U677 ( .A(n565), .B(n126), .Y(n452) );
  AOI21X2 U678 ( .A0(net53231), .A1(n561), .B0(n460), .Y(n438) );
  NOR2X2 U679 ( .A(n460), .B(n561), .Y(n446) );
  NAND2X2 U680 ( .A(n514), .B(n126), .Y(n403) );
  BUFX20 U681 ( .A(n130), .Y(n126) );
  NOR2X2 U682 ( .A(n390), .B(n162), .Y(n137) );
  BUFX20 U683 ( .A(n456), .Y(n164) );
  NAND2X2 U684 ( .A(net44142), .B(net44134), .Y(n237) );
  NAND2X2 U685 ( .A(net44144), .B(net44134), .Y(n267) );
  OAI21X2 U686 ( .A0(n475), .A1(n161), .B0(n350), .Y(shf_res[15]) );
  NAND2BX2 U687 ( .AN(n160), .B(net46976), .Y(n249) );
  NAND2X1 U688 ( .A(net43885), .B(n625), .Y(n501) );
  NAND4X2 U689 ( .A(n536), .B(n535), .C(n537), .D(n534), .Y(shf_res[63]) );
  NAND3X2 U690 ( .A(n486), .B(n503), .C(n485), .Y(shf_res[50]) );
  NAND2X2 U691 ( .A(net44144), .B(net44143), .Y(net44307) );
  OAI21X1 U692 ( .A0(n420), .A1(n28), .B0(net47596), .Y(n425) );
  NOR2X1 U693 ( .A(net47596), .B(n128), .Y(n538) );
  NAND3X2 U694 ( .A(n424), .B(n426), .C(n425), .Y(shf_res[32]) );
  NAND2X2 U695 ( .A(n62), .B(n142), .Y(n594) );
  NAND2BX2 U696 ( .AN(n594), .B(n655), .Y(n598) );
  AOI22X2 U697 ( .A0(net47625), .A1(n35), .B0(net47226), .B1(n230), .Y(n125)
         );
  NAND4X2 U698 ( .A(n495), .B(n503), .C(n494), .D(n493), .Y(shf_res[53]) );
  NAND3X2 U699 ( .A(n361), .B(n381), .C(n360), .Y(shf_res[18]) );
  AOI2BB2X4 U700 ( .B0(net44144), .B1(net44146), .A0N(net44204), .A1N(net44136), .Y(net50220) );
  NOR2X2 U701 ( .A(n242), .B(n64), .Y(n243) );
  NAND3X2 U702 ( .A(n221), .B(n263), .C(n220), .Y(shf_res[2]) );
  AOI22X2 U703 ( .A0(net44293), .A1(n231), .B0(net47616), .B1(n230), .Y(
        net44298) );
  NOR2BX4 U704 ( .AN(n606), .B(n383), .Y(n134) );
  NAND2X4 U705 ( .A(net46978), .B(n64), .Y(net44152) );
  NAND2X2 U706 ( .A(n556), .B(net43773), .Y(n557) );
  BUFX20 U707 ( .A(net43756), .Y(net47596) );
  NAND2X2 U708 ( .A(n515), .B(n163), .Y(n402) );
  CLKINVX20 U709 ( .A(net43820), .Y(net44129) );
  NAND3X8 U710 ( .A(n271), .B(n270), .C(net44246), .Y(n623) );
  AOI21X2 U711 ( .A0(n528), .A1(net47220), .B0(n469), .Y(n470) );
  NAND2BX2 U712 ( .AN(n64), .B(n395), .Y(n343) );
  NAND3X4 U713 ( .A(n165), .B(n166), .C(n167), .Y(n314) );
  NAND3X2 U714 ( .A(n459), .B(n458), .C(n457), .Y(shf_res[41]) );
  NAND4X2 U715 ( .A(n417), .B(n418), .C(n416), .D(n415), .Y(shf_res[31]) );
  AOI21X2 U716 ( .A0(net46974), .A1(n579), .B0(net47596), .Y(n580) );
  CLKINVX4 U717 ( .A(n579), .Y(n302) );
  OAI2BB1X4 U718 ( .A0N(n162), .A1N(n463), .B0(n315), .Y(n579) );
  OAI2BB1X1 U719 ( .A0N(n472), .A1N(n477), .B0(n484), .Y(n473) );
  OAI2BB1X4 U720 ( .A0N(n395), .A1N(n142), .B0(n39), .Y(n301) );
  AO21X4 U721 ( .A0(n595), .A1(net43885), .B0(n413), .Y(n362) );
  OAI21X1 U722 ( .A0(n586), .A1(net51175), .B0(n484), .Y(n467) );
  OAI2BB1X4 U723 ( .A0N(net47620), .A1N(n325), .B0(net44152), .Y(n523) );
  NAND2X2 U724 ( .A(n240), .B(n239), .Y(shf_res[3]) );
  NAND2X2 U725 ( .A(net47596), .B(n612), .Y(n366) );
  NAND2X2 U726 ( .A(net46978), .B(n612), .Y(n613) );
  NAND2X2 U727 ( .A(n133), .B(n556), .Y(n257) );
  NAND2X2 U728 ( .A(n154), .B(n133), .Y(n371) );
  NAND2X2 U729 ( .A(n565), .B(net43773), .Y(n568) );
  AOI221X2 U730 ( .A0(net43916), .A1(net47220), .B0(n463), .B1(n477), .C0(n476), .Y(n464) );
  AOI221X2 U731 ( .A0(n514), .A1(net47222), .B0(n465), .B1(n477), .C0(n476), 
        .Y(n466) );
  OAI2BB1X4 U732 ( .A0N(n60), .A1N(n477), .B0(n484), .Y(n476) );
  NAND2X1 U733 ( .A(n523), .B(n126), .Y(n409) );
  NAND2X8 U734 ( .A(net44037), .B(net43742), .Y(n640) );
  NAND4X2 U735 ( .A(n379), .B(n365), .C(n364), .D(n363), .Y(shf_res[19]) );
  NAND3X2 U736 ( .A(n272), .B(n567), .C(n273), .Y(shf_res[7]) );
  AOI2BB2X4 U737 ( .B0(net44144), .B1(n332), .A0N(n291), .A1N(net44136), .Y(
        n143) );
  NAND2X2 U738 ( .A(n565), .B(net47222), .Y(n502) );
  BUFX20 U739 ( .A(net50372), .Y(net47222) );
  NAND2BX4 U740 ( .AN(shf_num[1]), .B(net47590), .Y(net44280) );
  BUFX20 U741 ( .A(shf_num[0]), .Y(net47590) );
  BUFX20 U742 ( .A(net44004), .Y(net47626) );
  AOI22X2 U743 ( .A0(net44142), .A1(net44143), .B0(net44144), .B1(net44145), 
        .Y(net44141) );
  INVX16 U744 ( .A(net43797), .Y(net43773) );
  NAND3X8 U745 ( .A(n262), .B(n261), .C(n260), .Y(n619) );
  NAND4BBX4 U746 ( .AN(n184), .BN(n183), .C(n182), .D(n181), .Y(n325) );
  OA21X2 U747 ( .A0(n238), .A1(n28), .B0(net46976), .Y(n105) );
  NAND4X2 U748 ( .A(n453), .B(n455), .C(n454), .D(n43), .Y(shf_res[40]) );
  NAND2X2 U749 ( .A(n307), .B(net44129), .Y(n279) );
  NAND2X2 U750 ( .A(n429), .B(n54), .Y(n393) );
  NAND2X2 U751 ( .A(n300), .B(n162), .Y(n101) );
  NOR2X4 U752 ( .A(n299), .B(n53), .Y(n300) );
  INVX8 U753 ( .A(n437), .Y(n561) );
  NOR2X2 U754 ( .A(n302), .B(net47602), .Y(n304) );
  OAI2BB1X4 U755 ( .A0N(n595), .A1N(n303), .B0(n434), .Y(n385) );
  AOI21X2 U756 ( .A0(n532), .A1(net43773), .B0(net47596), .Y(n537) );
  OAI2BB1X4 U757 ( .A0N(n331), .A1N(n142), .B0(n294), .Y(n295) );
  AOI21X2 U758 ( .A0(net44050), .A1(n593), .B0(net47602), .Y(n348) );
  AOI21X2 U759 ( .A0(net43886), .A1(n140), .B0(net47596), .Y(n519) );
  INVX4 U760 ( .A(n400), .Y(n465) );
  NAND2X2 U761 ( .A(net47620), .B(n309), .Y(n276) );
  NAND2X2 U762 ( .A(net47615), .B(n222), .Y(n206) );
  CLKAND2X12 U763 ( .A(n162), .B(n655), .Y(net50372) );
  NAND2BX4 U764 ( .AN(net47580), .B(n595), .Y(n179) );
  NAND2BX4 U765 ( .AN(n60), .B(n595), .Y(net43767) );
  BUFX20 U766 ( .A(net43767), .Y(net47951) );
  NAND2X2 U767 ( .A(n595), .B(n132), .Y(n504) );
  NAND2X2 U768 ( .A(net46978), .B(net47584), .Y(n390) );
  BUFX20 U769 ( .A(net44331), .Y(net47916) );
  NAND2X1 U770 ( .A(n293), .B(net47222), .Y(n513) );
  BUFX20 U771 ( .A(net44004), .Y(net47625) );
  AOI22X2 U772 ( .A0(net44142), .A1(n332), .B0(n339), .B1(net44144), .Y(n110)
         );
  AOI22X4 U773 ( .A0(n524), .A1(n595), .B0(n68), .B1(n354), .Y(n585) );
  MXI2X4 U774 ( .A(n251), .B(n250), .S0(n70), .Y(n405) );
  NAND2BX4 U775 ( .AN(n91), .B(n600), .Y(n356) );
  OR2X8 U776 ( .A(shf_num[1]), .B(net47590), .Y(net43945) );
  NOR2X1 U777 ( .A(n131), .B(n391), .Y(n373) );
  NOR2BX4 U778 ( .AN(n595), .B(n620), .Y(n131) );
  OR2X8 U779 ( .A(net51175), .B(n595), .Y(n483) );
  NAND2X8 U780 ( .A(net51175), .B(net47602), .Y(n104) );
  INVX12 U781 ( .A(net51175), .Y(net43885) );
  INVX8 U782 ( .A(net47602), .Y(net43756) );
  BUFX20 U783 ( .A(n421), .Y(n161) );
  INVX12 U784 ( .A(net46988), .Y(net46974) );
  NOR2X1 U785 ( .A(n137), .B(n391), .Y(n392) );
  INVX3 U786 ( .A(n396), .Y(n463) );
  INVX8 U787 ( .A(n399), .Y(n456) );
  NOR2X1 U788 ( .A(n653), .B(n652), .Y(n654) );
  AO22X4 U789 ( .A0(net44142), .A1(n307), .B0(net44144), .B1(n309), .Y(n111)
         );
  NAND2XL U790 ( .A(net46978), .B(n582), .Y(n583) );
  NAND2X1 U791 ( .A(n528), .B(n126), .Y(n412) );
  NAND2XL U792 ( .A(n561), .B(n84), .Y(n442) );
  NAND2XL U793 ( .A(n8), .B(n131), .Y(n491) );
  BUFX20 U794 ( .A(net43956), .Y(net47604) );
  NAND2X1 U795 ( .A(n655), .B(n589), .Y(n591) );
  NAND3BX4 U796 ( .AN(n111), .B(n177), .C(n176), .Y(n419) );
  CLKBUFX2 U797 ( .A(net46990), .Y(net46982) );
  INVX1 U798 ( .A(n180), .Y(n232) );
  INVX1 U799 ( .A(net44330), .Y(net44281) );
  XNOR2XL U800 ( .A(c_frac[1]), .B(net46974), .Y(n180) );
  XNOR2XL U801 ( .A(c_frac[21]), .B(net46976), .Y(n189) );
  XOR2X1 U802 ( .A(net46982), .B(c_frac[22]), .Y(net44330) );
  INVX1 U803 ( .A(n293), .Y(n394) );
  NOR2XL U804 ( .A(n601), .B(n600), .Y(n603) );
  NAND2X2 U805 ( .A(n135), .B(n434), .Y(n391) );
  INVX3 U806 ( .A(n296), .Y(n602) );
  NAND2X1 U807 ( .A(n619), .B(n126), .Y(n498) );
  NAND2XL U808 ( .A(n162), .B(n132), .Y(n572) );
  NAND2BXL U809 ( .AN(net51175), .B(n608), .Y(n488) );
  NAND2X1 U810 ( .A(n327), .B(n462), .Y(n328) );
  CLKINVX1 U811 ( .A(n582), .Y(n316) );
  NOR2XL U812 ( .A(n104), .B(n602), .Y(n577) );
  NAND2XL U813 ( .A(net47931), .B(n340), .Y(n341) );
  NOR2XL U814 ( .A(n602), .B(n297), .Y(n298) );
  NAND2XL U815 ( .A(n462), .B(n608), .Y(n365) );
  NOR2BXL U816 ( .AN(net47586), .B(net47226), .Y(n520) );
  INVXL U817 ( .A(n160), .Y(n540) );
  NOR2X1 U818 ( .A(n134), .B(n297), .Y(n288) );
  NAND2XL U819 ( .A(n91), .B(n137), .Y(n509) );
  NOR2X1 U820 ( .A(n104), .B(n134), .Y(n574) );
  MXI2XL U821 ( .A(net44330), .B(n41), .S0(net47590), .Y(n170) );
  INVX1 U822 ( .A(n189), .Y(n222) );
  INVX1 U823 ( .A(n212), .Y(n230) );
  XNOR2X1 U824 ( .A(c_frac[2]), .B(net46974), .Y(n212) );
  XOR2X1 U825 ( .A(c_frac[17]), .B(net46976), .Y(n151) );
  XOR2X1 U826 ( .A(c_frac[18]), .B(net46976), .Y(n152) );
  XOR2X1 U827 ( .A(c_frac[0]), .B(net46974), .Y(n153) );
  NAND2X2 U828 ( .A(net44142), .B(n331), .Y(n210) );
  BUFX20 U829 ( .A(shf_num[3]), .Y(net47584) );
  NOR2X1 U830 ( .A(n180), .B(net47916), .Y(n184) );
  NAND2BX2 U831 ( .AN(net47931), .B(n314), .Y(n275) );
  AOI22X2 U832 ( .A0(n309), .A1(net44129), .B0(n307), .B1(net44144), .Y(n241)
         );
  NAND2X2 U833 ( .A(n306), .B(net44129), .Y(n312) );
  NAND2X4 U834 ( .A(net44037), .B(net47584), .Y(net44136) );
  NAND2BX4 U835 ( .AN(net47590), .B(shf_num[1]), .Y(net44331) );
  NAND2X4 U836 ( .A(net44142), .B(n314), .Y(n169) );
  NAND2BX4 U837 ( .AN(net47586), .B(net44106), .Y(n648) );
  NAND3BX4 U838 ( .AN(n225), .B(n224), .C(n223), .Y(n414) );
  MXI2X4 U839 ( .A(net46976), .B(n153), .S0(net47625), .Y(net44135) );
  OAI2BB1X4 U840 ( .A0N(net47620), .A1N(n339), .B0(net44152), .Y(n528) );
  AOI211X2 U841 ( .A0(n478), .A1(n164), .B0(n352), .C0(n385), .Y(n353) );
  OAI2BB1X4 U842 ( .A0N(n595), .A1N(n462), .B0(net47602), .Y(n499) );
endmodule


module exp_handler ( exp_a, exp_b, exp_c, exp_tmp, shf_num, exp_ab );
  input [7:0] exp_a;
  input [7:0] exp_b;
  input [7:0] exp_c;
  output [9:0] exp_tmp;
  output [6:0] shf_num;
  output [8:0] exp_ab;
  wire   n102, n103, n104, n105, n106, n107, n108, n109, diff_c_ab_27_tmp_10_,
         net12874, net44468, net44471, net44473, net44481, net44488, net44491,
         net44496, net44500, net47649, net47883, net53228, n2, n3, n4, n5, n6,
         n8, n10, n11, n12, n13, n14, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101;
  wire   [10:1] d_tmp;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  exp_handler_DW01_add_10 add_42 ( .A({n32, n32, n32, exp_c[6], n29, 
        exp_c[4:0], 1'b1}), .B({n88, n89, n90, n91, n27, n92, n96, n98, n28, 
        exp_ab[0], 1'b1}), .SUM({diff_c_ab_27_tmp_10_, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
  exp_handler_DW01_add_13 add_35 ( .A({exp_a[7], exp_a}), .B({exp_b[7], exp_b}), .SUM({n102, n103, n104, n105, n106, n107, n108, n109, exp_ab[0]}) );
  exp_handler_DW01_add_14 add_49 ( .A({n32, n31, n31, exp_c[6], n29, 
        exp_c[4:0], 1'b1}), .B({n82, n82, net12874, n93, n94, n95, n97, n99, 
        n100, n101, 1'b1}), .SUM({d_tmp, SYNOPSYS_UNCONNECTED__10}) );
  OA21X2 U3 ( .A0(n97), .A1(n68), .B0(n69), .Y(n96) );
  NAND2BX4 U4 ( .AN(n107), .B(n68), .Y(n69) );
  MXI2X4 U5 ( .A(n75), .B(n96), .S0(n33), .Y(exp_tmp[3]) );
  NAND3X6 U6 ( .A(net44500), .B(n14), .C(n23), .Y(n19) );
  INVX4 U7 ( .A(net47883), .Y(net53228) );
  BUFX20 U8 ( .A(exp_c[5]), .Y(n29) );
  INVX12 U9 ( .A(n103), .Y(net12874) );
  BUFX16 U10 ( .A(exp_c[7]), .Y(n31) );
  INVX12 U11 ( .A(n105), .Y(n94) );
  CLKINVX2 U12 ( .A(net47649), .Y(n2) );
  NOR2BX1 U13 ( .AN(net47649), .B(n5), .Y(n59) );
  INVX4 U14 ( .A(d_tmp[6]), .Y(net44473) );
  INVX4 U15 ( .A(n82), .Y(exp_ab[8]) );
  AND2X8 U16 ( .A(n2), .B(net53228), .Y(net44500) );
  INVX6 U17 ( .A(n34), .Y(n50) );
  NOR2X1 U18 ( .A(net44491), .B(net44473), .Y(n57) );
  AND2X6 U19 ( .A(exp_ab[5]), .B(n67), .Y(n62) );
  CLKAND2X3 U20 ( .A(net44491), .B(net44473), .Y(n43) );
  OAI21X1 U21 ( .A0(n81), .A1(n88), .B0(n80), .Y(exp_tmp[9]) );
  OA21X2 U22 ( .A0(exp_ab[6]), .A1(n62), .B0(n66), .Y(n3) );
  INVX3 U23 ( .A(n3), .Y(n91) );
  INVX3 U24 ( .A(n14), .Y(n11) );
  INVX1 U25 ( .A(n93), .Y(exp_ab[6]) );
  CLKXOR2X1 U26 ( .A(n65), .B(n102), .Y(n89) );
  NAND2XL U27 ( .A(exp_ab[2]), .B(n70), .Y(n68) );
  INVXL U28 ( .A(net12874), .Y(n6) );
  INVX3 U29 ( .A(d_tmp[2]), .Y(net44496) );
  CLKINVX1 U30 ( .A(n55), .Y(n13) );
  NOR2BXL U31 ( .AN(net44491), .B(n54), .Y(n55) );
  NOR2X4 U32 ( .A(net47649), .B(d_tmp[1]), .Y(n35) );
  AND2X4 U33 ( .A(net47649), .B(n45), .Y(n26) );
  INVX16 U34 ( .A(n4), .Y(shf_num[1]) );
  INVX4 U35 ( .A(n69), .Y(n61) );
  INVX2 U36 ( .A(n10), .Y(exp_ab[4]) );
  CLKBUFX3 U37 ( .A(n6), .Y(exp_ab[7]) );
  INVX1 U38 ( .A(n97), .Y(exp_ab[3]) );
  OAI2BB1X4 U39 ( .A0N(n33), .A1N(n79), .B0(n80), .Y(exp_tmp[7]) );
  NAND2X2 U40 ( .A(n65), .B(n64), .Y(n90) );
  NAND3BX4 U41 ( .AN(n52), .B(n51), .C(n14), .Y(n58) );
  BUFX12 U42 ( .A(net44468), .Y(n5) );
  INVX4 U43 ( .A(net44468), .Y(net44471) );
  XOR2X1 U44 ( .A(n69), .B(exp_ab[4]), .Y(n92) );
  NAND2X4 U45 ( .A(net47883), .B(net47649), .Y(net44481) );
  AND2X4 U46 ( .A(n60), .B(n13), .Y(shf_num[4]) );
  NOR2X6 U47 ( .A(n36), .B(n14), .Y(n42) );
  CLKINVX8 U48 ( .A(n102), .Y(n82) );
  NAND3X8 U49 ( .A(d_tmp[3]), .B(d_tmp[5]), .C(d_tmp[4]), .Y(net44491) );
  OAI21X4 U50 ( .A0(n37), .A1(d_tmp[4]), .B0(d_tmp[5]), .Y(net44488) );
  CLKBUFX4 U51 ( .A(n95), .Y(n10) );
  MXI2XL U52 ( .A(n77), .B(n27), .S0(n33), .Y(exp_tmp[5]) );
  XNOR2X4 U53 ( .A(n67), .B(exp_ab[5]), .Y(n27) );
  INVX6 U54 ( .A(d_tmp[1]), .Y(n38) );
  NAND3X8 U55 ( .A(n25), .B(n24), .C(n19), .Y(n4) );
  INVX6 U56 ( .A(n56), .Y(n60) );
  INVX16 U57 ( .A(exp_ab[2]), .Y(n99) );
  INVX1 U58 ( .A(d_tmp[3]), .Y(n48) );
  AOI21XL U59 ( .A0(d_tmp[4]), .A1(d_tmp[3]), .B0(d_tmp[5]), .Y(n54) );
  NOR2X1 U60 ( .A(net44481), .B(n49), .Y(n52) );
  BUFX8 U61 ( .A(d_tmp[9]), .Y(n12) );
  INVX3 U62 ( .A(n71), .Y(n98) );
  INVX8 U63 ( .A(n107), .Y(n97) );
  CLKINVX8 U64 ( .A(n109), .Y(n100) );
  INVXL U65 ( .A(net44496), .Y(n8) );
  NAND2X4 U66 ( .A(n10), .B(n61), .Y(n67) );
  CLKBUFX4 U67 ( .A(n109), .Y(exp_ab[1]) );
  NAND2BX2 U68 ( .AN(n109), .B(n101), .Y(n70) );
  NAND3X2 U69 ( .A(n26), .B(d_tmp[9]), .C(net47883), .Y(n46) );
  NAND2X2 U70 ( .A(d_tmp[9]), .B(n45), .Y(n20) );
  OAI2BB1X4 U71 ( .A0N(n59), .A1N(n60), .B0(n58), .Y(shf_num[6]) );
  CLKBUFX2 U72 ( .A(n105), .Y(exp_ab[5]) );
  INVX4 U73 ( .A(n33), .Y(n81) );
  NAND2X4 U74 ( .A(exp_ab[7]), .B(n63), .Y(n65) );
  INVX6 U75 ( .A(n66), .Y(n63) );
  NOR3X6 U76 ( .A(n12), .B(n44), .C(net47883), .Y(n47) );
  INVX12 U77 ( .A(n106), .Y(n95) );
  OAI2BB1X4 U78 ( .A0N(n21), .A1N(n22), .B0(n11), .Y(n24) );
  NAND3BX4 U79 ( .AN(n49), .B(n40), .C(n14), .Y(n41) );
  BUFX20 U80 ( .A(n108), .Y(exp_ab[2]) );
  BUFX20 U81 ( .A(d_tmp[10]), .Y(n14) );
  CLKINVX12 U82 ( .A(n104), .Y(n93) );
  NAND2BX4 U83 ( .AN(d_tmp[6]), .B(net44488), .Y(n45) );
  NOR2X4 U84 ( .A(n5), .B(d_tmp[9]), .Y(n23) );
  NAND2BX4 U85 ( .AN(d_tmp[6]), .B(net44491), .Y(net44468) );
  NOR2X4 U86 ( .A(d_tmp[9]), .B(n5), .Y(n21) );
  NOR3X4 U87 ( .A(net47649), .B(net47883), .C(n8), .Y(n22) );
  BUFX20 U88 ( .A(d_tmp[8]), .Y(net47883) );
  BUFX20 U89 ( .A(d_tmp[7]), .Y(net47649) );
  OR3X6 U90 ( .A(net44481), .B(n20), .C(net44496), .Y(n25) );
  NAND2X6 U91 ( .A(exp_ab[6]), .B(n62), .Y(n66) );
  NAND2BX4 U92 ( .AN(d_tmp[9]), .B(net44471), .Y(n34) );
  NOR3X2 U93 ( .A(n56), .B(n57), .C(net44471), .Y(shf_num[5]) );
  NAND2BX4 U94 ( .AN(net47883), .B(n35), .Y(n36) );
  CLKINVX8 U95 ( .A(exp_ab[0]), .Y(n101) );
  NOR2BX4 U96 ( .AN(net47883), .B(n39), .Y(n40) );
  NAND2X2 U97 ( .A(net47649), .B(n38), .Y(n39) );
  NAND2X4 U98 ( .A(n45), .B(d_tmp[9]), .Y(n49) );
  NOR2X2 U99 ( .A(n56), .B(n48), .Y(shf_num[2]) );
  XNOR2X4 U100 ( .A(n101), .B(exp_ab[1]), .Y(n28) );
  NAND2BX4 U101 ( .AN(n33), .B(n32), .Y(n80) );
  BUFX20 U102 ( .A(diff_c_ab_27_tmp_10_), .Y(n33) );
  NAND2BX4 U103 ( .AN(d_tmp[3]), .B(net44496), .Y(n37) );
  NAND2XL U104 ( .A(n102), .B(n65), .Y(n88) );
  NAND2BXL U105 ( .AN(exp_ab[7]), .B(n66), .Y(n64) );
  MXI2XL U106 ( .A(n78), .B(n91), .S0(n33), .Y(exp_tmp[6]) );
  CLKBUFX2 U107 ( .A(exp_c[7]), .Y(n32) );
  OAI21X1 U108 ( .A0(n89), .A1(n81), .B0(n80), .Y(exp_tmp[8]) );
  CLKINVX1 U109 ( .A(n90), .Y(n79) );
  XOR2XL U110 ( .A(exp_ab[2]), .B(n70), .Y(n71) );
  MXI2XL U111 ( .A(n72), .B(exp_ab[0]), .S0(n33), .Y(exp_tmp[0]) );
  INVXL U112 ( .A(exp_c[0]), .Y(n72) );
  INVXL U113 ( .A(n29), .Y(n77) );
  MXI2X1 U114 ( .A(n74), .B(n98), .S0(n33), .Y(exp_tmp[2]) );
  INVXL U115 ( .A(exp_c[2]), .Y(n74) );
  MXI2X1 U116 ( .A(n73), .B(n28), .S0(n33), .Y(exp_tmp[1]) );
  INVXL U117 ( .A(exp_c[1]), .Y(n73) );
  INVXL U118 ( .A(exp_c[3]), .Y(n75) );
  MXI2X1 U119 ( .A(n76), .B(n92), .S0(n33), .Y(exp_tmp[4]) );
  INVXL U120 ( .A(exp_c[4]), .Y(n76) );
  CLKINVX1 U121 ( .A(exp_c[6]), .Y(n78) );
  NAND2X2 U122 ( .A(net44500), .B(n50), .Y(n51) );
  XNOR2XL U123 ( .A(d_tmp[4]), .B(d_tmp[3]), .Y(n53) );
  OAI2BB1X4 U124 ( .A0N(n50), .A1N(n42), .B0(n41), .Y(shf_num[0]) );
  NAND2BX4 U125 ( .AN(net47649), .B(n43), .Y(n44) );
  OAI2BB2X4 U126 ( .B0(n47), .B1(n14), .A0N(n14), .A1N(n46), .Y(n56) );
  OAI2BB1X4 U127 ( .A0N(n53), .A1N(n60), .B0(n58), .Y(shf_num[3]) );
endmodule


module sign_handler ( sa, sb, sc, s_tmp, final_m );
  input sa, sb, sc;
  output s_tmp, final_m;


  XOR2XL U1 ( .A(sb), .B(sa), .Y(s_tmp) );
  XNOR2XL U2 ( .A(s_tmp), .B(sc), .Y(final_m) );
endmodule


module round_stage ( nj_mode, s_final, exp_norm, frac_inter_norm, denorm_m, 
        zero_m, res );
  input [9:0] exp_norm;
  input [26:0] frac_inter_norm;
  output [31:0] res;
  input nj_mode, s_final, denorm_m, zero_m;
  wire   overflow_round, n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87;
  wire   [22:0] frac_z2;
  wire   SYNOPSYS_UNCONNECTED__0;

  round_stage_DW01_inc_1 add_47 ( .A({1'b0, frac_inter_norm[26:3]}), .SUM({
        overflow_round, SYNOPSYS_UNCONNECTED__0, frac_z2}) );
  OAI2BB1X2 U3 ( .A0N(n19), .A1N(n18), .B0(n35), .Y(n20) );
  NAND2BX4 U4 ( .AN(exp_norm[9]), .B(n45), .Y(n76) );
  OAI2BB1X2 U5 ( .A0N(n15), .A1N(n11), .B0(n35), .Y(n12) );
  OAI2BB1X1 U6 ( .A0N(n79), .A1N(n87), .B0(n85), .Y(res[24]) );
  CLKINVX3 U7 ( .A(n7), .Y(n87) );
  NOR2X1 U8 ( .A(n4), .B(n37), .Y(n41) );
  OAI2BB1X1 U9 ( .A0N(n81), .A1N(n87), .B0(n85), .Y(res[26]) );
  MXI2X1 U10 ( .A(n41), .B(n40), .S0(exp_norm[8]), .Y(n42) );
  OA21X4 U11 ( .A0(n34), .A1(n39), .B0(n38), .Y(n1) );
  NAND2X8 U12 ( .A(n49), .B(n50), .Y(n2) );
  NAND2X1 U13 ( .A(frac_inter_norm[2]), .B(n47), .Y(n49) );
  INVX4 U14 ( .A(n49), .Y(n51) );
  INVX1 U15 ( .A(n31), .Y(n32) );
  INVX20 U16 ( .A(n2), .Y(n72) );
  OA21X4 U17 ( .A0(n28), .A1(n39), .B0(n38), .Y(n4) );
  OR2X8 U18 ( .A(n9), .B(denorm_m), .Y(n38) );
  NAND4X2 U19 ( .A(n79), .B(n86), .C(n81), .D(n83), .Y(n43) );
  OAI2BB1X2 U20 ( .A0N(n87), .A1N(n83), .B0(n85), .Y(res[28]) );
  MXI2X2 U21 ( .A(n36), .B(n1), .S0(exp_norm[5]), .Y(n83) );
  OAI2BB2X1 U22 ( .B0(n3), .B1(n55), .A0N(frac_inter_norm[7]), .A1N(n72), .Y(
        res[4]) );
  OAI2BB1X1 U23 ( .A0N(n87), .A1N(n78), .B0(n85), .Y(res[23]) );
  MXI2X2 U24 ( .A(n4), .B(n29), .S0(exp_norm[7]), .Y(n86) );
  AO21X4 U25 ( .A0(n35), .A1(exp_norm[0]), .B0(n21), .Y(n25) );
  INVX4 U26 ( .A(exp_norm[0]), .Y(n24) );
  CLKINVX2 U27 ( .A(n38), .Y(n21) );
  NAND4X2 U28 ( .A(n82), .B(n84), .C(n80), .D(n78), .Y(n44) );
  OAI2BB1X2 U29 ( .A0N(n87), .A1N(n82), .B0(n85), .Y(res[27]) );
  OAI21X1 U30 ( .A0(n30), .A1(n39), .B0(n38), .Y(n31) );
  NAND2X2 U31 ( .A(n35), .B(n28), .Y(n29) );
  INVX8 U32 ( .A(n39), .Y(n35) );
  OAI2BB1XL U33 ( .A0N(exp_norm[4]), .A1N(n31), .B0(n12), .Y(n82) );
  OAI2BB1X2 U34 ( .A0N(exp_norm[6]), .A1N(n17), .B0(n29), .Y(n84) );
  OAI21X2 U35 ( .A0(n44), .A1(n43), .B0(n42), .Y(n45) );
  NAND3BXL U36 ( .AN(n15), .B(n14), .C(n13), .Y(n16) );
  INVX1 U37 ( .A(exp_norm[6]), .Y(n13) );
  OAI21XL U38 ( .A0(n39), .A1(n14), .B0(n1), .Y(n17) );
  INVX3 U39 ( .A(n19), .Y(n30) );
  INVX1 U40 ( .A(exp_norm[5]), .Y(n14) );
  INVX4 U41 ( .A(n48), .Y(n50) );
  NAND2X4 U42 ( .A(overflow_round), .B(n51), .Y(n9) );
  NAND2X4 U43 ( .A(n51), .B(n50), .Y(n3) );
  INVXL U44 ( .A(n76), .Y(n77) );
  INVXL U45 ( .A(frac_inter_norm[4]), .Y(n52) );
  INVXL U46 ( .A(frac_inter_norm[8]), .Y(n56) );
  INVXL U47 ( .A(frac_inter_norm[16]), .Y(n64) );
  INVXL U48 ( .A(frac_inter_norm[20]), .Y(n68) );
  INVXL U49 ( .A(frac_inter_norm[25]), .Y(n75) );
  INVXL U50 ( .A(frac_inter_norm[5]), .Y(n53) );
  INVXL U51 ( .A(frac_inter_norm[9]), .Y(n57) );
  INVXL U52 ( .A(frac_inter_norm[11]), .Y(n59) );
  INVXL U53 ( .A(frac_inter_norm[21]), .Y(n69) );
  INVX1 U54 ( .A(frac_z2[20]), .Y(n71) );
  INVX1 U55 ( .A(frac_z2[7]), .Y(n58) );
  INVX1 U56 ( .A(frac_z2[19]), .Y(n70) );
  INVX1 U57 ( .A(frac_z2[21]), .Y(n73) );
  OR2X4 U58 ( .A(frac_inter_norm[0]), .B(n5), .Y(n47) );
  INVX8 U59 ( .A(n3), .Y(n74) );
  NAND2X4 U60 ( .A(n87), .B(n77), .Y(n85) );
  NAND2X4 U61 ( .A(n87), .B(n76), .Y(n48) );
  MXI2XL U62 ( .A(frac_inter_norm[3]), .B(frac_z2[0]), .S0(frac_inter_norm[2]), 
        .Y(n46) );
  NAND2XL U63 ( .A(n35), .B(n30), .Y(n33) );
  NAND2BX4 U64 ( .AN(denorm_m), .B(n9), .Y(n39) );
  INVXL U65 ( .A(frac_inter_norm[15]), .Y(n63) );
  NAND3BX2 U66 ( .AN(exp_norm[3]), .B(n30), .C(n10), .Y(n15) );
  NAND2XL U67 ( .A(exp_norm[2]), .B(exp_norm[1]), .Y(n18) );
  NAND2XL U68 ( .A(exp_norm[4]), .B(exp_norm[3]), .Y(n11) );
  AND2XL U69 ( .A(overflow_round), .B(denorm_m), .Y(n23) );
  AOI21XL U70 ( .A0(n39), .A1(n38), .B0(exp_norm[7]), .Y(n40) );
  INVX1 U71 ( .A(n25), .Y(n26) );
  NAND2XL U72 ( .A(n24), .B(n35), .Y(n27) );
  NAND2XL U73 ( .A(n35), .B(n34), .Y(n36) );
  OR2XL U74 ( .A(frac_inter_norm[3]), .B(frac_inter_norm[1]), .Y(n5) );
  AO21XL U75 ( .A0(nj_mode), .A1(denorm_m), .B0(zero_m), .Y(n7) );
  INVX1 U76 ( .A(n15), .Y(n34) );
  OAI2BB1XL U77 ( .A0N(n87), .A1N(n80), .B0(n85), .Y(res[25]) );
  OAI2BB1XL U78 ( .A0N(n87), .A1N(n84), .B0(n85), .Y(res[29]) );
  OAI2BB1XL U79 ( .A0N(n87), .A1N(n86), .B0(n85), .Y(res[30]) );
  MXI2X1 U80 ( .A(n33), .B(n32), .S0(exp_norm[3]), .Y(n81) );
  MXI2X1 U81 ( .A(n27), .B(n26), .S0(exp_norm[1]), .Y(n79) );
  CLKINVX1 U82 ( .A(exp_norm[4]), .Y(n10) );
  NAND2X2 U83 ( .A(n24), .B(n8), .Y(n19) );
  NOR2X1 U84 ( .A(exp_norm[1]), .B(exp_norm[2]), .Y(n8) );
  NOR3BXL U85 ( .AN(n47), .B(n46), .C(n48), .Y(res[0]) );
  OAI2BB2XL U86 ( .B0(n2), .B1(n52), .A0N(frac_z2[1]), .A1N(n74), .Y(res[1])
         );
  OAI2BB2XL U87 ( .B0(n2), .B1(n53), .A0N(frac_z2[2]), .A1N(n74), .Y(res[2])
         );
  OAI2BB2XL U88 ( .B0(n2), .B1(n56), .A0N(frac_z2[5]), .A1N(n74), .Y(res[5])
         );
  OAI2BB2XL U89 ( .B0(n2), .B1(n57), .A0N(frac_z2[6]), .A1N(n74), .Y(res[6])
         );
  OAI2BB2XL U90 ( .B0(n2), .B1(n59), .A0N(frac_z2[8]), .A1N(n74), .Y(res[8])
         );
  OAI2BB2XL U91 ( .B0(n2), .B1(n62), .A0N(frac_z2[11]), .A1N(n74), .Y(res[11])
         );
  INVXL U92 ( .A(frac_inter_norm[14]), .Y(n62) );
  OAI2BB2XL U93 ( .B0(n2), .B1(n63), .A0N(frac_z2[12]), .A1N(n74), .Y(res[12])
         );
  OAI2BB2XL U94 ( .B0(n2), .B1(n64), .A0N(frac_z2[13]), .A1N(n74), .Y(res[13])
         );
  OAI2BB2XL U95 ( .B0(n2), .B1(n66), .A0N(frac_z2[15]), .A1N(n74), .Y(res[15])
         );
  INVXL U96 ( .A(frac_inter_norm[18]), .Y(n66) );
  OAI2BB2XL U97 ( .B0(n2), .B1(n68), .A0N(frac_z2[17]), .A1N(n74), .Y(res[17])
         );
  OAI2BB2XL U98 ( .B0(n2), .B1(n69), .A0N(frac_z2[18]), .A1N(n74), .Y(res[18])
         );
  OAI2BB2XL U99 ( .B0(n2), .B1(n75), .A0N(frac_z2[22]), .A1N(n74), .Y(res[22])
         );
  INVX1 U100 ( .A(n16), .Y(n28) );
  OAI2BB2XL U101 ( .B0(n3), .B1(n54), .A0N(frac_inter_norm[6]), .A1N(n72), .Y(
        res[3]) );
  CLKINVX1 U102 ( .A(frac_z2[3]), .Y(n54) );
  CLKINVX1 U103 ( .A(frac_z2[4]), .Y(n55) );
  OAI2BB2XL U104 ( .B0(n3), .B1(n58), .A0N(frac_inter_norm[10]), .A1N(n72), 
        .Y(res[7]) );
  OAI2BB2XL U105 ( .B0(n3), .B1(n60), .A0N(frac_inter_norm[12]), .A1N(n72), 
        .Y(res[9]) );
  CLKINVX1 U106 ( .A(frac_z2[9]), .Y(n60) );
  OAI2BB2XL U107 ( .B0(n3), .B1(n61), .A0N(frac_inter_norm[13]), .A1N(n72), 
        .Y(res[10]) );
  CLKINVX1 U108 ( .A(frac_z2[10]), .Y(n61) );
  OAI2BB2XL U109 ( .B0(n3), .B1(n65), .A0N(frac_inter_norm[17]), .A1N(n72), 
        .Y(res[14]) );
  CLKINVX1 U110 ( .A(frac_z2[14]), .Y(n65) );
  OAI2BB2XL U111 ( .B0(n3), .B1(n67), .A0N(frac_inter_norm[19]), .A1N(n72), 
        .Y(res[16]) );
  CLKINVX1 U112 ( .A(frac_z2[16]), .Y(n67) );
  OAI2BB2XL U113 ( .B0(n3), .B1(n70), .A0N(frac_inter_norm[22]), .A1N(n72), 
        .Y(res[19]) );
  OAI2BB2XL U114 ( .B0(n3), .B1(n71), .A0N(frac_inter_norm[23]), .A1N(n72), 
        .Y(res[20]) );
  OAI2BB2XL U115 ( .B0(n3), .B1(n73), .A0N(frac_inter_norm[24]), .A1N(n72), 
        .Y(res[21]) );
  OAI2BB1X1 U116 ( .A0N(n51), .A1N(n23), .B0(n22), .Y(n78) );
  MXI2X1 U117 ( .A(n35), .B(n21), .S0(exp_norm[0]), .Y(n22) );
  OAI2BB1X1 U118 ( .A0N(exp_norm[2]), .A1N(n25), .B0(n20), .Y(n80) );
  CLKINVX1 U119 ( .A(exp_norm[7]), .Y(n37) );
  CLKBUFX3 U120 ( .A(s_final), .Y(res[31]) );
endmodule


module norm_stage ( s_tmp, final_m, frac_inter_h_s, exp_tmp, frac_inter, 
        s_final, exp_norm, frac_inter_norm, zero_m, denorm_m );
  input [9:0] exp_tmp;
  input [74:0] frac_inter;
  output [9:0] exp_norm;
  output [26:0] frac_inter_norm;
  input s_tmp, final_m, frac_inter_h_s;
  output s_final, zero_m, denorm_m;
  wire   n74, n75, n76, lz_count_msb, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, n77, net43303,
         net43333, net43334, net43335, net43336, net43305, net43304, net43312,
         net43311, net43310, net43308, net43307, net43306, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n49,
         n50, n51, n52, n53, n54, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73;
  wire   [6:0] lz_count;
  wire   [74:0] frac_inter_norm_t1;
  wire   [48:0] frac_inter_norm_t2;

  denorm_handler denorm_handler_inst ( .frac_inter_norm_t1(frac_inter_norm_t1), 
        .exp_norm(exp_norm), .frac_inter_norm_t2({frac_inter_norm[26:1], 
        frac_inter_norm_t2}), .denorm_m(denorm_m), .zero_m(zero_m) );
  exp_adjust exp_adjust_inst ( .exp_tmp(exp_tmp), .lz_count({n62, n61, n60, 
        n59, n40, lz_count[1:0]}), .exp_norm({n74, exp_norm[8:6], n75, 
        exp_norm[4:1], n76}) );
  norm_stage_DW_lzd_1 lzd_75 ( .a({frac_inter[74:1], n54}), .enc({lz_count_msb, 
        lz_count}) );
  norm_stage_DW_leftsh_1 sll_67 ( .A({frac_inter[74:70], n6, n8, 
        frac_inter[67:63], n7, n5, frac_inter[60:57], n3, frac_inter[55:50], 
        n47, n37, n39, frac_inter[46:34], n50, n31, n38, frac_inter[30:23], 
        n33, n35, frac_inter[20:18], n52, n42, n1, frac_inter[14:9], n44, n45, 
        frac_inter[6:1], n54}), .SH({n62, n61, n60, n59, n40, lz_count[1], n58}), .B({N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, 
        N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
        N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
        N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, 
        N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N7}) );
  NAND4X8 U2 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n14) );
  INVX3 U3 ( .A(frac_inter[33]), .Y(n49) );
  NAND4X8 U4 ( .A(n71), .B(n70), .C(n69), .D(n68), .Y(n72) );
  NAND4X8 U5 ( .A(n16), .B(n18), .C(n17), .D(n19), .Y(n15) );
  INVX8 U6 ( .A(frac_inter_norm_t2[29]), .Y(n19) );
  NAND4X8 U7 ( .A(n10), .B(n12), .C(n11), .D(n13), .Y(net43307) );
  NAND4X8 U8 ( .A(net43311), .B(n9), .C(net43312), .D(net43310), .Y(net43308)
         );
  AND2X6 U9 ( .A(N60), .B(n63), .Y(frac_inter_norm_t1[53]) );
  INVX6 U10 ( .A(frac_inter_norm_t2[47]), .Y(n13) );
  CLKBUFX2 U11 ( .A(frac_inter[15]), .Y(n1) );
  NOR2X8 U12 ( .A(frac_inter_norm_t2[48]), .B(frac_inter_norm_t2[46]), .Y(n12)
         );
  NOR2X8 U13 ( .A(frac_inter_norm_t2[40]), .B(frac_inter_norm_t2[42]), .Y(
        net43311) );
  NAND4X6 U14 ( .A(net43335), .B(net43336), .C(net43333), .D(net43334), .Y(n24) );
  INVX3 U15 ( .A(lz_count_msb), .Y(n63) );
  BUFX20 U16 ( .A(n63), .Y(n57) );
  BUFX20 U17 ( .A(lz_count[5]), .Y(n61) );
  AND2X8 U18 ( .A(N69), .B(n57), .Y(frac_inter_norm_t1[62]) );
  INVX4 U19 ( .A(frac_inter_norm_t2[44]), .Y(n11) );
  INVX3 U20 ( .A(frac_inter_norm_t2[20]), .Y(n66) );
  BUFX20 U21 ( .A(lz_count[4]), .Y(n60) );
  INVXL U22 ( .A(frac_inter[56]), .Y(n2) );
  INVX2 U23 ( .A(n2), .Y(n3) );
  BUFX20 U24 ( .A(lz_count[3]), .Y(n59) );
  INVXL U25 ( .A(frac_inter[61]), .Y(n4) );
  INVX2 U26 ( .A(n4), .Y(n5) );
  CLKBUFX2 U27 ( .A(frac_inter[69]), .Y(n6) );
  CLKBUFX2 U28 ( .A(frac_inter[62]), .Y(n7) );
  CLKBUFX2 U29 ( .A(frac_inter[68]), .Y(n8) );
  AND2X8 U30 ( .A(N78), .B(n57), .Y(frac_inter_norm_t1[71]) );
  BUFX12 U31 ( .A(n76), .Y(exp_norm[0]) );
  NOR2X8 U32 ( .A(net43307), .B(net43308), .Y(net43306) );
  NAND4X4 U33 ( .A(net43303), .B(net43304), .C(net43305), .D(net43306), .Y(
        frac_inter_norm[0]) );
  INVX6 U34 ( .A(frac_inter_norm_t2[38]), .Y(net43310) );
  INVX8 U35 ( .A(frac_inter_norm_t2[41]), .Y(net43312) );
  NOR2X8 U36 ( .A(frac_inter_norm_t2[39]), .B(frac_inter_norm_t2[37]), .Y(n9)
         );
  NOR2X8 U37 ( .A(frac_inter_norm_t2[43]), .B(frac_inter_norm_t2[45]), .Y(n10)
         );
  NOR2X8 U38 ( .A(n14), .B(n15), .Y(net43305) );
  INVX6 U39 ( .A(frac_inter_norm_t2[26]), .Y(n17) );
  NOR2X8 U40 ( .A(frac_inter_norm_t2[30]), .B(frac_inter_norm_t2[28]), .Y(n18)
         );
  NOR2X8 U41 ( .A(frac_inter_norm_t2[25]), .B(frac_inter_norm_t2[27]), .Y(n16)
         );
  INVX6 U42 ( .A(frac_inter_norm_t2[35]), .Y(n23) );
  NOR2X8 U43 ( .A(frac_inter_norm_t2[36]), .B(frac_inter_norm_t2[34]), .Y(n22)
         );
  INVX3 U44 ( .A(frac_inter_norm_t2[32]), .Y(n21) );
  NOR2X8 U45 ( .A(frac_inter_norm_t2[31]), .B(frac_inter_norm_t2[33]), .Y(n20)
         );
  NOR2X8 U46 ( .A(n24), .B(n25), .Y(net43304) );
  NAND4X6 U47 ( .A(n26), .B(n28), .C(n29), .D(n27), .Y(n25) );
  INVX3 U48 ( .A(frac_inter_norm_t2[8]), .Y(n27) );
  INVX3 U49 ( .A(frac_inter_norm_t2[11]), .Y(n29) );
  NOR2X8 U50 ( .A(frac_inter_norm_t2[12]), .B(frac_inter_norm_t2[10]), .Y(n28)
         );
  NOR2X8 U51 ( .A(frac_inter_norm_t2[7]), .B(frac_inter_norm_t2[9]), .Y(n26)
         );
  NOR2X8 U52 ( .A(frac_inter_norm_t2[15]), .B(frac_inter_norm_t2[13]), .Y(n71)
         );
  NOR2X8 U53 ( .A(frac_inter_norm_t2[18]), .B(frac_inter_norm_t2[16]), .Y(n69)
         );
  BUFX16 U54 ( .A(n75), .Y(exp_norm[5]) );
  AND2X8 U55 ( .A(N35), .B(n57), .Y(frac_inter_norm_t1[28]) );
  AND2X8 U56 ( .A(N73), .B(n57), .Y(frac_inter_norm_t1[66]) );
  INVXL U57 ( .A(frac_inter[49]), .Y(n46) );
  INVXL U58 ( .A(frac_inter[32]), .Y(n30) );
  INVX1 U59 ( .A(n30), .Y(n31) );
  INVXL U60 ( .A(frac_inter[22]), .Y(n32) );
  INVX1 U61 ( .A(n32), .Y(n33) );
  INVXL U62 ( .A(frac_inter[21]), .Y(n34) );
  INVX1 U63 ( .A(n34), .Y(n35) );
  AND2X8 U64 ( .A(N34), .B(n57), .Y(frac_inter_norm_t1[27]) );
  AND2X8 U65 ( .A(N62), .B(n57), .Y(frac_inter_norm_t1[55]) );
  AND2X8 U66 ( .A(N77), .B(n57), .Y(frac_inter_norm_t1[70]) );
  AND2X6 U67 ( .A(N65), .B(n57), .Y(frac_inter_norm_t1[58]) );
  AND2X4 U68 ( .A(N14), .B(n57), .Y(frac_inter_norm_t1[7]) );
  INVXL U69 ( .A(frac_inter[48]), .Y(n36) );
  INVX1 U70 ( .A(n36), .Y(n37) );
  INVX8 U71 ( .A(frac_inter_norm_t2[5]), .Y(net43334) );
  INVX6 U72 ( .A(frac_inter_norm_t2[23]), .Y(n64) );
  CLKBUFX2 U73 ( .A(frac_inter[31]), .Y(n38) );
  BUFX20 U74 ( .A(lz_count[2]), .Y(n40) );
  INVX6 U75 ( .A(frac_inter_norm_t2[17]), .Y(n68) );
  CLKBUFX2 U76 ( .A(frac_inter[47]), .Y(n39) );
  AND2X6 U77 ( .A(N36), .B(n57), .Y(frac_inter_norm_t1[29]) );
  CLKBUFX2 U78 ( .A(lz_count[0]), .Y(n58) );
  NOR2X8 U79 ( .A(frac_inter_norm_t2[1]), .B(frac_inter_norm_t2[0]), .Y(
        net43335) );
  AND2X8 U80 ( .A(N48), .B(n57), .Y(frac_inter_norm_t1[41]) );
  AND2X6 U81 ( .A(N30), .B(n57), .Y(frac_inter_norm_t1[23]) );
  AND2X6 U82 ( .A(N33), .B(n57), .Y(frac_inter_norm_t1[26]) );
  INVX4 U83 ( .A(frac_inter_norm_t2[14]), .Y(n70) );
  AND2X6 U84 ( .A(N50), .B(n57), .Y(frac_inter_norm_t1[43]) );
  NOR2X8 U85 ( .A(frac_inter_norm_t2[6]), .B(frac_inter_norm_t2[4]), .Y(
        net43333) );
  AND2X6 U86 ( .A(N41), .B(n57), .Y(frac_inter_norm_t1[34]) );
  AND2X8 U87 ( .A(N76), .B(n57), .Y(frac_inter_norm_t1[69]) );
  AND2X8 U88 ( .A(N75), .B(n57), .Y(frac_inter_norm_t1[68]) );
  INVXL U89 ( .A(frac_inter[16]), .Y(n41) );
  INVX1 U90 ( .A(n41), .Y(n42) );
  INVXL U91 ( .A(frac_inter[8]), .Y(n43) );
  INVX1 U92 ( .A(n43), .Y(n44) );
  CLKBUFX2 U93 ( .A(frac_inter[7]), .Y(n45) );
  AND2X8 U94 ( .A(N59), .B(n57), .Y(frac_inter_norm_t1[52]) );
  INVX2 U95 ( .A(n46), .Y(n47) );
  AND2X8 U96 ( .A(N37), .B(n57), .Y(frac_inter_norm_t1[30]) );
  NOR2X8 U97 ( .A(frac_inter_norm_t2[2]), .B(frac_inter_norm_t2[3]), .Y(
        net43336) );
  NOR2X8 U98 ( .A(frac_inter_norm_t2[24]), .B(frac_inter_norm_t2[22]), .Y(n65)
         );
  AND2X6 U99 ( .A(N38), .B(n57), .Y(frac_inter_norm_t1[31]) );
  AND2X8 U100 ( .A(N74), .B(n57), .Y(frac_inter_norm_t1[67]) );
  AND2X8 U101 ( .A(N79), .B(n57), .Y(frac_inter_norm_t1[72]) );
  AND2X8 U102 ( .A(N58), .B(n57), .Y(frac_inter_norm_t1[51]) );
  BUFX16 U103 ( .A(n74), .Y(exp_norm[9]) );
  INVX1 U104 ( .A(n49), .Y(n50) );
  AND2X6 U105 ( .A(N55), .B(n57), .Y(frac_inter_norm_t1[48]) );
  INVXL U106 ( .A(frac_inter[17]), .Y(n51) );
  INVX1 U107 ( .A(n51), .Y(n52) );
  NAND4X6 U108 ( .A(n67), .B(n65), .C(n66), .D(n64), .Y(n73) );
  NOR2X8 U109 ( .A(frac_inter_norm_t2[19]), .B(frac_inter_norm_t2[21]), .Y(n67) );
  AND2X8 U110 ( .A(N52), .B(n57), .Y(frac_inter_norm_t1[45]) );
  AND2X8 U111 ( .A(N43), .B(n57), .Y(frac_inter_norm_t1[36]) );
  NOR2X8 U112 ( .A(n72), .B(n73), .Y(net43303) );
  AND2X8 U113 ( .A(N70), .B(n57), .Y(frac_inter_norm_t1[63]) );
  AND2X8 U114 ( .A(N56), .B(n57), .Y(frac_inter_norm_t1[49]) );
  AND2X8 U115 ( .A(N63), .B(n57), .Y(frac_inter_norm_t1[56]) );
  AND2X8 U116 ( .A(N80), .B(n57), .Y(frac_inter_norm_t1[73]) );
  AND2X8 U117 ( .A(N66), .B(n63), .Y(frac_inter_norm_t1[59]) );
  AND2X8 U118 ( .A(N47), .B(n57), .Y(frac_inter_norm_t1[40]) );
  AND2X8 U119 ( .A(N29), .B(n57), .Y(frac_inter_norm_t1[22]) );
  AND2X8 U120 ( .A(N28), .B(n57), .Y(frac_inter_norm_t1[21]) );
  AND2X6 U121 ( .A(N32), .B(n57), .Y(frac_inter_norm_t1[25]) );
  AND2X8 U122 ( .A(N72), .B(n57), .Y(frac_inter_norm_t1[65]) );
  AND2X8 U123 ( .A(N68), .B(n57), .Y(frac_inter_norm_t1[61]) );
  INVX12 U124 ( .A(n53), .Y(n54) );
  AND2X8 U125 ( .A(N61), .B(n57), .Y(frac_inter_norm_t1[54]) );
  AND2X6 U126 ( .A(N45), .B(n57), .Y(frac_inter_norm_t1[38]) );
  AND2X6 U127 ( .A(N42), .B(n57), .Y(frac_inter_norm_t1[35]) );
  AND2X6 U128 ( .A(N31), .B(n57), .Y(frac_inter_norm_t1[24]) );
  AND2X4 U129 ( .A(N9), .B(n57), .Y(frac_inter_norm_t1[2]) );
  AND2X8 U130 ( .A(N46), .B(n57), .Y(frac_inter_norm_t1[39]) );
  AND2X6 U131 ( .A(N53), .B(n57), .Y(frac_inter_norm_t1[46]) );
  AND2X6 U132 ( .A(N39), .B(n57), .Y(frac_inter_norm_t1[32]) );
  CLKAND2X8 U133 ( .A(N40), .B(n57), .Y(frac_inter_norm_t1[33]) );
  AND2X6 U134 ( .A(N49), .B(n57), .Y(frac_inter_norm_t1[42]) );
  AND2X6 U135 ( .A(N51), .B(n57), .Y(frac_inter_norm_t1[44]) );
  AND2X6 U136 ( .A(N57), .B(n57), .Y(frac_inter_norm_t1[50]) );
  AND2X4 U137 ( .A(N26), .B(n57), .Y(frac_inter_norm_t1[19]) );
  AND2X8 U138 ( .A(N54), .B(n57), .Y(frac_inter_norm_t1[47]) );
  AND2X6 U139 ( .A(N20), .B(n57), .Y(frac_inter_norm_t1[13]) );
  AND2X8 U140 ( .A(N21), .B(n57), .Y(frac_inter_norm_t1[14]) );
  AND2X8 U141 ( .A(N81), .B(n57), .Y(frac_inter_norm_t1[74]) );
  AND2X6 U142 ( .A(N27), .B(n57), .Y(frac_inter_norm_t1[20]) );
  CLKINVX8 U143 ( .A(frac_inter[0]), .Y(n53) );
  AND2X8 U144 ( .A(N10), .B(n57), .Y(frac_inter_norm_t1[3]) );
  AND2X8 U145 ( .A(N67), .B(n57), .Y(frac_inter_norm_t1[60]) );
  AND2X6 U146 ( .A(N22), .B(n57), .Y(frac_inter_norm_t1[15]) );
  AND2X8 U147 ( .A(N64), .B(n57), .Y(frac_inter_norm_t1[57]) );
  AND2X8 U148 ( .A(N71), .B(n57), .Y(frac_inter_norm_t1[64]) );
  BUFX20 U149 ( .A(lz_count[6]), .Y(n62) );
  AND2X4 U150 ( .A(N8), .B(n57), .Y(frac_inter_norm_t1[1]) );
  AND2X2 U151 ( .A(N7), .B(n57), .Y(frac_inter_norm_t1[0]) );
  XOR2X1 U152 ( .A(s_tmp), .B(n77), .Y(s_final) );
  NOR2BX1 U153 ( .AN(frac_inter_h_s), .B(final_m), .Y(n77) );
  AND2X4 U154 ( .A(N11), .B(n63), .Y(frac_inter_norm_t1[4]) );
  AND2X4 U155 ( .A(N12), .B(n63), .Y(frac_inter_norm_t1[5]) );
  AND2X4 U156 ( .A(N13), .B(n63), .Y(frac_inter_norm_t1[6]) );
  AND2X4 U157 ( .A(N15), .B(n57), .Y(frac_inter_norm_t1[8]) );
  AND2X4 U158 ( .A(N16), .B(n57), .Y(frac_inter_norm_t1[9]) );
  AND2X4 U159 ( .A(N17), .B(n57), .Y(frac_inter_norm_t1[10]) );
  AND2X4 U160 ( .A(N18), .B(n57), .Y(frac_inter_norm_t1[11]) );
  AND2X4 U161 ( .A(N19), .B(n57), .Y(frac_inter_norm_t1[12]) );
  AND2X4 U162 ( .A(N23), .B(n57), .Y(frac_inter_norm_t1[16]) );
  AND2X4 U163 ( .A(N24), .B(n57), .Y(frac_inter_norm_t1[17]) );
  AND2X4 U164 ( .A(N25), .B(n57), .Y(frac_inter_norm_t1[18]) );
  AND2X4 U165 ( .A(N44), .B(n57), .Y(frac_inter_norm_t1[37]) );
endmodule


module add_stage ( c_frac_align_h, c_frac_align_m, c_frac_align_l, carry, sum, 
        inv_mask, frac_inter_h_s, frac_inter );
  input [25:0] c_frac_align_h;
  input [47:0] c_frac_align_m;
  input [23:0] c_frac_align_l;
  input [47:0] carry;
  input [47:0] sum;
  output [74:0] frac_inter;
  input inv_mask;
  output frac_inter_h_s;
  wire   compen_bit, csa_co, cla_co, frac_inter_tmp_0_, sum1_9_, sum1_8_,
         sum1_7_, sum1_6_, sum1_5_, sum1_4_, sum1_47_, sum1_46_, sum1_45_,
         sum1_44_, sum1_43_, sum1_42_, sum1_41_, sum1_40_, sum1_3_, sum1_39_,
         sum1_38_, sum1_37_, sum1_36_, sum1_35_, sum1_34_, sum1_33_, sum1_32_,
         sum1_31_, sum1_30_, sum1_2_, sum1_29_, sum1_28_, sum1_27_, sum1_26_,
         sum1_25_, sum1_24_, sum1_23_, sum1_22_, sum1_21_, sum1_20_, sum1_1_,
         sum1_19_, sum1_18_, sum1_17_, sum1_16_, sum1_15_, sum1_14_, sum1_13_,
         sum1_12_, sum1_11_, sum1_10_, sum1_0_, carry1_9_, carry1_8_,
         carry1_7_, carry1_6_, carry1_5_, carry1_4_, carry1_47_, carry1_46_,
         carry1_45_, carry1_44_, carry1_43_, carry1_42_, carry1_41_,
         carry1_40_, carry1_3_, carry1_39_, carry1_38_, carry1_37_, carry1_36_,
         carry1_35_, carry1_34_, carry1_33_, carry1_32_, carry1_31_,
         carry1_30_, carry1_2_, carry1_29_, carry1_28_, carry1_27_, carry1_26_,
         carry1_25_, carry1_24_, carry1_23_, carry1_22_, carry1_21_,
         carry1_20_, carry1_1_, carry1_19_, carry1_18_, carry1_17_, carry1_16_,
         carry1_15_, carry1_14_, carry1_13_, carry1_12_, carry1_11_,
         carry1_10_, carry1_0_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172;
  wire   [47:0] frac_inter_m;
  wire   [26:0] c_frac_align_h_signed_inc;
  wire   [25:0] frac_inter_h;
  wire   [74:0] frac_inter_tmp_c;

  sticky_handler sticky_handler_inst ( .c_frac_align_l(c_frac_align_l), 
        .inv_mask(inv_mask), .compen_bit(compen_bit), .st1(frac_inter_tmp_0_)
         );
  add_stage_DW01_csa_0 csa_inst ( .a(c_frac_align_m), .b(carry), .c(sum), .ci(
        compen_bit), .carry({carry1_47_, carry1_46_, carry1_45_, carry1_44_, 
        carry1_43_, carry1_42_, carry1_41_, carry1_40_, carry1_39_, carry1_38_, 
        carry1_37_, carry1_36_, carry1_35_, carry1_34_, carry1_33_, carry1_32_, 
        carry1_31_, carry1_30_, carry1_29_, carry1_28_, carry1_27_, carry1_26_, 
        carry1_25_, carry1_24_, carry1_23_, carry1_22_, carry1_21_, carry1_20_, 
        carry1_19_, carry1_18_, carry1_17_, carry1_16_, carry1_15_, carry1_14_, 
        carry1_13_, carry1_12_, carry1_11_, carry1_10_, carry1_9_, carry1_8_, 
        carry1_7_, carry1_6_, carry1_5_, carry1_4_, carry1_3_, carry1_2_, 
        carry1_1_, carry1_0_}), .sum({sum1_47_, sum1_46_, sum1_45_, sum1_44_, 
        sum1_43_, sum1_42_, sum1_41_, sum1_40_, sum1_39_, sum1_38_, sum1_37_, 
        sum1_36_, sum1_35_, sum1_34_, sum1_33_, sum1_32_, sum1_31_, sum1_30_, 
        sum1_29_, sum1_28_, sum1_27_, sum1_26_, sum1_25_, sum1_24_, sum1_23_, 
        sum1_22_, sum1_21_, sum1_20_, sum1_19_, sum1_18_, sum1_17_, sum1_16_, 
        sum1_15_, sum1_14_, sum1_13_, sum1_12_, sum1_11_, sum1_10_, sum1_9_, 
        sum1_8_, sum1_7_, sum1_6_, sum1_5_, sum1_4_, sum1_3_, sum1_2_, sum1_1_, 
        sum1_0_}), .co(csa_co) );
  add_stage_DW01_sub_1 sub_add_84_b0 ( .B({frac_inter_h[25:24], n2, 
        frac_inter_h[22:21], n6, frac_inter_h[19], n4, frac_inter_h[17], n8, 
        frac_inter_h[15:8], n10, frac_inter_h[6:0], frac_inter_m[47:42], n11, 
        frac_inter_m[40:23], n12, frac_inter_m[21:17], n3, frac_inter_m[15:13], 
        n7, frac_inter_m[11:9], n5, frac_inter_m[7:6], n9, frac_inter_m[4:0], 
        frac_inter_tmp_0_}), .DIFF(frac_inter_tmp_c) );
  add_stage_DW01_add_2 add_64 ( .A({1'b0, carry1_47_, carry1_46_, carry1_45_, 
        carry1_44_, carry1_43_, carry1_42_, carry1_41_, carry1_40_, carry1_39_, 
        carry1_38_, carry1_37_, carry1_36_, carry1_35_, carry1_34_, carry1_33_, 
        carry1_32_, carry1_31_, carry1_30_, carry1_29_, carry1_28_, carry1_27_, 
        carry1_26_, carry1_25_, carry1_24_, carry1_23_, carry1_22_, carry1_21_, 
        carry1_20_, carry1_19_, carry1_18_, carry1_17_, carry1_16_, carry1_15_, 
        carry1_14_, carry1_13_, carry1_12_, carry1_11_, carry1_10_, carry1_9_, 
        carry1_8_, carry1_7_, carry1_6_, carry1_5_, carry1_4_, carry1_3_, 
        carry1_2_, carry1_1_, carry1_0_}), .B({1'b0, sum1_47_, sum1_46_, 
        sum1_45_, sum1_44_, sum1_43_, sum1_42_, sum1_41_, sum1_40_, sum1_39_, 
        sum1_38_, sum1_37_, sum1_36_, sum1_35_, sum1_34_, sum1_33_, sum1_32_, 
        sum1_31_, sum1_30_, sum1_29_, sum1_28_, sum1_27_, sum1_26_, sum1_25_, 
        sum1_24_, sum1_23_, sum1_22_, sum1_21_, sum1_20_, sum1_19_, sum1_18_, 
        sum1_17_, sum1_16_, sum1_15_, sum1_14_, sum1_13_, sum1_12_, sum1_11_, 
        sum1_10_, sum1_9_, sum1_8_, sum1_7_, sum1_6_, sum1_5_, sum1_4_, 
        sum1_3_, sum1_2_, sum1_1_, sum1_0_}), .SUM({cla_co, frac_inter_m}) );
  add_stage_DW01_inc_1 add_75 ( .A({inv_mask, c_frac_align_h}), .SUM(
        c_frac_align_h_signed_inc) );
  MXI2X2 U3 ( .A(n62), .B(n61), .S0(n25), .Y(frac_inter[16]) );
  INVX3 U4 ( .A(frac_inter_tmp_c[31]), .Y(n91) );
  MXI2X2 U5 ( .A(n46), .B(n45), .S0(n25), .Y(frac_inter[8]) );
  BUFX20 U6 ( .A(n14), .Y(n18) );
  INVX4 U7 ( .A(frac_inter_m[41]), .Y(n114) );
  MX2X6 U8 ( .A(c_frac_align_h[16]), .B(c_frac_align_h_signed_inc[16]), .S0(
        n16), .Y(n8) );
  INVXL U9 ( .A(n10), .Y(n142) );
  INVX1 U10 ( .A(n6), .Y(n168) );
  INVX4 U11 ( .A(frac_inter_tmp_c[69]), .Y(n167) );
  INVX3 U12 ( .A(frac_inter_tmp_c[38]), .Y(n105) );
  INVX4 U13 ( .A(frac_inter_tmp_c[62]), .Y(n153) );
  MXI2X1 U14 ( .A(n78), .B(n77), .S0(n24), .Y(frac_inter[24]) );
  INVX4 U15 ( .A(frac_inter_tmp_c[24]), .Y(n77) );
  INVX4 U16 ( .A(frac_inter_tmp_c[71]), .Y(n171) );
  MXI2X2 U17 ( .A(n64), .B(n63), .S0(n25), .Y(frac_inter[17]) );
  INVX3 U18 ( .A(frac_inter_tmp_c[17]), .Y(n63) );
  MXI2X2 U19 ( .A(n76), .B(n75), .S0(n24), .Y(frac_inter[23]) );
  INVX8 U20 ( .A(n158), .Y(frac_inter_h[15]) );
  MXI2X2 U21 ( .A(n56), .B(n55), .S0(n25), .Y(frac_inter[13]) );
  MXI2X2 U22 ( .A(n156), .B(n155), .S0(n21), .Y(frac_inter[63]) );
  INVX4 U23 ( .A(frac_inter_tmp_c[63]), .Y(n155) );
  CLKINVX1 U24 ( .A(n8), .Y(n160) );
  MXI2X2 U25 ( .A(n94), .B(n93), .S0(n24), .Y(frac_inter[32]) );
  MXI2X2 U26 ( .A(n154), .B(n153), .S0(n21), .Y(frac_inter[62]) );
  INVX6 U27 ( .A(n154), .Y(frac_inter_h[13]) );
  MXI2X2 U28 ( .A(n60), .B(n59), .S0(n25), .Y(frac_inter[15]) );
  INVX3 U29 ( .A(frac_inter_tmp_c[42]), .Y(n113) );
  INVX4 U30 ( .A(frac_inter_tmp_c[58]), .Y(n145) );
  INVX1 U31 ( .A(n4), .Y(n164) );
  MXI2X1 U32 ( .A(n70), .B(n69), .S0(n24), .Y(frac_inter[20]) );
  MXI2X2 U33 ( .A(c_frac_align_h_signed_inc[22]), .B(c_frac_align_h[22]), .S0(
        n17), .Y(n172) );
  BUFX8 U34 ( .A(n14), .Y(n17) );
  MXI2X2 U35 ( .A(n168), .B(n167), .S0(n21), .Y(frac_inter[69]) );
  MXI2X2 U36 ( .A(n144), .B(n143), .S0(n22), .Y(frac_inter[57]) );
  MXI2X2 U37 ( .A(n50), .B(n49), .S0(n25), .Y(frac_inter[10]) );
  INVX2 U38 ( .A(n13), .Y(n1) );
  CLKINVX8 U39 ( .A(n1), .Y(n2) );
  INVX3 U40 ( .A(frac_inter_tmp_c[60]), .Y(n149) );
  BUFX6 U41 ( .A(frac_inter_m[16]), .Y(n3) );
  MX2X4 U42 ( .A(c_frac_align_h_signed_inc[18]), .B(c_frac_align_h[18]), .S0(
        n17), .Y(n4) );
  BUFX8 U43 ( .A(frac_inter_m[8]), .Y(n5) );
  CLKMX2X8 U44 ( .A(c_frac_align_h_signed_inc[20]), .B(c_frac_align_h[20]), 
        .S0(n17), .Y(n6) );
  BUFX16 U45 ( .A(frac_inter_m[12]), .Y(n7) );
  MXI2X2 U46 ( .A(n106), .B(n105), .S0(n23), .Y(frac_inter[38]) );
  MXI2X4 U47 ( .A(c_frac_align_h_signed_inc[15]), .B(c_frac_align_h[15]), .S0(
        n17), .Y(n158) );
  INVX1 U48 ( .A(n14), .Y(n16) );
  MXI2X2 U49 ( .A(n98), .B(n97), .S0(n23), .Y(frac_inter[34]) );
  BUFX8 U50 ( .A(frac_inter_m[5]), .Y(n9) );
  MXI2X4 U51 ( .A(c_frac_align_h_signed_inc[19]), .B(c_frac_align_h[19]), .S0(
        n17), .Y(n166) );
  MXI2X2 U52 ( .A(n112), .B(n111), .S0(n23), .Y(frac_inter[41]) );
  INVX4 U53 ( .A(frac_inter_tmp_c[41]), .Y(n111) );
  MXI2X2 U54 ( .A(n100), .B(n99), .S0(n23), .Y(frac_inter[35]) );
  MXI2X2 U55 ( .A(n160), .B(n159), .S0(n21), .Y(frac_inter[65]) );
  INVX4 U56 ( .A(frac_inter_tmp_c[65]), .Y(n159) );
  MXI2X2 U57 ( .A(n66), .B(n65), .S0(n25), .Y(frac_inter[18]) );
  INVX4 U58 ( .A(frac_inter_tmp_c[67]), .Y(n163) );
  MXI2X2 U59 ( .A(n74), .B(n73), .S0(n24), .Y(frac_inter[22]) );
  INVX3 U60 ( .A(frac_inter_tmp_c[22]), .Y(n73) );
  MXI2X4 U61 ( .A(c_frac_align_h_signed_inc[11]), .B(c_frac_align_h[11]), .S0(
        n18), .Y(n150) );
  MXI2X4 U62 ( .A(c_frac_align_h_signed_inc[17]), .B(c_frac_align_h[17]), .S0(
        n17), .Y(n162) );
  MXI2X2 U63 ( .A(n148), .B(n147), .S0(n21), .Y(frac_inter[59]) );
  MXI2X4 U64 ( .A(n122), .B(n121), .S0(n22), .Y(frac_inter[46]) );
  MXI2X4 U65 ( .A(n120), .B(n119), .S0(n22), .Y(frac_inter[45]) );
  MXI2X2 U66 ( .A(n140), .B(n139), .S0(n22), .Y(frac_inter[55]) );
  MXI2X2 U67 ( .A(n128), .B(n127), .S0(n22), .Y(frac_inter[49]) );
  MXI2X2 U68 ( .A(n138), .B(n137), .S0(n22), .Y(frac_inter[54]) );
  MXI2X4 U69 ( .A(n124), .B(n123), .S0(n22), .Y(frac_inter[47]) );
  MXI2X2 U70 ( .A(n136), .B(n135), .S0(n22), .Y(frac_inter[53]) );
  MXI2X4 U71 ( .A(n126), .B(n125), .S0(n22), .Y(frac_inter[48]) );
  BUFX20 U72 ( .A(n19), .Y(n22) );
  MXI2X2 U73 ( .A(n86), .B(n85), .S0(n24), .Y(frac_inter[28]) );
  INVX4 U74 ( .A(n172), .Y(frac_inter_h[22]) );
  INVX6 U75 ( .A(n170), .Y(frac_inter_h[21]) );
  MXI2X2 U76 ( .A(n170), .B(n169), .S0(n21), .Y(frac_inter[70]) );
  MXI2X2 U77 ( .A(c_frac_align_h_signed_inc[21]), .B(c_frac_align_h[21]), .S0(
        n17), .Y(n170) );
  MXI2X2 U78 ( .A(n110), .B(n109), .S0(n23), .Y(frac_inter[40]) );
  CLKMX2X6 U79 ( .A(n2), .B(frac_inter_tmp_c[72]), .S0(frac_inter_h_s), .Y(
        frac_inter[72]) );
  MXI2X4 U80 ( .A(n90), .B(n89), .S0(n24), .Y(frac_inter[30]) );
  MXI2X4 U81 ( .A(n102), .B(n101), .S0(n23), .Y(frac_inter[36]) );
  INVX3 U82 ( .A(frac_inter_tmp_c[36]), .Y(n101) );
  INVX4 U83 ( .A(frac_inter_tmp_c[50]), .Y(n129) );
  MXI2X2 U84 ( .A(n130), .B(n129), .S0(n22), .Y(frac_inter[50]) );
  MXI2X2 U85 ( .A(n150), .B(n149), .S0(n21), .Y(frac_inter[60]) );
  MXI2X2 U86 ( .A(n146), .B(n145), .S0(n22), .Y(frac_inter[58]) );
  MXI2X2 U87 ( .A(n142), .B(n141), .S0(n23), .Y(frac_inter[56]) );
  MXI2X2 U88 ( .A(n96), .B(n95), .S0(n23), .Y(frac_inter[33]) );
  MXI2X2 U89 ( .A(n114), .B(n113), .S0(n23), .Y(frac_inter[42]) );
  INVX4 U90 ( .A(frac_inter_tmp_c[48]), .Y(n125) );
  MXI2X2 U91 ( .A(n84), .B(n83), .S0(n24), .Y(frac_inter[27]) );
  INVX3 U92 ( .A(frac_inter_tmp_c[53]), .Y(n135) );
  INVX4 U93 ( .A(frac_inter_tmp_c[46]), .Y(n121) );
  MXI2X2 U94 ( .A(n164), .B(n163), .S0(n21), .Y(frac_inter[67]) );
  MXI2X2 U95 ( .A(n162), .B(n161), .S0(n21), .Y(frac_inter[66]) );
  INVX4 U96 ( .A(frac_inter_tmp_c[45]), .Y(n119) );
  MXI2X2 U97 ( .A(n116), .B(n115), .S0(n23), .Y(frac_inter[43]) );
  INVX4 U98 ( .A(n166), .Y(frac_inter_h[19]) );
  INVX2 U99 ( .A(frac_inter_tmp_c[30]), .Y(n89) );
  MXI2X2 U100 ( .A(n132), .B(n131), .S0(n22), .Y(frac_inter[51]) );
  MXI2X4 U101 ( .A(c_frac_align_h_signed_inc[6]), .B(c_frac_align_h[6]), .S0(
        n18), .Y(n140) );
  MXI2X4 U102 ( .A(n118), .B(n117), .S0(n23), .Y(frac_inter[44]) );
  INVX4 U103 ( .A(frac_inter_tmp_c[44]), .Y(n117) );
  MXI2X2 U104 ( .A(n134), .B(n133), .S0(n22), .Y(frac_inter[52]) );
  INVX6 U105 ( .A(n144), .Y(frac_inter_h[8]) );
  MXI2X2 U106 ( .A(c_frac_align_h_signed_inc[8]), .B(c_frac_align_h[8]), .S0(
        n18), .Y(n144) );
  CLKMX2X8 U107 ( .A(c_frac_align_h_signed_inc[7]), .B(c_frac_align_h[7]), 
        .S0(n18), .Y(n10) );
  MXI2X2 U108 ( .A(n152), .B(n151), .S0(n21), .Y(frac_inter[61]) );
  INVX2 U109 ( .A(frac_inter_tmp_c[61]), .Y(n151) );
  INVX4 U110 ( .A(frac_inter_tmp_c[49]), .Y(n127) );
  MXI2X4 U111 ( .A(c_frac_align_h_signed_inc[2]), .B(c_frac_align_h[2]), .S0(
        n18), .Y(n132) );
  INVX8 U112 ( .A(n114), .Y(n11) );
  INVX4 U113 ( .A(frac_inter_tmp_c[54]), .Y(n137) );
  MXI2X2 U114 ( .A(n82), .B(n81), .S0(n24), .Y(frac_inter[26]) );
  INVX3 U115 ( .A(frac_inter_tmp_c[26]), .Y(n81) );
  MXI2X2 U116 ( .A(n72), .B(n71), .S0(n24), .Y(frac_inter[21]) );
  INVX2 U117 ( .A(frac_inter_tmp_c[21]), .Y(n71) );
  BUFX8 U118 ( .A(frac_inter_m[22]), .Y(n12) );
  MXI2X4 U119 ( .A(n80), .B(n79), .S0(n24), .Y(frac_inter[25]) );
  INVX3 U120 ( .A(frac_inter_tmp_c[25]), .Y(n79) );
  MXI2X2 U121 ( .A(n68), .B(n67), .S0(n25), .Y(frac_inter[19]) );
  INVX4 U122 ( .A(frac_inter_tmp_c[19]), .Y(n67) );
  MXI2X2 U123 ( .A(n108), .B(n107), .S0(n23), .Y(frac_inter[39]) );
  INVX4 U124 ( .A(frac_inter_tmp_c[39]), .Y(n107) );
  INVX4 U125 ( .A(n148), .Y(frac_inter_h[10]) );
  MXI2X2 U126 ( .A(n172), .B(n171), .S0(n21), .Y(frac_inter[71]) );
  MXI2X4 U127 ( .A(c_frac_align_h_signed_inc[10]), .B(c_frac_align_h[10]), 
        .S0(n18), .Y(n148) );
  INVX4 U128 ( .A(frac_inter_tmp_c[59]), .Y(n147) );
  INVX3 U129 ( .A(frac_inter_tmp_c[47]), .Y(n123) );
  MXI2X4 U130 ( .A(c_frac_align_h_signed_inc[9]), .B(c_frac_align_h[9]), .S0(
        n18), .Y(n146) );
  MXI2X4 U131 ( .A(c_frac_align_h_signed_inc[12]), .B(c_frac_align_h[12]), 
        .S0(n18), .Y(n152) );
  INVX4 U132 ( .A(n136), .Y(frac_inter_h[4]) );
  MXI2X4 U133 ( .A(c_frac_align_h_signed_inc[4]), .B(c_frac_align_h[4]), .S0(
        n18), .Y(n136) );
  INVX4 U134 ( .A(frac_inter_tmp_c[57]), .Y(n143) );
  MXI2X2 U135 ( .A(n92), .B(n91), .S0(n24), .Y(frac_inter[31]) );
  MXI2X2 U136 ( .A(n88), .B(n87), .S0(n24), .Y(frac_inter[29]) );
  INVX4 U137 ( .A(n134), .Y(frac_inter_h[3]) );
  MXI2X4 U138 ( .A(c_frac_align_h_signed_inc[3]), .B(c_frac_align_h[3]), .S0(
        n18), .Y(n134) );
  MXI2X1 U139 ( .A(n166), .B(n165), .S0(n21), .Y(frac_inter[68]) );
  INVX3 U140 ( .A(frac_inter_tmp_c[68]), .Y(n165) );
  MXI2X2 U141 ( .A(n104), .B(n103), .S0(n23), .Y(frac_inter[37]) );
  INVX4 U142 ( .A(frac_inter_tmp_c[37]), .Y(n103) );
  MXI2X4 U143 ( .A(c_frac_align_h_signed_inc[0]), .B(c_frac_align_h[0]), .S0(
        n18), .Y(n128) );
  BUFX8 U144 ( .A(n19), .Y(n21) );
  INVX6 U145 ( .A(n130), .Y(frac_inter_h[1]) );
  CLKBUFX2 U146 ( .A(n15), .Y(n20) );
  INVXL U147 ( .A(frac_inter_m[33]), .Y(n98) );
  INVXL U148 ( .A(frac_inter_m[34]), .Y(n100) );
  INVXL U149 ( .A(frac_inter_m[42]), .Y(n116) );
  INVXL U150 ( .A(frac_inter_m[18]), .Y(n68) );
  INVXL U151 ( .A(frac_inter_m[9]), .Y(n50) );
  INVXL U152 ( .A(frac_inter_m[10]), .Y(n52) );
  INVXL U153 ( .A(frac_inter_m[47]), .Y(n126) );
  INVXL U154 ( .A(frac_inter_m[2]), .Y(n36) );
  MXI2XL U155 ( .A(n34), .B(n33), .S0(frac_inter_h_s), .Y(frac_inter[2]) );
  INVXL U156 ( .A(frac_inter_m[1]), .Y(n34) );
  BUFX8 U157 ( .A(n19), .Y(n25) );
  BUFX8 U158 ( .A(n20), .Y(n23) );
  BUFX8 U159 ( .A(n20), .Y(n24) );
  BUFX8 U160 ( .A(n19), .Y(frac_inter_h_s) );
  NOR2X8 U161 ( .A(cla_co), .B(csa_co), .Y(n14) );
  CLKMX2X2 U162 ( .A(frac_inter_h[24]), .B(frac_inter_tmp_c[73]), .S0(
        frac_inter_h_s), .Y(frac_inter[73]) );
  CLKMX2X2 U163 ( .A(frac_inter_h[25]), .B(frac_inter_tmp_c[74]), .S0(
        frac_inter_h_s), .Y(frac_inter[74]) );
  INVX1 U164 ( .A(n27), .Y(frac_inter_h[25]) );
  BUFX4 U165 ( .A(n15), .Y(n19) );
  MX2XL U166 ( .A(c_frac_align_h_signed_inc[23]), .B(c_frac_align_h[23]), .S0(
        n17), .Y(n13) );
  INVXL U167 ( .A(frac_inter_m[35]), .Y(n102) );
  INVXL U168 ( .A(frac_inter_m[39]), .Y(n110) );
  CLKINVX1 U169 ( .A(frac_inter_tmp_c[40]), .Y(n109) );
  INVXL U170 ( .A(frac_inter_m[15]), .Y(n62) );
  CLKINVX1 U171 ( .A(frac_inter_tmp_c[16]), .Y(n61) );
  INVXL U172 ( .A(frac_inter_m[31]), .Y(n94) );
  CLKINVX1 U173 ( .A(frac_inter_tmp_c[32]), .Y(n93) );
  INVXL U174 ( .A(frac_inter_m[23]), .Y(n78) );
  INVXL U175 ( .A(frac_inter_m[43]), .Y(n118) );
  INVXL U176 ( .A(frac_inter_m[45]), .Y(n122) );
  CLKINVX1 U177 ( .A(frac_inter_tmp_c[34]), .Y(n97) );
  INVXL U178 ( .A(frac_inter_m[37]), .Y(n106) );
  MXI2XL U179 ( .A(n42), .B(n41), .S0(n25), .Y(frac_inter[6]) );
  INVXL U180 ( .A(n9), .Y(n42) );
  CLKINVX1 U181 ( .A(frac_inter_tmp_c[6]), .Y(n41) );
  MXI2XL U182 ( .A(n54), .B(n53), .S0(n25), .Y(frac_inter[12]) );
  INVXL U183 ( .A(frac_inter_m[11]), .Y(n54) );
  CLKINVX1 U184 ( .A(frac_inter_tmp_c[12]), .Y(n53) );
  MXI2XL U185 ( .A(n58), .B(n57), .S0(n25), .Y(frac_inter[14]) );
  INVXL U186 ( .A(frac_inter_m[13]), .Y(n58) );
  CLKINVX1 U187 ( .A(frac_inter_tmp_c[14]), .Y(n57) );
  INVXL U188 ( .A(frac_inter_m[17]), .Y(n66) );
  CLKINVX1 U189 ( .A(frac_inter_tmp_c[18]), .Y(n65) );
  INVXL U190 ( .A(frac_inter_m[19]), .Y(n70) );
  CLKINVX1 U191 ( .A(frac_inter_tmp_c[20]), .Y(n69) );
  INVXL U192 ( .A(frac_inter_m[21]), .Y(n74) );
  INVXL U193 ( .A(frac_inter_m[25]), .Y(n82) );
  INVXL U194 ( .A(frac_inter_m[27]), .Y(n86) );
  CLKINVX1 U195 ( .A(frac_inter_tmp_c[28]), .Y(n85) );
  INVXL U196 ( .A(frac_inter_m[29]), .Y(n90) );
  CLKINVX1 U197 ( .A(frac_inter_tmp_c[2]), .Y(n33) );
  INVXL U198 ( .A(frac_inter_m[7]), .Y(n46) );
  CLKINVX1 U199 ( .A(frac_inter_tmp_c[8]), .Y(n45) );
  MXI2XL U200 ( .A(n40), .B(n39), .S0(frac_inter_h_s), .Y(frac_inter[5]) );
  INVXL U201 ( .A(frac_inter_m[4]), .Y(n40) );
  CLKINVX1 U202 ( .A(frac_inter_tmp_c[5]), .Y(n39) );
  MXI2XL U203 ( .A(n52), .B(n51), .S0(n25), .Y(frac_inter[11]) );
  CLKINVX1 U204 ( .A(frac_inter_tmp_c[11]), .Y(n51) );
  INVXL U205 ( .A(n3), .Y(n64) );
  INVXL U206 ( .A(frac_inter_m[46]), .Y(n124) );
  INVXL U207 ( .A(frac_inter_m[40]), .Y(n112) );
  INVXL U208 ( .A(frac_inter_m[38]), .Y(n108) );
  INVXL U209 ( .A(frac_inter_m[24]), .Y(n80) );
  INVXL U210 ( .A(frac_inter_m[30]), .Y(n92) );
  MXI2XL U211 ( .A(n48), .B(n47), .S0(n25), .Y(frac_inter[9]) );
  INVXL U212 ( .A(n5), .Y(n48) );
  CLKINVX1 U213 ( .A(frac_inter_tmp_c[9]), .Y(n47) );
  MXI2XL U214 ( .A(n36), .B(n35), .S0(frac_inter_h_s), .Y(frac_inter[3]) );
  CLKINVX1 U215 ( .A(frac_inter_tmp_c[3]), .Y(n35) );
  MXI2XL U216 ( .A(n44), .B(n43), .S0(frac_inter_h_s), .Y(frac_inter[7]) );
  INVXL U217 ( .A(frac_inter_m[6]), .Y(n44) );
  CLKINVX1 U218 ( .A(frac_inter_tmp_c[7]), .Y(n43) );
  CLKINVX1 U219 ( .A(frac_inter_tmp_c[43]), .Y(n115) );
  INVXL U220 ( .A(frac_inter_m[44]), .Y(n120) );
  CLKINVX1 U221 ( .A(frac_inter_tmp_c[35]), .Y(n99) );
  INVXL U222 ( .A(frac_inter_m[36]), .Y(n104) );
  INVXL U223 ( .A(frac_inter_m[20]), .Y(n72) );
  INVXL U224 ( .A(n12), .Y(n76) );
  CLKINVX1 U225 ( .A(frac_inter_tmp_c[23]), .Y(n75) );
  CLKINVX1 U226 ( .A(frac_inter_m[26]), .Y(n84) );
  CLKINVX1 U227 ( .A(frac_inter_tmp_c[27]), .Y(n83) );
  INVXL U228 ( .A(frac_inter_m[28]), .Y(n88) );
  CLKINVX1 U229 ( .A(frac_inter_tmp_c[29]), .Y(n87) );
  MXI2XL U230 ( .A(n38), .B(n37), .S0(frac_inter_h_s), .Y(frac_inter[4]) );
  INVXL U231 ( .A(frac_inter_m[3]), .Y(n38) );
  CLKINVX1 U232 ( .A(frac_inter_tmp_c[4]), .Y(n37) );
  INVXL U233 ( .A(frac_inter_m[14]), .Y(n60) );
  CLKINVX1 U234 ( .A(frac_inter_tmp_c[15]), .Y(n59) );
  CLKINVX1 U235 ( .A(frac_inter_tmp_c[10]), .Y(n49) );
  INVXL U236 ( .A(frac_inter_m[32]), .Y(n96) );
  CLKINVX1 U237 ( .A(frac_inter_tmp_c[33]), .Y(n95) );
  INVXL U238 ( .A(n7), .Y(n56) );
  CLKINVX1 U239 ( .A(frac_inter_tmp_c[13]), .Y(n55) );
  INVX3 U240 ( .A(n138), .Y(frac_inter_h[5]) );
  INVX3 U241 ( .A(n150), .Y(frac_inter_h[11]) );
  INVX3 U242 ( .A(n162), .Y(frac_inter_h[17]) );
  CLKINVX1 U243 ( .A(frac_inter_tmp_c[52]), .Y(n133) );
  INVX3 U244 ( .A(n140), .Y(frac_inter_h[6]) );
  INVX3 U245 ( .A(n128), .Y(frac_inter_h[0]) );
  INVX3 U246 ( .A(n132), .Y(frac_inter_h[2]) );
  INVX3 U247 ( .A(n152), .Y(frac_inter_h[12]) );
  INVX3 U248 ( .A(n156), .Y(frac_inter_h[14]) );
  CLKINVX1 U249 ( .A(frac_inter_tmp_c[51]), .Y(n131) );
  MXI2XL U250 ( .A(n158), .B(n157), .S0(n21), .Y(frac_inter[64]) );
  CLKINVX1 U251 ( .A(frac_inter_tmp_c[64]), .Y(n157) );
  CLKINVX1 U252 ( .A(frac_inter_tmp_c[56]), .Y(n141) );
  CLKINVX1 U253 ( .A(frac_inter_tmp_c[66]), .Y(n161) );
  CLKINVX1 U254 ( .A(frac_inter_tmp_c[70]), .Y(n169) );
  CLKINVX1 U255 ( .A(frac_inter_tmp_c[55]), .Y(n139) );
  MXI2XL U256 ( .A(n32), .B(n31), .S0(frac_inter_h_s), .Y(frac_inter[1]) );
  INVXL U257 ( .A(frac_inter_m[0]), .Y(n32) );
  CLKINVX1 U258 ( .A(frac_inter_tmp_c[1]), .Y(n31) );
  MXI2XL U259 ( .A(n30), .B(n29), .S0(frac_inter_h_s), .Y(frac_inter[0]) );
  INVXL U260 ( .A(frac_inter_tmp_0_), .Y(n30) );
  CLKINVX1 U261 ( .A(frac_inter_tmp_c[0]), .Y(n29) );
  MXI2X2 U262 ( .A(c_frac_align_h_signed_inc[13]), .B(c_frac_align_h[13]), 
        .S0(n17), .Y(n154) );
  MXI2X2 U263 ( .A(c_frac_align_h_signed_inc[14]), .B(c_frac_align_h[14]), 
        .S0(n17), .Y(n156) );
  CLKMX2X2 U264 ( .A(inv_mask), .B(c_frac_align_h_signed_inc[26]), .S0(n16), 
        .Y(n15) );
  INVX3 U265 ( .A(n28), .Y(frac_inter_h[24]) );
  MXI2XL U266 ( .A(c_frac_align_h_signed_inc[24]), .B(c_frac_align_h[24]), 
        .S0(n17), .Y(n28) );
  MXI2XL U267 ( .A(c_frac_align_h_signed_inc[25]), .B(c_frac_align_h[25]), 
        .S0(n17), .Y(n27) );
  INVX3 U268 ( .A(n146), .Y(frac_inter_h[9]) );
  MXI2X4 U269 ( .A(c_frac_align_h_signed_inc[5]), .B(c_frac_align_h[5]), .S0(
        n18), .Y(n138) );
  MXI2X4 U270 ( .A(c_frac_align_h_signed_inc[1]), .B(c_frac_align_h[1]), .S0(
        n18), .Y(n130) );
endmodule


module spec_handler ( nj_mode, inv_mask, operand_a, operand_b, operand_c, sa, 
        sb, exp_a_bias, exp_b_bias, exp_c_bias, manti_a, manti_b, manti_c, 
        exp_ab, spec_mask, res_spec );
  input [31:0] operand_a;
  input [31:0] operand_b;
  input [31:0] operand_c;
  input [7:0] exp_a_bias;
  input [7:0] exp_b_bias;
  input [7:0] exp_c_bias;
  input [22:0] manti_a;
  input [22:0] manti_b;
  input [22:0] manti_c;
  input [8:0] exp_ab;
  output [31:0] res_spec;
  input nj_mode, inv_mask, sa, sb;
  output spec_mask;
  wire   n158, n159, n160, n161, n162, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210;

  NOR3X2 U3 ( .A(manti_b[12]), .B(manti_b[11]), .C(manti_b[13]), .Y(n28) );
  NOR3X1 U4 ( .A(manti_b[21]), .B(manti_b[20]), .C(manti_b[22]), .Y(n31) );
  NAND3X4 U5 ( .A(n56), .B(n55), .C(n54), .Y(n69) );
  NOR3X2 U6 ( .A(manti_b[8]), .B(manti_b[10]), .C(manti_b[9]), .Y(n24) );
  AOI21X4 U7 ( .A0(n74), .A1(n62), .B0(n63), .Y(n7) );
  NAND2BX2 U8 ( .AN(n63), .B(n62), .Y(n64) );
  OAI2BB1X4 U9 ( .A0N(n76), .A1N(n1), .B0(n81), .Y(n63) );
  OA21X4 U10 ( .A0(n67), .A1(n68), .B0(exp_ab[8]), .Y(n2) );
  NAND3X2 U11 ( .A(nj_mode), .B(n155), .C(n2), .Y(n71) );
  INVX3 U12 ( .A(n2), .Y(n210) );
  NOR3X1 U13 ( .A(manti_b[15]), .B(manti_b[14]), .C(manti_b[16]), .Y(n29) );
  CLKINVX8 U14 ( .A(n169), .Y(n193) );
  INVXL U15 ( .A(n52), .Y(n1) );
  NAND2BX4 U16 ( .AN(n70), .B(n80), .Y(n59) );
  CLKINVX2 U17 ( .A(n52), .Y(n80) );
  NAND2X4 U18 ( .A(n4), .B(n48), .Y(n73) );
  OAI2BB1X4 U19 ( .A0N(n79), .A1N(n78), .B0(n80), .Y(n198) );
  NAND2X1 U20 ( .A(n7), .B(n151), .Y(n168) );
  OAI211X1 U21 ( .A0(n210), .A1(n209), .B0(n208), .C0(n207), .Y(spec_mask) );
  NOR3X2 U22 ( .A(exp_ab[6]), .B(exp_ab[4]), .C(exp_ab[5]), .Y(n163) );
  NAND2X2 U23 ( .A(n75), .B(n52), .Y(n53) );
  INVX3 U24 ( .A(n83), .Y(n74) );
  NAND4X2 U25 ( .A(exp_b_bias[1]), .B(exp_b_bias[0]), .C(n20), .D(n19), .Y(n52) );
  AND2XL U26 ( .A(exp_b_bias[3]), .B(exp_b_bias[2]), .Y(n20) );
  NAND2X1 U27 ( .A(exp_b_bias[5]), .B(exp_b_bias[4]), .Y(n18) );
  CLKINVX1 U28 ( .A(exp_a_bias[1]), .Y(n3) );
  AND4X1 U29 ( .A(exp_a_bias[7]), .B(exp_a_bias[6]), .C(exp_a_bias[5]), .D(
        exp_a_bias[4]), .Y(n8) );
  NAND2X1 U30 ( .A(exp_c_bias[3]), .B(exp_c_bias[2]), .Y(n15) );
  NAND4X1 U31 ( .A(exp_c_bias[7]), .B(exp_c_bias[6]), .C(exp_c_bias[5]), .D(
        exp_c_bias[4]), .Y(n16) );
  AOI21X1 U32 ( .A0(operand_b[12]), .A1(n11), .B0(n121), .Y(n122) );
  AOI21X1 U33 ( .A0(operand_b[13]), .A1(n12), .B0(n124), .Y(n125) );
  AOI21X1 U34 ( .A0(operand_b[18]), .A1(n12), .B0(n139), .Y(n140) );
  AOI21X1 U35 ( .A0(operand_b[19]), .A1(n12), .B0(n142), .Y(n143) );
  AOI21X1 U36 ( .A0(operand_b[20]), .A1(n12), .B0(n145), .Y(n146) );
  AOI21X1 U37 ( .A0(operand_b[21]), .A1(n12), .B0(n149), .Y(n150) );
  NAND2X2 U38 ( .A(n6), .B(n166), .Y(n206) );
  INVX3 U39 ( .A(n206), .Y(n155) );
  NOR3X2 U40 ( .A(manti_b[5]), .B(manti_b[7]), .C(manti_b[6]), .Y(n25) );
  NAND4X2 U41 ( .A(n30), .B(n31), .C(n29), .D(n28), .Y(n32) );
  NAND2X6 U42 ( .A(n61), .B(n73), .Y(n81) );
  NOR2X2 U43 ( .A(n166), .B(n74), .Y(n77) );
  BUFX20 U44 ( .A(n191), .Y(n11) );
  NOR2X1 U45 ( .A(n166), .B(n80), .Y(n82) );
  NAND2X1 U46 ( .A(n61), .B(n80), .Y(n167) );
  NOR4XL U47 ( .A(n66), .B(exp_ab[3]), .C(exp_ab[1]), .D(exp_ab[2]), .Y(n68)
         );
  INVX3 U48 ( .A(n163), .Y(n66) );
  NOR3X2 U49 ( .A(exp_b_bias[1]), .B(n76), .C(exp_b_bias[0]), .Y(n54) );
  NAND3X1 U50 ( .A(exp_ab[7]), .B(n155), .C(n205), .Y(n165) );
  OAI2BB1X4 U51 ( .A0N(n70), .A1N(n69), .B0(n155), .Y(n205) );
  NAND4X2 U52 ( .A(n8), .B(n9), .C(exp_a_bias[1]), .D(exp_a_bias[0]), .Y(n75)
         );
  NOR3X1 U53 ( .A(manti_a[5]), .B(manti_a[7]), .C(manti_a[6]), .Y(n35) );
  NAND4X2 U54 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(n46) );
  NOR2X1 U55 ( .A(manti_a[17]), .B(manti_a[19]), .Y(n43) );
  NOR2X1 U56 ( .A(manti_a[14]), .B(manti_a[16]), .Y(n41) );
  NOR3X1 U57 ( .A(manti_b[18]), .B(manti_b[17]), .C(manti_b[19]), .Y(n30) );
  NAND4X1 U58 ( .A(n190), .B(n189), .C(n193), .D(n188), .Y(res_spec[29]) );
  NAND4X1 U59 ( .A(n187), .B(n186), .C(n193), .D(n185), .Y(res_spec[28]) );
  NAND4X1 U60 ( .A(n184), .B(n183), .C(n193), .D(n182), .Y(res_spec[27]) );
  NAND4X1 U61 ( .A(n181), .B(n180), .C(n193), .D(n179), .Y(res_spec[26]) );
  NAND4X1 U62 ( .A(n178), .B(n177), .C(n193), .D(n176), .Y(res_spec[25]) );
  NAND4X1 U63 ( .A(n175), .B(n174), .C(n193), .D(n173), .Y(res_spec[24]) );
  NAND4X1 U64 ( .A(n172), .B(n171), .C(n193), .D(n170), .Y(res_spec[23]) );
  NAND2XL U65 ( .A(n197), .B(n196), .Y(n204) );
  AOI21XL U66 ( .A0(n163), .A1(n157), .B0(exp_ab[8]), .Y(n164) );
  NAND4X2 U67 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(n33) );
  NOR3BX4 U68 ( .AN(n3), .B(n73), .C(exp_a_bias[0]), .Y(n49) );
  NOR4X1 U69 ( .A(manti_a[1]), .B(manti_a[0]), .C(manti_a[4]), .D(manti_a[3]), 
        .Y(n37) );
  NOR4X1 U70 ( .A(manti_b[1]), .B(manti_b[0]), .C(manti_b[4]), .D(manti_b[3]), 
        .Y(n27) );
  NAND4BBX4 U71 ( .AN(n16), .BN(n15), .C(exp_c_bias[1]), .D(exp_c_bias[0]), 
        .Y(n83) );
  NAND2BX4 U72 ( .AN(n197), .B(n168), .Y(n169) );
  NAND2X4 U73 ( .A(operand_b[23]), .B(n12), .Y(n170) );
  NAND2X4 U74 ( .A(operand_b[24]), .B(n12), .Y(n173) );
  BUFX20 U75 ( .A(n191), .Y(n12) );
  NAND2X4 U76 ( .A(operand_b[25]), .B(n12), .Y(n176) );
  NAND2X4 U77 ( .A(operand_b[22]), .B(n12), .Y(n154) );
  INVX12 U78 ( .A(n198), .Y(n191) );
  INVX12 U79 ( .A(n10), .Y(n148) );
  NAND2BX4 U80 ( .AN(n165), .B(n164), .Y(n208) );
  OR2X8 U81 ( .A(n33), .B(n32), .Y(n76) );
  BUFX12 U82 ( .A(n199), .Y(n13) );
  OR2X2 U83 ( .A(n69), .B(n75), .Y(n57) );
  OAI21X1 U84 ( .A0(n77), .A1(n76), .B0(n75), .Y(n78) );
  AOI21X1 U85 ( .A0(n65), .A1(n64), .B0(n83), .Y(n72) );
  OAI2BB1X2 U86 ( .A0N(n83), .A1N(n82), .B0(n81), .Y(n200) );
  NAND3BX2 U87 ( .AN(n83), .B(inv_mask), .C(n53), .Y(n58) );
  BUFX12 U88 ( .A(n199), .Y(n14) );
  NAND4BBX2 U89 ( .AN(n23), .BN(n5), .C(n22), .D(n21), .Y(n62) );
  INVXL U90 ( .A(n53), .Y(n60) );
  OAI21X1 U91 ( .A0(n167), .A1(n166), .B0(n208), .Y(n197) );
  AND4X2 U92 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(n4) );
  NOR4XL U93 ( .A(exp_b_bias[6]), .B(exp_b_bias[7]), .C(exp_b_bias[4]), .D(
        exp_b_bias[5]), .Y(n55) );
  NOR2XL U94 ( .A(exp_b_bias[2]), .B(exp_b_bias[3]), .Y(n56) );
  BUFX8 U95 ( .A(n200), .Y(n10) );
  INVXL U96 ( .A(manti_b[2]), .Y(n26) );
  NOR2XL U97 ( .A(exp_a_bias[2]), .B(exp_a_bias[3]), .Y(n51) );
  NOR4XL U98 ( .A(exp_a_bias[6]), .B(exp_a_bias[7]), .C(exp_a_bias[4]), .D(
        exp_a_bias[5]), .Y(n50) );
  OR4X2 U99 ( .A(manti_c[16]), .B(manti_c[17]), .C(manti_c[14]), .D(
        manti_c[15]), .Y(n5) );
  NOR3XL U100 ( .A(manti_a[8]), .B(manti_a[10]), .C(manti_a[9]), .Y(n34) );
  NOR2XL U101 ( .A(manti_a[11]), .B(manti_a[13]), .Y(n39) );
  NOR2XL U102 ( .A(manti_a[20]), .B(manti_a[22]), .Y(n45) );
  INVXL U103 ( .A(manti_a[21]), .Y(n44) );
  INVXL U104 ( .A(manti_a[2]), .Y(n36) );
  INVXL U105 ( .A(manti_a[15]), .Y(n40) );
  INVXL U106 ( .A(manti_a[12]), .Y(n38) );
  INVXL U107 ( .A(manti_a[18]), .Y(n42) );
  XOR2XL U108 ( .A(sa), .B(sb), .Y(n196) );
  NOR2BXL U109 ( .AN(n205), .B(n206), .Y(n207) );
  NOR3XL U110 ( .A(n156), .B(exp_ab[2]), .C(exp_ab[3]), .Y(n157) );
  OR2XL U111 ( .A(exp_ab[1]), .B(exp_ab[0]), .Y(n156) );
  INVXL U112 ( .A(exp_ab[7]), .Y(n67) );
  NOR2BX4 U113 ( .AN(n7), .B(n151), .Y(n6) );
  NOR2X2 U114 ( .A(n47), .B(n46), .Y(n48) );
  NAND4X1 U115 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(n47) );
  INVX3 U116 ( .A(n75), .Y(n61) );
  NAND2BXL U117 ( .AN(n73), .B(n76), .Y(n79) );
  NAND2BXL U118 ( .AN(n166), .B(n167), .Y(n65) );
  NAND3X4 U119 ( .A(n59), .B(n58), .C(n57), .Y(n151) );
  NOR2X1 U120 ( .A(n18), .B(n17), .Y(n19) );
  AND2X2 U121 ( .A(exp_a_bias[3]), .B(exp_a_bias[2]), .Y(n9) );
  NOR3X1 U122 ( .A(manti_c[12]), .B(manti_c[13]), .C(manti_c[11]), .Y(n22) );
  NOR3X1 U123 ( .A(n162), .B(manti_c[19]), .C(manti_c[18]), .Y(n21) );
  NOR3X1 U124 ( .A(manti_c[22]), .B(manti_c[3]), .C(manti_c[2]), .Y(n159) );
  NAND4X1 U125 ( .A(n161), .B(n160), .C(n159), .D(n158), .Y(n23) );
  NOR3X1 U126 ( .A(manti_c[7]), .B(manti_c[9]), .C(manti_c[8]), .Y(n161) );
  NOR3X1 U127 ( .A(manti_c[4]), .B(manti_c[6]), .C(manti_c[5]), .Y(n160) );
  NOR3X1 U128 ( .A(manti_c[1]), .B(manti_c[21]), .C(manti_c[20]), .Y(n158) );
  NAND3X1 U129 ( .A(n51), .B(n50), .C(n49), .Y(n70) );
  NAND2X1 U130 ( .A(exp_b_bias[7]), .B(exp_b_bias[6]), .Y(n17) );
  OR2X1 U131 ( .A(manti_c[10]), .B(manti_c[0]), .Y(n162) );
  NAND2X1 U132 ( .A(operand_a[23]), .B(n10), .Y(n171) );
  NAND2X1 U133 ( .A(operand_c[23]), .B(n13), .Y(n172) );
  NAND2X1 U134 ( .A(operand_a[24]), .B(n10), .Y(n174) );
  NAND2X1 U135 ( .A(operand_c[24]), .B(n13), .Y(n175) );
  NAND2X1 U136 ( .A(operand_a[25]), .B(n10), .Y(n177) );
  NAND2X1 U137 ( .A(operand_c[25]), .B(n13), .Y(n178) );
  NAND2X1 U138 ( .A(operand_a[26]), .B(n10), .Y(n180) );
  NAND2X1 U139 ( .A(operand_b[26]), .B(n191), .Y(n179) );
  NAND2X1 U140 ( .A(operand_c[26]), .B(n13), .Y(n181) );
  NAND2X1 U141 ( .A(operand_a[27]), .B(n10), .Y(n183) );
  NAND2X1 U142 ( .A(operand_b[27]), .B(n191), .Y(n182) );
  NAND2X1 U143 ( .A(operand_c[27]), .B(n13), .Y(n184) );
  NAND2X1 U144 ( .A(operand_a[28]), .B(n10), .Y(n186) );
  NAND2X1 U145 ( .A(operand_b[28]), .B(n191), .Y(n185) );
  NAND2X1 U146 ( .A(operand_c[28]), .B(n13), .Y(n187) );
  NAND2X1 U147 ( .A(operand_a[29]), .B(n10), .Y(n189) );
  NAND2X1 U148 ( .A(operand_b[29]), .B(n191), .Y(n188) );
  NAND2X1 U149 ( .A(operand_c[29]), .B(n13), .Y(n190) );
  NAND4X1 U150 ( .A(n195), .B(n194), .C(n193), .D(n192), .Y(res_spec[30]) );
  NAND2X1 U151 ( .A(operand_a[30]), .B(n10), .Y(n194) );
  NAND2X1 U152 ( .A(operand_b[30]), .B(n191), .Y(n192) );
  NAND2X1 U153 ( .A(operand_c[30]), .B(n13), .Y(n195) );
  NAND3BX2 U154 ( .AN(n72), .B(n71), .C(n205), .Y(n199) );
  CLKINVX1 U155 ( .A(nj_mode), .Y(n209) );
  NAND4X1 U156 ( .A(n204), .B(n203), .C(n202), .D(n201), .Y(res_spec[31]) );
  NAND2XL U157 ( .A(operand_a[31]), .B(n10), .Y(n201) );
  NAND2BXL U158 ( .AN(n198), .B(operand_b[31]), .Y(n203) );
  NAND4X1 U159 ( .A(n154), .B(n153), .C(n152), .D(n168), .Y(res_spec[22]) );
  NAND2X1 U160 ( .A(operand_a[22]), .B(n10), .Y(n153) );
  NAND2X1 U161 ( .A(operand_c[22]), .B(n13), .Y(n152) );
  NAND2X1 U162 ( .A(operand_c[31]), .B(n13), .Y(n202) );
  OAI2BB1X1 U163 ( .A0N(operand_c[0]), .A1N(n14), .B0(n86), .Y(res_spec[0]) );
  AOI21X1 U164 ( .A0(operand_b[0]), .A1(n11), .B0(n85), .Y(n86) );
  NOR2X1 U165 ( .A(n148), .B(n84), .Y(n85) );
  CLKINVX1 U166 ( .A(operand_a[0]), .Y(n84) );
  OAI2BB1X1 U167 ( .A0N(operand_c[1]), .A1N(n14), .B0(n89), .Y(res_spec[1]) );
  AOI21X1 U168 ( .A0(operand_b[1]), .A1(n11), .B0(n88), .Y(n89) );
  NOR2X1 U169 ( .A(n148), .B(n87), .Y(n88) );
  CLKINVX1 U170 ( .A(operand_a[1]), .Y(n87) );
  OAI2BB1X1 U171 ( .A0N(operand_c[2]), .A1N(n14), .B0(n92), .Y(res_spec[2]) );
  AOI21X1 U172 ( .A0(operand_b[2]), .A1(n11), .B0(n91), .Y(n92) );
  NOR2X1 U173 ( .A(n148), .B(n90), .Y(n91) );
  CLKINVX1 U174 ( .A(operand_a[2]), .Y(n90) );
  OAI2BB1X1 U175 ( .A0N(operand_c[3]), .A1N(n14), .B0(n95), .Y(res_spec[3]) );
  AOI21X1 U176 ( .A0(operand_b[3]), .A1(n11), .B0(n94), .Y(n95) );
  NOR2X1 U177 ( .A(n148), .B(n93), .Y(n94) );
  CLKINVX1 U178 ( .A(operand_a[3]), .Y(n93) );
  OAI2BB1X1 U179 ( .A0N(operand_c[4]), .A1N(n14), .B0(n98), .Y(res_spec[4]) );
  AOI21X1 U180 ( .A0(operand_b[4]), .A1(n11), .B0(n97), .Y(n98) );
  NOR2X1 U181 ( .A(n148), .B(n96), .Y(n97) );
  CLKINVX1 U182 ( .A(operand_a[4]), .Y(n96) );
  OAI2BB1X1 U183 ( .A0N(operand_c[5]), .A1N(n14), .B0(n101), .Y(res_spec[5])
         );
  AOI21X1 U184 ( .A0(operand_b[5]), .A1(n11), .B0(n100), .Y(n101) );
  NOR2X1 U185 ( .A(n148), .B(n99), .Y(n100) );
  CLKINVX1 U186 ( .A(operand_a[5]), .Y(n99) );
  OAI2BB1X1 U187 ( .A0N(operand_c[6]), .A1N(n14), .B0(n104), .Y(res_spec[6])
         );
  AOI21X1 U188 ( .A0(operand_b[6]), .A1(n11), .B0(n103), .Y(n104) );
  NOR2X1 U189 ( .A(n148), .B(n102), .Y(n103) );
  CLKINVX1 U190 ( .A(operand_a[6]), .Y(n102) );
  OAI2BB1X1 U191 ( .A0N(operand_c[7]), .A1N(n14), .B0(n107), .Y(res_spec[7])
         );
  AOI21X1 U192 ( .A0(operand_b[7]), .A1(n11), .B0(n106), .Y(n107) );
  NOR2X1 U193 ( .A(n148), .B(n105), .Y(n106) );
  CLKINVX1 U194 ( .A(operand_a[7]), .Y(n105) );
  OAI2BB1X1 U195 ( .A0N(operand_c[8]), .A1N(n14), .B0(n110), .Y(res_spec[8])
         );
  AOI21X1 U196 ( .A0(operand_b[8]), .A1(n11), .B0(n109), .Y(n110) );
  NOR2X1 U197 ( .A(n148), .B(n108), .Y(n109) );
  CLKINVX1 U198 ( .A(operand_a[8]), .Y(n108) );
  OAI2BB1X1 U199 ( .A0N(operand_c[9]), .A1N(n14), .B0(n113), .Y(res_spec[9])
         );
  AOI21X1 U200 ( .A0(operand_b[9]), .A1(n11), .B0(n112), .Y(n113) );
  NOR2X1 U201 ( .A(n148), .B(n111), .Y(n112) );
  CLKINVX1 U202 ( .A(operand_a[9]), .Y(n111) );
  OAI2BB1X1 U203 ( .A0N(operand_c[10]), .A1N(n14), .B0(n116), .Y(res_spec[10])
         );
  AOI21X1 U204 ( .A0(operand_b[10]), .A1(n11), .B0(n115), .Y(n116) );
  NOR2X1 U205 ( .A(n148), .B(n114), .Y(n115) );
  CLKINVX1 U206 ( .A(operand_a[10]), .Y(n114) );
  OAI2BB1X1 U207 ( .A0N(operand_c[11]), .A1N(n14), .B0(n119), .Y(res_spec[11])
         );
  AOI21X1 U208 ( .A0(operand_b[11]), .A1(n11), .B0(n118), .Y(n119) );
  NOR2X1 U209 ( .A(n148), .B(n117), .Y(n118) );
  CLKINVX1 U210 ( .A(operand_a[11]), .Y(n117) );
  OAI2BB1X1 U211 ( .A0N(operand_c[12]), .A1N(n14), .B0(n122), .Y(res_spec[12])
         );
  NOR2X1 U212 ( .A(n148), .B(n120), .Y(n121) );
  CLKINVX1 U213 ( .A(operand_a[12]), .Y(n120) );
  OAI2BB1X1 U214 ( .A0N(operand_c[18]), .A1N(n13), .B0(n140), .Y(res_spec[18])
         );
  NOR2X1 U215 ( .A(n148), .B(n138), .Y(n139) );
  CLKINVX1 U216 ( .A(operand_a[18]), .Y(n138) );
  OAI2BB1X1 U217 ( .A0N(operand_c[19]), .A1N(n13), .B0(n143), .Y(res_spec[19])
         );
  NOR2X1 U218 ( .A(n148), .B(n141), .Y(n142) );
  CLKINVX1 U219 ( .A(operand_a[19]), .Y(n141) );
  OAI2BB1X1 U220 ( .A0N(operand_c[20]), .A1N(n13), .B0(n146), .Y(res_spec[20])
         );
  NOR2X1 U221 ( .A(n148), .B(n144), .Y(n145) );
  CLKINVX1 U222 ( .A(operand_a[20]), .Y(n144) );
  OAI2BB1X1 U223 ( .A0N(operand_c[21]), .A1N(n13), .B0(n150), .Y(res_spec[21])
         );
  NOR2X1 U224 ( .A(n148), .B(n147), .Y(n149) );
  CLKINVX1 U225 ( .A(operand_a[21]), .Y(n147) );
  OAI2BB1X1 U226 ( .A0N(operand_c[13]), .A1N(n14), .B0(n125), .Y(res_spec[13])
         );
  NOR2X1 U227 ( .A(n148), .B(n123), .Y(n124) );
  CLKINVX1 U228 ( .A(operand_a[13]), .Y(n123) );
  OAI2BB1X1 U229 ( .A0N(operand_c[14]), .A1N(n14), .B0(n128), .Y(res_spec[14])
         );
  AOI21X1 U230 ( .A0(operand_b[14]), .A1(n12), .B0(n127), .Y(n128) );
  NOR2X1 U231 ( .A(n148), .B(n126), .Y(n127) );
  CLKINVX1 U232 ( .A(operand_a[14]), .Y(n126) );
  OAI2BB1X1 U233 ( .A0N(operand_c[15]), .A1N(n14), .B0(n131), .Y(res_spec[15])
         );
  AOI21X1 U234 ( .A0(operand_b[15]), .A1(n12), .B0(n130), .Y(n131) );
  NOR2X1 U235 ( .A(n148), .B(n129), .Y(n130) );
  CLKINVX1 U236 ( .A(operand_a[15]), .Y(n129) );
  OAI2BB1X1 U237 ( .A0N(operand_c[16]), .A1N(n14), .B0(n134), .Y(res_spec[16])
         );
  AOI21X1 U238 ( .A0(operand_b[16]), .A1(n12), .B0(n133), .Y(n134) );
  NOR2X1 U239 ( .A(n148), .B(n132), .Y(n133) );
  CLKINVX1 U240 ( .A(operand_a[16]), .Y(n132) );
  OAI2BB1X1 U241 ( .A0N(operand_c[17]), .A1N(n14), .B0(n137), .Y(res_spec[17])
         );
  AOI21X1 U242 ( .A0(operand_b[17]), .A1(n12), .B0(n136), .Y(n137) );
  NOR2X1 U243 ( .A(n148), .B(n135), .Y(n136) );
  CLKINVX1 U244 ( .A(operand_a[17]), .Y(n135) );
  OAI2BB1X4 U245 ( .A0N(n83), .A1N(n60), .B0(n6), .Y(n166) );
endmodule


module mul_stage ( sa, sb, sc, exp_a, exp_b, exp_c, a_frac, b_frac, c_frac, 
        inv_mask, s_tmp, final_m, exp_tmp, c_frac_align_h, c_frac_align_m, 
        c_frac_align_l, carry, sum, exp_ab );
  input [7:0] exp_a;
  input [7:0] exp_b;
  input [7:0] exp_c;
  input [23:0] a_frac;
  input [23:0] b_frac;
  input [23:0] c_frac;
  output [9:0] exp_tmp;
  output [25:0] c_frac_align_h;
  output [47:0] c_frac_align_m;
  output [23:0] c_frac_align_l;
  output [47:0] carry;
  output [47:0] sum;
  output [8:0] exp_ab;
  input sa, sb, sc;
  output inv_mask, s_tmp, final_m;
  wire   n2;
  wire   [6:0] shf_num;

  sign_handler sign_handler_inst ( .sa(sa), .sb(sb), .sc(sc), .s_tmp(s_tmp), 
        .final_m(final_m) );
  exp_handler exp_handler_inst ( .exp_a(exp_a), .exp_b(exp_b), .exp_c(exp_c), 
        .exp_tmp(exp_tmp), .shf_num(shf_num), .exp_ab(exp_ab) );
  align_shf_74 align_shf_74_inst ( .inv_mask(inv_mask), .c_frac(c_frac), 
        .shf_num(shf_num), .shf_res({c_frac_align_h, c_frac_align_m, 
        c_frac_align_l}) );
  mul_24x24 mul_24x24_inst ( .a(a_frac), .b(b_frac), .carry(carry), .sum(sum)
         );
  XNOR2X4 U1 ( .A(sa), .B(n2), .Y(inv_mask) );
  XNOR2X4 U2 ( .A(sc), .B(sb), .Y(n2) );
endmodule


module unpackage_2 ( nj_mode, operand, s, exp_bias, exp, frac );
  input [31:0] operand;
  output [7:0] exp_bias;
  output [7:0] exp;
  output [23:0] frac;
  input nj_mode;
  output s;
  wire   n76, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74;

  NOR2X2 U3 ( .A(n13), .B(n44), .Y(frac[19]) );
  NOR2X2 U4 ( .A(n13), .B(n54), .Y(frac[22]) );
  NOR2X2 U5 ( .A(n13), .B(n38), .Y(frac[11]) );
  NOR2X2 U6 ( .A(n13), .B(n42), .Y(frac[17]) );
  NOR2X2 U7 ( .A(n13), .B(n53), .Y(frac[21]) );
  CLKAND2X3 U8 ( .A(n1), .B(operand[15]), .Y(frac[15]) );
  CLKINVX1 U9 ( .A(n13), .Y(n1) );
  CLKAND2X3 U10 ( .A(n2), .B(operand[16]), .Y(frac[16]) );
  CLKINVX1 U11 ( .A(n13), .Y(n2) );
  NOR2X2 U12 ( .A(n13), .B(n39), .Y(frac[12]) );
  NOR2X2 U13 ( .A(n13), .B(n33), .Y(frac[5]) );
  AND2X2 U14 ( .A(n3), .B(operand[7]), .Y(frac[7]) );
  INVX1 U15 ( .A(n13), .Y(n3) );
  NOR2X2 U16 ( .A(n13), .B(n28), .Y(frac[0]) );
  NOR2X6 U17 ( .A(n22), .B(n34), .Y(frac[6]) );
  NOR2X6 U18 ( .A(n22), .B(n30), .Y(frac[2]) );
  BUFX20 U19 ( .A(n13), .Y(n22) );
  INVX4 U20 ( .A(operand[22]), .Y(n54) );
  NOR2X4 U21 ( .A(n22), .B(n37), .Y(frac[10]) );
  NAND2X6 U22 ( .A(n6), .B(operand[25]), .Y(n9) );
  CLKBUFX3 U23 ( .A(operand[31]), .Y(s) );
  NAND2X6 U24 ( .A(exp_bias[0]), .B(n69), .Y(n70) );
  NOR2X8 U25 ( .A(frac[23]), .B(nj_mode), .Y(n65) );
  NOR2X4 U26 ( .A(n74), .B(n73), .Y(n10) );
  NAND2X6 U27 ( .A(operand[28]), .B(n11), .Y(n74) );
  OAI2BB1X4 U28 ( .A0N(n65), .A1N(n66), .B0(n64), .Y(n76) );
  INVX20 U29 ( .A(operand[23]), .Y(n64) );
  AND4X4 U30 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(n4) );
  NOR2X8 U31 ( .A(operand[26]), .B(operand[25]), .Y(n25) );
  NOR2X8 U32 ( .A(operand[28]), .B(operand[27]), .Y(n26) );
  NAND3BX4 U33 ( .AN(nj_mode), .B(n66), .C(n4), .Y(n67) );
  NAND2X6 U34 ( .A(n63), .B(n62), .Y(n66) );
  OAI2BB1X4 U35 ( .A0N(n65), .A1N(n66), .B0(n64), .Y(exp_bias[0]) );
  INVX16 U36 ( .A(operand[21]), .Y(n53) );
  NOR2X8 U37 ( .A(operand[30]), .B(operand[29]), .Y(n27) );
  NAND4X6 U38 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(frac[23]) );
  NOR2X8 U39 ( .A(n23), .B(n55), .Y(frac[20]) );
  NOR2X8 U40 ( .A(n52), .B(n51), .Y(n63) );
  NAND3X4 U41 ( .A(n47), .B(n46), .C(n45), .Y(n52) );
  NOR2X8 U42 ( .A(operand[24]), .B(operand[23]), .Y(n24) );
  NAND3X4 U43 ( .A(n50), .B(n49), .C(n48), .Y(n51) );
  NOR2X4 U44 ( .A(operand[1]), .B(operand[5]), .Y(n50) );
  NAND3X4 U45 ( .A(n59), .B(n58), .C(n57), .Y(n60) );
  NOR2X4 U46 ( .A(operand[13]), .B(operand[17]), .Y(n59) );
  NOR2X6 U47 ( .A(n61), .B(n60), .Y(n62) );
  NAND4X6 U48 ( .A(n56), .B(n55), .C(n54), .D(n53), .Y(n61) );
  NOR2X4 U49 ( .A(operand[3]), .B(operand[4]), .Y(n49) );
  NOR2X4 U50 ( .A(operand[0]), .B(operand[2]), .Y(n48) );
  NOR2X4 U51 ( .A(operand[15]), .B(operand[16]), .Y(n58) );
  NOR2X4 U52 ( .A(operand[12]), .B(operand[14]), .Y(n57) );
  INVX4 U53 ( .A(n76), .Y(exp[0]) );
  NOR2X2 U54 ( .A(n22), .B(n32), .Y(frac[4]) );
  NOR2X1 U55 ( .A(n22), .B(n29), .Y(frac[1]) );
  NOR2X1 U56 ( .A(n22), .B(n35), .Y(frac[8]) );
  NOR2X2 U57 ( .A(n22), .B(n31), .Y(frac[3]) );
  CLKINVX6 U58 ( .A(n12), .Y(n6) );
  NAND2X8 U59 ( .A(n8), .B(n9), .Y(exp[2]) );
  BUFX20 U60 ( .A(n13), .Y(n23) );
  NOR2X2 U61 ( .A(n23), .B(n43), .Y(frac[18]) );
  NOR2X2 U62 ( .A(n23), .B(n40), .Y(frac[13]) );
  NOR2X1 U63 ( .A(n23), .B(n41), .Y(frac[14]) );
  CLKAND2X12 U64 ( .A(operand[24]), .B(n76), .Y(n12) );
  NOR2X6 U65 ( .A(n72), .B(n71), .Y(n11) );
  NAND4X8 U66 ( .A(operand[25]), .B(operand[26]), .C(operand[24]), .D(
        operand[23]), .Y(n72) );
  CLKINVX12 U67 ( .A(operand[27]), .Y(n71) );
  CLKAND2X12 U68 ( .A(nj_mode), .B(n4), .Y(n13) );
  NAND2X4 U69 ( .A(n12), .B(n7), .Y(n8) );
  CLKINVX1 U70 ( .A(operand[25]), .Y(n7) );
  XNOR2X4 U71 ( .A(operand[26]), .B(n70), .Y(exp[3]) );
  CLKXOR2X2 U72 ( .A(n11), .B(operand[28]), .Y(exp[5]) );
  XNOR2X1 U73 ( .A(operand[30]), .B(n10), .Y(exp[7]) );
  AND2X2 U74 ( .A(operand[24]), .B(operand[25]), .Y(n69) );
  NOR2X4 U75 ( .A(operand[19]), .B(operand[18]), .Y(n56) );
  CLKINVX8 U76 ( .A(operand[20]), .Y(n55) );
  INVX1 U77 ( .A(operand[3]), .Y(n31) );
  INVX1 U78 ( .A(operand[4]), .Y(n32) );
  BUFX2 U79 ( .A(operand[29]), .Y(exp_bias[6]) );
  BUFX2 U80 ( .A(operand[27]), .Y(exp_bias[4]) );
  BUFX2 U81 ( .A(operand[30]), .Y(exp_bias[7]) );
  BUFX2 U82 ( .A(operand[28]), .Y(exp_bias[5]) );
  BUFX2 U83 ( .A(operand[25]), .Y(exp_bias[2]) );
  BUFX2 U84 ( .A(operand[26]), .Y(exp_bias[3]) );
  BUFX2 U85 ( .A(operand[24]), .Y(exp_bias[1]) );
  XNOR2X1 U86 ( .A(operand[23]), .B(operand[24]), .Y(n68) );
  NOR2X4 U87 ( .A(operand[6]), .B(operand[8]), .Y(n45) );
  NOR2X4 U88 ( .A(operand[9]), .B(operand[10]), .Y(n46) );
  NOR2X4 U89 ( .A(operand[7]), .B(operand[11]), .Y(n47) );
  INVX1 U90 ( .A(operand[1]), .Y(n29) );
  INVX1 U91 ( .A(operand[0]), .Y(n28) );
  INVX1 U92 ( .A(operand[11]), .Y(n38) );
  INVX1 U93 ( .A(operand[17]), .Y(n42) );
  INVX1 U94 ( .A(operand[14]), .Y(n41) );
  INVX1 U95 ( .A(operand[19]), .Y(n44) );
  INVX1 U96 ( .A(operand[13]), .Y(n40) );
  INVX1 U97 ( .A(operand[10]), .Y(n37) );
  INVX1 U98 ( .A(operand[6]), .Y(n34) );
  NOR2X2 U99 ( .A(n22), .B(n36), .Y(frac[9]) );
  INVX1 U100 ( .A(operand[9]), .Y(n36) );
  INVX1 U101 ( .A(operand[8]), .Y(n35) );
  INVX1 U102 ( .A(operand[5]), .Y(n33) );
  INVX1 U103 ( .A(operand[2]), .Y(n30) );
  INVX1 U104 ( .A(operand[12]), .Y(n39) );
  INVX1 U105 ( .A(operand[18]), .Y(n43) );
  CLKINVX1 U106 ( .A(operand[29]), .Y(n73) );
  NAND2X4 U107 ( .A(n68), .B(n67), .Y(exp[1]) );
  XOR2X4 U108 ( .A(n71), .B(n72), .Y(exp[4]) );
  XOR2X4 U109 ( .A(n73), .B(n74), .Y(exp[6]) );
endmodule


module maf ( clk, nj_mode, op_vld, a, b, c, res, res_rdy );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  output [31:0] res;
  input clk, nj_mode, op_vld;
  output res_rdy;
  wire   sa, sb, sc, inv_mask, s_tmp, final_m, op_vld_r0, nj_mode_r0, s_tmp_r0,
         final_m_r0, inv_mask_r0, spec_mask, spec_mask_r0, frac_inter_h_s,
         nj_mode_r1, op_vld_r1, s_tmp_r1, final_m_r1, frac_inter_h_s_r1,
         spec_mask_r1, s_final, zero_m, denorm_m, nj_mode_r2, op_vld_r2,
         s_final_r2, denorm_m_r2, spec_mask_r2, n245, n299, n306, n312, n313,
         n316, n336, n345, n348, n355, n356, n357, n363, n367, n369, n370,
         n371, n372, n459, n460;
  wire   [7:0] ea_bias;
  wire   [7:0] ea;
  wire   [23:0] a_frac;
  wire   [7:0] eb_bias;
  wire   [7:0] eb;
  wire   [23:0] b_frac;
  wire   [7:0] ec_bias;
  wire   [7:0] ec;
  wire   [23:0] c_frac;
  wire   [9:0] exp_tmp;
  wire   [25:0] c_frac_align_h;
  wire   [47:0] c_frac_align_m;
  wire   [23:0] c_frac_align_l;
  wire   [47:0] carry;
  wire   [47:0] sum;
  wire   [8:0] exp_ab;
  wire   [9:0] exp_tmp_r0;
  wire   [25:0] c_frac_align_h_r0;
  wire   [47:0] c_frac_align_m_r0;
  wire   [23:0] c_frac_align_l_r0;
  wire   [47:0] carry_r0;
  wire   [47:0] sum_r0;
  wire   [31:0] res_spec;
  wire   [31:0] res_spec_r0;
  wire   [74:0] frac_inter;
  wire   [9:0] exp_tmp_r1;
  wire   [74:0] frac_inter_r1;
  wire   [31:0] res_spec_r1;
  wire   [9:0] exp_norm;
  wire   [26:0] frac_inter_norm;
  wire   [9:0] exp_norm_r2;
  wire   [26:0] frac_inter_norm_r2;
  wire   [31:0] res_spec_r2;
  wire   [31:0] res_w;

  DFFTRX4 sum_r0_reg_30_ ( .D(sum[30]), .RN(op_vld), .CK(clk), .Q(sum_r0[30]), 
        .QN() );
  DFFTRX4 sum_r0_reg_29_ ( .D(sum[29]), .RN(op_vld), .CK(clk), .Q(sum_r0[29]), 
        .QN() );
  DFFTRX4 sum_r0_reg_22_ ( .D(sum[22]), .RN(op_vld), .CK(clk), .Q(sum_r0[22]), 
        .QN() );
  DFFTRX4 sum_r0_reg_15_ ( .D(sum[15]), .RN(op_vld), .CK(clk), .Q(sum_r0[15]), 
        .QN() );
  DFFTRX4 sum_r0_reg_14_ ( .D(sum[14]), .RN(op_vld), .CK(clk), .Q(sum_r0[14]), 
        .QN() );
  DFFTRX4 sum_r0_reg_13_ ( .D(sum[13]), .RN(op_vld), .CK(clk), .Q(sum_r0[13]), 
        .QN() );
  DFFTRX4 sum_r0_reg_12_ ( .D(sum[12]), .RN(op_vld), .CK(clk), .Q(sum_r0[12]), 
        .QN() );
  DFFTRX4 sum_r0_reg_11_ ( .D(sum[11]), .RN(op_vld), .CK(clk), .Q(sum_r0[11]), 
        .QN() );
  DFFTRX4 sum_r0_reg_10_ ( .D(sum[10]), .RN(op_vld), .CK(clk), .Q(sum_r0[10]), 
        .QN() );
  DFFTRX4 sum_r0_reg_9_ ( .D(sum[9]), .RN(op_vld), .CK(clk), .Q(sum_r0[9]), 
        .QN() );
  DFFTRX4 sum_r0_reg_7_ ( .D(sum[7]), .RN(op_vld), .CK(clk), .Q(sum_r0[7]), 
        .QN() );
  DFFTRX4 sum_r0_reg_6_ ( .D(sum[6]), .RN(op_vld), .CK(clk), .Q(sum_r0[6]), 
        .QN() );
  DFFTRX4 sum_r0_reg_5_ ( .D(sum[5]), .RN(op_vld), .CK(clk), .Q(sum_r0[5]), 
        .QN() );
  DFFTRX4 sum_r0_reg_4_ ( .D(sum[4]), .RN(op_vld), .CK(clk), .Q(sum_r0[4]), 
        .QN() );
  DFFTRX4 sum_r0_reg_3_ ( .D(sum[3]), .RN(op_vld), .CK(clk), .Q(sum_r0[3]), 
        .QN() );
  DFFTRX4 sum_r0_reg_2_ ( .D(sum[2]), .RN(op_vld), .CK(clk), .Q(sum_r0[2]), 
        .QN() );
  DFFTRX4 sum_r0_reg_1_ ( .D(sum[1]), .RN(op_vld), .CK(clk), .Q(sum_r0[1]), 
        .QN() );
  DFFTRX4 inv_mask_r0_reg ( .D(inv_mask), .RN(op_vld), .CK(clk), .Q(
        inv_mask_r0), .QN() );
  DFFTRX4 carry_r0_reg_45_ ( .D(carry[45]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[45]), .QN() );
  DFFTRX4 carry_r0_reg_31_ ( .D(carry[31]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[31]), .QN() );
  DFFTRX4 carry_r0_reg_30_ ( .D(carry[30]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[30]), .QN() );
  DFFTRX4 carry_r0_reg_29_ ( .D(carry[29]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[29]), .QN() );
  DFFTRX4 carry_r0_reg_28_ ( .D(carry[28]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[28]), .QN() );
  DFFTRX4 carry_r0_reg_27_ ( .D(carry[27]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[27]), .QN() );
  DFFTRX4 carry_r0_reg_26_ ( .D(carry[26]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[26]), .QN() );
  DFFTRX4 carry_r0_reg_25_ ( .D(carry[25]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[25]), .QN() );
  DFFTRX4 carry_r0_reg_23_ ( .D(carry[23]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[23]), .QN() );
  DFFTRX4 carry_r0_reg_22_ ( .D(carry[22]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[22]), .QN() );
  DFFTRX4 carry_r0_reg_21_ ( .D(carry[21]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[21]), .QN() );
  DFFTRX4 carry_r0_reg_15_ ( .D(carry[15]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[15]), .QN() );
  DFFTRX4 carry_r0_reg_14_ ( .D(carry[14]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[14]), .QN() );
  DFFTRX4 carry_r0_reg_13_ ( .D(carry[13]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[13]), .QN() );
  DFFTRX4 carry_r0_reg_12_ ( .D(carry[12]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[12]), .QN() );
  DFFTRX4 carry_r0_reg_11_ ( .D(carry[11]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[11]), .QN() );
  DFFTRX4 carry_r0_reg_10_ ( .D(carry[10]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[10]), .QN() );
  DFFTRX4 carry_r0_reg_9_ ( .D(carry[9]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[9]), .QN() );
  DFFTRX4 carry_r0_reg_8_ ( .D(carry[8]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[8]), .QN() );
  DFFTRX4 carry_r0_reg_7_ ( .D(carry[7]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[7]), .QN() );
  DFFTRX4 carry_r0_reg_6_ ( .D(carry[6]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[6]), .QN() );
  DFFTRX4 carry_r0_reg_5_ ( .D(carry[5]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[5]), .QN() );
  DFFTRX4 carry_r0_reg_4_ ( .D(carry[4]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[4]), .QN() );
  DFFTRX4 carry_r0_reg_3_ ( .D(carry[3]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[3]), .QN() );
  DFFTRX4 carry_r0_reg_1_ ( .D(carry[1]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[1]), .QN() );
  DFFTRX4 carry_r0_reg_0_ ( .D(carry[0]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[0]), .QN() );
  DFFHQX4 exp_tmp_r1_reg_0_ ( .D(exp_tmp_r0[0]), .CK(clk), .Q(exp_tmp_r1[0])
         );
  unpackage_2 unpackage_a ( .nj_mode(nj_mode), .operand(a), .s(sa), .exp_bias(
        ea_bias), .exp(ea), .frac(a_frac) );
  unpackage_1 unpackage_b ( .nj_mode(nj_mode), .operand(b), .s(sb), .exp_bias(
        eb_bias), .exp(eb), .frac(b_frac) );
  unpackage_0 unpackage_c ( .nj_mode(nj_mode), .operand(c), .s(sc), .exp_bias(
        ec_bias), .exp(ec), .frac(c_frac) );
  mul_stage mul_stage_inst ( .sa(sa), .sb(sb), .sc(sc), .exp_a(ea), .exp_b(eb), 
        .exp_c(ec), .a_frac({a_frac[23:22], n370, n371, a_frac[19:18], n357, 
        a_frac[16:15], n372, a_frac[13], n369, a_frac[11:9], n355, a_frac[7:6], 
        n356, a_frac[4:2], n367, n363}), .b_frac({b_frac[23:22], n299, 
        b_frac[20], n306, b_frac[18:6], n336, b_frac[4:0]}), .c_frac(c_frac), 
        .inv_mask(inv_mask), .s_tmp(s_tmp), .final_m(final_m), .exp_tmp(
        exp_tmp), .c_frac_align_h(c_frac_align_h), .c_frac_align_m(
        c_frac_align_m), .c_frac_align_l(c_frac_align_l), .carry(carry), .sum(
        sum), .exp_ab(exp_ab) );
  spec_handler spec_handler_inst ( .nj_mode(nj_mode), .inv_mask(inv_mask), 
        .operand_a(a), .operand_b(b), .operand_c(c), .sa(sa), .sb(sb), 
        .exp_a_bias(ea_bias), .exp_b_bias(eb_bias), .exp_c_bias(ec_bias), 
        .manti_a({a_frac[22], n370, n371, n348, a_frac[18], n357, 
        a_frac[16:15], n372, a_frac[13], n369, a_frac[11:9], n355, n345, 
        a_frac[6], n356, a_frac[4:2], n367, n363}), .manti_b({b_frac[22], n299, 
        b_frac[20], n306, b_frac[18:15], n312, b_frac[13:11], n316, 
        b_frac[9:6], n336, b_frac[4:0]}), .manti_c(c_frac[22:0]), .exp_ab(
        exp_ab), .spec_mask(spec_mask), .res_spec(res_spec) );
  add_stage add_stage_inst ( .c_frac_align_h(c_frac_align_h_r0), 
        .c_frac_align_m(c_frac_align_m_r0), .c_frac_align_l(c_frac_align_l_r0), 
        .carry(carry_r0), .sum(sum_r0), .inv_mask(inv_mask_r0), 
        .frac_inter_h_s(frac_inter_h_s), .frac_inter(frac_inter) );
  norm_stage norm_stage_inst ( .s_tmp(s_tmp_r1), .final_m(final_m_r1), 
        .frac_inter_h_s(frac_inter_h_s_r1), .exp_tmp(exp_tmp_r1), .frac_inter(
        frac_inter_r1), .s_final(s_final), .exp_norm(exp_norm), 
        .frac_inter_norm(frac_inter_norm), .zero_m(zero_m), .denorm_m(denorm_m) );
  round_stage round_stage_inst ( .nj_mode(nj_mode_r2), .s_final(s_final_r2), 
        .exp_norm(exp_norm_r2), .frac_inter_norm(frac_inter_norm_r2), 
        .denorm_m(denorm_m_r2), .zero_m(n313), .res(res_w) );
  DFFQX1 exp_norm_r2_reg_1_ ( .D(exp_norm[1]), .CK(clk), .Q(exp_norm_r2[1]) );
  DFFQX1 exp_norm_r2_reg_3_ ( .D(exp_norm[3]), .CK(clk), .Q(exp_norm_r2[3]) );
  DFFQXL frac_inter_h_s_r1_reg ( .D(frac_inter_h_s), .CK(clk), .Q(
        frac_inter_h_s_r1) );
  DFFQX1 s_tmp_r1_reg ( .D(s_tmp_r0), .CK(clk), .Q(s_tmp_r1) );
  DFFQX1 final_m_r1_reg ( .D(final_m_r0), .CK(clk), .Q(final_m_r1) );
  DFFQX1 s_final_r2_reg ( .D(s_final), .CK(clk), .Q(s_final_r2) );
  DFFQX1 nj_mode_r2_reg ( .D(nj_mode_r1), .CK(clk), .Q(nj_mode_r2) );
  DFFQX1 exp_norm_r2_reg_9_ ( .D(exp_norm[9]), .CK(clk), .Q(exp_norm_r2[9]) );
  DFFQX1 exp_norm_r2_reg_8_ ( .D(exp_norm[8]), .CK(clk), .Q(exp_norm_r2[8]) );
  DFFQX1 exp_norm_r2_reg_7_ ( .D(exp_norm[7]), .CK(clk), .Q(exp_norm_r2[7]) );
  DFFTRX1 c_frac_align_h_r0_reg_24_ ( .D(c_frac_align_h[24]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[24]), .QN() );
  DFFQX2 exp_tmp_r1_reg_5_ ( .D(exp_tmp_r0[5]), .CK(clk), .Q(exp_tmp_r1[5]) );
  DFFQX1 exp_tmp_r1_reg_9_ ( .D(exp_tmp_r0[9]), .CK(clk), .Q(exp_tmp_r1[9]) );
  DFFQX1 frac_inter_norm_r2_reg_26_ ( .D(frac_inter_norm[26]), .CK(clk), .Q(
        frac_inter_norm_r2[26]) );
  DFFQX1 exp_norm_r2_reg_6_ ( .D(exp_norm[6]), .CK(clk), .Q(exp_norm_r2[6]) );
  DFFQX1 exp_norm_r2_reg_0_ ( .D(exp_norm[0]), .CK(clk), .Q(exp_norm_r2[0]) );
  DFFQX1 frac_inter_norm_r2_reg_24_ ( .D(frac_inter_norm[24]), .CK(clk), .Q(
        frac_inter_norm_r2[24]) );
  DFFQX1 frac_inter_norm_r2_reg_22_ ( .D(frac_inter_norm[22]), .CK(clk), .Q(
        frac_inter_norm_r2[22]) );
  DFFQX1 frac_inter_norm_r2_reg_19_ ( .D(frac_inter_norm[19]), .CK(clk), .Q(
        frac_inter_norm_r2[19]) );
  DFFQX1 frac_inter_norm_r2_reg_20_ ( .D(frac_inter_norm[20]), .CK(clk), .Q(
        frac_inter_norm_r2[20]) );
  DFFQX1 frac_inter_norm_r2_reg_4_ ( .D(frac_inter_norm[4]), .CK(clk), .Q(
        frac_inter_norm_r2[4]) );
  DFFQX1 frac_inter_norm_r2_reg_25_ ( .D(frac_inter_norm[25]), .CK(clk), .Q(
        frac_inter_norm_r2[25]) );
  DFFTRX1 spec_mask_r0_reg ( .D(spec_mask), .RN(op_vld), .CK(clk), .Q(
        spec_mask_r0), .QN() );
  DFFTRX1 res_spec_r0_reg_31_ ( .D(res_spec[31]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[31]), .QN() );
  DFFTRX1 res_spec_r0_reg_30_ ( .D(res_spec[30]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[30]), .QN() );
  DFFTRX1 res_spec_r0_reg_29_ ( .D(res_spec[29]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[29]), .QN() );
  DFFTRX1 res_spec_r0_reg_27_ ( .D(res_spec[27]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[27]), .QN() );
  DFFTRX1 res_spec_r0_reg_26_ ( .D(res_spec[26]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[26]), .QN() );
  DFFTRX1 res_spec_r0_reg_25_ ( .D(res_spec[25]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[25]), .QN() );
  DFFTRX1 res_spec_r0_reg_24_ ( .D(res_spec[24]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[24]), .QN() );
  DFFTRX1 res_spec_r0_reg_23_ ( .D(res_spec[23]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[23]), .QN() );
  DFFTRX1 res_spec_r0_reg_22_ ( .D(res_spec[22]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[22]), .QN() );
  DFFTRX1 res_spec_r0_reg_21_ ( .D(res_spec[21]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[21]), .QN() );
  DFFTRX1 res_spec_r0_reg_20_ ( .D(res_spec[20]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[20]), .QN() );
  DFFTRX1 res_spec_r0_reg_19_ ( .D(res_spec[19]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[19]), .QN() );
  DFFTRX1 res_spec_r0_reg_18_ ( .D(res_spec[18]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[18]), .QN() );
  DFFTRX1 res_spec_r0_reg_17_ ( .D(res_spec[17]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[17]), .QN() );
  DFFTRX1 res_spec_r0_reg_16_ ( .D(res_spec[16]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[16]), .QN() );
  DFFTRX1 res_spec_r0_reg_15_ ( .D(res_spec[15]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[15]), .QN() );
  DFFTRX1 res_spec_r0_reg_14_ ( .D(res_spec[14]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[14]), .QN() );
  DFFTRX1 res_spec_r0_reg_13_ ( .D(res_spec[13]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[13]), .QN() );
  DFFTRX1 res_spec_r0_reg_12_ ( .D(res_spec[12]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[12]), .QN() );
  DFFTRX1 res_spec_r0_reg_11_ ( .D(res_spec[11]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[11]), .QN() );
  DFFTRX1 res_spec_r0_reg_10_ ( .D(res_spec[10]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[10]), .QN() );
  DFFTRX1 res_spec_r0_reg_9_ ( .D(res_spec[9]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[9]), .QN() );
  DFFTRX1 res_spec_r0_reg_8_ ( .D(res_spec[8]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[8]), .QN() );
  DFFTRX1 res_spec_r0_reg_7_ ( .D(res_spec[7]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[7]), .QN() );
  DFFTRX1 res_spec_r0_reg_6_ ( .D(res_spec[6]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[6]), .QN() );
  DFFTRX1 res_spec_r0_reg_5_ ( .D(res_spec[5]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[5]), .QN() );
  DFFTRX1 res_spec_r0_reg_4_ ( .D(res_spec[4]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[4]), .QN() );
  DFFTRX1 res_spec_r0_reg_3_ ( .D(res_spec[3]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[3]), .QN() );
  DFFTRX1 res_spec_r0_reg_2_ ( .D(res_spec[2]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[2]), .QN() );
  DFFTRX1 res_spec_r0_reg_1_ ( .D(res_spec[1]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[1]), .QN() );
  DFFTRX1 res_spec_r0_reg_0_ ( .D(res_spec[0]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[0]), .QN() );
  MDFFHQX2 res_reg_31_ ( .D0(res_w[31]), .D1(res_spec_r2[31]), .S0(
        spec_mask_r2), .CK(clk), .Q(res[31]) );
  MDFFHQX2 res_reg_27_ ( .D0(res_w[27]), .D1(res_spec_r2[27]), .S0(
        spec_mask_r2), .CK(clk), .Q(res[27]) );
  MDFFHQX2 res_reg_0_ ( .D0(res_w[0]), .D1(res_spec_r2[0]), .S0(n459), .CK(clk), .Q(res[0]) );
  DFFTRX1 s_tmp_r0_reg ( .D(s_tmp), .RN(op_vld), .CK(clk), .Q(s_tmp_r0), .QN()
         );
  DFFTRX1 final_m_r0_reg ( .D(final_m), .RN(op_vld), .CK(clk), .Q(final_m_r0), 
        .QN() );
  DFFTRX1 exp_tmp_r0_reg_4_ ( .D(exp_tmp[4]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[4]), .QN() );
  DFFTRX1 exp_tmp_r0_reg_2_ ( .D(exp_tmp[2]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[2]), .QN() );
  DFFTRX1 exp_tmp_r0_reg_1_ ( .D(exp_tmp[1]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[1]), .QN() );
  DFFTRX1 sum_r0_reg_45_ ( .D(sum[45]), .RN(op_vld), .CK(clk), .Q(sum_r0[45]), 
        .QN() );
  DFFTRX1 sum_r0_reg_43_ ( .D(sum[43]), .RN(op_vld), .CK(clk), .Q(sum_r0[43]), 
        .QN() );
  DFFTRX1 sum_r0_reg_38_ ( .D(sum[38]), .RN(op_vld), .CK(clk), .Q(sum_r0[38]), 
        .QN() );
  DFFTRX1 sum_r0_reg_37_ ( .D(sum[37]), .RN(op_vld), .CK(clk), .Q(sum_r0[37]), 
        .QN() );
  DFFTRX1 sum_r0_reg_33_ ( .D(sum[33]), .RN(op_vld), .CK(clk), .Q(sum_r0[33]), 
        .QN() );
  DFFTRX1 carry_r0_reg_41_ ( .D(carry[41]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[41]), .QN() );
  DFFTRX1 carry_r0_reg_39_ ( .D(carry[39]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[39]), .QN() );
  DFFTRX1 carry_r0_reg_38_ ( .D(carry[38]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[38]), .QN() );
  DFFTRX1 carry_r0_reg_37_ ( .D(carry[37]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[37]), .QN() );
  DFFTRX1 carry_r0_reg_34_ ( .D(carry[34]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[34]), .QN() );
  DFFTRX1 exp_tmp_r0_reg_9_ ( .D(exp_tmp[9]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[9]), .QN() );
  DFFTRX1 exp_tmp_r0_reg_8_ ( .D(exp_tmp[8]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[8]), .QN() );
  DFFTRX1 carry_r0_reg_33_ ( .D(carry[33]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[33]), .QN() );
  DFFTRX1 carry_r0_reg_32_ ( .D(carry[32]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[32]), .QN() );
  DFFQX1 frac_inter_norm_r2_reg_23_ ( .D(frac_inter_norm[23]), .CK(clk), .Q(
        frac_inter_norm_r2[23]) );
  DFFQX1 spec_mask_r2_reg ( .D(spec_mask_r1), .CK(clk), .Q(spec_mask_r2) );
  DFFHQX4 exp_tmp_r1_reg_1_ ( .D(exp_tmp_r0[1]), .CK(clk), .Q(exp_tmp_r1[1])
         );
  DFFHQX4 exp_tmp_r1_reg_3_ ( .D(exp_tmp_r0[3]), .CK(clk), .Q(exp_tmp_r1[3])
         );
  DFFQX4 exp_tmp_r1_reg_6_ ( .D(exp_tmp_r0[6]), .CK(clk), .Q(exp_tmp_r1[6]) );
  DFFTRX2 carry_r0_reg_20_ ( .D(carry[20]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[20]), .QN() );
  DFFTRX2 carry_r0_reg_24_ ( .D(carry[24]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[24]), .QN() );
  DFFTRX1 sum_r0_reg_42_ ( .D(sum[42]), .RN(op_vld), .CK(clk), .Q(sum_r0[42]), 
        .QN() );
  DFFTRX1 sum_r0_reg_41_ ( .D(sum[41]), .RN(op_vld), .CK(clk), .Q(sum_r0[41]), 
        .QN() );
  DFFTRX1 sum_r0_reg_17_ ( .D(sum[17]), .RN(op_vld), .CK(clk), .Q(sum_r0[17]), 
        .QN() );
  DFFTRX1 carry_r0_reg_18_ ( .D(carry[18]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[18]), .QN() );
  DFFTRX1 sum_r0_reg_16_ ( .D(sum[16]), .RN(op_vld), .CK(clk), .Q(sum_r0[16]), 
        .QN() );
  DFFTRX1 sum_r0_reg_34_ ( .D(sum[34]), .RN(op_vld), .CK(clk), .Q(sum_r0[34]), 
        .QN() );
  DFFTRX1 sum_r0_reg_19_ ( .D(sum[19]), .RN(op_vld), .CK(clk), .Q(sum_r0[19]), 
        .QN() );
  DFFTRX1 sum_r0_reg_18_ ( .D(sum[18]), .RN(op_vld), .CK(clk), .Q(sum_r0[18]), 
        .QN() );
  DFFTRX1 carry_r0_reg_35_ ( .D(carry[35]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[35]), .QN() );
  DFFTRX1 carry_r0_reg_19_ ( .D(carry[19]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[19]), .QN() );
  DFFTRX1 sum_r0_reg_40_ ( .D(sum[40]), .RN(op_vld), .CK(clk), .Q(sum_r0[40]), 
        .QN() );
  DFFTRX1 sum_r0_reg_36_ ( .D(sum[36]), .RN(op_vld), .CK(clk), .Q(sum_r0[36]), 
        .QN() );
  DFFTRX1 sum_r0_reg_32_ ( .D(sum[32]), .RN(op_vld), .CK(clk), .Q(sum_r0[32]), 
        .QN() );
  DFFTRX1 sum_r0_reg_26_ ( .D(sum[26]), .RN(op_vld), .CK(clk), .Q(sum_r0[26]), 
        .QN() );
  DFFTRX1 sum_r0_reg_46_ ( .D(sum[46]), .RN(op_vld), .CK(clk), .Q(sum_r0[46]), 
        .QN() );
  DFFTRX1 carry_r0_reg_47_ ( .D(carry[47]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[47]), .QN() );
  DFFTRX1 carry_r0_reg_42_ ( .D(carry[42]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[42]), .QN() );
  DFFTRX1 sum_r0_reg_35_ ( .D(sum[35]), .RN(op_vld), .CK(clk), .Q(sum_r0[35]), 
        .QN() );
  DFFTRX1 carry_r0_reg_36_ ( .D(carry[36]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[36]), .QN() );
  DFFHQX8 frac_inter_r1_reg_41_ ( .D(frac_inter[41]), .CK(clk), .Q(
        frac_inter_r1[41]) );
  DFFHQX8 frac_inter_r1_reg_33_ ( .D(frac_inter[33]), .CK(clk), .Q(
        frac_inter_r1[33]) );
  DFFTRX1 sum_r0_reg_47_ ( .D(sum[47]), .RN(op_vld), .CK(clk), .Q(sum_r0[47]), 
        .QN() );
  DFFTRX1 sum_r0_reg_8_ ( .D(sum[8]), .RN(op_vld), .CK(clk), .Q(sum_r0[8]), 
        .QN() );
  DFFTRX1 carry_r0_reg_43_ ( .D(carry[43]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[43]), .QN() );
  DFFTRX1 carry_r0_reg_16_ ( .D(carry[16]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[16]), .QN() );
  DFFTRX1 sum_r0_reg_39_ ( .D(sum[39]), .RN(op_vld), .CK(clk), .Q(sum_r0[39]), 
        .QN() );
  DFFTRX1 sum_r0_reg_20_ ( .D(sum[20]), .RN(op_vld), .CK(clk), .Q(sum_r0[20]), 
        .QN() );
  DFFTRX1 carry_r0_reg_40_ ( .D(carry[40]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[40]), .QN() );
  DFFTRX1 sum_r0_reg_25_ ( .D(sum[25]), .RN(op_vld), .CK(clk), .Q(sum_r0[25]), 
        .QN() );
  DFFTRX1 sum_r0_reg_24_ ( .D(sum[24]), .RN(op_vld), .CK(clk), .Q(sum_r0[24]), 
        .QN() );
  DFFTRX1 sum_r0_reg_31_ ( .D(sum[31]), .RN(op_vld), .CK(clk), .Q(sum_r0[31]), 
        .QN() );
  DFFTRX1 sum_r0_reg_28_ ( .D(sum[28]), .RN(op_vld), .CK(clk), .Q(sum_r0[28]), 
        .QN() );
  DFFTRX1 sum_r0_reg_27_ ( .D(sum[27]), .RN(op_vld), .CK(clk), .Q(sum_r0[27]), 
        .QN() );
  DFFHQX8 frac_inter_r1_reg_23_ ( .D(frac_inter[23]), .CK(clk), .Q(
        frac_inter_r1[23]) );
  DFFQX1 nj_mode_r1_reg ( .D(nj_mode_r0), .CK(clk), .Q(nj_mode_r1) );
  DFFQX1 spec_mask_r1_reg ( .D(spec_mask_r0), .CK(clk), .Q(spec_mask_r1) );
  DFFQX1 op_vld_r0_reg ( .D(op_vld), .CK(clk), .Q(op_vld_r0) );
  DFFQX1 op_vld_r1_reg ( .D(op_vld_r0), .CK(clk), .Q(op_vld_r1) );
  DFFQX1 res_spec_r1_reg_31_ ( .D(res_spec_r0[31]), .CK(clk), .Q(
        res_spec_r1[31]) );
  DFFQX1 res_spec_r1_reg_30_ ( .D(res_spec_r0[30]), .CK(clk), .Q(
        res_spec_r1[30]) );
  DFFQX1 res_spec_r1_reg_29_ ( .D(res_spec_r0[29]), .CK(clk), .Q(
        res_spec_r1[29]) );
  DFFQX1 res_spec_r1_reg_28_ ( .D(res_spec_r0[28]), .CK(clk), .Q(
        res_spec_r1[28]) );
  DFFQX1 res_spec_r1_reg_27_ ( .D(res_spec_r0[27]), .CK(clk), .Q(
        res_spec_r1[27]) );
  DFFQX1 res_spec_r1_reg_26_ ( .D(res_spec_r0[26]), .CK(clk), .Q(
        res_spec_r1[26]) );
  DFFQX1 res_spec_r1_reg_25_ ( .D(res_spec_r0[25]), .CK(clk), .Q(
        res_spec_r1[25]) );
  DFFQX1 res_spec_r1_reg_24_ ( .D(res_spec_r0[24]), .CK(clk), .Q(
        res_spec_r1[24]) );
  DFFQX1 res_spec_r1_reg_23_ ( .D(res_spec_r0[23]), .CK(clk), .Q(
        res_spec_r1[23]) );
  DFFQX1 res_spec_r1_reg_22_ ( .D(res_spec_r0[22]), .CK(clk), .Q(
        res_spec_r1[22]) );
  DFFQX1 res_spec_r1_reg_21_ ( .D(res_spec_r0[21]), .CK(clk), .Q(
        res_spec_r1[21]) );
  DFFQX1 res_spec_r1_reg_20_ ( .D(res_spec_r0[20]), .CK(clk), .Q(
        res_spec_r1[20]) );
  DFFQX1 res_spec_r1_reg_19_ ( .D(res_spec_r0[19]), .CK(clk), .Q(
        res_spec_r1[19]) );
  DFFQX1 res_spec_r1_reg_18_ ( .D(res_spec_r0[18]), .CK(clk), .Q(
        res_spec_r1[18]) );
  DFFQX1 res_spec_r1_reg_17_ ( .D(res_spec_r0[17]), .CK(clk), .Q(
        res_spec_r1[17]) );
  DFFQX1 res_spec_r1_reg_16_ ( .D(res_spec_r0[16]), .CK(clk), .Q(
        res_spec_r1[16]) );
  DFFQX1 res_spec_r1_reg_15_ ( .D(res_spec_r0[15]), .CK(clk), .Q(
        res_spec_r1[15]) );
  DFFQX1 res_spec_r1_reg_14_ ( .D(res_spec_r0[14]), .CK(clk), .Q(
        res_spec_r1[14]) );
  DFFQX1 res_spec_r1_reg_13_ ( .D(res_spec_r0[13]), .CK(clk), .Q(
        res_spec_r1[13]) );
  DFFQX1 res_spec_r1_reg_12_ ( .D(res_spec_r0[12]), .CK(clk), .Q(
        res_spec_r1[12]) );
  DFFQX1 res_spec_r1_reg_11_ ( .D(res_spec_r0[11]), .CK(clk), .Q(
        res_spec_r1[11]) );
  DFFQX1 res_spec_r1_reg_10_ ( .D(res_spec_r0[10]), .CK(clk), .Q(
        res_spec_r1[10]) );
  DFFQX1 res_spec_r1_reg_9_ ( .D(res_spec_r0[9]), .CK(clk), .Q(res_spec_r1[9])
         );
  DFFQX1 res_spec_r1_reg_8_ ( .D(res_spec_r0[8]), .CK(clk), .Q(res_spec_r1[8])
         );
  DFFQX1 res_spec_r1_reg_7_ ( .D(res_spec_r0[7]), .CK(clk), .Q(res_spec_r1[7])
         );
  DFFQX1 res_spec_r1_reg_6_ ( .D(res_spec_r0[6]), .CK(clk), .Q(res_spec_r1[6])
         );
  DFFQX1 res_spec_r1_reg_5_ ( .D(res_spec_r0[5]), .CK(clk), .Q(res_spec_r1[5])
         );
  DFFQX1 res_spec_r1_reg_4_ ( .D(res_spec_r0[4]), .CK(clk), .Q(res_spec_r1[4])
         );
  DFFQX1 res_spec_r1_reg_3_ ( .D(res_spec_r0[3]), .CK(clk), .Q(res_spec_r1[3])
         );
  DFFQX1 res_spec_r1_reg_2_ ( .D(res_spec_r0[2]), .CK(clk), .Q(res_spec_r1[2])
         );
  DFFQX1 res_spec_r1_reg_1_ ( .D(res_spec_r0[1]), .CK(clk), .Q(res_spec_r1[1])
         );
  DFFQX1 res_spec_r1_reg_0_ ( .D(res_spec_r0[0]), .CK(clk), .Q(res_spec_r1[0])
         );
  DFFQX1 op_vld_r2_reg ( .D(op_vld_r1), .CK(clk), .Q(op_vld_r2) );
  DFFQX1 res_spec_r2_reg_31_ ( .D(res_spec_r1[31]), .CK(clk), .Q(
        res_spec_r2[31]) );
  DFFQX1 res_spec_r2_reg_30_ ( .D(res_spec_r1[30]), .CK(clk), .Q(
        res_spec_r2[30]) );
  DFFQX1 res_spec_r2_reg_29_ ( .D(res_spec_r1[29]), .CK(clk), .Q(
        res_spec_r2[29]) );
  DFFQX1 res_spec_r2_reg_28_ ( .D(res_spec_r1[28]), .CK(clk), .Q(
        res_spec_r2[28]) );
  DFFQX1 res_spec_r2_reg_27_ ( .D(res_spec_r1[27]), .CK(clk), .Q(
        res_spec_r2[27]) );
  DFFQX1 res_spec_r2_reg_26_ ( .D(res_spec_r1[26]), .CK(clk), .Q(
        res_spec_r2[26]) );
  DFFQX1 res_spec_r2_reg_25_ ( .D(res_spec_r1[25]), .CK(clk), .Q(
        res_spec_r2[25]) );
  DFFQX1 res_spec_r2_reg_24_ ( .D(res_spec_r1[24]), .CK(clk), .Q(
        res_spec_r2[24]) );
  DFFQX1 res_spec_r2_reg_23_ ( .D(res_spec_r1[23]), .CK(clk), .Q(
        res_spec_r2[23]) );
  DFFQX1 res_spec_r2_reg_22_ ( .D(res_spec_r1[22]), .CK(clk), .Q(
        res_spec_r2[22]) );
  DFFQX1 res_spec_r2_reg_21_ ( .D(res_spec_r1[21]), .CK(clk), .Q(
        res_spec_r2[21]) );
  DFFQX1 res_spec_r2_reg_20_ ( .D(res_spec_r1[20]), .CK(clk), .Q(
        res_spec_r2[20]) );
  DFFQX1 res_spec_r2_reg_19_ ( .D(res_spec_r1[19]), .CK(clk), .Q(
        res_spec_r2[19]) );
  DFFQX1 res_spec_r2_reg_18_ ( .D(res_spec_r1[18]), .CK(clk), .Q(
        res_spec_r2[18]) );
  DFFQX1 res_spec_r2_reg_17_ ( .D(res_spec_r1[17]), .CK(clk), .Q(
        res_spec_r2[17]) );
  DFFQX1 res_spec_r2_reg_16_ ( .D(res_spec_r1[16]), .CK(clk), .Q(
        res_spec_r2[16]) );
  DFFQX1 res_spec_r2_reg_15_ ( .D(res_spec_r1[15]), .CK(clk), .Q(
        res_spec_r2[15]) );
  DFFQX1 res_spec_r2_reg_14_ ( .D(res_spec_r1[14]), .CK(clk), .Q(
        res_spec_r2[14]) );
  DFFQX1 res_spec_r2_reg_13_ ( .D(res_spec_r1[13]), .CK(clk), .Q(
        res_spec_r2[13]) );
  DFFQX1 res_spec_r2_reg_12_ ( .D(res_spec_r1[12]), .CK(clk), .Q(
        res_spec_r2[12]) );
  DFFQX1 res_spec_r2_reg_11_ ( .D(res_spec_r1[11]), .CK(clk), .Q(
        res_spec_r2[11]) );
  DFFQX1 res_spec_r2_reg_10_ ( .D(res_spec_r1[10]), .CK(clk), .Q(
        res_spec_r2[10]) );
  DFFQX1 res_spec_r2_reg_9_ ( .D(res_spec_r1[9]), .CK(clk), .Q(res_spec_r2[9])
         );
  DFFQX1 res_spec_r2_reg_8_ ( .D(res_spec_r1[8]), .CK(clk), .Q(res_spec_r2[8])
         );
  DFFQX1 res_spec_r2_reg_7_ ( .D(res_spec_r1[7]), .CK(clk), .Q(res_spec_r2[7])
         );
  DFFQX1 res_spec_r2_reg_6_ ( .D(res_spec_r1[6]), .CK(clk), .Q(res_spec_r2[6])
         );
  DFFQX1 res_spec_r2_reg_5_ ( .D(res_spec_r1[5]), .CK(clk), .Q(res_spec_r2[5])
         );
  DFFQX1 res_spec_r2_reg_4_ ( .D(res_spec_r1[4]), .CK(clk), .Q(res_spec_r2[4])
         );
  DFFQX1 res_spec_r2_reg_3_ ( .D(res_spec_r1[3]), .CK(clk), .Q(res_spec_r2[3])
         );
  DFFQX1 res_spec_r2_reg_2_ ( .D(res_spec_r1[2]), .CK(clk), .Q(res_spec_r2[2])
         );
  DFFQX1 res_spec_r2_reg_1_ ( .D(res_spec_r1[1]), .CK(clk), .Q(res_spec_r2[1])
         );
  DFFQX1 res_spec_r2_reg_0_ ( .D(res_spec_r1[0]), .CK(clk), .Q(res_spec_r2[0])
         );
  DFFTRX1 nj_mode_r0_reg ( .D(nj_mode), .RN(op_vld), .CK(clk), .Q(nj_mode_r0), 
        .QN() );
  DFFHQX8 frac_inter_r1_reg_5_ ( .D(frac_inter[5]), .CK(clk), .Q(
        frac_inter_r1[5]) );
  DFFHQX4 frac_inter_r1_reg_0_ ( .D(frac_inter[0]), .CK(clk), .Q(
        frac_inter_r1[0]) );
  DFFTRX4 c_frac_align_m_r0_reg_22_ ( .D(c_frac_align_m[22]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[22]), .QN() );
  DFFHQX8 frac_inter_r1_reg_6_ ( .D(frac_inter[6]), .CK(clk), .Q(
        frac_inter_r1[6]) );
  DFFHQX8 frac_inter_r1_reg_4_ ( .D(frac_inter[4]), .CK(clk), .Q(
        frac_inter_r1[4]) );
  DFFHQX8 frac_inter_r1_reg_22_ ( .D(frac_inter[22]), .CK(clk), .Q(
        frac_inter_r1[22]) );
  DFFHQX8 frac_inter_r1_reg_25_ ( .D(frac_inter[25]), .CK(clk), .Q(
        frac_inter_r1[25]) );
  DFFHQX8 frac_inter_r1_reg_7_ ( .D(frac_inter[7]), .CK(clk), .Q(
        frac_inter_r1[7]) );
  DFFHQX8 frac_inter_r1_reg_9_ ( .D(frac_inter[9]), .CK(clk), .Q(
        frac_inter_r1[9]) );
  DFFHQX8 frac_inter_r1_reg_3_ ( .D(frac_inter[3]), .CK(clk), .Q(
        frac_inter_r1[3]) );
  DFFHQX8 frac_inter_r1_reg_8_ ( .D(frac_inter[8]), .CK(clk), .Q(
        frac_inter_r1[8]) );
  DFFHQX8 frac_inter_r1_reg_53_ ( .D(frac_inter[53]), .CK(clk), .Q(
        frac_inter_r1[53]) );
  DFFHQX8 frac_inter_r1_reg_29_ ( .D(frac_inter[29]), .CK(clk), .Q(
        frac_inter_r1[29]) );
  DFFHQX8 frac_inter_r1_reg_68_ ( .D(frac_inter[68]), .CK(clk), .Q(
        frac_inter_r1[68]) );
  DFFHQX8 frac_inter_r1_reg_16_ ( .D(frac_inter[16]), .CK(clk), .Q(
        frac_inter_r1[16]) );
  DFFHQX8 frac_inter_r1_reg_15_ ( .D(frac_inter[15]), .CK(clk), .Q(
        frac_inter_r1[15]) );
  DFFHQX8 frac_inter_r1_reg_1_ ( .D(frac_inter[1]), .CK(clk), .Q(
        frac_inter_r1[1]) );
  DFFHQX8 frac_inter_r1_reg_39_ ( .D(frac_inter[39]), .CK(clk), .Q(
        frac_inter_r1[39]) );
  DFFHQX8 frac_inter_r1_reg_61_ ( .D(frac_inter[61]), .CK(clk), .Q(
        frac_inter_r1[61]) );
  DFFHQX8 frac_inter_r1_reg_48_ ( .D(frac_inter[48]), .CK(clk), .Q(
        frac_inter_r1[48]) );
  DFFHQX8 frac_inter_r1_reg_37_ ( .D(frac_inter[37]), .CK(clk), .Q(
        frac_inter_r1[37]) );
  DFFHQX8 frac_inter_r1_reg_49_ ( .D(frac_inter[49]), .CK(clk), .Q(
        frac_inter_r1[49]) );
  DFFHQX8 frac_inter_r1_reg_57_ ( .D(frac_inter[57]), .CK(clk), .Q(
        frac_inter_r1[57]) );
  DFFTRX4 c_frac_align_l_r0_reg_16_ ( .D(c_frac_align_l[16]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[16]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_15_ ( .D(c_frac_align_l[15]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[15]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_17_ ( .D(c_frac_align_l[17]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[17]), .QN() );
  DFFHQX8 frac_inter_r1_reg_71_ ( .D(frac_inter[71]), .CK(clk), .Q(
        frac_inter_r1[71]) );
  DFFHQX8 frac_inter_r1_reg_21_ ( .D(frac_inter[21]), .CK(clk), .Q(
        frac_inter_r1[21]) );
  DFFTRX4 c_frac_align_l_r0_reg_6_ ( .D(op_vld), .RN(c_frac_align_l[6]), .CK(
        clk), .Q(c_frac_align_l_r0[6]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_8_ ( .D(c_frac_align_l[8]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[8]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_7_ ( .D(c_frac_align_l[7]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[7]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_9_ ( .D(c_frac_align_l[9]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[9]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_11_ ( .D(c_frac_align_l[11]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[11]), .QN() );
  DFFHQX8 frac_inter_r1_reg_45_ ( .D(frac_inter[45]), .CK(clk), .Q(
        frac_inter_r1[45]) );
  DFFHQX8 frac_inter_r1_reg_14_ ( .D(frac_inter[14]), .CK(clk), .Q(
        frac_inter_r1[14]) );
  DFFHQX8 frac_inter_r1_reg_13_ ( .D(frac_inter[13]), .CK(clk), .Q(
        frac_inter_r1[13]) );
  DFFHQX8 frac_inter_r1_reg_24_ ( .D(frac_inter[24]), .CK(clk), .Q(
        frac_inter_r1[24]) );
  DFFHQX8 frac_inter_r1_reg_17_ ( .D(frac_inter[17]), .CK(clk), .Q(
        frac_inter_r1[17]) );
  DFFHQX8 frac_inter_r1_reg_36_ ( .D(frac_inter[36]), .CK(clk), .Q(
        frac_inter_r1[36]) );
  DFFHQX8 frac_inter_r1_reg_65_ ( .D(frac_inter[65]), .CK(clk), .Q(
        frac_inter_r1[65]) );
  DFFHQX8 frac_inter_r1_reg_73_ ( .D(frac_inter[73]), .CK(clk), .Q(
        frac_inter_r1[73]) );
  DFFHQX8 frac_inter_r1_reg_18_ ( .D(frac_inter[18]), .CK(clk), .Q(
        frac_inter_r1[18]) );
  DFFTRX4 c_frac_align_l_r0_reg_12_ ( .D(c_frac_align_l[12]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[12]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_14_ ( .D(c_frac_align_l[14]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[14]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_13_ ( .D(c_frac_align_l[13]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[13]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_18_ ( .D(c_frac_align_l[18]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[18]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_20_ ( .D(c_frac_align_l[20]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[20]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_19_ ( .D(c_frac_align_l[19]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[19]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_21_ ( .D(c_frac_align_l[21]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[21]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_23_ ( .D(c_frac_align_l[23]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[23]), .QN() );
  DFFHQX8 frac_inter_r1_reg_20_ ( .D(frac_inter[20]), .CK(clk), .Q(
        frac_inter_r1[20]) );
  DFFHQX8 frac_inter_r1_reg_19_ ( .D(frac_inter[19]), .CK(clk), .Q(
        frac_inter_r1[19]) );
  DFFHQX8 frac_inter_r1_reg_11_ ( .D(frac_inter[11]), .CK(clk), .Q(
        frac_inter_r1[11]) );
  DFFHQX8 frac_inter_r1_reg_54_ ( .D(frac_inter[54]), .CK(clk), .Q(
        frac_inter_r1[54]) );
  DFFHQX8 frac_inter_r1_reg_44_ ( .D(frac_inter[44]), .CK(clk), .Q(
        frac_inter_r1[44]) );
  DFFHQX8 frac_inter_r1_reg_47_ ( .D(frac_inter[47]), .CK(clk), .Q(
        frac_inter_r1[47]) );
  DFFTRX4 c_frac_align_m_r0_reg_37_ ( .D(c_frac_align_m[37]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[37]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_10_ ( .D(c_frac_align_l[10]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[10]), .QN() );
  DFFHQX8 frac_inter_r1_reg_62_ ( .D(frac_inter[62]), .CK(clk), .Q(
        frac_inter_r1[62]) );
  DFFTRX2 sum_r0_reg_44_ ( .D(sum[44]), .RN(op_vld), .CK(clk), .Q(sum_r0[44]), 
        .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_4_ ( .D(c_frac_align_l[4]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[4]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_1_ ( .D(c_frac_align_l[1]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[1]), .QN() );
  DFFHQX8 frac_inter_r1_reg_38_ ( .D(frac_inter[38]), .CK(clk), .Q(
        frac_inter_r1[38]) );
  DFFTRX4 c_frac_align_l_r0_reg_0_ ( .D(c_frac_align_l[0]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[0]), .QN() );
  DFFHQX8 frac_inter_r1_reg_34_ ( .D(frac_inter[34]), .CK(clk), .Q(
        frac_inter_r1[34]) );
  DFFTRX4 c_frac_align_l_r0_reg_5_ ( .D(c_frac_align_l[5]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[5]), .QN() );
  DFFTRX4 c_frac_align_l_r0_reg_2_ ( .D(c_frac_align_l[2]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[2]), .QN() );
  DFFHQX8 frac_inter_r1_reg_63_ ( .D(frac_inter[63]), .CK(clk), .Q(
        frac_inter_r1[63]) );
  DFFTRX4 c_frac_align_l_r0_reg_22_ ( .D(c_frac_align_l[22]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_l_r0[22]), .QN() );
  DFFHQX8 frac_inter_r1_reg_32_ ( .D(frac_inter[32]), .CK(clk), .Q(
        frac_inter_r1[32]) );
  DFFHQX8 frac_inter_r1_reg_31_ ( .D(frac_inter[31]), .CK(clk), .Q(
        frac_inter_r1[31]) );
  DFFTRX4 c_frac_align_l_r0_reg_3_ ( .D(c_frac_align_l[3]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_l_r0[3]), .QN() );
  DFFHQX8 frac_inter_r1_reg_40_ ( .D(frac_inter[40]), .CK(clk), .Q(
        frac_inter_r1[40]) );
  DFFHQX8 frac_inter_r1_reg_46_ ( .D(frac_inter[46]), .CK(clk), .Q(
        frac_inter_r1[46]) );
  DFFHQX8 frac_inter_r1_reg_27_ ( .D(frac_inter[27]), .CK(clk), .Q(
        frac_inter_r1[27]) );
  DFFHQX8 frac_inter_r1_reg_66_ ( .D(frac_inter[66]), .CK(clk), .Q(
        frac_inter_r1[66]) );
  DFFHQX8 frac_inter_r1_reg_69_ ( .D(frac_inter[69]), .CK(clk), .Q(
        frac_inter_r1[69]) );
  DFFHQX8 frac_inter_r1_reg_67_ ( .D(frac_inter[67]), .CK(clk), .Q(
        frac_inter_r1[67]) );
  DFFTRX4 c_frac_align_h_r0_reg_5_ ( .D(c_frac_align_h[5]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[5]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_4_ ( .D(c_frac_align_h[4]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[4]), .QN() );
  DFFHQX8 frac_inter_r1_reg_56_ ( .D(frac_inter[56]), .CK(clk), .Q(
        frac_inter_r1[56]) );
  DFFHQX8 frac_inter_r1_reg_50_ ( .D(frac_inter[50]), .CK(clk), .Q(
        frac_inter_r1[50]) );
  DFFTRX4 c_frac_align_h_r0_reg_0_ ( .D(c_frac_align_h[0]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[0]), .QN() );
  DFFHQX8 frac_inter_r1_reg_64_ ( .D(frac_inter[64]), .CK(clk), .Q(
        frac_inter_r1[64]) );
  DFFHQX8 frac_inter_r1_reg_52_ ( .D(frac_inter[52]), .CK(clk), .Q(
        frac_inter_r1[52]) );
  DFFHQX8 frac_inter_r1_reg_55_ ( .D(frac_inter[55]), .CK(clk), .Q(
        frac_inter_r1[55]) );
  DFFHQX8 frac_inter_r1_reg_12_ ( .D(frac_inter[12]), .CK(clk), .Q(
        frac_inter_r1[12]) );
  DFFHQX8 frac_inter_r1_reg_28_ ( .D(frac_inter[28]), .CK(clk), .Q(
        frac_inter_r1[28]) );
  DFFQX1 exp_norm_r2_reg_4_ ( .D(exp_norm[4]), .CK(clk), .Q(exp_norm_r2[4]) );
  DFFHQX8 frac_inter_r1_reg_51_ ( .D(frac_inter[51]), .CK(clk), .Q(
        frac_inter_r1[51]) );
  DFFTRX4 c_frac_align_m_r0_reg_24_ ( .D(c_frac_align_m[24]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[24]), .QN() );
  DFFHQX8 frac_inter_r1_reg_30_ ( .D(frac_inter[30]), .CK(clk), .Q(
        frac_inter_r1[30]) );
  DFFHQX8 frac_inter_r1_reg_70_ ( .D(frac_inter[70]), .CK(clk), .Q(
        frac_inter_r1[70]) );
  DFFHQX8 frac_inter_r1_reg_58_ ( .D(frac_inter[58]), .CK(clk), .Q(
        frac_inter_r1[58]) );
  DFFTRX4 c_frac_align_m_r0_reg_34_ ( .D(c_frac_align_m[34]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[34]), .QN() );
  DFFHQX8 frac_inter_r1_reg_35_ ( .D(frac_inter[35]), .CK(clk), .Q(
        frac_inter_r1[35]) );
  DFFTRX4 c_frac_align_m_r0_reg_40_ ( .D(c_frac_align_m[40]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[40]), .QN() );
  DFFQX1 exp_norm_r2_reg_2_ ( .D(exp_norm[2]), .CK(clk), .Q(exp_norm_r2[2]) );
  DFFTRX4 c_frac_align_m_r0_reg_20_ ( .D(c_frac_align_m[20]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[20]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_39_ ( .D(c_frac_align_m[39]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[39]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_3_ ( .D(c_frac_align_h[3]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[3]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_19_ ( .D(c_frac_align_m[19]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[19]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_5_ ( .D(c_frac_align_m[5]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[5]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_9_ ( .D(c_frac_align_m[9]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[9]), .QN() );
  DFFHQX8 frac_inter_r1_reg_26_ ( .D(frac_inter[26]), .CK(clk), .Q(
        frac_inter_r1[26]) );
  DFFHQX8 frac_inter_r1_reg_59_ ( .D(frac_inter[59]), .CK(clk), .Q(
        frac_inter_r1[59]) );
  DFFHQX8 frac_inter_r1_reg_74_ ( .D(frac_inter[74]), .CK(clk), .Q(
        frac_inter_r1[74]) );
  DFFHQX8 frac_inter_r1_reg_60_ ( .D(frac_inter[60]), .CK(clk), .Q(
        frac_inter_r1[60]) );
  DFFHQX8 frac_inter_r1_reg_43_ ( .D(frac_inter[43]), .CK(clk), .Q(
        frac_inter_r1[43]) );
  DFFTRX4 c_frac_align_m_r0_reg_1_ ( .D(c_frac_align_m[1]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[1]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_14_ ( .D(c_frac_align_h[14]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[14]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_17_ ( .D(c_frac_align_h[17]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[17]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_18_ ( .D(c_frac_align_h[18]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[18]), .QN() );
  DFFTRX4 sum_r0_reg_21_ ( .D(sum[21]), .RN(op_vld), .CK(clk), .Q(sum_r0[21]), 
        .QN() );
  DFFHQX8 frac_inter_r1_reg_42_ ( .D(frac_inter[42]), .CK(clk), .Q(
        frac_inter_r1[42]) );
  DFFTRX4 carry_r0_reg_17_ ( .D(carry[17]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[17]), .QN() );
  DFFX4 zero_m_r2_reg ( .D(zero_m), .CK(clk), .Q(n313), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_33_ ( .D(c_frac_align_m[33]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[33]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_47_ ( .D(c_frac_align_m[47]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[47]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_16_ ( .D(c_frac_align_m[16]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[16]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_11_ ( .D(c_frac_align_h[11]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[11]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_41_ ( .D(c_frac_align_m[41]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[41]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_11_ ( .D(c_frac_align_m[11]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[11]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_13_ ( .D(c_frac_align_m[13]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[13]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_32_ ( .D(c_frac_align_m[32]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[32]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_7_ ( .D(c_frac_align_m[7]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[7]), .QN() );
  DFFQX1 exp_norm_r2_reg_5_ ( .D(exp_norm[5]), .CK(clk), .Q(exp_norm_r2[5]) );
  DFFHQX8 frac_inter_r1_reg_2_ ( .D(frac_inter[2]), .CK(clk), .Q(
        frac_inter_r1[2]) );
  DFFTRX4 c_frac_align_m_r0_reg_44_ ( .D(c_frac_align_m[44]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[44]), .QN() );
  DFFHQX8 frac_inter_r1_reg_72_ ( .D(frac_inter[72]), .CK(clk), .Q(
        frac_inter_r1[72]) );
  DFFTRX4 c_frac_align_m_r0_reg_30_ ( .D(c_frac_align_m[30]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[30]), .QN() );
  DFFHQX8 exp_tmp_r1_reg_2_ ( .D(exp_tmp_r0[2]), .CK(clk), .Q(exp_tmp_r1[2])
         );
  DFFTRX4 c_frac_align_m_r0_reg_0_ ( .D(c_frac_align_m[0]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[0]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_12_ ( .D(c_frac_align_h[12]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[12]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_14_ ( .D(c_frac_align_m[14]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[14]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_23_ ( .D(c_frac_align_m[23]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[23]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_7_ ( .D(c_frac_align_h[7]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[7]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_21_ ( .D(c_frac_align_h[21]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[21]), .QN() );
  DFFHQX8 exp_tmp_r1_reg_4_ ( .D(exp_tmp_r0[4]), .CK(clk), .Q(exp_tmp_r1[4])
         );
  DFFQX1 exp_tmp_r1_reg_8_ ( .D(exp_tmp_r0[8]), .CK(clk), .Q(exp_tmp_r1[8]) );
  DFFQXL exp_tmp_r1_reg_7_ ( .D(exp_tmp_r0[7]), .CK(clk), .Q(exp_tmp_r1[7]) );
  DFFTRX1 sum_r0_reg_0_ ( .D(sum[0]), .RN(op_vld), .CK(clk), .Q(sum_r0[0]), 
        .QN() );
  DFFTRX1 carry_r0_reg_46_ ( .D(carry[46]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[46]), .QN() );
  DFFTRX1 carry_r0_reg_44_ ( .D(carry[44]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[44]), .QN() );
  DFFTRX1 carry_r0_reg_2_ ( .D(carry[2]), .RN(op_vld), .CK(clk), .Q(
        carry_r0[2]), .QN() );
  DFFQX2 res_rdy_reg ( .D(op_vld_r2), .CK(clk), .Q(res_rdy) );
  MDFFHQX2 res_reg_30_ ( .D0(res_w[30]), .D1(res_spec_r2[30]), .S0(n460), .CK(
        clk), .Q(res[30]) );
  MDFFHQX2 res_reg_29_ ( .D0(res_w[29]), .D1(res_spec_r2[29]), .S0(n459), .CK(
        clk), .Q(res[29]) );
  MDFFHQX2 res_reg_28_ ( .D0(res_w[28]), .D1(res_spec_r2[28]), .S0(n460), .CK(
        clk), .Q(res[28]) );
  MDFFHQX2 res_reg_26_ ( .D0(res_w[26]), .D1(res_spec_r2[26]), .S0(n459), .CK(
        clk), .Q(res[26]) );
  MDFFHQX2 res_reg_25_ ( .D0(res_w[25]), .D1(res_spec_r2[25]), .S0(n460), .CK(
        clk), .Q(res[25]) );
  MDFFHQX2 res_reg_24_ ( .D0(res_w[24]), .D1(res_spec_r2[24]), .S0(n460), .CK(
        clk), .Q(res[24]) );
  MDFFHQX2 res_reg_23_ ( .D0(res_w[23]), .D1(res_spec_r2[23]), .S0(n460), .CK(
        clk), .Q(res[23]) );
  MDFFHQX2 res_reg_17_ ( .D0(res_w[17]), .D1(res_spec_r2[17]), .S0(n460), .CK(
        clk), .Q(res[17]) );
  MDFFHQX2 res_reg_15_ ( .D0(res_w[15]), .D1(res_spec_r2[15]), .S0(n460), .CK(
        clk), .Q(res[15]) );
  MDFFHQX2 res_reg_13_ ( .D0(res_w[13]), .D1(res_spec_r2[13]), .S0(n460), .CK(
        clk), .Q(res[13]) );
  MDFFHQX2 res_reg_11_ ( .D0(res_w[11]), .D1(res_spec_r2[11]), .S0(n459), .CK(
        clk), .Q(res[11]) );
  MDFFHQX2 res_reg_5_ ( .D0(res_w[5]), .D1(res_spec_r2[5]), .S0(n459), .CK(clk), .Q(res[5]) );
  MDFFHQX2 res_reg_12_ ( .D0(res_w[12]), .D1(res_spec_r2[12]), .S0(n459), .CK(
        clk), .Q(res[12]) );
  MDFFHQX2 res_reg_22_ ( .D0(res_w[22]), .D1(res_spec_r2[22]), .S0(n460), .CK(
        clk), .Q(res[22]) );
  MDFFHQX2 res_reg_1_ ( .D0(res_w[1]), .D1(res_spec_r2[1]), .S0(n459), .CK(clk), .Q(res[1]) );
  MDFFHQX2 res_reg_18_ ( .D0(res_w[18]), .D1(res_spec_r2[18]), .S0(n460), .CK(
        clk), .Q(res[18]) );
  MDFFHQX2 res_reg_8_ ( .D0(res_w[8]), .D1(res_spec_r2[8]), .S0(n459), .CK(clk), .Q(res[8]) );
  MDFFHQX2 res_reg_6_ ( .D0(res_w[6]), .D1(res_spec_r2[6]), .S0(n459), .CK(clk), .Q(res[6]) );
  MDFFHQX2 res_reg_2_ ( .D0(res_w[2]), .D1(res_spec_r2[2]), .S0(n459), .CK(clk), .Q(res[2]) );
  MDFFHQX2 res_reg_16_ ( .D0(res_w[16]), .D1(res_spec_r2[16]), .S0(n460), .CK(
        clk), .Q(res[16]) );
  MDFFHQX2 res_reg_9_ ( .D0(res_w[9]), .D1(res_spec_r2[9]), .S0(n459), .CK(clk), .Q(res[9]) );
  MDFFHQX2 res_reg_3_ ( .D0(res_w[3]), .D1(res_spec_r2[3]), .S0(n459), .CK(clk), .Q(res[3]) );
  MDFFHQX2 res_reg_21_ ( .D0(res_w[21]), .D1(res_spec_r2[21]), .S0(n460), .CK(
        clk), .Q(res[21]) );
  MDFFHQX2 res_reg_20_ ( .D0(res_w[20]), .D1(res_spec_r2[20]), .S0(n460), .CK(
        clk), .Q(res[20]) );
  MDFFHQX2 res_reg_19_ ( .D0(res_w[19]), .D1(res_spec_r2[19]), .S0(n460), .CK(
        clk), .Q(res[19]) );
  MDFFHQX2 res_reg_7_ ( .D0(res_w[7]), .D1(res_spec_r2[7]), .S0(n459), .CK(clk), .Q(res[7]) );
  MDFFHQX2 res_reg_14_ ( .D0(res_w[14]), .D1(res_spec_r2[14]), .S0(n460), .CK(
        clk), .Q(res[14]) );
  MDFFHQX2 res_reg_10_ ( .D0(res_w[10]), .D1(res_spec_r2[10]), .S0(n459), .CK(
        clk), .Q(res[10]) );
  MDFFHQX2 res_reg_4_ ( .D0(res_w[4]), .D1(res_spec_r2[4]), .S0(n459), .CK(clk), .Q(res[4]) );
  DFFHQX8 frac_inter_r1_reg_10_ ( .D(frac_inter[10]), .CK(clk), .Q(
        frac_inter_r1[10]) );
  DFFTRX4 c_frac_align_m_r0_reg_29_ ( .D(c_frac_align_m[29]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[29]), .QN() );
  DFFHQX8 frac_inter_norm_r2_reg_3_ ( .D(frac_inter_norm[3]), .CK(clk), .Q(
        frac_inter_norm_r2[3]) );
  DFFTRX4 c_frac_align_m_r0_reg_15_ ( .D(c_frac_align_m[15]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[15]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_31_ ( .D(c_frac_align_m[31]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[31]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_35_ ( .D(c_frac_align_m[35]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[35]), .QN() );
  DFFTRX2 c_frac_align_h_r0_reg_2_ ( .D(c_frac_align_h[2]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[2]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_8_ ( .D(c_frac_align_h[8]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[8]), .QN() );
  DFFTRX2 c_frac_align_h_r0_reg_23_ ( .D(c_frac_align_h[23]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[23]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_13_ ( .D(c_frac_align_h[13]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[13]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_36_ ( .D(c_frac_align_m[36]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[36]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_6_ ( .D(c_frac_align_m[6]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[6]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_25_ ( .D(c_frac_align_m[25]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[25]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_4_ ( .D(c_frac_align_m[4]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[4]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_15_ ( .D(c_frac_align_h[15]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[15]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_17_ ( .D(c_frac_align_m[17]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[17]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_8_ ( .D(c_frac_align_m[8]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[8]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_28_ ( .D(c_frac_align_m[28]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[28]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_12_ ( .D(c_frac_align_m[12]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[12]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_10_ ( .D(c_frac_align_m[10]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[10]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_38_ ( .D(c_frac_align_m[38]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[38]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_27_ ( .D(c_frac_align_m[27]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[27]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_6_ ( .D(c_frac_align_h[6]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[6]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_26_ ( .D(c_frac_align_m[26]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[26]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_21_ ( .D(c_frac_align_m[21]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[21]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_43_ ( .D(c_frac_align_m[43]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[43]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_25_ ( .D(c_frac_align_h[25]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[25]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_46_ ( .D(c_frac_align_m[46]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[46]), .QN() );
  DFFTRX2 c_frac_align_h_r0_reg_19_ ( .D(c_frac_align_h[19]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[19]), .QN() );
  DFFHQX8 frac_inter_norm_r2_reg_2_ ( .D(frac_inter_norm[2]), .CK(clk), .Q(
        frac_inter_norm_r2[2]) );
  DFFHQX8 frac_inter_norm_r2_reg_6_ ( .D(frac_inter_norm[6]), .CK(clk), .Q(
        frac_inter_norm_r2[6]) );
  DFFHQX8 frac_inter_norm_r2_reg_9_ ( .D(frac_inter_norm[9]), .CK(clk), .Q(
        frac_inter_norm_r2[9]) );
  DFFTRX4 c_frac_align_h_r0_reg_20_ ( .D(c_frac_align_h[20]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[20]), .QN() );
  DFFTRX4 sum_r0_reg_23_ ( .D(sum[23]), .RN(op_vld), .CK(clk), .Q(sum_r0[23]), 
        .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_16_ ( .D(c_frac_align_h[16]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[16]), .QN() );
  DFFHQX2 frac_inter_norm_r2_reg_14_ ( .D(frac_inter_norm[14]), .CK(clk), .Q(
        frac_inter_norm_r2[14]) );
  DFFHQX2 frac_inter_norm_r2_reg_1_ ( .D(frac_inter_norm[1]), .CK(clk), .Q(
        frac_inter_norm_r2[1]) );
  DFFTRX4 exp_tmp_r0_reg_7_ ( .D(exp_tmp[7]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[7]), .QN() );
  DFFHQX4 frac_inter_norm_r2_reg_18_ ( .D(frac_inter_norm[18]), .CK(clk), .Q(
        frac_inter_norm_r2[18]) );
  DFFHQX4 frac_inter_norm_r2_reg_10_ ( .D(frac_inter_norm[10]), .CK(clk), .Q(
        frac_inter_norm_r2[10]) );
  DFFTRX2 exp_tmp_r0_reg_3_ ( .D(n245), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[3]), .QN() );
  DFFHQX2 frac_inter_norm_r2_reg_16_ ( .D(frac_inter_norm[16]), .CK(clk), .Q(
        frac_inter_norm_r2[16]) );
  DFFHQX8 denorm_m_r2_reg ( .D(denorm_m), .CK(clk), .Q(denorm_m_r2) );
  DFFTRX2 exp_tmp_r0_reg_0_ ( .D(exp_tmp[0]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[0]), .QN() );
  DFFTRX2 exp_tmp_r0_reg_5_ ( .D(exp_tmp[5]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[5]), .QN() );
  DFFTRX2 exp_tmp_r0_reg_6_ ( .D(exp_tmp[6]), .RN(op_vld), .CK(clk), .Q(
        exp_tmp_r0[6]), .QN() );
  DFFHQX4 frac_inter_norm_r2_reg_13_ ( .D(frac_inter_norm[13]), .CK(clk), .Q(
        frac_inter_norm_r2[13]) );
  DFFHQX8 frac_inter_norm_r2_reg_0_ ( .D(frac_inter_norm[0]), .CK(clk), .Q(
        frac_inter_norm_r2[0]) );
  DFFHQX4 frac_inter_norm_r2_reg_7_ ( .D(frac_inter_norm[7]), .CK(clk), .Q(
        frac_inter_norm_r2[7]) );
  DFFTRX4 c_frac_align_h_r0_reg_9_ ( .D(c_frac_align_h[9]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[9]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_45_ ( .D(c_frac_align_m[45]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[45]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_1_ ( .D(c_frac_align_h[1]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_h_r0[1]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_42_ ( .D(c_frac_align_m[42]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[42]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_18_ ( .D(c_frac_align_m[18]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_m_r0[18]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_2_ ( .D(c_frac_align_m[2]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[2]), .QN() );
  DFFTRX2 res_spec_r0_reg_28_ ( .D(res_spec[28]), .RN(op_vld), .CK(clk), .Q(
        res_spec_r0[28]), .QN() );
  DFFTRX4 c_frac_align_h_r0_reg_10_ ( .D(c_frac_align_h[10]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[10]), .QN() );
  DFFTRX4 c_frac_align_m_r0_reg_3_ ( .D(c_frac_align_m[3]), .RN(op_vld), .CK(
        clk), .Q(c_frac_align_m_r0[3]), .QN() );
  DFFHQX8 frac_inter_norm_r2_reg_5_ ( .D(frac_inter_norm[5]), .CK(clk), .Q(
        frac_inter_norm_r2[5]) );
  DFFHQX4 frac_inter_norm_r2_reg_15_ ( .D(frac_inter_norm[15]), .CK(clk), .Q(
        frac_inter_norm_r2[15]) );
  DFFTRX4 c_frac_align_h_r0_reg_22_ ( .D(c_frac_align_h[22]), .RN(op_vld), 
        .CK(clk), .Q(c_frac_align_h_r0[22]), .QN() );
  DFFHQX4 frac_inter_norm_r2_reg_12_ ( .D(frac_inter_norm[12]), .CK(clk), .Q(
        frac_inter_norm_r2[12]) );
  DFFHQX2 frac_inter_norm_r2_reg_8_ ( .D(frac_inter_norm[8]), .CK(clk), .Q(
        frac_inter_norm_r2[8]) );
  DFFHQX8 frac_inter_norm_r2_reg_11_ ( .D(frac_inter_norm[11]), .CK(clk), .Q(
        frac_inter_norm_r2[11]) );
  DFFHQX4 frac_inter_norm_r2_reg_17_ ( .D(frac_inter_norm[17]), .CK(clk), .Q(
        frac_inter_norm_r2[17]) );
  DFFHQX8 frac_inter_norm_r2_reg_21_ ( .D(frac_inter_norm[21]), .CK(clk), .Q(
        frac_inter_norm_r2[21]) );
  BUFX8 U3 ( .A(exp_tmp[3]), .Y(n245) );
  CLKBUFX2 U4 ( .A(b_frac[14]), .Y(n312) );
  BUFX6 U5 ( .A(a_frac[8]), .Y(n355) );
  BUFX3 U6 ( .A(b_frac[10]), .Y(n316) );
  BUFX6 U7 ( .A(a_frac[14]), .Y(n372) );
  BUFX6 U8 ( .A(a_frac[1]), .Y(n367) );
  BUFX6 U9 ( .A(b_frac[21]), .Y(n299) );
  BUFX6 U10 ( .A(b_frac[5]), .Y(n336) );
  BUFX3 U11 ( .A(b_frac[19]), .Y(n306) );
  BUFX16 U12 ( .A(a_frac[20]), .Y(n371) );
  CLKBUFX2 U13 ( .A(a_frac[7]), .Y(n345) );
  BUFX4 U14 ( .A(a_frac[0]), .Y(n363) );
  BUFX3 U15 ( .A(a_frac[19]), .Y(n348) );
  BUFX3 U16 ( .A(a_frac[5]), .Y(n356) );
  BUFX3 U17 ( .A(a_frac[17]), .Y(n357) );
  BUFX4 U18 ( .A(a_frac[12]), .Y(n369) );
  BUFX3 U19 ( .A(a_frac[21]), .Y(n370) );
  CLKBUFX3 U20 ( .A(spec_mask_r2), .Y(n459) );
  CLKBUFX3 U21 ( .A(spec_mask_r2), .Y(n460) );
endmodule

