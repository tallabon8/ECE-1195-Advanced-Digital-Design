-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 12 12:08:52 2023
-- Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/travisallabon/Lab_3/Lab_3.srcs/sources_1/bd/design_1/ip/design_1_Multiplier_32_bit_0_0/design_1_Multiplier_32_bit_0_0_sim_netlist.vhdl
-- Design      : design_1_Multiplier_32_bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Multiplier_32_bit_0_0_control_unit is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    en : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \A[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \Q_reg_reg[30]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \Q_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \FSM_onehot_state_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Multiplier_32_bit_0_0_control_unit : entity is "control_unit";
end design_1_Multiplier_32_bit_0_0_control_unit;

architecture STRUCTURE of design_1_Multiplier_32_bit_0_0_control_unit is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "state1:001,state2:010,state3:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "state1:001,state2:010,state3:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "state1:001,state2:010,state3:100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_reg[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q_reg[10]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Q_reg[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q_reg[11]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Q_reg[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q_reg[12]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Q_reg[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q_reg[13]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Q_reg[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q_reg[14]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Q_reg[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q_reg[15]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Q_reg[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q_reg[16]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Q_reg[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q_reg[17]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Q_reg[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q_reg[18]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Q_reg[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q_reg[19]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Q_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q_reg[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q_reg[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q_reg[20]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Q_reg[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q_reg[21]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Q_reg[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q_reg[22]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Q_reg[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q_reg[23]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Q_reg[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q_reg[24]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Q_reg[25]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q_reg[25]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Q_reg[26]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q_reg[26]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Q_reg[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q_reg[27]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Q_reg[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q_reg[28]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Q_reg[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q_reg[29]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Q_reg[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Q_reg[2]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Q_reg[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q_reg[30]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Q_reg[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_reg[31]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Q_reg[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q_reg[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Q_reg[3]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Q_reg[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Q_reg[4]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Q_reg[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Q_reg[5]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Q_reg[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Q_reg[6]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Q_reg[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Q_reg[7]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Q_reg[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Q_reg[8]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Q_reg[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Q_reg[9]_i_1__0\ : label is "soft_lutpair29";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => RST,
      Q => \^q\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_state_reg[2]_0\(0),
      Q => \^q\(1)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_state_reg[2]_0\(1),
      Q => \^q\(2)
    );
\Q_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(0),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(1),
      O => D(0)
    );
\Q_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => A(0),
      O => \A[31]\(0)
    );
\Q_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(10),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(11),
      O => D(10)
    );
\Q_reg[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(10),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(9),
      O => \A[31]\(10)
    );
\Q_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(11),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(12),
      O => D(11)
    );
\Q_reg[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(11),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(10),
      O => \A[31]\(11)
    );
\Q_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(12),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(13),
      O => D(12)
    );
\Q_reg[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(12),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(11),
      O => \A[31]\(12)
    );
\Q_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(13),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(14),
      O => D(13)
    );
\Q_reg[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(13),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(12),
      O => \A[31]\(13)
    );
\Q_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(14),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(15),
      O => D(14)
    );
\Q_reg[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(14),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(13),
      O => \A[31]\(14)
    );
\Q_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(15),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(16),
      O => D(15)
    );
\Q_reg[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(15),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(14),
      O => \A[31]\(15)
    );
\Q_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(16),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(17),
      O => D(16)
    );
\Q_reg[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(16),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(15),
      O => \A[31]\(16)
    );
\Q_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(17),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(18),
      O => D(17)
    );
\Q_reg[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(17),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(16),
      O => \A[31]\(17)
    );
\Q_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(18),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(19),
      O => D(18)
    );
\Q_reg[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(18),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(17),
      O => \A[31]\(18)
    );
\Q_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(19),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(20),
      O => D(19)
    );
\Q_reg[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(19),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(18),
      O => \A[31]\(19)
    );
\Q_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(1),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(2),
      O => D(1)
    );
\Q_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(1),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(0),
      O => \A[31]\(1)
    );
\Q_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(20),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(21),
      O => D(20)
    );
\Q_reg[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(20),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(19),
      O => \A[31]\(20)
    );
\Q_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(21),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(22),
      O => D(21)
    );
\Q_reg[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(21),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(20),
      O => \A[31]\(21)
    );
\Q_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(22),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(23),
      O => D(22)
    );
\Q_reg[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(22),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(21),
      O => \A[31]\(22)
    );
\Q_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(23),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(24),
      O => D(23)
    );
\Q_reg[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(23),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(22),
      O => \A[31]\(23)
    );
\Q_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(24),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(25),
      O => D(24)
    );
\Q_reg[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(24),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(23),
      O => \A[31]\(24)
    );
\Q_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(25),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(26),
      O => D(25)
    );
\Q_reg[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(25),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(24),
      O => \A[31]\(25)
    );
\Q_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(26),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(27),
      O => D(26)
    );
\Q_reg[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(26),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(25),
      O => \A[31]\(26)
    );
\Q_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(27),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(28),
      O => D(27)
    );
\Q_reg[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(27),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(26),
      O => \A[31]\(27)
    );
\Q_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(28),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(29),
      O => D(28)
    );
\Q_reg[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(28),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(27),
      O => \A[31]\(28)
    );
\Q_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(29),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(30),
      O => D(29)
    );
\Q_reg[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(29),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(28),
      O => \A[31]\(29)
    );
\Q_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(2),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(3),
      O => D(2)
    );
\Q_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(2),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(1),
      O => \A[31]\(2)
    );
\Q_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(30),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(31),
      O => D(30)
    );
\Q_reg[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(30),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(29),
      O => \A[31]\(30)
    );
\Q_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => E(0)
    );
\Q_reg[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(31),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(30),
      O => \A[31]\(31)
    );
\Q_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => B(31),
      O => D(31)
    );
\Q_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(3),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(4),
      O => D(3)
    );
\Q_reg[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(3),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(2),
      O => \A[31]\(3)
    );
\Q_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(4),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(5),
      O => D(4)
    );
\Q_reg[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(4),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(3),
      O => \A[31]\(4)
    );
\Q_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(5),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(6),
      O => D(5)
    );
\Q_reg[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(5),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(4),
      O => \A[31]\(5)
    );
\Q_reg[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \Q_reg_reg[30]\(0),
      O => en
    );
\Q_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(6),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(7),
      O => D(6)
    );
\Q_reg[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(6),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(5),
      O => \A[31]\(6)
    );
\Q_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(7),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(8),
      O => D(7)
    );
\Q_reg[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(7),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(6),
      O => \A[31]\(7)
    );
\Q_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(8),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(9),
      O => D(8)
    );
\Q_reg[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(8),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(7),
      O => \A[31]\(8)
    );
\Q_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(9),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[30]\(10),
      O => D(9)
    );
\Q_reg[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(9),
      I1 => \^q\(0),
      I2 => \Q_reg_reg[31]\(8),
      O => \A[31]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Multiplier_32_bit_0_0_counter5bit is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Multiplier_32_bit_0_0_counter5bit : entity is "counter5bit";
end design_1_Multiplier_32_bit_0_0_counter5bit;

architecture STRUCTURE of design_1_Multiplier_32_bit_0_0_counter5bit is
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair0";
begin
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA2AA"
    )
        port map (
      I0 => Q(1),
      I1 => counter(3),
      I2 => \FSM_onehot_state[2]_i_2_n_0\,
      I3 => counter(4),
      I4 => Q(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000FF0000"
    )
        port map (
      I0 => counter(3),
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => counter(4),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(1),
      O => D(1)
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => counter(3),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(2),
      I4 => counter(4),
      O => p_0_in(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(1),
      CLR => RST,
      D => p_0_in(0),
      Q => counter(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(1),
      CLR => RST,
      D => p_0_in(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(1),
      CLR => RST,
      D => p_0_in(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(1),
      CLR => RST,
      D => p_0_in(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(1),
      CLR => RST,
      D => p_0_in(4),
      Q => counter(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Multiplier_32_bit_0_0_flipflop is
  port (
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    en : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    \Q_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[19]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[27]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[35]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[39]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[43]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[47]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[51]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[55]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[59]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[63]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Multiplier_32_bit_0_0_flipflop : entity is "flipflop";
end design_1_Multiplier_32_bit_0_0_flipflop;

architecture STRUCTURE of design_1_Multiplier_32_bit_0_0_flipflop is
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => O(0),
      Q => R(0)
    );
\Q_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[11]_0\(2),
      Q => R(10)
    );
\Q_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[11]_0\(3),
      Q => R(11)
    );
\Q_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[15]_0\(0),
      Q => R(12)
    );
\Q_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[15]_0\(1),
      Q => R(13)
    );
\Q_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[15]_0\(2),
      Q => R(14)
    );
\Q_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[15]_0\(3),
      Q => R(15)
    );
\Q_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[19]_0\(0),
      Q => R(16)
    );
\Q_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[19]_0\(1),
      Q => R(17)
    );
\Q_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[19]_0\(2),
      Q => R(18)
    );
\Q_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[19]_0\(3),
      Q => R(19)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => O(1),
      Q => R(1)
    );
\Q_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[23]_0\(0),
      Q => R(20)
    );
\Q_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[23]_0\(1),
      Q => R(21)
    );
\Q_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[23]_0\(2),
      Q => R(22)
    );
\Q_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[23]_0\(3),
      Q => R(23)
    );
\Q_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[27]_0\(0),
      Q => R(24)
    );
