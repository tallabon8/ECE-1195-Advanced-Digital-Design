// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 12 12:08:52 2023
// Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/travisallabon/Lab_3/Lab_3.srcs/sources_1/bd/design_1/ip/design_1_Multiplier_32_bit_0_0/design_1_Multiplier_32_bit_0_0_stub.v
// Design      : design_1_Multiplier_32_bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Multiplier_32_bit,Vivado 2018.3" *)
module design_1_Multiplier_32_bit_0_0(A, B, CLK, RST, R, DONE)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],CLK,RST,R[63:0],DONE" */;
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input RST;
  output [63:0]R;
  output DONE;
endmodule
