-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Sep 19 10:29:42 2023
-- Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adder32bit_0_0_sim_netlist.vhdl
-- Design      : design_1_adder32bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    K : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_adder32bit_0_0,adder32bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adder32bit,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \Cout00_out__13\ : STD_LOGIC;
  signal \Cout00_out__18\ : STD_LOGIC;
  signal \Cout00_out__23\ : STD_LOGIC;
  signal \Cout00_out__28\ : STD_LOGIC;
  signal \Cout00_out__3\ : STD_LOGIC;
  signal \Cout00_out__8\ : STD_LOGIC;
  signal \Cout0__13\ : STD_LOGIC;
  signal \Cout0__18\ : STD_LOGIC;
  signal \Cout0__23\ : STD_LOGIC;
  signal \Cout0__28\ : STD_LOGIC;
  signal \Cout0__3\ : STD_LOGIC;
  signal \Cout0__8\ : STD_LOGIC;
  signal \U0/B11_out\ : STD_LOGIC;
  signal \U0/B13_out\ : STD_LOGIC;
  signal \U0/B15_out\ : STD_LOGIC;
  signal \U0/B19_out\ : STD_LOGIC;
  signal \U0/B21_out\ : STD_LOGIC;
  signal \U0/B23_out\ : STD_LOGIC;
  signal \U0/B25_out\ : STD_LOGIC;
  signal \U0/B29_out\ : STD_LOGIC;
  signal \U0/B31_out\ : STD_LOGIC;
  signal \U0/B33_out\ : STD_LOGIC;
  signal \U0/B35_out\ : STD_LOGIC;
  signal \U0/B39_out\ : STD_LOGIC;
  signal \U0/B3_out\ : STD_LOGIC;
  signal \U0/B41_out\ : STD_LOGIC;
  signal \U0/B43_out\ : STD_LOGIC;
  signal \U0/B45_out\ : STD_LOGIC;
  signal \U0/B49_out\ : STD_LOGIC;
  signal \U0/B51_out\ : STD_LOGIC;
  signal \U0/B53_out\ : STD_LOGIC;
  signal \U0/B55_out\ : STD_LOGIC;
  signal \U0/B57_out\ : STD_LOGIC;
  signal \U0/B59_out\ : STD_LOGIC;
  signal \U0/B5_out\ : STD_LOGIC;
  signal \U0/B61_out\ : STD_LOGIC;
  signal \U0/B9_out\ : STD_LOGIC;
  signal \U0/gen_adder[14].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/gen_adder[19].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/gen_adder[24].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/gen_adder[29].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/gen_adder[30].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/gen_adder[31].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/gen_adder[4].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/gen_adder[9].fa/Cout1__0\ : STD_LOGIC;
  signal \U0/int_carry_10\ : STD_LOGIC;
  signal \U0/int_carry_11\ : STD_LOGIC;
  signal \U0/int_carry_12\ : STD_LOGIC;
  signal \U0/int_carry_13\ : STD_LOGIC;
  signal \U0/int_carry_14\ : STD_LOGIC;
  signal \U0/int_carry_15\ : STD_LOGIC;
  signal \U0/int_carry_16\ : STD_LOGIC;
  signal \U0/int_carry_17\ : STD_LOGIC;
  signal \U0/int_carry_18\ : STD_LOGIC;
  signal \U0/int_carry_19\ : STD_LOGIC;
  signal \U0/int_carry_2\ : STD_LOGIC;
  signal \U0/int_carry_20\ : STD_LOGIC;
  signal \U0/int_carry_21\ : STD_LOGIC;
  signal \U0/int_carry_22\ : STD_LOGIC;
  signal \U0/int_carry_23\ : STD_LOGIC;
  signal \U0/int_carry_24\ : STD_LOGIC;
  signal \U0/int_carry_25\ : STD_LOGIC;
  signal \U0/int_carry_26\ : STD_LOGIC;
  signal \U0/int_carry_27\ : STD_LOGIC;
  signal \U0/int_carry_28\ : STD_LOGIC;
  signal \U0/int_carry_29\ : STD_LOGIC;
  signal \U0/int_carry_4\ : STD_LOGIC;
  signal \U0/int_carry_6\ : STD_LOGIC;
  signal \U0/int_carry_7\ : STD_LOGIC;
  signal \U0/int_carry_8\ : STD_LOGIC;
  signal \U0/int_carry_9\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_INST_0_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of Cout_INST_0_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of Cout_INST_0_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of Cout_INST_0_i_5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S[30]_INST_0_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \S[30]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_8\ : label is "soft_lutpair4";
