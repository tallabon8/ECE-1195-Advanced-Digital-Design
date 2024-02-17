// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Sep 27 18:43:06 2023
// Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/travisallabon/Lab_2/Lab_2.srcs/sources_1/bd/Lab_2_Block_Design/ip/Lab_2_Block_Design_ALU_0_0/Lab_2_Block_Design_ALU_0_0_stub.v
// Design      : Lab_2_Block_Design_ALU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ALU,Vivado 2018.3" *)
module Lab_2_Block_Design_ALU_0_0(A, B, SHAMT, ALUOp, R, zero, overflow)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],SHAMT[4:0],ALUOp[3:0],R[31:0],zero,overflow" */;
  input [31:0]A;
  input [31:0]B;
  input [4:0]SHAMT;
  input [3:0]ALUOp;
  output [31:0]R;
  output zero;
  output overflow;
endmodule