\Q_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[27]_0\(1),
      Q => R(25)
    );
\Q_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[27]_0\(2),
      Q => R(26)
    );
\Q_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[27]_0\(3),
      Q => R(27)
    );
\Q_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[31]_0\(0),
      Q => R(28)
    );
\Q_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[31]_0\(1),
      Q => R(29)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => O(2),
      Q => R(2)
    );
\Q_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[31]_0\(2),
      Q => R(30)
    );
\Q_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[31]_0\(3),
      Q => R(31)
    );
\Q_reg_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[35]_0\(0),
      Q => R(32)
    );
\Q_reg_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[35]_0\(1),
      Q => R(33)
    );
\Q_reg_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[35]_0\(2),
      Q => R(34)
    );
\Q_reg_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[35]_0\(3),
      Q => R(35)
    );
\Q_reg_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[39]_0\(0),
      Q => R(36)
    );
\Q_reg_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[39]_0\(1),
      Q => R(37)
    );
\Q_reg_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[39]_0\(2),
      Q => R(38)
    );
\Q_reg_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[39]_0\(3),
      Q => R(39)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => O(3),
      Q => R(3)
    );
\Q_reg_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[43]_0\(0),
      Q => R(40)
    );
\Q_reg_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[43]_0\(1),
      Q => R(41)
    );
\Q_reg_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[43]_0\(2),
      Q => R(42)
    );
\Q_reg_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[43]_0\(3),
      Q => R(43)
    );
\Q_reg_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[47]_0\(0),
      Q => R(44)
    );
\Q_reg_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[47]_0\(1),
      Q => R(45)
    );
\Q_reg_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[47]_0\(2),
      Q => R(46)
    );
\Q_reg_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[47]_0\(3),
      Q => R(47)
    );
\Q_reg_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[51]_0\(0),
      Q => R(48)
    );
\Q_reg_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[51]_0\(1),
      Q => R(49)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[7]_0\(0),
      Q => R(4)
    );
\Q_reg_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[51]_0\(2),
      Q => R(50)
    );
\Q_reg_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[51]_0\(3),
      Q => R(51)
    );
\Q_reg_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[55]_0\(0),
      Q => R(52)
    );
\Q_reg_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[55]_0\(1),
      Q => R(53)
    );
\Q_reg_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[55]_0\(2),
      Q => R(54)
    );
\Q_reg_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[55]_0\(3),
      Q => R(55)
    );
\Q_reg_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[59]_0\(0),
      Q => R(56)
    );
\Q_reg_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[59]_0\(1),
      Q => R(57)
    );
\Q_reg_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[59]_0\(2),
      Q => R(58)
    );
\Q_reg_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[59]_0\(3),
      Q => R(59)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[7]_0\(1),
      Q => R(5)
    );
\Q_reg_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[63]_0\(0),
      Q => R(60)
    );
\Q_reg_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[63]_0\(1),
      Q => R(61)
    );
\Q_reg_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[63]_0\(2),
      Q => R(62)
    );
\Q_reg_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[63]_0\(3),
      Q => R(63)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[7]_0\(2),
      Q => R(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[7]_0\(3),
      Q => R(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[11]_0\(0),
      Q => R(8)
    );
\Q_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => RST,
      D => \Q_reg_reg[11]_0\(1),
      Q => R(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Multiplier_32_bit_0_0_shift32bit is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Multiplier_32_bit_0_0_shift32bit : entity is "shift32bit";
end design_1_Multiplier_32_bit_0_0_shift32bit;

architecture STRUCTURE of design_1_Multiplier_32_bit_0_0_shift32bit is
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(0),
      Q => Q(0)
    );
\Q_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(10),
      Q => Q(10)
    );
\Q_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(11),
      Q => Q(11)
    );
\Q_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(12),
      Q => Q(12)
    );
\Q_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(13),
      Q => Q(13)
    );
\Q_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(14),
      Q => Q(14)
    );
\Q_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(15),
      Q => Q(15)
    );
\Q_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(16),
      Q => Q(16)
    );
\Q_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(17),
      Q => Q(17)
    );
\Q_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(18),
      Q => Q(18)
    );
\Q_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(19),
      Q => Q(19)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(1),
      Q => Q(1)
    );
\Q_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(20),
      Q => Q(20)
    );
\Q_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(21),
      Q => Q(21)
    );
\Q_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(22),
      Q => Q(22)
    );
\Q_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(23),
      Q => Q(23)
    );
\Q_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(24),
      Q => Q(24)
    );
\Q_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(25),
      Q => Q(25)
    );
\Q_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(26),
      Q => Q(26)
    );
\Q_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(27),
      Q => Q(27)
    );
\Q_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(28),
      Q => Q(28)
    );
\Q_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(29),
      Q => Q(29)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(2),
      Q => Q(2)
    );
\Q_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(30),
      Q => Q(30)
    );
\Q_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(31),
      Q => Q(31)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(3),
      Q => Q(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(4),
      Q => Q(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(5),
      Q => Q(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(6),
      Q => Q(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(7),
      Q => Q(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(8),
      Q => Q(8)
    );
\Q_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Multiplier_32_bit_0_0_shift64bit is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[30]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \Q_reg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[35]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[39]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[43]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[47]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[51]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[55]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[59]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg_reg[62]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    R : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Multiplier_32_bit_0_0_shift64bit : entity is "shift64bit";
end design_1_Multiplier_32_bit_0_0_shift64bit;

architecture STRUCTURE of design_1_Multiplier_32_bit_0_0_shift64bit is
  signal \Q_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \Q_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[33]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[34]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[35]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[35]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[35]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[35]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[37]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[38]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[39]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[39]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[39]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[39]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[41]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[42]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[43]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[43]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[43]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[43]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[45]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[46]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[47]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[47]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[47]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[47]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[49]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[50]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[51]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[51]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[51]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[51]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[53]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[54]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[55]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[55]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[55]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[55]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[57]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[58]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[59]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[59]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[59]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[59]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[60]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[61]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[62]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[63]_i_1__0_n_0\ : STD_LOGIC;
  signal \Q_reg[63]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[63]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[63]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg[63]_i_6_n_0\ : STD_LOGIC;
  signal \Q_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \Q_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \Q_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \^q_reg_reg[30]_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \Q_reg_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \Q_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[32]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[33]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[34]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[35]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[36]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[37]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[38]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[39]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[40]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[41]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[42]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[43]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[44]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[45]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[46]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[47]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[48]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[49]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[50]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[51]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[52]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[53]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[54]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[55]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[56]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[57]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[58]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[59]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[60]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[61]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[62]\ : STD_LOGIC;
  signal \Q_reg_reg_n_0_[63]\ : STD_LOGIC;
  signal \NLW_Q_reg_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_reg[32]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \Q_reg[33]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \Q_reg[34]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Q_reg[35]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Q_reg[36]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Q_reg[37]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Q_reg[38]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \Q_reg[39]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \Q_reg[40]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Q_reg[41]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Q_reg[42]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \Q_reg[43]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \Q_reg[44]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Q_reg[45]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Q_reg[46]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Q_reg[47]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Q_reg[48]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Q_reg[49]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Q_reg[50]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Q_reg[51]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Q_reg[52]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Q_reg[53]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Q_reg[54]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Q_reg[55]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Q_reg[56]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Q_reg[57]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Q_reg[58]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \Q_reg[59]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \Q_reg[60]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \Q_reg[61]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \Q_reg[62]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Q_reg[63]_i_1__0\ : label is "soft_lutpair35";
begin
  \Q_reg_reg[30]_0\(30 downto 0) <= \^q_reg_reg[30]_0\(30 downto 0);
\Q_reg[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(11),
      I1 => R(11),
      O => \Q_reg[11]_i_2_n_0\
    );
\Q_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(10),
      I1 => R(10),
      O => \Q_reg[11]_i_3_n_0\
    );
\Q_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(9),
      I1 => R(9),
      O => \Q_reg[11]_i_4_n_0\
    );
\Q_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(8),
      I1 => R(8),
      O => \Q_reg[11]_i_5_n_0\
    );
\Q_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(15),
      I1 => R(15),
      O => \Q_reg[15]_i_2_n_0\
    );
\Q_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(14),
      I1 => R(14),
      O => \Q_reg[15]_i_3_n_0\
    );
\Q_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(13),
      I1 => R(13),
      O => \Q_reg[15]_i_4_n_0\
    );
\Q_reg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(12),
      I1 => R(12),
      O => \Q_reg[15]_i_5_n_0\
    );
\Q_reg[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(19),
      I1 => R(19),
      O => \Q_reg[19]_i_2_n_0\
    );
\Q_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(18),
      I1 => R(18),
      O => \Q_reg[19]_i_3_n_0\
    );
\Q_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(17),
      I1 => R(17),
      O => \Q_reg[19]_i_4_n_0\
    );
\Q_reg[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(16),
      I1 => R(16),
      O => \Q_reg[19]_i_5_n_0\
    );
\Q_reg[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(23),
      I1 => R(23),
      O => \Q_reg[23]_i_2_n_0\
    );
\Q_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(22),
      I1 => R(22),
      O => \Q_reg[23]_i_3_n_0\
    );
\Q_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(21),
      I1 => R(21),
      O => \Q_reg[23]_i_4_n_0\
    );
\Q_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(20),
      I1 => R(20),
      O => \Q_reg[23]_i_5_n_0\
    );
