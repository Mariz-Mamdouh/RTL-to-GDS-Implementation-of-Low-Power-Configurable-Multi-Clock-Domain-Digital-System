/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 23 20:35:16 2025
/////////////////////////////////////////////////////////////


module Sys_Ctrl_DATA_WIDTH8_ADDR4_ALU_OUT_WIDTH16 ( CLK, RST, ALU_OUT, 
        Out_Valid, RdData, RdData_Valid, RX_P_Data, RX_D_VLD, FIFO_Full, 
        ALU_FUN, ALU_EN, CLK_EN, Address, WrEn, RdEn, WrData, TX_P_DATA, 
        TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_Data;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, Out_Valid, RdData_Valid, RX_D_VLD, FIFO_Full;
  output ALU_EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n1, n2, n3, n4,
         n5, n6, n7, n8, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n105, n106, n107;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign clk_div_en = 1'b1;

  DFFRX1M \ALU_OUT_reg_reg[7]  ( .D(n96), .CK(CLK), .RN(RST), .QN(n17) );
  DFFRX1M \ALU_OUT_reg_reg[6]  ( .D(n95), .CK(CLK), .RN(RST), .QN(n18) );
  DFFRX1M \ALU_OUT_reg_reg[5]  ( .D(n94), .CK(CLK), .RN(RST), .QN(n19) );
  DFFRX1M \ALU_OUT_reg_reg[4]  ( .D(n93), .CK(CLK), .RN(RST), .QN(n20) );
  DFFRX1M \ALU_OUT_reg_reg[3]  ( .D(n92), .CK(CLK), .RN(RST), .QN(n21) );
  DFFRX1M \ALU_OUT_reg_reg[2]  ( .D(n91), .CK(CLK), .RN(RST), .QN(n22) );
  DFFRX1M \ALU_OUT_reg_reg[1]  ( .D(n90), .CK(CLK), .RN(RST), .QN(n23) );
  DFFRX1M \ALU_OUT_reg_reg[0]  ( .D(n89), .CK(CLK), .RN(RST), .QN(n24) );
  DFFRX1M \ALU_OUT_reg_reg[15]  ( .D(n104), .CK(CLK), .RN(RST), .QN(n9) );
  DFFRX1M \ALU_OUT_reg_reg[14]  ( .D(n103), .CK(CLK), .RN(RST), .QN(n10) );
  DFFRX1M \ALU_OUT_reg_reg[13]  ( .D(n102), .CK(CLK), .RN(RST), .QN(n11) );
  DFFRX1M \ALU_OUT_reg_reg[12]  ( .D(n101), .CK(CLK), .RN(RST), .QN(n12) );
  DFFRX1M \ALU_OUT_reg_reg[11]  ( .D(n100), .CK(CLK), .RN(RST), .QN(n13) );
  DFFRX1M \ALU_OUT_reg_reg[10]  ( .D(n99), .CK(CLK), .RN(RST), .QN(n14) );
  DFFRX1M \ALU_OUT_reg_reg[9]  ( .D(n98), .CK(CLK), .RN(RST), .QN(n15) );
  DFFRX1M \ALU_OUT_reg_reg[8]  ( .D(n97), .CK(CLK), .RN(RST), .QN(n16) );
  DFFRX1M \Address_reg_reg[0]  ( .D(n85), .CK(CLK), .RN(RST), .QN(n28) );
  DFFRX1M \Address_reg_reg[2]  ( .D(n87), .CK(CLK), .RN(RST), .QN(n26) );
  DFFRX1M \Address_reg_reg[1]  ( .D(n86), .CK(CLK), .RN(RST), .QN(n27) );
  DFFRX1M \Address_reg_reg[3]  ( .D(n88), .CK(CLK), .RN(RST), .QN(n25) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  NOR3BX2M U3 ( .AN(n84), .B(current_state[0]), .C(current_state[2]), .Y(n55)
         );
  NOR2X2M U4 ( .A(n63), .B(n75), .Y(ALU_FUN[2]) );
  NOR2X2M U5 ( .A(n63), .B(n77), .Y(ALU_FUN[0]) );
  BUFX2M U6 ( .A(RX_D_VLD), .Y(n1) );
  OAI22X2M U7 ( .A0(n61), .A1(n75), .B0(n26), .B1(n83), .Y(Address[2]) );
  INVX2M U8 ( .A(WrEn), .Y(n6) );
  NOR2X2M U9 ( .A(n7), .B(n74), .Y(WrEn) );
  NAND2X2M U10 ( .A(n57), .B(n4), .Y(n79) );
  INVX2M U11 ( .A(FIFO_Full), .Y(n4) );
  INVX2M U12 ( .A(n73), .Y(n5) );
  NOR3X2M U13 ( .A(n43), .B(n105), .C(n55), .Y(n74) );
  NAND2X2M U14 ( .A(n55), .B(n1), .Y(n83) );
  NOR2X2M U15 ( .A(n74), .B(n77), .Y(WrData[0]) );
  NOR2X2M U16 ( .A(n74), .B(n76), .Y(WrData[1]) );
  NOR2X2M U17 ( .A(n74), .B(n75), .Y(WrData[2]) );
  NOR2X2M U18 ( .A(n74), .B(n72), .Y(WrData[3]) );
  NOR2X2M U19 ( .A(n32), .B(n6), .Y(WrData[4]) );
  NOR2X2M U20 ( .A(n31), .B(n6), .Y(WrData[5]) );
  NOR2X2M U21 ( .A(n30), .B(n6), .Y(WrData[6]) );
  NOR2X2M U22 ( .A(n29), .B(n6), .Y(WrData[7]) );
  NOR2X2M U23 ( .A(n63), .B(n76), .Y(ALU_FUN[1]) );
  NOR2X2M U24 ( .A(n61), .B(n7), .Y(RdEn) );
  NAND2BX2M U25 ( .AN(n50), .B(n49), .Y(n81) );
  NOR2X2M U26 ( .A(n45), .B(n106), .Y(n57) );
  NAND3X2M U27 ( .A(n79), .B(n81), .C(n80), .Y(TX_D_VLD) );
  BUFX2M U28 ( .A(n52), .Y(n3) );
  INVX2M U29 ( .A(n1), .Y(n7) );
  NAND4BX1M U30 ( .AN(n2), .B(n5), .C(n53), .D(n54), .Y(next_state[1]) );
  AOI221XLM U31 ( .A0(n105), .A1(n1), .B0(n55), .B1(n7), .C0(n56), .Y(n54) );
  NOR2X2M U32 ( .A(n63), .B(n72), .Y(ALU_FUN[3]) );
  AND2X2M U33 ( .A(n78), .B(n44), .Y(n49) );
  INVX2M U34 ( .A(n53), .Y(n43) );
  INVX2M U35 ( .A(n47), .Y(n105) );
  NOR3X2M U36 ( .A(n7), .B(n44), .C(n69), .Y(n73) );
  NOR2X2M U37 ( .A(n7), .B(n63), .Y(ALU_EN) );
  OAI21X2M U38 ( .A0(n44), .A1(n69), .B0(n47), .Y(n60) );
  BUFX2M U39 ( .A(n52), .Y(n2) );
  NAND4BX1M U40 ( .AN(RdEn), .B(n46), .C(n47), .D(n48), .Y(next_state[2]) );
  AOI211X2M U41 ( .A0(n49), .A1(n50), .B0(n51), .C0(n43), .Y(n48) );
  NAND2BX2M U42 ( .AN(ALU_EN), .B(n45), .Y(next_state[3]) );
  OAI22X4M U43 ( .A0(n61), .A1(n72), .B0(n25), .B1(n83), .Y(Address[3]) );
  NOR2X2M U44 ( .A(n106), .B(current_state[3]), .Y(n84) );
  INVX2M U45 ( .A(current_state[1]), .Y(n106) );
  OAI22X1M U46 ( .A0(n61), .A1(n76), .B0(n27), .B1(n83), .Y(Address[1]) );
  OAI222X1M U47 ( .A0(n7), .A1(n53), .B0(n28), .B1(n83), .C0(n61), .C1(n77), 
        .Y(Address[0]) );
  NOR3BX2M U48 ( .AN(Out_Valid), .B(n45), .C(current_state[1]), .Y(n52) );
  NOR4X1M U49 ( .A(n29), .B(n72), .C(n69), .D(current_state[0]), .Y(n66) );
  NOR3X2M U50 ( .A(current_state[1]), .B(current_state[3]), .C(n107), .Y(n78)
         );
  NAND3X2M U51 ( .A(current_state[0]), .B(n84), .C(current_state[2]), .Y(n63)
         );
  NAND4X2M U52 ( .A(current_state[0]), .B(current_state[3]), .C(n82), .D(n4), 
        .Y(n80) );
  NOR2X2M U53 ( .A(current_state[2]), .B(current_state[1]), .Y(n82) );
  OAI211X2M U54 ( .A0(n1), .A1(n61), .B0(n62), .C0(n8), .Y(n56) );
  NAND4X2M U55 ( .A(n33), .B(n30), .C(RX_P_Data[0]), .D(n67), .Y(n62) );
  INVX2M U56 ( .A(n51), .Y(n8) );
  NOR2X2M U57 ( .A(n32), .B(n68), .Y(n67) );
  NAND3X2M U58 ( .A(n84), .B(n107), .C(current_state[0]), .Y(n61) );
  OAI222X1M U59 ( .A0(n24), .A1(n79), .B0(n16), .B1(n80), .C0(n81), .C1(n42), 
        .Y(TX_P_DATA[0]) );
  INVX2M U60 ( .A(RdData[0]), .Y(n42) );
  OAI222X1M U61 ( .A0(n23), .A1(n79), .B0(n15), .B1(n80), .C0(n81), .C1(n41), 
        .Y(TX_P_DATA[1]) );
  INVX2M U62 ( .A(RdData[1]), .Y(n41) );
  OAI222X1M U63 ( .A0(n22), .A1(n79), .B0(n14), .B1(n80), .C0(n81), .C1(n40), 
        .Y(TX_P_DATA[2]) );
  INVX2M U64 ( .A(RdData[2]), .Y(n40) );
  OAI222X1M U65 ( .A0(n21), .A1(n79), .B0(n13), .B1(n80), .C0(n81), .C1(n39), 
        .Y(TX_P_DATA[3]) );
  INVX2M U66 ( .A(RdData[3]), .Y(n39) );
  OAI222X1M U67 ( .A0(n20), .A1(n79), .B0(n12), .B1(n80), .C0(n81), .C1(n38), 
        .Y(TX_P_DATA[4]) );
  INVX2M U68 ( .A(RdData[4]), .Y(n38) );
  OAI222X1M U69 ( .A0(n19), .A1(n79), .B0(n11), .B1(n80), .C0(n81), .C1(n37), 
        .Y(TX_P_DATA[5]) );
  INVX2M U70 ( .A(RdData[5]), .Y(n37) );
  OAI222X1M U71 ( .A0(n18), .A1(n79), .B0(n10), .B1(n80), .C0(n81), .C1(n36), 
        .Y(TX_P_DATA[6]) );
  INVX2M U72 ( .A(RdData[6]), .Y(n36) );
  OAI222X1M U73 ( .A0(n17), .A1(n79), .B0(n9), .B1(n80), .C0(n81), .C1(n35), 
        .Y(TX_P_DATA[7]) );
  INVX2M U74 ( .A(RdData[7]), .Y(n35) );
  NAND2X2M U75 ( .A(RX_P_Data[3]), .B(n1), .Y(n72) );
  NAND3X2M U76 ( .A(n44), .B(n107), .C(current_state[3]), .Y(n45) );
  NAND2X2M U77 ( .A(RX_P_Data[0]), .B(n1), .Y(n77) );
  INVX2M U78 ( .A(current_state[0]), .Y(n44) );
  NAND2X2M U79 ( .A(RX_P_Data[1]), .B(n1), .Y(n76) );
  NAND2X2M U80 ( .A(RX_P_Data[2]), .B(n1), .Y(n75) );
  OR3X2M U81 ( .A(current_state[3]), .B(current_state[2]), .C(current_state[1]), .Y(n69) );
  NAND3X2M U82 ( .A(RX_P_Data[1]), .B(n66), .C(RX_P_Data[5]), .Y(n68) );
  NAND2X2M U83 ( .A(n78), .B(current_state[0]), .Y(n47) );
  OAI22X1M U84 ( .A0(n1), .A1(n63), .B0(n64), .B1(n65), .Y(n51) );
  NAND3X2M U85 ( .A(RX_P_Data[0]), .B(RX_P_Data[6]), .C(RX_P_Data[4]), .Y(n65)
         );
  NAND4X2M U86 ( .A(RX_P_Data[2]), .B(n66), .C(n34), .D(n31), .Y(n64) );
  NAND3X2M U87 ( .A(n84), .B(n44), .C(current_state[2]), .Y(n53) );
  OAI2BB2X1M U88 ( .B0(n2), .B1(n24), .A0N(ALU_OUT[0]), .A1N(n3), .Y(n89) );
  OAI2BB2X1M U89 ( .B0(n2), .B1(n23), .A0N(ALU_OUT[1]), .A1N(n3), .Y(n90) );
  OAI2BB2X1M U90 ( .B0(n2), .B1(n22), .A0N(ALU_OUT[2]), .A1N(n3), .Y(n91) );
  OAI2BB2X1M U91 ( .B0(n3), .B1(n21), .A0N(ALU_OUT[3]), .A1N(n3), .Y(n92) );
  OAI2BB2X1M U92 ( .B0(n2), .B1(n20), .A0N(ALU_OUT[4]), .A1N(n3), .Y(n93) );
  OAI2BB2X1M U93 ( .B0(n2), .B1(n19), .A0N(ALU_OUT[5]), .A1N(n3), .Y(n94) );
  OAI2BB2X1M U94 ( .B0(n3), .B1(n18), .A0N(ALU_OUT[6]), .A1N(n3), .Y(n95) );
  OAI2BB2X1M U95 ( .B0(n3), .B1(n17), .A0N(ALU_OUT[7]), .A1N(n3), .Y(n96) );
  OAI2BB2X1M U96 ( .B0(n3), .B1(n16), .A0N(ALU_OUT[8]), .A1N(n3), .Y(n97) );
  OAI2BB2X1M U97 ( .B0(n2), .B1(n15), .A0N(ALU_OUT[9]), .A1N(n3), .Y(n98) );
  OAI2BB2X1M U98 ( .B0(n2), .B1(n14), .A0N(ALU_OUT[10]), .A1N(n3), .Y(n99) );
  OAI2BB2X1M U99 ( .B0(n2), .B1(n13), .A0N(ALU_OUT[11]), .A1N(n3), .Y(n100) );
  OAI2BB2X1M U100 ( .B0(n2), .B1(n12), .A0N(ALU_OUT[12]), .A1N(n3), .Y(n101)
         );
  OAI2BB2X1M U101 ( .B0(n2), .B1(n11), .A0N(ALU_OUT[13]), .A1N(n3), .Y(n102)
         );
  OAI2BB2X1M U102 ( .B0(n2), .B1(n10), .A0N(ALU_OUT[14]), .A1N(n3), .Y(n103)
         );
  OAI2BB2X1M U103 ( .B0(n2), .B1(n9), .A0N(ALU_OUT[15]), .A1N(n3), .Y(n104) );
  INVX2M U104 ( .A(current_state[2]), .Y(n107) );
  NAND4BX1M U105 ( .AN(n57), .B(n46), .C(n58), .D(n59), .Y(next_state[0]) );
  NAND4X2M U106 ( .A(n32), .B(n30), .C(n33), .D(n70), .Y(n58) );
  AOI221XLM U107 ( .A0(n60), .A1(n7), .B0(n43), .B1(n1), .C0(n56), .Y(n59) );
  NOR2X2M U108 ( .A(RX_P_Data[0]), .B(n68), .Y(n70) );
  NAND2X2M U109 ( .A(RdData_Valid), .B(n4), .Y(n50) );
  OAI22X1M U110 ( .A0(n34), .A1(n5), .B0(n73), .B1(n27), .Y(n86) );
  OAI22X1M U111 ( .A0(n33), .A1(n5), .B0(n73), .B1(n26), .Y(n87) );
  OAI21X2M U112 ( .A0(current_state[1]), .A1(n45), .B0(n63), .Y(CLK_EN) );
  NAND4X2M U113 ( .A(RX_P_Data[2]), .B(n66), .C(RX_P_Data[6]), .D(n71), .Y(n46) );
  NOR4X1M U114 ( .A(RX_P_Data[5]), .B(RX_P_Data[4]), .C(RX_P_Data[1]), .D(
        RX_P_Data[0]), .Y(n71) );
  OAI2BB2X1M U115 ( .B0(n73), .B1(n25), .A0N(RX_P_Data[3]), .A1N(n73), .Y(n88)
         );
  OAI2BB2X1M U116 ( .B0(n73), .B1(n28), .A0N(RX_P_Data[0]), .A1N(n73), .Y(n85)
         );
  INVX2M U117 ( .A(RX_P_Data[4]), .Y(n32) );
  INVX2M U118 ( .A(RX_P_Data[2]), .Y(n33) );
  INVX2M U119 ( .A(RX_P_Data[6]), .Y(n30) );
  INVX2M U120 ( .A(RX_P_Data[1]), .Y(n34) );
  INVX2M U121 ( .A(RX_P_Data[5]), .Y(n31) );
  INVX2M U122 ( .A(RX_P_Data[7]), .Y(n29) );
endmodule


module Reg_file_WIDTH8_ADDR4 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
  wire   N11, N12, N13, N14, \Reg_File[15][7] , \Reg_File[15][6] ,
         \Reg_File[15][5] , \Reg_File[15][4] , \Reg_File[15][3] ,
         \Reg_File[15][2] , \Reg_File[15][1] , \Reg_File[15][0] ,
         \Reg_File[14][7] , \Reg_File[14][6] , \Reg_File[14][5] ,
         \Reg_File[14][4] , \Reg_File[14][3] , \Reg_File[14][2] ,
         \Reg_File[14][1] , \Reg_File[14][0] , \Reg_File[13][7] ,
         \Reg_File[13][6] , \Reg_File[13][5] , \Reg_File[13][4] ,
         \Reg_File[13][3] , \Reg_File[13][2] , \Reg_File[13][1] ,
         \Reg_File[13][0] , \Reg_File[12][7] , \Reg_File[12][6] ,
         \Reg_File[12][5] , \Reg_File[12][4] , \Reg_File[12][3] ,
         \Reg_File[12][2] , \Reg_File[12][1] , \Reg_File[12][0] ,
         \Reg_File[11][7] , \Reg_File[11][6] , \Reg_File[11][5] ,
         \Reg_File[11][4] , \Reg_File[11][3] , \Reg_File[11][2] ,
         \Reg_File[11][1] , \Reg_File[11][0] , \Reg_File[10][7] ,
         \Reg_File[10][6] , \Reg_File[10][5] , \Reg_File[10][4] ,
         \Reg_File[10][3] , \Reg_File[10][2] , \Reg_File[10][1] ,
         \Reg_File[10][0] , \Reg_File[9][7] , \Reg_File[9][6] ,
         \Reg_File[9][5] , \Reg_File[9][4] , \Reg_File[9][3] ,
         \Reg_File[9][2] , \Reg_File[9][1] , \Reg_File[9][0] ,
         \Reg_File[8][7] , \Reg_File[8][6] , \Reg_File[8][5] ,
         \Reg_File[8][4] , \Reg_File[8][3] , \Reg_File[8][2] ,
         \Reg_File[8][1] , \Reg_File[8][0] , \Reg_File[7][7] ,
         \Reg_File[7][6] , \Reg_File[7][5] , \Reg_File[7][4] ,
         \Reg_File[7][3] , \Reg_File[7][2] , \Reg_File[7][1] ,
         \Reg_File[7][0] , \Reg_File[6][7] , \Reg_File[6][6] ,
         \Reg_File[6][5] , \Reg_File[6][4] , \Reg_File[6][3] ,
         \Reg_File[6][2] , \Reg_File[6][1] , \Reg_File[6][0] ,
         \Reg_File[5][7] , \Reg_File[5][6] , \Reg_File[5][5] ,
         \Reg_File[5][4] , \Reg_File[5][3] , \Reg_File[5][2] ,
         \Reg_File[5][1] , \Reg_File[5][0] , \Reg_File[4][7] ,
         \Reg_File[4][6] , \Reg_File[4][5] , \Reg_File[4][4] ,
         \Reg_File[4][3] , \Reg_File[4][2] , \Reg_File[4][1] ,
         \Reg_File[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n13, n14,
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
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \Reg_File_reg[13][7]  ( .D(n161), .CK(CLK), .RN(n213), .Q(
        \Reg_File[13][7] ) );
  DFFRQX2M \Reg_File_reg[13][6]  ( .D(n160), .CK(CLK), .RN(n213), .Q(
        \Reg_File[13][6] ) );
  DFFRQX2M \Reg_File_reg[13][5]  ( .D(n159), .CK(CLK), .RN(n212), .Q(
        \Reg_File[13][5] ) );
  DFFRQX2M \Reg_File_reg[13][4]  ( .D(n158), .CK(CLK), .RN(n212), .Q(
        \Reg_File[13][4] ) );
  DFFRQX2M \Reg_File_reg[13][3]  ( .D(n157), .CK(CLK), .RN(n212), .Q(
        \Reg_File[13][3] ) );
  DFFRQX2M \Reg_File_reg[13][2]  ( .D(n156), .CK(CLK), .RN(n212), .Q(
        \Reg_File[13][2] ) );
  DFFRQX2M \Reg_File_reg[13][1]  ( .D(n155), .CK(CLK), .RN(n212), .Q(
        \Reg_File[13][1] ) );
  DFFRQX2M \Reg_File_reg[13][0]  ( .D(n154), .CK(CLK), .RN(n212), .Q(
        \Reg_File[13][0] ) );
  DFFRQX2M \Reg_File_reg[9][7]  ( .D(n129), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][7] ) );
  DFFRQX2M \Reg_File_reg[9][6]  ( .D(n128), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][6] ) );
  DFFRQX2M \Reg_File_reg[9][5]  ( .D(n127), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][5] ) );
  DFFRQX2M \Reg_File_reg[9][4]  ( .D(n126), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][4] ) );
  DFFRQX2M \Reg_File_reg[9][3]  ( .D(n125), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][3] ) );
  DFFRQX2M \Reg_File_reg[9][2]  ( .D(n124), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][2] ) );
  DFFRQX2M \Reg_File_reg[9][1]  ( .D(n123), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][1] ) );
  DFFRQX2M \Reg_File_reg[9][0]  ( .D(n122), .CK(CLK), .RN(n210), .Q(
        \Reg_File[9][0] ) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n97), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n96), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n95), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n94), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n93), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n92), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n91), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n90), .CK(CLK), .RN(n208), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[15][7]  ( .D(n177), .CK(CLK), .RN(n205), .Q(
        \Reg_File[15][7] ) );
  DFFRQX2M \Reg_File_reg[15][6]  ( .D(n176), .CK(CLK), .RN(n214), .Q(
        \Reg_File[15][6] ) );
  DFFRQX2M \Reg_File_reg[15][5]  ( .D(n175), .CK(CLK), .RN(n214), .Q(
        \Reg_File[15][5] ) );
  DFFRQX2M \Reg_File_reg[15][4]  ( .D(n174), .CK(CLK), .RN(n213), .Q(
        \Reg_File[15][4] ) );
  DFFRQX2M \Reg_File_reg[15][3]  ( .D(n173), .CK(CLK), .RN(n213), .Q(
        \Reg_File[15][3] ) );
  DFFRQX2M \Reg_File_reg[15][2]  ( .D(n172), .CK(CLK), .RN(n213), .Q(
        \Reg_File[15][2] ) );
  DFFRQX2M \Reg_File_reg[15][1]  ( .D(n171), .CK(CLK), .RN(n213), .Q(
        \Reg_File[15][1] ) );
  DFFRQX2M \Reg_File_reg[15][0]  ( .D(n170), .CK(CLK), .RN(n213), .Q(
        \Reg_File[15][0] ) );
  DFFRQX2M \Reg_File_reg[11][7]  ( .D(n145), .CK(CLK), .RN(n212), .Q(
        \Reg_File[11][7] ) );
  DFFRQX2M \Reg_File_reg[11][6]  ( .D(n144), .CK(CLK), .RN(n211), .Q(
        \Reg_File[11][6] ) );
  DFFRQX2M \Reg_File_reg[11][5]  ( .D(n143), .CK(CLK), .RN(n211), .Q(
        \Reg_File[11][5] ) );
  DFFRQX2M \Reg_File_reg[11][4]  ( .D(n142), .CK(CLK), .RN(n211), .Q(
        \Reg_File[11][4] ) );
  DFFRQX2M \Reg_File_reg[11][3]  ( .D(n141), .CK(CLK), .RN(n211), .Q(
        \Reg_File[11][3] ) );
  DFFRQX2M \Reg_File_reg[11][2]  ( .D(n140), .CK(CLK), .RN(n211), .Q(
        \Reg_File[11][2] ) );
  DFFRQX2M \Reg_File_reg[11][1]  ( .D(n139), .CK(CLK), .RN(n211), .Q(
        \Reg_File[11][1] ) );
  DFFRQX2M \Reg_File_reg[11][0]  ( .D(n138), .CK(CLK), .RN(n211), .Q(
        \Reg_File[11][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n113), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n112), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n111), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n110), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n109), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n108), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n107), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n106), .CK(CLK), .RN(n209), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[14][7]  ( .D(n169), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][7] ) );
  DFFRQX2M \Reg_File_reg[14][6]  ( .D(n168), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][6] ) );
  DFFRQX2M \Reg_File_reg[14][5]  ( .D(n167), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][5] ) );
  DFFRQX2M \Reg_File_reg[14][4]  ( .D(n166), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][4] ) );
  DFFRQX2M \Reg_File_reg[14][3]  ( .D(n165), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][3] ) );
  DFFRQX2M \Reg_File_reg[14][2]  ( .D(n164), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][2] ) );
  DFFRQX2M \Reg_File_reg[14][1]  ( .D(n163), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][1] ) );
  DFFRQX2M \Reg_File_reg[14][0]  ( .D(n162), .CK(CLK), .RN(n213), .Q(
        \Reg_File[14][0] ) );
  DFFRQX2M \Reg_File_reg[10][7]  ( .D(n137), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][7] ) );
  DFFRQX2M \Reg_File_reg[10][6]  ( .D(n136), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][6] ) );
  DFFRQX2M \Reg_File_reg[10][5]  ( .D(n135), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][5] ) );
  DFFRQX2M \Reg_File_reg[10][4]  ( .D(n134), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][4] ) );
  DFFRQX2M \Reg_File_reg[10][3]  ( .D(n133), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][3] ) );
  DFFRQX2M \Reg_File_reg[10][2]  ( .D(n132), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][2] ) );
  DFFRQX2M \Reg_File_reg[10][1]  ( .D(n131), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][1] ) );
  DFFRQX2M \Reg_File_reg[10][0]  ( .D(n130), .CK(CLK), .RN(n211), .Q(
        \Reg_File[10][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n105), .CK(CLK), .RN(n209), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n104), .CK(CLK), .RN(n209), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n103), .CK(CLK), .RN(n209), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n102), .CK(CLK), .RN(n209), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n101), .CK(CLK), .RN(n209), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n100), .CK(CLK), .RN(n208), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n99), .CK(CLK), .RN(n208), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n98), .CK(CLK), .RN(n208), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[12][7]  ( .D(n153), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][7] ) );
  DFFRQX2M \Reg_File_reg[12][6]  ( .D(n152), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][6] ) );
  DFFRQX2M \Reg_File_reg[12][5]  ( .D(n151), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][5] ) );
  DFFRQX2M \Reg_File_reg[12][4]  ( .D(n150), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][4] ) );
  DFFRQX2M \Reg_File_reg[12][3]  ( .D(n149), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][3] ) );
  DFFRQX2M \Reg_File_reg[12][2]  ( .D(n148), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][2] ) );
  DFFRQX2M \Reg_File_reg[12][1]  ( .D(n147), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][1] ) );
  DFFRQX2M \Reg_File_reg[12][0]  ( .D(n146), .CK(CLK), .RN(n212), .Q(
        \Reg_File[12][0] ) );
  DFFRQX2M \Reg_File_reg[8][7]  ( .D(n121), .CK(CLK), .RN(n210), .Q(
        \Reg_File[8][7] ) );
  DFFRQX2M \Reg_File_reg[8][6]  ( .D(n120), .CK(CLK), .RN(n210), .Q(
        \Reg_File[8][6] ) );
  DFFRQX2M \Reg_File_reg[8][5]  ( .D(n119), .CK(CLK), .RN(n210), .Q(
        \Reg_File[8][5] ) );
  DFFRQX2M \Reg_File_reg[8][4]  ( .D(n118), .CK(CLK), .RN(n210), .Q(
        \Reg_File[8][4] ) );
  DFFRQX2M \Reg_File_reg[8][3]  ( .D(n117), .CK(CLK), .RN(n210), .Q(
        \Reg_File[8][3] ) );
  DFFRQX2M \Reg_File_reg[8][2]  ( .D(n116), .CK(CLK), .RN(n210), .Q(
        \Reg_File[8][2] ) );
  DFFRQX2M \Reg_File_reg[8][1]  ( .D(n115), .CK(CLK), .RN(n210), .Q(
        \Reg_File[8][1] ) );
  DFFRQX2M \Reg_File_reg[8][0]  ( .D(n114), .CK(CLK), .RN(n209), .Q(
        \Reg_File[8][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n89), .CK(CLK), .RN(n208), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n88), .CK(CLK), .RN(n208), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n87), .CK(CLK), .RN(n208), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n86), .CK(CLK), .RN(n208), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n85), .CK(CLK), .RN(n207), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n84), .CK(CLK), .RN(n207), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n83), .CK(CLK), .RN(n207), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n82), .CK(CLK), .RN(n207), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n67), .CK(CLK), .RN(n206), .Q(REG2[1]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n49), .CK(CLK), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n48), .CK(CLK), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n47), .CK(CLK), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n46), .CK(CLK), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n45), .CK(CLK), .RN(n205), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n44), .CK(CLK), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n43), .CK(CLK), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n42), .CK(CLK), .RN(n205), .Q(RdData[0]) );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n74), .CK(CLK), .RN(n207), .Q(REG3[0]) );
  DFFRQX2M \Reg_File_reg[3][7]  ( .D(n81), .CK(CLK), .RN(n207), .Q(REG3[7]) );
  DFFRQX2M \Reg_File_reg[3][3]  ( .D(n77), .CK(CLK), .RN(n207), .Q(REG3[3]) );
  DFFRQX2M \Reg_File_reg[3][2]  ( .D(n76), .CK(CLK), .RN(n207), .Q(REG3[2]) );
  DFFSQX2M \Reg_File_reg[3][5]  ( .D(n79), .CK(CLK), .SN(n205), .Q(REG3[5]) );
  DFFRQX2M \Reg_File_reg[3][4]  ( .D(n78), .CK(CLK), .RN(n207), .Q(REG3[4]) );
  DFFRQX2M \Reg_File_reg[2][2]  ( .D(n68), .CK(CLK), .RN(n207), .Q(REG2[2]) );
  DFFRQX2M \Reg_File_reg[3][6]  ( .D(n80), .CK(CLK), .RN(n207), .Q(REG3[6]) );
  DFFRQX2M \Reg_File_reg[3][1]  ( .D(n75), .CK(CLK), .RN(n207), .Q(REG3[1]) );
  DFFSQX2M \Reg_File_reg[2][0]  ( .D(n66), .CK(CLK), .SN(n205), .Q(REG2[0]) );
  DFFRQX2M RdData_VLD_reg ( .D(n41), .CK(CLK), .RN(n209), .Q(RdData_VLD) );
  DFFSQX2M \Reg_File_reg[2][7]  ( .D(n73), .CK(CLK), .SN(n205), .Q(REG2[7]) );
  DFFRQX2M \Reg_File_reg[2][6]  ( .D(n72), .CK(CLK), .RN(n207), .Q(REG2[6]) );
  DFFRQX2M \Reg_File_reg[2][4]  ( .D(n70), .CK(CLK), .RN(n207), .Q(REG2[4]) );
  DFFRQX2M \Reg_File_reg[2][3]  ( .D(n69), .CK(CLK), .RN(n206), .Q(REG2[3]) );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n51), .CK(CLK), .RN(n205), .Q(REG0[1]) );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n50), .CK(CLK), .RN(n205), .Q(REG0[0]) );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n52), .CK(CLK), .RN(n205), .Q(REG0[2]) );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n53), .CK(CLK), .RN(n206), .Q(REG0[3]) );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n54), .CK(CLK), .RN(n206), .Q(REG0[4]) );
  DFFRQX2M \Reg_File_reg[0][5]  ( .D(n55), .CK(CLK), .RN(n206), .Q(REG0[5]) );
  DFFRQX2M \Reg_File_reg[0][6]  ( .D(n56), .CK(CLK), .RN(n206), .Q(REG0[6]) );
  DFFRQX2M \Reg_File_reg[0][7]  ( .D(n57), .CK(CLK), .RN(n206), .Q(REG0[7]) );
  DFFRQX2M \Reg_File_reg[1][1]  ( .D(n59), .CK(CLK), .RN(n206), .Q(REG1[1]) );
  DFFRQX2M \Reg_File_reg[1][2]  ( .D(n60), .CK(CLK), .RN(n206), .Q(REG1[2]) );
  DFFRQX2M \Reg_File_reg[1][6]  ( .D(n64), .CK(CLK), .RN(n206), .Q(REG1[6]) );
  DFFRQX2M \Reg_File_reg[1][5]  ( .D(n63), .CK(CLK), .RN(n206), .Q(REG1[5]) );
  DFFRQX2M \Reg_File_reg[1][4]  ( .D(n62), .CK(CLK), .RN(n206), .Q(REG1[4]) );
  DFFRQX2M \Reg_File_reg[1][7]  ( .D(n65), .CK(CLK), .RN(n206), .Q(REG1[7]) );
  DFFRQX2M \Reg_File_reg[1][3]  ( .D(n61), .CK(CLK), .RN(n206), .Q(REG1[3]) );
  DFFRQX2M \Reg_File_reg[1][0]  ( .D(n58), .CK(CLK), .RN(n206), .Q(REG1[0]) );
  DFFRQX2M \Reg_File_reg[2][5]  ( .D(n71), .CK(CLK), .RN(n207), .Q(REG2[5]) );
  NOR2X2M U3 ( .A(n204), .B(N13), .Y(n21) );
  NOR2X2M U4 ( .A(n199), .B(N13), .Y(n16) );
  INVX2M U5 ( .A(n200), .Y(n201) );
  INVX2M U6 ( .A(n198), .Y(n199) );
  INVX2M U7 ( .A(WrEn), .Y(n221) );
  BUFX2M U8 ( .A(n204), .Y(n198) );
  INVX2M U9 ( .A(n200), .Y(n202) );
  BUFX2M U10 ( .A(n203), .Y(n200) );
  INVX2M U11 ( .A(n14), .Y(n220) );
  NAND2X2M U12 ( .A(n19), .B(n16), .Y(n18) );
  NAND2X2M U13 ( .A(n31), .B(n16), .Y(n30) );
  NAND2X2M U14 ( .A(n33), .B(n16), .Y(n32) );
  NAND2X2M U15 ( .A(n31), .B(n21), .Y(n34) );
  NAND2X2M U16 ( .A(n33), .B(n21), .Y(n35) );
  NAND2X2M U17 ( .A(n21), .B(n17), .Y(n20) );
  NAND2X2M U18 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X2M U19 ( .A(n24), .B(n17), .Y(n23) );
  NAND2X2M U20 ( .A(n24), .B(n19), .Y(n25) );
  NAND2X2M U21 ( .A(n27), .B(n17), .Y(n26) );
  NAND2X2M U22 ( .A(n27), .B(n19), .Y(n29) );
  NAND2X2M U23 ( .A(n31), .B(n24), .Y(n36) );
  NAND2X2M U24 ( .A(n33), .B(n24), .Y(n37) );
  NAND2X2M U25 ( .A(n31), .B(n27), .Y(n38) );
  NAND2X2M U26 ( .A(n33), .B(n27), .Y(n40) );
  NAND2X2M U27 ( .A(n16), .B(n17), .Y(n15) );
  NOR2X2M U28 ( .A(n221), .B(RdEn), .Y(n13) );
  AND2X2M U29 ( .A(n28), .B(N11), .Y(n19) );
  AND2X2M U30 ( .A(n39), .B(N11), .Y(n33) );
  NAND2X2M U31 ( .A(RdEn), .B(n221), .Y(n14) );
  BUFX2M U32 ( .A(n219), .Y(n205) );
  BUFX2M U33 ( .A(n219), .Y(n206) );
  BUFX2M U34 ( .A(n218), .Y(n207) );
  BUFX2M U35 ( .A(n218), .Y(n208) );
  BUFX2M U36 ( .A(n217), .Y(n209) );
  BUFX2M U37 ( .A(n217), .Y(n210) );
  BUFX2M U38 ( .A(n216), .Y(n211) );
  BUFX2M U39 ( .A(n216), .Y(n212) );
  BUFX2M U40 ( .A(n215), .Y(n213) );
  BUFX2M U41 ( .A(n215), .Y(n214) );
  NOR2BX2M U42 ( .AN(n13), .B(N14), .Y(n28) );
  AND2X2M U43 ( .A(N13), .B(n204), .Y(n24) );
  AND2X2M U44 ( .A(N13), .B(n199), .Y(n27) );
  AND2X2M U45 ( .A(n28), .B(n203), .Y(n17) );
  AND2X2M U46 ( .A(n39), .B(n203), .Y(n31) );
  AND2X2M U47 ( .A(N14), .B(n13), .Y(n39) );
  INVX2M U48 ( .A(WrData[0]), .Y(n226) );
  INVX2M U49 ( .A(WrData[1]), .Y(n227) );
  INVX2M U50 ( .A(WrData[2]), .Y(n228) );
  INVX2M U51 ( .A(WrData[3]), .Y(n229) );
  INVX2M U52 ( .A(WrData[4]), .Y(n225) );
  INVX2M U53 ( .A(WrData[5]), .Y(n224) );
  INVX2M U54 ( .A(WrData[6]), .Y(n223) );
  INVX2M U55 ( .A(WrData[7]), .Y(n222) );
  BUFX2M U56 ( .A(RST), .Y(n218) );
  BUFX2M U57 ( .A(RST), .Y(n217) );
  BUFX2M U58 ( .A(RST), .Y(n216) );
  BUFX2M U59 ( .A(RST), .Y(n215) );
  BUFX2M U60 ( .A(RST), .Y(n219) );
  OAI2BB2X1M U61 ( .B0(n15), .B1(n226), .A0N(REG0[0]), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U62 ( .B0(n15), .B1(n227), .A0N(REG0[1]), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U63 ( .B0(n15), .B1(n228), .A0N(REG0[2]), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U64 ( .B0(n15), .B1(n229), .A0N(REG0[3]), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U65 ( .B0(n15), .B1(n225), .A0N(REG0[4]), .A1N(n15), .Y(n54) );
  OAI2BB2X1M U66 ( .B0(n15), .B1(n224), .A0N(REG0[5]), .A1N(n15), .Y(n55) );
  OAI2BB2X1M U67 ( .B0(n15), .B1(n223), .A0N(REG0[6]), .A1N(n15), .Y(n56) );
  OAI2BB2X1M U68 ( .B0(n15), .B1(n222), .A0N(REG0[7]), .A1N(n15), .Y(n57) );
  OAI2BB2X1M U69 ( .B0(n227), .B1(n20), .A0N(REG2[1]), .A1N(n20), .Y(n67) );
  OAI2BB2X1M U70 ( .B0(n228), .B1(n20), .A0N(REG2[2]), .A1N(n20), .Y(n68) );
  OAI2BB2X1M U71 ( .B0(n229), .B1(n20), .A0N(REG2[3]), .A1N(n20), .Y(n69) );
  OAI2BB2X1M U72 ( .B0(n225), .B1(n20), .A0N(REG2[4]), .A1N(n20), .Y(n70) );
  OAI2BB2X1M U73 ( .B0(n224), .B1(n20), .A0N(REG2[5]), .A1N(n20), .Y(n71) );
  OAI2BB2X1M U74 ( .B0(n223), .B1(n20), .A0N(REG2[6]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U75 ( .B0(n226), .B1(n22), .A0N(REG3[0]), .A1N(n22), .Y(n74) );
  OAI2BB2X1M U76 ( .B0(n227), .B1(n22), .A0N(REG3[1]), .A1N(n22), .Y(n75) );
  OAI2BB2X1M U77 ( .B0(n228), .B1(n22), .A0N(REG3[2]), .A1N(n22), .Y(n76) );
  OAI2BB2X1M U78 ( .B0(n229), .B1(n22), .A0N(REG3[3]), .A1N(n22), .Y(n77) );
  OAI2BB2X1M U79 ( .B0(n225), .B1(n22), .A0N(REG3[4]), .A1N(n22), .Y(n78) );
  OAI2BB2X1M U80 ( .B0(n223), .B1(n22), .A0N(REG3[6]), .A1N(n22), .Y(n80) );
  OAI2BB2X1M U81 ( .B0(n222), .B1(n22), .A0N(REG3[7]), .A1N(n22), .Y(n81) );
  OAI2BB2X1M U82 ( .B0(n226), .B1(n18), .A0N(REG1[0]), .A1N(n18), .Y(n58) );
  OAI2BB2X1M U83 ( .B0(n227), .B1(n18), .A0N(REG1[1]), .A1N(n18), .Y(n59) );
  OAI2BB2X1M U84 ( .B0(n228), .B1(n18), .A0N(REG1[2]), .A1N(n18), .Y(n60) );
  OAI2BB2X1M U85 ( .B0(n229), .B1(n18), .A0N(REG1[3]), .A1N(n18), .Y(n61) );
  OAI2BB2X1M U86 ( .B0(n225), .B1(n18), .A0N(REG1[4]), .A1N(n18), .Y(n62) );
  OAI2BB2X1M U87 ( .B0(n224), .B1(n18), .A0N(REG1[5]), .A1N(n18), .Y(n63) );
  OAI2BB2X1M U88 ( .B0(n223), .B1(n18), .A0N(REG1[6]), .A1N(n18), .Y(n64) );
  OAI2BB2X1M U89 ( .B0(n222), .B1(n18), .A0N(REG1[7]), .A1N(n18), .Y(n65) );
  OAI2BB2X1M U90 ( .B0(n226), .B1(n30), .A0N(\Reg_File[8][0] ), .A1N(n30), .Y(
        n114) );
  OAI2BB2X1M U91 ( .B0(n227), .B1(n30), .A0N(\Reg_File[8][1] ), .A1N(n30), .Y(
        n115) );
  OAI2BB2X1M U92 ( .B0(n228), .B1(n30), .A0N(\Reg_File[8][2] ), .A1N(n30), .Y(
        n116) );
  OAI2BB2X1M U93 ( .B0(n229), .B1(n30), .A0N(\Reg_File[8][3] ), .A1N(n30), .Y(
        n117) );
  OAI2BB2X1M U94 ( .B0(n225), .B1(n30), .A0N(\Reg_File[8][4] ), .A1N(n30), .Y(
        n118) );
  OAI2BB2X1M U95 ( .B0(n224), .B1(n30), .A0N(\Reg_File[8][5] ), .A1N(n30), .Y(
        n119) );
  OAI2BB2X1M U96 ( .B0(n223), .B1(n30), .A0N(\Reg_File[8][6] ), .A1N(n30), .Y(
        n120) );
  OAI2BB2X1M U97 ( .B0(n222), .B1(n30), .A0N(\Reg_File[8][7] ), .A1N(n30), .Y(
        n121) );
  OAI2BB2X1M U98 ( .B0(n226), .B1(n32), .A0N(\Reg_File[9][0] ), .A1N(n32), .Y(
        n122) );
  OAI2BB2X1M U99 ( .B0(n227), .B1(n32), .A0N(\Reg_File[9][1] ), .A1N(n32), .Y(
        n123) );
  OAI2BB2X1M U100 ( .B0(n228), .B1(n32), .A0N(\Reg_File[9][2] ), .A1N(n32), 
        .Y(n124) );
  OAI2BB2X1M U101 ( .B0(n229), .B1(n32), .A0N(\Reg_File[9][3] ), .A1N(n32), 
        .Y(n125) );
  OAI2BB2X1M U102 ( .B0(n225), .B1(n32), .A0N(\Reg_File[9][4] ), .A1N(n32), 
        .Y(n126) );
  OAI2BB2X1M U103 ( .B0(n224), .B1(n32), .A0N(\Reg_File[9][5] ), .A1N(n32), 
        .Y(n127) );
  OAI2BB2X1M U104 ( .B0(n223), .B1(n32), .A0N(\Reg_File[9][6] ), .A1N(n32), 
        .Y(n128) );
  OAI2BB2X1M U105 ( .B0(n222), .B1(n32), .A0N(\Reg_File[9][7] ), .A1N(n32), 
        .Y(n129) );
  OAI2BB2X1M U106 ( .B0(n226), .B1(n34), .A0N(\Reg_File[10][0] ), .A1N(n34), 
        .Y(n130) );
  OAI2BB2X1M U107 ( .B0(n227), .B1(n34), .A0N(\Reg_File[10][1] ), .A1N(n34), 
        .Y(n131) );
  OAI2BB2X1M U108 ( .B0(n228), .B1(n34), .A0N(\Reg_File[10][2] ), .A1N(n34), 
        .Y(n132) );
  OAI2BB2X1M U109 ( .B0(n229), .B1(n34), .A0N(\Reg_File[10][3] ), .A1N(n34), 
        .Y(n133) );
  OAI2BB2X1M U110 ( .B0(n225), .B1(n34), .A0N(\Reg_File[10][4] ), .A1N(n34), 
        .Y(n134) );
  OAI2BB2X1M U111 ( .B0(n224), .B1(n34), .A0N(\Reg_File[10][5] ), .A1N(n34), 
        .Y(n135) );
  OAI2BB2X1M U112 ( .B0(n223), .B1(n34), .A0N(\Reg_File[10][6] ), .A1N(n34), 
        .Y(n136) );
  OAI2BB2X1M U113 ( .B0(n222), .B1(n34), .A0N(\Reg_File[10][7] ), .A1N(n34), 
        .Y(n137) );
  OAI2BB2X1M U114 ( .B0(n226), .B1(n35), .A0N(\Reg_File[11][0] ), .A1N(n35), 
        .Y(n138) );
  OAI2BB2X1M U115 ( .B0(n227), .B1(n35), .A0N(\Reg_File[11][1] ), .A1N(n35), 
        .Y(n139) );
  OAI2BB2X1M U116 ( .B0(n228), .B1(n35), .A0N(\Reg_File[11][2] ), .A1N(n35), 
        .Y(n140) );
  OAI2BB2X1M U117 ( .B0(n229), .B1(n35), .A0N(\Reg_File[11][3] ), .A1N(n35), 
        .Y(n141) );
  OAI2BB2X1M U118 ( .B0(n225), .B1(n35), .A0N(\Reg_File[11][4] ), .A1N(n35), 
        .Y(n142) );
  OAI2BB2X1M U119 ( .B0(n224), .B1(n35), .A0N(\Reg_File[11][5] ), .A1N(n35), 
        .Y(n143) );
  OAI2BB2X1M U120 ( .B0(n223), .B1(n35), .A0N(\Reg_File[11][6] ), .A1N(n35), 
        .Y(n144) );
  OAI2BB2X1M U121 ( .B0(n222), .B1(n35), .A0N(\Reg_File[11][7] ), .A1N(n35), 
        .Y(n145) );
  OAI2BB2X1M U122 ( .B0(n226), .B1(n36), .A0N(\Reg_File[12][0] ), .A1N(n36), 
        .Y(n146) );
  OAI2BB2X1M U123 ( .B0(n227), .B1(n36), .A0N(\Reg_File[12][1] ), .A1N(n36), 
        .Y(n147) );
  OAI2BB2X1M U124 ( .B0(n228), .B1(n36), .A0N(\Reg_File[12][2] ), .A1N(n36), 
        .Y(n148) );
  OAI2BB2X1M U125 ( .B0(n229), .B1(n36), .A0N(\Reg_File[12][3] ), .A1N(n36), 
        .Y(n149) );
  OAI2BB2X1M U126 ( .B0(n225), .B1(n36), .A0N(\Reg_File[12][4] ), .A1N(n36), 
        .Y(n150) );
  OAI2BB2X1M U127 ( .B0(n224), .B1(n36), .A0N(\Reg_File[12][5] ), .A1N(n36), 
        .Y(n151) );
  OAI2BB2X1M U128 ( .B0(n223), .B1(n36), .A0N(\Reg_File[12][6] ), .A1N(n36), 
        .Y(n152) );
  OAI2BB2X1M U129 ( .B0(n222), .B1(n36), .A0N(\Reg_File[12][7] ), .A1N(n36), 
        .Y(n153) );
  OAI2BB2X1M U130 ( .B0(n226), .B1(n37), .A0N(\Reg_File[13][0] ), .A1N(n37), 
        .Y(n154) );
  OAI2BB2X1M U131 ( .B0(n227), .B1(n37), .A0N(\Reg_File[13][1] ), .A1N(n37), 
        .Y(n155) );
  OAI2BB2X1M U132 ( .B0(n228), .B1(n37), .A0N(\Reg_File[13][2] ), .A1N(n37), 
        .Y(n156) );
  OAI2BB2X1M U133 ( .B0(n229), .B1(n37), .A0N(\Reg_File[13][3] ), .A1N(n37), 
        .Y(n157) );
  OAI2BB2X1M U134 ( .B0(n225), .B1(n37), .A0N(\Reg_File[13][4] ), .A1N(n37), 
        .Y(n158) );
  OAI2BB2X1M U135 ( .B0(n224), .B1(n37), .A0N(\Reg_File[13][5] ), .A1N(n37), 
        .Y(n159) );
  OAI2BB2X1M U136 ( .B0(n223), .B1(n37), .A0N(\Reg_File[13][6] ), .A1N(n37), 
        .Y(n160) );
  OAI2BB2X1M U137 ( .B0(n222), .B1(n37), .A0N(\Reg_File[13][7] ), .A1N(n37), 
        .Y(n161) );
  OAI2BB2X1M U138 ( .B0(n226), .B1(n38), .A0N(\Reg_File[14][0] ), .A1N(n38), 
        .Y(n162) );
  OAI2BB2X1M U139 ( .B0(n227), .B1(n38), .A0N(\Reg_File[14][1] ), .A1N(n38), 
        .Y(n163) );
  OAI2BB2X1M U140 ( .B0(n228), .B1(n38), .A0N(\Reg_File[14][2] ), .A1N(n38), 
        .Y(n164) );
  OAI2BB2X1M U141 ( .B0(n229), .B1(n38), .A0N(\Reg_File[14][3] ), .A1N(n38), 
        .Y(n165) );
  OAI2BB2X1M U142 ( .B0(n225), .B1(n38), .A0N(\Reg_File[14][4] ), .A1N(n38), 
        .Y(n166) );
  OAI2BB2X1M U143 ( .B0(n224), .B1(n38), .A0N(\Reg_File[14][5] ), .A1N(n38), 
        .Y(n167) );
  OAI2BB2X1M U144 ( .B0(n223), .B1(n38), .A0N(\Reg_File[14][6] ), .A1N(n38), 
        .Y(n168) );
  OAI2BB2X1M U145 ( .B0(n222), .B1(n38), .A0N(\Reg_File[14][7] ), .A1N(n38), 
        .Y(n169) );
  OAI2BB2X1M U146 ( .B0(n226), .B1(n40), .A0N(\Reg_File[15][0] ), .A1N(n40), 
        .Y(n170) );
  OAI2BB2X1M U147 ( .B0(n227), .B1(n40), .A0N(\Reg_File[15][1] ), .A1N(n40), 
        .Y(n171) );
  OAI2BB2X1M U148 ( .B0(n228), .B1(n40), .A0N(\Reg_File[15][2] ), .A1N(n40), 
        .Y(n172) );
  OAI2BB2X1M U149 ( .B0(n229), .B1(n40), .A0N(\Reg_File[15][3] ), .A1N(n40), 
        .Y(n173) );
  OAI2BB2X1M U150 ( .B0(n225), .B1(n40), .A0N(\Reg_File[15][4] ), .A1N(n40), 
        .Y(n174) );
  OAI2BB2X1M U151 ( .B0(n224), .B1(n40), .A0N(\Reg_File[15][5] ), .A1N(n40), 
        .Y(n175) );
  OAI2BB2X1M U152 ( .B0(n223), .B1(n40), .A0N(\Reg_File[15][6] ), .A1N(n40), 
        .Y(n176) );
  OAI2BB2X1M U153 ( .B0(n222), .B1(n40), .A0N(\Reg_File[15][7] ), .A1N(n40), 
        .Y(n177) );
  OAI2BB2X1M U154 ( .B0(n226), .B1(n23), .A0N(\Reg_File[4][0] ), .A1N(n23), 
        .Y(n82) );
  OAI2BB2X1M U155 ( .B0(n227), .B1(n23), .A0N(\Reg_File[4][1] ), .A1N(n23), 
        .Y(n83) );
  OAI2BB2X1M U156 ( .B0(n228), .B1(n23), .A0N(\Reg_File[4][2] ), .A1N(n23), 
        .Y(n84) );
  OAI2BB2X1M U157 ( .B0(n229), .B1(n23), .A0N(\Reg_File[4][3] ), .A1N(n23), 
        .Y(n85) );
  OAI2BB2X1M U158 ( .B0(n225), .B1(n23), .A0N(\Reg_File[4][4] ), .A1N(n23), 
        .Y(n86) );
  OAI2BB2X1M U159 ( .B0(n224), .B1(n23), .A0N(\Reg_File[4][5] ), .A1N(n23), 
        .Y(n87) );
  OAI2BB2X1M U160 ( .B0(n223), .B1(n23), .A0N(\Reg_File[4][6] ), .A1N(n23), 
        .Y(n88) );
  OAI2BB2X1M U161 ( .B0(n222), .B1(n23), .A0N(\Reg_File[4][7] ), .A1N(n23), 
        .Y(n89) );
  OAI2BB2X1M U162 ( .B0(n226), .B1(n25), .A0N(\Reg_File[5][0] ), .A1N(n25), 
        .Y(n90) );
  OAI2BB2X1M U163 ( .B0(n227), .B1(n25), .A0N(\Reg_File[5][1] ), .A1N(n25), 
        .Y(n91) );
  OAI2BB2X1M U164 ( .B0(n228), .B1(n25), .A0N(\Reg_File[5][2] ), .A1N(n25), 
        .Y(n92) );
  OAI2BB2X1M U165 ( .B0(n229), .B1(n25), .A0N(\Reg_File[5][3] ), .A1N(n25), 
        .Y(n93) );
  OAI2BB2X1M U166 ( .B0(n225), .B1(n25), .A0N(\Reg_File[5][4] ), .A1N(n25), 
        .Y(n94) );
  OAI2BB2X1M U167 ( .B0(n224), .B1(n25), .A0N(\Reg_File[5][5] ), .A1N(n25), 
        .Y(n95) );
  OAI2BB2X1M U168 ( .B0(n223), .B1(n25), .A0N(\Reg_File[5][6] ), .A1N(n25), 
        .Y(n96) );
  OAI2BB2X1M U169 ( .B0(n222), .B1(n25), .A0N(\Reg_File[5][7] ), .A1N(n25), 
        .Y(n97) );
  OAI2BB2X1M U170 ( .B0(n226), .B1(n26), .A0N(\Reg_File[6][0] ), .A1N(n26), 
        .Y(n98) );
  OAI2BB2X1M U171 ( .B0(n227), .B1(n26), .A0N(\Reg_File[6][1] ), .A1N(n26), 
        .Y(n99) );
  OAI2BB2X1M U172 ( .B0(n228), .B1(n26), .A0N(\Reg_File[6][2] ), .A1N(n26), 
        .Y(n100) );
  OAI2BB2X1M U173 ( .B0(n229), .B1(n26), .A0N(\Reg_File[6][3] ), .A1N(n26), 
        .Y(n101) );
  OAI2BB2X1M U174 ( .B0(n225), .B1(n26), .A0N(\Reg_File[6][4] ), .A1N(n26), 
        .Y(n102) );
  OAI2BB2X1M U175 ( .B0(n224), .B1(n26), .A0N(\Reg_File[6][5] ), .A1N(n26), 
        .Y(n103) );
  OAI2BB2X1M U176 ( .B0(n223), .B1(n26), .A0N(\Reg_File[6][6] ), .A1N(n26), 
        .Y(n104) );
  OAI2BB2X1M U177 ( .B0(n222), .B1(n26), .A0N(\Reg_File[6][7] ), .A1N(n26), 
        .Y(n105) );
  OAI2BB2X1M U178 ( .B0(n226), .B1(n29), .A0N(\Reg_File[7][0] ), .A1N(n29), 
        .Y(n106) );
  OAI2BB2X1M U179 ( .B0(n227), .B1(n29), .A0N(\Reg_File[7][1] ), .A1N(n29), 
        .Y(n107) );
  OAI2BB2X1M U180 ( .B0(n228), .B1(n29), .A0N(\Reg_File[7][2] ), .A1N(n29), 
        .Y(n108) );
  OAI2BB2X1M U181 ( .B0(n229), .B1(n29), .A0N(\Reg_File[7][3] ), .A1N(n29), 
        .Y(n109) );
  OAI2BB2X1M U182 ( .B0(n225), .B1(n29), .A0N(\Reg_File[7][4] ), .A1N(n29), 
        .Y(n110) );
  OAI2BB2X1M U183 ( .B0(n224), .B1(n29), .A0N(\Reg_File[7][5] ), .A1N(n29), 
        .Y(n111) );
  OAI2BB2X1M U184 ( .B0(n223), .B1(n29), .A0N(\Reg_File[7][6] ), .A1N(n29), 
        .Y(n112) );
  OAI2BB2X1M U185 ( .B0(n222), .B1(n29), .A0N(\Reg_File[7][7] ), .A1N(n29), 
        .Y(n113) );
  OAI2BB2X1M U186 ( .B0(n226), .B1(n20), .A0N(REG2[0]), .A1N(n20), .Y(n66) );
  OAI2BB2X1M U187 ( .B0(n222), .B1(n20), .A0N(REG2[7]), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U188 ( .B0(n224), .B1(n22), .A0N(REG3[5]), .A1N(n22), .Y(n79) );
  AO22X1M U189 ( .A0(N43), .A1(n220), .B0(RdData[0]), .B1(n14), .Y(n42) );
  MX4X1M U190 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U191 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n199), .Y(n4) );
  MX4X1M U192 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(N11), .S1(n199), .Y(n2)
         );
  AO22X1M U193 ( .A0(N42), .A1(n220), .B0(RdData[1]), .B1(n14), .Y(n43) );
  MX4X1M U194 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U195 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(N11), .S1(n199), .Y(n6)
         );
  MX4X1M U196 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n201), .S1(n199), .Y(n5) );
  AO22X1M U197 ( .A0(N41), .A1(n220), .B0(RdData[2]), .B1(n14), .Y(n44) );
  MX4X1M U198 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U199 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(n199), .Y(n12) );
  MX4X1M U200 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n201), .S1(n199), .Y(
        n10) );
  AO22X1M U201 ( .A0(N40), .A1(n220), .B0(RdData[3]), .B1(n14), .Y(n45) );
  MX4X1M U202 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U203 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(n199), .Y(n181) );
  MX4X1M U204 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n201), .S1(n199), .Y(
        n179) );
  AO22X1M U205 ( .A0(N39), .A1(n220), .B0(RdData[4]), .B1(n14), .Y(n46) );
  MX4X1M U206 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U207 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(n199), .Y(n185) );
  MX4X1M U208 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n201), .S1(n199), .Y(
        n183) );
  AO22X1M U209 ( .A0(N38), .A1(n220), .B0(RdData[5]), .B1(n14), .Y(n47) );
  MX4X1M U210 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U211 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(N12), .Y(n189) );
  MX4X1M U212 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(n202), .S1(N12), .Y(
        n187) );
  AO22X1M U213 ( .A0(N37), .A1(n220), .B0(RdData[6]), .B1(n14), .Y(n48) );
  MX4X1M U214 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U215 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(N12), .Y(n193) );
  MX4X1M U216 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(n202), .S1(N12), .Y(
        n191) );
  AO22X1M U217 ( .A0(N36), .A1(n220), .B0(RdData[7]), .B1(n14), .Y(n49) );
  MX4X1M U218 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U219 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(N12), .Y(n197) );
  MX4X1M U220 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(n202), .S1(N12), .Y(
        n195) );
  MX4X1M U221 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(n199), .Y(n8) );
  MX4X1M U222 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(N11), .S1(n199), .Y(n3)
         );
  MX4X1M U223 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n201), .S1(n199), .Y(n7)
         );
  MX4X1M U224 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n201), .S1(n199), .Y(n11)
         );
  MX4X1M U225 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n201), .S1(n199), .Y(n180) );
  MX4X1M U226 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n201), .S1(n199), .Y(n184) );
  MX4X1M U227 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n202), .S1(n199), .Y(n188) );
  MX4X1M U228 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n202), .S1(N12), .Y(n192)
         );
  MX4X1M U229 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n202), .S1(N12), .Y(n196)
         );
  MX4X1M U230 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n202), .S1(n199), .Y(n1) );
  MX4X1M U231 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n201), .S1(n199), .Y(n9) );
  MX4X1M U232 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n201), .S1(n199), .Y(
        n178) );
  MX4X1M U233 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n201), .S1(n199), .Y(
        n182) );
  MX4X1M U234 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n202), .S1(n199), .Y(
        n186) );
  MX4X1M U235 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n202), .S1(n199), .Y(
        n190) );
  MX4X1M U236 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n202), .S1(n199), .Y(
        n194) );
  INVX2M U237 ( .A(N12), .Y(n204) );
  INVX2M U238 ( .A(N11), .Y(n203) );
  AO21XLM U239 ( .A0(RdData_VLD), .A1(n13), .B0(n220), .Y(n41) );