begin
Cout_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => \U0/B61_out\,
      I1 => A(31),
      I2 => \U0/B59_out\,
      I3 => A(30),
      I4 => \Cout00_out__28\,
      I5 => \Cout0__28\,
      O => Cout
    );
Cout_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(31),
      O => \U0/B61_out\
    );
Cout_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => K,
      O => \Cout00_out__28\
    );
Cout_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \U0/int_carry_27\,
      I1 => A(27),
      I2 => \U0/B53_out\,
      I3 => A(28),
      I4 => \U0/B55_out\,
      I5 => \U0/gen_adder[29].fa/Cout1__0\,
      O => \Cout0__28\
    );
Cout_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(27),
      O => \U0/B53_out\
    );
Cout_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(29),
      I1 => K,
      I2 => A(29),
      O => \U0/gen_adder[29].fa/Cout1__0\
    );
\S[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => S(0)
    );
\S[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_10\,
      I1 => A(10),
      I2 => K,
      I3 => B(10),
      O => S(10)
    );
\S[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_10\,
      I1 => A(10),
      I2 => B(10),
      I3 => A(11),
      I4 => K,
      I5 => B(11),
      O => S(11)
    );
\S[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(9),
      I1 => K,
      I2 => A(9),
      I3 => B(8),
      I4 => A(8),
      I5 => \U0/int_carry_8\,
      O => \U0/int_carry_10\
    );
\S[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_11\,
      I1 => A(11),
      I2 => B(11),
      I3 => A(12),
      I4 => K,
      I5 => B(12),
      O => S(12)
    );
\S[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(10),
      I1 => K,
      I2 => A(10),
      I3 => B(9),
      I4 => A(9),
      I5 => \U0/int_carry_9\,
      O => \U0/int_carry_11\
    );
\S[12]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(4),
      I1 => K,
      I2 => A(4),
      O => \U0/gen_adder[4].fa/Cout1__0\
    );
\S[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(8),
      I1 => K,
      I2 => A(8),
      I3 => B(7),
      I4 => A(7),
      I5 => \U0/int_carry_7\,
      O => \U0/int_carry_9\
    );
\S[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => \U0/B11_out\,
      I1 => A(6),
      I2 => \U0/B9_out\,
      I3 => A(5),
      I4 => \Cout00_out__3\,
      I5 => \Cout0__3\,
      O => \U0/int_carry_7\
    );
\S[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(6),
      O => \U0/B11_out\
    );
\S[12]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(5),
      O => \U0/B9_out\
    );
\S[12]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => K,
      O => \Cout00_out__3\
    );
\S[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \U0/int_carry_2\,
      I1 => A(2),
      I2 => \U0/B3_out\,
      I3 => A(3),
      I4 => \U0/B5_out\,
      I5 => \U0/gen_adder[4].fa/Cout1__0\,
      O => \Cout0__3\
    );
\S[12]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(2),
      O => \U0/B3_out\
    );
\S[12]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(3),
      O => \U0/B5_out\
    );
\S[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_13\,
      I1 => A(13),
      I2 => K,
      I3 => B(13),
      O => S(13)
    );
\S[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_13\,
      I1 => A(13),
      I2 => B(13),
      I3 => A(14),
      I4 => K,
      I5 => B(14),
      O => S(14)
    );
\S[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(12),
      I1 => K,
      I2 => A(12),
      I3 => B(11),
      I4 => A(11),
      I5 => \U0/int_carry_11\,
      O => \U0/int_carry_13\
    );