\Q_reg[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(27),
      I1 => R(27),
      O => \Q_reg[27]_i_2_n_0\
    );
\Q_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(26),
      I1 => R(26),
      O => \Q_reg[27]_i_3_n_0\
    );
\Q_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(25),
      I1 => R(25),
      O => \Q_reg[27]_i_4_n_0\
    );
\Q_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(24),
      I1 => R(24),
      O => \Q_reg[27]_i_5_n_0\
    );
\Q_reg[31]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[31]\,
      I1 => R(31),
      O => \Q_reg[31]_i_2__0_n_0\
    );
\Q_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(30),
      I1 => R(30),
      O => \Q_reg[31]_i_3_n_0\
    );
\Q_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(29),
      I1 => R(29),
      O => \Q_reg[31]_i_4_n_0\
    );
\Q_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(28),
      I1 => R(28),
      O => \Q_reg[31]_i_5_n_0\
    );
\Q_reg[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[31]\,
      I1 => Q(0),
      O => \Q_reg[32]_i_1_n_0\
    );
\Q_reg[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[32]\,
      I1 => Q(0),
      O => \Q_reg[33]_i_1_n_0\
    );
\Q_reg[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[33]\,
      I1 => Q(0),
      O => \Q_reg[34]_i_1_n_0\
    );
\Q_reg[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[34]\,
      I1 => Q(0),
      O => \Q_reg[35]_i_1_n_0\
    );
\Q_reg[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[35]\,
      I1 => R(35),
      O => \Q_reg[35]_i_2_n_0\
    );
\Q_reg[35]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[34]\,
      I1 => R(34),
      O => \Q_reg[35]_i_3_n_0\
    );
\Q_reg[35]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[33]\,
      I1 => R(33),
      O => \Q_reg[35]_i_4_n_0\
    );
\Q_reg[35]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[32]\,
      I1 => R(32),
      O => \Q_reg[35]_i_5_n_0\
    );
\Q_reg[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[35]\,
      I1 => Q(0),
      O => \Q_reg[36]_i_1_n_0\
    );
\Q_reg[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[36]\,
      I1 => Q(0),
      O => \Q_reg[37]_i_1_n_0\
    );
\Q_reg[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[37]\,
      I1 => Q(0),
      O => \Q_reg[38]_i_1_n_0\
    );
\Q_reg[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[38]\,
      I1 => Q(0),
      O => \Q_reg[39]_i_1_n_0\
    );
\Q_reg[39]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[39]\,
      I1 => R(39),
      O => \Q_reg[39]_i_2_n_0\
    );
\Q_reg[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[38]\,
      I1 => R(38),
      O => \Q_reg[39]_i_3_n_0\
    );
\Q_reg[39]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[37]\,
      I1 => R(37),
      O => \Q_reg[39]_i_4_n_0\
    );
\Q_reg[39]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[36]\,
      I1 => R(36),
      O => \Q_reg[39]_i_5_n_0\
    );
\Q_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(3),
      I1 => R(3),
      O => \Q_reg[3]_i_2_n_0\
    );
\Q_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(2),
      I1 => R(2),
      O => \Q_reg[3]_i_3_n_0\
    );
\Q_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(1),
      I1 => R(1),
      O => \Q_reg[3]_i_4_n_0\
    );
\Q_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(0),
      I1 => R(0),
      O => \Q_reg[3]_i_5_n_0\
    );
\Q_reg[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[39]\,
      I1 => Q(0),
      O => \Q_reg[40]_i_1_n_0\
    );
\Q_reg[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[40]\,
      I1 => Q(0),
      O => \Q_reg[41]_i_1_n_0\
    );
\Q_reg[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[41]\,
      I1 => Q(0),
      O => \Q_reg[42]_i_1_n_0\
    );
\Q_reg[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[42]\,
      I1 => Q(0),
      O => \Q_reg[43]_i_1_n_0\
    );
\Q_reg[43]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[43]\,
      I1 => R(43),
      O => \Q_reg[43]_i_2_n_0\
    );
\Q_reg[43]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[42]\,
      I1 => R(42),
      O => \Q_reg[43]_i_3_n_0\
    );
\Q_reg[43]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[41]\,
      I1 => R(41),
      O => \Q_reg[43]_i_4_n_0\
    );
\Q_reg[43]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[40]\,
      I1 => R(40),
      O => \Q_reg[43]_i_5_n_0\
    );
\Q_reg[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[43]\,
      I1 => Q(0),
      O => \Q_reg[44]_i_1_n_0\
    );
\Q_reg[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[44]\,
      I1 => Q(0),
      O => \Q_reg[45]_i_1_n_0\
    );
\Q_reg[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[45]\,
      I1 => Q(0),
      O => \Q_reg[46]_i_1_n_0\
    );
\Q_reg[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[46]\,
      I1 => Q(0),
      O => \Q_reg[47]_i_1_n_0\
    );
\Q_reg[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[47]\,
      I1 => R(47),
      O => \Q_reg[47]_i_2_n_0\
    );
\Q_reg[47]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[46]\,
      I1 => R(46),
      O => \Q_reg[47]_i_3_n_0\
    );
\Q_reg[47]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[45]\,
      I1 => R(45),
      O => \Q_reg[47]_i_4_n_0\
    );
\Q_reg[47]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[44]\,
      I1 => R(44),
      O => \Q_reg[47]_i_5_n_0\
    );
\Q_reg[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[47]\,
      I1 => Q(0),
      O => \Q_reg[48]_i_1_n_0\
    );
\Q_reg[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[48]\,
      I1 => Q(0),
      O => \Q_reg[49]_i_1_n_0\
    );
\Q_reg[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[49]\,
      I1 => Q(0),
      O => \Q_reg[50]_i_1_n_0\
    );
\Q_reg[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[50]\,
      I1 => Q(0),
      O => \Q_reg[51]_i_1_n_0\
    );
\Q_reg[51]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[51]\,
      I1 => R(51),
      O => \Q_reg[51]_i_2_n_0\
    );
\Q_reg[51]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[50]\,
      I1 => R(50),
      O => \Q_reg[51]_i_3_n_0\
    );
\Q_reg[51]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[49]\,
      I1 => R(49),
      O => \Q_reg[51]_i_4_n_0\
    );
\Q_reg[51]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[48]\,
      I1 => R(48),
      O => \Q_reg[51]_i_5_n_0\
    );
\Q_reg[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[51]\,
      I1 => Q(0),
      O => \Q_reg[52]_i_1_n_0\
    );
\Q_reg[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[52]\,
      I1 => Q(0),
      O => \Q_reg[53]_i_1_n_0\
    );
\Q_reg[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[53]\,
      I1 => Q(0),
      O => \Q_reg[54]_i_1_n_0\
    );
\Q_reg[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[54]\,
      I1 => Q(0),
      O => \Q_reg[55]_i_1_n_0\
    );
\Q_reg[55]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[55]\,
      I1 => R(55),
      O => \Q_reg[55]_i_2_n_0\
    );
\Q_reg[55]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[54]\,
      I1 => R(54),
      O => \Q_reg[55]_i_3_n_0\
    );
\Q_reg[55]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[53]\,
      I1 => R(53),
      O => \Q_reg[55]_i_4_n_0\
    );
\Q_reg[55]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[52]\,
      I1 => R(52),
      O => \Q_reg[55]_i_5_n_0\
    );
\Q_reg[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[55]\,
      I1 => Q(0),
      O => \Q_reg[56]_i_1_n_0\
    );
\Q_reg[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[56]\,
      I1 => Q(0),
      O => \Q_reg[57]_i_1_n_0\
    );
\Q_reg[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[57]\,
      I1 => Q(0),
      O => \Q_reg[58]_i_1_n_0\
    );
\Q_reg[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[58]\,
      I1 => Q(0),
      O => \Q_reg[59]_i_1_n_0\
    );
\Q_reg[59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[59]\,
      I1 => R(59),
      O => \Q_reg[59]_i_2_n_0\
    );
\Q_reg[59]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[58]\,
      I1 => R(58),
      O => \Q_reg[59]_i_3_n_0\
    );
\Q_reg[59]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[57]\,
      I1 => R(57),
      O => \Q_reg[59]_i_4_n_0\
    );
\Q_reg[59]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[56]\,
      I1 => R(56),
      O => \Q_reg[59]_i_5_n_0\
    );
\Q_reg[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[59]\,
      I1 => Q(0),
      O => \Q_reg[60]_i_1_n_0\
    );
\Q_reg[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[60]\,
      I1 => Q(0),
      O => \Q_reg[61]_i_1_n_0\
    );
\Q_reg[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[61]\,
      I1 => Q(0),
      O => \Q_reg[62]_i_1_n_0\
    );
\Q_reg[63]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[62]\,
      I1 => Q(0),
      O => \Q_reg[63]_i_1__0_n_0\
    );
\Q_reg[63]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[63]\,
      I1 => R(63),
      O => \Q_reg[63]_i_3_n_0\
    );
\Q_reg[63]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[62]\,
      I1 => R(62),
      O => \Q_reg[63]_i_4_n_0\
    );
\Q_reg[63]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[61]\,
      I1 => R(61),
      O => \Q_reg[63]_i_5_n_0\
    );
\Q_reg[63]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q_reg_reg_n_0_[60]\,
      I1 => R(60),
      O => \Q_reg[63]_i_6_n_0\
    );
\Q_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(7),
      I1 => R(7),
      O => \Q_reg[7]_i_2_n_0\
    );