endmodule


module ALU_OPER_WIDTH8_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0
 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  INVX2M U26 ( .A(b[6]), .Y(n12) );
  XNOR2X2M U27 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U28 ( .A(b[3]), .Y(n15) );
  INVX2M U29 ( .A(b[4]), .Y(n14) );
  INVX2M U30 ( .A(b[5]), .Y(n13) );
  INVX2M U31 ( .A(b[1]), .Y(n17) );
  INVX2M U32 ( .A(b[2]), .Y(n16) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_OPER_WIDTH8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U2 ( .A(B[6]), .Y(n4) );
  XNOR2X2M U3 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U4 ( .A(B[0]), .Y(n10) );
  INVX2M U5 ( .A(B[7]), .Y(n3) );
  INVX2M U6 ( .A(B[2]), .Y(n8) );
  INVX2M U7 ( .A(B[3]), .Y(n7) );
  INVX2M U8 ( .A(B[4]), .Y(n6) );
  INVX2M U9 ( .A(B[5]), .Y(n5) );
  INVX2M U10 ( .A(B[1]), .Y(n9) );
  NAND2X2M U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U12 ( .A(A[0]), .Y(n1) );
endmodule


module ALU_OPER_WIDTH8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_OPER_WIDTH8_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AOI21BX2M U2 ( .A0(n11), .A1(A[12]), .B0N(n12), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n8) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
  XNOR2X1M U7 ( .A(n3), .B(n4), .Y(SUM[9]) );
  NOR2X1M U8 ( .A(n5), .B(n6), .Y(n4) );
  CLKXOR2X2M U9 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2BX1M U10 ( .AN(n9), .B(n10), .Y(n7) );
  OAI21X1M U11 ( .A0(A[12]), .A1(n11), .B0(B[12]), .Y(n12) );
  XOR3XLM U12 ( .A(B[12]), .B(A[12]), .C(n11), .Y(SUM[12]) );
  OAI21BX1M U13 ( .A0(n13), .A1(n14), .B0N(n15), .Y(n11) );
  XNOR2X1M U14 ( .A(n14), .B(n16), .Y(SUM[11]) );
  NOR2X1M U15 ( .A(n15), .B(n13), .Y(n16) );
  NOR2X1M U16 ( .A(B[11]), .B(A[11]), .Y(n13) );
  AND2X1M U17 ( .A(B[11]), .B(A[11]), .Y(n15) );
  OA21X1M U18 ( .A0(n17), .A1(n18), .B0(n19), .Y(n14) );
  CLKXOR2X2M U19 ( .A(n20), .B(n18), .Y(SUM[10]) );
  AOI2BB1X1M U20 ( .A0N(n3), .A1N(n6), .B0(n5), .Y(n18) );
  AND2X1M U21 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NOR2X1M U22 ( .A(B[9]), .B(A[9]), .Y(n6) );
  OA21X1M U23 ( .A0(n8), .A1(n9), .B0(n10), .Y(n3) );
  CLKNAND2X2M U24 ( .A(B[8]), .B(A[8]), .Y(n10) );
  NOR2X1M U25 ( .A(B[8]), .B(A[8]), .Y(n9) );
  NAND2BX1M U26 ( .AN(n17), .B(n19), .Y(n20) );
  CLKNAND2X2M U27 ( .A(B[10]), .B(A[10]), .Y(n19) );
  NOR2X1M U28 ( .A(B[10]), .B(A[10]), .Y(n17) );
endmodule


module ALU_OPER_WIDTH8_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ALU_OPER_WIDTH8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , 
        \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n13, n12, n15, n11, n14, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][7] ), .Y(n23) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U19 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U21 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n12) );
  AND2X2M U22 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  INVX2M U27 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U29 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U30 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U31 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  INVX2M U34 ( .A(A[0]), .Y(n39) );
  INVX2M U35 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U36 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U37 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U38 ( .A(A[1]), .Y(n38) );
  INVX2M U39 ( .A(A[3]), .Y(n36) );
  INVX2M U40 ( .A(A[2]), .Y(n37) );
  XNOR2X2M U41 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U42 ( .A(A[7]), .Y(n32) );
  INVX2M U43 ( .A(A[6]), .Y(n33) );
  INVX2M U44 ( .A(A[5]), .Y(n34) );
  INVX2M U45 ( .A(A[4]), .Y(n35) );
  INVX2M U46 ( .A(B[7]), .Y(n24) );
  INVX2M U47 ( .A(B[4]), .Y(n27) );
  INVX2M U48 ( .A(B[5]), .Y(n26) );
  INVX2M U49 ( .A(B[0]), .Y(n31) );
  INVX2M U50 ( .A(B[2]), .Y(n29) );
  INVX2M U51 ( .A(B[3]), .Y(n28) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
endmodule


module ALU_OPER_WIDTH8 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] ALU_OUT_Comb;

  ALU_OPER_WIDTH8_DW_div_uns_0 div_39 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_OPER_WIDTH8_DW01_sub_0 sub_37 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, 
        n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, 
        N105, N104, N103, N102, N101, N100}) );
  ALU_OPER_WIDTH8_DW01_add_0 add_36 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, 
        n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, 
        N96, N95, N94, N93, N92, N91}) );
  ALU_OPER_WIDTH8_DW02_mult_0 mult_38 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  BUFX2M U3 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U4 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U7 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U8 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U9 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U10 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U11 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U12 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U13 ( .A0N(n129), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U14 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  NOR2BX2M U15 ( .AN(n106), .B(n126), .Y(n37) );
  AND2X2M U16 ( .A(n99), .B(n105), .Y(n42) );
  NOR2BX2M U17 ( .AN(n35), .B(n124), .Y(n31) );
  AND2X2M U18 ( .A(n106), .B(n105), .Y(n50) );
  BUFX2M U19 ( .A(n41), .Y(n13) );
  NOR2X2M U20 ( .A(n107), .B(n126), .Y(n41) );
  INVX2M U21 ( .A(n100), .Y(n126) );
  INVX2M U22 ( .A(n91), .Y(n127) );
  INVX2M U23 ( .A(n107), .Y(n129) );
  AND4X2M U24 ( .A(N159), .B(n99), .C(n3), .D(n125), .Y(n90) );
  NOR3BX2M U25 ( .AN(n105), .B(n128), .C(ALU_FUN[2]), .Y(n49) );
  NOR3X2M U26 ( .A(n126), .B(ALU_FUN[2]), .C(n128), .Y(n35) );
  NOR2X2M U27 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U28 ( .A(n106), .B(n125), .C(n3), .Y(n46) );
  NAND3X2M U29 ( .A(n129), .B(n125), .C(n3), .Y(n36) );
  NAND2X2M U30 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U31 ( .A(ALU_FUN[0]), .Y(n125) );
  NOR2X2M U32 ( .A(n125), .B(n3), .Y(n105) );
  NOR2X2M U33 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  NAND3X2M U34 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  INVX2M U35 ( .A(ALU_FUN[1]), .Y(n128) );
  NAND2X2M U36 ( .A(EN), .B(n123), .Y(n32) );
  NAND3X2M U37 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  AND2X2M U38 ( .A(ALU_FUN[2]), .B(n128), .Y(n99) );
  INVX2M U39 ( .A(EN), .Y(n124) );
  AOI31X2M U40 ( .A0(n93), .A1(n94), .A2(n95), .B0(n124), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U41 ( .A0(N100), .A1(n50), .B0(N91), .B1(n37), .Y(n93) );
  AOI211X2M U42 ( .A0(n13), .A1(n140), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U43 ( .A0(N109), .A1(n35), .B0(n5), .B1(n42), .C0(N125), .C1(n49), 
        .Y(n94) );
  AOI31X2M U44 ( .A0(n81), .A1(n82), .A2(n83), .B0(n124), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U45 ( .A0(N92), .A1(n37), .B0(N110), .B1(n35), .C0(N101), .C1(n50), 
        .Y(n81) );
  AOI211X2M U46 ( .A0(n7), .A1(n127), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U47 ( .A0(N126), .A1(n49), .B0(n13), .B1(n139), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U48 ( .A0(n75), .A1(n76), .A2(n77), .B0(n124), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U49 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n75) );
  AOI221XLM U50 ( .A0(n8), .A1(n127), .B0(n13), .B1(n138), .C0(n78), .Y(n77)
         );
  AOI222X1M U51 ( .A0(N111), .A1(n35), .B0(n7), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n76) );
  AOI31X2M U52 ( .A0(n69), .A1(n70), .A2(n71), .B0(n124), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U53 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n69) );
  AOI221XLM U54 ( .A0(n9), .A1(n127), .B0(n13), .B1(n137), .C0(n72), .Y(n71)
         );
  AOI222X1M U55 ( .A0(N112), .A1(n35), .B0(n8), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n70) );
  AOI31X2M U56 ( .A0(n63), .A1(n64), .A2(n65), .B0(n124), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U57 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n63) );
  AOI221XLM U58 ( .A0(n127), .A1(n10), .B0(n13), .B1(n136), .C0(n66), .Y(n65)
         );
  AOI222X1M U59 ( .A0(N113), .A1(n35), .B0(n9), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n64) );
  AOI31X2M U60 ( .A0(n57), .A1(n58), .A2(n59), .B0(n124), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U61 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n57) );
  AOI221XLM U62 ( .A0(n127), .A1(n11), .B0(n13), .B1(n135), .C0(n60), .Y(n59)
         );
  AOI222X1M U63 ( .A0(N114), .A1(n35), .B0(n10), .B1(n42), .C0(N130), .C1(n49), 
        .Y(n58) );
  AOI31X2M U64 ( .A0(n38), .A1(n39), .A2(n40), .B0(n124), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U65 ( .A0(N107), .A1(n50), .B0(N98), .B1(n37), .Y(n38) );
  AOI221XLM U66 ( .A0(n13), .A1(n133), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U67 ( .A0(N132), .A1(n49), .B0(N116), .B1(n35), .Y(n39) );
  AOI21X2M U68 ( .A0(n33), .A1(n34), .B0(n124), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U69 ( .A0(N99), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U70 ( .B0(N117), .B1(n35), .A0N(n133), .A1N(n36), .Y(n34) );
  INVX2M U71 ( .A(n25), .Y(n120) );
  AOI31X2M U72 ( .A0(n51), .A1(n52), .A2(n53), .B0(n124), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U73 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n51) );
  AOI221XLM U74 ( .A0(n127), .A1(n12), .B0(n13), .B1(n134), .C0(n54), .Y(n53)
         );
  AOI222X1M U75 ( .A0(N115), .A1(n35), .B0(n42), .B1(n11), .C0(N131), .C1(n49), 
        .Y(n52) );
  INVX2M U76 ( .A(n116), .Y(N158) );
  INVX2M U77 ( .A(n4), .Y(n122) );
  OAI222X1M U78 ( .A0(n55), .A1(n122), .B0(n4), .B1(n56), .C0(n36), .C1(n135), 
        .Y(n54) );
  AOI221XLM U79 ( .A0(n11), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n56)
         );
  AOI221XLM U80 ( .A0(n46), .A1(n134), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  INVX2M U81 ( .A(n92), .Y(n123) );
  AOI211X2M U82 ( .A0(N108), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  BUFX2M U83 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U84 ( .A(n6), .Y(n139) );
  INVX2M U85 ( .A(n5), .Y(n140) );
  INVX2M U86 ( .A(n11), .Y(n134) );
  INVX2M U87 ( .A(n12), .Y(n133) );
  INVX2M U88 ( .A(n8), .Y(n137) );
  INVX2M U89 ( .A(n7), .Y(n138) );
  INVX2M U90 ( .A(n10), .Y(n135) );
  INVX2M U91 ( .A(n9), .Y(n136) );
  BUFX2M U92 ( .A(B[6]), .Y(n4) );
  BUFX2M U93 ( .A(A[7]), .Y(n12) );
  BUFX2M U94 ( .A(A[5]), .Y(n10) );
  BUFX2M U95 ( .A(A[4]), .Y(n9) );
  BUFX2M U96 ( .A(A[3]), .Y(n8) );
  BUFX2M U97 ( .A(A[2]), .Y(n7) );
  BUFX2M U98 ( .A(A[0]), .Y(n5) );
  BUFX2M U99 ( .A(A[1]), .Y(n6) );
  INVX2M U100 ( .A(n14), .Y(n118) );
  OAI21X2M U101 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U102 ( .A0(n5), .A1(n46), .B0(n47), .B1(n140), .C0(n13), .Y(n102)
         );
  AOI31X2M U103 ( .A0(N157), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U104 ( .A(n128), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U105 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U106 ( .A0(n6), .A1(n46), .B0(n47), .B1(n139), .C0(n13), .Y(n87)
         );
  AOI31X2M U107 ( .A0(N158), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U108 ( .A(n125), .B(ALU_FUN[2]), .C(n128), .Y(n89) );
  INVX2M U109 ( .A(B[0]), .Y(n117) );
  INVX2M U110 ( .A(B[2]), .Y(n119) );
  OAI2B2X1M U111 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n139), .Y(n97) );
  AOI221XLM U112 ( .A0(n46), .A1(n140), .B0(n5), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI222X1M U113 ( .A0(n79), .A1(n119), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n139), .Y(n78) );
  AOI221XLM U114 ( .A0(n7), .A1(n46), .B0(n47), .B1(n138), .C0(n13), .Y(n80)
         );
  AOI221XLM U115 ( .A0(n46), .A1(n138), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U116 ( .A0(n73), .A1(n121), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n138), .Y(n72) );
  AOI221XLM U117 ( .A0(n8), .A1(n46), .B0(n47), .B1(n137), .C0(n13), .Y(n74)
         );
  AOI221XLM U118 ( .A0(n46), .A1(n137), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U119 ( .A0(n67), .A1(n132), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n137), .Y(n66) );
  INVX2M U120 ( .A(B[4]), .Y(n132) );
  AOI221XLM U121 ( .A0(n9), .A1(n46), .B0(n47), .B1(n136), .C0(n13), .Y(n68)
         );
  AOI221XLM U122 ( .A0(n46), .A1(n136), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U123 ( .A0(n61), .A1(n131), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n136), .Y(n60) );
  INVX2M U124 ( .A(B[5]), .Y(n131) );
  AOI221XLM U125 ( .A0(n10), .A1(n46), .B0(n47), .B1(n135), .C0(n13), .Y(n62)
         );
  AOI221XLM U126 ( .A0(n46), .A1(n135), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U127 ( .A0(n44), .A1(n130), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n134), .Y(n43) );
  INVX2M U128 ( .A(B[7]), .Y(n130) );
  AOI221XLM U129 ( .A0(n46), .A1(n12), .B0(n47), .B1(n133), .C0(n13), .Y(n45)
         );
  AOI221XLM U130 ( .A0(n46), .A1(n133), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  OAI2B2X1M U131 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n140), .Y(n85) );
  AOI221XLM U132 ( .A0(n46), .A1(n139), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  INVX2M U133 ( .A(B[3]), .Y(n121) );
  NOR2X1M U134 ( .A(n133), .B(B[7]), .Y(n113) );
  NAND2BX1M U135 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U136 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U137 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U138 ( .A(n121), .B(n8), .Y(n26) );
  NOR2X1M U139 ( .A(n119), .B(n7), .Y(n17) );
  NOR2X1M U140 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U141 ( .A(n7), .B(n119), .Y(n28) );
  NAND2BX1M U142 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U143 ( .A0(n14), .A1(n139), .B0(B[1]), .Y(n15) );
  AOI211X1M U144 ( .A0(n6), .A1(n118), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U145 ( .A(n8), .B(n121), .Y(n27) );
  OAI31X1M U146 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U147 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U148 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U149 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U150 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U151 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n134), .Y(n21)
         );
  CLKNAND2X2M U152 ( .A(B[7]), .B(n133), .Y(n114) );
  OAI21X1M U153 ( .A0(n113), .A1(n21), .B0(n114), .Y(N159) );
  CLKNAND2X2M U154 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U155 ( .A0(n24), .A1(n139), .B0(B[1]), .Y(n22) );
  AOI211X1M U156 ( .A0(n24), .A1(n139), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U157 ( .A0(n120), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U158 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U159 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n122), .Y(
        n115) );
  AOI2B1X1M U160 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  NOR2X1M U161 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module UART_FSM ( CLK, RST, Data_Valid, ser_done, PAR_EN, ser_en, mux_sel, 
        busy );
  output [2:0] mux_sel;
  input CLK, RST, Data_Valid, ser_done, PAR_EN;
  output ser_en, busy;
  wire   busy_c, n5, n6, n7, n8, n9, n10, n1, n2, n3, n4;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M busy_reg ( .D(busy_c), .CK(CLK), .RN(RST), .Q(busy) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  OAI211X2M U3 ( .A0(n6), .A1(n3), .B0(n2), .C0(n10), .Y(mux_sel[0]) );
  NAND2X2M U4 ( .A(n2), .B(n6), .Y(mux_sel[1]) );
  INVX2M U5 ( .A(mux_sel[2]), .Y(n2) );
  OAI21X2M U6 ( .A0(n6), .A1(n7), .B0(n2), .Y(next_state[1]) );
  OAI21X2M U7 ( .A0(n8), .A1(n1), .B0(n3), .Y(n7) );
  INVX2M U8 ( .A(ser_done), .Y(n1) );
  NAND2BX2M U9 ( .AN(mux_sel[1]), .B(n10), .Y(busy_c) );
  NOR3X2M U10 ( .A(current_state[1]), .B(current_state[2]), .C(n3), .Y(
        mux_sel[2]) );
  NAND2BX2M U11 ( .AN(current_state[2]), .B(current_state[1]), .Y(n6) );
  NAND3X2M U12 ( .A(n3), .B(n4), .C(current_state[2]), .Y(n10) );
  INVX2M U13 ( .A(current_state[0]), .Y(n3) );
  NOR4X1M U14 ( .A(ser_done), .B(current_state[2]), .C(current_state[0]), .D(
        n4), .Y(ser_en) );
  INVX2M U15 ( .A(current_state[1]), .Y(n4) );
  NOR3X2M U16 ( .A(n9), .B(current_state[2]), .C(current_state[0]), .Y(
        next_state[0]) );
  AOI22X1M U17 ( .A0(n8), .A1(current_state[1]), .B0(Data_Valid), .B1(n4), .Y(
        n9) );
  NOR2BX2M U18 ( .AN(PAR_EN), .B(n1), .Y(n8) );
  NOR2X2M U19 ( .A(n5), .B(n6), .Y(next_state[2]) );
  AOI2B1X1M U20 ( .A1N(PAR_EN), .A0(ser_done), .B0(current_state[0]), .Y(n5)
         );
endmodule


module serializer_DATA_WIDTH8 ( CLK, RST, P_DATA, ser_en, Data_Valid, Busy, 
        ser_done, ser_data );
  input [7:0] P_DATA;
  input CLK, RST, ser_en, Data_Valid, Busy;
  output ser_done, ser_data;
  wire   N9, N10, N11, N27, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n1, n2, n3, n24;
  wire   [7:1] shift_reg;
  wire   [2:0] counter;
  assign ser_done = N27;

  DFFRQX2M \shift_reg_reg[0]  ( .D(n16), .CK(CLK), .RN(RST), .Q(ser_data) );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n18), .CK(CLK), .RN(RST), .Q(shift_reg[6])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n19), .CK(CLK), .RN(RST), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n20), .CK(CLK), .RN(RST), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n21), .CK(CLK), .RN(RST), .Q(shift_reg[3])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n22), .CK(CLK), .RN(RST), .Q(shift_reg[2])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n23), .CK(CLK), .RN(RST), .Q(shift_reg[1])
         );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n17), .CK(CLK), .RN(RST), .Q(shift_reg[7])
         );
  DFFRQX2M \counter_reg[1]  ( .D(N10), .CK(CLK), .RN(RST), .Q(counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(N11), .CK(CLK), .RN(RST), .Q(counter[2]) );
  DFFRQX2M \counter_reg[0]  ( .D(N9), .CK(CLK), .RN(RST), .Q(counter[0]) );
  NOR2X2M U3 ( .A(n2), .B(n1), .Y(n6) );
  NOR2X2M U4 ( .A(n1), .B(n6), .Y(n4) );
  AND3X2M U5 ( .A(counter[0]), .B(counter[2]), .C(counter[1]), .Y(N27) );
  INVX2M U6 ( .A(ser_en), .Y(n2) );
  BUFX2M U7 ( .A(n7), .Y(n1) );
  NOR2BX2M U8 ( .AN(Data_Valid), .B(Busy), .Y(n7) );
  OAI2BB1X2M U9 ( .A0N(ser_data), .A1N(n4), .B0(n5), .Y(n16) );
  AOI22X1M U10 ( .A0(shift_reg[1]), .A1(n6), .B0(P_DATA[0]), .B1(n1), .Y(n5)
         );
  OAI2BB1X2M U11 ( .A0N(shift_reg[1]), .A1N(n4), .B0(n13), .Y(n23) );
  AOI22X1M U12 ( .A0(shift_reg[2]), .A1(n6), .B0(P_DATA[1]), .B1(n1), .Y(n13)
         );
  OAI2BB1X2M U13 ( .A0N(n4), .A1N(shift_reg[2]), .B0(n12), .Y(n22) );
  AOI22X1M U14 ( .A0(shift_reg[3]), .A1(n6), .B0(P_DATA[2]), .B1(n1), .Y(n12)
         );
  OAI2BB1X2M U15 ( .A0N(n4), .A1N(shift_reg[3]), .B0(n11), .Y(n21) );
  AOI22X1M U16 ( .A0(shift_reg[4]), .A1(n6), .B0(P_DATA[3]), .B1(n1), .Y(n11)
         );
  OAI2BB1X2M U17 ( .A0N(n4), .A1N(shift_reg[4]), .B0(n10), .Y(n20) );
  AOI22X1M U18 ( .A0(shift_reg[5]), .A1(n6), .B0(P_DATA[4]), .B1(n1), .Y(n10)
         );
  OAI2BB1X2M U19 ( .A0N(n4), .A1N(shift_reg[5]), .B0(n9), .Y(n19) );
  AOI22X1M U20 ( .A0(shift_reg[6]), .A1(n6), .B0(P_DATA[5]), .B1(n1), .Y(n9)
         );
  OAI2BB1X2M U21 ( .A0N(n4), .A1N(shift_reg[6]), .B0(n8), .Y(n18) );
  AOI22X1M U22 ( .A0(shift_reg[7]), .A1(n6), .B0(P_DATA[6]), .B1(n1), .Y(n8)
         );
  AO22X1M U23 ( .A0(n4), .A1(shift_reg[7]), .B0(P_DATA[7]), .B1(n1), .Y(n17)
         );
  OAI2BB2X1M U24 ( .B0(n14), .B1(n2), .A0N(counter[2]), .A1N(N9), .Y(N11) );
  AOI32X1M U25 ( .A0(counter[0]), .A1(n24), .A2(counter[1]), .B0(counter[2]), 
        .B1(n3), .Y(n14) );
  INVX2M U26 ( .A(counter[2]), .Y(n24) );
  NOR2X2M U27 ( .A(n2), .B(counter[0]), .Y(N9) );
  NOR2X2M U28 ( .A(n15), .B(n2), .Y(N10) );
  CLKXOR2X2M U29 ( .A(counter[0]), .B(n3), .Y(n15) );
  INVX2M U30 ( .A(counter[1]), .Y(n3) );
endmodule


module parity_calc_DATA_WIDTH8 ( P_DATA, Data_Valid, PAR_TYP, PAR_EN, Busy, 
        CLK, RST, par_bit );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, PAR_EN, Busy, CLK, RST;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n2
;
  wire   [7:0] Data;

  DFFRQX2M \Data_reg[1]  ( .D(n10), .CK(CLK), .RN(RST), .Q(Data[1]) );
  DFFRQX2M \Data_reg[4]  ( .D(n13), .CK(CLK), .RN(RST), .Q(Data[4]) );
  DFFRQX2M \Data_reg[0]  ( .D(n9), .CK(CLK), .RN(RST), .Q(Data[0]) );
  DFFRQX2M par_bit_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_bit) );
  DFFRQX2M \Data_reg[2]  ( .D(n11), .CK(CLK), .RN(RST), .Q(Data[2]) );
  DFFRQX2M \Data_reg[3]  ( .D(n12), .CK(CLK), .RN(RST), .Q(Data[3]) );
  DFFRQX2M \Data_reg[5]  ( .D(n14), .CK(CLK), .RN(RST), .Q(Data[5]) );
  DFFRQX2M \Data_reg[6]  ( .D(n15), .CK(CLK), .RN(RST), .Q(Data[6]) );
  DFFRQX2M \Data_reg[7]  ( .D(n16), .CK(CLK), .RN(RST), .Q(Data[7]) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U3 ( .A(PAR_EN), .Y(n2) );
  XOR3XLM U4 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(Data[1]), .B(Data[0]), .C(n5), .Y(n4) );
  XOR3XLM U6 ( .A(Data[5]), .B(Data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U7 ( .A(Data[7]), .B(Data[6]), .Y(n6) );
  AO2B2X2M U8 ( .B0(P_DATA[0]), .B1(n7), .A0(Data[0]), .A1N(n7), .Y(n9) );
  AO2B2X2M U9 ( .B0(P_DATA[1]), .B1(n7), .A0(Data[1]), .A1N(n7), .Y(n10) );
  AO2B2X2M U10 ( .B0(P_DATA[2]), .B1(n7), .A0(Data[2]), .A1N(n7), .Y(n11) );
  AO2B2X2M U11 ( .B0(P_DATA[3]), .B1(n7), .A0(Data[3]), .A1N(n7), .Y(n12) );
  AO2B2X2M U12 ( .B0(P_DATA[4]), .B1(n7), .A0(Data[4]), .A1N(n7), .Y(n13) );
  AO2B2X2M U13 ( .B0(P_DATA[5]), .B1(n7), .A0(Data[5]), .A1N(n7), .Y(n14) );
  AO2B2X2M U14 ( .B0(P_DATA[6]), .B1(n7), .A0(Data[6]), .A1N(n7), .Y(n15) );
  AO2B2X2M U15 ( .B0(P_DATA[7]), .B1(n7), .A0(Data[7]), .A1N(n7), .Y(n16) );
  NOR2BX2M U16 ( .AN(Data_Valid), .B(Busy), .Y(n7) );
  XNOR2X2M U17 ( .A(Data[2]), .B(Data[3]), .Y(n5) );
endmodule


module UART_MUX ( mux_sel, start_bit, stop_bit, ser_data, par_bit, CLK, RST, 
        TX_OUT );
  input [2:0] mux_sel;
  input start_bit, stop_bit, ser_data, par_bit, CLK, RST;
  output TX_OUT;
  wire   N22, n2, n3, n4, n1;

  DFFRQX2M TX_OUT_reg ( .D(N22), .CK(CLK), .RN(RST), .Q(TX_OUT) );
  OAI21X2M U3 ( .A0(mux_sel[2]), .A1(n2), .B0(n3), .Y(N22) );
  NAND4X2M U4 ( .A(start_bit), .B(mux_sel[2]), .C(mux_sel[1]), .D(mux_sel[0]), 
        .Y(n3) );
  AOI32X1M U5 ( .A0(mux_sel[0]), .A1(n1), .A2(stop_bit), .B0(mux_sel[1]), .B1(
        n4), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[1]), .Y(n1) );
  AO2B2X2M U7 ( .B0(par_bit), .B1(mux_sel[0]), .A0(ser_data), .A1N(mux_sel[0]), 
        .Y(n4) );
endmodule


module UART_TX_DATA_WIDTH8 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, 
        TX_OUT, Busy );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, Busy;
  wire   ser_done, ser_en, ser_data, par_bit;
  wire   [2:0] mux_sel;

  UART_FSM fsm ( .CLK(CLK), .RST(RST), .Data_Valid(DATA_VALID), .ser_done(
        ser_done), .PAR_EN(PAR_EN), .ser_en(ser_en), .mux_sel(mux_sel), .busy(
        Busy) );
  serializer_DATA_WIDTH8 ser ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), .ser_en(
        ser_en), .Data_Valid(DATA_VALID), .Busy(Busy), .ser_done(ser_done), 
        .ser_data(ser_data) );
  parity_calc_DATA_WIDTH8 par_calc ( .P_DATA(P_DATA), .Data_Valid(DATA_VALID), 
        .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), .Busy(Busy), .CLK(CLK), .RST(RST), 
        .par_bit(par_bit) );
  UART_MUX mux ( .mux_sel(mux_sel), .start_bit(1'b0), .stop_bit(1'b1), 
        .ser_data(ser_data), .par_bit(par_bit), .CLK(CLK), .RST(RST), .TX_OUT(
        TX_OUT) );
