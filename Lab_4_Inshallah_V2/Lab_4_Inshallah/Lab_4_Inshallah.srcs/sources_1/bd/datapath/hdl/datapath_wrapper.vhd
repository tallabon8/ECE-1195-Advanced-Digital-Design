--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Nov  6 14:35:28 2023
--Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
--Command     : generate_target datapath_wrapper.bd
--Design      : datapath_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity datapath_wrapper is
  port (
    CLK_0 : in STD_LOGIC;
    MemData_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_0 : in STD_LOGIC
  );
end datapath_wrapper;

architecture STRUCTURE of datapath_wrapper is
  component datapath is
  port (
    MemData_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_0 : in STD_LOGIC;
    RST_0 : in STD_LOGIC
  );
  end component datapath;
begin
datapath_i: component datapath
     port map (
      CLK_0 => CLK_0,
      MemData_0(31 downto 0) => MemData_0(31 downto 0),
      RST_0 => RST_0
    );
end STRUCTURE;