\Q_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(6),
      I1 => R(6),
      O => \Q_reg[7]_i_3_n_0\
    );
\Q_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(5),
      I1 => R(5),
      O => \Q_reg[7]_i_4_n_0\
    );
\Q_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg_reg[30]_0\(4),
      I1 => R(4),
      O => \Q_reg[7]_i_5_n_0\
    );
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(0),
      Q => \^q_reg_reg[30]_0\(0)
    );
\Q_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(10),
      Q => \^q_reg_reg[30]_0\(10)
    );
\Q_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(11),
      Q => \^q_reg_reg[30]_0\(11)
    );
\Q_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[7]_i_1_n_0\,
      CO(3) => \Q_reg_reg[11]_i_1_n_0\,
      CO(2) => \Q_reg_reg[11]_i_1_n_1\,
      CO(1) => \Q_reg_reg[11]_i_1_n_2\,
      CO(0) => \Q_reg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg_reg[30]_0\(11 downto 8),
      O(3 downto 0) => \Q_reg_reg[11]_0\(3 downto 0),
      S(3) => \Q_reg[11]_i_2_n_0\,
      S(2) => \Q_reg[11]_i_3_n_0\,
      S(1) => \Q_reg[11]_i_4_n_0\,
      S(0) => \Q_reg[11]_i_5_n_0\
    );
\Q_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(12),
      Q => \^q_reg_reg[30]_0\(12)
    );
\Q_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(13),
      Q => \^q_reg_reg[30]_0\(13)
    );
\Q_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(14),
      Q => \^q_reg_reg[30]_0\(14)
    );
\Q_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(15),
      Q => \^q_reg_reg[30]_0\(15)
    );
\Q_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[11]_i_1_n_0\,
      CO(3) => \Q_reg_reg[15]_i_1_n_0\,
      CO(2) => \Q_reg_reg[15]_i_1_n_1\,
      CO(1) => \Q_reg_reg[15]_i_1_n_2\,
      CO(0) => \Q_reg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg_reg[30]_0\(15 downto 12),
      O(3 downto 0) => \Q_reg_reg[15]_0\(3 downto 0),
      S(3) => \Q_reg[15]_i_2_n_0\,
      S(2) => \Q_reg[15]_i_3_n_0\,
      S(1) => \Q_reg[15]_i_4_n_0\,
      S(0) => \Q_reg[15]_i_5_n_0\
    );
\Q_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(16),
      Q => \^q_reg_reg[30]_0\(16)
    );
\Q_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(17),
      Q => \^q_reg_reg[30]_0\(17)
    );
\Q_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(18),
      Q => \^q_reg_reg[30]_0\(18)
    );
\Q_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(19),
      Q => \^q_reg_reg[30]_0\(19)
    );
\Q_reg_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[15]_i_1_n_0\,
      CO(3) => \Q_reg_reg[19]_i_1_n_0\,
      CO(2) => \Q_reg_reg[19]_i_1_n_1\,
      CO(1) => \Q_reg_reg[19]_i_1_n_2\,
      CO(0) => \Q_reg_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg_reg[30]_0\(19 downto 16),
      O(3 downto 0) => \Q_reg_reg[19]_0\(3 downto 0),
      S(3) => \Q_reg[19]_i_2_n_0\,
      S(2) => \Q_reg[19]_i_3_n_0\,
      S(1) => \Q_reg[19]_i_4_n_0\,
      S(0) => \Q_reg[19]_i_5_n_0\
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(1),
      Q => \^q_reg_reg[30]_0\(1)
    );
\Q_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(20),
      Q => \^q_reg_reg[30]_0\(20)
    );
\Q_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(21),
      Q => \^q_reg_reg[30]_0\(21)
    );
\Q_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(22),
      Q => \^q_reg_reg[30]_0\(22)
    );
\Q_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(23),
      Q => \^q_reg_reg[30]_0\(23)
    );
\Q_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[19]_i_1_n_0\,
      CO(3) => \Q_reg_reg[23]_i_1_n_0\,
      CO(2) => \Q_reg_reg[23]_i_1_n_1\,
      CO(1) => \Q_reg_reg[23]_i_1_n_2\,
      CO(0) => \Q_reg_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg_reg[30]_0\(23 downto 20),
      O(3 downto 0) => \Q_reg_reg[23]_0\(3 downto 0),
      S(3) => \Q_reg[23]_i_2_n_0\,
      S(2) => \Q_reg[23]_i_3_n_0\,
      S(1) => \Q_reg[23]_i_4_n_0\,
      S(0) => \Q_reg[23]_i_5_n_0\
    );
\Q_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(24),
      Q => \^q_reg_reg[30]_0\(24)
    );
\Q_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(25),
      Q => \^q_reg_reg[30]_0\(25)
    );
\Q_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(26),
      Q => \^q_reg_reg[30]_0\(26)
    );
\Q_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(27),
      Q => \^q_reg_reg[30]_0\(27)
    );
\Q_reg_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[23]_i_1_n_0\,
      CO(3) => \Q_reg_reg[27]_i_1_n_0\,
      CO(2) => \Q_reg_reg[27]_i_1_n_1\,
      CO(1) => \Q_reg_reg[27]_i_1_n_2\,
      CO(0) => \Q_reg_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg_reg[30]_0\(27 downto 24),
      O(3 downto 0) => \Q_reg_reg[27]_0\(3 downto 0),
      S(3) => \Q_reg[27]_i_2_n_0\,
      S(2) => \Q_reg[27]_i_3_n_0\,
      S(1) => \Q_reg[27]_i_4_n_0\,
      S(0) => \Q_reg[27]_i_5_n_0\
    );
\Q_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(28),
      Q => \^q_reg_reg[30]_0\(28)
    );
\Q_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(29),
      Q => \^q_reg_reg[30]_0\(29)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(2),
      Q => \^q_reg_reg[30]_0\(2)
    );
\Q_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(30),
      Q => \^q_reg_reg[30]_0\(30)
    );
\Q_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(31),
      Q => \Q_reg_reg_n_0_[31]\
    );
\Q_reg_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[27]_i_1_n_0\,
      CO(3) => \Q_reg_reg[31]_i_1_n_0\,
      CO(2) => \Q_reg_reg[31]_i_1_n_1\,
      CO(1) => \Q_reg_reg[31]_i_1_n_2\,
      CO(0) => \Q_reg_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[31]\,
      DI(2 downto 0) => \^q_reg_reg[30]_0\(30 downto 28),
      O(3 downto 0) => \Q_reg_reg[31]_0\(3 downto 0),
      S(3) => \Q_reg[31]_i_2__0_n_0\,
      S(2) => \Q_reg[31]_i_3_n_0\,
      S(1) => \Q_reg[31]_i_4_n_0\,
      S(0) => \Q_reg[31]_i_5_n_0\
    );
\Q_reg_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[32]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[32]\
    );
\Q_reg_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[33]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[33]\
    );
\Q_reg_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[34]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[34]\
    );
\Q_reg_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[35]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[35]\
    );
\Q_reg_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[31]_i_1_n_0\,
      CO(3) => \Q_reg_reg[35]_i_1_n_0\,
      CO(2) => \Q_reg_reg[35]_i_1_n_1\,
      CO(1) => \Q_reg_reg[35]_i_1_n_2\,
      CO(0) => \Q_reg_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[35]\,
      DI(2) => \Q_reg_reg_n_0_[34]\,
      DI(1) => \Q_reg_reg_n_0_[33]\,
      DI(0) => \Q_reg_reg_n_0_[32]\,
      O(3 downto 0) => \Q_reg_reg[35]_0\(3 downto 0),
      S(3) => \Q_reg[35]_i_2_n_0\,
      S(2) => \Q_reg[35]_i_3_n_0\,
      S(1) => \Q_reg[35]_i_4_n_0\,
      S(0) => \Q_reg[35]_i_5_n_0\
    );
\Q_reg_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[36]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[36]\
    );
\Q_reg_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[37]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[37]\
    );
\Q_reg_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[38]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[38]\
    );
\Q_reg_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[39]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[39]\
    );
\Q_reg_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[35]_i_1_n_0\,
      CO(3) => \Q_reg_reg[39]_i_1_n_0\,
      CO(2) => \Q_reg_reg[39]_i_1_n_1\,
      CO(1) => \Q_reg_reg[39]_i_1_n_2\,
      CO(0) => \Q_reg_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[39]\,
      DI(2) => \Q_reg_reg_n_0_[38]\,
      DI(1) => \Q_reg_reg_n_0_[37]\,
      DI(0) => \Q_reg_reg_n_0_[36]\,
      O(3 downto 0) => \Q_reg_reg[39]_0\(3 downto 0),
      S(3) => \Q_reg[39]_i_2_n_0\,
      S(2) => \Q_reg[39]_i_3_n_0\,
      S(1) => \Q_reg[39]_i_4_n_0\,
      S(0) => \Q_reg[39]_i_5_n_0\
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(3),
      Q => \^q_reg_reg[30]_0\(3)
    );
\Q_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Q_reg_reg[3]_i_1_n_0\,
      CO(2) => \Q_reg_reg[3]_i_1_n_1\,
      CO(1) => \Q_reg_reg[3]_i_1_n_2\,
      CO(0) => \Q_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg_reg[30]_0\(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3) => \Q_reg[3]_i_2_n_0\,
      S(2) => \Q_reg[3]_i_3_n_0\,
      S(1) => \Q_reg[3]_i_4_n_0\,
      S(0) => \Q_reg[3]_i_5_n_0\
    );