endmodule


module data_sampling ( CLK, RST, RX_IN, dat_samp_en, edge_cnt, Prescale, 
        sampled_bit );
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RST, RX_IN, dat_samp_en;
  output sampled_bit;
  wire   sample1, sample2, N6, N7, N8, N9, N10, N11, N15, N16, N17, N18, N19,
         N21, N22, N23, N24, N25, N26, n35, n36, n37, \add_19_2/carry[4] ,
         \add_19_2/carry[3] , \add_19/carry[4] , \add_19/carry[3] ,
         \add_19/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57;
  assign N21 = Prescale[1];

  DFFRX1M sample2_reg ( .D(n36), .CK(CLK), .RN(RST), .Q(sample2), .QN(n13) );
  DFFRX1M sample1_reg ( .D(n35), .CK(CLK), .RN(RST), .Q(sample1), .QN(n20) );
  DFFRX1M sample3_reg ( .D(n37), .CK(CLK), .RN(RST), .Q(n57), .QN(n4) );
  EDFFX1M sampled_bit_reg ( .D(n23), .E(n24), .CK(CLK), .Q(sampled_bit) );
  INVX2M U3 ( .A(N21), .Y(N6) );
  ADDHX1M U4 ( .A(Prescale[2]), .B(N21), .CO(\add_19/carry[2] ), .S(N15) );
  ADDHX1M U5 ( .A(Prescale[3]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N16) );
  INVX2M U6 ( .A(Prescale[2]), .Y(N22) );
  ADDHX1M U7 ( .A(Prescale[4]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N17) );
  ADDHX1M U8 ( .A(Prescale[5]), .B(\add_19/carry[4] ), .CO(N19), .S(N18) );
  AND2X1M U9 ( .A(\add_19_2/carry[4] ), .B(Prescale[5]), .Y(N26) );
  CLKXOR2X2M U10 ( .A(Prescale[5]), .B(\add_19_2/carry[4] ), .Y(N25) );
  AND2X1M U11 ( .A(\add_19_2/carry[3] ), .B(Prescale[4]), .Y(
        \add_19_2/carry[4] ) );
  CLKXOR2X2M U12 ( .A(Prescale[4]), .B(\add_19_2/carry[3] ), .Y(N24) );
  AND2X1M U13 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\add_19_2/carry[3] ) );
  CLKXOR2X2M U14 ( .A(Prescale[3]), .B(Prescale[2]), .Y(N23) );
  NAND2BX1M U15 ( .AN(Prescale[2]), .B(N6), .Y(n1) );
  OAI2BB1X1M U16 ( .A0N(N21), .A1N(Prescale[2]), .B0(n1), .Y(N7) );
  OR2X1M U17 ( .A(n1), .B(Prescale[3]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(n1), .A1N(Prescale[3]), .B0(n2), .Y(N8) );
  XNOR2X1M U19 ( .A(Prescale[4]), .B(n2), .Y(N9) );
  NOR3X1M U20 ( .A(Prescale[4]), .B(Prescale[5]), .C(n2), .Y(N11) );
  OAI21X1M U21 ( .A0(Prescale[4]), .A1(n2), .B0(Prescale[5]), .Y(n3) );
  NAND2BX1M U22 ( .AN(N11), .B(n3), .Y(N10) );
  MXI2X1M U23 ( .A(n4), .B(n5), .S0(n6), .Y(n37) );
  AOI2B1X1M U24 ( .A1N(n7), .A0(n8), .B0(n9), .Y(n6) );
  CLKNAND2X2M U25 ( .A(RX_IN), .B(n7), .Y(n5) );
  NOR3X1M U26 ( .A(n10), .B(n11), .C(n12), .Y(n7) );
  MXI2X1M U27 ( .A(n13), .B(n14), .S0(n15), .Y(n36) );
  AOI21X1M U28 ( .A0(n16), .A1(n8), .B0(n9), .Y(n15) );
  CLKNAND2X2M U29 ( .A(n10), .B(n17), .Y(n16) );
  CLKNAND2X2M U30 ( .A(n10), .B(RX_IN), .Y(n14) );
  OAI32X1M U31 ( .A0(n17), .A1(n9), .A2(n18), .B0(n19), .B1(n20), .Y(n35) );
  AOI21X1M U32 ( .A0(n8), .A1(n17), .B0(n9), .Y(n19) );
  NAND4X1M U33 ( .A(n21), .B(n12), .C(n17), .D(n22), .Y(n8) );
  CLKINVX1M U34 ( .A(RX_IN), .Y(n18) );
  CLKINVX1M U35 ( .A(dat_samp_en), .Y(n9) );
  NOR4BX1M U36 ( .AN(n12), .B(n25), .C(n10), .D(n11), .Y(n24) );
  CLKINVX1M U37 ( .A(n17), .Y(n11) );
  NAND4X1M U38 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n17) );
  NOR3X1M U39 ( .A(n30), .B(n31), .C(n32), .Y(n29) );
  CLKXOR2X2M U40 ( .A(edge_cnt[4]), .B(N10), .Y(n32) );
  CLKXOR2X2M U41 ( .A(edge_cnt[0]), .B(N6), .Y(n31) );
  CLKXOR2X2M U42 ( .A(edge_cnt[5]), .B(N11), .Y(n30) );
  XNOR2X1M U43 ( .A(edge_cnt[2]), .B(N8), .Y(n28) );
  XNOR2X1M U44 ( .A(edge_cnt[3]), .B(N9), .Y(n27) );
  XNOR2X1M U45 ( .A(edge_cnt[1]), .B(N7), .Y(n26) );
  CLKINVX1M U46 ( .A(n21), .Y(n10) );
  NAND4X1M U47 ( .A(n33), .B(n34), .C(n38), .D(n39), .Y(n21) );
  NOR3X1M U48 ( .A(n40), .B(edge_cnt[5]), .C(n41), .Y(n39) );
  CLKXOR2X2M U49 ( .A(edge_cnt[0]), .B(N21), .Y(n41) );
  CLKXOR2X2M U50 ( .A(edge_cnt[4]), .B(Prescale[5]), .Y(n40) );
  XNOR2X1M U51 ( .A(edge_cnt[2]), .B(Prescale[3]), .Y(n38) );
  XNOR2X1M U52 ( .A(edge_cnt[3]), .B(Prescale[4]), .Y(n34) );
  XNOR2X1M U53 ( .A(edge_cnt[1]), .B(Prescale[2]), .Y(n33) );
  NAND3BX1M U54 ( .AN(n22), .B(dat_samp_en), .C(RST), .Y(n25) );
  NAND4X1M U55 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n22) );
  NOR3X1M U56 ( .A(n46), .B(n47), .C(n48), .Y(n45) );
  CLKXOR2X2M U57 ( .A(edge_cnt[4]), .B(N25), .Y(n48) );
  CLKXOR2X2M U58 ( .A(edge_cnt[1]), .B(N22), .Y(n47) );
  CLKXOR2X2M U59 ( .A(edge_cnt[0]), .B(N21), .Y(n46) );
  XNOR2X1M U60 ( .A(edge_cnt[2]), .B(N23), .Y(n44) );
  XNOR2X1M U61 ( .A(edge_cnt[3]), .B(N24), .Y(n43) );
  XNOR2X1M U62 ( .A(edge_cnt[5]), .B(N26), .Y(n42) );
  NAND4X1M U63 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n12) );
  NOR3X1M U64 ( .A(n53), .B(n54), .C(n55), .Y(n52) );
  CLKXOR2X2M U65 ( .A(edge_cnt[4]), .B(N18), .Y(n55) );
  CLKXOR2X2M U66 ( .A(edge_cnt[1]), .B(N15), .Y(n54) );
  CLKXOR2X2M U67 ( .A(edge_cnt[0]), .B(N6), .Y(n53) );
  XNOR2X1M U68 ( .A(edge_cnt[2]), .B(N16), .Y(n51) );
  XNOR2X1M U69 ( .A(edge_cnt[3]), .B(N17), .Y(n50) );
  XNOR2X1M U70 ( .A(edge_cnt[5]), .B(N19), .Y(n49) );
  OAI21X1M U71 ( .A0(n4), .A1(n20), .B0(n56), .Y(n23) );
  OAI21X1M U72 ( .A0(n57), .A1(sample1), .B0(sample2), .Y(n56) );