\S[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_15\,
      I1 => A(15),
      I2 => K,
      I3 => B(15),
      O => S(15)
    );
\S[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_15\,
      I1 => A(15),
      I2 => B(15),
      I3 => A(16),
      I4 => K,
      I5 => B(16),
      O => S(16)
    );
\S[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(14),
      I1 => K,
      I2 => A(14),
      I3 => B(13),
      I4 => A(13),
      I5 => \U0/int_carry_13\,
      O => \U0/int_carry_15\
    );
\S[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_16\,
      I1 => A(16),
      I2 => B(16),
      I3 => A(17),
      I4 => K,
      I5 => B(17),
      O => S(17)
    );
\S[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(15),
      I1 => K,
      I2 => A(15),
      I3 => B(14),
      I4 => A(14),
      I5 => \U0/int_carry_14\,
      O => \U0/int_carry_16\
    );
\S[17]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(9),
      I1 => K,
      I2 => A(9),
      O => \U0/gen_adder[9].fa/Cout1__0\
    );
\S[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(13),
      I1 => K,
      I2 => A(13),
      I3 => B(12),
      I4 => A(12),
      I5 => \U0/int_carry_12\,
      O => \U0/int_carry_14\
    );
\S[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => \U0/B21_out\,
      I1 => A(11),
      I2 => \U0/B19_out\,
      I3 => A(10),
      I4 => \Cout00_out__8\,
      I5 => \Cout0__8\,
      O => \U0/int_carry_12\
    );
\S[17]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(11),
      O => \U0/B21_out\
    );
\S[17]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(10),
      O => \U0/B19_out\
    );
\S[17]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => K,
      O => \Cout00_out__8\
    );
\S[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \U0/int_carry_7\,
      I1 => A(7),
      I2 => \U0/B13_out\,
      I3 => A(8),
      I4 => \U0/B15_out\,
      I5 => \U0/gen_adder[9].fa/Cout1__0\,
      O => \Cout0__8\
    );
\S[17]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(7),
      O => \U0/B13_out\
    );
\S[17]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(8),
      O => \U0/B15_out\
    );
\S[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_18\,
      I1 => A(18),
      I2 => K,
      I3 => B(18),
      O => S(18)
    );
\S[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_18\,
      I1 => A(18),
      I2 => B(18),
      I3 => A(19),
      I4 => K,
      I5 => B(19),
      O => S(19)
    );
\S[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(17),
      I1 => K,
      I2 => A(17),
      I3 => B(16),
      I4 => A(16),
      I5 => \U0/int_carry_16\,
      O => \U0/int_carry_18\
    );
\S[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B87B478"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => A(1),
      I3 => K,
      I4 => B(1),
      O => S(1)
    );
\S[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_20\,
      I1 => A(20),
      I2 => K,
      I3 => B(20),
      O => S(20)
    );
\S[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_20\,
      I1 => A(20),
      I2 => B(20),
      I3 => A(21),
      I4 => K,
      I5 => B(21),
      O => S(21)
    );
\S[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(19),
      I1 => K,
      I2 => A(19),
      I3 => B(18),
      I4 => A(18),
      I5 => \U0/int_carry_18\,
      O => \U0/int_carry_20\
    );
\S[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_21\,
      I1 => A(21),
      I2 => B(21),
      I3 => A(22),
      I4 => K,
      I5 => B(22),
      O => S(22)
    );
\S[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(20),
      I1 => K,
      I2 => A(20),
      I3 => B(19),
      I4 => A(19),
      I5 => \U0/int_carry_19\,
      O => \U0/int_carry_21\
    );
\S[22]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(14),
      I1 => K,
      I2 => A(14),
      O => \U0/gen_adder[14].fa/Cout1__0\
    );
\S[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(18),
      I1 => K,
      I2 => A(18),
      I3 => B(17),
      I4 => A(17),
      I5 => \U0/int_carry_17\,
      O => \U0/int_carry_19\
    );
\S[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => \U0/B31_out\,
      I1 => A(16),
      I2 => \U0/B29_out\,
      I3 => A(15),
      I4 => \Cout00_out__13\,
      I5 => \Cout0__13\,
      O => \U0/int_carry_17\
    );
