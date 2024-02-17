-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Nov  7 16:21:23 2023
-- Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/travisallabon/Lab_4_Inshallah/Lab_4_Inshallah.srcs/sources_1/bd/Overall_CPU/ip/Overall_CPU_datapath_wrapper_0_0/Overall_CPU_datapath_wrapper_0_0_stub.vhdl
-- Design      : Overall_CPU_datapath_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Overall_CPU_datapath_wrapper_0_0 is
  Port ( 
    Bout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_0 : in STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_0 : in STD_LOGIC
  );

end Overall_CPU_datapath_wrapper_0_0;

architecture stub of Overall_CPU_datapath_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Bout[31:0],CLK_0,MemWrite,MemoryAddress[31:0],MemoryDataIn[31:0],RST_0";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "datapath_wrapper,Vivado 2018.3";
begin
end;