endmodule


module deserializer_DATA_WIDTH8 ( CLK, RST, sampled_bit, deser_en, edge_count, 
        Prescale, P_DATA );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, deser_en;
  wire   n1, n2, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n3,
         n4, n6, n18;
  wire   [2:0] counter;

  DFFRQX2M \counter_reg[2]  ( .D(n22), .CK(CLK), .RN(RST), .Q(counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(n23), .CK(CLK), .RN(RST), .Q(counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(n24), .CK(CLK), .RN(RST), .Q(counter[0]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n30), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n26), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n29), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n32), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n28), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n31), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n27), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  OAI221X1M U3 ( .A0(n4), .A1(n5), .B0(deser_en), .B1(n18), .C0(n7), .Y(n23)
         );
  INVX2M U4 ( .A(deser_en), .Y(n4) );
  INVX2M U5 ( .A(n14), .Y(n3) );
  NAND2X2M U6 ( .A(n18), .B(n6), .Y(n8) );
  OAI2B2X1M U7 ( .A1N(counter[2]), .A0(n1), .B0(n2), .B1(n3), .Y(n22) );
  NOR2X2M U8 ( .A(n2), .B(n4), .Y(n1) );
  NOR2X2M U9 ( .A(n4), .B(counter[2]), .Y(n14) );
  XNOR2X2M U10 ( .A(n4), .B(counter[0]), .Y(n24) );
  NAND2X2M U11 ( .A(counter[2]), .B(deser_en), .Y(n17) );
  NAND2X2M U12 ( .A(sampled_bit), .B(n14), .Y(n9) );
  NAND2BX2M U13 ( .AN(n17), .B(sampled_bit), .Y(n15) );
  OAI21X2M U14 ( .A0(n2), .A1(n9), .B0(n13), .Y(n28) );
  OAI21X2M U15 ( .A0(n2), .A1(n3), .B0(P_DATA[3]), .Y(n13) );
  OAI21X2M U16 ( .A0(n2), .A1(n15), .B0(n21), .Y(n32) );
  OAI21X2M U17 ( .A0(n2), .A1(n17), .B0(P_DATA[7]), .Y(n21) );
  OAI21X2M U18 ( .A0(n5), .A1(n9), .B0(n11), .Y(n26) );
  OAI21X2M U19 ( .A0(n3), .A1(n5), .B0(P_DATA[1]), .Y(n11) );
  OAI21X2M U20 ( .A0(n5), .A1(n15), .B0(n19), .Y(n30) );
  OAI21X2M U21 ( .A0(n5), .A1(n17), .B0(P_DATA[5]), .Y(n19) );
  OAI21X2M U22 ( .A0(n7), .A1(n15), .B0(n20), .Y(n31) );
  OAI21X2M U23 ( .A0(n7), .A1(n17), .B0(P_DATA[6]), .Y(n20) );
  OAI21X2M U24 ( .A0(n9), .A1(n7), .B0(n12), .Y(n27) );
  OAI21X2M U25 ( .A0(n3), .A1(n7), .B0(P_DATA[2]), .Y(n12) );
  OAI21X2M U26 ( .A0(n8), .A1(n9), .B0(n10), .Y(n25) );
  OAI21X2M U27 ( .A0(n3), .A1(n8), .B0(P_DATA[0]), .Y(n10) );
  OAI21X2M U28 ( .A0(n8), .A1(n15), .B0(n16), .Y(n29) );
  OAI21X2M U29 ( .A0(n8), .A1(n17), .B0(P_DATA[4]), .Y(n16) );
  NAND2X2M U30 ( .A(counter[1]), .B(counter[0]), .Y(n2) );
  NAND2X2M U31 ( .A(counter[0]), .B(n18), .Y(n5) );
  NAND2X2M U32 ( .A(counter[1]), .B(n6), .Y(n7) );
  INVX2M U33 ( .A(counter[0]), .Y(n6) );
  INVX2M U34 ( .A(counter[1]), .Y(n18) );