\S[22]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(16),
      O => \U0/B31_out\
    );
\S[22]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(15),
      O => \U0/B29_out\
    );
\S[22]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => K,
      O => \Cout00_out__13\
    );
\S[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \U0/int_carry_12\,
      I1 => A(12),
      I2 => \U0/B23_out\,
      I3 => A(13),
      I4 => \U0/B25_out\,
      I5 => \U0/gen_adder[14].fa/Cout1__0\,
      O => \Cout0__13\
    );
\S[22]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(12),
      O => \U0/B23_out\
    );
\S[22]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(13),
      O => \U0/B25_out\
    );
\S[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_23\,
      I1 => A(23),
      I2 => K,
      I3 => B(23),
      O => S(23)
    );
\S[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_23\,
      I1 => A(23),
      I2 => B(23),
      I3 => A(24),
      I4 => K,
      I5 => B(24),
      O => S(24)
    );
\S[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(22),
      I1 => K,
      I2 => A(22),
      I3 => B(21),
      I4 => A(21),
      I5 => \U0/int_carry_21\,
      O => \U0/int_carry_23\
    );
\S[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_25\,
      I1 => A(25),
      I2 => K,
      I3 => B(25),
      O => S(25)
    );
\S[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_25\,
      I1 => A(25),
      I2 => B(25),
      I3 => A(26),
      I4 => K,
      I5 => B(26),
      O => S(26)
    );
\S[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(24),
      I1 => K,
      I2 => A(24),
      I3 => B(23),
      I4 => A(23),
      I5 => \U0/int_carry_23\,
      O => \U0/int_carry_25\
    );
\S[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_26\,
      I1 => A(26),
      I2 => B(26),
      I3 => A(27),
      I4 => K,
      I5 => B(27),
      O => S(27)
    );
\S[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(25),
      I1 => K,
      I2 => A(25),
      I3 => B(24),
      I4 => A(24),
      I5 => \U0/int_carry_24\,
      O => \U0/int_carry_26\
    );
\S[27]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(19),
      I1 => K,
      I2 => A(19),
      O => \U0/gen_adder[19].fa/Cout1__0\
    );
\S[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(23),
      I1 => K,
      I2 => A(23),
      I3 => B(22),
      I4 => A(22),
      I5 => \U0/int_carry_22\,
      O => \U0/int_carry_24\
    );
\S[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => \U0/B41_out\,
      I1 => A(21),
      I2 => \U0/B39_out\,
      I3 => A(20),
      I4 => \Cout00_out__18\,
      I5 => \Cout0__18\,
      O => \U0/int_carry_22\
    );
\S[27]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(21),
      O => \U0/B41_out\
    );
\S[27]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(20),
      O => \U0/B39_out\
    );
\S[27]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      I2 => K,
      O => \Cout00_out__18\
    );
\S[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \U0/int_carry_17\,
      I1 => A(17),
      I2 => \U0/B33_out\,
      I3 => A(18),
      I4 => \U0/B35_out\,
      I5 => \U0/gen_adder[19].fa/Cout1__0\,
      O => \Cout0__18\
    );
\S[27]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(17),
      O => \U0/B33_out\
    );
\S[27]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(18),
      O => \U0/B35_out\
    );
\S[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_28\,
      I1 => A(28),
      I2 => K,
      I3 => B(28),
      O => S(28)
    );
\S[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_28\,
      I1 => A(28),
      I2 => B(28),
      I3 => A(29),
      I4 => K,
      I5 => B(29),
      O => S(29)
    );
\S[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_2\,
      I1 => A(2),
      I2 => K,
      I3 => B(2),
      O => S(2)
    );
\S[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \U0/int_carry_28\,
      I1 => A(28),
      I2 => \U0/B55_out\,
      I3 => A(29),
      I4 => \U0/B57_out\,
      I5 => \U0/gen_adder[30].fa/Cout1__0\,
      O => S(30)
    );
