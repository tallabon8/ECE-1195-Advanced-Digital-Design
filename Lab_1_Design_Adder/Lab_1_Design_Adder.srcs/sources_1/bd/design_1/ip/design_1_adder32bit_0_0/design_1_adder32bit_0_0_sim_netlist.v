// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Sep 19 10:29:43 2023
// Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/travisallabon/Lab_1_Design_Adder/Lab_1_Design_Adder.srcs/sources_1/bd/design_1/ip/design_1_adder32bit_0_0/design_1_adder32bit_0_0_sim_netlist.v
// Design      : design_1_adder32bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_adder32bit_0_0,adder32bit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "adder32bit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_adder32bit_0_0
   (A,
    B,
    K,
    S,
    Cout);
  input [31:0]A;
  input [31:0]B;
  input K;
  output [31:0]S;
  output Cout;

  wire [31:0]A;
  wire [31:0]B;
  wire Cout;
  wire Cout00_out__13;
  wire Cout00_out__18;
  wire Cout00_out__23;
  wire Cout00_out__28;
  wire Cout00_out__3;
  wire Cout00_out__8;
  wire Cout0__13;
  wire Cout0__18;
  wire Cout0__23;
  wire Cout0__28;
  wire Cout0__3;
  wire Cout0__8;
  wire K;
  wire [31:0]S;
  wire \U0/B11_out ;
  wire \U0/B13_out ;
  wire \U0/B15_out ;
  wire \U0/B19_out ;
  wire \U0/B21_out ;
  wire \U0/B23_out ;
  wire \U0/B25_out ;
  wire \U0/B29_out ;
  wire \U0/B31_out ;
  wire \U0/B33_out ;
  wire \U0/B35_out ;
  wire \U0/B39_out ;
  wire \U0/B3_out ;
  wire \U0/B41_out ;
  wire \U0/B43_out ;
  wire \U0/B45_out ;
  wire \U0/B49_out ;
  wire \U0/B51_out ;
  wire \U0/B53_out ;
  wire \U0/B55_out ;
  wire \U0/B57_out ;
  wire \U0/B59_out ;
  wire \U0/B5_out ;
  wire \U0/B61_out ;
  wire \U0/B9_out ;
  wire \U0/gen_adder[14].fa/Cout1__0 ;
  wire \U0/gen_adder[19].fa/Cout1__0 ;
  wire \U0/gen_adder[24].fa/Cout1__0 ;
  wire \U0/gen_adder[29].fa/Cout1__0 ;
  wire \U0/gen_adder[30].fa/Cout1__0 ;
  wire \U0/gen_adder[31].fa/Cout1__0 ;
  wire \U0/gen_adder[4].fa/Cout1__0 ;
  wire \U0/gen_adder[9].fa/Cout1__0 ;
  wire \U0/int_carry_10 ;
  wire \U0/int_carry_11 ;
  wire \U0/int_carry_12 ;
  wire \U0/int_carry_13 ;
  wire \U0/int_carry_14 ;
  wire \U0/int_carry_15 ;
  wire \U0/int_carry_16 ;
  wire \U0/int_carry_17 ;
  wire \U0/int_carry_18 ;
  wire \U0/int_carry_19 ;
  wire \U0/int_carry_2 ;
  wire \U0/int_carry_20 ;
  wire \U0/int_carry_21 ;
  wire \U0/int_carry_22 ;
  wire \U0/int_carry_23 ;
  wire \U0/int_carry_24 ;
  wire \U0/int_carry_25 ;
  wire \U0/int_carry_26 ;
  wire \U0/int_carry_27 ;
  wire \U0/int_carry_28 ;
  wire \U0/int_carry_29 ;
  wire \U0/int_carry_4 ;
  wire \U0/int_carry_6 ;
  wire \U0/int_carry_7 ;
  wire \U0/int_carry_8 ;
  wire \U0/int_carry_9 ;

  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    Cout_INST_0
       (.I0(\U0/B61_out ),
        .I1(A[31]),
        .I2(\U0/B59_out ),
        .I3(A[30]),
        .I4(Cout00_out__28),
        .I5(Cout0__28),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Cout_INST_0_i_1
       (.I0(K),
        .I1(B[31]),
        .O(\U0/B61_out ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    Cout_INST_0_i_2
       (.I0(A[29]),
        .I1(B[29]),
        .I2(K),
        .O(Cout00_out__28));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    Cout_INST_0_i_3
       (.I0(\U0/int_carry_27 ),
        .I1(A[27]),
        .I2(\U0/B53_out ),
        .I3(A[28]),
        .I4(\U0/B55_out ),
        .I5(\U0/gen_adder[29].fa/Cout1__0 ),
        .O(Cout0__28));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Cout_INST_0_i_4
       (.I0(K),
        .I1(B[27]),
        .O(\U0/B53_out ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Cout_INST_0_i_5
       (.I0(B[29]),
        .I1(K),
        .I2(A[29]),
        .O(\U0/gen_adder[29].fa/Cout1__0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[0]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[10]_INST_0 
       (.I0(\U0/int_carry_10 ),
        .I1(A[10]),
        .I2(K),
        .I3(B[10]),
        .O(S[10]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[11]_INST_0 
       (.I0(\U0/int_carry_10 ),
        .I1(A[10]),
        .I2(B[10]),
        .I3(A[11]),
        .I4(K),
        .I5(B[11]),
        .O(S[11]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[11]_INST_0_i_1 
       (.I0(B[9]),
        .I1(K),
        .I2(A[9]),
        .I3(B[8]),
        .I4(A[8]),
        .I5(\U0/int_carry_8 ),
        .O(\U0/int_carry_10 ));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[12]_INST_0 
       (.I0(\U0/int_carry_11 ),
        .I1(A[11]),
        .I2(B[11]),
        .I3(A[12]),
        .I4(K),
        .I5(B[12]),
        .O(S[12]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[12]_INST_0_i_1 
       (.I0(B[10]),
        .I1(K),
        .I2(A[10]),
        .I3(B[9]),
        .I4(A[9]),
        .I5(\U0/int_carry_9 ),
        .O(\U0/int_carry_11 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_10 
       (.I0(B[4]),
        .I1(K),
        .I2(A[4]),
        .O(\U0/gen_adder[4].fa/Cout1__0 ));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[12]_INST_0_i_2 
       (.I0(B[8]),
        .I1(K),
        .I2(A[8]),
        .I3(B[7]),
        .I4(A[7]),
        .I5(\U0/int_carry_7 ),
        .O(\U0/int_carry_9 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \S[12]_INST_0_i_3 
       (.I0(\U0/B11_out ),
        .I1(A[6]),
        .I2(\U0/B9_out ),
        .I3(A[5]),
        .I4(Cout00_out__3),
        .I5(Cout0__3),
        .O(\U0/int_carry_7 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_4 
       (.I0(K),
        .I1(B[6]),
        .O(\U0/B11_out ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_5 
       (.I0(K),
        .I1(B[5]),
        .O(\U0/B9_out ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \S[12]_INST_0_i_6 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(K),
        .O(Cout00_out__3));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \S[12]_INST_0_i_7 
       (.I0(\U0/int_carry_2 ),
        .I1(A[2]),
        .I2(\U0/B3_out ),
        .I3(A[3]),
        .I4(\U0/B5_out ),
        .I5(\U0/gen_adder[4].fa/Cout1__0 ),
        .O(Cout0__3));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_8 
       (.I0(K),
        .I1(B[2]),
        .O(\U0/B3_out ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_9 
       (.I0(K),
        .I1(B[3]),
        .O(\U0/B5_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[13]_INST_0 
       (.I0(\U0/int_carry_13 ),
        .I1(A[13]),
        .I2(K),
        .I3(B[13]),
        .O(S[13]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[14]_INST_0 
       (.I0(\U0/int_carry_13 ),
        .I1(A[13]),
        .I2(B[13]),
        .I3(A[14]),
        .I4(K),
        .I5(B[14]),
        .O(S[14]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[14]_INST_0_i_1 
       (.I0(B[12]),
        .I1(K),
        .I2(A[12]),
        .I3(B[11]),
        .I4(A[11]),
        .I5(\U0/int_carry_11 ),
        .O(\U0/int_carry_13 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[15]_INST_0 
       (.I0(\U0/int_carry_15 ),
        .I1(A[15]),
        .I2(K),
        .I3(B[15]),
        .O(S[15]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[16]_INST_0 
       (.I0(\U0/int_carry_15 ),
        .I1(A[15]),
        .I2(B[15]),
        .I3(A[16]),
        .I4(K),
        .I5(B[16]),
        .O(S[16]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[16]_INST_0_i_1 
       (.I0(B[14]),
        .I1(K),
        .I2(A[14]),
        .I3(B[13]),
        .I4(A[13]),
        .I5(\U0/int_carry_13 ),
        .O(\U0/int_carry_15 ));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[17]_INST_0 
       (.I0(\U0/int_carry_16 ),
        .I1(A[16]),
        .I2(B[16]),
        .I3(A[17]),
        .I4(K),
        .I5(B[17]),
        .O(S[17]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[17]_INST_0_i_1 
       (.I0(B[15]),
        .I1(K),
        .I2(A[15]),
        .I3(B[14]),
        .I4(A[14]),
        .I5(\U0/int_carry_14 ),
        .O(\U0/int_carry_16 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[17]_INST_0_i_10 
       (.I0(B[9]),
        .I1(K),
        .I2(A[9]),
        .O(\U0/gen_adder[9].fa/Cout1__0 ));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[17]_INST_0_i_2 
       (.I0(B[13]),
        .I1(K),
        .I2(A[13]),
        .I3(B[12]),
        .I4(A[12]),
        .I5(\U0/int_carry_12 ),
        .O(\U0/int_carry_14 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \S[17]_INST_0_i_3 
       (.I0(\U0/B21_out ),
        .I1(A[11]),
        .I2(\U0/B19_out ),
        .I3(A[10]),
        .I4(Cout00_out__8),
        .I5(Cout0__8),
        .O(\U0/int_carry_12 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[17]_INST_0_i_4 
       (.I0(K),
        .I1(B[11]),
        .O(\U0/B21_out ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[17]_INST_0_i_5 
       (.I0(K),
        .I1(B[10]),
        .O(\U0/B19_out ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \S[17]_INST_0_i_6 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(K),
        .O(Cout00_out__8));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \S[17]_INST_0_i_7 
       (.I0(\U0/int_carry_7 ),
        .I1(A[7]),
        .I2(\U0/B13_out ),
        .I3(A[8]),
        .I4(\U0/B15_out ),
        .I5(\U0/gen_adder[9].fa/Cout1__0 ),
        .O(Cout0__8));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[17]_INST_0_i_8 
       (.I0(K),
        .I1(B[7]),
        .O(\U0/B13_out ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[17]_INST_0_i_9 
       (.I0(K),
        .I1(B[8]),
        .O(\U0/B15_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[18]_INST_0 
       (.I0(\U0/int_carry_18 ),
        .I1(A[18]),
        .I2(K),
        .I3(B[18]),
        .O(S[18]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[19]_INST_0 
       (.I0(\U0/int_carry_18 ),
        .I1(A[18]),
        .I2(B[18]),
        .I3(A[19]),
        .I4(K),
        .I5(B[19]),
        .O(S[19]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[19]_INST_0_i_1 
       (.I0(B[17]),
        .I1(K),
        .I2(A[17]),
        .I3(B[16]),
        .I4(A[16]),
        .I5(\U0/int_carry_16 ),
        .O(\U0/int_carry_18 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \S[1]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(A[1]),
        .I3(K),
        .I4(B[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[20]_INST_0 
       (.I0(\U0/int_carry_20 ),
        .I1(A[20]),
        .I2(K),
        .I3(B[20]),
        .O(S[20]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[21]_INST_0 
       (.I0(\U0/int_carry_20 ),
        .I1(A[20]),
        .I2(B[20]),
        .I3(A[21]),
        .I4(K),
        .I5(B[21]),
        .O(S[21]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[21]_INST_0_i_1 
       (.I0(B[19]),
        .I1(K),
        .I2(A[19]),
        .I3(B[18]),
        .I4(A[18]),
        .I5(\U0/int_carry_18 ),
        .O(\U0/int_carry_20 ));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[22]_INST_0 
       (.I0(\U0/int_carry_21 ),
        .I1(A[21]),
        .I2(B[21]),
        .I3(A[22]),
        .I4(K),
        .I5(B[22]),
        .O(S[22]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[22]_INST_0_i_1 
       (.I0(B[20]),
        .I1(K),
        .I2(A[20]),
        .I3(B[19]),
        .I4(A[19]),
        .I5(\U0/int_carry_19 ),
        .O(\U0/int_carry_21 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[22]_INST_0_i_10 
       (.I0(B[14]),
        .I1(K),
        .I2(A[14]),
        .O(\U0/gen_adder[14].fa/Cout1__0 ));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[22]_INST_0_i_2 
       (.I0(B[18]),
        .I1(K),
        .I2(A[18]),
        .I3(B[17]),
        .I4(A[17]),
        .I5(\U0/int_carry_17 ),
        .O(\U0/int_carry_19 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \S[22]_INST_0_i_3 
       (.I0(\U0/B31_out ),
        .I1(A[16]),
        .I2(\U0/B29_out ),
        .I3(A[15]),
        .I4(Cout00_out__13),
        .I5(Cout0__13),
        .O(\U0/int_carry_17 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[22]_INST_0_i_4 
       (.I0(K),
        .I1(B[16]),
        .O(\U0/B31_out ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[22]_INST_0_i_5 
       (.I0(K),
        .I1(B[15]),
        .O(\U0/B29_out ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \S[22]_INST_0_i_6 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(K),
        .O(Cout00_out__13));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \S[22]_INST_0_i_7 
       (.I0(\U0/int_carry_12 ),
        .I1(A[12]),
        .I2(\U0/B23_out ),
        .I3(A[13]),
        .I4(\U0/B25_out ),
        .I5(\U0/gen_adder[14].fa/Cout1__0 ),
        .O(Cout0__13));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[22]_INST_0_i_8 
       (.I0(K),
        .I1(B[12]),
        .O(\U0/B23_out ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[22]_INST_0_i_9 
       (.I0(K),
        .I1(B[13]),
        .O(\U0/B25_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[23]_INST_0 
       (.I0(\U0/int_carry_23 ),
        .I1(A[23]),
        .I2(K),
        .I3(B[23]),
        .O(S[23]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[24]_INST_0 
       (.I0(\U0/int_carry_23 ),
        .I1(A[23]),
        .I2(B[23]),
        .I3(A[24]),
        .I4(K),
        .I5(B[24]),
        .O(S[24]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[24]_INST_0_i_1 
       (.I0(B[22]),
        .I1(K),
        .I2(A[22]),
        .I3(B[21]),
        .I4(A[21]),
        .I5(\U0/int_carry_21 ),
        .O(\U0/int_carry_23 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[25]_INST_0 
       (.I0(\U0/int_carry_25 ),
        .I1(A[25]),
        .I2(K),
        .I3(B[25]),
        .O(S[25]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[26]_INST_0 
       (.I0(\U0/int_carry_25 ),
        .I1(A[25]),
        .I2(B[25]),
        .I3(A[26]),
        .I4(K),
        .I5(B[26]),
        .O(S[26]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[26]_INST_0_i_1 
       (.I0(B[24]),
        .I1(K),
        .I2(A[24]),
        .I3(B[23]),
        .I4(A[23]),
        .I5(\U0/int_carry_23 ),
        .O(\U0/int_carry_25 ));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[27]_INST_0 
       (.I0(\U0/int_carry_26 ),
        .I1(A[26]),
        .I2(B[26]),
        .I3(A[27]),
        .I4(K),
        .I5(B[27]),
        .O(S[27]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[27]_INST_0_i_1 
       (.I0(B[25]),
        .I1(K),
        .I2(A[25]),
        .I3(B[24]),
        .I4(A[24]),
        .I5(\U0/int_carry_24 ),
        .O(\U0/int_carry_26 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[27]_INST_0_i_10 
       (.I0(B[19]),
        .I1(K),
        .I2(A[19]),
        .O(\U0/gen_adder[19].fa/Cout1__0 ));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[27]_INST_0_i_2 
       (.I0(B[23]),
        .I1(K),
        .I2(A[23]),
        .I3(B[22]),
        .I4(A[22]),
        .I5(\U0/int_carry_22 ),
        .O(\U0/int_carry_24 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \S[27]_INST_0_i_3 
       (.I0(\U0/B41_out ),
        .I1(A[21]),
        .I2(\U0/B39_out ),
        .I3(A[20]),
        .I4(Cout00_out__18),
        .I5(Cout0__18),
        .O(\U0/int_carry_22 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[27]_INST_0_i_4 
       (.I0(K),
        .I1(B[21]),
        .O(\U0/B41_out ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[27]_INST_0_i_5 
       (.I0(K),
        .I1(B[20]),
        .O(\U0/B39_out ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \S[27]_INST_0_i_6 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(K),
        .O(Cout00_out__18));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \S[27]_INST_0_i_7 
       (.I0(\U0/int_carry_17 ),
        .I1(A[17]),
        .I2(\U0/B33_out ),
        .I3(A[18]),
        .I4(\U0/B35_out ),
        .I5(\U0/gen_adder[19].fa/Cout1__0 ),
        .O(Cout0__18));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[27]_INST_0_i_8 
       (.I0(K),
        .I1(B[17]),
        .O(\U0/B33_out ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[27]_INST_0_i_9 
       (.I0(K),
        .I1(B[18]),
        .O(\U0/B35_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[28]_INST_0 
       (.I0(\U0/int_carry_28 ),
        .I1(A[28]),
        .I2(K),
        .I3(B[28]),
        .O(S[28]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[29]_INST_0 
       (.I0(\U0/int_carry_28 ),
        .I1(A[28]),
        .I2(B[28]),
        .I3(A[29]),
        .I4(K),
        .I5(B[29]),
        .O(S[29]));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[2]_INST_0 
       (.I0(\U0/int_carry_2 ),
        .I1(A[2]),
        .I2(K),
        .I3(B[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \S[30]_INST_0 
       (.I0(\U0/int_carry_28 ),
        .I1(A[28]),
        .I2(\U0/B55_out ),
        .I3(A[29]),
        .I4(\U0/B57_out ),
        .I5(\U0/gen_adder[30].fa/Cout1__0 ),
        .O(S[30]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[30]_INST_0_i_1 
       (.I0(B[27]),
        .I1(K),
        .I2(A[27]),
        .I3(B[26]),
        .I4(A[26]),
        .I5(\U0/int_carry_26 ),
        .O(\U0/int_carry_28 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[30]_INST_0_i_2 
       (.I0(K),
        .I1(B[28]),
        .O(\U0/B55_out ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[30]_INST_0_i_3 
       (.I0(B[30]),
        .I1(K),
        .I2(A[30]),
        .O(\U0/gen_adder[30].fa/Cout1__0 ));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \S[31]_INST_0 
       (.I0(\U0/int_carry_29 ),
        .I1(A[29]),
        .I2(\U0/B57_out ),
        .I3(A[30]),
        .I4(\U0/B59_out ),
        .I5(\U0/gen_adder[31].fa/Cout1__0 ),
        .O(S[31]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[31]_INST_0_i_1 
       (.I0(B[28]),
        .I1(K),
        .I2(A[28]),
        .I3(B[27]),
        .I4(A[27]),
        .I5(\U0/int_carry_27 ),
        .O(\U0/int_carry_29 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[31]_INST_0_i_10 
       (.I0(K),
        .I1(B[22]),
        .O(\U0/B43_out ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[31]_INST_0_i_11 
       (.I0(K),
        .I1(B[23]),
        .O(\U0/B45_out ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[31]_INST_0_i_12 
       (.I0(B[24]),
        .I1(K),
        .I2(A[24]),
        .O(\U0/gen_adder[24].fa/Cout1__0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[31]_INST_0_i_2 
       (.I0(K),
        .I1(B[29]),
        .O(\U0/B57_out ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[31]_INST_0_i_3 
       (.I0(K),
        .I1(B[30]),
        .O(\U0/B59_out ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[31]_INST_0_i_4 
       (.I0(B[31]),
        .I1(K),
        .I2(A[31]),
        .O(\U0/gen_adder[31].fa/Cout1__0 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \S[31]_INST_0_i_5 
       (.I0(\U0/B51_out ),
        .I1(A[26]),
        .I2(\U0/B49_out ),
        .I3(A[25]),
        .I4(Cout00_out__23),
        .I5(Cout0__23),
        .O(\U0/int_carry_27 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[31]_INST_0_i_6 
       (.I0(K),
        .I1(B[26]),
        .O(\U0/B51_out ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[31]_INST_0_i_7 
       (.I0(K),
        .I1(B[25]),
        .O(\U0/B49_out ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \S[31]_INST_0_i_8 
       (.I0(A[24]),
        .I1(B[24]),
        .I2(K),
        .O(Cout00_out__23));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \S[31]_INST_0_i_9 
       (.I0(\U0/int_carry_22 ),
        .I1(A[22]),
        .I2(\U0/B43_out ),
        .I3(A[23]),
        .I4(\U0/B45_out ),
        .I5(\U0/gen_adder[24].fa/Cout1__0 ),
        .O(Cout0__23));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[3]_INST_0 
       (.I0(\U0/int_carry_2 ),
        .I1(A[2]),
        .I2(B[2]),
        .I3(A[3]),
        .I4(K),
        .I5(B[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hF6E460E4)) 
    \S[3]_INST_0_i_1 
       (.I0(B[1]),
        .I1(K),
        .I2(A[1]),
        .I3(B[0]),
        .I4(A[0]),
        .O(\U0/int_carry_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[4]_INST_0 
       (.I0(\U0/int_carry_4 ),
        .I1(A[4]),
        .I2(K),
        .I3(B[4]),
        .O(S[4]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[5]_INST_0 
       (.I0(\U0/int_carry_4 ),
        .I1(A[4]),
        .I2(B[4]),
        .I3(A[5]),
        .I4(K),
        .I5(B[5]),
        .O(S[5]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[5]_INST_0_i_1 
       (.I0(B[3]),
        .I1(K),
        .I2(A[3]),
        .I3(B[2]),
        .I4(A[2]),
        .I5(\U0/int_carry_2 ),
        .O(\U0/int_carry_4 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[6]_INST_0 
       (.I0(\U0/int_carry_6 ),
        .I1(A[6]),
        .I2(K),
        .I3(B[6]),
        .O(S[6]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[7]_INST_0 
       (.I0(\U0/int_carry_6 ),
        .I1(A[6]),
        .I2(B[6]),
        .I3(A[7]),
        .I4(K),
        .I5(B[7]),
        .O(S[7]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[7]_INST_0_i_1 
       (.I0(B[5]),
        .I1(K),
        .I2(A[5]),
        .I3(B[4]),
        .I4(A[4]),
        .I5(\U0/int_carry_4 ),
        .O(\U0/int_carry_6 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[8]_INST_0 
       (.I0(\U0/int_carry_8 ),
        .I1(A[8]),
        .I2(K),
        .I3(B[8]),
        .O(S[8]));
  LUT6 #(
    .INIT(64'h718EE8178E7117E8)) 
    \S[9]_INST_0 
       (.I0(\U0/int_carry_8 ),
        .I1(A[8]),
        .I2(B[8]),
        .I3(A[9]),
        .I4(K),
        .I5(B[9]),
        .O(S[9]));
  LUT6 #(
    .INIT(64'hF6F672E472E46060)) 
    \S[9]_INST_0_i_1 
       (.I0(B[7]),
        .I1(K),
        .I2(A[7]),
        .I3(B[6]),
        .I4(A[6]),
        .I5(\U0/int_carry_6 ),
        .O(\U0/int_carry_8 ));
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
