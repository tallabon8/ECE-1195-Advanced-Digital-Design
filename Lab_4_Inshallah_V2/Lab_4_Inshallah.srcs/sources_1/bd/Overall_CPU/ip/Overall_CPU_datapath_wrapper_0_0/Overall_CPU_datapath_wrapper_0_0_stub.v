// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov  7 16:21:23 2023
// Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/travisallabon/Lab_4_Inshallah/Lab_4_Inshallah.srcs/sources_1/bd/Overall_CPU/ip/Overall_CPU_datapath_wrapper_0_0/Overall_CPU_datapath_wrapper_0_0_stub.v
// Design      : Overall_CPU_datapath_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "datapath_wrapper,Vivado 2018.3" *)
module Overall_CPU_datapath_wrapper_0_0(Bout, CLK_0, MemWrite, MemoryAddress, 
  MemoryDataIn, RST_0)
/* synthesis syn_black_box black_box_pad_pin="Bout[31:0],CLK_0,MemWrite,MemoryAddress[31:0],MemoryDataIn[31:0],RST_0" */;
  output [31:0]Bout;
  input CLK_0;
  output MemWrite;
  output [31:0]MemoryAddress;
  input [31:0]MemoryDataIn;
  input RST_0;
endmodule