\S[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(27),
      I1 => K,
      I2 => A(27),
      I3 => B(26),
      I4 => A(26),
      I5 => \U0/int_carry_26\,
      O => \U0/int_carry_28\
    );
\S[30]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(28),
      O => \U0/B55_out\
    );
\S[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(30),
      I1 => K,
      I2 => A(30),
      O => \U0/gen_adder[30].fa/Cout1__0\
    );
\S[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \U0/int_carry_29\,
      I1 => A(29),
      I2 => \U0/B57_out\,
      I3 => A(30),
      I4 => \U0/B59_out\,
      I5 => \U0/gen_adder[31].fa/Cout1__0\,
      O => S(31)
    );
\S[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(28),
      I1 => K,
      I2 => A(28),
      I3 => B(27),
      I4 => A(27),
      I5 => \U0/int_carry_27\,
      O => \U0/int_carry_29\
    );
\S[31]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(22),
      O => \U0/B43_out\
    );
\S[31]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(23),
      O => \U0/B45_out\
    );
\S[31]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(24),
      I1 => K,
      I2 => A(24),
      O => \U0/gen_adder[24].fa/Cout1__0\
    );
\S[31]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(29),
      O => \U0/B57_out\
    );
\S[31]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(30),
      O => \U0/B59_out\
    );
\S[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(31),
      I1 => K,
      I2 => A(31),
      O => \U0/gen_adder[31].fa/Cout1__0\
    );
\S[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => \U0/B51_out\,
      I1 => A(26),
      I2 => \U0/B49_out\,
      I3 => A(25),
      I4 => \Cout00_out__23\,
      I5 => \Cout0__23\,
      O => \U0/int_carry_27\
    );
\S[31]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(26),
      O => \U0/B51_out\
    );
\S[31]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(25),
      O => \U0/B49_out\
    );
\S[31]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      I2 => K,
      O => \Cout00_out__23\
    );
\S[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \U0/int_carry_22\,
      I1 => A(22),
      I2 => \U0/B43_out\,
      I3 => A(23),
      I4 => \U0/B45_out\,
      I5 => \U0/gen_adder[24].fa/Cout1__0\,
      O => \Cout0__23\
    );
\S[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_2\,
      I1 => A(2),
      I2 => B(2),
      I3 => A(3),
      I4 => K,
      I5 => B(3),
      O => S(3)
    );
\S[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6E460E4"
    )
        port map (
      I0 => B(1),
      I1 => K,
      I2 => A(1),
      I3 => B(0),
      I4 => A(0),
      O => \U0/int_carry_2\
    );
\S[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_4\,
      I1 => A(4),
      I2 => K,
      I3 => B(4),
      O => S(4)
    );
\S[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_4\,
      I1 => A(4),
      I2 => B(4),
      I3 => A(5),
      I4 => K,
      I5 => B(5),
      O => S(5)
    );
\S[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(3),
      I1 => K,
      I2 => A(3),
      I3 => B(2),
      I4 => A(2),
      I5 => \U0/int_carry_2\,
      O => \U0/int_carry_4\
    );
\S[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_6\,
      I1 => A(6),
      I2 => K,
      I3 => B(6),
      O => S(6)
    );
\S[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_6\,
      I1 => A(6),
      I2 => B(6),
      I3 => A(7),
      I4 => K,
      I5 => B(7),
      O => S(7)
    );
\S[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(5),
      I1 => K,
      I2 => A(5),
      I3 => B(4),
      I4 => A(4),
      I5 => \U0/int_carry_4\,
      O => \U0/int_carry_6\
    );
\S[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/int_carry_8\,
      I1 => A(8),
      I2 => K,
      I3 => B(8),
      O => S(8)
    );
\S[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \U0/int_carry_8\,
      I1 => A(8),
      I2 => B(8),
      I3 => A(9),
      I4 => K,
      I5 => B(9),
      O => S(9)
    );
\S[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => B(7),
      I1 => K,
      I2 => A(7),
      I3 => B(6),
      I4 => A(6),
      I5 => \U0/int_carry_6\,
      O => \U0/int_carry_8\
    );
end STRUCTURE;
