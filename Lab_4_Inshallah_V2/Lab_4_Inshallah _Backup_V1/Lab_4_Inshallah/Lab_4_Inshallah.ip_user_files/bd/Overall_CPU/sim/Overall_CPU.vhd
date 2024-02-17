--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Nov  6 23:02:45 2023
--Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
--Command     : generate_target Overall_CPU.bd
--Design      : Overall_CPU
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Overall_CPU is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Overall_CPU : entity is "Overall_CPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Overall_CPU,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Overall_CPU : entity is "Overall_CPU.hwdef";
end Overall_CPU;

architecture STRUCTURE of Overall_CPU is
  component Overall_CPU_datapath_wrapper_0_0 is
  port (
    Bout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_0 : in STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_0 : in STD_LOGIC
  );
  end component Overall_CPU_datapath_wrapper_0_0;
  component Overall_CPU_CPU_memory_0_0 is
  port (
    Clk : in STD_LOGIC;
    MemWrite : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Overall_CPU_CPU_memory_0_0;
  signal CLK_1 : STD_LOGIC;
  signal CPU_memory_0_dataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RST_1 : STD_LOGIC;
  signal U_0_Bout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal U_0_MemoryAddress : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal datapath_wrapper_0_MemWrite : STD_LOGIC;
begin
  CLK_1 <= CLK;
  RST_1 <= RST;
U_0: component Overall_CPU_datapath_wrapper_0_0
     port map (
      Bout(31 downto 0) => U_0_Bout(31 downto 0),
      CLK_0 => CLK_1,
      MemWrite => datapath_wrapper_0_MemWrite,
      MemoryAddress(31 downto 0) => U_0_MemoryAddress(31 downto 0),
      MemoryDataIn(31 downto 0) => CPU_memory_0_dataOut(31 downto 0),
      RST_0 => RST_1
    );
U_1: component Overall_CPU_CPU_memory_0_0
     port map (
      Clk => CLK_1,
      MemWrite => datapath_wrapper_0_MemWrite,
      addr(31 downto 0) => U_0_MemoryAddress(31 downto 0),
      dataIn(31 downto 0) => U_0_Bout(31 downto 0),
      dataOut(31 downto 0) => CPU_memory_0_dataOut(31 downto 0)
    );
end STRUCTURE;