\Q_reg_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[40]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[40]\
    );
\Q_reg_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[41]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[41]\
    );
\Q_reg_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[42]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[42]\
    );
\Q_reg_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[43]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[43]\
    );
\Q_reg_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[39]_i_1_n_0\,
      CO(3) => \Q_reg_reg[43]_i_1_n_0\,
      CO(2) => \Q_reg_reg[43]_i_1_n_1\,
      CO(1) => \Q_reg_reg[43]_i_1_n_2\,
      CO(0) => \Q_reg_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[43]\,
      DI(2) => \Q_reg_reg_n_0_[42]\,
      DI(1) => \Q_reg_reg_n_0_[41]\,
      DI(0) => \Q_reg_reg_n_0_[40]\,
      O(3 downto 0) => \Q_reg_reg[43]_0\(3 downto 0),
      S(3) => \Q_reg[43]_i_2_n_0\,
      S(2) => \Q_reg[43]_i_3_n_0\,
      S(1) => \Q_reg[43]_i_4_n_0\,
      S(0) => \Q_reg[43]_i_5_n_0\
    );
\Q_reg_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[44]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[44]\
    );
\Q_reg_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[45]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[45]\
    );
\Q_reg_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[46]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[46]\
    );
\Q_reg_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[47]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[47]\
    );
\Q_reg_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[43]_i_1_n_0\,
      CO(3) => \Q_reg_reg[47]_i_1_n_0\,
      CO(2) => \Q_reg_reg[47]_i_1_n_1\,
      CO(1) => \Q_reg_reg[47]_i_1_n_2\,
      CO(0) => \Q_reg_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[47]\,
      DI(2) => \Q_reg_reg_n_0_[46]\,
      DI(1) => \Q_reg_reg_n_0_[45]\,
      DI(0) => \Q_reg_reg_n_0_[44]\,
      O(3 downto 0) => \Q_reg_reg[47]_0\(3 downto 0),
      S(3) => \Q_reg[47]_i_2_n_0\,
      S(2) => \Q_reg[47]_i_3_n_0\,
      S(1) => \Q_reg[47]_i_4_n_0\,
      S(0) => \Q_reg[47]_i_5_n_0\
    );
\Q_reg_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[48]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[48]\
    );
\Q_reg_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[49]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[49]\
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(4),
      Q => \^q_reg_reg[30]_0\(4)
    );
\Q_reg_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[50]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[50]\
    );
\Q_reg_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[51]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[51]\
    );
\Q_reg_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[47]_i_1_n_0\,
      CO(3) => \Q_reg_reg[51]_i_1_n_0\,
      CO(2) => \Q_reg_reg[51]_i_1_n_1\,
      CO(1) => \Q_reg_reg[51]_i_1_n_2\,
      CO(0) => \Q_reg_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[51]\,
      DI(2) => \Q_reg_reg_n_0_[50]\,
      DI(1) => \Q_reg_reg_n_0_[49]\,
      DI(0) => \Q_reg_reg_n_0_[48]\,
      O(3 downto 0) => \Q_reg_reg[51]_0\(3 downto 0),
      S(3) => \Q_reg[51]_i_2_n_0\,
      S(2) => \Q_reg[51]_i_3_n_0\,
      S(1) => \Q_reg[51]_i_4_n_0\,
      S(0) => \Q_reg[51]_i_5_n_0\
    );
\Q_reg_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[52]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[52]\
    );
\Q_reg_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[53]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[53]\
    );
\Q_reg_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[54]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[54]\
    );
\Q_reg_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[55]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[55]\
    );
\Q_reg_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[51]_i_1_n_0\,
      CO(3) => \Q_reg_reg[55]_i_1_n_0\,
      CO(2) => \Q_reg_reg[55]_i_1_n_1\,
      CO(1) => \Q_reg_reg[55]_i_1_n_2\,
      CO(0) => \Q_reg_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[55]\,
      DI(2) => \Q_reg_reg_n_0_[54]\,
      DI(1) => \Q_reg_reg_n_0_[53]\,
      DI(0) => \Q_reg_reg_n_0_[52]\,
      O(3 downto 0) => \Q_reg_reg[55]_0\(3 downto 0),
      S(3) => \Q_reg[55]_i_2_n_0\,
      S(2) => \Q_reg[55]_i_3_n_0\,
      S(1) => \Q_reg[55]_i_4_n_0\,
      S(0) => \Q_reg[55]_i_5_n_0\
    );
\Q_reg_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[56]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[56]\
    );
\Q_reg_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[57]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[57]\
    );
\Q_reg_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[58]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[58]\
    );
\Q_reg_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[59]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[59]\
    );
\Q_reg_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[55]_i_1_n_0\,
      CO(3) => \Q_reg_reg[59]_i_1_n_0\,
      CO(2) => \Q_reg_reg[59]_i_1_n_1\,
      CO(1) => \Q_reg_reg[59]_i_1_n_2\,
      CO(0) => \Q_reg_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q_reg_reg_n_0_[59]\,
      DI(2) => \Q_reg_reg_n_0_[58]\,
      DI(1) => \Q_reg_reg_n_0_[57]\,
      DI(0) => \Q_reg_reg_n_0_[56]\,
      O(3 downto 0) => \Q_reg_reg[59]_0\(3 downto 0),
      S(3) => \Q_reg[59]_i_2_n_0\,
      S(2) => \Q_reg[59]_i_3_n_0\,
      S(1) => \Q_reg[59]_i_4_n_0\,
      S(0) => \Q_reg[59]_i_5_n_0\
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(5),
      Q => \^q_reg_reg[30]_0\(5)
    );
\Q_reg_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[60]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[60]\
    );
\Q_reg_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[61]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[61]\
    );
\Q_reg_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[62]_i_1_n_0\,
      Q => \Q_reg_reg_n_0_[62]\
    );
\Q_reg_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => \Q_reg[63]_i_1__0_n_0\,
      Q => \Q_reg_reg_n_0_[63]\
    );
\Q_reg_reg[63]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[59]_i_1_n_0\,
      CO(3) => \NLW_Q_reg_reg[63]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \Q_reg_reg[63]_i_2_n_1\,
      CO(1) => \Q_reg_reg[63]_i_2_n_2\,
      CO(0) => \Q_reg_reg[63]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Q_reg_reg_n_0_[62]\,
      DI(1) => \Q_reg_reg_n_0_[61]\,
      DI(0) => \Q_reg_reg_n_0_[60]\,
      O(3 downto 0) => \Q_reg_reg[62]_0\(3 downto 0),
      S(3) => \Q_reg[63]_i_3_n_0\,
      S(2) => \Q_reg[63]_i_4_n_0\,
      S(1) => \Q_reg[63]_i_5_n_0\,
      S(0) => \Q_reg[63]_i_6_n_0\
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(6),
      Q => \^q_reg_reg[30]_0\(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(7),
      Q => \^q_reg_reg[30]_0\(7)
    );
\Q_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg_reg[3]_i_1_n_0\,
      CO(3) => \Q_reg_reg[7]_i_1_n_0\,
      CO(2) => \Q_reg_reg[7]_i_1_n_1\,
      CO(1) => \Q_reg_reg[7]_i_1_n_2\,
      CO(0) => \Q_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg_reg[30]_0\(7 downto 4),
      O(3 downto 0) => \Q_reg_reg[7]_0\(3 downto 0),
      S(3) => \Q_reg[7]_i_2_n_0\,
      S(2) => \Q_reg[7]_i_3_n_0\,
      S(1) => \Q_reg[7]_i_4_n_0\,
      S(0) => \Q_reg[7]_i_5_n_0\
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(8),
      Q => \^q_reg_reg[30]_0\(8)
    );