endmodule


module edge_bit_counter ( CLK, RST, enable, PAR_EN, Prescale, edge_cnt, 
        bit_cnt );
  input [5:0] Prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input CLK, RST, enable, PAR_EN;
  wire   N5, N6, N9, N10, N11, N13, N17, N18, N19, N20, N21, N22, n4, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, \add_15/carry[5] ,
         \add_15/carry[4] , \add_15/carry[3] , \add_15/carry[2] , n1, n2, n3,
         n5, n6, n7, n8, n9, n10, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51;

  DFFRX1M \bit_cnt_reg[3]  ( .D(n25), .CK(CLK), .RN(RST), .Q(bit_cnt[3]), .QN(
        n4) );
  DFFRX1M \bit_cnt_reg[2]  ( .D(n46), .CK(CLK), .RN(RST), .Q(bit_cnt[2]), .QN(
        n51) );
  DFFRX1M \bit_cnt_reg[0]  ( .D(n27), .CK(CLK), .RN(RST), .Q(bit_cnt[0]), .QN(
        n48) );
  DFFRX1M \edge_cnt_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(edge_cnt[4]), 
        .QN(n45) );
  DFFRX1M \edge_cnt_reg[1]  ( .D(n31), .CK(CLK), .RN(RST), .Q(edge_cnt[1]), 
        .QN(n44) );
  DFFRX1M \edge_cnt_reg[0]  ( .D(n33), .CK(CLK), .RN(RST), .Q(edge_cnt[0]), 
        .QN(N17) );
  DFFRX1M \bit_cnt_reg[1]  ( .D(n26), .CK(CLK), .RN(RST), .Q(bit_cnt[1]), .QN(
        n50) );
  DFFRQX1M \edge_cnt_reg[5]  ( .D(n32), .CK(CLK), .RN(RST), .Q(edge_cnt[5]) );
  DFFRQX1M \edge_cnt_reg[3]  ( .D(n29), .CK(CLK), .RN(RST), .Q(edge_cnt[3]) );
  DFFRQX1M \edge_cnt_reg[2]  ( .D(n30), .CK(CLK), .RN(RST), .Q(edge_cnt[2]) );
  NOR2X2M U3 ( .A(n47), .B(n21), .Y(n24) );
  INVX2M U4 ( .A(n11), .Y(n47) );
  NAND2X2M U5 ( .A(enable), .B(N11), .Y(n11) );
  OAI22X1M U6 ( .A0(n18), .A1(n50), .B0(n19), .B1(n13), .Y(n26) );
  AOI2B1X1M U7 ( .A1N(n13), .A0(n48), .B0(n47), .Y(n18) );
  AND3X2M U8 ( .A(enable), .B(n11), .C(N13), .Y(n21) );
  OA21X2M U9 ( .A0(n5), .A1(n8), .B0(n6), .Y(n1) );
  OAI22X1M U10 ( .A0(n48), .A1(n11), .B0(bit_cnt[0]), .B1(n13), .Y(n27) );
  OAI22X1M U11 ( .A0(n4), .A1(n11), .B0(n12), .B1(n13), .Y(n25) );
  CLKXOR2X2M U12 ( .A(n4), .B(n14), .Y(n12) );
  NOR2X2M U13 ( .A(n15), .B(n51), .Y(n14) );
  NAND2X2M U14 ( .A(n20), .B(n21), .Y(n13) );
  AOI31X2M U15 ( .A0(bit_cnt[1]), .A1(PAR_EN), .A2(n22), .B0(n23), .Y(n20) );
  NOR3X2M U16 ( .A(n4), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n22) );
  NOR4X1M U17 ( .A(bit_cnt[2]), .B(PAR_EN), .C(n19), .D(n4), .Y(n23) );
  INVX2M U18 ( .A(n16), .Y(n46) );
  AOI32X1M U19 ( .A0(N13), .A1(n17), .A2(enable), .B0(bit_cnt[2]), .B1(n47), 
        .Y(n16) );
  OAI32X1M U20 ( .A0(N11), .A1(bit_cnt[2]), .A2(n15), .B0(n51), .B1(n49), .Y(
        n17) );
  INVX2M U21 ( .A(n15), .Y(n49) );
  AO22X1M U22 ( .A0(edge_cnt[1]), .A1(n24), .B0(N18), .B1(n47), .Y(n31) );
  AO22X1M U23 ( .A0(edge_cnt[2]), .A1(n24), .B0(N19), .B1(n47), .Y(n30) );
  AO22X1M U24 ( .A0(edge_cnt[3]), .A1(n24), .B0(N20), .B1(n47), .Y(n29) );
  AO22X1M U25 ( .A0(edge_cnt[4]), .A1(n24), .B0(N21), .B1(n47), .Y(n28) );
  AO22X1M U26 ( .A0(edge_cnt[5]), .A1(n24), .B0(N22), .B1(n47), .Y(n32) );
  AO22X1M U27 ( .A0(edge_cnt[0]), .A1(n24), .B0(N17), .B1(n47), .Y(n33) );
  NAND2X2M U28 ( .A(bit_cnt[0]), .B(n50), .Y(n19) );
  NAND2X2M U29 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .Y(n15) );
  ADDHX1M U30 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_15/carry[2] ), .S(
        N18) );
  ADDHX1M U31 ( .A(edge_cnt[2]), .B(\add_15/carry[2] ), .CO(\add_15/carry[3] ), 
        .S(N19) );
  ADDHX1M U32 ( .A(edge_cnt[3]), .B(\add_15/carry[3] ), .CO(\add_15/carry[4] ), 
        .S(N20) );
  ADDHX1M U33 ( .A(edge_cnt[4]), .B(\add_15/carry[4] ), .CO(\add_15/carry[5] ), 
        .S(N21) );
  AOI21X2M U34 ( .A0(n3), .A1(Prescale[2]), .B0(n5), .Y(n2) );
  INVX2M U35 ( .A(Prescale[3]), .Y(n8) );
  INVX2M U36 ( .A(Prescale[0]), .Y(N5) );
  NAND2BX1M U37 ( .AN(Prescale[1]), .B(N5), .Y(n3) );
  OAI2BB1X1M U38 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n3), .Y(N6) );
  NOR2X1M U39 ( .A(n3), .B(Prescale[2]), .Y(n5) );
  CLKNAND2X2M U40 ( .A(n5), .B(n8), .Y(n6) );
  XNOR2X1M U41 ( .A(Prescale[4]), .B(n6), .Y(N9) );
  NOR2X1M U42 ( .A(Prescale[4]), .B(n6), .Y(n7) );
  CLKXOR2X2M U43 ( .A(Prescale[5]), .B(n7), .Y(N10) );
  CLKXOR2X2M U44 ( .A(\add_15/carry[5] ), .B(edge_cnt[5]), .Y(N22) );
  CLKNAND2X2M U45 ( .A(edge_cnt[2]), .B(n2), .Y(n43) );
  NAND2BX1M U46 ( .AN(N9), .B(edge_cnt[4]), .Y(n39) );
  CLKNAND2X2M U47 ( .A(edge_cnt[3]), .B(n1), .Y(n38) );
  NOR2BX1M U48 ( .AN(edge_cnt[0]), .B(N5), .Y(n9) );
  OAI2B2X1M U49 ( .A1N(N6), .A0(n9), .B0(edge_cnt[1]), .B1(n9), .Y(n10) );
  NAND3X1M U50 ( .A(n39), .B(n38), .C(n10), .Y(n42) );
  NOR2BX1M U51 ( .AN(edge_cnt[5]), .B(N10), .Y(n41) );
  NOR2BX1M U52 ( .AN(N5), .B(edge_cnt[0]), .Y(n35) );
  AO21XLM U53 ( .A0(n44), .A1(n35), .B0(N6), .Y(n34) );
  OAI211X1M U54 ( .A0(n35), .A1(n44), .B0(n34), .C0(n43), .Y(n36) );
  OAI221X1M U55 ( .A0(edge_cnt[2]), .A1(n2), .B0(edge_cnt[3]), .B1(n1), .C0(
        n36), .Y(n37) );
  AOI32X1M U56 ( .A0(n39), .A1(n38), .A2(n37), .B0(N9), .B1(n45), .Y(n40) );
  OAI2B2X1M U57 ( .A1N(N10), .A0(edge_cnt[5]), .B0(n41), .B1(n40), .Y(N11) );
  NOR4BX1M U58 ( .AN(n43), .B(n42), .C(N11), .D(n41), .Y(N13) );
endmodule


module parity_check_DATA_WIDTH8 ( CLK, RST, PAR_TYP, par_chk_en, sampled_bit, 
        P_DATA, par_err );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, par_chk_en, sampled_bit;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M par_err_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_err) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  XOR3XLM U3 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U4 ( .A(par_chk_en), .Y(n2) );
  XNOR2X2M U5 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
endmodule


