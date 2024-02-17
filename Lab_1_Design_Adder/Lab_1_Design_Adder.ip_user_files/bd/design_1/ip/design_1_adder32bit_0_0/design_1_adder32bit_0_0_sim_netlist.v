// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep 18 18:21:27 2023
// Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/travisallabon/Lab_1_Design_Adder/Lab_1_Design_Adder.srcs/sources_1/bd/design_1/ip/design_1_adder32bit_0_0/design_1_adder32bit_0_0_sim_netlist.v
// Design      : design_1_adder32bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_adder32bit_0_0,adder32bit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "adder32bit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_adder32bit_0_0
   (A,
    B,
    K,
    S,
    Cout);
  input [31:0]A;
  input [31:0]B;
  input K;
  output [31:0]S;
  output Cout;

  wire [31:0]A;
  wire [31:0]B;
  wire Cout;
  wire K;
  wire [31:0]S;
  wire \U0/int_carry_10 ;
  wire \U0/int_carry_12 ;
  wire \U0/int_carry_14 ;
  wire \U0/int_carry_16 ;
  wire \U0/int_carry_18 ;
  wire \U0/int_carry_2 ;
  wire \U0/int_carry_20 ;
  wire \U0/int_carry_22 ;
  wire \U0/int_carry_24 ;
  wire \U0/int_carry_26 ;
  wire \U0/int_carry_28 ;
  wire \U0/int_carry_30 ;
  wire \U0/int_carry_4 ;
  wire \U0/int_carry_6 ;
  wire \U0/int_carry_8 ;

  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0
       (.I0(K),
        .I1(B[31]),
        .I2(B[30]),
        .I3(\U0/int_carry_30 ),
        .I4(A[30]),
        .I5(A[31]),
        .O(Cout));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_1
       (.I0(K),
        .I1(B[29]),
        .I2(B[28]),
        .I3(\U0/int_carry_28 ),
        .I4(A[28]),
        .I5(A[29]),
        .O(\U0/int_carry_30 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_10
       (.I0(K),
        .I1(B[11]),
        .I2(B[10]),
        .I3(\U0/int_carry_10 ),
        .I4(A[10]),
        .I5(A[11]),
        .O(\U0/int_carry_12 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_11
       (.I0(K),
        .I1(B[9]),
        .I2(B[8]),
        .I3(\U0/int_carry_8 ),
        .I4(A[8]),
        .I5(A[9]),
        .O(\U0/int_carry_10 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_12
       (.I0(K),
        .I1(B[7]),
        .I2(B[6]),
        .I3(\U0/int_carry_6 ),
        .I4(A[6]),
        .I5(A[7]),
        .O(\U0/int_carry_8 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_13
       (.I0(K),
        .I1(B[5]),
        .I2(B[4]),
        .I3(\U0/int_carry_4 ),
        .I4(A[4]),
        .I5(A[5]),
        .O(\U0/int_carry_6 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_14
       (.I0(K),
        .I1(B[3]),
        .I2(B[2]),
        .I3(\U0/int_carry_2 ),
        .I4(A[2]),
        .I5(A[3]),
        .O(\U0/int_carry_4 ));
  LUT5 #(
    .INIT(32'hFEE69880)) 
    Cout_INST_0_i_15
       (.I0(K),
        .I1(B[1]),
        .I2(B[0]),
        .I3(A[0]),
        .I4(A[1]),
        .O(\U0/int_carry_2 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_2
       (.I0(K),
        .I1(B[27]),
        .I2(B[26]),
        .I3(\U0/int_carry_26 ),
        .I4(A[26]),
        .I5(A[27]),
        .O(\U0/int_carry_28 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_3
       (.I0(K),
        .I1(B[25]),
        .I2(B[24]),
        .I3(\U0/int_carry_24 ),
        .I4(A[24]),
        .I5(A[25]),
        .O(\U0/int_carry_26 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_4
       (.I0(K),
        .I1(B[23]),
        .I2(B[22]),
        .I3(\U0/int_carry_22 ),
        .I4(A[22]),
        .I5(A[23]),
        .O(\U0/int_carry_24 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_5
       (.I0(K),
        .I1(B[21]),
        .I2(B[20]),
        .I3(\U0/int_carry_20 ),
        .I4(A[20]),
        .I5(A[21]),
        .O(\U0/int_carry_22 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_6
       (.I0(K),
        .I1(B[19]),
        .I2(B[18]),
        .I3(\U0/int_carry_18 ),
        .I4(A[18]),
        .I5(A[19]),
        .O(\U0/int_carry_20 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_7
       (.I0(K),
        .I1(B[17]),
        .I2(B[16]),
        .I3(\U0/int_carry_16 ),
        .I4(A[16]),
        .I5(A[17]),
        .O(\U0/int_carry_18 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_8
       (.I0(K),
        .I1(B[15]),
        .I2(B[14]),
        .I3(\U0/int_carry_14 ),
        .I4(A[14]),
        .I5(A[15]),
        .O(\U0/int_carry_16 ));
  LUT6 #(
    .INIT(64'hFF7EE76699188100)) 
    Cout_INST_0_i_9
       (.I0(K),
        .I1(B[13]),
        .I2(B[12]),
        .I3(\U0/int_carry_12 ),
        .I4(A[12]),
        .I5(A[13]),
        .O(\U0/int_carry_14 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(K),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[10]_INST_0 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(K),
        .O(S[10]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[11]_INST_0 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(K),
        .O(S[11]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(K),
        .O(S[12]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[13]_INST_0 
       (.I0(A[13]),
        .I1(B[13]),
        .I2(K),
        .O(S[13]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[14]_INST_0 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(K),
        .O(S[14]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[15]_INST_0 
       (.I0(A[15]),
        .I1(B[15]),
        .I2(K),
        .O(S[15]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0 
       (.I0(A[16]),
        .I1(B[16]),
        .I2(K),
        .O(S[16]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[17]_INST_0 
       (.I0(A[17]),
        .I1(B[17]),
        .I2(K),
        .O(S[17]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[18]_INST_0 
       (.I0(A[18]),
        .I1(B[18]),
        .I2(K),
        .O(S[18]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[19]_INST_0 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(K),
        .O(S[19]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[1]_INST_0 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(K),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0 
       (.I0(A[20]),
        .I1(B[20]),
        .I2(K),
        .O(S[20]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[21]_INST_0 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(K),
        .O(S[21]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[22]_INST_0 
       (.I0(A[22]),
        .I1(B[22]),
        .I2(K),
        .O(S[22]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[23]_INST_0 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(K),
        .O(S[23]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0 
       (.I0(A[24]),
        .I1(B[24]),
        .I2(K),
        .O(S[24]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[25]_INST_0 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(K),
        .O(S[25]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[26]_INST_0 
       (.I0(A[26]),
        .I1(B[26]),
        .I2(K),
        .O(S[26]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[27]_INST_0 
       (.I0(A[27]),
        .I1(B[27]),
        .I2(K),
        .O(S[27]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0 
       (.I0(A[28]),
        .I1(B[28]),
        .I2(K),
        .O(S[28]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[29]_INST_0 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(K),
        .O(S[29]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[2]_INST_0 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(K),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[30]_INST_0 
       (.I0(A[30]),
        .I1(B[30]),
        .I2(K),
        .O(S[30]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[31]_INST_0 
       (.I0(A[31]),
        .I1(B[31]),
        .I2(K),
        .O(S[31]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[3]_INST_0 
       (.I0(A[3]),
        .I1(B[3]),
        .I2(K),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(K),
        .O(S[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[5]_INST_0 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(K),
        .O(S[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[6]_INST_0 
       (.I0(A[6]),
        .I1(B[6]),
        .I2(K),
        .O(S[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[7]_INST_0 
       (.I0(A[7]),
        .I1(B[7]),
        .I2(K),
        .O(S[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(K),
        .O(S[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \S[9]_INST_0 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(K),
        .O(S[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
