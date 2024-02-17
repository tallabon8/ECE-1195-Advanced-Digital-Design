-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 12 12:08:52 2023
-- Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/travisallabon/Lab_3/Lab_3.srcs/sources_1/bd/design_1/ip/design_1_Multiplier_32_bit_0_0/design_1_Multiplier_32_bit_0_0_stub.vhdl
-- Design      : design_1_Multiplier_32_bit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Multiplier_32_bit_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DONE : out STD_LOGIC
  );

end design_1_Multiplier_32_bit_0_0;

architecture stub of design_1_Multiplier_32_bit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],CLK,RST,R[63:0],DONE";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Multiplier_32_bit,Vivado 2018.3";
begin
end;
