// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 12 12:08:51 2023
// Host        : TRAVISALLABEAB0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Multiplier_32_bit_0_0_sim_netlist.v
// Design      : design_1_Multiplier_32_bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Multiplier_32_bit
   (DONE,
    R,
    CLK,
    RST,
    B,
    A);
  output DONE;
  output [63:0]R;
  input CLK;
  input RST;
  input [31:0]B;
  input [31:0]A;

  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire CU_n_0;
  wire CU_n_37;
  wire CU_n_38;
  wire CU_n_39;
  wire CU_n_40;
  wire CU_n_41;
  wire CU_n_42;
  wire CU_n_43;
  wire CU_n_44;
  wire CU_n_45;
  wire CU_n_46;
  wire CU_n_47;
  wire CU_n_48;
  wire CU_n_49;
  wire CU_n_50;
  wire CU_n_51;
  wire CU_n_52;
  wire CU_n_53;
  wire CU_n_54;
  wire CU_n_55;
  wire CU_n_56;
  wire CU_n_57;
  wire CU_n_58;
  wire CU_n_59;
  wire CU_n_60;
  wire CU_n_61;
  wire CU_n_62;
  wire CU_n_63;
  wire CU_n_64;
  wire CU_n_65;
  wire CU_n_66;
  wire CU_n_67;
  wire CU_n_68;
  wire C_n_0;
  wire C_n_1;
  wire DONE;
  wire Q32;
  wire [63:0]R;
  wire RST;
  wire S32_n_0;
  wire S32_n_1;
  wire S32_n_10;
  wire S32_n_11;
  wire S32_n_12;
  wire S32_n_13;
  wire S32_n_14;
  wire S32_n_15;
  wire S32_n_16;
  wire S32_n_17;
  wire S32_n_18;
  wire S32_n_19;
  wire S32_n_2;
  wire S32_n_20;
  wire S32_n_21;
  wire S32_n_22;
  wire S32_n_23;
  wire S32_n_24;
  wire S32_n_25;
  wire S32_n_26;
  wire S32_n_27;
  wire S32_n_28;
  wire S32_n_29;
  wire S32_n_3;
  wire S32_n_30;
  wire S32_n_4;
  wire S32_n_5;
  wire S32_n_6;
  wire S32_n_7;
  wire S32_n_8;
  wire S32_n_9;
  wire S64_n_0;
  wire S64_n_1;
  wire S64_n_10;
  wire S64_n_11;
  wire S64_n_12;
  wire S64_n_13;
  wire S64_n_14;
  wire S64_n_15;
  wire S64_n_16;
  wire S64_n_17;
  wire S64_n_18;
  wire S64_n_19;
  wire S64_n_2;
  wire S64_n_20;
  wire S64_n_21;
  wire S64_n_22;
  wire S64_n_23;
  wire S64_n_24;
  wire S64_n_25;
  wire S64_n_26;
  wire S64_n_27;
  wire S64_n_28;
  wire S64_n_29;
  wire S64_n_3;
  wire S64_n_30;
  wire S64_n_31;
  wire S64_n_32;
  wire S64_n_33;
  wire S64_n_34;
  wire S64_n_35;
  wire S64_n_36;
  wire S64_n_37;
  wire S64_n_38;
  wire S64_n_39;
  wire S64_n_4;
  wire S64_n_40;
  wire S64_n_41;
  wire S64_n_42;
  wire S64_n_43;
  wire S64_n_44;
  wire S64_n_45;
  wire S64_n_46;
  wire S64_n_47;
  wire S64_n_48;
  wire S64_n_49;
  wire S64_n_5;
  wire S64_n_50;
  wire S64_n_51;
  wire S64_n_52;
  wire S64_n_53;
  wire S64_n_54;
  wire S64_n_55;
  wire S64_n_56;
  wire S64_n_57;
  wire S64_n_58;
  wire S64_n_59;
  wire S64_n_6;
  wire S64_n_60;
  wire S64_n_61;
  wire S64_n_62;
  wire S64_n_63;
  wire S64_n_64;
  wire S64_n_65;
  wire S64_n_66;
  wire S64_n_67;
  wire S64_n_68;
  wire S64_n_69;
  wire S64_n_7;
  wire S64_n_70;
  wire S64_n_71;
  wire S64_n_72;
  wire S64_n_73;
  wire S64_n_74;
  wire S64_n_75;
  wire S64_n_76;
  wire S64_n_77;
  wire S64_n_78;
  wire S64_n_79;
  wire S64_n_8;
  wire S64_n_80;
  wire S64_n_81;
  wire S64_n_82;
  wire S64_n_83;
  wire S64_n_84;
  wire S64_n_85;
  wire S64_n_86;
  wire S64_n_87;
  wire S64_n_88;
  wire S64_n_89;
  wire S64_n_9;
  wire S64_n_90;
  wire S64_n_91;
  wire S64_n_92;
  wire S64_n_93;
  wire S64_n_94;
  wire en;
  wire multiplicand;
  wire [31:0]p_1_in;
  wire shiftright;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter5bit C
       (.CLK(CLK),
        .D({C_n_0,C_n_1}),
        .Q({DONE,shiftright,multiplicand}),
        .RST(RST));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_unit CU
       (.A(A),
        .\A[31] ({CU_n_37,CU_n_38,CU_n_39,CU_n_40,CU_n_41,CU_n_42,CU_n_43,CU_n_44,CU_n_45,CU_n_46,CU_n_47,CU_n_48,CU_n_49,CU_n_50,CU_n_51,CU_n_52,CU_n_53,CU_n_54,CU_n_55,CU_n_56,CU_n_57,CU_n_58,CU_n_59,CU_n_60,CU_n_61,CU_n_62,CU_n_63,CU_n_64,CU_n_65,CU_n_66,CU_n_67,CU_n_68}),
        .B(B),
        .CLK(CLK),
        .D(p_1_in),
        .E(CU_n_0),
        .\FSM_onehot_state_reg[2]_0 ({C_n_0,C_n_1}),
        .Q({DONE,shiftright,multiplicand}),
        .\Q_reg_reg[30] ({S32_n_0,S32_n_1,S32_n_2,S32_n_3,S32_n_4,S32_n_5,S32_n_6,S32_n_7,S32_n_8,S32_n_9,S32_n_10,S32_n_11,S32_n_12,S32_n_13,S32_n_14,S32_n_15,S32_n_16,S32_n_17,S32_n_18,S32_n_19,S32_n_20,S32_n_21,S32_n_22,S32_n_23,S32_n_24,S32_n_25,S32_n_26,S32_n_27,S32_n_28,S32_n_29,S32_n_30,Q32}),
        .\Q_reg_reg[31] ({S64_n_4,S64_n_5,S64_n_6,S64_n_7,S64_n_8,S64_n_9,S64_n_10,S64_n_11,S64_n_12,S64_n_13,S64_n_14,S64_n_15,S64_n_16,S64_n_17,S64_n_18,S64_n_19,S64_n_20,S64_n_21,S64_n_22,S64_n_23,S64_n_24,S64_n_25,S64_n_26,S64_n_27,S64_n_28,S64_n_29,S64_n_30,S64_n_31,S64_n_32,S64_n_33,S64_n_34}),
        .RST(RST),
        .en(en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop R64
       (.CLK(CLK),
        .O({S64_n_0,S64_n_1,S64_n_2,S64_n_3}),
        .\Q_reg_reg[11]_0 ({S64_n_39,S64_n_40,S64_n_41,S64_n_42}),
        .\Q_reg_reg[15]_0 ({S64_n_43,S64_n_44,S64_n_45,S64_n_46}),
        .\Q_reg_reg[19]_0 ({S64_n_47,S64_n_48,S64_n_49,S64_n_50}),
        .\Q_reg_reg[23]_0 ({S64_n_51,S64_n_52,S64_n_53,S64_n_54}),
        .\Q_reg_reg[27]_0 ({S64_n_55,S64_n_56,S64_n_57,S64_n_58}),
        .\Q_reg_reg[31]_0 ({S64_n_59,S64_n_60,S64_n_61,S64_n_62}),
        .\Q_reg_reg[35]_0 ({S64_n_63,S64_n_64,S64_n_65,S64_n_66}),
        .\Q_reg_reg[39]_0 ({S64_n_67,S64_n_68,S64_n_69,S64_n_70}),
        .\Q_reg_reg[43]_0 ({S64_n_71,S64_n_72,S64_n_73,S64_n_74}),
        .\Q_reg_reg[47]_0 ({S64_n_75,S64_n_76,S64_n_77,S64_n_78}),
        .\Q_reg_reg[51]_0 ({S64_n_79,S64_n_80,S64_n_81,S64_n_82}),
        .\Q_reg_reg[55]_0 ({S64_n_83,S64_n_84,S64_n_85,S64_n_86}),
        .\Q_reg_reg[59]_0 ({S64_n_87,S64_n_88,S64_n_89,S64_n_90}),
        .\Q_reg_reg[63]_0 ({S64_n_91,S64_n_92,S64_n_93,S64_n_94}),
        .\Q_reg_reg[7]_0 ({S64_n_35,S64_n_36,S64_n_37,S64_n_38}),
        .R(R),
        .RST(RST),
        .en(en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift32bit S32
       (.CLK(CLK),
        .D(p_1_in),
        .E(CU_n_0),
        .Q({S32_n_0,S32_n_1,S32_n_2,S32_n_3,S32_n_4,S32_n_5,S32_n_6,S32_n_7,S32_n_8,S32_n_9,S32_n_10,S32_n_11,S32_n_12,S32_n_13,S32_n_14,S32_n_15,S32_n_16,S32_n_17,S32_n_18,S32_n_19,S32_n_20,S32_n_21,S32_n_22,S32_n_23,S32_n_24,S32_n_25,S32_n_26,S32_n_27,S32_n_28,S32_n_29,S32_n_30,Q32}),
        .RST(RST));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift64bit S64
       (.CLK(CLK),
        .D({CU_n_37,CU_n_38,CU_n_39,CU_n_40,CU_n_41,CU_n_42,CU_n_43,CU_n_44,CU_n_45,CU_n_46,CU_n_47,CU_n_48,CU_n_49,CU_n_50,CU_n_51,CU_n_52,CU_n_53,CU_n_54,CU_n_55,CU_n_56,CU_n_57,CU_n_58,CU_n_59,CU_n_60,CU_n_61,CU_n_62,CU_n_63,CU_n_64,CU_n_65,CU_n_66,CU_n_67,CU_n_68}),
        .E(CU_n_0),
        .O({S64_n_0,S64_n_1,S64_n_2,S64_n_3}),
        .Q(multiplicand),
        .\Q_reg_reg[11]_0 ({S64_n_39,S64_n_40,S64_n_41,S64_n_42}),
        .\Q_reg_reg[15]_0 ({S64_n_43,S64_n_44,S64_n_45,S64_n_46}),
        .\Q_reg_reg[19]_0 ({S64_n_47,S64_n_48,S64_n_49,S64_n_50}),
        .\Q_reg_reg[23]_0 ({S64_n_51,S64_n_52,S64_n_53,S64_n_54}),
        .\Q_reg_reg[27]_0 ({S64_n_55,S64_n_56,S64_n_57,S64_n_58}),
        .\Q_reg_reg[30]_0 ({S64_n_4,S64_n_5,S64_n_6,S64_n_7,S64_n_8,S64_n_9,S64_n_10,S64_n_11,S64_n_12,S64_n_13,S64_n_14,S64_n_15,S64_n_16,S64_n_17,S64_n_18,S64_n_19,S64_n_20,S64_n_21,S64_n_22,S64_n_23,S64_n_24,S64_n_25,S64_n_26,S64_n_27,S64_n_28,S64_n_29,S64_n_30,S64_n_31,S64_n_32,S64_n_33,S64_n_34}),
        .\Q_reg_reg[31]_0 ({S64_n_59,S64_n_60,S64_n_61,S64_n_62}),
        .\Q_reg_reg[35]_0 ({S64_n_63,S64_n_64,S64_n_65,S64_n_66}),
        .\Q_reg_reg[39]_0 ({S64_n_67,S64_n_68,S64_n_69,S64_n_70}),
        .\Q_reg_reg[43]_0 ({S64_n_71,S64_n_72,S64_n_73,S64_n_74}),
        .\Q_reg_reg[47]_0 ({S64_n_75,S64_n_76,S64_n_77,S64_n_78}),
        .\Q_reg_reg[51]_0 ({S64_n_79,S64_n_80,S64_n_81,S64_n_82}),
        .\Q_reg_reg[55]_0 ({S64_n_83,S64_n_84,S64_n_85,S64_n_86}),
        .\Q_reg_reg[59]_0 ({S64_n_87,S64_n_88,S64_n_89,S64_n_90}),
        .\Q_reg_reg[62]_0 ({S64_n_91,S64_n_92,S64_n_93,S64_n_94}),
        .\Q_reg_reg[7]_0 ({S64_n_35,S64_n_36,S64_n_37,S64_n_38}),
        .R(R),
        .RST(RST));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_unit
   (E,
    Q,
    en,
    D,
    \A[31] ,
    \Q_reg_reg[30] ,
    B,
    A,
    \Q_reg_reg[31] ,
    \FSM_onehot_state_reg[2]_0 ,
    CLK,
    RST);
  output [0:0]E;
  output [2:0]Q;
  output en;
  output [31:0]D;
  output [31:0]\A[31] ;
  input [31:0]\Q_reg_reg[30] ;
  input [31:0]B;
  input [31:0]A;
  input [30:0]\Q_reg_reg[31] ;
  input [1:0]\FSM_onehot_state_reg[2]_0 ;
  input CLK;
  input RST;

  wire [31:0]A;
  wire [31:0]\A[31] ;
  wire [31:0]B;
  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[2]_0 ;
  wire [2:0]Q;
  wire [31:0]\Q_reg_reg[30] ;
  wire [30:0]\Q_reg_reg[31] ;
  wire RST;
  wire en;

  (* FSM_ENCODED_STATES = "state1:001,state2:010,state3:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(RST),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "state1:001,state2:010,state3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_state_reg[2]_0 [0]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "state1:001,state2:010,state3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_state_reg[2]_0 [1]),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[0]_i_1 
       (.I0(B[0]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [1]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q_reg[0]_i_1__0 
       (.I0(Q[0]),
        .I1(A[0]),
        .O(\A[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[10]_i_1 
       (.I0(B[10]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [11]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[10]_i_1__0 
       (.I0(A[10]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [9]),
        .O(\A[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[11]_i_1 
       (.I0(B[11]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [12]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[11]_i_1__0 
       (.I0(A[11]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [10]),
        .O(\A[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[12]_i_1 
       (.I0(B[12]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [13]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[12]_i_1__0 
       (.I0(A[12]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [11]),
        .O(\A[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[13]_i_1 
       (.I0(B[13]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [14]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[13]_i_1__0 
       (.I0(A[13]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [12]),
        .O(\A[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[14]_i_1 
       (.I0(B[14]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [15]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[14]_i_1__0 
       (.I0(A[14]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [13]),
        .O(\A[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[15]_i_1 
       (.I0(B[15]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [16]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[15]_i_1__0 
       (.I0(A[15]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [14]),
        .O(\A[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[16]_i_1 
       (.I0(B[16]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [17]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[16]_i_1__0 
       (.I0(A[16]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [15]),
        .O(\A[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[17]_i_1 
       (.I0(B[17]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [18]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[17]_i_1__0 
       (.I0(A[17]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [16]),
        .O(\A[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[18]_i_1 
       (.I0(B[18]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [19]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[18]_i_1__0 
       (.I0(A[18]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [17]),
        .O(\A[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[19]_i_1 
       (.I0(B[19]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [20]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[19]_i_1__0 
       (.I0(A[19]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [18]),
        .O(\A[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[1]_i_1 
       (.I0(B[1]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[1]_i_1__0 
       (.I0(A[1]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [0]),
        .O(\A[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[20]_i_1 
       (.I0(B[20]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [21]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[20]_i_1__0 
       (.I0(A[20]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [19]),
        .O(\A[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[21]_i_1 
       (.I0(B[21]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [22]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[21]_i_1__0 
       (.I0(A[21]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [20]),
        .O(\A[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[22]_i_1 
       (.I0(B[22]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [23]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[22]_i_1__0 
       (.I0(A[22]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [21]),
        .O(\A[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[23]_i_1 
       (.I0(B[23]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [24]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[23]_i_1__0 
       (.I0(A[23]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [22]),
        .O(\A[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[24]_i_1 
       (.I0(B[24]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [25]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[24]_i_1__0 
       (.I0(A[24]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [23]),
        .O(\A[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[25]_i_1 
       (.I0(B[25]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [26]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[25]_i_1__0 
       (.I0(A[25]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [24]),
        .O(\A[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[26]_i_1 
       (.I0(B[26]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [27]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[26]_i_1__0 
       (.I0(A[26]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [25]),
        .O(\A[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[27]_i_1 
       (.I0(B[27]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [28]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[27]_i_1__0 
       (.I0(A[27]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [26]),
        .O(\A[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[28]_i_1 
       (.I0(B[28]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [29]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[28]_i_1__0 
       (.I0(A[28]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [27]),
        .O(\A[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[29]_i_1 
       (.I0(B[29]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [30]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[29]_i_1__0 
       (.I0(A[29]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [28]),
        .O(\A[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[2]_i_1 
       (.I0(B[2]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[2]_i_1__0 
       (.I0(A[2]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [1]),
        .O(\A[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[30]_i_1 
       (.I0(B[30]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [31]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[30]_i_1__0 
       (.I0(A[30]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [29]),
        .O(\A[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Q_reg[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[31]_i_1__0 
       (.I0(A[31]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [30]),
        .O(\A[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q_reg[31]_i_2 
       (.I0(Q[0]),
        .I1(B[31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[3]_i_1 
       (.I0(B[3]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[3]_i_1__0 
       (.I0(A[3]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [2]),
        .O(\A[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[4]_i_1 
       (.I0(B[4]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [5]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[4]_i_1__0 
       (.I0(A[4]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [3]),
        .O(\A[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[5]_i_1 
       (.I0(B[5]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [6]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[5]_i_1__0 
       (.I0(A[5]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [4]),
        .O(\A[31] [5]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q_reg[63]_i_1 
       (.I0(Q[1]),
        .I1(\Q_reg_reg[30] [0]),
        .O(en));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[6]_i_1 
       (.I0(B[6]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [7]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[6]_i_1__0 
       (.I0(A[6]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [5]),
        .O(\A[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[7]_i_1 
       (.I0(B[7]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [8]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[7]_i_1__0 
       (.I0(A[7]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [6]),
        .O(\A[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[8]_i_1 
       (.I0(B[8]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [9]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[8]_i_1__0 
       (.I0(A[8]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [7]),
        .O(\A[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[9]_i_1 
       (.I0(B[9]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[30] [10]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_reg[9]_i_1__0 
       (.I0(A[9]),
        .I1(Q[0]),
        .I2(\Q_reg_reg[31] [8]),
        .O(\A[31] [9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter5bit
   (D,
    Q,
    CLK,
    RST);
  output [1:0]D;
  input [2:0]Q;
  input CLK;
  input RST;

  wire CLK;
  wire [1:0]D;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire [2:0]Q;
  wire RST;
  wire [4:0]counter;
  wire [4:0]p_0_in;

  LUT5 #(
    .INIT(32'hFFFFA2AA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[1]),
        .I1(counter[3]),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(counter[4]),
        .I4(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0020002000FF0000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(counter[3]),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(counter[4]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[4]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(RST),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(RST),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(RST),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(RST),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(RST),
        .D(p_0_in[4]),
        .Q(counter[4]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Multiplier_32_bit_0_0,Multiplier_32_bit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Multiplier_32_bit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    RST,
    R,
    DONE);
  input [31:0]A;
  input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  output [63:0]R;
  output DONE;

  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire DONE;
  wire [63:0]R;
  wire RST;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Multiplier_32_bit U0
       (.A(A),
        .B(B),
        .CLK(CLK),
        .DONE(DONE),
        .R(R),
        .RST(RST));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop
   (R,
    en,
    O,
    CLK,
    RST,
    \Q_reg_reg[7]_0 ,
    \Q_reg_reg[11]_0 ,
    \Q_reg_reg[15]_0 ,
    \Q_reg_reg[19]_0 ,
    \Q_reg_reg[23]_0 ,
    \Q_reg_reg[27]_0 ,
    \Q_reg_reg[31]_0 ,
    \Q_reg_reg[35]_0 ,
    \Q_reg_reg[39]_0 ,
    \Q_reg_reg[43]_0 ,
    \Q_reg_reg[47]_0 ,
    \Q_reg_reg[51]_0 ,
    \Q_reg_reg[55]_0 ,
    \Q_reg_reg[59]_0 ,
    \Q_reg_reg[63]_0 );
  output [63:0]R;
  input en;
  input [3:0]O;
  input CLK;
  input RST;
  input [3:0]\Q_reg_reg[7]_0 ;
  input [3:0]\Q_reg_reg[11]_0 ;
  input [3:0]\Q_reg_reg[15]_0 ;
  input [3:0]\Q_reg_reg[19]_0 ;
  input [3:0]\Q_reg_reg[23]_0 ;
  input [3:0]\Q_reg_reg[27]_0 ;
  input [3:0]\Q_reg_reg[31]_0 ;
  input [3:0]\Q_reg_reg[35]_0 ;
  input [3:0]\Q_reg_reg[39]_0 ;
  input [3:0]\Q_reg_reg[43]_0 ;
  input [3:0]\Q_reg_reg[47]_0 ;
  input [3:0]\Q_reg_reg[51]_0 ;
  input [3:0]\Q_reg_reg[55]_0 ;
  input [3:0]\Q_reg_reg[59]_0 ;
  input [3:0]\Q_reg_reg[63]_0 ;

  wire CLK;
  wire [3:0]O;
  wire [3:0]\Q_reg_reg[11]_0 ;
  wire [3:0]\Q_reg_reg[15]_0 ;
  wire [3:0]\Q_reg_reg[19]_0 ;
  wire [3:0]\Q_reg_reg[23]_0 ;
  wire [3:0]\Q_reg_reg[27]_0 ;
  wire [3:0]\Q_reg_reg[31]_0 ;
  wire [3:0]\Q_reg_reg[35]_0 ;
  wire [3:0]\Q_reg_reg[39]_0 ;
  wire [3:0]\Q_reg_reg[43]_0 ;
  wire [3:0]\Q_reg_reg[47]_0 ;
  wire [3:0]\Q_reg_reg[51]_0 ;
  wire [3:0]\Q_reg_reg[55]_0 ;
  wire [3:0]\Q_reg_reg[59]_0 ;
  wire [3:0]\Q_reg_reg[63]_0 ;
  wire [3:0]\Q_reg_reg[7]_0 ;
  wire [63:0]R;
  wire RST;
  wire en;

  FDCE \Q_reg_reg[0] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(O[0]),
        .Q(R[0]));
  FDCE \Q_reg_reg[10] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[11]_0 [2]),
        .Q(R[10]));
  FDCE \Q_reg_reg[11] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[11]_0 [3]),
        .Q(R[11]));
  FDCE \Q_reg_reg[12] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[15]_0 [0]),
        .Q(R[12]));
  FDCE \Q_reg_reg[13] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[15]_0 [1]),
        .Q(R[13]));
  FDCE \Q_reg_reg[14] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[15]_0 [2]),
        .Q(R[14]));
  FDCE \Q_reg_reg[15] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[15]_0 [3]),
        .Q(R[15]));
  FDCE \Q_reg_reg[16] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[19]_0 [0]),
        .Q(R[16]));
  FDCE \Q_reg_reg[17] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[19]_0 [1]),
        .Q(R[17]));
  FDCE \Q_reg_reg[18] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[19]_0 [2]),
        .Q(R[18]));
  FDCE \Q_reg_reg[19] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[19]_0 [3]),
        .Q(R[19]));
  FDCE \Q_reg_reg[1] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(O[1]),
        .Q(R[1]));
  FDCE \Q_reg_reg[20] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[23]_0 [0]),
        .Q(R[20]));
  FDCE \Q_reg_reg[21] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[23]_0 [1]),
        .Q(R[21]));
  FDCE \Q_reg_reg[22] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[23]_0 [2]),
        .Q(R[22]));
  FDCE \Q_reg_reg[23] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[23]_0 [3]),
        .Q(R[23]));
  FDCE \Q_reg_reg[24] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[27]_0 [0]),
        .Q(R[24]));
  FDCE \Q_reg_reg[25] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[27]_0 [1]),
        .Q(R[25]));
  FDCE \Q_reg_reg[26] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[27]_0 [2]),
        .Q(R[26]));
  FDCE \Q_reg_reg[27] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[27]_0 [3]),
        .Q(R[27]));
  FDCE \Q_reg_reg[28] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[31]_0 [0]),
        .Q(R[28]));
  FDCE \Q_reg_reg[29] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[31]_0 [1]),
        .Q(R[29]));
  FDCE \Q_reg_reg[2] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(O[2]),
        .Q(R[2]));
  FDCE \Q_reg_reg[30] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[31]_0 [2]),
        .Q(R[30]));
  FDCE \Q_reg_reg[31] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[31]_0 [3]),
        .Q(R[31]));
  FDCE \Q_reg_reg[32] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[35]_0 [0]),
        .Q(R[32]));
  FDCE \Q_reg_reg[33] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[35]_0 [1]),
        .Q(R[33]));
  FDCE \Q_reg_reg[34] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[35]_0 [2]),
        .Q(R[34]));
  FDCE \Q_reg_reg[35] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[35]_0 [3]),
        .Q(R[35]));
  FDCE \Q_reg_reg[36] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[39]_0 [0]),
        .Q(R[36]));
  FDCE \Q_reg_reg[37] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[39]_0 [1]),
        .Q(R[37]));
  FDCE \Q_reg_reg[38] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[39]_0 [2]),
        .Q(R[38]));
  FDCE \Q_reg_reg[39] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[39]_0 [3]),
        .Q(R[39]));
  FDCE \Q_reg_reg[3] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(O[3]),
        .Q(R[3]));
  FDCE \Q_reg_reg[40] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[43]_0 [0]),
        .Q(R[40]));
  FDCE \Q_reg_reg[41] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[43]_0 [1]),
        .Q(R[41]));
  FDCE \Q_reg_reg[42] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[43]_0 [2]),
        .Q(R[42]));
  FDCE \Q_reg_reg[43] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[43]_0 [3]),
        .Q(R[43]));
  FDCE \Q_reg_reg[44] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[47]_0 [0]),
        .Q(R[44]));
  FDCE \Q_reg_reg[45] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[47]_0 [1]),
        .Q(R[45]));
  FDCE \Q_reg_reg[46] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[47]_0 [2]),
        .Q(R[46]));
  FDCE \Q_reg_reg[47] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[47]_0 [3]),
        .Q(R[47]));
  FDCE \Q_reg_reg[48] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[51]_0 [0]),
        .Q(R[48]));
  FDCE \Q_reg_reg[49] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[51]_0 [1]),
        .Q(R[49]));
  FDCE \Q_reg_reg[4] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[7]_0 [0]),
        .Q(R[4]));
  FDCE \Q_reg_reg[50] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[51]_0 [2]),
        .Q(R[50]));
  FDCE \Q_reg_reg[51] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[51]_0 [3]),
        .Q(R[51]));
  FDCE \Q_reg_reg[52] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[55]_0 [0]),
        .Q(R[52]));
  FDCE \Q_reg_reg[53] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[55]_0 [1]),
        .Q(R[53]));
  FDCE \Q_reg_reg[54] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[55]_0 [2]),
        .Q(R[54]));
  FDCE \Q_reg_reg[55] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[55]_0 [3]),
        .Q(R[55]));
  FDCE \Q_reg_reg[56] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[59]_0 [0]),
        .Q(R[56]));
  FDCE \Q_reg_reg[57] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[59]_0 [1]),
        .Q(R[57]));
  FDCE \Q_reg_reg[58] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[59]_0 [2]),
        .Q(R[58]));
  FDCE \Q_reg_reg[59] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[59]_0 [3]),
        .Q(R[59]));
  FDCE \Q_reg_reg[5] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[7]_0 [1]),
        .Q(R[5]));
  FDCE \Q_reg_reg[60] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[63]_0 [0]),
        .Q(R[60]));
  FDCE \Q_reg_reg[61] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[63]_0 [1]),
        .Q(R[61]));
  FDCE \Q_reg_reg[62] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[63]_0 [2]),
        .Q(R[62]));
  FDCE \Q_reg_reg[63] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[63]_0 [3]),
        .Q(R[63]));
  FDCE \Q_reg_reg[6] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[7]_0 [2]),
        .Q(R[6]));
  FDCE \Q_reg_reg[7] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[7]_0 [3]),
        .Q(R[7]));
  FDCE \Q_reg_reg[8] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[11]_0 [0]),
        .Q(R[8]));
  FDCE \Q_reg_reg[9] 
       (.C(CLK),
        .CE(en),
        .CLR(RST),
        .D(\Q_reg_reg[11]_0 [1]),
        .Q(R[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift32bit
   (Q,
    E,
    D,
    CLK,
    RST);
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input CLK;
  input RST;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire RST;

  FDCE \Q_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \Q_reg_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \Q_reg_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \Q_reg_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \Q_reg_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \Q_reg_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \Q_reg_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \Q_reg_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \Q_reg_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \Q_reg_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \Q_reg_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \Q_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \Q_reg_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \Q_reg_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \Q_reg_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \Q_reg_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \Q_reg_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \Q_reg_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \Q_reg_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \Q_reg_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \Q_reg_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \Q_reg_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \Q_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \Q_reg_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \Q_reg_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \Q_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \Q_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \Q_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \Q_reg_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \Q_reg_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \Q_reg_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \Q_reg_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift64bit
   (O,
    \Q_reg_reg[30]_0 ,
    \Q_reg_reg[7]_0 ,
    \Q_reg_reg[11]_0 ,
    \Q_reg_reg[15]_0 ,
    \Q_reg_reg[19]_0 ,
    \Q_reg_reg[23]_0 ,
    \Q_reg_reg[27]_0 ,
    \Q_reg_reg[31]_0 ,
    \Q_reg_reg[35]_0 ,
    \Q_reg_reg[39]_0 ,
    \Q_reg_reg[43]_0 ,
    \Q_reg_reg[47]_0 ,
    \Q_reg_reg[51]_0 ,
    \Q_reg_reg[55]_0 ,
    \Q_reg_reg[59]_0 ,
    \Q_reg_reg[62]_0 ,
    R,
    Q,
    E,
    CLK,
    RST,
    D);
  output [3:0]O;
  output [30:0]\Q_reg_reg[30]_0 ;
  output [3:0]\Q_reg_reg[7]_0 ;
  output [3:0]\Q_reg_reg[11]_0 ;
  output [3:0]\Q_reg_reg[15]_0 ;
  output [3:0]\Q_reg_reg[19]_0 ;
  output [3:0]\Q_reg_reg[23]_0 ;
  output [3:0]\Q_reg_reg[27]_0 ;
  output [3:0]\Q_reg_reg[31]_0 ;
  output [3:0]\Q_reg_reg[35]_0 ;
  output [3:0]\Q_reg_reg[39]_0 ;
  output [3:0]\Q_reg_reg[43]_0 ;
  output [3:0]\Q_reg_reg[47]_0 ;
  output [3:0]\Q_reg_reg[51]_0 ;
  output [3:0]\Q_reg_reg[55]_0 ;
  output [3:0]\Q_reg_reg[59]_0 ;
  output [3:0]\Q_reg_reg[62]_0 ;
  input [63:0]R;
  input [0:0]Q;
  input [0:0]E;
  input CLK;
  input RST;
  input [31:0]D;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire \Q_reg[11]_i_2_n_0 ;
  wire \Q_reg[11]_i_3_n_0 ;
  wire \Q_reg[11]_i_4_n_0 ;
  wire \Q_reg[11]_i_5_n_0 ;
  wire \Q_reg[15]_i_2_n_0 ;
  wire \Q_reg[15]_i_3_n_0 ;
  wire \Q_reg[15]_i_4_n_0 ;
  wire \Q_reg[15]_i_5_n_0 ;
  wire \Q_reg[19]_i_2_n_0 ;
  wire \Q_reg[19]_i_3_n_0 ;
  wire \Q_reg[19]_i_4_n_0 ;
  wire \Q_reg[19]_i_5_n_0 ;
  wire \Q_reg[23]_i_2_n_0 ;
  wire \Q_reg[23]_i_3_n_0 ;
  wire \Q_reg[23]_i_4_n_0 ;
  wire \Q_reg[23]_i_5_n_0 ;
  wire \Q_reg[27]_i_2_n_0 ;
  wire \Q_reg[27]_i_3_n_0 ;
  wire \Q_reg[27]_i_4_n_0 ;
  wire \Q_reg[27]_i_5_n_0 ;
  wire \Q_reg[31]_i_2__0_n_0 ;
  wire \Q_reg[31]_i_3_n_0 ;
  wire \Q_reg[31]_i_4_n_0 ;
  wire \Q_reg[31]_i_5_n_0 ;
  wire \Q_reg[32]_i_1_n_0 ;
  wire \Q_reg[33]_i_1_n_0 ;
  wire \Q_reg[34]_i_1_n_0 ;
  wire \Q_reg[35]_i_1_n_0 ;
  wire \Q_reg[35]_i_2_n_0 ;
  wire \Q_reg[35]_i_3_n_0 ;
  wire \Q_reg[35]_i_4_n_0 ;
  wire \Q_reg[35]_i_5_n_0 ;
  wire \Q_reg[36]_i_1_n_0 ;
  wire \Q_reg[37]_i_1_n_0 ;
  wire \Q_reg[38]_i_1_n_0 ;
  wire \Q_reg[39]_i_1_n_0 ;
  wire \Q_reg[39]_i_2_n_0 ;
  wire \Q_reg[39]_i_3_n_0 ;
  wire \Q_reg[39]_i_4_n_0 ;
  wire \Q_reg[39]_i_5_n_0 ;
  wire \Q_reg[3]_i_2_n_0 ;
  wire \Q_reg[3]_i_3_n_0 ;
  wire \Q_reg[3]_i_4_n_0 ;
  wire \Q_reg[3]_i_5_n_0 ;
  wire \Q_reg[40]_i_1_n_0 ;
  wire \Q_reg[41]_i_1_n_0 ;
  wire \Q_reg[42]_i_1_n_0 ;
  wire \Q_reg[43]_i_1_n_0 ;
  wire \Q_reg[43]_i_2_n_0 ;
  wire \Q_reg[43]_i_3_n_0 ;
  wire \Q_reg[43]_i_4_n_0 ;
  wire \Q_reg[43]_i_5_n_0 ;
  wire \Q_reg[44]_i_1_n_0 ;
  wire \Q_reg[45]_i_1_n_0 ;
  wire \Q_reg[46]_i_1_n_0 ;
  wire \Q_reg[47]_i_1_n_0 ;
  wire \Q_reg[47]_i_2_n_0 ;
  wire \Q_reg[47]_i_3_n_0 ;
  wire \Q_reg[47]_i_4_n_0 ;
  wire \Q_reg[47]_i_5_n_0 ;
  wire \Q_reg[48]_i_1_n_0 ;
  wire \Q_reg[49]_i_1_n_0 ;
  wire \Q_reg[50]_i_1_n_0 ;
  wire \Q_reg[51]_i_1_n_0 ;
  wire \Q_reg[51]_i_2_n_0 ;
  wire \Q_reg[51]_i_3_n_0 ;
  wire \Q_reg[51]_i_4_n_0 ;
  wire \Q_reg[51]_i_5_n_0 ;
  wire \Q_reg[52]_i_1_n_0 ;
  wire \Q_reg[53]_i_1_n_0 ;
  wire \Q_reg[54]_i_1_n_0 ;
  wire \Q_reg[55]_i_1_n_0 ;
  wire \Q_reg[55]_i_2_n_0 ;
  wire \Q_reg[55]_i_3_n_0 ;
  wire \Q_reg[55]_i_4_n_0 ;
  wire \Q_reg[55]_i_5_n_0 ;
  wire \Q_reg[56]_i_1_n_0 ;
  wire \Q_reg[57]_i_1_n_0 ;
  wire \Q_reg[58]_i_1_n_0 ;
  wire \Q_reg[59]_i_1_n_0 ;
  wire \Q_reg[59]_i_2_n_0 ;
  wire \Q_reg[59]_i_3_n_0 ;
  wire \Q_reg[59]_i_4_n_0 ;
  wire \Q_reg[59]_i_5_n_0 ;
  wire \Q_reg[60]_i_1_n_0 ;
  wire \Q_reg[61]_i_1_n_0 ;
  wire \Q_reg[62]_i_1_n_0 ;
  wire \Q_reg[63]_i_1__0_n_0 ;
  wire \Q_reg[63]_i_3_n_0 ;
  wire \Q_reg[63]_i_4_n_0 ;
  wire \Q_reg[63]_i_5_n_0 ;
  wire \Q_reg[63]_i_6_n_0 ;
  wire \Q_reg[7]_i_2_n_0 ;
  wire \Q_reg[7]_i_3_n_0 ;
  wire \Q_reg[7]_i_4_n_0 ;
  wire \Q_reg[7]_i_5_n_0 ;
  wire [3:0]\Q_reg_reg[11]_0 ;
  wire \Q_reg_reg[11]_i_1_n_0 ;
  wire \Q_reg_reg[11]_i_1_n_1 ;
  wire \Q_reg_reg[11]_i_1_n_2 ;
  wire \Q_reg_reg[11]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[15]_0 ;
  wire \Q_reg_reg[15]_i_1_n_0 ;
  wire \Q_reg_reg[15]_i_1_n_1 ;
  wire \Q_reg_reg[15]_i_1_n_2 ;
  wire \Q_reg_reg[15]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[19]_0 ;
  wire \Q_reg_reg[19]_i_1_n_0 ;
  wire \Q_reg_reg[19]_i_1_n_1 ;
  wire \Q_reg_reg[19]_i_1_n_2 ;
  wire \Q_reg_reg[19]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[23]_0 ;
  wire \Q_reg_reg[23]_i_1_n_0 ;
  wire \Q_reg_reg[23]_i_1_n_1 ;
  wire \Q_reg_reg[23]_i_1_n_2 ;
  wire \Q_reg_reg[23]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[27]_0 ;
  wire \Q_reg_reg[27]_i_1_n_0 ;
  wire \Q_reg_reg[27]_i_1_n_1 ;
  wire \Q_reg_reg[27]_i_1_n_2 ;
  wire \Q_reg_reg[27]_i_1_n_3 ;
  wire [30:0]\Q_reg_reg[30]_0 ;
  wire [3:0]\Q_reg_reg[31]_0 ;
  wire \Q_reg_reg[31]_i_1_n_0 ;
  wire \Q_reg_reg[31]_i_1_n_1 ;
  wire \Q_reg_reg[31]_i_1_n_2 ;
  wire \Q_reg_reg[31]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[35]_0 ;
  wire \Q_reg_reg[35]_i_1_n_0 ;
  wire \Q_reg_reg[35]_i_1_n_1 ;
  wire \Q_reg_reg[35]_i_1_n_2 ;
  wire \Q_reg_reg[35]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[39]_0 ;
  wire \Q_reg_reg[39]_i_1_n_0 ;
  wire \Q_reg_reg[39]_i_1_n_1 ;
  wire \Q_reg_reg[39]_i_1_n_2 ;
  wire \Q_reg_reg[39]_i_1_n_3 ;
  wire \Q_reg_reg[3]_i_1_n_0 ;
  wire \Q_reg_reg[3]_i_1_n_1 ;
  wire \Q_reg_reg[3]_i_1_n_2 ;
  wire \Q_reg_reg[3]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[43]_0 ;
  wire \Q_reg_reg[43]_i_1_n_0 ;
  wire \Q_reg_reg[43]_i_1_n_1 ;
  wire \Q_reg_reg[43]_i_1_n_2 ;
  wire \Q_reg_reg[43]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[47]_0 ;
  wire \Q_reg_reg[47]_i_1_n_0 ;
  wire \Q_reg_reg[47]_i_1_n_1 ;
  wire \Q_reg_reg[47]_i_1_n_2 ;
  wire \Q_reg_reg[47]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[51]_0 ;
  wire \Q_reg_reg[51]_i_1_n_0 ;
  wire \Q_reg_reg[51]_i_1_n_1 ;
  wire \Q_reg_reg[51]_i_1_n_2 ;
  wire \Q_reg_reg[51]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[55]_0 ;
  wire \Q_reg_reg[55]_i_1_n_0 ;
  wire \Q_reg_reg[55]_i_1_n_1 ;
  wire \Q_reg_reg[55]_i_1_n_2 ;
  wire \Q_reg_reg[55]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[59]_0 ;
  wire \Q_reg_reg[59]_i_1_n_0 ;
  wire \Q_reg_reg[59]_i_1_n_1 ;
  wire \Q_reg_reg[59]_i_1_n_2 ;
  wire \Q_reg_reg[59]_i_1_n_3 ;
  wire [3:0]\Q_reg_reg[62]_0 ;
  wire \Q_reg_reg[63]_i_2_n_1 ;
  wire \Q_reg_reg[63]_i_2_n_2 ;
  wire \Q_reg_reg[63]_i_2_n_3 ;
  wire [3:0]\Q_reg_reg[7]_0 ;
  wire \Q_reg_reg[7]_i_1_n_0 ;
  wire \Q_reg_reg[7]_i_1_n_1 ;
  wire \Q_reg_reg[7]_i_1_n_2 ;
  wire \Q_reg_reg[7]_i_1_n_3 ;
  wire \Q_reg_reg_n_0_[31] ;
  wire \Q_reg_reg_n_0_[32] ;
  wire \Q_reg_reg_n_0_[33] ;
  wire \Q_reg_reg_n_0_[34] ;
  wire \Q_reg_reg_n_0_[35] ;
  wire \Q_reg_reg_n_0_[36] ;
  wire \Q_reg_reg_n_0_[37] ;
  wire \Q_reg_reg_n_0_[38] ;
  wire \Q_reg_reg_n_0_[39] ;
  wire \Q_reg_reg_n_0_[40] ;
  wire \Q_reg_reg_n_0_[41] ;
  wire \Q_reg_reg_n_0_[42] ;
  wire \Q_reg_reg_n_0_[43] ;
  wire \Q_reg_reg_n_0_[44] ;
  wire \Q_reg_reg_n_0_[45] ;
  wire \Q_reg_reg_n_0_[46] ;
  wire \Q_reg_reg_n_0_[47] ;
  wire \Q_reg_reg_n_0_[48] ;
  wire \Q_reg_reg_n_0_[49] ;
  wire \Q_reg_reg_n_0_[50] ;
  wire \Q_reg_reg_n_0_[51] ;
  wire \Q_reg_reg_n_0_[52] ;
  wire \Q_reg_reg_n_0_[53] ;
  wire \Q_reg_reg_n_0_[54] ;
  wire \Q_reg_reg_n_0_[55] ;
  wire \Q_reg_reg_n_0_[56] ;
  wire \Q_reg_reg_n_0_[57] ;
  wire \Q_reg_reg_n_0_[58] ;
  wire \Q_reg_reg_n_0_[59] ;
  wire \Q_reg_reg_n_0_[60] ;
  wire \Q_reg_reg_n_0_[61] ;
  wire \Q_reg_reg_n_0_[62] ;
  wire \Q_reg_reg_n_0_[63] ;
  wire [63:0]R;
  wire RST;
  wire [3:3]\NLW_Q_reg_reg[63]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[11]_i_2 
       (.I0(\Q_reg_reg[30]_0 [11]),
        .I1(R[11]),
        .O(\Q_reg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[11]_i_3 
       (.I0(\Q_reg_reg[30]_0 [10]),
        .I1(R[10]),
        .O(\Q_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[11]_i_4 
       (.I0(\Q_reg_reg[30]_0 [9]),
        .I1(R[9]),
        .O(\Q_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[11]_i_5 
       (.I0(\Q_reg_reg[30]_0 [8]),
        .I1(R[8]),
        .O(\Q_reg[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[15]_i_2 
       (.I0(\Q_reg_reg[30]_0 [15]),
        .I1(R[15]),
        .O(\Q_reg[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[15]_i_3 
       (.I0(\Q_reg_reg[30]_0 [14]),
        .I1(R[14]),
        .O(\Q_reg[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[15]_i_4 
       (.I0(\Q_reg_reg[30]_0 [13]),
        .I1(R[13]),
        .O(\Q_reg[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[15]_i_5 
       (.I0(\Q_reg_reg[30]_0 [12]),
        .I1(R[12]),
        .O(\Q_reg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[19]_i_2 
       (.I0(\Q_reg_reg[30]_0 [19]),
        .I1(R[19]),
        .O(\Q_reg[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[19]_i_3 
       (.I0(\Q_reg_reg[30]_0 [18]),
        .I1(R[18]),
        .O(\Q_reg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[19]_i_4 
       (.I0(\Q_reg_reg[30]_0 [17]),
        .I1(R[17]),
        .O(\Q_reg[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[19]_i_5 
       (.I0(\Q_reg_reg[30]_0 [16]),
        .I1(R[16]),
        .O(\Q_reg[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[23]_i_2 
       (.I0(\Q_reg_reg[30]_0 [23]),
        .I1(R[23]),
        .O(\Q_reg[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[23]_i_3 
       (.I0(\Q_reg_reg[30]_0 [22]),
        .I1(R[22]),
        .O(\Q_reg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[23]_i_4 
       (.I0(\Q_reg_reg[30]_0 [21]),
        .I1(R[21]),
        .O(\Q_reg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[23]_i_5 
       (.I0(\Q_reg_reg[30]_0 [20]),
        .I1(R[20]),
        .O(\Q_reg[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[27]_i_2 
       (.I0(\Q_reg_reg[30]_0 [27]),
        .I1(R[27]),
        .O(\Q_reg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[27]_i_3 
       (.I0(\Q_reg_reg[30]_0 [26]),
        .I1(R[26]),
        .O(\Q_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[27]_i_4 
       (.I0(\Q_reg_reg[30]_0 [25]),
        .I1(R[25]),
        .O(\Q_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[27]_i_5 
       (.I0(\Q_reg_reg[30]_0 [24]),
        .I1(R[24]),
        .O(\Q_reg[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[31]_i_2__0 
       (.I0(\Q_reg_reg_n_0_[31] ),
        .I1(R[31]),
        .O(\Q_reg[31]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[31]_i_3 
       (.I0(\Q_reg_reg[30]_0 [30]),
        .I1(R[30]),
        .O(\Q_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[31]_i_4 
       (.I0(\Q_reg_reg[30]_0 [29]),
        .I1(R[29]),
        .O(\Q_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[31]_i_5 
       (.I0(\Q_reg_reg[30]_0 [28]),
        .I1(R[28]),
        .O(\Q_reg[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[32]_i_1 
       (.I0(\Q_reg_reg_n_0_[31] ),
        .I1(Q),
        .O(\Q_reg[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[33]_i_1 
       (.I0(\Q_reg_reg_n_0_[32] ),
        .I1(Q),
        .O(\Q_reg[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[34]_i_1 
       (.I0(\Q_reg_reg_n_0_[33] ),
        .I1(Q),
        .O(\Q_reg[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[35]_i_1 
       (.I0(\Q_reg_reg_n_0_[34] ),
        .I1(Q),
        .O(\Q_reg[35]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[35]_i_2 
       (.I0(\Q_reg_reg_n_0_[35] ),
        .I1(R[35]),
        .O(\Q_reg[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[35]_i_3 
       (.I0(\Q_reg_reg_n_0_[34] ),
        .I1(R[34]),
        .O(\Q_reg[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[35]_i_4 
       (.I0(\Q_reg_reg_n_0_[33] ),
        .I1(R[33]),
        .O(\Q_reg[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[35]_i_5 
       (.I0(\Q_reg_reg_n_0_[32] ),
        .I1(R[32]),
        .O(\Q_reg[35]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[36]_i_1 
       (.I0(\Q_reg_reg_n_0_[35] ),
        .I1(Q),
        .O(\Q_reg[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[37]_i_1 
       (.I0(\Q_reg_reg_n_0_[36] ),
        .I1(Q),
        .O(\Q_reg[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[38]_i_1 
       (.I0(\Q_reg_reg_n_0_[37] ),
        .I1(Q),
        .O(\Q_reg[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[39]_i_1 
       (.I0(\Q_reg_reg_n_0_[38] ),
        .I1(Q),
        .O(\Q_reg[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[39]_i_2 
       (.I0(\Q_reg_reg_n_0_[39] ),
        .I1(R[39]),
        .O(\Q_reg[39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[39]_i_3 
       (.I0(\Q_reg_reg_n_0_[38] ),
        .I1(R[38]),
        .O(\Q_reg[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[39]_i_4 
       (.I0(\Q_reg_reg_n_0_[37] ),
        .I1(R[37]),
        .O(\Q_reg[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[39]_i_5 
       (.I0(\Q_reg_reg_n_0_[36] ),
        .I1(R[36]),
        .O(\Q_reg[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[3]_i_2 
       (.I0(\Q_reg_reg[30]_0 [3]),
        .I1(R[3]),
        .O(\Q_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[3]_i_3 
       (.I0(\Q_reg_reg[30]_0 [2]),
        .I1(R[2]),
        .O(\Q_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[3]_i_4 
       (.I0(\Q_reg_reg[30]_0 [1]),
        .I1(R[1]),
        .O(\Q_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[3]_i_5 
       (.I0(\Q_reg_reg[30]_0 [0]),
        .I1(R[0]),
        .O(\Q_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[40]_i_1 
       (.I0(\Q_reg_reg_n_0_[39] ),
        .I1(Q),
        .O(\Q_reg[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[41]_i_1 
       (.I0(\Q_reg_reg_n_0_[40] ),
        .I1(Q),
        .O(\Q_reg[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[42]_i_1 
       (.I0(\Q_reg_reg_n_0_[41] ),
        .I1(Q),
        .O(\Q_reg[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[43]_i_1 
       (.I0(\Q_reg_reg_n_0_[42] ),
        .I1(Q),
        .O(\Q_reg[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[43]_i_2 
       (.I0(\Q_reg_reg_n_0_[43] ),
        .I1(R[43]),
        .O(\Q_reg[43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[43]_i_3 
       (.I0(\Q_reg_reg_n_0_[42] ),
        .I1(R[42]),
        .O(\Q_reg[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[43]_i_4 
       (.I0(\Q_reg_reg_n_0_[41] ),
        .I1(R[41]),
        .O(\Q_reg[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[43]_i_5 
       (.I0(\Q_reg_reg_n_0_[40] ),
        .I1(R[40]),
        .O(\Q_reg[43]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[44]_i_1 
       (.I0(\Q_reg_reg_n_0_[43] ),
        .I1(Q),
        .O(\Q_reg[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[45]_i_1 
       (.I0(\Q_reg_reg_n_0_[44] ),
        .I1(Q),
        .O(\Q_reg[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[46]_i_1 
       (.I0(\Q_reg_reg_n_0_[45] ),
        .I1(Q),
        .O(\Q_reg[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[47]_i_1 
       (.I0(\Q_reg_reg_n_0_[46] ),
        .I1(Q),
        .O(\Q_reg[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[47]_i_2 
       (.I0(\Q_reg_reg_n_0_[47] ),
        .I1(R[47]),
        .O(\Q_reg[47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[47]_i_3 
       (.I0(\Q_reg_reg_n_0_[46] ),
        .I1(R[46]),
        .O(\Q_reg[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[47]_i_4 
       (.I0(\Q_reg_reg_n_0_[45] ),
        .I1(R[45]),
        .O(\Q_reg[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[47]_i_5 
       (.I0(\Q_reg_reg_n_0_[44] ),
        .I1(R[44]),
        .O(\Q_reg[47]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[48]_i_1 
       (.I0(\Q_reg_reg_n_0_[47] ),
        .I1(Q),
        .O(\Q_reg[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[49]_i_1 
       (.I0(\Q_reg_reg_n_0_[48] ),
        .I1(Q),
        .O(\Q_reg[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[50]_i_1 
       (.I0(\Q_reg_reg_n_0_[49] ),
        .I1(Q),
        .O(\Q_reg[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[51]_i_1 
       (.I0(\Q_reg_reg_n_0_[50] ),
        .I1(Q),
        .O(\Q_reg[51]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[51]_i_2 
       (.I0(\Q_reg_reg_n_0_[51] ),
        .I1(R[51]),
        .O(\Q_reg[51]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[51]_i_3 
       (.I0(\Q_reg_reg_n_0_[50] ),
        .I1(R[50]),
        .O(\Q_reg[51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[51]_i_4 
       (.I0(\Q_reg_reg_n_0_[49] ),
        .I1(R[49]),
        .O(\Q_reg[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[51]_i_5 
       (.I0(\Q_reg_reg_n_0_[48] ),
        .I1(R[48]),
        .O(\Q_reg[51]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[52]_i_1 
       (.I0(\Q_reg_reg_n_0_[51] ),
        .I1(Q),
        .O(\Q_reg[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[53]_i_1 
       (.I0(\Q_reg_reg_n_0_[52] ),
        .I1(Q),
        .O(\Q_reg[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[54]_i_1 
       (.I0(\Q_reg_reg_n_0_[53] ),
        .I1(Q),
        .O(\Q_reg[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[55]_i_1 
       (.I0(\Q_reg_reg_n_0_[54] ),
        .I1(Q),
        .O(\Q_reg[55]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[55]_i_2 
       (.I0(\Q_reg_reg_n_0_[55] ),
        .I1(R[55]),
        .O(\Q_reg[55]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[55]_i_3 
       (.I0(\Q_reg_reg_n_0_[54] ),
        .I1(R[54]),
        .O(\Q_reg[55]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[55]_i_4 
       (.I0(\Q_reg_reg_n_0_[53] ),
        .I1(R[53]),
        .O(\Q_reg[55]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[55]_i_5 
       (.I0(\Q_reg_reg_n_0_[52] ),
        .I1(R[52]),
        .O(\Q_reg[55]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[56]_i_1 
       (.I0(\Q_reg_reg_n_0_[55] ),
        .I1(Q),
        .O(\Q_reg[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[57]_i_1 
       (.I0(\Q_reg_reg_n_0_[56] ),
        .I1(Q),
        .O(\Q_reg[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[58]_i_1 
       (.I0(\Q_reg_reg_n_0_[57] ),
        .I1(Q),
        .O(\Q_reg[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[59]_i_1 
       (.I0(\Q_reg_reg_n_0_[58] ),
        .I1(Q),
        .O(\Q_reg[59]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[59]_i_2 
       (.I0(\Q_reg_reg_n_0_[59] ),
        .I1(R[59]),
        .O(\Q_reg[59]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[59]_i_3 
       (.I0(\Q_reg_reg_n_0_[58] ),
        .I1(R[58]),
        .O(\Q_reg[59]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[59]_i_4 
       (.I0(\Q_reg_reg_n_0_[57] ),
        .I1(R[57]),
        .O(\Q_reg[59]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[59]_i_5 
       (.I0(\Q_reg_reg_n_0_[56] ),
        .I1(R[56]),
        .O(\Q_reg[59]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[60]_i_1 
       (.I0(\Q_reg_reg_n_0_[59] ),
        .I1(Q),
        .O(\Q_reg[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[61]_i_1 
       (.I0(\Q_reg_reg_n_0_[60] ),
        .I1(Q),
        .O(\Q_reg[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[62]_i_1 
       (.I0(\Q_reg_reg_n_0_[61] ),
        .I1(Q),
        .O(\Q_reg[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_reg[63]_i_1__0 
       (.I0(\Q_reg_reg_n_0_[62] ),
        .I1(Q),
        .O(\Q_reg[63]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[63]_i_3 
       (.I0(\Q_reg_reg_n_0_[63] ),
        .I1(R[63]),
        .O(\Q_reg[63]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[63]_i_4 
       (.I0(\Q_reg_reg_n_0_[62] ),
        .I1(R[62]),
        .O(\Q_reg[63]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[63]_i_5 
       (.I0(\Q_reg_reg_n_0_[61] ),
        .I1(R[61]),
        .O(\Q_reg[63]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[63]_i_6 
       (.I0(\Q_reg_reg_n_0_[60] ),
        .I1(R[60]),
        .O(\Q_reg[63]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[7]_i_2 
       (.I0(\Q_reg_reg[30]_0 [7]),
        .I1(R[7]),
        .O(\Q_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[7]_i_3 
       (.I0(\Q_reg_reg[30]_0 [6]),
        .I1(R[6]),
        .O(\Q_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[7]_i_4 
       (.I0(\Q_reg_reg[30]_0 [5]),
        .I1(R[5]),
        .O(\Q_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[7]_i_5 
       (.I0(\Q_reg_reg[30]_0 [4]),
        .I1(R[4]),
        .O(\Q_reg[7]_i_5_n_0 ));
  FDCE \Q_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[0]),
        .Q(\Q_reg_reg[30]_0 [0]));
  FDCE \Q_reg_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[10]),
        .Q(\Q_reg_reg[30]_0 [10]));
  FDCE \Q_reg_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[11]),
        .Q(\Q_reg_reg[30]_0 [11]));
  CARRY4 \Q_reg_reg[11]_i_1 
       (.CI(\Q_reg_reg[7]_i_1_n_0 ),
        .CO({\Q_reg_reg[11]_i_1_n_0 ,\Q_reg_reg[11]_i_1_n_1 ,\Q_reg_reg[11]_i_1_n_2 ,\Q_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q_reg_reg[30]_0 [11:8]),
        .O(\Q_reg_reg[11]_0 ),
        .S({\Q_reg[11]_i_2_n_0 ,\Q_reg[11]_i_3_n_0 ,\Q_reg[11]_i_4_n_0 ,\Q_reg[11]_i_5_n_0 }));
  FDCE \Q_reg_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[12]),
        .Q(\Q_reg_reg[30]_0 [12]));
  FDCE \Q_reg_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[13]),
        .Q(\Q_reg_reg[30]_0 [13]));
  FDCE \Q_reg_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[14]),
        .Q(\Q_reg_reg[30]_0 [14]));
  FDCE \Q_reg_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[15]),
        .Q(\Q_reg_reg[30]_0 [15]));
  CARRY4 \Q_reg_reg[15]_i_1 
       (.CI(\Q_reg_reg[11]_i_1_n_0 ),
        .CO({\Q_reg_reg[15]_i_1_n_0 ,\Q_reg_reg[15]_i_1_n_1 ,\Q_reg_reg[15]_i_1_n_2 ,\Q_reg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q_reg_reg[30]_0 [15:12]),
        .O(\Q_reg_reg[15]_0 ),
        .S({\Q_reg[15]_i_2_n_0 ,\Q_reg[15]_i_3_n_0 ,\Q_reg[15]_i_4_n_0 ,\Q_reg[15]_i_5_n_0 }));
  FDCE \Q_reg_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[16]),
        .Q(\Q_reg_reg[30]_0 [16]));
  FDCE \Q_reg_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[17]),
        .Q(\Q_reg_reg[30]_0 [17]));
  FDCE \Q_reg_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[18]),
        .Q(\Q_reg_reg[30]_0 [18]));
  FDCE \Q_reg_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[19]),
        .Q(\Q_reg_reg[30]_0 [19]));
  CARRY4 \Q_reg_reg[19]_i_1 
       (.CI(\Q_reg_reg[15]_i_1_n_0 ),
        .CO({\Q_reg_reg[19]_i_1_n_0 ,\Q_reg_reg[19]_i_1_n_1 ,\Q_reg_reg[19]_i_1_n_2 ,\Q_reg_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q_reg_reg[30]_0 [19:16]),
        .O(\Q_reg_reg[19]_0 ),
        .S({\Q_reg[19]_i_2_n_0 ,\Q_reg[19]_i_3_n_0 ,\Q_reg[19]_i_4_n_0 ,\Q_reg[19]_i_5_n_0 }));
  FDCE \Q_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[1]),
        .Q(\Q_reg_reg[30]_0 [1]));
  FDCE \Q_reg_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[20]),
        .Q(\Q_reg_reg[30]_0 [20]));
  FDCE \Q_reg_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[21]),
        .Q(\Q_reg_reg[30]_0 [21]));
  FDCE \Q_reg_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[22]),
        .Q(\Q_reg_reg[30]_0 [22]));
  FDCE \Q_reg_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[23]),
        .Q(\Q_reg_reg[30]_0 [23]));
  CARRY4 \Q_reg_reg[23]_i_1 
       (.CI(\Q_reg_reg[19]_i_1_n_0 ),
        .CO({\Q_reg_reg[23]_i_1_n_0 ,\Q_reg_reg[23]_i_1_n_1 ,\Q_reg_reg[23]_i_1_n_2 ,\Q_reg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q_reg_reg[30]_0 [23:20]),
        .O(\Q_reg_reg[23]_0 ),
        .S({\Q_reg[23]_i_2_n_0 ,\Q_reg[23]_i_3_n_0 ,\Q_reg[23]_i_4_n_0 ,\Q_reg[23]_i_5_n_0 }));
  FDCE \Q_reg_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[24]),
        .Q(\Q_reg_reg[30]_0 [24]));
  FDCE \Q_reg_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[25]),
        .Q(\Q_reg_reg[30]_0 [25]));
  FDCE \Q_reg_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[26]),
        .Q(\Q_reg_reg[30]_0 [26]));
  FDCE \Q_reg_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[27]),
        .Q(\Q_reg_reg[30]_0 [27]));
  CARRY4 \Q_reg_reg[27]_i_1 
       (.CI(\Q_reg_reg[23]_i_1_n_0 ),
        .CO({\Q_reg_reg[27]_i_1_n_0 ,\Q_reg_reg[27]_i_1_n_1 ,\Q_reg_reg[27]_i_1_n_2 ,\Q_reg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q_reg_reg[30]_0 [27:24]),
        .O(\Q_reg_reg[27]_0 ),
        .S({\Q_reg[27]_i_2_n_0 ,\Q_reg[27]_i_3_n_0 ,\Q_reg[27]_i_4_n_0 ,\Q_reg[27]_i_5_n_0 }));
  FDCE \Q_reg_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[28]),
        .Q(\Q_reg_reg[30]_0 [28]));
  FDCE \Q_reg_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[29]),
        .Q(\Q_reg_reg[30]_0 [29]));
  FDCE \Q_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[2]),
        .Q(\Q_reg_reg[30]_0 [2]));
  FDCE \Q_reg_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[30]),
        .Q(\Q_reg_reg[30]_0 [30]));
  FDCE \Q_reg_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[31]),
        .Q(\Q_reg_reg_n_0_[31] ));
  CARRY4 \Q_reg_reg[31]_i_1 
       (.CI(\Q_reg_reg[27]_i_1_n_0 ),
        .CO({\Q_reg_reg[31]_i_1_n_0 ,\Q_reg_reg[31]_i_1_n_1 ,\Q_reg_reg[31]_i_1_n_2 ,\Q_reg_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[31] ,\Q_reg_reg[30]_0 [30:28]}),
        .O(\Q_reg_reg[31]_0 ),
        .S({\Q_reg[31]_i_2__0_n_0 ,\Q_reg[31]_i_3_n_0 ,\Q_reg[31]_i_4_n_0 ,\Q_reg[31]_i_5_n_0 }));
  FDCE \Q_reg_reg[32] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[32]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[32] ));
  FDCE \Q_reg_reg[33] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[33]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[33] ));
  FDCE \Q_reg_reg[34] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[34]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[34] ));
  FDCE \Q_reg_reg[35] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[35]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[35] ));
  CARRY4 \Q_reg_reg[35]_i_1 
       (.CI(\Q_reg_reg[31]_i_1_n_0 ),
        .CO({\Q_reg_reg[35]_i_1_n_0 ,\Q_reg_reg[35]_i_1_n_1 ,\Q_reg_reg[35]_i_1_n_2 ,\Q_reg_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[35] ,\Q_reg_reg_n_0_[34] ,\Q_reg_reg_n_0_[33] ,\Q_reg_reg_n_0_[32] }),
        .O(\Q_reg_reg[35]_0 ),
        .S({\Q_reg[35]_i_2_n_0 ,\Q_reg[35]_i_3_n_0 ,\Q_reg[35]_i_4_n_0 ,\Q_reg[35]_i_5_n_0 }));
  FDCE \Q_reg_reg[36] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[36]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[36] ));
  FDCE \Q_reg_reg[37] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[37]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[37] ));
  FDCE \Q_reg_reg[38] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[38]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[38] ));
  FDCE \Q_reg_reg[39] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[39]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[39] ));
  CARRY4 \Q_reg_reg[39]_i_1 
       (.CI(\Q_reg_reg[35]_i_1_n_0 ),
        .CO({\Q_reg_reg[39]_i_1_n_0 ,\Q_reg_reg[39]_i_1_n_1 ,\Q_reg_reg[39]_i_1_n_2 ,\Q_reg_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[39] ,\Q_reg_reg_n_0_[38] ,\Q_reg_reg_n_0_[37] ,\Q_reg_reg_n_0_[36] }),
        .O(\Q_reg_reg[39]_0 ),
        .S({\Q_reg[39]_i_2_n_0 ,\Q_reg[39]_i_3_n_0 ,\Q_reg[39]_i_4_n_0 ,\Q_reg[39]_i_5_n_0 }));
  FDCE \Q_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[3]),
        .Q(\Q_reg_reg[30]_0 [3]));
  CARRY4 \Q_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg_reg[3]_i_1_n_0 ,\Q_reg_reg[3]_i_1_n_1 ,\Q_reg_reg[3]_i_1_n_2 ,\Q_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q_reg_reg[30]_0 [3:0]),
        .O(O),
        .S({\Q_reg[3]_i_2_n_0 ,\Q_reg[3]_i_3_n_0 ,\Q_reg[3]_i_4_n_0 ,\Q_reg[3]_i_5_n_0 }));
  FDCE \Q_reg_reg[40] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[40]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[40] ));
  FDCE \Q_reg_reg[41] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[41]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[41] ));
  FDCE \Q_reg_reg[42] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[42]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[42] ));
  FDCE \Q_reg_reg[43] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[43]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[43] ));
  CARRY4 \Q_reg_reg[43]_i_1 
       (.CI(\Q_reg_reg[39]_i_1_n_0 ),
        .CO({\Q_reg_reg[43]_i_1_n_0 ,\Q_reg_reg[43]_i_1_n_1 ,\Q_reg_reg[43]_i_1_n_2 ,\Q_reg_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[43] ,\Q_reg_reg_n_0_[42] ,\Q_reg_reg_n_0_[41] ,\Q_reg_reg_n_0_[40] }),
        .O(\Q_reg_reg[43]_0 ),
        .S({\Q_reg[43]_i_2_n_0 ,\Q_reg[43]_i_3_n_0 ,\Q_reg[43]_i_4_n_0 ,\Q_reg[43]_i_5_n_0 }));
  FDCE \Q_reg_reg[44] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[44]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[44] ));
  FDCE \Q_reg_reg[45] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[45]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[45] ));
  FDCE \Q_reg_reg[46] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[46]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[46] ));
  FDCE \Q_reg_reg[47] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[47]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[47] ));
  CARRY4 \Q_reg_reg[47]_i_1 
       (.CI(\Q_reg_reg[43]_i_1_n_0 ),
        .CO({\Q_reg_reg[47]_i_1_n_0 ,\Q_reg_reg[47]_i_1_n_1 ,\Q_reg_reg[47]_i_1_n_2 ,\Q_reg_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[47] ,\Q_reg_reg_n_0_[46] ,\Q_reg_reg_n_0_[45] ,\Q_reg_reg_n_0_[44] }),
        .O(\Q_reg_reg[47]_0 ),
        .S({\Q_reg[47]_i_2_n_0 ,\Q_reg[47]_i_3_n_0 ,\Q_reg[47]_i_4_n_0 ,\Q_reg[47]_i_5_n_0 }));
  FDCE \Q_reg_reg[48] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[48]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[48] ));
  FDCE \Q_reg_reg[49] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[49]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[49] ));
  FDCE \Q_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[4]),
        .Q(\Q_reg_reg[30]_0 [4]));
  FDCE \Q_reg_reg[50] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[50]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[50] ));
  FDCE \Q_reg_reg[51] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[51]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[51] ));
  CARRY4 \Q_reg_reg[51]_i_1 
       (.CI(\Q_reg_reg[47]_i_1_n_0 ),
        .CO({\Q_reg_reg[51]_i_1_n_0 ,\Q_reg_reg[51]_i_1_n_1 ,\Q_reg_reg[51]_i_1_n_2 ,\Q_reg_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[51] ,\Q_reg_reg_n_0_[50] ,\Q_reg_reg_n_0_[49] ,\Q_reg_reg_n_0_[48] }),
        .O(\Q_reg_reg[51]_0 ),
        .S({\Q_reg[51]_i_2_n_0 ,\Q_reg[51]_i_3_n_0 ,\Q_reg[51]_i_4_n_0 ,\Q_reg[51]_i_5_n_0 }));
  FDCE \Q_reg_reg[52] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[52]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[52] ));
  FDCE \Q_reg_reg[53] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[53]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[53] ));
  FDCE \Q_reg_reg[54] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[54]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[54] ));
  FDCE \Q_reg_reg[55] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[55]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[55] ));
  CARRY4 \Q_reg_reg[55]_i_1 
       (.CI(\Q_reg_reg[51]_i_1_n_0 ),
        .CO({\Q_reg_reg[55]_i_1_n_0 ,\Q_reg_reg[55]_i_1_n_1 ,\Q_reg_reg[55]_i_1_n_2 ,\Q_reg_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[55] ,\Q_reg_reg_n_0_[54] ,\Q_reg_reg_n_0_[53] ,\Q_reg_reg_n_0_[52] }),
        .O(\Q_reg_reg[55]_0 ),
        .S({\Q_reg[55]_i_2_n_0 ,\Q_reg[55]_i_3_n_0 ,\Q_reg[55]_i_4_n_0 ,\Q_reg[55]_i_5_n_0 }));
  FDCE \Q_reg_reg[56] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[56]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[56] ));
  FDCE \Q_reg_reg[57] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[57]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[57] ));
  FDCE \Q_reg_reg[58] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[58]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[58] ));
  FDCE \Q_reg_reg[59] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[59]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[59] ));
  CARRY4 \Q_reg_reg[59]_i_1 
       (.CI(\Q_reg_reg[55]_i_1_n_0 ),
        .CO({\Q_reg_reg[59]_i_1_n_0 ,\Q_reg_reg[59]_i_1_n_1 ,\Q_reg_reg[59]_i_1_n_2 ,\Q_reg_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q_reg_reg_n_0_[59] ,\Q_reg_reg_n_0_[58] ,\Q_reg_reg_n_0_[57] ,\Q_reg_reg_n_0_[56] }),
        .O(\Q_reg_reg[59]_0 ),
        .S({\Q_reg[59]_i_2_n_0 ,\Q_reg[59]_i_3_n_0 ,\Q_reg[59]_i_4_n_0 ,\Q_reg[59]_i_5_n_0 }));
  FDCE \Q_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[5]),
        .Q(\Q_reg_reg[30]_0 [5]));
  FDCE \Q_reg_reg[60] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[60]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[60] ));
  FDCE \Q_reg_reg[61] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[61]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[61] ));
  FDCE \Q_reg_reg[62] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[62]_i_1_n_0 ),
        .Q(\Q_reg_reg_n_0_[62] ));
  FDCE \Q_reg_reg[63] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(\Q_reg[63]_i_1__0_n_0 ),
        .Q(\Q_reg_reg_n_0_[63] ));
  CARRY4 \Q_reg_reg[63]_i_2 
       (.CI(\Q_reg_reg[59]_i_1_n_0 ),
        .CO({\NLW_Q_reg_reg[63]_i_2_CO_UNCONNECTED [3],\Q_reg_reg[63]_i_2_n_1 ,\Q_reg_reg[63]_i_2_n_2 ,\Q_reg_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q_reg_reg_n_0_[62] ,\Q_reg_reg_n_0_[61] ,\Q_reg_reg_n_0_[60] }),
        .O(\Q_reg_reg[62]_0 ),
        .S({\Q_reg[63]_i_3_n_0 ,\Q_reg[63]_i_4_n_0 ,\Q_reg[63]_i_5_n_0 ,\Q_reg[63]_i_6_n_0 }));
  FDCE \Q_reg_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[6]),
        .Q(\Q_reg_reg[30]_0 [6]));
  FDCE \Q_reg_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[7]),
        .Q(\Q_reg_reg[30]_0 [7]));
  CARRY4 \Q_reg_reg[7]_i_1 
       (.CI(\Q_reg_reg[3]_i_1_n_0 ),
        .CO({\Q_reg_reg[7]_i_1_n_0 ,\Q_reg_reg[7]_i_1_n_1 ,\Q_reg_reg[7]_i_1_n_2 ,\Q_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q_reg_reg[30]_0 [7:4]),
        .O(\Q_reg_reg[7]_0 ),
        .S({\Q_reg[7]_i_2_n_0 ,\Q_reg[7]_i_3_n_0 ,\Q_reg[7]_i_4_n_0 ,\Q_reg[7]_i_5_n_0 }));
  FDCE \Q_reg_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[8]),
        .Q(\Q_reg_reg[30]_0 [8]));
  FDCE \Q_reg_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(D[9]),
        .Q(\Q_reg_reg[30]_0 [9]));
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
