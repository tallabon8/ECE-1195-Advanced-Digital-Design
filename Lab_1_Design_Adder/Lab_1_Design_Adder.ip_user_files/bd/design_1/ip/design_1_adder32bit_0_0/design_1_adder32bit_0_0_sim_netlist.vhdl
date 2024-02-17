-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Sep 18 18:21:27 2023
-- Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/travisallabon/Lab_1_Design_Adder/Lab_1_Design_Adder.srcs/sources_1/bd/design_1/ip/design_1_adder32bit_0_0/design_1_adder32bit_0_0_sim_netlist.vhdl
-- Design      : design_1_adder32bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adder32bit_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    K : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adder32bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adder32bit_0_0 : entity is "design_1_adder32bit_0_0,adder32bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_adder32bit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_adder32bit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_adder32bit_0_0 : entity is "adder32bit,Vivado 2018.3";
end design_1_adder32bit_0_0;

architecture STRUCTURE of design_1_adder32bit_0_0 is
  signal \U0/int_carry_10\ : STD_LOGIC;
  signal \U0/int_carry_12\ : STD_LOGIC;
  signal \U0/int_carry_14\ : STD_LOGIC;
  signal \U0/int_carry_16\ : STD_LOGIC;
  signal \U0/int_carry_18\ : STD_LOGIC;
  signal \U0/int_carry_2\ : STD_LOGIC;
  signal \U0/int_carry_20\ : STD_LOGIC;
  signal \U0/int_carry_22\ : STD_LOGIC;
  signal \U0/int_carry_24\ : STD_LOGIC;
  signal \U0/int_carry_26\ : STD_LOGIC;
  signal \U0/int_carry_28\ : STD_LOGIC;
  signal \U0/int_carry_30\ : STD_LOGIC;
  signal \U0/int_carry_4\ : STD_LOGIC;
  signal \U0/int_carry_6\ : STD_LOGIC;
  signal \U0/int_carry_8\ : STD_LOGIC;
begin
Cout_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(31),
      I2 => B(30),
      I3 => \U0/int_carry_30\,
      I4 => A(30),
      I5 => A(31),
      O => Cout
    );
Cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(29),
      I2 => B(28),
      I3 => \U0/int_carry_28\,
      I4 => A(28),
      I5 => A(29),
      O => \U0/int_carry_30\
    );
Cout_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(11),
      I2 => B(10),
      I3 => \U0/int_carry_10\,
      I4 => A(10),
      I5 => A(11),
      O => \U0/int_carry_12\
    );
Cout_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(9),
      I2 => B(8),
      I3 => \U0/int_carry_8\,
      I4 => A(8),
      I5 => A(9),
      O => \U0/int_carry_10\
    );
Cout_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(7),
      I2 => B(6),
      I3 => \U0/int_carry_6\,
      I4 => A(6),
      I5 => A(7),
      O => \U0/int_carry_8\
    );
Cout_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(5),
      I2 => B(4),
      I3 => \U0/int_carry_4\,
      I4 => A(4),
      I5 => A(5),
      O => \U0/int_carry_6\
    );
Cout_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(3),
      I2 => B(2),
      I3 => \U0/int_carry_2\,
      I4 => A(2),
      I5 => A(3),
      O => \U0/int_carry_4\
    );
Cout_INST_0_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEE69880"
    )
        port map (
      I0 => K,
      I1 => B(1),
      I2 => B(0),
      I3 => A(0),
      I4 => A(1),
      O => \U0/int_carry_2\
    );
Cout_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(27),
      I2 => B(26),
      I3 => \U0/int_carry_26\,
      I4 => A(26),
      I5 => A(27),
      O => \U0/int_carry_28\
    );
Cout_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(25),
      I2 => B(24),
      I3 => \U0/int_carry_24\,
      I4 => A(24),
      I5 => A(25),
      O => \U0/int_carry_26\
    );
Cout_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(23),
      I2 => B(22),
      I3 => \U0/int_carry_22\,
      I4 => A(22),
      I5 => A(23),
      O => \U0/int_carry_24\
    );
Cout_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(21),
      I2 => B(20),
      I3 => \U0/int_carry_20\,
      I4 => A(20),
      I5 => A(21),
      O => \U0/int_carry_22\
    );
Cout_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(19),
      I2 => B(18),
      I3 => \U0/int_carry_18\,
      I4 => A(18),
      I5 => A(19),
      O => \U0/int_carry_20\
    );
Cout_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(17),
      I2 => B(16),
      I3 => \U0/int_carry_16\,
      I4 => A(16),
      I5 => A(17),
      O => \U0/int_carry_18\
    );
Cout_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(15),
      I2 => B(14),
      I3 => \U0/int_carry_14\,
      I4 => A(14),
      I5 => A(15),
      O => \U0/int_carry_16\
    );
Cout_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7EE76699188100"
    )
        port map (
      I0 => K,
      I1 => B(13),
      I2 => B(12),
      I3 => \U0/int_carry_12\,
      I4 => A(12),
      I5 => A(13),
      O => \U0/int_carry_14\
    );
\S[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => K,
      O => S(0)
    );
\S[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => K,
      O => S(10)
    );
\S[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => K,
      O => S(11)
    );
\S[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => K,
      O => S(12)
    );
\S[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      I2 => K,
      O => S(13)
    );
\S[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => K,
      O => S(14)
    );
\S[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      I2 => K,
      O => S(15)
    );
\S[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      I2 => K,
      O => S(16)
    );
\S[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      I2 => K,
      O => S(17)
    );
\S[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      I2 => K,
      O => S(18)
    );
\S[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      I2 => K,
      O => S(19)
    );
\S[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      I2 => K,
      O => S(1)
    );
\S[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      I2 => K,
      O => S(20)
    );
\S[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      I2 => K,
      O => S(21)
    );
\S[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      I2 => K,
      O => S(22)
    );
\S[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      I2 => K,
      O => S(23)
    );
\S[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      I2 => K,
      O => S(24)
    );
\S[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      I2 => K,
      O => S(25)
    );
\S[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      I2 => K,
      O => S(26)
    );
\S[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      I2 => K,
      O => S(27)
    );
\S[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      I2 => K,
      O => S(28)
    );
\S[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => K,
      O => S(29)
    );
\S[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => K,
      O => S(2)
    );
\S[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      I2 => K,
      O => S(30)
    );
\S[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      I2 => K,
      O => S(31)
    );
\S[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      I2 => K,
      O => S(3)
    );
\S[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => K,
      O => S(4)
    );
\S[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      I2 => K,
      O => S(5)
    );
\S[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      I2 => K,
      O => S(6)
    );
\S[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      I2 => K,
      O => S(7)
    );
\S[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => K,
      O => S(8)
    );
\S[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => K,
      O => S(9)
    );
end STRUCTURE;