\Q_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => D(9),
      Q => \^q_reg_reg[30]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Multiplier_32_bit_0_0_Multiplier_32_bit is
  port (
    DONE : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Multiplier_32_bit_0_0_Multiplier_32_bit : entity is "Multiplier_32_bit";
end design_1_Multiplier_32_bit_0_0_Multiplier_32_bit;

architecture STRUCTURE of design_1_Multiplier_32_bit_0_0_Multiplier_32_bit is
  signal CU_n_0 : STD_LOGIC;
  signal CU_n_37 : STD_LOGIC;
  signal CU_n_38 : STD_LOGIC;
  signal CU_n_39 : STD_LOGIC;
  signal CU_n_40 : STD_LOGIC;
  signal CU_n_41 : STD_LOGIC;
  signal CU_n_42 : STD_LOGIC;
  signal CU_n_43 : STD_LOGIC;
  signal CU_n_44 : STD_LOGIC;
  signal CU_n_45 : STD_LOGIC;
  signal CU_n_46 : STD_LOGIC;
  signal CU_n_47 : STD_LOGIC;
  signal CU_n_48 : STD_LOGIC;
  signal CU_n_49 : STD_LOGIC;
  signal CU_n_50 : STD_LOGIC;
  signal CU_n_51 : STD_LOGIC;
  signal CU_n_52 : STD_LOGIC;
  signal CU_n_53 : STD_LOGIC;
  signal CU_n_54 : STD_LOGIC;
  signal CU_n_55 : STD_LOGIC;
  signal CU_n_56 : STD_LOGIC;
  signal CU_n_57 : STD_LOGIC;
  signal CU_n_58 : STD_LOGIC;
  signal CU_n_59 : STD_LOGIC;
  signal CU_n_60 : STD_LOGIC;
  signal CU_n_61 : STD_LOGIC;
  signal CU_n_62 : STD_LOGIC;
  signal CU_n_63 : STD_LOGIC;
  signal CU_n_64 : STD_LOGIC;
  signal CU_n_65 : STD_LOGIC;
  signal CU_n_66 : STD_LOGIC;
  signal CU_n_67 : STD_LOGIC;
  signal CU_n_68 : STD_LOGIC;
  signal C_n_0 : STD_LOGIC;
  signal C_n_1 : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal Q32 : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S32_n_0 : STD_LOGIC;
  signal S32_n_1 : STD_LOGIC;
  signal S32_n_10 : STD_LOGIC;
  signal S32_n_11 : STD_LOGIC;
  signal S32_n_12 : STD_LOGIC;
  signal S32_n_13 : STD_LOGIC;
  signal S32_n_14 : STD_LOGIC;
  signal S32_n_15 : STD_LOGIC;
  signal S32_n_16 : STD_LOGIC;
  signal S32_n_17 : STD_LOGIC;
  signal S32_n_18 : STD_LOGIC;
  signal S32_n_19 : STD_LOGIC;
  signal S32_n_2 : STD_LOGIC;
  signal S32_n_20 : STD_LOGIC;
  signal S32_n_21 : STD_LOGIC;
  signal S32_n_22 : STD_LOGIC;
  signal S32_n_23 : STD_LOGIC;
  signal S32_n_24 : STD_LOGIC;
  signal S32_n_25 : STD_LOGIC;
  signal S32_n_26 : STD_LOGIC;
  signal S32_n_27 : STD_LOGIC;
  signal S32_n_28 : STD_LOGIC;
  signal S32_n_29 : STD_LOGIC;
  signal S32_n_3 : STD_LOGIC;
  signal S32_n_30 : STD_LOGIC;
  signal S32_n_4 : STD_LOGIC;
  signal S32_n_5 : STD_LOGIC;
  signal S32_n_6 : STD_LOGIC;
  signal S32_n_7 : STD_LOGIC;
  signal S32_n_8 : STD_LOGIC;
  signal S32_n_9 : STD_LOGIC;
  signal S64_n_0 : STD_LOGIC;
  signal S64_n_1 : STD_LOGIC;
  signal S64_n_10 : STD_LOGIC;
  signal S64_n_11 : STD_LOGIC;
  signal S64_n_12 : STD_LOGIC;
  signal S64_n_13 : STD_LOGIC;
  signal S64_n_14 : STD_LOGIC;
  signal S64_n_15 : STD_LOGIC;
  signal S64_n_16 : STD_LOGIC;
  signal S64_n_17 : STD_LOGIC;
  signal S64_n_18 : STD_LOGIC;
  signal S64_n_19 : STD_LOGIC;
  signal S64_n_2 : STD_LOGIC;
  signal S64_n_20 : STD_LOGIC;
  signal S64_n_21 : STD_LOGIC;
  signal S64_n_22 : STD_LOGIC;
  signal S64_n_23 : STD_LOGIC;
  signal S64_n_24 : STD_LOGIC;
  signal S64_n_25 : STD_LOGIC;
  signal S64_n_26 : STD_LOGIC;
  signal S64_n_27 : STD_LOGIC;
  signal S64_n_28 : STD_LOGIC;
  signal S64_n_29 : STD_LOGIC;
  signal S64_n_3 : STD_LOGIC;
  signal S64_n_30 : STD_LOGIC;
  signal S64_n_31 : STD_LOGIC;
  signal S64_n_32 : STD_LOGIC;
  signal S64_n_33 : STD_LOGIC;
  signal S64_n_34 : STD_LOGIC;
  signal S64_n_35 : STD_LOGIC;
  signal S64_n_36 : STD_LOGIC;
  signal S64_n_37 : STD_LOGIC;
  signal S64_n_38 : STD_LOGIC;
  signal S64_n_39 : STD_LOGIC;
  signal S64_n_4 : STD_LOGIC;
  signal S64_n_40 : STD_LOGIC;
  signal S64_n_41 : STD_LOGIC;
  signal S64_n_42 : STD_LOGIC;
  signal S64_n_43 : STD_LOGIC;
  signal S64_n_44 : STD_LOGIC;
  signal S64_n_45 : STD_LOGIC;
  signal S64_n_46 : STD_LOGIC;
  signal S64_n_47 : STD_LOGIC;
  signal S64_n_48 : STD_LOGIC;
  signal S64_n_49 : STD_LOGIC;
  signal S64_n_5 : STD_LOGIC;
  signal S64_n_50 : STD_LOGIC;
  signal S64_n_51 : STD_LOGIC;
  signal S64_n_52 : STD_LOGIC;
  signal S64_n_53 : STD_LOGIC;
  signal S64_n_54 : STD_LOGIC;
  signal S64_n_55 : STD_LOGIC;
  signal S64_n_56 : STD_LOGIC;
  signal S64_n_57 : STD_LOGIC;
  signal S64_n_58 : STD_LOGIC;
  signal S64_n_59 : STD_LOGIC;
  signal S64_n_6 : STD_LOGIC;
  signal S64_n_60 : STD_LOGIC;
  signal S64_n_61 : STD_LOGIC;
  signal S64_n_62 : STD_LOGIC;
  signal S64_n_63 : STD_LOGIC;
  signal S64_n_64 : STD_LOGIC;
  signal S64_n_65 : STD_LOGIC;
  signal S64_n_66 : STD_LOGIC;
  signal S64_n_67 : STD_LOGIC;
  signal S64_n_68 : STD_LOGIC;
  signal S64_n_69 : STD_LOGIC;
  signal S64_n_7 : STD_LOGIC;
  signal S64_n_70 : STD_LOGIC;
  signal S64_n_71 : STD_LOGIC;
  signal S64_n_72 : STD_LOGIC;
  signal S64_n_73 : STD_LOGIC;
  signal S64_n_74 : STD_LOGIC;
  signal S64_n_75 : STD_LOGIC;
  signal S64_n_76 : STD_LOGIC;
  signal S64_n_77 : STD_LOGIC;
  signal S64_n_78 : STD_LOGIC;
  signal S64_n_79 : STD_LOGIC;
  signal S64_n_8 : STD_LOGIC;
  signal S64_n_80 : STD_LOGIC;
  signal S64_n_81 : STD_LOGIC;
  signal S64_n_82 : STD_LOGIC;
  signal S64_n_83 : STD_LOGIC;
  signal S64_n_84 : STD_LOGIC;
  signal S64_n_85 : STD_LOGIC;
  signal S64_n_86 : STD_LOGIC;
  signal S64_n_87 : STD_LOGIC;
  signal S64_n_88 : STD_LOGIC;
  signal S64_n_89 : STD_LOGIC;
  signal S64_n_9 : STD_LOGIC;
  signal S64_n_90 : STD_LOGIC;
  signal S64_n_91 : STD_LOGIC;
  signal S64_n_92 : STD_LOGIC;
  signal S64_n_93 : STD_LOGIC;
  signal S64_n_94 : STD_LOGIC;
  signal en : STD_LOGIC;
  signal multiplicand : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal shiftright : STD_LOGIC;
begin
  DONE <= \^done\;
  R(63 downto 0) <= \^r\(63 downto 0);
C: entity work.design_1_Multiplier_32_bit_0_0_counter5bit
     port map (
      CLK => CLK,
      D(1) => C_n_0,
      D(0) => C_n_1,
      Q(2) => \^done\,
      Q(1) => shiftright,
      Q(0) => multiplicand,
      RST => RST
    );
CU: entity work.design_1_Multiplier_32_bit_0_0_control_unit
     port map (
      A(31 downto 0) => A(31 downto 0),
      \A[31]\(31) => CU_n_37,
      \A[31]\(30) => CU_n_38,
      \A[31]\(29) => CU_n_39,
      \A[31]\(28) => CU_n_40,
      \A[31]\(27) => CU_n_41,
      \A[31]\(26) => CU_n_42,
      \A[31]\(25) => CU_n_43,
      \A[31]\(24) => CU_n_44,
      \A[31]\(23) => CU_n_45,
      \A[31]\(22) => CU_n_46,
      \A[31]\(21) => CU_n_47,
      \A[31]\(20) => CU_n_48,
      \A[31]\(19) => CU_n_49,
      \A[31]\(18) => CU_n_50,
      \A[31]\(17) => CU_n_51,
      \A[31]\(16) => CU_n_52,
      \A[31]\(15) => CU_n_53,
      \A[31]\(14) => CU_n_54,
      \A[31]\(13) => CU_n_55,
      \A[31]\(12) => CU_n_56,
      \A[31]\(11) => CU_n_57,
      \A[31]\(10) => CU_n_58,
      \A[31]\(9) => CU_n_59,
      \A[31]\(8) => CU_n_60,
      \A[31]\(7) => CU_n_61,
      \A[31]\(6) => CU_n_62,
      \A[31]\(5) => CU_n_63,
      \A[31]\(4) => CU_n_64,
      \A[31]\(3) => CU_n_65,
      \A[31]\(2) => CU_n_66,
      \A[31]\(1) => CU_n_67,
      \A[31]\(0) => CU_n_68,
      B(31 downto 0) => B(31 downto 0),
      CLK => CLK,
      D(31 downto 0) => p_1_in(31 downto 0),
      E(0) => CU_n_0,
      \FSM_onehot_state_reg[2]_0\(1) => C_n_0,
      \FSM_onehot_state_reg[2]_0\(0) => C_n_1,
      Q(2) => \^done\,
      Q(1) => shiftright,
      Q(0) => multiplicand,
      \Q_reg_reg[30]\(31) => S32_n_0,
      \Q_reg_reg[30]\(30) => S32_n_1,
      \Q_reg_reg[30]\(29) => S32_n_2,
      \Q_reg_reg[30]\(28) => S32_n_3,
      \Q_reg_reg[30]\(27) => S32_n_4,
      \Q_reg_reg[30]\(26) => S32_n_5,
      \Q_reg_reg[30]\(25) => S32_n_6,
      \Q_reg_reg[30]\(24) => S32_n_7,
      \Q_reg_reg[30]\(23) => S32_n_8,
      \Q_reg_reg[30]\(22) => S32_n_9,
      \Q_reg_reg[30]\(21) => S32_n_10,
      \Q_reg_reg[30]\(20) => S32_n_11,
      \Q_reg_reg[30]\(19) => S32_n_12,
      \Q_reg_reg[30]\(18) => S32_n_13,
      \Q_reg_reg[30]\(17) => S32_n_14,
      \Q_reg_reg[30]\(16) => S32_n_15,
      \Q_reg_reg[30]\(15) => S32_n_16,
      \Q_reg_reg[30]\(14) => S32_n_17,
      \Q_reg_reg[30]\(13) => S32_n_18,
      \Q_reg_reg[30]\(12) => S32_n_19,
      \Q_reg_reg[30]\(11) => S32_n_20,
      \Q_reg_reg[30]\(10) => S32_n_21,
      \Q_reg_reg[30]\(9) => S32_n_22,
      \Q_reg_reg[30]\(8) => S32_n_23,
      \Q_reg_reg[30]\(7) => S32_n_24,
      \Q_reg_reg[30]\(6) => S32_n_25,
      \Q_reg_reg[30]\(5) => S32_n_26,
      \Q_reg_reg[30]\(4) => S32_n_27,
      \Q_reg_reg[30]\(3) => S32_n_28,
      \Q_reg_reg[30]\(2) => S32_n_29,
      \Q_reg_reg[30]\(1) => S32_n_30,
      \Q_reg_reg[30]\(0) => Q32,
      \Q_reg_reg[31]\(30) => S64_n_4,
      \Q_reg_reg[31]\(29) => S64_n_5,
      \Q_reg_reg[31]\(28) => S64_n_6,
      \Q_reg_reg[31]\(27) => S64_n_7,
      \Q_reg_reg[31]\(26) => S64_n_8,
      \Q_reg_reg[31]\(25) => S64_n_9,
      \Q_reg_reg[31]\(24) => S64_n_10,
      \Q_reg_reg[31]\(23) => S64_n_11,
      \Q_reg_reg[31]\(22) => S64_n_12,
      \Q_reg_reg[31]\(21) => S64_n_13,
      \Q_reg_reg[31]\(20) => S64_n_14,
      \Q_reg_reg[31]\(19) => S64_n_15,
      \Q_reg_reg[31]\(18) => S64_n_16,
      \Q_reg_reg[31]\(17) => S64_n_17,
      \Q_reg_reg[31]\(16) => S64_n_18,
      \Q_reg_reg[31]\(15) => S64_n_19,
      \Q_reg_reg[31]\(14) => S64_n_20,
      \Q_reg_reg[31]\(13) => S64_n_21,
      \Q_reg_reg[31]\(12) => S64_n_22,
      \Q_reg_reg[31]\(11) => S64_n_23,
      \Q_reg_reg[31]\(10) => S64_n_24,
      \Q_reg_reg[31]\(9) => S64_n_25,
      \Q_reg_reg[31]\(8) => S64_n_26,
      \Q_reg_reg[31]\(7) => S64_n_27,
      \Q_reg_reg[31]\(6) => S64_n_28,
      \Q_reg_reg[31]\(5) => S64_n_29,
      \Q_reg_reg[31]\(4) => S64_n_30,
      \Q_reg_reg[31]\(3) => S64_n_31,
      \Q_reg_reg[31]\(2) => S64_n_32,
      \Q_reg_reg[31]\(1) => S64_n_33,
      \Q_reg_reg[31]\(0) => S64_n_34,
      RST => RST,
      en => en
    );
R64: entity work.design_1_Multiplier_32_bit_0_0_flipflop
     port map (
      CLK => CLK,
      O(3) => S64_n_0,
      O(2) => S64_n_1,
      O(1) => S64_n_2,
      O(0) => S64_n_3,
      \Q_reg_reg[11]_0\(3) => S64_n_39,
      \Q_reg_reg[11]_0\(2) => S64_n_40,
      \Q_reg_reg[11]_0\(1) => S64_n_41,
      \Q_reg_reg[11]_0\(0) => S64_n_42,
      \Q_reg_reg[15]_0\(3) => S64_n_43,
      \Q_reg_reg[15]_0\(2) => S64_n_44,
      \Q_reg_reg[15]_0\(1) => S64_n_45,
      \Q_reg_reg[15]_0\(0) => S64_n_46,
      \Q_reg_reg[19]_0\(3) => S64_n_47,
      \Q_reg_reg[19]_0\(2) => S64_n_48,
      \Q_reg_reg[19]_0\(1) => S64_n_49,
      \Q_reg_reg[19]_0\(0) => S64_n_50,
      \Q_reg_reg[23]_0\(3) => S64_n_51,
      \Q_reg_reg[23]_0\(2) => S64_n_52,
      \Q_reg_reg[23]_0\(1) => S64_n_53,
      \Q_reg_reg[23]_0\(0) => S64_n_54,
      \Q_reg_reg[27]_0\(3) => S64_n_55,
      \Q_reg_reg[27]_0\(2) => S64_n_56,
      \Q_reg_reg[27]_0\(1) => S64_n_57,
      \Q_reg_reg[27]_0\(0) => S64_n_58,
      \Q_reg_reg[31]_0\(3) => S64_n_59,
      \Q_reg_reg[31]_0\(2) => S64_n_60,
      \Q_reg_reg[31]_0\(1) => S64_n_61,
      \Q_reg_reg[31]_0\(0) => S64_n_62,
      \Q_reg_reg[35]_0\(3) => S64_n_63,
      \Q_reg_reg[35]_0\(2) => S64_n_64,
      \Q_reg_reg[35]_0\(1) => S64_n_65,
      \Q_reg_reg[35]_0\(0) => S64_n_66,
      \Q_reg_reg[39]_0\(3) => S64_n_67,
      \Q_reg_reg[39]_0\(2) => S64_n_68,
      \Q_reg_reg[39]_0\(1) => S64_n_69,
      \Q_reg_reg[39]_0\(0) => S64_n_70,
      \Q_reg_reg[43]_0\(3) => S64_n_71,
      \Q_reg_reg[43]_0\(2) => S64_n_72,
      \Q_reg_reg[43]_0\(1) => S64_n_73,
      \Q_reg_reg[43]_0\(0) => S64_n_74,
      \Q_reg_reg[47]_0\(3) => S64_n_75,
      \Q_reg_reg[47]_0\(2) => S64_n_76,
      \Q_reg_reg[47]_0\(1) => S64_n_77,
      \Q_reg_reg[47]_0\(0) => S64_n_78,
      \Q_reg_reg[51]_0\(3) => S64_n_79,
      \Q_reg_reg[51]_0\(2) => S64_n_80,
      \Q_reg_reg[51]_0\(1) => S64_n_81,
      \Q_reg_reg[51]_0\(0) => S64_n_82,
      \Q_reg_reg[55]_0\(3) => S64_n_83,
      \Q_reg_reg[55]_0\(2) => S64_n_84,
      \Q_reg_reg[55]_0\(1) => S64_n_85,
      \Q_reg_reg[55]_0\(0) => S64_n_86,
      \Q_reg_reg[59]_0\(3) => S64_n_87,
      \Q_reg_reg[59]_0\(2) => S64_n_88,
      \Q_reg_reg[59]_0\(1) => S64_n_89,
      \Q_reg_reg[59]_0\(0) => S64_n_90,
      \Q_reg_reg[63]_0\(3) => S64_n_91,
      \Q_reg_reg[63]_0\(2) => S64_n_92,
      \Q_reg_reg[63]_0\(1) => S64_n_93,
      \Q_reg_reg[63]_0\(0) => S64_n_94,
      \Q_reg_reg[7]_0\(3) => S64_n_35,
      \Q_reg_reg[7]_0\(2) => S64_n_36,
      \Q_reg_reg[7]_0\(1) => S64_n_37,
      \Q_reg_reg[7]_0\(0) => S64_n_38,
      R(63 downto 0) => \^r\(63 downto 0),
      RST => RST,
      en => en
    );
S32: entity work.design_1_Multiplier_32_bit_0_0_shift32bit
     port map (
      CLK => CLK,
      D(31 downto 0) => p_1_in(31 downto 0),
      E(0) => CU_n_0,
      Q(31) => S32_n_0,
      Q(30) => S32_n_1,
      Q(29) => S32_n_2,
      Q(28) => S32_n_3,
      Q(27) => S32_n_4,
      Q(26) => S32_n_5,
      Q(25) => S32_n_6,
      Q(24) => S32_n_7,
      Q(23) => S32_n_8,
      Q(22) => S32_n_9,
      Q(21) => S32_n_10,
      Q(20) => S32_n_11,
      Q(19) => S32_n_12,
      Q(18) => S32_n_13,
      Q(17) => S32_n_14,
      Q(16) => S32_n_15,
      Q(15) => S32_n_16,
      Q(14) => S32_n_17,
      Q(13) => S32_n_18,
      Q(12) => S32_n_19,
      Q(11) => S32_n_20,
      Q(10) => S32_n_21,
      Q(9) => S32_n_22,
      Q(8) => S32_n_23,
      Q(7) => S32_n_24,
      Q(6) => S32_n_25,
      Q(5) => S32_n_26,
      Q(4) => S32_n_27,
      Q(3) => S32_n_28,
      Q(2) => S32_n_29,
      Q(1) => S32_n_30,
      Q(0) => Q32,
      RST => RST
    );
S64: entity work.design_1_Multiplier_32_bit_0_0_shift64bit
     port map (
      CLK => CLK,
      D(31) => CU_n_37,
      D(30) => CU_n_38,
      D(29) => CU_n_39,
      D(28) => CU_n_40,
      D(27) => CU_n_41,
      D(26) => CU_n_42,
      D(25) => CU_n_43,
      D(24) => CU_n_44,
      D(23) => CU_n_45,
      D(22) => CU_n_46,
      D(21) => CU_n_47,
      D(20) => CU_n_48,
      D(19) => CU_n_49,
      D(18) => CU_n_50,
      D(17) => CU_n_51,
      D(16) => CU_n_52,
      D(15) => CU_n_53,
      D(14) => CU_n_54,
      D(13) => CU_n_55,
      D(12) => CU_n_56,
      D(11) => CU_n_57,
      D(10) => CU_n_58,
      D(9) => CU_n_59,
      D(8) => CU_n_60,
      D(7) => CU_n_61,
      D(6) => CU_n_62,
      D(5) => CU_n_63,
      D(4) => CU_n_64,
      D(3) => CU_n_65,
      D(2) => CU_n_66,
      D(1) => CU_n_67,
      D(0) => CU_n_68,
      E(0) => CU_n_0,
      O(3) => S64_n_0,
      O(2) => S64_n_1,
      O(1) => S64_n_2,
      O(0) => S64_n_3,
      Q(0) => multiplicand,
      \Q_reg_reg[11]_0\(3) => S64_n_39,
      \Q_reg_reg[11]_0\(2) => S64_n_40,
      \Q_reg_reg[11]_0\(1) => S64_n_41,
      \Q_reg_reg[11]_0\(0) => S64_n_42,
      \Q_reg_reg[15]_0\(3) => S64_n_43,
      \Q_reg_reg[15]_0\(2) => S64_n_44,
      \Q_reg_reg[15]_0\(1) => S64_n_45,
      \Q_reg_reg[15]_0\(0) => S64_n_46,
      \Q_reg_reg[19]_0\(3) => S64_n_47,
      \Q_reg_reg[19]_0\(2) => S64_n_48,
      \Q_reg_reg[19]_0\(1) => S64_n_49,
      \Q_reg_reg[19]_0\(0) => S64_n_50,
      \Q_reg_reg[23]_0\(3) => S64_n_51,
      \Q_reg_reg[23]_0\(2) => S64_n_52,
      \Q_reg_reg[23]_0\(1) => S64_n_53,
      \Q_reg_reg[23]_0\(0) => S64_n_54,
      \Q_reg_reg[27]_0\(3) => S64_n_55,
      \Q_reg_reg[27]_0\(2) => S64_n_56,
      \Q_reg_reg[27]_0\(1) => S64_n_57,
      \Q_reg_reg[27]_0\(0) => S64_n_58,
      \Q_reg_reg[30]_0\(30) => S64_n_4,
      \Q_reg_reg[30]_0\(29) => S64_n_5,
      \Q_reg_reg[30]_0\(28) => S64_n_6,
      \Q_reg_reg[30]_0\(27) => S64_n_7,
      \Q_reg_reg[30]_0\(26) => S64_n_8,
      \Q_reg_reg[30]_0\(25) => S64_n_9,
      \Q_reg_reg[30]_0\(24) => S64_n_10,
      \Q_reg_reg[30]_0\(23) => S64_n_11,
      \Q_reg_reg[30]_0\(22) => S64_n_12,
      \Q_reg_reg[30]_0\(21) => S64_n_13,
      \Q_reg_reg[30]_0\(20) => S64_n_14,
      \Q_reg_reg[30]_0\(19) => S64_n_15,
      \Q_reg_reg[30]_0\(18) => S64_n_16,
      \Q_reg_reg[30]_0\(17) => S64_n_17,
      \Q_reg_reg[30]_0\(16) => S64_n_18,
      \Q_reg_reg[30]_0\(15) => S64_n_19,
      \Q_reg_reg[30]_0\(14) => S64_n_20,
      \Q_reg_reg[30]_0\(13) => S64_n_21,
      \Q_reg_reg[30]_0\(12) => S64_n_22,
      \Q_reg_reg[30]_0\(11) => S64_n_23,
      \Q_reg_reg[30]_0\(10) => S64_n_24,
      \Q_reg_reg[30]_0\(9) => S64_n_25,
      \Q_reg_reg[30]_0\(8) => S64_n_26,
      \Q_reg_reg[30]_0\(7) => S64_n_27,
      \Q_reg_reg[30]_0\(6) => S64_n_28,
      \Q_reg_reg[30]_0\(5) => S64_n_29,
      \Q_reg_reg[30]_0\(4) => S64_n_30,
      \Q_reg_reg[30]_0\(3) => S64_n_31,
      \Q_reg_reg[30]_0\(2) => S64_n_32,
      \Q_reg_reg[30]_0\(1) => S64_n_33,
      \Q_reg_reg[30]_0\(0) => S64_n_34,
      \Q_reg_reg[31]_0\(3) => S64_n_59,
      \Q_reg_reg[31]_0\(2) => S64_n_60,
      \Q_reg_reg[31]_0\(1) => S64_n_61,
      \Q_reg_reg[31]_0\(0) => S64_n_62,
      \Q_reg_reg[35]_0\(3) => S64_n_63,
      \Q_reg_reg[35]_0\(2) => S64_n_64,
      \Q_reg_reg[35]_0\(1) => S64_n_65,
      \Q_reg_reg[35]_0\(0) => S64_n_66,
      \Q_reg_reg[39]_0\(3) => S64_n_67,
      \Q_reg_reg[39]_0\(2) => S64_n_68,
      \Q_reg_reg[39]_0\(1) => S64_n_69,
      \Q_reg_reg[39]_0\(0) => S64_n_70,
      \Q_reg_reg[43]_0\(3) => S64_n_71,
      \Q_reg_reg[43]_0\(2) => S64_n_72,
      \Q_reg_reg[43]_0\(1) => S64_n_73,
      \Q_reg_reg[43]_0\(0) => S64_n_74,
      \Q_reg_reg[47]_0\(3) => S64_n_75,
      \Q_reg_reg[47]_0\(2) => S64_n_76,
      \Q_reg_reg[47]_0\(1) => S64_n_77,
      \Q_reg_reg[47]_0\(0) => S64_n_78,
      \Q_reg_reg[51]_0\(3) => S64_n_79,
      \Q_reg_reg[51]_0\(2) => S64_n_80,
      \Q_reg_reg[51]_0\(1) => S64_n_81,
      \Q_reg_reg[51]_0\(0) => S64_n_82,
      \Q_reg_reg[55]_0\(3) => S64_n_83,
      \Q_reg_reg[55]_0\(2) => S64_n_84,
      \Q_reg_reg[55]_0\(1) => S64_n_85,
      \Q_reg_reg[55]_0\(0) => S64_n_86,
      \Q_reg_reg[59]_0\(3) => S64_n_87,
      \Q_reg_reg[59]_0\(2) => S64_n_88,
      \Q_reg_reg[59]_0\(1) => S64_n_89,
      \Q_reg_reg[59]_0\(0) => S64_n_90,
      \Q_reg_reg[62]_0\(3) => S64_n_91,
      \Q_reg_reg[62]_0\(2) => S64_n_92,
      \Q_reg_reg[62]_0\(1) => S64_n_93,
      \Q_reg_reg[62]_0\(0) => S64_n_94,
      \Q_reg_reg[7]_0\(3) => S64_n_35,
      \Q_reg_reg[7]_0\(2) => S64_n_36,
      \Q_reg_reg[7]_0\(1) => S64_n_37,
      \Q_reg_reg[7]_0\(0) => S64_n_38,
      R(63 downto 0) => \^r\(63 downto 0),
      RST => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Multiplier_32_bit_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DONE : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Multiplier_32_bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Multiplier_32_bit_0_0 : entity is "design_1_Multiplier_32_bit_0_0,Multiplier_32_bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Multiplier_32_bit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Multiplier_32_bit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Multiplier_32_bit_0_0 : entity is "Multiplier_32_bit,Vivado 2018.3";
end design_1_Multiplier_32_bit_0_0;

architecture STRUCTURE of design_1_Multiplier_32_bit_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute x_interface_parameter of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_Multiplier_32_bit_0_0_Multiplier_32_bit
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      CLK => CLK,
      DONE => DONE,
      R(63 downto 0) => R(63 downto 0),
      RST => RST
    );
end STRUCTURE;
