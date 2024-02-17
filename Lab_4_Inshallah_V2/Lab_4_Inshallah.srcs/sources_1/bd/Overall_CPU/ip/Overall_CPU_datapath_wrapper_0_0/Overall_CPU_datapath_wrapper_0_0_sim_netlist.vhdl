-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Nov  7 16:21:23 2023
-- Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/travisallabon/Lab_4_Inshallah/Lab_4_Inshallah.srcs/sources_1/bd/Overall_CPU/ip/Overall_CPU_datapath_wrapper_0_0/Overall_CPU_datapath_wrapper_0_0_sim_netlist.vhdl
-- Design      : Overall_CPU_datapath_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0 : entity is "datapath_xlslice_0_0,xlslice_v1_0_1_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0 : entity is "datapath_xlslice_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
end Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0;

architecture STRUCTURE of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
  Dout(31 downto 0) <= \^din\(63 downto 32);
  \^din\(63 downto 32) <= Din(63 downto 32);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0 : entity is "datapath_xlslice_1_0,xlslice_v1_0_1_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0 : entity is "datapath_xlslice_1_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
end Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0;

architecture STRUCTURE of Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
  Dout(31 downto 0) <= \^din\(31 downto 0);
  \^din\(31 downto 0) <= Din(31 downto 0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Overall_CPU_datapath_wrapper_0_0_datapath is
  port (
    MemWrite : out STD_LOGIC;
    Bout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_0 : in STD_LOGIC;
    RST_0 : in STD_LOGIC;
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Overall_CPU_datapath_wrapper_0_0_datapath : entity is "datapath";
end Overall_CPU_datapath_wrapper_0_0_datapath;

architecture STRUCTURE of Overall_CPU_datapath_wrapper_0_0_datapath is
  component Overall_CPU_datapath_wrapper_0_0_datapath_ALUOut_8_0_0 is
  port (
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    ALUResult : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_ALUOut_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_ALU_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SHAMT : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ALUOp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    R : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_ALU_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Control_Unit_8_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    DONE_FLAG : in STD_LOGIC;
    OpCode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Funct : in STD_LOGIC_VECTOR ( 5 downto 0 );
    PCWriteCond : out STD_LOGIC;
    PCWrite : out STD_LOGIC;
    IorD : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    IRWrite : out STD_LOGIC;
    ALUsrcA : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    SLLControl : out STD_LOGIC;
    ALUWrite : out STD_LOGIC;
    SL32EN : out STD_LOGIC;
    SL28EN : out STD_LOGIC;
    AWrite : out STD_LOGIC;
    BWrite : out STD_LOGIC;
    MemtoReg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PCSource : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUsrcB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    MemRead : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RegDst : out STD_LOGIC;
    MDREN : out STD_LOGIC;
    SHAMTEN : out STD_LOGIC;
    ZeroEN : out STD_LOGIC;
    CLOEN : out STD_LOGIC;
    HIEN : out STD_LOGIC;
    LOEN : out STD_LOGIC;
    MultEN : out STD_LOGIC
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Control_Unit_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_HILO_reg_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_HILO_reg_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_HILO_reg_1_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_HILO_reg_1_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Instruction_Register_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    IRWrite : in STD_LOGIC;
    MemData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr31to26 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Instr25to21 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Instr20to16 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Instr15to0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Instr15to11 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Instr25to0 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    Funct : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Inst10to6 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Instruction_Register_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Memory_Data_Register_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    MemData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemRegOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Memory_Data_Register_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Multiplier_32_bit_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DONE : out STD_LOGIC
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Multiplier_32_bit_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_PC_8_0_0 is
  port (
    EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    PC_D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC31to28 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PC_Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_PC_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Reg_A_8_0_0 is
  port (
    ReadData1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    A_Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A4to0 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Reg_A_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Reg_B_8_0_0 is
  port (
    ReadData2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    B_Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Reg_B_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Shift_Left_2_28_8_0_0 is
  port (
    EN : in STD_LOGIC;
    SignExtOut : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Shift_2_Out : out STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Shift_Left_2_28_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Shift_Left_2_8_0_0 is
  port (
    EN : in STD_LOGIC;
    SignExtOut : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Shift_2_Out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Shift_Left_2_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Sign_Extend_8_0_0 is
  port (
    DataInstructionIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DataInstructionOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Sign_Extend_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_Two2one_1bit_mux_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Selector : in STD_LOGIC;
    R : out STD_LOGIC
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_Two2one_1bit_mux_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_andGateorGate_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : in STD_LOGIC;
    R : out STD_LOGIC
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_andGateorGate_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_count_leading_ones_0_0 is
  port (
    CLO_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLO_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_count_leading_ones_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_fivebit_2to1_mux_8_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 4 downto 0 );
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Selector : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_fivebit_2to1_mux_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_fivebit_2to1_mux_8_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 4 downto 0 );
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Selector : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_fivebit_2to1_mux_8_1_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_four2three_mux_8_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C : in STD_LOGIC_VECTOR ( 27 downto 0 );
    PC31to28 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Selector : in STD_LOGIC_VECTOR ( 1 downto 0 );
    R : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_four2three_mux_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_four2two_mux_8_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC_VECTOR ( 1 downto 0 );
    R : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_four2two_mux_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_loading_mux_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Hi : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Lo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    R : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_loading_mux_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_register_file_8_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    ReadRegister1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ReadRegister2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    WriteRegister : in STD_LOGIC_VECTOR ( 4 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_register_file_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_0_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_2_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_2_0;
  component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_3_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_3_0;
  signal ALUOut_8_0_ALUOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_R1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_zero : STD_LOGIC;
  signal \^bout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Control_Unit_8_0_ALUOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Control_Unit_8_0_ALUWrite : STD_LOGIC;
  signal Control_Unit_8_0_ALUsrcA : STD_LOGIC;
  signal Control_Unit_8_0_ALUsrcB : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Control_Unit_8_0_AWrite : STD_LOGIC;
  signal Control_Unit_8_0_BWrite : STD_LOGIC;
  signal Control_Unit_8_0_CLOEN : STD_LOGIC;
  signal Control_Unit_8_0_HIEN : STD_LOGIC;
  signal Control_Unit_8_0_IRWrite : STD_LOGIC;
  signal Control_Unit_8_0_IorD : STD_LOGIC;
  signal Control_Unit_8_0_LOIN : STD_LOGIC;
  signal Control_Unit_8_0_MDREN : STD_LOGIC;
  signal Control_Unit_8_0_MemtoReg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Control_Unit_8_0_MultEN : STD_LOGIC;
  signal Control_Unit_8_0_PCSource : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Control_Unit_8_0_PCWrite : STD_LOGIC;
  signal Control_Unit_8_0_PCWriteCond : STD_LOGIC;
  signal Control_Unit_8_0_RegDst : STD_LOGIC;
  signal Control_Unit_8_0_RegWrite : STD_LOGIC;
  signal Control_Unit_8_0_SHAMTEN : STD_LOGIC;
  signal Control_Unit_8_0_SL28EN : STD_LOGIC;
  signal Control_Unit_8_0_SL32EN : STD_LOGIC;
  signal Control_Unit_8_0_ZeroEN : STD_LOGIC;
  signal HILO_reg_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal HILO_reg_1_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Instruction_Register_0_Funct : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Instruction_Register_0_Inst10to6 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Instruction_Register_0_Instr15to0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Instruction_Register_0_Instr15to11 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Instruction_Register_0_Instr20to16 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Instruction_Register_0_Instr25to0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal Instruction_Register_0_Instr25to21 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Instruction_Register_0_Instr31to26 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Memory_Data_Register_0_MemRegOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Multiplier_32_bit_0_DONE : STD_LOGIC;
  signal Multiplier_32_bit_0_R : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal PC_8_0_PC31to28 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PC_8_0_PC_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Reg_A_8_0_A4to0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Reg_A_8_0_A_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Shift_Left_2_28_8_0_Shift_2_Out : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal Shift_Left_2_8_0_Shift_2_Out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Sign_Extend_8_0_DataInstructionOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Two2one_1bit_mux_0_R : STD_LOGIC;
  signal andGateorGate_0_R : STD_LOGIC;
  signal count_leading_ones_0_CLO_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fivebit_2to1_mux_8_0_R : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal fivebit_2to1_mux_8_1_R : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal four2three_mux_8_0_R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal four2two_mux_8_0_R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal loading_mux_0_R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register_file_8_0_ReadData1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register_file_8_0_ReadData2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal two2one_mux_8_2_R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ALU_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_Control_Unit_8_0_SLLControl_UNCONNECTED : STD_LOGIC;
  signal NLW_Control_Unit_8_0_MemRead_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xlslice_0 : label is "datapath_xlslice_0_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xlslice_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xlslice_0 : label is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of xlslice_1 : label is "datapath_xlslice_1_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_1 : label is "yes";
  attribute X_CORE_INFO of xlslice_1 : label is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
begin
  Bout(31 downto 0) <= \^bout\(31 downto 0);
ALUOut_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_ALUOut_8_0_0
     port map (
      ALUOut(31 downto 0) => ALUOut_8_0_ALUOut(31 downto 0),
      ALUResult(31 downto 0) => ALU_0_R(31 downto 0),
      CLK => CLK_0,
      EN => Control_Unit_8_0_ALUWrite,
      RST => RST_0
    );
ALU_0: component Overall_CPU_datapath_wrapper_0_0_datapath_ALU_0_0
     port map (
      A(31 downto 0) => two2one_mux_8_2_R(31 downto 0),
      ALUOp(3 downto 0) => Control_Unit_8_0_ALUOp(3 downto 0),
      B(31 downto 0) => four2two_mux_8_0_R(31 downto 0),
      R(31 downto 0) => ALU_0_R1(31 downto 0),
      SHAMT(4 downto 0) => fivebit_2to1_mux_8_1_R(4 downto 0),
      overflow => NLW_ALU_0_overflow_UNCONNECTED,
      zero => ALU_0_zero
    );
Control_Unit_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Control_Unit_8_0_0
     port map (
      ALUOp(3 downto 0) => Control_Unit_8_0_ALUOp(3 downto 0),
      ALUWrite => Control_Unit_8_0_ALUWrite,
      ALUsrcA => Control_Unit_8_0_ALUsrcA,
      ALUsrcB(1 downto 0) => Control_Unit_8_0_ALUsrcB(1 downto 0),
      AWrite => Control_Unit_8_0_AWrite,
      BWrite => Control_Unit_8_0_BWrite,
      CLK => CLK_0,
      CLOEN => Control_Unit_8_0_CLOEN,
      DONE_FLAG => Multiplier_32_bit_0_DONE,
      Funct(5 downto 0) => Instruction_Register_0_Funct(5 downto 0),
      HIEN => Control_Unit_8_0_HIEN,
      IRWrite => Control_Unit_8_0_IRWrite,
      IorD => Control_Unit_8_0_IorD,
      LOEN => Control_Unit_8_0_LOIN,
      MDREN => Control_Unit_8_0_MDREN,
      MemRead(31 downto 0) => NLW_Control_Unit_8_0_MemRead_UNCONNECTED(31 downto 0),
      MemWrite => MemWrite,
      MemtoReg(2 downto 0) => Control_Unit_8_0_MemtoReg(2 downto 0),
      MultEN => Control_Unit_8_0_MultEN,
      OpCode(5 downto 0) => Instruction_Register_0_Instr31to26(5 downto 0),
      PCSource(1 downto 0) => Control_Unit_8_0_PCSource(1 downto 0),
      PCWrite => Control_Unit_8_0_PCWrite,
      PCWriteCond => Control_Unit_8_0_PCWriteCond,
      RST => RST_0,
      RegDst => Control_Unit_8_0_RegDst,
      RegWrite => Control_Unit_8_0_RegWrite,
      SHAMTEN => Control_Unit_8_0_SHAMTEN,
      SL28EN => Control_Unit_8_0_SL28EN,
      SL32EN => Control_Unit_8_0_SL32EN,
      SLLControl => NLW_Control_Unit_8_0_SLLControl_UNCONNECTED,
      ZeroEN => Control_Unit_8_0_ZeroEN
    );
HILO_reg_0: component Overall_CPU_datapath_wrapper_0_0_datapath_HILO_reg_0_0
     port map (
      CLK => CLK_0,
      D(31 downto 0) => xlslice_0_Dout(31 downto 0),
      EN => Control_Unit_8_0_HIEN,
      Q(31 downto 0) => HILO_reg_0_Q(31 downto 0),
      RST => RST_0
    );
HILO_reg_1: component Overall_CPU_datapath_wrapper_0_0_datapath_HILO_reg_1_0
     port map (
      CLK => CLK_0,
      D(31 downto 0) => xlslice_1_Dout(31 downto 0),
      EN => Control_Unit_8_0_LOIN,
      Q(31 downto 0) => HILO_reg_1_Q(31 downto 0),
      RST => RST_0
    );
Instruction_Register_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Instruction_Register_0_0
     port map (
      CLK => CLK_0,
      Funct(5 downto 0) => Instruction_Register_0_Funct(5 downto 0),
      IRWrite => Control_Unit_8_0_IRWrite,
      Inst10to6(4 downto 0) => Instruction_Register_0_Inst10to6(4 downto 0),
      Instr15to0(15 downto 0) => Instruction_Register_0_Instr15to0(15 downto 0),
      Instr15to11(4 downto 0) => Instruction_Register_0_Instr15to11(4 downto 0),
      Instr20to16(4 downto 0) => Instruction_Register_0_Instr20to16(4 downto 0),
      Instr25to0(25 downto 0) => Instruction_Register_0_Instr25to0(25 downto 0),
      Instr25to21(4 downto 0) => Instruction_Register_0_Instr25to21(4 downto 0),
      Instr31to26(5 downto 0) => Instruction_Register_0_Instr31to26(5 downto 0),
      MemData(31 downto 0) => MemoryDataIn(31 downto 0),
      RST => RST_0
    );
Memory_Data_Register_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Memory_Data_Register_0_0
     port map (
      CLK => CLK_0,
      EN => Control_Unit_8_0_MDREN,
      MemData(31 downto 0) => MemoryDataIn(31 downto 0),
      MemRegOut(31 downto 0) => Memory_Data_Register_0_MemRegOut(31 downto 0),
      RST => RST_0
    );
Multiplier_32_bit_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Multiplier_32_bit_0_0
     port map (
      A(31 downto 0) => Reg_A_8_0_A_Q(31 downto 0),
      B(31 downto 0) => \^bout\(31 downto 0),
      CLK => CLK_0,
      DONE => Multiplier_32_bit_0_DONE,
      R(63 downto 0) => Multiplier_32_bit_0_R(63 downto 0),
      RST => Control_Unit_8_0_MultEN
    );
PC_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_PC_8_0_0
     port map (
      CLK => CLK_0,
      EN => andGateorGate_0_R,
      PC31to28(3 downto 0) => PC_8_0_PC31to28(3 downto 0),
      PC_D(31 downto 0) => four2three_mux_8_0_R(31 downto 0),
      PC_Q(31 downto 0) => PC_8_0_PC_Q(31 downto 0),
      RST => RST_0
    );
Reg_A_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Reg_A_8_0_0
     port map (
      A4to0(4 downto 0) => Reg_A_8_0_A4to0(4 downto 0),
      A_Q(31 downto 0) => Reg_A_8_0_A_Q(31 downto 0),
      CLK => CLK_0,
      EN => Control_Unit_8_0_AWrite,
      RST => RST_0,
      ReadData1(31 downto 0) => register_file_8_0_ReadData1(31 downto 0)
    );
Reg_B_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Reg_B_8_0_0
     port map (
      B_Q(31 downto 0) => \^bout\(31 downto 0),
      CLK => CLK_0,
      EN => Control_Unit_8_0_BWrite,
      RST => RST_0,
      ReadData2(31 downto 0) => register_file_8_0_ReadData2(31 downto 0)
    );
Shift_Left_2_28_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Shift_Left_2_28_8_0_0
     port map (
      EN => Control_Unit_8_0_SL28EN,
      Shift_2_Out(27 downto 0) => Shift_Left_2_28_8_0_Shift_2_Out(27 downto 0),
      SignExtOut(25 downto 0) => Instruction_Register_0_Instr25to0(25 downto 0)
    );
Shift_Left_2_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Shift_Left_2_8_0_0
     port map (
      EN => Control_Unit_8_0_SL32EN,
      Shift_2_Out(31 downto 0) => Shift_Left_2_8_0_Shift_2_Out(31 downto 0),
      SignExtOut(31 downto 0) => Sign_Extend_8_0_DataInstructionOut(31 downto 0)
    );
Sign_Extend_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Sign_Extend_8_0_0
     port map (
      DataInstructionIn(15 downto 0) => Instruction_Register_0_Instr15to0(15 downto 0),
      DataInstructionOut(31 downto 0) => Sign_Extend_8_0_DataInstructionOut(31 downto 0)
    );
Two2one_1bit_mux_0: component Overall_CPU_datapath_wrapper_0_0_datapath_Two2one_1bit_mux_0_0
     port map (
      A => ALU_0_zero,
      B => ALU_0_zero,
      R => Two2one_1bit_mux_0_R,
      Selector => Control_Unit_8_0_ZeroEN
    );
andGateorGate_0: component Overall_CPU_datapath_wrapper_0_0_datapath_andGateorGate_0_0
     port map (
      A => Two2one_1bit_mux_0_R,
      B => Control_Unit_8_0_PCWriteCond,
      C => Control_Unit_8_0_PCWrite,
      R => andGateorGate_0_R
    );
count_leading_ones_0: component Overall_CPU_datapath_wrapper_0_0_datapath_count_leading_ones_0_0
     port map (
      CLO_in(31 downto 0) => Reg_A_8_0_A_Q(31 downto 0),
      CLO_out(31 downto 0) => count_leading_ones_0_CLO_out(31 downto 0)
    );
fivebit_2to1_mux_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_fivebit_2to1_mux_8_0_0
     port map (
      A(4 downto 0) => Instruction_Register_0_Instr20to16(4 downto 0),
      B(4 downto 0) => Instruction_Register_0_Instr15to11(4 downto 0),
      R(4 downto 0) => fivebit_2to1_mux_8_0_R(4 downto 0),
      Selector => Control_Unit_8_0_RegDst
    );
fivebit_2to1_mux_8_1: component Overall_CPU_datapath_wrapper_0_0_datapath_fivebit_2to1_mux_8_1_0
     port map (
      A(4 downto 0) => Instruction_Register_0_Inst10to6(4 downto 0),
      B(4 downto 0) => Reg_A_8_0_A4to0(4 downto 0),
      R(4 downto 0) => fivebit_2to1_mux_8_1_R(4 downto 0),
      Selector => Control_Unit_8_0_SHAMTEN
    );
four2three_mux_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_four2three_mux_8_0_0
     port map (
      A(31 downto 0) => ALU_0_R(31 downto 0),
      B(31 downto 0) => ALUOut_8_0_ALUOut(31 downto 0),
      C(27 downto 0) => Shift_Left_2_28_8_0_Shift_2_Out(27 downto 0),
      D(31 downto 0) => Reg_A_8_0_A_Q(31 downto 0),
      PC31to28(3 downto 0) => PC_8_0_PC31to28(3 downto 0),
      R(31 downto 0) => four2three_mux_8_0_R(31 downto 0),
      Selector(1 downto 0) => Control_Unit_8_0_PCSource(1 downto 0)
    );
four2two_mux_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_four2two_mux_8_0_0
     port map (
      A(31 downto 0) => \^bout\(31 downto 0),
      C(31 downto 0) => Sign_Extend_8_0_DataInstructionOut(31 downto 0),
      D(31 downto 0) => Shift_Left_2_8_0_Shift_2_Out(31 downto 0),
      R(31 downto 0) => four2two_mux_8_0_R(31 downto 0),
      Selector(1 downto 0) => Control_Unit_8_0_ALUsrcB(1 downto 0)
    );
loading_mux_0: component Overall_CPU_datapath_wrapper_0_0_datapath_loading_mux_0_0
     port map (
      A(31 downto 0) => ALUOut_8_0_ALUOut(31 downto 0),
      B(31 downto 0) => Memory_Data_Register_0_MemRegOut(31 downto 0),
      Hi(31 downto 0) => HILO_reg_0_Q(31 downto 0),
      Lo(31 downto 0) => HILO_reg_1_Q(31 downto 0),
      R(31 downto 0) => loading_mux_0_R(31 downto 0),
      Selector(2 downto 0) => Control_Unit_8_0_MemtoReg(2 downto 0)
    );
register_file_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_register_file_8_0_0
     port map (
      CLK => CLK_0,
      RST => RST_0,
      ReadData1(31 downto 0) => register_file_8_0_ReadData1(31 downto 0),
      ReadData2(31 downto 0) => register_file_8_0_ReadData2(31 downto 0),
      ReadRegister1(4 downto 0) => Instruction_Register_0_Instr25to21(4 downto 0),
      ReadRegister2(4 downto 0) => Instruction_Register_0_Instr20to16(4 downto 0),
      RegWrite => Control_Unit_8_0_RegWrite,
      WriteData(31 downto 0) => loading_mux_0_R(31 downto 0),
      WriteRegister(4 downto 0) => fivebit_2to1_mux_8_0_R(4 downto 0)
    );
two2one_mux_8_0: component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_0_0
     port map (
      A(31 downto 0) => PC_8_0_PC_Q(31 downto 0),
      B(31 downto 0) => ALUOut_8_0_ALUOut(31 downto 0),
      R(31 downto 0) => MemoryAddress(31 downto 0),
      Selector => Control_Unit_8_0_IorD
    );
two2one_mux_8_2: component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_2_0
     port map (
      A(31 downto 0) => PC_8_0_PC_Q(31 downto 0),
      B(31 downto 0) => Reg_A_8_0_A_Q(31 downto 0),
      R(31 downto 0) => two2one_mux_8_2_R(31 downto 0),
      Selector => Control_Unit_8_0_ALUsrcA
    );
two2one_mux_8_3: component Overall_CPU_datapath_wrapper_0_0_datapath_two2one_mux_8_3_0
     port map (
      A(31 downto 0) => ALU_0_R1(31 downto 0),
      B(31 downto 0) => count_leading_ones_0_CLO_out(31 downto 0),
      R(31 downto 0) => ALU_0_R(31 downto 0),
      Selector => Control_Unit_8_0_CLOEN
    );
xlslice_0: entity work.Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_0_0
     port map (
      Din(63 downto 0) => Multiplier_32_bit_0_R(63 downto 0),
      Dout(31 downto 0) => xlslice_0_Dout(31 downto 0)
    );
xlslice_1: entity work.Overall_CPU_datapath_wrapper_0_0_datapath_xlslice_1_0
     port map (
      Din(63 downto 0) => Multiplier_32_bit_0_R(63 downto 0),
      Dout(31 downto 0) => xlslice_1_Dout(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Overall_CPU_datapath_wrapper_0_0_datapath_wrapper is
  port (
    Bout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_0 : in STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Overall_CPU_datapath_wrapper_0_0_datapath_wrapper : entity is "datapath_wrapper";
end Overall_CPU_datapath_wrapper_0_0_datapath_wrapper;

architecture STRUCTURE of Overall_CPU_datapath_wrapper_0_0_datapath_wrapper is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET RST_0, CLK_DOMAIN datapath_CLK_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of RST_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute x_interface_parameter of RST_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
datapath_i: entity work.Overall_CPU_datapath_wrapper_0_0_datapath
     port map (
      Bout(31 downto 0) => Bout(31 downto 0),
      CLK_0 => CLK_0,
      MemWrite => MemWrite,
      MemoryAddress(31 downto 0) => MemoryAddress(31 downto 0),
      MemoryDataIn(31 downto 0) => MemoryDataIn(31 downto 0),
      RST_0 => RST_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Overall_CPU_datapath_wrapper_0_0 is
  port (
    Bout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_0 : in STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_0 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Overall_CPU_datapath_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Overall_CPU_datapath_wrapper_0_0 : entity is "Overall_CPU_datapath_wrapper_0_0,datapath_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Overall_CPU_datapath_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Overall_CPU_datapath_wrapper_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Overall_CPU_datapath_wrapper_0_0 : entity is "datapath_wrapper,Vivado 2018.3";
end Overall_CPU_datapath_wrapper_0_0;

architecture STRUCTURE of Overall_CPU_datapath_wrapper_0_0 is
begin
U0: entity work.Overall_CPU_datapath_wrapper_0_0_datapath_wrapper
     port map (
      Bout(31 downto 0) => Bout(31 downto 0),
      CLK_0 => CLK_0,
      MemWrite => MemWrite,
      MemoryAddress(31 downto 0) => MemoryAddress(31 downto 0),
      MemoryDataIn(31 downto 0) => MemoryDataIn(31 downto 0),
      RST_0 => RST_0
    );
end STRUCTURE;