module stop_check ( CLK, RST, stp_chk_en, sampled_bit, stp_err );
  input CLK, RST, stp_chk_en, sampled_bit;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module strt_check ( CLK, RST, strt_chk_en, sampled_bit, strt_glitch );
  input CLK, RST, strt_chk_en, sampled_bit;
  output strt_glitch;
  wire   N4;

  DFFRQX2M strt_glitch_reg ( .D(N4), .CK(CLK), .RN(RST), .Q(strt_glitch) );
  AND2X2M U3 ( .A(strt_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module FSM ( CLK, RST, PAR_EN, RX_IN, par_err, strt_glitch, stp_err, bit_cnt, 
        edge_cnt, Prescale, enable, dat_samp_en, deser_en, data_valid, 
        stp_chk_en, strt_chk_en, par_chk_en );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RST, PAR_EN, RX_IN, par_err, strt_glitch, stp_err;
  output enable, dat_samp_en, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en;
  wire   N78, N79, N80, N81, N82, N83, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         \r76/carry[2] , \r76/carry[3] , \r76/carry[4] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]), .QN(n12) );
  NOR2X2M U3 ( .A(n21), .B(n1), .Y(stp_chk_en) );
  NOR3X2M U4 ( .A(n18), .B(n1), .C(n12), .Y(par_chk_en) );
  INVX2M U5 ( .A(n26), .Y(n11) );
  OR4X1M U6 ( .A(n10), .B(n9), .C(n8), .D(n7), .Y(n1) );
  NOR3BX2M U7 ( .AN(stp_chk_en), .B(stp_err), .C(par_err), .Y(data_valid) );
  INVX2M U8 ( .A(Prescale[1]), .Y(N78) );
  OAI21X2M U9 ( .A0(current_state[2]), .A1(n36), .B0(n21), .Y(enable) );
  NOR2X2M U10 ( .A(n37), .B(n16), .Y(n36) );
  INVX2M U11 ( .A(RX_IN), .Y(n16) );
  OAI32X1M U12 ( .A0(n12), .A1(strt_glitch), .A2(n28), .B0(current_state[0]), 
        .B1(RX_IN), .Y(n33) );
  OAI32X1M U13 ( .A0(n30), .A1(n21), .A2(n31), .B0(current_state[2]), .B1(n32), 
        .Y(next_state[0]) );
  OR4X1M U14 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[3]), .D(stp_err), 
        .Y(n30) );
  AOI2B1X1M U15 ( .A1N(current_state[1]), .A0(n33), .B0(n11), .Y(n32) );
  NAND2X2M U16 ( .A(n16), .B(n13), .Y(n31) );
  NOR3X2M U17 ( .A(n18), .B(current_state[0]), .C(n1), .Y(deser_en) );
  NOR4X1M U18 ( .A(current_state[2]), .B(current_state[1]), .C(n1), .D(n12), 
        .Y(strt_chk_en) );
  NOR3X2M U19 ( .A(bit_cnt[3]), .B(strt_glitch), .C(n29), .Y(n28) );
  NOR3X2M U20 ( .A(n14), .B(PAR_EN), .C(n29), .Y(n24) );
  OAI22X1M U21 ( .A0(n19), .A1(n18), .B0(n20), .B1(n21), .Y(next_state[2]) );
  NOR4X1M U22 ( .A(n22), .B(bit_cnt[2]), .C(stp_err), .D(bit_cnt[3]), .Y(n20)
         );
  AOI22X1M U23 ( .A0(n23), .A1(current_state[0]), .B0(n24), .B1(n12), .Y(n19)
         );
  NAND2BX2M U24 ( .AN(bit_cnt[1]), .B(n13), .Y(n22) );
  NAND2BX2M U25 ( .AN(n37), .B(current_state[2]), .Y(n21) );
  AOI31X2M U26 ( .A0(n25), .A1(n26), .A2(n27), .B0(current_state[2]), .Y(
        next_state[1]) );
  NAND3BX2M U27 ( .AN(n24), .B(n12), .C(current_state[1]), .Y(n25) );
  NAND2X2M U28 ( .A(n28), .B(current_state[0]), .Y(n27) );
  NAND2X2M U29 ( .A(current_state[1]), .B(n34), .Y(n26) );
  OAI32X1M U30 ( .A0(n15), .A1(n14), .A2(n29), .B0(n23), .B1(n12), .Y(n34) );
  INVX2M U31 ( .A(PAR_EN), .Y(n15) );
  NAND2BX2M U32 ( .AN(current_state[2]), .B(current_state[1]), .Y(n18) );
  INVX2M U33 ( .A(bit_cnt[0]), .Y(n13) );
  INVX2M U34 ( .A(bit_cnt[3]), .Y(n14) );
  OR3X2M U35 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(n13), .Y(n29) );
  NAND2X2M U36 ( .A(current_state[2]), .B(n21), .Y(dat_samp_en) );
  AND4X2M U37 ( .A(n35), .B(bit_cnt[3]), .C(bit_cnt[1]), .D(n13), .Y(n23) );
  NOR2X2M U38 ( .A(par_err), .B(bit_cnt[2]), .Y(n35) );
  OR2X2M U39 ( .A(current_state[1]), .B(current_state[0]), .Y(n37) );
  AND2X1M U40 ( .A(\r76/carry[4] ), .B(Prescale[5]), .Y(N83) );
  CLKXOR2X2M U41 ( .A(Prescale[5]), .B(\r76/carry[4] ), .Y(N82) );
  AND2X1M U42 ( .A(\r76/carry[3] ), .B(Prescale[4]), .Y(\r76/carry[4] ) );
  CLKXOR2X2M U43 ( .A(Prescale[4]), .B(\r76/carry[3] ), .Y(N81) );
  AND2X1M U44 ( .A(\r76/carry[2] ), .B(Prescale[3]), .Y(\r76/carry[3] ) );
  CLKXOR2X2M U45 ( .A(Prescale[3]), .B(\r76/carry[2] ), .Y(N80) );
  OR2X1M U46 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\r76/carry[2] ) );
  XNOR2X1M U47 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N79) );
  NOR2BX1M U48 ( .AN(edge_cnt[0]), .B(N78), .Y(n2) );
  OAI2B2X1M U49 ( .A1N(N79), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n6) );
  NOR2BX1M U50 ( .AN(N78), .B(edge_cnt[0]), .Y(n3) );
  OAI2B2X1M U51 ( .A1N(edge_cnt[1]), .A0(n3), .B0(N79), .B1(n3), .Y(n5) );
  XNOR2X1M U52 ( .A(N83), .B(edge_cnt[5]), .Y(n4) );
  NAND3X1M U53 ( .A(n6), .B(n5), .C(n4), .Y(n10) );
  CLKXOR2X2M U54 ( .A(N82), .B(edge_cnt[4]), .Y(n9) );
  CLKXOR2X2M U55 ( .A(N80), .B(edge_cnt[2]), .Y(n8) );
  CLKXOR2X2M U56 ( .A(N81), .B(edge_cnt[3]), .Y(n7) );
endmodule


