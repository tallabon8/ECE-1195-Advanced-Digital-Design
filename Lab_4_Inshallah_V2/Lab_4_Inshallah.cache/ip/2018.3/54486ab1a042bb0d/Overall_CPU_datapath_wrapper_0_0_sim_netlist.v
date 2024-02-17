// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov  7 16:21:23 2023
// Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Overall_CPU_datapath_wrapper_0_0_sim_netlist.v
// Design      : Overall_CPU_datapath_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Overall_CPU_datapath_wrapper_0_0,datapath_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "datapath_wrapper,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Bout,
    CLK_0,
    MemWrite,
    MemoryAddress,
    MemoryDataIn,
    RST_0);
  output [31:0]Bout;
  input CLK_0;
  output MemWrite;
  output [31:0]MemoryAddress;
  input [31:0]MemoryDataIn;
  input RST_0;

  wire [31:0]Bout;
  wire CLK_0;
  wire MemWrite;
  wire [31:0]MemoryAddress;
  wire [31:0]MemoryDataIn;
  wire RST_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper U0
       (.Bout(Bout),
        .CLK_0(CLK_0),
        .MemWrite(MemWrite),
        .MemoryAddress(MemoryAddress),
        .MemoryDataIn(MemoryDataIn),
        .RST_0(RST_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
   (MemWrite,
    Bout,
    MemoryAddress,
    CLK_0,
    RST_0,
    MemoryDataIn);
  output MemWrite;
  output [31:0]Bout;
  output [31:0]MemoryAddress;
  input CLK_0;
  input RST_0;
  input [31:0]MemoryDataIn;

  wire [31:0]ALUOut_8_0_ALUOut;
  wire [31:0]ALU_0_R;
  wire [31:0]ALU_0_R1;
  wire ALU_0_zero;
  wire [31:0]Bout;
  wire CLK_0;
  wire [3:0]Control_Unit_8_0_ALUOp;
  wire Control_Unit_8_0_ALUWrite;
  wire Control_Unit_8_0_ALUsrcA;
  wire [1:0]Control_Unit_8_0_ALUsrcB;
  wire Control_Unit_8_0_AWrite;
  wire Control_Unit_8_0_BWrite;
  wire Control_Unit_8_0_CLOEN;
  wire Control_Unit_8_0_HIEN;
  wire Control_Unit_8_0_IRWrite;
  wire Control_Unit_8_0_IorD;
  wire Control_Unit_8_0_LOIN;
  wire Control_Unit_8_0_MDREN;
  wire [2:0]Control_Unit_8_0_MemtoReg;
  wire Control_Unit_8_0_MultEN;
  wire [1:0]Control_Unit_8_0_PCSource;
  wire Control_Unit_8_0_PCWrite;
  wire Control_Unit_8_0_PCWriteCond;
  wire Control_Unit_8_0_RegDst;
  wire Control_Unit_8_0_RegWrite;
  wire Control_Unit_8_0_SHAMTEN;
  wire Control_Unit_8_0_SL28EN;
  wire Control_Unit_8_0_SL32EN;
  wire Control_Unit_8_0_ZeroEN;
  wire [31:0]HILO_reg_0_Q;
  wire [31:0]HILO_reg_1_Q;
  wire [5:0]Instruction_Register_0_Funct;
  wire [4:0]Instruction_Register_0_Inst10to6;
  wire [15:0]Instruction_Register_0_Instr15to0;
  wire [4:0]Instruction_Register_0_Instr15to11;
  wire [4:0]Instruction_Register_0_Instr20to16;
  wire [25:0]Instruction_Register_0_Instr25to0;
  wire [4:0]Instruction_Register_0_Instr25to21;
  wire [5:0]Instruction_Register_0_Instr31to26;
  wire MemWrite;
  wire [31:0]MemoryAddress;
  wire [31:0]MemoryDataIn;
  wire [31:0]Memory_Data_Register_0_MemRegOut;
  wire Multiplier_32_bit_0_DONE;
  wire [63:0]Multiplier_32_bit_0_R;
  wire [3:0]PC_8_0_PC31to28;
  wire [31:0]PC_8_0_PC_Q;
  wire RST_0;
  wire [4:0]Reg_A_8_0_A4to0;
  wire [31:0]Reg_A_8_0_A_Q;
  wire [27:0]Shift_Left_2_28_8_0_Shift_2_Out;
  wire [31:0]Shift_Left_2_8_0_Shift_2_Out;
  wire [31:0]Sign_Extend_8_0_DataInstructionOut;
  wire Two2one_1bit_mux_0_R;
  wire andGateorGate_0_R;
  wire [31:0]count_leading_ones_0_CLO_out;
  wire [4:0]fivebit_2to1_mux_8_0_R;
  wire [4:0]fivebit_2to1_mux_8_1_R;
  wire [31:0]four2three_mux_8_0_R;
  wire [31:0]four2two_mux_8_0_R;
  wire [31:0]loading_mux_0_R;
  wire [31:0]register_file_8_0_ReadData1;
  wire [31:0]register_file_8_0_ReadData2;
  wire [31:0]two2one_mux_8_2_R;
  wire [31:0]xlslice_0_Dout;
  wire [31:0]xlslice_1_Dout;
  wire NLW_ALU_0_overflow_UNCONNECTED;
  wire NLW_Control_Unit_8_0_SLLControl_UNCONNECTED;
  wire [31:0]NLW_Control_Unit_8_0_MemRead_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALUOut_8_0_0 ALUOut_8_0
       (.ALUOut(ALUOut_8_0_ALUOut),
        .ALUResult(ALU_0_R),
        .CLK(CLK_0),
        .EN(Control_Unit_8_0_ALUWrite),
        .RST(RST_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_0_0 ALU_0
       (.A(two2one_mux_8_2_R),
        .ALUOp(Control_Unit_8_0_ALUOp),
        .B(four2two_mux_8_0_R),
        .R(ALU_0_R1),
        .SHAMT(fivebit_2to1_mux_8_1_R),
        .overflow(NLW_ALU_0_overflow_UNCONNECTED),
        .zero(ALU_0_zero));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Control_Unit_8_0_0 Control_Unit_8_0
       (.ALUOp(Control_Unit_8_0_ALUOp),
        .ALUWrite(Control_Unit_8_0_ALUWrite),
        .ALUsrcA(Control_Unit_8_0_ALUsrcA),
        .ALUsrcB(Control_Unit_8_0_ALUsrcB),
        .AWrite(Control_Unit_8_0_AWrite),
        .BWrite(Control_Unit_8_0_BWrite),
        .CLK(CLK_0),
        .CLOEN(Control_Unit_8_0_CLOEN),
        .DONE_FLAG(Multiplier_32_bit_0_DONE),
        .Funct(Instruction_Register_0_Funct),
        .HIEN(Control_Unit_8_0_HIEN),
        .IRWrite(Control_Unit_8_0_IRWrite),
        .IorD(Control_Unit_8_0_IorD),
        .LOEN(Control_Unit_8_0_LOIN),
        .MDREN(Control_Unit_8_0_MDREN),
        .MemRead(NLW_Control_Unit_8_0_MemRead_UNCONNECTED[31:0]),
        .MemWrite(MemWrite),
        .MemtoReg(Control_Unit_8_0_MemtoReg),
        .MultEN(Control_Unit_8_0_MultEN),
        .OpCode(Instruction_Register_0_Instr31to26),
        .PCSource(Control_Unit_8_0_PCSource),
        .PCWrite(Control_Unit_8_0_PCWrite),
        .PCWriteCond(Control_Unit_8_0_PCWriteCond),
        .RST(RST_0),
        .RegDst(Control_Unit_8_0_RegDst),
        .RegWrite(Control_Unit_8_0_RegWrite),
        .SHAMTEN(Control_Unit_8_0_SHAMTEN),
        .SL28EN(Control_Unit_8_0_SL28EN),
        .SL32EN(Control_Unit_8_0_SL32EN),
        .SLLControl(NLW_Control_Unit_8_0_SLLControl_UNCONNECTED),
        .ZeroEN(Control_Unit_8_0_ZeroEN));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_HILO_reg_0_0 HILO_reg_0
       (.CLK(CLK_0),
        .D(xlslice_0_Dout),
        .EN(Control_Unit_8_0_HIEN),
        .Q(HILO_reg_0_Q),
        .RST(RST_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_HILO_reg_1_0 HILO_reg_1
       (.CLK(CLK_0),
        .D(xlslice_1_Dout),
        .EN(Control_Unit_8_0_LOIN),
        .Q(HILO_reg_1_Q),
        .RST(RST_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Instruction_Register_0_0 Instruction_Register_0
       (.CLK(CLK_0),
        .Funct(Instruction_Register_0_Funct),
        .IRWrite(Control_Unit_8_0_IRWrite),
        .Inst10to6(Instruction_Register_0_Inst10to6),
        .Instr15to0(Instruction_Register_0_Instr15to0),
        .Instr15to11(Instruction_Register_0_Instr15to11),
        .Instr20to16(Instruction_Register_0_Instr20to16),
        .Instr25to0(Instruction_Register_0_Instr25to0),
        .Instr25to21(Instruction_Register_0_Instr25to21),
        .Instr31to26(Instruction_Register_0_Instr31to26),
        .MemData(MemoryDataIn),
        .RST(RST_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Memory_Data_Register_0_0 Memory_Data_Register_0
       (.CLK(CLK_0),
        .EN(Control_Unit_8_0_MDREN),
        .MemData(MemoryDataIn),
        .MemRegOut(Memory_Data_Register_0_MemRegOut),
        .RST(RST_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Multiplier_32_bit_0_0 Multiplier_32_bit_0
       (.A(Reg_A_8_0_A_Q),
        .B(Bout),
        .CLK(CLK_0),
        .DONE(Multiplier_32_bit_0_DONE),
        .R(Multiplier_32_bit_0_R),
        .RST(Control_Unit_8_0_MultEN));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_PC_8_0_0 PC_8_0
       (.CLK(CLK_0),
        .EN(andGateorGate_0_R),
        .PC31to28(PC_8_0_PC31to28),
        .PC_D(four2three_mux_8_0_R),
        .PC_Q(PC_8_0_PC_Q),
        .RST(RST_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Reg_A_8_0_0 Reg_A_8_0
       (.A4to0(Reg_A_8_0_A4to0),
        .A_Q(Reg_A_8_0_A_Q),
        .CLK(CLK_0),
        .EN(Control_Unit_8_0_AWrite),
        .RST(RST_0),
        .ReadData1(register_file_8_0_ReadData1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Reg_B_8_0_0 Reg_B_8_0
       (.B_Q(Bout),
        .CLK(CLK_0),
        .EN(Control_Unit_8_0_BWrite),
        .RST(RST_0),
        .ReadData2(register_file_8_0_ReadData2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Shift_Left_2_28_8_0_0 Shift_Left_2_28_8_0
       (.EN(Control_Unit_8_0_SL28EN),
        .Shift_2_Out(Shift_Left_2_28_8_0_Shift_2_Out),
        .SignExtOut(Instruction_Register_0_Instr25to0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Shift_Left_2_8_0_0 Shift_Left_2_8_0
       (.EN(Control_Unit_8_0_SL32EN),
        .Shift_2_Out(Shift_Left_2_8_0_Shift_2_Out),
        .SignExtOut(Sign_Extend_8_0_DataInstructionOut));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Sign_Extend_8_0_0 Sign_Extend_8_0
       (.DataInstructionIn(Instruction_Register_0_Instr15to0),
        .DataInstructionOut(Sign_Extend_8_0_DataInstructionOut));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Two2one_1bit_mux_0_0 Two2one_1bit_mux_0
       (.A(ALU_0_zero),
        .B(ALU_0_zero),
        .R(Two2one_1bit_mux_0_R),
        .Selector(Control_Unit_8_0_ZeroEN));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_andGateorGate_0_0 andGateorGate_0
       (.A(Two2one_1bit_mux_0_R),
        .B(Control_Unit_8_0_PCWriteCond),
        .C(Control_Unit_8_0_PCWrite),
        .R(andGateorGate_0_R));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_count_leading_ones_0_0 count_leading_ones_0
       (.CLO_in(Reg_A_8_0_A_Q),
        .CLO_out(count_leading_ones_0_CLO_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_fivebit_2to1_mux_8_0_0 fivebit_2to1_mux_8_0
       (.A(Instruction_Register_0_Instr20to16),
        .B(Instruction_Register_0_Instr15to11),
        .R(fivebit_2to1_mux_8_0_R),
        .Selector(Control_Unit_8_0_RegDst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_fivebit_2to1_mux_8_1_0 fivebit_2to1_mux_8_1
       (.A(Instruction_Register_0_Inst10to6),
        .B(Reg_A_8_0_A4to0),
        .R(fivebit_2to1_mux_8_1_R),
        .Selector(Control_Unit_8_0_SHAMTEN));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_four2three_mux_8_0_0 four2three_mux_8_0
       (.A(ALU_0_R),
        .B(ALUOut_8_0_ALUOut),
        .C(Shift_Left_2_28_8_0_Shift_2_Out),
        .D(Reg_A_8_0_A_Q),
        .PC31to28(PC_8_0_PC31to28),
        .R(four2three_mux_8_0_R),
        .Selector(Control_Unit_8_0_PCSource));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_four2two_mux_8_0_0 four2two_mux_8_0
       (.A(Bout),
        .C(Sign_Extend_8_0_DataInstructionOut),
        .D(Shift_Left_2_8_0_Shift_2_Out),
        .R(four2two_mux_8_0_R),
        .Selector(Control_Unit_8_0_ALUsrcB));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_loading_mux_0_0 loading_mux_0
       (.A(ALUOut_8_0_ALUOut),
        .B(Memory_Data_Register_0_MemRegOut),
        .Hi(HILO_reg_0_Q),
        .Lo(HILO_reg_1_Q),
        .R(loading_mux_0_R),
        .Selector(Control_Unit_8_0_MemtoReg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_register_file_8_0_0 register_file_8_0
       (.CLK(CLK_0),
        .RST(RST_0),
        .ReadData1(register_file_8_0_ReadData1),
        .ReadData2(register_file_8_0_ReadData2),
        .ReadRegister1(Instruction_Register_0_Instr25to21),
        .ReadRegister2(Instruction_Register_0_Instr20to16),
        .RegWrite(Control_Unit_8_0_RegWrite),
        .WriteData(loading_mux_0_R),
        .WriteRegister(fivebit_2to1_mux_8_0_R));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_two2one_mux_8_0_0 two2one_mux_8_0
       (.A(PC_8_0_PC_Q),
        .B(ALUOut_8_0_ALUOut),
        .R(MemoryAddress),
        .Selector(Control_Unit_8_0_IorD));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_two2one_mux_8_2_0 two2one_mux_8_2
       (.A(PC_8_0_PC_Q),
        .B(Reg_A_8_0_A_Q),
        .R(two2one_mux_8_2_R),
        .Selector(Control_Unit_8_0_ALUsrcA));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_two2one_mux_8_3_0 two2one_mux_8_3
       (.A(ALU_0_R1),
        .B(count_leading_ones_0_CLO_out),
        .R(ALU_0_R),
        .Selector(Control_Unit_8_0_CLOEN));
  (* CHECK_LICENSE_TYPE = "datapath_xlslice_0_0,xlslice_v1_0_1_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_xlslice_0_0 xlslice_0
       (.Din(Multiplier_32_bit_0_R),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "datapath_xlslice_1_0,xlslice_v1_0_1_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_xlslice_1_0 xlslice_1
       (.Din(Multiplier_32_bit_0_R),
        .Dout(xlslice_1_Dout));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALUOut_8_0_0
   (CLK,
    EN,
    RST,
    ALUResult,
    ALUOut);
  input CLK;
  input EN;
  input RST;
  input [31:0]ALUResult;
  output [31:0]ALUOut;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_0_0
   (A,
    B,
    SHAMT,
    ALUOp,
    R,
    zero,
    overflow);
  input [31:0]A;
  input [31:0]B;
  input [4:0]SHAMT;
  input [3:0]ALUOp;
  output [31:0]R;
  output zero;
  output overflow;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Control_Unit_8_0_0
   (CLK,
    RST,
    DONE_FLAG,
    OpCode,
    Funct,
    PCWriteCond,
    PCWrite,
    IorD,
    MemWrite,
    IRWrite,
    ALUsrcA,
    RegWrite,
    SLLControl,
    ALUWrite,
    SL32EN,
    SL28EN,
    AWrite,
    BWrite,
    MemtoReg,
    PCSource,
    ALUsrcB,
    ALUOp,
    MemRead,
    RegDst,
    MDREN,
    SHAMTEN,
    ZeroEN,
    CLOEN,
    HIEN,
    LOEN,
    MultEN);
  input CLK;
  input RST;
  input DONE_FLAG;
  input [5:0]OpCode;
  input [5:0]Funct;
  output PCWriteCond;
  output PCWrite;
  output IorD;
  output MemWrite;
  output IRWrite;
  output ALUsrcA;
  output RegWrite;
  output SLLControl;
  output ALUWrite;
  output SL32EN;
  output SL28EN;
  output AWrite;
  output BWrite;
  output [2:0]MemtoReg;
  output [1:0]PCSource;
  output [1:0]ALUsrcB;
  output [3:0]ALUOp;
  output [31:0]MemRead;
  output RegDst;
  output MDREN;
  output SHAMTEN;
  output ZeroEN;
  output CLOEN;
  output HIEN;
  output LOEN;
  output MultEN;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_HILO_reg_0_0
   (D,
    CLK,
    EN,
    RST,
    Q);
  input [31:0]D;
  input CLK;
  input EN;
  input RST;
  output [31:0]Q;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_HILO_reg_1_0
   (D,
    CLK,
    EN,
    RST,
    Q);
  input [31:0]D;
  input CLK;
  input EN;
  input RST;
  output [31:0]Q;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Instruction_Register_0_0
   (CLK,
    RST,
    IRWrite,
    MemData,
    Instr31to26,
    Instr25to21,
    Instr20to16,
    Instr15to0,
    Instr15to11,
    Instr25to0,
    Funct,
    Inst10to6);
  input CLK;
  input RST;
  input IRWrite;
  input [31:0]MemData;
  output [5:0]Instr31to26;
  output [4:0]Instr25to21;
  output [4:0]Instr20to16;
  output [15:0]Instr15to0;
  output [4:0]Instr15to11;
  output [25:0]Instr25to0;
  output [5:0]Funct;
  output [4:0]Inst10to6;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Memory_Data_Register_0_0
   (CLK,
    RST,
    EN,
    MemData,
    MemRegOut);
  input CLK;
  input RST;
  input EN;
  input [31:0]MemData;
  output [31:0]MemRegOut;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Multiplier_32_bit_0_0
   (A,
    B,
    CLK,
    RST,
    R,
    DONE);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input RST;
  output [63:0]R;
  output DONE;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_PC_8_0_0
   (EN,
    RST,
    CLK,
    PC_D,
    PC31to28,
    PC_Q);
  input EN;
  input RST;
  input CLK;
  input [31:0]PC_D;
  output [3:0]PC31to28;
  output [31:0]PC_Q;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Reg_A_8_0_0
   (ReadData1,
    EN,
    RST,
    CLK,
    A_Q,
    A4to0);
  input [31:0]ReadData1;
  input EN;
  input RST;
  input CLK;
  output [31:0]A_Q;
  output [4:0]A4to0;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Reg_B_8_0_0
   (ReadData2,
    EN,
    RST,
    CLK,
    B_Q);
  input [31:0]ReadData2;
  input EN;
  input RST;
  input CLK;
  output [31:0]B_Q;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Shift_Left_2_28_8_0_0
   (EN,
    SignExtOut,
    Shift_2_Out);
  input EN;
  input [25:0]SignExtOut;
  output [27:0]Shift_2_Out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Shift_Left_2_8_0_0
   (EN,
    SignExtOut,
    Shift_2_Out);
  input EN;
  input [31:0]SignExtOut;
  output [31:0]Shift_2_Out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Sign_Extend_8_0_0
   (DataInstructionIn,
    DataInstructionOut);
  input [15:0]DataInstructionIn;
  output [31:0]DataInstructionOut;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_Two2one_1bit_mux_0_0
   (A,
    B,
    Selector,
    R);
  input A;
  input B;
  input Selector;
  output R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_andGateorGate_0_0
   (A,
    B,
    C,
    R);
  input A;
  input B;
  input C;
  output R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_count_leading_ones_0_0
   (CLO_in,
    CLO_out);
  input [31:0]CLO_in;
  output [31:0]CLO_out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_fivebit_2to1_mux_8_0_0
   (A,
    B,
    Selector,
    R);
  input [4:0]A;
  input [4:0]B;
  input Selector;
  output [4:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_fivebit_2to1_mux_8_1_0
   (A,
    B,
    Selector,
    R);
  input [4:0]A;
  input [4:0]B;
  input Selector;
  output [4:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_four2three_mux_8_0_0
   (A,
    B,
    D,
    C,
    PC31to28,
    Selector,
    R);
  input [31:0]A;
  input [31:0]B;
  input [31:0]D;
  input [27:0]C;
  input [3:0]PC31to28;
  input [1:0]Selector;
  output [31:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_four2two_mux_8_0_0
   (A,
    C,
    D,
    Selector,
    R);
  input [31:0]A;
  input [31:0]C;
  input [31:0]D;
  input [1:0]Selector;
  output [31:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_loading_mux_0_0
   (A,
    B,
    Hi,
    Lo,
    Selector,
    R);
  input [31:0]A;
  input [31:0]B;
  input [31:0]Hi;
  input [31:0]Lo;
  input [2:0]Selector;
  output [31:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_register_file_8_0_0
   (CLK,
    RST,
    RegWrite,
    ReadRegister1,
    ReadRegister2,
    WriteRegister,
    WriteData,
    ReadData1,
    ReadData2);
  input CLK;
  input RST;
  input RegWrite;
  input [4:0]ReadRegister1;
  input [4:0]ReadRegister2;
  input [4:0]WriteRegister;
  input [31:0]WriteData;
  output [31:0]ReadData1;
  output [31:0]ReadData2;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_two2one_mux_8_0_0
   (A,
    B,
    Selector,
    R);
  input [31:0]A;
  input [31:0]B;
  input Selector;
  output [31:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_two2one_mux_8_2_0
   (A,
    B,
    Selector,
    R);
  input [31:0]A;
  input [31:0]B;
  input Selector;
  output [31:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_two2one_mux_8_3_0
   (A,
    B,
    Selector,
    R);
  input [31:0]A;
  input [31:0]B;
  input Selector;
  output [31:0]R;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper
   (Bout,
    CLK_0,
    MemWrite,
    MemoryAddress,
    MemoryDataIn,
    RST_0);
  output [31:0]Bout;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET RST_0, CLK_DOMAIN datapath_CLK_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input CLK_0;
  output MemWrite;
  output [31:0]MemoryAddress;
  input [31:0]MemoryDataIn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input RST_0;

  wire [31:0]Bout;
  wire CLK_0;
  wire MemWrite;
  wire [31:0]MemoryAddress;
  wire [31:0]MemoryDataIn;
  wire RST_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath datapath_i
       (.Bout(Bout),
        .CLK_0(CLK_0),
        .MemWrite(MemWrite),
        .MemoryAddress(MemoryAddress),
        .MemoryDataIn(MemoryDataIn),
        .RST_0(RST_0));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_xlslice_0_0,xlslice_v1_0_1_xlslice,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_xlslice_0_0
   (Din,
    Dout);
  input [63:0]Din;
  output [31:0]Dout;

  wire [63:0]Din;

  assign Dout[31:0] = Din[63:32];
endmodule

(* CHECK_LICENSE_TYPE = "datapath_xlslice_1_0,xlslice_v1_0_1_xlslice,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_xlslice_1_0
   (Din,
    Dout);
  input [63:0]Din;
  output [31:0]Dout;

  wire [63:0]Din;

  assign Dout[31:0] = Din[31:0];
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