module UART_RX_DATA_WIDTH8 ( CLK, RST, RX_IN, PAR_TYP, PAR_EN, Prescale, 
        data_valid, Parity_Error, Stop_Error, P_DATA );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, PAR_EN;
  output data_valid, Parity_Error, Stop_Error;
  wire   dat_samp_en, sampled_bit, deser_en, enable, par_chk_en, stp_chk_en,
         strt_chk_en, strt_glitch, n1, n2;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  data_sampling data_samp ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .dat_samp_en(
        dat_samp_en), .edge_cnt(edge_cnt), .Prescale(Prescale), .sampled_bit(
        sampled_bit) );
  deserializer_DATA_WIDTH8 deserial ( .CLK(CLK), .RST(n1), .sampled_bit(
        sampled_bit), .deser_en(deser_en), .edge_count(edge_cnt), .Prescale(
        Prescale), .P_DATA(P_DATA) );
  edge_bit_counter counter ( .CLK(CLK), .RST(n1), .enable(enable), .PAR_EN(
        PAR_EN), .Prescale(Prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt)
         );
  parity_check_DATA_WIDTH8 par_chk ( .CLK(CLK), .RST(n1), .PAR_TYP(PAR_TYP), 
        .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .P_DATA(P_DATA), 
        .par_err(Parity_Error) );
  stop_check stp_chk ( .CLK(CLK), .RST(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(Stop_Error) );
  strt_check strt_chk ( .CLK(CLK), .RST(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .strt_glitch(strt_glitch) );
  FSM fsm ( .CLK(CLK), .RST(n1), .PAR_EN(PAR_EN), .RX_IN(RX_IN), .par_err(
        Parity_Error), .strt_glitch(strt_glitch), .stp_err(Stop_Error), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(Prescale), .enable(
        enable), .dat_samp_en(dat_samp_en), .deser_en(deser_en), .data_valid(
        data_valid), .stp_chk_en(stp_chk_en), .strt_chk_en(strt_chk_en), 
        .par_chk_en(par_chk_en) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_DATA_WIDTH8 ( RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_P, TX_IN_V, 
        Prescale, parity_enable, parity_type, TX_OUT_S, TX_OUT_V, RX_OUT_P, 
        RX_OUT_V, parity_error, framing_error );
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, parity_error, framing_error;


  UART_TX_DATA_WIDTH8 U0_UART_TX ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), 
        .PAR_EN(parity_enable), .PAR_TYP(parity_type), .CLK(TX_CLK), .RST(RST), 
        .TX_OUT(TX_OUT_S), .Busy(TX_OUT_V) );
  UART_RX_DATA_WIDTH8 U0_UART_RX ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN_S), 
        .PAR_TYP(parity_type), .PAR_EN(parity_enable), .Prescale(Prescale), 
        .data_valid(RX_OUT_V), .Parity_Error(parity_error), .Stop_Error(
        framing_error), .P_DATA(RX_OUT_P) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_ff, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_ff;

  DFFRQX2M pulse_ff_reg ( .D(sync_ff[1]), .CK(CLK), .RN(RST), .Q(pulse_ff) );
  DFFRQX2M \sync_ff_reg[1]  ( .D(sync_ff[0]), .CK(CLK), .RN(RST), .Q(
        sync_ff[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_ff_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        sync_ff[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_ff), .B(sync_ff[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8 ( W_CLK, W_RST, W_inc, full, W_addr, W_data, 
        R_addr, R_data );
  input [2:0] W_addr;
  input [7:0] W_data;
  input [2:0] R_addr;
  output [7:0] R_data;
  input W_CLK, W_RST, W_inc, full;
  wire   N10, N11, N12, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;
  assign N10 = R_addr[0];
  assign N11 = R_addr[1];
  assign N12 = R_addr[2];

  DFFRQX2M \mem_reg[1][7]  ( .D(n77), .CK(W_CLK), .RN(n100), .Q(\mem[1][7] )
         );
  DFFRQX2M \mem_reg[1][6]  ( .D(n76), .CK(W_CLK), .RN(n100), .Q(\mem[1][6] )
         );
  DFFRQX2M \mem_reg[1][5]  ( .D(n75), .CK(W_CLK), .RN(n100), .Q(\mem[1][5] )
         );
  DFFRQX2M \mem_reg[1][4]  ( .D(n74), .CK(W_CLK), .RN(n100), .Q(\mem[1][4] )
         );
  DFFRQX2M \mem_reg[1][3]  ( .D(n73), .CK(W_CLK), .RN(n100), .Q(\mem[1][3] )
         );
  DFFRQX2M \mem_reg[1][2]  ( .D(n72), .CK(W_CLK), .RN(n101), .Q(\mem[1][2] )
         );
  DFFRQX2M \mem_reg[1][1]  ( .D(n71), .CK(W_CLK), .RN(n101), .Q(\mem[1][1] )
         );
  DFFRQX2M \mem_reg[1][0]  ( .D(n70), .CK(W_CLK), .RN(n101), .Q(\mem[1][0] )
         );
  DFFRQX2M \mem_reg[5][7]  ( .D(n45), .CK(W_CLK), .RN(n103), .Q(\mem[5][7] )
         );
  DFFRQX2M \mem_reg[5][6]  ( .D(n44), .CK(W_CLK), .RN(n103), .Q(\mem[5][6] )
         );
  DFFRQX2M \mem_reg[5][5]  ( .D(n43), .CK(W_CLK), .RN(n103), .Q(\mem[5][5] )
         );
  DFFRQX2M \mem_reg[5][4]  ( .D(n42), .CK(W_CLK), .RN(n103), .Q(\mem[5][4] )
         );
  DFFRQX2M \mem_reg[5][3]  ( .D(n41), .CK(W_CLK), .RN(n103), .Q(\mem[5][3] )
         );
  DFFRQX2M \mem_reg[5][2]  ( .D(n40), .CK(W_CLK), .RN(n103), .Q(\mem[5][2] )
         );
  DFFRQX2M \mem_reg[5][1]  ( .D(n39), .CK(W_CLK), .RN(n103), .Q(\mem[5][1] )
         );
  DFFRQX2M \mem_reg[5][0]  ( .D(n38), .CK(W_CLK), .RN(n103), .Q(\mem[5][0] )
         );
  DFFRQX2M \mem_reg[3][7]  ( .D(n61), .CK(W_CLK), .RN(n101), .Q(\mem[3][7] )
         );
  DFFRQX2M \mem_reg[3][6]  ( .D(n60), .CK(W_CLK), .RN(n101), .Q(\mem[3][6] )
         );
  DFFRQX2M \mem_reg[3][5]  ( .D(n59), .CK(W_CLK), .RN(n102), .Q(\mem[3][5] )
         );
  DFFRQX2M \mem_reg[3][4]  ( .D(n58), .CK(W_CLK), .RN(n102), .Q(\mem[3][4] )
         );
  DFFRQX2M \mem_reg[3][3]  ( .D(n57), .CK(W_CLK), .RN(n102), .Q(\mem[3][3] )
         );
  DFFRQX2M \mem_reg[3][2]  ( .D(n56), .CK(W_CLK), .RN(n102), .Q(\mem[3][2] )
         );
  DFFRQX2M \mem_reg[3][1]  ( .D(n55), .CK(W_CLK), .RN(n102), .Q(\mem[3][1] )
         );
  DFFRQX2M \mem_reg[3][0]  ( .D(n54), .CK(W_CLK), .RN(n102), .Q(\mem[3][0] )
         );
  DFFRQX2M \mem_reg[7][7]  ( .D(n29), .CK(W_CLK), .RN(n104), .Q(\mem[7][7] )
         );
  DFFRQX2M \mem_reg[7][6]  ( .D(n28), .CK(W_CLK), .RN(n104), .Q(\mem[7][6] )
         );
  DFFRQX2M \mem_reg[7][5]  ( .D(n27), .CK(W_CLK), .RN(n104), .Q(\mem[7][5] )
         );
  DFFRQX2M \mem_reg[7][4]  ( .D(n26), .CK(W_CLK), .RN(n104), .Q(\mem[7][4] )
         );
  DFFRQX2M \mem_reg[7][3]  ( .D(n25), .CK(W_CLK), .RN(n104), .Q(\mem[7][3] )
         );
  DFFRQX2M \mem_reg[7][2]  ( .D(n24), .CK(W_CLK), .RN(n104), .Q(\mem[7][2] )
         );
  DFFRQX2M \mem_reg[7][1]  ( .D(n23), .CK(W_CLK), .RN(n104), .Q(\mem[7][1] )
         );
  DFFRQX2M \mem_reg[7][0]  ( .D(n22), .CK(W_CLK), .RN(n104), .Q(\mem[7][0] )
         );
  DFFRQX2M \mem_reg[2][7]  ( .D(n69), .CK(W_CLK), .RN(n101), .Q(\mem[2][7] )
         );
  DFFRQX2M \mem_reg[2][6]  ( .D(n68), .CK(W_CLK), .RN(n101), .Q(\mem[2][6] )
         );
  DFFRQX2M \mem_reg[2][5]  ( .D(n67), .CK(W_CLK), .RN(n101), .Q(\mem[2][5] )
         );
  DFFRQX2M \mem_reg[2][4]  ( .D(n66), .CK(W_CLK), .RN(n101), .Q(\mem[2][4] )
         );
  DFFRQX2M \mem_reg[2][3]  ( .D(n65), .CK(W_CLK), .RN(n101), .Q(\mem[2][3] )
         );
  DFFRQX2M \mem_reg[2][2]  ( .D(n64), .CK(W_CLK), .RN(n101), .Q(\mem[2][2] )
         );
  DFFRQX2M \mem_reg[2][1]  ( .D(n63), .CK(W_CLK), .RN(n101), .Q(\mem[2][1] )
         );
  DFFRQX2M \mem_reg[2][0]  ( .D(n62), .CK(W_CLK), .RN(n101), .Q(\mem[2][0] )
         );
  DFFRQX2M \mem_reg[6][7]  ( .D(n37), .CK(W_CLK), .RN(n103), .Q(\mem[6][7] )
         );
  DFFRQX2M \mem_reg[6][6]  ( .D(n36), .CK(W_CLK), .RN(n103), .Q(\mem[6][6] )
         );
  DFFRQX2M \mem_reg[6][5]  ( .D(n35), .CK(W_CLK), .RN(n103), .Q(\mem[6][5] )
         );
  DFFRQX2M \mem_reg[6][4]  ( .D(n34), .CK(W_CLK), .RN(n103), .Q(\mem[6][4] )
         );
  DFFRQX2M \mem_reg[6][3]  ( .D(n33), .CK(W_CLK), .RN(n104), .Q(\mem[6][3] )
         );
  DFFRQX2M \mem_reg[6][2]  ( .D(n32), .CK(W_CLK), .RN(n104), .Q(\mem[6][2] )
         );
  DFFRQX2M \mem_reg[6][1]  ( .D(n31), .CK(W_CLK), .RN(n104), .Q(\mem[6][1] )
         );
  DFFRQX2M \mem_reg[6][0]  ( .D(n30), .CK(W_CLK), .RN(n104), .Q(\mem[6][0] )
         );
  DFFRQX2M \mem_reg[0][7]  ( .D(n85), .CK(W_CLK), .RN(n100), .Q(\mem[0][7] )
         );
  DFFRQX2M \mem_reg[0][6]  ( .D(n84), .CK(W_CLK), .RN(n100), .Q(\mem[0][6] )
         );
  DFFRQX2M \mem_reg[0][5]  ( .D(n83), .CK(W_CLK), .RN(n100), .Q(\mem[0][5] )
         );
  DFFRQX2M \mem_reg[0][4]  ( .D(n82), .CK(W_CLK), .RN(n100), .Q(\mem[0][4] )
         );
  DFFRQX2M \mem_reg[0][3]  ( .D(n81), .CK(W_CLK), .RN(n100), .Q(\mem[0][3] )
         );
  DFFRQX2M \mem_reg[0][2]  ( .D(n80), .CK(W_CLK), .RN(n100), .Q(\mem[0][2] )
         );
  DFFRQX2M \mem_reg[0][1]  ( .D(n79), .CK(W_CLK), .RN(n100), .Q(\mem[0][1] )
         );
  DFFRQX2M \mem_reg[0][0]  ( .D(n78), .CK(W_CLK), .RN(n100), .Q(\mem[0][0] )
         );
  DFFRQX2M \mem_reg[4][7]  ( .D(n53), .CK(W_CLK), .RN(n102), .Q(\mem[4][7] )
         );
  DFFRQX2M \mem_reg[4][6]  ( .D(n52), .CK(W_CLK), .RN(n102), .Q(\mem[4][6] )
         );
  DFFRQX2M \mem_reg[4][5]  ( .D(n51), .CK(W_CLK), .RN(n102), .Q(\mem[4][5] )
         );
  DFFRQX2M \mem_reg[4][4]  ( .D(n50), .CK(W_CLK), .RN(n102), .Q(\mem[4][4] )
         );
  DFFRQX2M \mem_reg[4][3]  ( .D(n49), .CK(W_CLK), .RN(n102), .Q(\mem[4][3] )
         );
  DFFRQX2M \mem_reg[4][2]  ( .D(n48), .CK(W_CLK), .RN(n102), .Q(\mem[4][2] )
         );
  DFFRQX2M \mem_reg[4][1]  ( .D(n47), .CK(W_CLK), .RN(n102), .Q(\mem[4][1] )
         );
  DFFRQX2M \mem_reg[4][0]  ( .D(n46), .CK(W_CLK), .RN(n103), .Q(\mem[4][0] )
         );
  BUFX2M U2 ( .A(n17), .Y(n96) );
  BUFX2M U3 ( .A(n19), .Y(n95) );
  BUFX2M U4 ( .A(n20), .Y(n94) );
  BUFX2M U5 ( .A(n13), .Y(n97) );
  BUFX2M U6 ( .A(n98), .Y(n102) );
  BUFX2M U7 ( .A(n98), .Y(n101) );
  BUFX2M U8 ( .A(n98), .Y(n100) );
  BUFX2M U9 ( .A(n99), .Y(n103) );
  BUFX2M U10 ( .A(n99), .Y(n104) );
  NOR2BX2M U11 ( .AN(W_inc), .B(full), .Y(n16) );
  BUFX2M U12 ( .A(W_RST), .Y(n98) );
  BUFX2M U13 ( .A(W_RST), .Y(n99) );
  NAND3X2M U14 ( .A(n113), .B(n114), .C(n12), .Y(n15) );
  NAND3X2M U15 ( .A(n113), .B(n114), .C(n18), .Y(n21) );
  NAND3X2M U16 ( .A(n12), .B(n114), .C(W_addr[0]), .Y(n14) );
  NAND3X2M U17 ( .A(W_addr[0]), .B(n12), .C(W_addr[1]), .Y(n11) );
  NOR2BX2M U18 ( .AN(n16), .B(W_addr[2]), .Y(n18) );
  INVX2M U19 ( .A(W_data[0]), .Y(n105) );
  INVX2M U20 ( .A(W_data[1]), .Y(n106) );
  INVX2M U21 ( .A(W_data[2]), .Y(n107) );
  INVX2M U22 ( .A(W_data[3]), .Y(n108) );
  INVX2M U23 ( .A(W_data[4]), .Y(n109) );
  INVX2M U24 ( .A(W_data[5]), .Y(n110) );
  INVX2M U25 ( .A(W_data[6]), .Y(n111) );
  INVX2M U26 ( .A(W_data[7]), .Y(n112) );
  OAI2BB2X1M U27 ( .B0(n11), .B1(n105), .A0N(\mem[7][0] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U28 ( .B0(n11), .B1(n106), .A0N(\mem[7][1] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U29 ( .B0(n11), .B1(n107), .A0N(\mem[7][2] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U30 ( .B0(n11), .B1(n108), .A0N(\mem[7][3] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U31 ( .B0(n11), .B1(n109), .A0N(\mem[7][4] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U32 ( .B0(n11), .B1(n110), .A0N(\mem[7][5] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U33 ( .B0(n11), .B1(n111), .A0N(\mem[7][6] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U34 ( .B0(n11), .B1(n112), .A0N(\mem[7][7] ), .A1N(n11), .Y(n29)
         );
  OAI2BB2X1M U35 ( .B0(n105), .B1(n14), .A0N(\mem[5][0] ), .A1N(n14), .Y(n38)
         );
  OAI2BB2X1M U36 ( .B0(n106), .B1(n14), .A0N(\mem[5][1] ), .A1N(n14), .Y(n39)
         );
  OAI2BB2X1M U37 ( .B0(n107), .B1(n14), .A0N(\mem[5][2] ), .A1N(n14), .Y(n40)
         );
  OAI2BB2X1M U38 ( .B0(n108), .B1(n14), .A0N(\mem[5][3] ), .A1N(n14), .Y(n41)
         );
  OAI2BB2X1M U39 ( .B0(n109), .B1(n14), .A0N(\mem[5][4] ), .A1N(n14), .Y(n42)
         );
  OAI2BB2X1M U40 ( .B0(n110), .B1(n14), .A0N(\mem[5][5] ), .A1N(n14), .Y(n43)
         );
  OAI2BB2X1M U41 ( .B0(n111), .B1(n14), .A0N(\mem[5][6] ), .A1N(n14), .Y(n44)
         );
  OAI2BB2X1M U42 ( .B0(n112), .B1(n14), .A0N(\mem[5][7] ), .A1N(n14), .Y(n45)
         );
  OAI2BB2X1M U43 ( .B0(n105), .B1(n21), .A0N(\mem[0][0] ), .A1N(n21), .Y(n78)
         );
  OAI2BB2X1M U44 ( .B0(n106), .B1(n21), .A0N(\mem[0][1] ), .A1N(n21), .Y(n79)
         );
  OAI2BB2X1M U45 ( .B0(n107), .B1(n21), .A0N(\mem[0][2] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U46 ( .B0(n108), .B1(n21), .A0N(\mem[0][3] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U47 ( .B0(n109), .B1(n21), .A0N(\mem[0][4] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U48 ( .B0(n110), .B1(n21), .A0N(\mem[0][5] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U49 ( .B0(n111), .B1(n21), .A0N(\mem[0][6] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U50 ( .B0(n112), .B1(n21), .A0N(\mem[0][7] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U51 ( .B0(n105), .B1(n15), .A0N(\mem[4][0] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U52 ( .B0(n106), .B1(n15), .A0N(\mem[4][1] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U53 ( .B0(n107), .B1(n15), .A0N(\mem[4][2] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U54 ( .B0(n108), .B1(n15), .A0N(\mem[4][3] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U55 ( .B0(n109), .B1(n15), .A0N(\mem[4][4] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U56 ( .B0(n110), .B1(n15), .A0N(\mem[4][5] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U57 ( .B0(n111), .B1(n15), .A0N(\mem[4][6] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U58 ( .B0(n112), .B1(n15), .A0N(\mem[4][7] ), .A1N(n15), .Y(n53)
         );
  OAI2BB2X1M U59 ( .B0(n105), .B1(n97), .A0N(\mem[6][0] ), .A1N(n97), .Y(n30)
         );
  OAI2BB2X1M U60 ( .B0(n106), .B1(n97), .A0N(\mem[6][1] ), .A1N(n97), .Y(n31)
         );
  OAI2BB2X1M U61 ( .B0(n107), .B1(n97), .A0N(\mem[6][2] ), .A1N(n97), .Y(n32)
         );
  OAI2BB2X1M U62 ( .B0(n108), .B1(n97), .A0N(\mem[6][3] ), .A1N(n97), .Y(n33)
         );
  OAI2BB2X1M U63 ( .B0(n109), .B1(n97), .A0N(\mem[6][4] ), .A1N(n97), .Y(n34)
         );
  OAI2BB2X1M U64 ( .B0(n110), .B1(n97), .A0N(\mem[6][5] ), .A1N(n97), .Y(n35)
         );
  OAI2BB2X1M U65 ( .B0(n111), .B1(n97), .A0N(\mem[6][6] ), .A1N(n97), .Y(n36)
         );
  OAI2BB2X1M U66 ( .B0(n112), .B1(n97), .A0N(\mem[6][7] ), .A1N(n97), .Y(n37)
         );
  OAI2BB2X1M U67 ( .B0(n105), .B1(n96), .A0N(\mem[3][0] ), .A1N(n96), .Y(n54)
         );
  OAI2BB2X1M U68 ( .B0(n106), .B1(n96), .A0N(\mem[3][1] ), .A1N(n96), .Y(n55)
         );
  OAI2BB2X1M U69 ( .B0(n107), .B1(n96), .A0N(\mem[3][2] ), .A1N(n96), .Y(n56)
         );
  OAI2BB2X1M U70 ( .B0(n108), .B1(n96), .A0N(\mem[3][3] ), .A1N(n96), .Y(n57)
         );
  OAI2BB2X1M U71 ( .B0(n109), .B1(n96), .A0N(\mem[3][4] ), .A1N(n96), .Y(n58)
         );
  OAI2BB2X1M U72 ( .B0(n110), .B1(n96), .A0N(\mem[3][5] ), .A1N(n96), .Y(n59)
         );
  OAI2BB2X1M U73 ( .B0(n111), .B1(n96), .A0N(\mem[3][6] ), .A1N(n96), .Y(n60)
         );
  OAI2BB2X1M U74 ( .B0(n112), .B1(n96), .A0N(\mem[3][7] ), .A1N(n96), .Y(n61)
         );
  OAI2BB2X1M U75 ( .B0(n105), .B1(n95), .A0N(\mem[2][0] ), .A1N(n95), .Y(n62)
         );
  OAI2BB2X1M U76 ( .B0(n106), .B1(n95), .A0N(\mem[2][1] ), .A1N(n95), .Y(n63)
         );
  OAI2BB2X1M U77 ( .B0(n107), .B1(n95), .A0N(\mem[2][2] ), .A1N(n95), .Y(n64)
         );
  OAI2BB2X1M U78 ( .B0(n108), .B1(n95), .A0N(\mem[2][3] ), .A1N(n95), .Y(n65)
         );
  OAI2BB2X1M U79 ( .B0(n109), .B1(n95), .A0N(\mem[2][4] ), .A1N(n95), .Y(n66)
         );
  OAI2BB2X1M U80 ( .B0(n110), .B1(n95), .A0N(\mem[2][5] ), .A1N(n95), .Y(n67)
         );
  OAI2BB2X1M U81 ( .B0(n111), .B1(n95), .A0N(\mem[2][6] ), .A1N(n95), .Y(n68)
         );
  OAI2BB2X1M U82 ( .B0(n112), .B1(n95), .A0N(\mem[2][7] ), .A1N(n95), .Y(n69)
         );
  OAI2BB2X1M U83 ( .B0(n105), .B1(n94), .A0N(\mem[1][0] ), .A1N(n94), .Y(n70)
         );
  OAI2BB2X1M U84 ( .B0(n106), .B1(n94), .A0N(\mem[1][1] ), .A1N(n94), .Y(n71)
         );
  OAI2BB2X1M U85 ( .B0(n107), .B1(n94), .A0N(\mem[1][2] ), .A1N(n94), .Y(n72)
         );
  OAI2BB2X1M U86 ( .B0(n108), .B1(n94), .A0N(\mem[1][3] ), .A1N(n94), .Y(n73)
         );
  OAI2BB2X1M U87 ( .B0(n109), .B1(n94), .A0N(\mem[1][4] ), .A1N(n94), .Y(n74)
         );
  OAI2BB2X1M U88 ( .B0(n110), .B1(n94), .A0N(\mem[1][5] ), .A1N(n94), .Y(n75)
         );
  OAI2BB2X1M U89 ( .B0(n111), .B1(n94), .A0N(\mem[1][6] ), .A1N(n94), .Y(n76)
         );
  OAI2BB2X1M U90 ( .B0(n112), .B1(n94), .A0N(\mem[1][7] ), .A1N(n94), .Y(n77)
         );
  AND2X2M U91 ( .A(W_addr[2]), .B(n16), .Y(n12) );
  NAND3X2M U92 ( .A(n12), .B(n113), .C(W_addr[1]), .Y(n13) );
  NAND3X2M U93 ( .A(W_addr[1]), .B(W_addr[0]), .C(n18), .Y(n17) );
  NAND3X2M U94 ( .A(W_addr[1]), .B(n113), .C(n18), .Y(n19) );
  NAND3X2M U95 ( .A(W_addr[0]), .B(n114), .C(n18), .Y(n20) );
  INVX2M U96 ( .A(W_addr[1]), .Y(n114) );
  INVX2M U97 ( .A(W_addr[0]), .Y(n113) );
  MX2X2M U98 ( .A(n2), .B(n1), .S0(N12), .Y(R_data[0]) );
  MX4X1M U99 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n92), .S1(N11), .Y(n1) );
  MX4X1M U100 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n93), .S1(N11), .Y(n2) );
  MX2X2M U101 ( .A(n4), .B(n3), .S0(N12), .Y(R_data[1]) );
  MX4X1M U102 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n92), .S1(N11), .Y(n3) );
  MX4X1M U103 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n93), .S1(N11), .Y(n4) );
  MX2X2M U104 ( .A(n6), .B(n5), .S0(N12), .Y(R_data[2]) );
  MX4X1M U105 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n92), .S1(N11), .Y(n5) );
  MX4X1M U106 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n93), .S1(N11), .Y(n6) );
  MX2X2M U107 ( .A(n8), .B(n7), .S0(N12), .Y(R_data[3]) );
  MX4X1M U108 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n92), .S1(N11), .Y(n7) );
  MX4X1M U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n93), .S1(N11), .Y(n8) );
  MX2X2M U110 ( .A(n10), .B(n9), .S0(N12), .Y(R_data[4]) );
  MX4X1M U111 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n92), .S1(N11), .Y(n9) );
  MX4X1M U112 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n93), .S1(N11), .Y(n10) );
  MX2X2M U113 ( .A(n87), .B(n86), .S0(N12), .Y(R_data[5]) );
  MX4X1M U114 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n92), .S1(N11), .Y(n86) );
  MX4X1M U115 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n93), .S1(N11), .Y(n87) );
  MX2X2M U116 ( .A(n89), .B(n88), .S0(N12), .Y(R_data[6]) );
  MX4X1M U117 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n92), .S1(N11), .Y(n88) );
  MX4X1M U118 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n93), .S1(N11), .Y(n89) );
  MX2X2M U119 ( .A(n91), .B(n90), .S0(N12), .Y(R_data[7]) );
  MX4X1M U120 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n92), .S1(N11), .Y(n90) );
  MX4X1M U121 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n93), .S1(N11), .Y(n91) );
  BUFX2M U122 ( .A(N10), .Y(n93) );
  BUFX2M U123 ( .A(N10), .Y(n92) );
endmodule


module DF_SYNC_DATA_WIDTH8_0 ( CLK, RST, in, out );
  input [3:0] in;
  output [3:0] out;
  input CLK, RST;

  wire   [3:0] Q;

  DFFRQX2M \out_reg[1]  ( .D(Q[1]), .CK(CLK), .RN(RST), .Q(out[1]) );
  DFFRQX2M \out_reg[0]  ( .D(Q[0]), .CK(CLK), .RN(RST), .Q(out[0]) );
  DFFRQX2M \out_reg[3]  ( .D(Q[3]), .CK(CLK), .RN(RST), .Q(out[3]) );
  DFFRQX2M \out_reg[2]  ( .D(Q[2]), .CK(CLK), .RN(RST), .Q(out[2]) );
  DFFRQX2M \Q_reg[3]  ( .D(in[3]), .CK(CLK), .RN(RST), .Q(Q[3]) );
  DFFRQX2M \Q_reg[2]  ( .D(in[2]), .CK(CLK), .RN(RST), .Q(Q[2]) );
  DFFRQX2M \Q_reg[1]  ( .D(in[1]), .CK(CLK), .RN(RST), .Q(Q[1]) );
  DFFRQX2M \Q_reg[0]  ( .D(in[0]), .CK(CLK), .RN(RST), .Q(Q[0]) );
endmodule


module DF_SYNC_DATA_WIDTH8_1 ( CLK, RST, in, out );
  input [3:0] in;
  output [3:0] out;
  input CLK, RST;

  wire   [3:0] Q;

  DFFRQX2M \out_reg[3]  ( .D(Q[3]), .CK(CLK), .RN(RST), .Q(out[3]) );
  DFFRQX2M \out_reg[2]  ( .D(Q[2]), .CK(CLK), .RN(RST), .Q(out[2]) );
  DFFRQX2M \out_reg[1]  ( .D(Q[1]), .CK(CLK), .RN(RST), .Q(out[1]) );
  DFFRQX2M \out_reg[0]  ( .D(Q[0]), .CK(CLK), .RN(RST), .Q(out[0]) );
  DFFRQX2M \Q_reg[3]  ( .D(in[3]), .CK(CLK), .RN(RST), .Q(Q[3]) );
  DFFRQX2M \Q_reg[2]  ( .D(in[2]), .CK(CLK), .RN(RST), .Q(Q[2]) );
  DFFRQX2M \Q_reg[1]  ( .D(in[1]), .CK(CLK), .RN(RST), .Q(Q[1]) );
  DFFRQX2M \Q_reg[0]  ( .D(in[0]), .CK(CLK), .RN(RST), .Q(Q[0]) );
endmodule


module FIFO_WR_DATA_WIDTH8 ( W_CLK, W_RST, W_inc, sync_gray_rptr, W_addr, 
        gray_wr_ptr, full );
  input [3:0] sync_gray_rptr;
  output [2:0] W_addr;
  output [3:0] gray_wr_ptr;
  input W_CLK, W_RST, W_inc;
  output full;
  wire   \bn_wr_ptr[3] , N7, N10, N11, n1, n2, n3, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15;

  DFFRQX2M \bn_wr_ptr_reg[3]  ( .D(n11), .CK(W_CLK), .RN(W_RST), .Q(
        \bn_wr_ptr[3] ) );
  DFFRQX2M \bn_wr_ptr_reg[2]  ( .D(n12), .CK(W_CLK), .RN(W_RST), .Q(W_addr[2])
         );
  DFFRQX2M \bn_wr_ptr_reg[0]  ( .D(n14), .CK(W_CLK), .RN(W_RST), .Q(W_addr[0])
         );
  DFFRQX2M \gray_wr_ptr_reg[0]  ( .D(N7), .CK(W_CLK), .RN(W_RST), .Q(
        gray_wr_ptr[0]) );
  DFFRQX2M \gray_wr_ptr_reg[1]  ( .D(N11), .CK(W_CLK), .RN(W_RST), .Q(
        gray_wr_ptr[1]) );
  DFFRQX2M \gray_wr_ptr_reg[3]  ( .D(\bn_wr_ptr[3] ), .CK(W_CLK), .RN(W_RST), 
        .Q(gray_wr_ptr[3]) );
  DFFRQX2M \gray_wr_ptr_reg[2]  ( .D(N10), .CK(W_CLK), .RN(W_RST), .Q(
        gray_wr_ptr[2]) );
  DFFRQX2M \bn_wr_ptr_reg[1]  ( .D(n13), .CK(W_CLK), .RN(W_RST), .Q(W_addr[1])
         );
  NOR2X2M U3 ( .A(n15), .B(n5), .Y(n3) );
  NAND2X2M U4 ( .A(W_inc), .B(n6), .Y(n5) );
  INVX2M U5 ( .A(n6), .Y(full) );
  XNOR2X2M U6 ( .A(W_addr[2]), .B(n2), .Y(n12) );
  XNOR2X2M U7 ( .A(\bn_wr_ptr[3] ), .B(n1), .Y(n11) );
  NAND2BX2M U8 ( .AN(n2), .B(W_addr[2]), .Y(n1) );
  NAND4X2M U9 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  XNOR2X2M U10 ( .A(sync_gray_rptr[0]), .B(gray_wr_ptr[0]), .Y(n7) );
  XNOR2X2M U11 ( .A(sync_gray_rptr[1]), .B(gray_wr_ptr[1]), .Y(n8) );
  CLKXOR2X2M U12 ( .A(sync_gray_rptr[2]), .B(gray_wr_ptr[2]), .Y(n9) );
  NAND2X2M U13 ( .A(W_addr[1]), .B(n3), .Y(n2) );
  CLKXOR2X2M U14 ( .A(sync_gray_rptr[3]), .B(gray_wr_ptr[3]), .Y(n10) );
  CLKXOR2X2M U15 ( .A(W_addr[1]), .B(n3), .Y(n13) );
  XNOR2X2M U16 ( .A(W_addr[1]), .B(n15), .Y(N7) );
  XNOR2X2M U17 ( .A(W_addr[0]), .B(n5), .Y(n14) );
  INVX2M U18 ( .A(W_addr[0]), .Y(n15) );
  CLKXOR2X2M U19 ( .A(W_addr[2]), .B(W_addr[1]), .Y(N11) );
  CLKXOR2X2M U20 ( .A(\bn_wr_ptr[3] ), .B(W_addr[2]), .Y(N10) );
endmodule


module FIFO_RD_DATA_WIDTH8 ( R_CLK, R_RST, R_inc, sync_gray_wptr, R_addr, 
        gray_rd_ptr, empty );
  input [3:0] sync_gray_wptr;
  output [2:0] R_addr;
  output [3:0] gray_rd_ptr;
  input R_CLK, R_RST, R_inc;
  output empty;
  wire   \bn_rd_ptr[3] , N7, N8, N9, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n2;

  DFFRQX2M \bn_rd_ptr_reg[3]  ( .D(n12), .CK(R_CLK), .RN(R_RST), .Q(
        \bn_rd_ptr[3] ) );
  DFFRQX2M \bn_rd_ptr_reg[2]  ( .D(n13), .CK(R_CLK), .RN(R_RST), .Q(R_addr[2])
         );
  DFFRQX2M \gray_rd_ptr_reg[0]  ( .D(N9), .CK(R_CLK), .RN(R_RST), .Q(
        gray_rd_ptr[0]) );
  DFFRQX2M \gray_rd_ptr_reg[3]  ( .D(\bn_rd_ptr[3] ), .CK(R_CLK), .RN(R_RST), 
        .Q(gray_rd_ptr[3]) );
  DFFRQX2M \gray_rd_ptr_reg[2]  ( .D(N7), .CK(R_CLK), .RN(R_RST), .Q(
        gray_rd_ptr[2]) );
  DFFRQX2M \gray_rd_ptr_reg[1]  ( .D(N8), .CK(R_CLK), .RN(R_RST), .Q(
        gray_rd_ptr[1]) );
  DFFRQX2M \bn_rd_ptr_reg[0]  ( .D(n15), .CK(R_CLK), .RN(R_RST), .Q(R_addr[0])
         );
  DFFRQX2M \bn_rd_ptr_reg[1]  ( .D(n14), .CK(R_CLK), .RN(R_RST), .Q(R_addr[1])
         );
  INVX2M U3 ( .A(n7), .Y(empty) );
  NOR2X2M U4 ( .A(n2), .B(n6), .Y(n5) );
  XNOR2X2M U5 ( .A(sync_gray_wptr[1]), .B(gray_rd_ptr[1]), .Y(n8) );
  NAND4X2M U6 ( .A(n8), .B(n9), .C(n10), .D(n11), .Y(n7) );
  XNOR2X2M U7 ( .A(sync_gray_wptr[3]), .B(gray_rd_ptr[3]), .Y(n10) );
  XNOR2X2M U8 ( .A(sync_gray_wptr[2]), .B(gray_rd_ptr[2]), .Y(n11) );
  XNOR2X2M U9 ( .A(sync_gray_wptr[0]), .B(gray_rd_ptr[0]), .Y(n9) );
  XNOR2X2M U10 ( .A(R_addr[2]), .B(n4), .Y(n13) );
  XNOR2X2M U11 ( .A(\bn_rd_ptr[3] ), .B(n3), .Y(n12) );
  NAND2BX2M U12 ( .AN(n4), .B(R_addr[2]), .Y(n3) );
  XNOR2X2M U13 ( .A(R_addr[1]), .B(n2), .Y(N9) );
  XNOR2X2M U14 ( .A(R_addr[0]), .B(n6), .Y(n15) );
  NAND2X2M U15 ( .A(R_addr[1]), .B(n5), .Y(n4) );
  NAND2X2M U16 ( .A(R_inc), .B(n7), .Y(n6) );
  INVX2M U17 ( .A(R_addr[0]), .Y(n2) );
  CLKXOR2X2M U18 ( .A(R_addr[1]), .B(n5), .Y(n14) );
  CLKXOR2X2M U19 ( .A(R_addr[2]), .B(R_addr[1]), .Y(N8) );
  CLKXOR2X2M U20 ( .A(\bn_rd_ptr[3] ), .B(R_addr[2]), .Y(N7) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8 ( W_CLK, W_RST, W_inc, W_data, R_CLK, R_RST, 
        R_inc, R_data, empty, full );
  input [7:0] W_data;
  output [7:0] R_data;
  input W_CLK, W_RST, W_inc, R_CLK, R_RST, R_inc;
  output empty, full;
  wire   n1, n2;
  wire   [2:0] W_addr;
  wire   [2:0] R_addr;
  wire   [3:0] gray_rd_ptr;
  wire   [3:0] sync_gray_rptr;
  wire   [3:0] gray_wr_ptr;
  wire   [3:0] sync_gray_wptr;

  FIFO_MEM_CNTRL_DATA_WIDTH8 U0_FIFO_MEM ( .W_CLK(W_CLK), .W_RST(n1), .W_inc(
        W_inc), .full(full), .W_addr(W_addr), .W_data(W_data), .R_addr(R_addr), 
        .R_data(R_data) );
  DF_SYNC_DATA_WIDTH8_0 sync_r2w ( .CLK(W_CLK), .RST(n1), .in(gray_rd_ptr), 
        .out(sync_gray_rptr) );
  DF_SYNC_DATA_WIDTH8_1 sync_w2r ( .CLK(R_CLK), .RST(R_RST), .in(gray_wr_ptr), 
        .out(sync_gray_wptr) );
  FIFO_WR_DATA_WIDTH8 U1_FIFO_WR ( .W_CLK(W_CLK), .W_RST(n1), .W_inc(W_inc), 
        .sync_gray_rptr(sync_gray_rptr), .W_addr(W_addr), .gray_wr_ptr(
        gray_wr_ptr), .full(full) );
  FIFO_RD_DATA_WIDTH8 U1_FIFO_RD ( .R_CLK(R_CLK), .R_RST(R_RST), .R_inc(R_inc), 
        .sync_gray_wptr(sync_gray_wptr), .R_addr(R_addr), .gray_rd_ptr(
        gray_rd_ptr), .empty(empty) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
endmodule


module PULSE_GEN ( CLK, RST, lvl_sig, pulse_sig );
  input CLK, RST, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX2M rcv_flop_reg ( .D(lvl_sig), .CK(CLK), .RN(RST), .Q(rcv_flop) );
  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(CLK), .RN(RST), .Q(pls_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module Clock_Divider_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Clock_Divider_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N3, N5, N6, N7, N8, N9, N10, N11, flag, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, div_clk, N41, N42, N43, N44, N45, N46, N47,
         N48, N50, N51, N52, N53, N54, N55, N56, N57, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, \sub_24/carry[7] , \sub_24/carry[6] ,
         \sub_24/carry[5] , \sub_24/carry[4] , \sub_24/carry[3] ,
         \sub_24/carry[2] , \sub_24/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51;
  wire   [7:0] low_pulse;
  wire   [7:0] counter;

  Clock_Divider_0_DW01_inc_0 add_43 ( .A(counter), .SUM({N48, N47, N46, N45, 
        N44, N43, N42, N41}) );
  DFFRQX2M div_clk_reg ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \counter_reg[7]  ( .D(N57), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M flag_reg ( .D(n21), .CK(i_ref_clk), .RN(i_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[6]  ( .D(N56), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N55), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N54), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(N53), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N52), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N51), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N50), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  NAND3X2M U3 ( .A(n15), .B(n14), .C(N0), .Y(n16) );
  NOR2BX2M U4 ( .AN(N42), .B(n16), .Y(N51) );
  NOR2BX2M U5 ( .AN(N43), .B(n16), .Y(N52) );
  NOR2BX2M U6 ( .AN(N44), .B(n16), .Y(N53) );
  NOR2BX2M U7 ( .AN(N45), .B(n16), .Y(N54) );
  NOR2BX2M U8 ( .AN(N46), .B(n16), .Y(N55) );
  NOR2BX2M U9 ( .AN(N47), .B(n16), .Y(N56) );
  INVX2M U10 ( .A(low_pulse[0]), .Y(N12) );
  MX2X2M U11 ( .A(i_ref_clk), .B(div_clk), .S0(N0), .Y(o_div_clk) );
  NAND3BX2M U12 ( .AN(i_div_ratio[0]), .B(N11), .C(N0), .Y(n14) );
  XNOR2X2M U13 ( .A(flag), .B(n15), .Y(n21) );
  NAND3X2M U14 ( .A(N0), .B(n17), .C(i_div_ratio[0]), .Y(n15) );
  AO2B2X2M U15 ( .B0(N11), .B1(flag), .A0(N21), .A1N(flag), .Y(n17) );
  NOR2BX2M U16 ( .AN(N48), .B(n16), .Y(N57) );
  NOR2BX2M U17 ( .AN(N41), .B(n16), .Y(N50) );
  INVX2M U18 ( .A(counter[0]), .Y(n39) );
  CLKXOR2X2M U19 ( .A(n13), .B(div_clk), .Y(n20) );
  NAND2X2M U20 ( .A(n14), .B(n15), .Y(n13) );
  AOI21BX2M U21 ( .A0(n18), .A1(n19), .B0N(i_clk_en), .Y(N0) );
  NOR3X2M U22 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n18) );
  NOR4X1M U23 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n19) );
  ADDFX2M U24 ( .A(i_div_ratio[1]), .B(n7), .CI(\sub_24/carry[1] ), .CO(
        \sub_24/carry[2] ), .S(low_pulse[1]) );
  INVX2M U25 ( .A(i_div_ratio[2]), .Y(n7) );
  ADDFX2M U26 ( .A(i_div_ratio[2]), .B(n8), .CI(\sub_24/carry[2] ), .CO(
        \sub_24/carry[3] ), .S(low_pulse[2]) );
  INVX2M U27 ( .A(i_div_ratio[3]), .Y(n8) );
  ADDFX2M U28 ( .A(i_div_ratio[3]), .B(n9), .CI(\sub_24/carry[3] ), .CO(
        \sub_24/carry[4] ), .S(low_pulse[3]) );
  INVX2M U29 ( .A(i_div_ratio[4]), .Y(n9) );
  ADDFX2M U30 ( .A(i_div_ratio[4]), .B(n10), .CI(\sub_24/carry[4] ), .CO(
        \sub_24/carry[5] ), .S(low_pulse[4]) );
  INVX2M U31 ( .A(i_div_ratio[5]), .Y(n10) );
  ADDFX2M U32 ( .A(i_div_ratio[5]), .B(n11), .CI(\sub_24/carry[5] ), .CO(
        \sub_24/carry[6] ), .S(low_pulse[5]) );
  INVX2M U33 ( .A(i_div_ratio[6]), .Y(n11) );
  ADDFX2M U34 ( .A(i_div_ratio[6]), .B(n12), .CI(\sub_24/carry[6] ), .CO(
        \sub_24/carry[7] ), .S(low_pulse[6]) );
  INVX2M U35 ( .A(i_div_ratio[7]), .Y(n12) );
  AOI21BX2M U36 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  INVX2M U37 ( .A(i_div_ratio[1]), .Y(N3) );
  XNOR2X1M U38 ( .A(i_div_ratio[7]), .B(\sub_24/carry[7] ), .Y(low_pulse[7])
         );
  OR2X1M U39 ( .A(N3), .B(i_div_ratio[0]), .Y(\sub_24/carry[1] ) );
  XNOR2X1M U40 ( .A(i_div_ratio[0]), .B(N3), .Y(low_pulse[0]) );
  NAND2BX1M U41 ( .AN(i_div_ratio[2]), .B(N3), .Y(n2) );
  OR2X1M U42 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U43 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N5) );
  OR2X1M U44 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U45 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N6) );
  OR2X1M U46 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U47 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N7) );
  XNOR2X1M U48 ( .A(i_div_ratio[6]), .B(n5), .Y(N8) );
  NOR3X1M U49 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N10) );
  OAI21X1M U50 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U51 ( .AN(N10), .B(n6), .Y(N9) );
  NAND2BX1M U52 ( .AN(low_pulse[1]), .B(N12), .Y(n22) );
  OAI2BB1X1M U53 ( .A0N(low_pulse[0]), .A1N(low_pulse[1]), .B0(n22), .Y(N13)
         );
  OR2X1M U54 ( .A(n22), .B(low_pulse[2]), .Y(n23) );
  OAI2BB1X1M U55 ( .A0N(n22), .A1N(low_pulse[2]), .B0(n23), .Y(N14) );
  OR2X1M U56 ( .A(n23), .B(low_pulse[3]), .Y(n24) );
  OAI2BB1X1M U57 ( .A0N(n23), .A1N(low_pulse[3]), .B0(n24), .Y(N15) );
  OR2X1M U58 ( .A(n24), .B(low_pulse[4]), .Y(n25) );
  OAI2BB1X1M U59 ( .A0N(n24), .A1N(low_pulse[4]), .B0(n25), .Y(N16) );
  OR2X1M U60 ( .A(n25), .B(low_pulse[5]), .Y(n26) );
  OAI2BB1X1M U61 ( .A0N(n25), .A1N(low_pulse[5]), .B0(n26), .Y(N17) );
  OR2X1M U62 ( .A(n26), .B(low_pulse[6]), .Y(n27) );
  OAI2BB1X1M U63 ( .A0N(n26), .A1N(low_pulse[6]), .B0(n27), .Y(N18) );
  NOR2X1M U64 ( .A(n27), .B(low_pulse[7]), .Y(N20) );
  AO21XLM U65 ( .A0(n27), .A1(low_pulse[7]), .B0(N20), .Y(N19) );
  XNOR2X1M U66 ( .A(N5), .B(counter[2]), .Y(n38) );
  NOR2X1M U67 ( .A(n39), .B(N3), .Y(n28) );
  OAI22X1M U68 ( .A0(counter[1]), .A1(n28), .B0(n28), .B1(n1), .Y(n37) );
  CLKNAND2X2M U69 ( .A(N3), .B(n39), .Y(n29) );
  AOI22X1M U70 ( .A0(n29), .A1(n1), .B0(n29), .B1(counter[1]), .Y(n30) );
  NOR3X1M U71 ( .A(n30), .B(N10), .C(counter[7]), .Y(n36) );
  CLKXOR2X2M U72 ( .A(N6), .B(counter[3]), .Y(n34) );
  CLKXOR2X2M U73 ( .A(N7), .B(counter[4]), .Y(n33) );
  CLKXOR2X2M U74 ( .A(N8), .B(counter[5]), .Y(n32) );
  CLKXOR2X2M U75 ( .A(N9), .B(counter[6]), .Y(n31) );
  NOR4X1M U76 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  AND4X1M U77 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N11) );
  XNOR2X1M U78 ( .A(N18), .B(counter[6]), .Y(n43) );
  XNOR2X1M U79 ( .A(N17), .B(counter[5]), .Y(n42) );
  XNOR2X1M U80 ( .A(N16), .B(counter[4]), .Y(n41) );
  XNOR2X1M U81 ( .A(N15), .B(counter[3]), .Y(n40) );
  NAND4X1M U82 ( .A(n43), .B(n42), .C(n41), .D(n40), .Y(n51) );
  NOR2BX1M U83 ( .AN(N12), .B(counter[0]), .Y(n44) );
  OAI2B2X1M U84 ( .A1N(counter[1]), .A0(n44), .B0(N13), .B1(n44), .Y(n47) );
  NOR2BX1M U85 ( .AN(counter[0]), .B(N12), .Y(n45) );
  OAI2B2X1M U86 ( .A1N(N13), .A0(n45), .B0(counter[1]), .B1(n45), .Y(n46) );
  NAND3BX1M U87 ( .AN(N20), .B(n47), .C(n46), .Y(n50) );
  CLKXOR2X2M U88 ( .A(N19), .B(counter[7]), .Y(n49) );
  CLKXOR2X2M U89 ( .A(N14), .B(counter[2]), .Y(n48) );
  NOR4X1M U90 ( .A(n51), .B(n50), .C(n49), .D(n48), .Y(N21) );
endmodule


module Clock_Divider_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Clock_Divider_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N3, N5, N6, N7, N8, N9, N10, N11, flag, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, div_clk, N41, N42, N43, N44, N45, N46, N47,
         N48, N50, N51, N52, N53, N54, N55, N56, N57, \sub_24/carry[7] ,
         \sub_24/carry[6] , \sub_24/carry[5] , \sub_24/carry[4] ,
         \sub_24/carry[3] , \sub_24/carry[2] , \sub_24/carry[1] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60;
  wire   [7:0] low_pulse;
  wire   [7:0] counter;

  Clock_Divider_1_DW01_inc_0 add_43 ( .A(counter), .SUM({N48, N47, N46, N45, 
        N44, N43, N42, N41}) );
  DFFRQX2M div_clk_reg ( .D(n53), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \counter_reg[7]  ( .D(N57), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M flag_reg ( .D(n52), .CK(i_ref_clk), .RN(i_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[6]  ( .D(N56), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N55), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N54), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(N53), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N52), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N51), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N50), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  INVX2M U3 ( .A(low_pulse[0]), .Y(N12) );
  NAND3X2M U4 ( .A(n58), .B(n59), .C(N0), .Y(n57) );
  NAND3BX2M U5 ( .AN(i_div_ratio[0]), .B(N11), .C(N0), .Y(n59) );
  NOR2BX2M U6 ( .AN(N42), .B(n57), .Y(N51) );
  NOR2BX2M U7 ( .AN(N43), .B(n57), .Y(N52) );
  NOR2BX2M U8 ( .AN(N44), .B(n57), .Y(N53) );
  NOR2BX2M U9 ( .AN(N45), .B(n57), .Y(N54) );
  NOR2BX2M U10 ( .AN(N46), .B(n57), .Y(N55) );
  NOR2BX2M U11 ( .AN(N47), .B(n57), .Y(N56) );
  INVX2M U12 ( .A(i_div_ratio[1]), .Y(N3) );
  ADDFX2M U13 ( .A(i_div_ratio[1]), .B(n8), .CI(\sub_24/carry[1] ), .CO(
        \sub_24/carry[2] ), .S(low_pulse[1]) );
  INVX2M U14 ( .A(i_div_ratio[2]), .Y(n8) );
  ADDFX2M U15 ( .A(i_div_ratio[2]), .B(n7), .CI(\sub_24/carry[2] ), .CO(
        \sub_24/carry[3] ), .S(low_pulse[2]) );
  INVX2M U16 ( .A(i_div_ratio[3]), .Y(n7) );
  AOI21BX2M U17 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  MX2X2M U18 ( .A(i_ref_clk), .B(div_clk), .S0(N0), .Y(o_div_clk) );
  XNOR2X2M U19 ( .A(flag), .B(n58), .Y(n52) );
  NAND3X2M U20 ( .A(N0), .B(n56), .C(i_div_ratio[0]), .Y(n58) );
  AO2B2X2M U21 ( .B0(N11), .B1(flag), .A0(N21), .A1N(flag), .Y(n56) );
  NOR2BX2M U22 ( .AN(N48), .B(n57), .Y(N57) );
  NOR2BX2M U23 ( .AN(N41), .B(n57), .Y(N50) );
  INVX2M U24 ( .A(counter[0]), .Y(n39) );
  CLKXOR2X2M U25 ( .A(n60), .B(div_clk), .Y(n53) );
  NAND2X2M U26 ( .A(n59), .B(n58), .Y(n60) );
  AOI21BX2M U27 ( .A0(n55), .A1(n54), .B0N(i_clk_en), .Y(N0) );
  NOR4X1M U28 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n54) );
  NOR3X2M U29 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n55) );
  ADDFX2M U30 ( .A(i_div_ratio[3]), .B(n12), .CI(\sub_24/carry[3] ), .CO(
        \sub_24/carry[4] ), .S(low_pulse[3]) );
  INVX2M U31 ( .A(i_div_ratio[4]), .Y(n12) );
  ADDFX2M U32 ( .A(i_div_ratio[4]), .B(n11), .CI(\sub_24/carry[4] ), .CO(
        \sub_24/carry[5] ), .S(low_pulse[4]) );
  INVX2M U33 ( .A(i_div_ratio[5]), .Y(n11) );
  ADDFX2M U34 ( .A(i_div_ratio[5]), .B(n10), .CI(\sub_24/carry[5] ), .CO(
        \sub_24/carry[6] ), .S(low_pulse[5]) );
  INVX2M U35 ( .A(i_div_ratio[6]), .Y(n10) );
  ADDFX2M U36 ( .A(i_div_ratio[6]), .B(n9), .CI(\sub_24/carry[6] ), .CO(
        \sub_24/carry[7] ), .S(low_pulse[6]) );
  INVX2M U37 ( .A(i_div_ratio[7]), .Y(n9) );
  XNOR2X1M U38 ( .A(i_div_ratio[7]), .B(\sub_24/carry[7] ), .Y(low_pulse[7])
         );
  OR2X1M U39 ( .A(N3), .B(i_div_ratio[0]), .Y(\sub_24/carry[1] ) );
  XNOR2X1M U40 ( .A(i_div_ratio[0]), .B(N3), .Y(low_pulse[0]) );
  NAND2BX1M U41 ( .AN(i_div_ratio[2]), .B(N3), .Y(n2) );
  OR2X1M U42 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U43 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N5) );
  OR2X1M U44 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U45 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N6) );
  OR2X1M U46 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U47 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N7) );
  XNOR2X1M U48 ( .A(i_div_ratio[6]), .B(n5), .Y(N8) );
  NOR3X1M U49 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N10) );
  OAI21X1M U50 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U51 ( .AN(N10), .B(n6), .Y(N9) );
  NAND2BX1M U52 ( .AN(low_pulse[1]), .B(N12), .Y(n22) );
  OAI2BB1X1M U53 ( .A0N(low_pulse[0]), .A1N(low_pulse[1]), .B0(n22), .Y(N13)
         );
  OR2X1M U54 ( .A(n22), .B(low_pulse[2]), .Y(n23) );
  OAI2BB1X1M U55 ( .A0N(n22), .A1N(low_pulse[2]), .B0(n23), .Y(N14) );
  OR2X1M U56 ( .A(n23), .B(low_pulse[3]), .Y(n24) );
  OAI2BB1X1M U57 ( .A0N(n23), .A1N(low_pulse[3]), .B0(n24), .Y(N15) );
  OR2X1M U58 ( .A(n24), .B(low_pulse[4]), .Y(n25) );
  OAI2BB1X1M U59 ( .A0N(n24), .A1N(low_pulse[4]), .B0(n25), .Y(N16) );
  OR2X1M U60 ( .A(n25), .B(low_pulse[5]), .Y(n26) );
  OAI2BB1X1M U61 ( .A0N(n25), .A1N(low_pulse[5]), .B0(n26), .Y(N17) );
  OR2X1M U62 ( .A(n26), .B(low_pulse[6]), .Y(n27) );
  OAI2BB1X1M U63 ( .A0N(n26), .A1N(low_pulse[6]), .B0(n27), .Y(N18) );
  NOR2X1M U64 ( .A(n27), .B(low_pulse[7]), .Y(N20) );
  AO21XLM U65 ( .A0(n27), .A1(low_pulse[7]), .B0(N20), .Y(N19) );
  XNOR2X1M U66 ( .A(N5), .B(counter[2]), .Y(n38) );
  NOR2X1M U67 ( .A(n39), .B(N3), .Y(n28) );
  OAI22X1M U68 ( .A0(counter[1]), .A1(n28), .B0(n28), .B1(n1), .Y(n37) );
  CLKNAND2X2M U69 ( .A(N3), .B(n39), .Y(n29) );
  AOI22X1M U70 ( .A0(n29), .A1(n1), .B0(n29), .B1(counter[1]), .Y(n30) );
  NOR3X1M U71 ( .A(n30), .B(N10), .C(counter[7]), .Y(n36) );
  CLKXOR2X2M U72 ( .A(N6), .B(counter[3]), .Y(n34) );
  CLKXOR2X2M U73 ( .A(N7), .B(counter[4]), .Y(n33) );
  CLKXOR2X2M U74 ( .A(N8), .B(counter[5]), .Y(n32) );
  CLKXOR2X2M U75 ( .A(N9), .B(counter[6]), .Y(n31) );
  NOR4X1M U76 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  AND4X1M U77 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N11) );
  XNOR2X1M U78 ( .A(N18), .B(counter[6]), .Y(n43) );
  XNOR2X1M U79 ( .A(N17), .B(counter[5]), .Y(n42) );
  XNOR2X1M U80 ( .A(N16), .B(counter[4]), .Y(n41) );
  XNOR2X1M U81 ( .A(N15), .B(counter[3]), .Y(n40) );
  NAND4X1M U82 ( .A(n43), .B(n42), .C(n41), .D(n40), .Y(n51) );
  NOR2BX1M U83 ( .AN(N12), .B(counter[0]), .Y(n44) );
  OAI2B2X1M U84 ( .A1N(counter[1]), .A0(n44), .B0(N13), .B1(n44), .Y(n47) );
  NOR2BX1M U85 ( .AN(counter[0]), .B(N12), .Y(n45) );
  OAI2B2X1M U86 ( .A1N(N13), .A0(n45), .B0(counter[1]), .B1(n45), .Y(n46) );
  NAND3BX1M U87 ( .AN(N20), .B(n47), .C(n46), .Y(n50) );
  CLKXOR2X2M U88 ( .A(N19), .B(counter[7]), .Y(n49) );
  CLKXOR2X2M U89 ( .A(N14), .B(counter[2]), .Y(n48) );
  NOR4X1M U90 ( .A(n51), .B(n50), .C(n49), .D(n48), .Y(N21) );
endmodule


module CLKDIV_MUX_WIDTH8 ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;
  assign OUT[4] = 1'b0;
  assign OUT[5] = 1'b0;
  assign OUT[6] = 1'b0;
  assign OUT[7] = 1'b0;

  NOR3X2M U3 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U4 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NOR4X1M U5 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U6 ( .A(n4), .B(n3), .C(IN[2]), .Y(n5) );
  NAND4BX1M U7 ( .AN(IN[4]), .B(IN[3]), .C(n2), .D(n1), .Y(n6) );
  NAND4BX1M U8 ( .AN(IN[3]), .B(IN[4]), .C(n2), .D(n1), .Y(n7) );
  OAI211X2M U9 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(OUT[0]) );
  NAND2X2M U10 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U11 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n2), .Y(n8) );
  INVX2M U12 ( .A(IN[2]), .Y(n2) );
  INVX2M U13 ( .A(IN[1]), .Y(n3) );
  INVX2M U14 ( .A(IN[0]), .Y(n4) );
  INVX2M U15 ( .A(IN[5]), .Y(n1) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_ff[0] ;

  DFFRQX2M \sync_ff_reg[1]  ( .D(\sync_ff[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_ff_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_ff[0] )
         );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_ff[0] ;

  DFFRQX2M \sync_ff_reg[1]  ( .D(\sync_ff[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_ff_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_ff[0] )
         );
endmodule


module System_Top ( RST, REF_CLK, UART_CLK, UART_RX_IN, UART_TX_OUT, 
        parity_error, framing_error );
  input RST, REF_CLK, UART_CLK, UART_RX_IN;
  output UART_TX_OUT, parity_error, framing_error;
  wire   SYNC_RST_REF, Out_Valid, RdData_Valid, RX_D_VLD, FIFO_Full, ALU_EN,
         CLK_EN, WrEn, RdEn, TX_D_VLD, ALU_CLK, SYNC_RST_UART, TX_CLK, RX_CLK,
         data_sync_en, Busy, FIFO_EMPTY, RD_inc, n2, n3, n4, n5, n6, n7;
  wire   [15:0] ALU_OUT;
  wire   [7:0] RdData;
  wire   [7:0] RX_P_Data;
  wire   [3:0] ALU_FUN;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] TX_P_DATA;
  wire   [7:0] opA;
  wire   [7:0] opB;
  wire   [7:0] UART_CONFIG;
  wire   [7:0] Div_Ratio;
  wire   [7:0] RX_OUT;
  wire   [7:0] FIFO_RD_DATA;
  wire   [7:0] Div_Ratio_RX;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  Sys_Ctrl_DATA_WIDTH8_ADDR4_ALU_OUT_WIDTH16 U_SYS_CTRL ( .CLK(REF_CLK), .RST(
        n5), .ALU_OUT(ALU_OUT), .Out_Valid(Out_Valid), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .RX_P_Data(RX_P_Data), .RX_D_VLD(RX_D_VLD), .FIFO_Full(FIFO_Full), .ALU_FUN(ALU_FUN), .ALU_EN(ALU_EN), .CLK_EN(CLK_EN), 
        .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), 
        .TX_P_DATA(TX_P_DATA), .TX_D_VLD(TX_D_VLD) );
  Reg_file_WIDTH8_ADDR4 U_REG_FILE ( .CLK(REF_CLK), .RST(n5), .WrEn(WrEn), 
        .RdEn(RdEn), .Address({Address[3:1], n4}), .WrData(WrData), .RdData(
        RdData), .RdData_VLD(RdData_Valid), .REG0(opA), .REG1(opB), .REG2(
        UART_CONFIG), .REG3(Div_Ratio) );
  ALU_OPER_WIDTH8 U_ALU ( .A(opA), .B(opB), .EN(ALU_EN), .ALU_FUN(ALU_FUN), 
        .CLK(ALU_CLK), .RST(n5), .ALU_OUT(ALU_OUT), .OUT_VALID(Out_Valid) );
  UART_DATA_WIDTH8 U_UART ( .RST(n2), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), 
        .RX_IN_S(UART_RX_IN), .TX_IN_P(FIFO_RD_DATA), .TX_IN_V(n7), .Prescale(
        UART_CONFIG[7:2]), .parity_enable(UART_CONFIG[0]), .parity_type(
        UART_CONFIG[1]), .TX_OUT_S(UART_TX_OUT), .TX_OUT_V(Busy), .RX_OUT_P(
        RX_OUT), .RX_OUT_V(data_sync_en), .parity_error(parity_error), 
        .framing_error(framing_error) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 U_DATA_SYNC ( .unsync_bus(RX_OUT), 
        .bus_enable(data_sync_en), .CLK(REF_CLK), .RST(n5), .sync_bus(
        RX_P_Data), .enable_pulse(RX_D_VLD) );
  ASYNC_FIFO_DATA_WIDTH8 U_ASYNC_FIFO ( .W_CLK(REF_CLK), .W_RST(n5), .W_inc(
        TX_D_VLD), .W_data(TX_P_DATA), .R_CLK(TX_CLK), .R_RST(n2), .R_inc(
        RD_inc), .R_data(FIFO_RD_DATA), .empty(FIFO_EMPTY), .full(FIFO_Full)
         );
  PULSE_GEN U_PULSE_GEN ( .CLK(TX_CLK), .RST(n2), .lvl_sig(Busy), .pulse_sig(
        RD_inc) );
  CLK_GATE U_CLK_GATE ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK) );
  Clock_Divider_0 U0_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(
        1'b1), .i_div_ratio(Div_Ratio), .o_div_clk(TX_CLK) );
  Clock_Divider_1 U1_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, Div_Ratio_RX[3:0]}), 
        .o_div_clk(RX_CLK) );
  CLKDIV_MUX_WIDTH8 U_CLK_DIVMUX ( .IN(UART_CONFIG[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, Div_Ratio_RX[3:0]})
         );
  RST_SYNC_NUM_STAGES2_0 RST_SYNC_1 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(
        SYNC_RST_REF) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC_2 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(
        SYNC_RST_UART) );
  INVX2M U2 ( .A(FIFO_EMPTY), .Y(n7) );
  BUFX2M U3 ( .A(Address[0]), .Y(n4) );
  INVX4M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(SYNC_RST_UART), .Y(n3) );
  INVX4M U6 ( .A(n6), .Y(n5) );
  INVX2M U7 ( .A(SYNC_RST_REF), .Y(n6) );
endmodule

