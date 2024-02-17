#include "HLS_accel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void HLS_accel::thread_INPUT_STREAM_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read())))) {
        INPUT_STREAM_TDATA_blk_n = INPUT_STREAM_data_V_0_state.read()[0];
    } else {
        INPUT_STREAM_TDATA_blk_n = ap_const_logic_1;
    }
}

void HLS_accel::thread_INPUT_STREAM_TREADY() {
    INPUT_STREAM_TREADY = INPUT_STREAM_dest_V_0_state.read()[1];
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_ack_in() {
    INPUT_STREAM_data_V_0_ack_in = INPUT_STREAM_data_V_0_state.read()[1];
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_ack_out() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))))) {
        INPUT_STREAM_data_V_0_ack_out = ap_const_logic_1;
    } else {
        INPUT_STREAM_data_V_0_ack_out = ap_const_logic_0;
    }
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, INPUT_STREAM_data_V_0_sel.read())) {
        INPUT_STREAM_data_V_0_data_out = INPUT_STREAM_data_V_0_payload_B.read();
    } else {
        INPUT_STREAM_data_V_0_data_out = INPUT_STREAM_data_V_0_payload_A.read();
    }
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_load_A() {
    INPUT_STREAM_data_V_0_load_A = (INPUT_STREAM_data_V_0_state_cmp_full.read() & ~INPUT_STREAM_data_V_0_sel_wr.read());
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_load_B() {
    INPUT_STREAM_data_V_0_load_B = (INPUT_STREAM_data_V_0_sel_wr.read() & INPUT_STREAM_data_V_0_state_cmp_full.read());
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_sel() {
    INPUT_STREAM_data_V_0_sel = INPUT_STREAM_data_V_0_sel_rd.read();
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_state_cmp_full() {
    INPUT_STREAM_data_V_0_state_cmp_full =  (sc_logic) ((!INPUT_STREAM_data_V_0_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(INPUT_STREAM_data_V_0_state.read() != ap_const_lv2_1))[0];
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_vld_in() {
    INPUT_STREAM_data_V_0_vld_in = INPUT_STREAM_TVALID.read();
}

void HLS_accel::thread_INPUT_STREAM_data_V_0_vld_out() {
    INPUT_STREAM_data_V_0_vld_out = INPUT_STREAM_data_V_0_state.read()[0];
}

void HLS_accel::thread_INPUT_STREAM_dest_V_0_ack_out() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))))) {
        INPUT_STREAM_dest_V_0_ack_out = ap_const_logic_1;
    } else {
        INPUT_STREAM_dest_V_0_ack_out = ap_const_logic_0;
    }
}

void HLS_accel::thread_INPUT_STREAM_dest_V_0_vld_in() {
    INPUT_STREAM_dest_V_0_vld_in = INPUT_STREAM_TVALID.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TDATA() {
    OUTPUT_STREAM_TDATA = OUTPUT_STREAM_data_V_1_data_out.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp3_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp3_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406_pp3_iter1_reg.read())))) {
        OUTPUT_STREAM_TDATA_blk_n = OUTPUT_STREAM_data_V_1_state.read()[1];
    } else {
        OUTPUT_STREAM_TDATA_blk_n = ap_const_logic_1;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_TDEST() {
    OUTPUT_STREAM_TDEST = OUTPUT_STREAM_dest_V_1_data_out.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TID() {
    OUTPUT_STREAM_TID = OUTPUT_STREAM_id_V_1_data_out.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TKEEP() {
    OUTPUT_STREAM_TKEEP = OUTPUT_STREAM_keep_V_1_data_out.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TLAST() {
    OUTPUT_STREAM_TLAST = OUTPUT_STREAM_last_V_1_data_out.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TSTRB() {
    OUTPUT_STREAM_TSTRB = OUTPUT_STREAM_strb_V_1_data_out.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TUSER() {
    OUTPUT_STREAM_TUSER = OUTPUT_STREAM_user_V_1_data_out.read();
}

void HLS_accel::thread_OUTPUT_STREAM_TVALID() {
    OUTPUT_STREAM_TVALID = OUTPUT_STREAM_dest_V_1_state.read()[0];
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_ack_in() {
    OUTPUT_STREAM_data_V_1_ack_in = OUTPUT_STREAM_data_V_1_state.read()[1];
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_ack_out() {
    OUTPUT_STREAM_data_V_1_ack_out = OUTPUT_STREAM_TREADY.read();
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, OUTPUT_STREAM_data_V_1_sel.read())) {
        OUTPUT_STREAM_data_V_1_data_out = OUTPUT_STREAM_data_V_1_payload_B.read();
    } else {
        OUTPUT_STREAM_data_V_1_data_out = OUTPUT_STREAM_data_V_1_payload_A.read();
    }
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_load_A() {
    OUTPUT_STREAM_data_V_1_load_A = (OUTPUT_STREAM_data_V_1_state_cmp_full.read() & ~OUTPUT_STREAM_data_V_1_sel_wr.read());
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_load_B() {
    OUTPUT_STREAM_data_V_1_load_B = (OUTPUT_STREAM_data_V_1_sel_wr.read() & OUTPUT_STREAM_data_V_1_state_cmp_full.read());
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_sel() {
    OUTPUT_STREAM_data_V_1_sel = OUTPUT_STREAM_data_V_1_sel_rd.read();
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_state_cmp_full() {
    OUTPUT_STREAM_data_V_1_state_cmp_full =  (sc_logic) ((!OUTPUT_STREAM_data_V_1_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(OUTPUT_STREAM_data_V_1_state.read() != ap_const_lv2_1))[0];
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0))) {
        OUTPUT_STREAM_data_V_1_vld_in = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_data_V_1_vld_in = ap_const_logic_0;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_data_V_1_vld_out() {
    OUTPUT_STREAM_data_V_1_vld_out = OUTPUT_STREAM_data_V_1_state.read()[0];
}

void HLS_accel::thread_OUTPUT_STREAM_dest_V_1_ack_in() {
    OUTPUT_STREAM_dest_V_1_ack_in = OUTPUT_STREAM_dest_V_1_state.read()[1];
}

void HLS_accel::thread_OUTPUT_STREAM_dest_V_1_ack_out() {
    OUTPUT_STREAM_dest_V_1_ack_out = OUTPUT_STREAM_TREADY.read();
}

void HLS_accel::thread_OUTPUT_STREAM_dest_V_1_data_out() {
    OUTPUT_STREAM_dest_V_1_data_out = ap_const_lv5_0;
}

void HLS_accel::thread_OUTPUT_STREAM_dest_V_1_sel() {
    OUTPUT_STREAM_dest_V_1_sel = OUTPUT_STREAM_dest_V_1_sel_rd.read();
}

void HLS_accel::thread_OUTPUT_STREAM_dest_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0))) {
        OUTPUT_STREAM_dest_V_1_vld_in = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_dest_V_1_vld_in = ap_const_logic_0;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_dest_V_1_vld_out() {
    OUTPUT_STREAM_dest_V_1_vld_out = OUTPUT_STREAM_dest_V_1_state.read()[0];
}

void HLS_accel::thread_OUTPUT_STREAM_id_V_1_ack_in() {
    OUTPUT_STREAM_id_V_1_ack_in = OUTPUT_STREAM_id_V_1_state.read()[1];
}

void HLS_accel::thread_OUTPUT_STREAM_id_V_1_ack_out() {
    OUTPUT_STREAM_id_V_1_ack_out = OUTPUT_STREAM_TREADY.read();
}

void HLS_accel::thread_OUTPUT_STREAM_id_V_1_data_out() {
    OUTPUT_STREAM_id_V_1_data_out = ap_const_lv5_0;
}

void HLS_accel::thread_OUTPUT_STREAM_id_V_1_sel() {
    OUTPUT_STREAM_id_V_1_sel = OUTPUT_STREAM_id_V_1_sel_rd.read();
}

void HLS_accel::thread_OUTPUT_STREAM_id_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0))) {
        OUTPUT_STREAM_id_V_1_vld_in = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_id_V_1_vld_in = ap_const_logic_0;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_id_V_1_vld_out() {
    OUTPUT_STREAM_id_V_1_vld_out = OUTPUT_STREAM_id_V_1_state.read()[0];
}

void HLS_accel::thread_OUTPUT_STREAM_keep_V_1_ack_in() {
    OUTPUT_STREAM_keep_V_1_ack_in = OUTPUT_STREAM_keep_V_1_state.read()[1];
}

void HLS_accel::thread_OUTPUT_STREAM_keep_V_1_ack_out() {
    OUTPUT_STREAM_keep_V_1_ack_out = OUTPUT_STREAM_TREADY.read();
}

void HLS_accel::thread_OUTPUT_STREAM_keep_V_1_data_out() {
    OUTPUT_STREAM_keep_V_1_data_out = ap_const_lv4_F;
}

void HLS_accel::thread_OUTPUT_STREAM_keep_V_1_sel() {
    OUTPUT_STREAM_keep_V_1_sel = OUTPUT_STREAM_keep_V_1_sel_rd.read();
}

void HLS_accel::thread_OUTPUT_STREAM_keep_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0))) {
        OUTPUT_STREAM_keep_V_1_vld_in = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_keep_V_1_vld_in = ap_const_logic_0;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_keep_V_1_vld_out() {
    OUTPUT_STREAM_keep_V_1_vld_out = OUTPUT_STREAM_keep_V_1_state.read()[0];
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_ack_in() {
    OUTPUT_STREAM_last_V_1_ack_in = OUTPUT_STREAM_last_V_1_state.read()[1];
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_ack_out() {
    OUTPUT_STREAM_last_V_1_ack_out = OUTPUT_STREAM_TREADY.read();
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, OUTPUT_STREAM_last_V_1_sel.read())) {
        OUTPUT_STREAM_last_V_1_data_out = OUTPUT_STREAM_last_V_1_payload_B.read();
    } else {
        OUTPUT_STREAM_last_V_1_data_out = OUTPUT_STREAM_last_V_1_payload_A.read();
    }
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_load_A() {
    OUTPUT_STREAM_last_V_1_load_A = (OUTPUT_STREAM_last_V_1_state_cmp_full.read() & ~OUTPUT_STREAM_last_V_1_sel_wr.read());
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_load_B() {
    OUTPUT_STREAM_last_V_1_load_B = (OUTPUT_STREAM_last_V_1_sel_wr.read() & OUTPUT_STREAM_last_V_1_state_cmp_full.read());
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_sel() {
    OUTPUT_STREAM_last_V_1_sel = OUTPUT_STREAM_last_V_1_sel_rd.read();
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_state_cmp_full() {
    OUTPUT_STREAM_last_V_1_state_cmp_full =  (sc_logic) ((!OUTPUT_STREAM_last_V_1_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(OUTPUT_STREAM_last_V_1_state.read() != ap_const_lv2_1))[0];
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0))) {
        OUTPUT_STREAM_last_V_1_vld_in = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_last_V_1_vld_in = ap_const_logic_0;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_last_V_1_vld_out() {
    OUTPUT_STREAM_last_V_1_vld_out = OUTPUT_STREAM_last_V_1_state.read()[0];
}

void HLS_accel::thread_OUTPUT_STREAM_strb_V_1_ack_in() {
    OUTPUT_STREAM_strb_V_1_ack_in = OUTPUT_STREAM_strb_V_1_state.read()[1];
}

void HLS_accel::thread_OUTPUT_STREAM_strb_V_1_ack_out() {
    OUTPUT_STREAM_strb_V_1_ack_out = OUTPUT_STREAM_TREADY.read();
}

void HLS_accel::thread_OUTPUT_STREAM_strb_V_1_data_out() {
    OUTPUT_STREAM_strb_V_1_data_out = ap_const_lv4_F;
}

void HLS_accel::thread_OUTPUT_STREAM_strb_V_1_sel() {
    OUTPUT_STREAM_strb_V_1_sel = OUTPUT_STREAM_strb_V_1_sel_rd.read();
}

void HLS_accel::thread_OUTPUT_STREAM_strb_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0))) {
        OUTPUT_STREAM_strb_V_1_vld_in = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_strb_V_1_vld_in = ap_const_logic_0;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_strb_V_1_vld_out() {
    OUTPUT_STREAM_strb_V_1_vld_out = OUTPUT_STREAM_strb_V_1_state.read()[0];
}

void HLS_accel::thread_OUTPUT_STREAM_user_V_1_ack_in() {
    OUTPUT_STREAM_user_V_1_ack_in = OUTPUT_STREAM_user_V_1_state.read()[1];
}

void HLS_accel::thread_OUTPUT_STREAM_user_V_1_ack_out() {
    OUTPUT_STREAM_user_V_1_ack_out = OUTPUT_STREAM_TREADY.read();
}

void HLS_accel::thread_OUTPUT_STREAM_user_V_1_data_out() {
    OUTPUT_STREAM_user_V_1_data_out = ap_const_lv4_0;
}

void HLS_accel::thread_OUTPUT_STREAM_user_V_1_sel() {
    OUTPUT_STREAM_user_V_1_sel = OUTPUT_STREAM_user_V_1_sel_rd.read();
}

void HLS_accel::thread_OUTPUT_STREAM_user_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0))) {
        OUTPUT_STREAM_user_V_1_vld_in = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_user_V_1_vld_in = ap_const_logic_0;
    }
}

void HLS_accel::thread_OUTPUT_STREAM_user_V_1_vld_out() {
    OUTPUT_STREAM_user_V_1_vld_out = OUTPUT_STREAM_user_V_1_state.read()[0];
}

void HLS_accel::thread_a_0_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        a_0_address0 =  (sc_lv<6>) (a_0_load_mid2_fu_2099_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_0_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_0_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_0_address1() {
    a_0_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter4_reg.read());
}

void HLS_accel::thread_a_0_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())))) {
        a_0_ce0 = ap_const_logic_1;
    } else {
        a_0_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_0_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter5.read()))) {
        a_0_ce1 = ap_const_logic_1;
    } else {
        a_0_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_0_load_1_mid2_fu_2104_p3() {
    a_0_load_1_mid2_fu_2104_p3 = (!exitcond1_i_i_fu_2047_p2.read()[0].is_01())? sc_lv<64>(): ((exitcond1_i_i_fu_2047_p2.read()[0].to_bool())? tmp_17_fu_2075_p3.read(): tmp_14_fu_2021_p3.read());
}

void HLS_accel::thread_a_0_load_mid2_fu_2099_p1() {
    a_0_load_mid2_fu_2099_p1 = esl_zext<64,7>(a_0_load_mid2_v_fu_2091_p3.read());
}

void HLS_accel::thread_a_0_load_mid2_v_fu_2091_p3() {
    a_0_load_mid2_v_fu_2091_p3 = (!exitcond1_i_i_fu_2047_p2.read()[0].is_01())? sc_lv<7>(): ((exitcond1_i_i_fu_2047_p2.read()[0].to_bool())? tmp_15_fu_2061_p3.read(): tmp_6_fu_2007_p3.read());
}

void HLS_accel::thread_a_0_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_0, arrayNo_cast_fu_1793_p4.read()))) {
        a_0_we0 = ap_const_logic_1;
    } else {
        a_0_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_10_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter100.read()))) {
        a_10_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter99_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_10_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_10_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_10_address1() {
    a_10_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter104_reg.read());
}

void HLS_accel::thread_a_10_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter100.read())))) {
        a_10_ce0 = ap_const_logic_1;
    } else {
        a_10_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_10_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter105.read()))) {
        a_10_ce1 = ap_const_logic_1;
    } else {
        a_10_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_10_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_A))) {
        a_10_we0 = ap_const_logic_1;
    } else {
        a_10_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_11_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter110.read()))) {
        a_11_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter109_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_11_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_11_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_11_address1() {
    a_11_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter114_reg.read());
}

void HLS_accel::thread_a_11_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter110.read())))) {
        a_11_ce0 = ap_const_logic_1;
    } else {
        a_11_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_11_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter115.read()))) {
        a_11_ce1 = ap_const_logic_1;
    } else {
        a_11_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_11_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_B))) {
        a_11_we0 = ap_const_logic_1;
    } else {
        a_11_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_12_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter120.read()))) {
        a_12_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter119_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_12_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_12_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_12_address1() {
    a_12_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter124_reg.read());
}

void HLS_accel::thread_a_12_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter120.read())))) {
        a_12_ce0 = ap_const_logic_1;
    } else {
        a_12_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_12_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter125.read()))) {
        a_12_ce1 = ap_const_logic_1;
    } else {
        a_12_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_12_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_C))) {
        a_12_we0 = ap_const_logic_1;
    } else {
        a_12_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_13_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter130.read()))) {
        a_13_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter129_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_13_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_13_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_13_address1() {
    a_13_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter134_reg.read());
}

void HLS_accel::thread_a_13_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter130.read())))) {
        a_13_ce0 = ap_const_logic_1;
    } else {
        a_13_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_13_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter135.read()))) {
        a_13_ce1 = ap_const_logic_1;
    } else {
        a_13_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_13_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_D))) {
        a_13_we0 = ap_const_logic_1;
    } else {
        a_13_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_14_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter140.read()))) {
        a_14_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter139_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_14_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_14_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_14_address1() {
    a_14_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter144_reg.read());
}

void HLS_accel::thread_a_14_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter140.read())))) {
        a_14_ce0 = ap_const_logic_1;
    } else {
        a_14_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_14_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter145.read()))) {
        a_14_ce1 = ap_const_logic_1;
    } else {
        a_14_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_14_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_E))) {
        a_14_we0 = ap_const_logic_1;
    } else {
        a_14_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_15_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter150.read()))) {
        a_15_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter149_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_15_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_15_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_15_address1() {
    a_15_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter154_reg.read());
}

void HLS_accel::thread_a_15_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter150.read())))) {
        a_15_ce0 = ap_const_logic_1;
    } else {
        a_15_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_15_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter155.read()))) {
        a_15_ce1 = ap_const_logic_1;
    } else {
        a_15_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_15_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         !esl_seteq<1,5,5>(ap_const_lv5_0, arrayNo_cast_fu_1793_p4.read()) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_1) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_2) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_3) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_4) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_5) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_6) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_7) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_8) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_9) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_A) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_B) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_C) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_D) && 
         !esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_E))) {
        a_15_we0 = ap_const_logic_1;
    } else {
        a_15_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_1_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter10.read()))) {
        a_1_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter9_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_1_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_1_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_1_address1() {
    a_1_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter14_reg.read());
}

void HLS_accel::thread_a_1_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter10.read())))) {
        a_1_ce0 = ap_const_logic_1;
    } else {
        a_1_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_1_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter15.read()))) {
        a_1_ce1 = ap_const_logic_1;
    } else {
        a_1_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_1_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_1))) {
        a_1_we0 = ap_const_logic_1;
    } else {
        a_1_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_2_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter20.read()))) {
        a_2_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter19_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_2_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_2_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_2_address1() {
    a_2_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter24_reg.read());
}

void HLS_accel::thread_a_2_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter20.read())))) {
        a_2_ce0 = ap_const_logic_1;
    } else {
        a_2_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_2_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter25.read()))) {
        a_2_ce1 = ap_const_logic_1;
    } else {
        a_2_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_2_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_2))) {
        a_2_we0 = ap_const_logic_1;
    } else {
        a_2_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_3_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter30.read()))) {
        a_3_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter29_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_3_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_3_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_3_address1() {
    a_3_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter34_reg.read());
}

void HLS_accel::thread_a_3_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter30.read())))) {
        a_3_ce0 = ap_const_logic_1;
    } else {
        a_3_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter35.read()))) {
        a_3_ce1 = ap_const_logic_1;
    } else {
        a_3_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_3_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_3))) {
        a_3_we0 = ap_const_logic_1;
    } else {
        a_3_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_4_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter40.read()))) {
        a_4_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter39_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_4_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_4_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_4_address1() {
    a_4_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter44_reg.read());
}

void HLS_accel::thread_a_4_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter40.read())))) {
        a_4_ce0 = ap_const_logic_1;
    } else {
        a_4_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_4_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter45.read()))) {
        a_4_ce1 = ap_const_logic_1;
    } else {
        a_4_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_4_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_4))) {
        a_4_we0 = ap_const_logic_1;
    } else {
        a_4_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_5_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter50.read()))) {
        a_5_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter49_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_5_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_5_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_5_address1() {
    a_5_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter54_reg.read());
}

void HLS_accel::thread_a_5_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter50.read())))) {
        a_5_ce0 = ap_const_logic_1;
    } else {
        a_5_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_5_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter55.read()))) {
        a_5_ce1 = ap_const_logic_1;
    } else {
        a_5_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_5_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_5))) {
        a_5_we0 = ap_const_logic_1;
    } else {
        a_5_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_6_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter60.read()))) {
        a_6_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter59_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_6_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_6_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_6_address1() {
    a_6_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter64_reg.read());
}

void HLS_accel::thread_a_6_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter60.read())))) {
        a_6_ce0 = ap_const_logic_1;
    } else {
        a_6_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_6_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter65.read()))) {
        a_6_ce1 = ap_const_logic_1;
    } else {
        a_6_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_6_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_6))) {
        a_6_we0 = ap_const_logic_1;
    } else {
        a_6_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_7_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter70.read()))) {
        a_7_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter69_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_7_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_7_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_7_address1() {
    a_7_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter74_reg.read());
}

void HLS_accel::thread_a_7_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter70.read())))) {
        a_7_ce0 = ap_const_logic_1;
    } else {
        a_7_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_7_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter75.read()))) {
        a_7_ce1 = ap_const_logic_1;
    } else {
        a_7_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_7_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_7))) {
        a_7_we0 = ap_const_logic_1;
    } else {
        a_7_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_8_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter80.read()))) {
        a_8_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter79_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_8_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_8_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_8_address1() {
    a_8_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter84_reg.read());
}

void HLS_accel::thread_a_8_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter80.read())))) {
        a_8_ce0 = ap_const_logic_1;
    } else {
        a_8_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_8_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter85.read()))) {
        a_8_ce1 = ap_const_logic_1;
    } else {
        a_8_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_8_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_8))) {
        a_8_we0 = ap_const_logic_1;
    } else {
        a_8_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_9_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter90.read()))) {
        a_9_address0 =  (sc_lv<6>) (a_0_load_mid2_reg_2353_pp2_iter89_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_9_address0 =  (sc_lv<6>) (tmp_1_fu_1815_p1.read());
    } else {
        a_9_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_a_9_address1() {
    a_9_address1 =  (sc_lv<6>) (a_0_load_1_mid2_reg_2377_pp2_iter94_reg.read());
}

void HLS_accel::thread_a_9_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter90.read())))) {
        a_9_ce0 = ap_const_logic_1;
    } else {
        a_9_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_9_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter95.read()))) {
        a_9_ce1 = ap_const_logic_1;
    } else {
        a_9_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_a_9_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(arrayNo_cast_fu_1793_p4.read(), ap_const_lv5_9))) {
        a_9_we0 = ap_const_logic_1;
    } else {
        a_9_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_CS_fsm_pp2_stage0() {
    ap_CS_fsm_pp2_stage0 = ap_CS_fsm.read()[7];
}

void HLS_accel::thread_ap_CS_fsm_pp3_stage0() {
    ap_CS_fsm_pp3_stage0 = ap_CS_fsm.read()[9];
}

void HLS_accel::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void HLS_accel::thread_ap_CS_fsm_state175() {
    ap_CS_fsm_state175 = ap_CS_fsm.read()[8];
}

void HLS_accel::thread_ap_CS_fsm_state179() {
    ap_CS_fsm_state179 = ap_CS_fsm.read()[10];
}

void HLS_accel::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void HLS_accel::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void HLS_accel::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void HLS_accel::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void HLS_accel::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void HLS_accel::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void HLS_accel::thread_ap_block_pp2_stage0() {
    ap_block_pp2_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_pp2_stage0_11001() {
    ap_block_pp2_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_pp2_stage0_subdone() {
    ap_block_pp2_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_pp3_stage0() {
    ap_block_pp3_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_pp3_stage0_01001() {
    ap_block_pp3_stage0_01001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_pp3_stage0_11001() {
    ap_block_pp3_stage0_11001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state177_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state178_io.read())));
}

void HLS_accel::thread_ap_block_pp3_stage0_subdone() {
    ap_block_pp3_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state177_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state178_io.read())));
}

void HLS_accel::thread_ap_block_state100_pp2_stage0_iter92() {
    ap_block_state100_pp2_stage0_iter92 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state101_pp2_stage0_iter93() {
    ap_block_state101_pp2_stage0_iter93 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state102_pp2_stage0_iter94() {
    ap_block_state102_pp2_stage0_iter94 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state103_pp2_stage0_iter95() {
    ap_block_state103_pp2_stage0_iter95 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state104_pp2_stage0_iter96() {
    ap_block_state104_pp2_stage0_iter96 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state105_pp2_stage0_iter97() {
    ap_block_state105_pp2_stage0_iter97 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state106_pp2_stage0_iter98() {
    ap_block_state106_pp2_stage0_iter98 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state107_pp2_stage0_iter99() {
    ap_block_state107_pp2_stage0_iter99 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state108_pp2_stage0_iter100() {
    ap_block_state108_pp2_stage0_iter100 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state109_pp2_stage0_iter101() {
    ap_block_state109_pp2_stage0_iter101 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state10_pp2_stage0_iter2() {
    ap_block_state10_pp2_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state110_pp2_stage0_iter102() {
    ap_block_state110_pp2_stage0_iter102 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state111_pp2_stage0_iter103() {
    ap_block_state111_pp2_stage0_iter103 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state112_pp2_stage0_iter104() {
    ap_block_state112_pp2_stage0_iter104 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state113_pp2_stage0_iter105() {
    ap_block_state113_pp2_stage0_iter105 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state114_pp2_stage0_iter106() {
    ap_block_state114_pp2_stage0_iter106 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state115_pp2_stage0_iter107() {
    ap_block_state115_pp2_stage0_iter107 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state116_pp2_stage0_iter108() {
    ap_block_state116_pp2_stage0_iter108 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state117_pp2_stage0_iter109() {
    ap_block_state117_pp2_stage0_iter109 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state118_pp2_stage0_iter110() {
    ap_block_state118_pp2_stage0_iter110 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state119_pp2_stage0_iter111() {
    ap_block_state119_pp2_stage0_iter111 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state11_pp2_stage0_iter3() {
    ap_block_state11_pp2_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state120_pp2_stage0_iter112() {
    ap_block_state120_pp2_stage0_iter112 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state121_pp2_stage0_iter113() {
    ap_block_state121_pp2_stage0_iter113 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state122_pp2_stage0_iter114() {
    ap_block_state122_pp2_stage0_iter114 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state123_pp2_stage0_iter115() {
    ap_block_state123_pp2_stage0_iter115 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state124_pp2_stage0_iter116() {
    ap_block_state124_pp2_stage0_iter116 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state125_pp2_stage0_iter117() {
    ap_block_state125_pp2_stage0_iter117 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state126_pp2_stage0_iter118() {
    ap_block_state126_pp2_stage0_iter118 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state127_pp2_stage0_iter119() {
    ap_block_state127_pp2_stage0_iter119 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state128_pp2_stage0_iter120() {
    ap_block_state128_pp2_stage0_iter120 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state129_pp2_stage0_iter121() {
    ap_block_state129_pp2_stage0_iter121 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state12_pp2_stage0_iter4() {
    ap_block_state12_pp2_stage0_iter4 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state130_pp2_stage0_iter122() {
    ap_block_state130_pp2_stage0_iter122 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state131_pp2_stage0_iter123() {
    ap_block_state131_pp2_stage0_iter123 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state132_pp2_stage0_iter124() {
    ap_block_state132_pp2_stage0_iter124 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state133_pp2_stage0_iter125() {
    ap_block_state133_pp2_stage0_iter125 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state134_pp2_stage0_iter126() {
    ap_block_state134_pp2_stage0_iter126 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state135_pp2_stage0_iter127() {
    ap_block_state135_pp2_stage0_iter127 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state136_pp2_stage0_iter128() {
    ap_block_state136_pp2_stage0_iter128 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state137_pp2_stage0_iter129() {
    ap_block_state137_pp2_stage0_iter129 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state138_pp2_stage0_iter130() {
    ap_block_state138_pp2_stage0_iter130 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state139_pp2_stage0_iter131() {
    ap_block_state139_pp2_stage0_iter131 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state13_pp2_stage0_iter5() {
    ap_block_state13_pp2_stage0_iter5 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state140_pp2_stage0_iter132() {
    ap_block_state140_pp2_stage0_iter132 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state141_pp2_stage0_iter133() {
    ap_block_state141_pp2_stage0_iter133 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state142_pp2_stage0_iter134() {
    ap_block_state142_pp2_stage0_iter134 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state143_pp2_stage0_iter135() {
    ap_block_state143_pp2_stage0_iter135 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state144_pp2_stage0_iter136() {
    ap_block_state144_pp2_stage0_iter136 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state145_pp2_stage0_iter137() {
    ap_block_state145_pp2_stage0_iter137 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state146_pp2_stage0_iter138() {
    ap_block_state146_pp2_stage0_iter138 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state147_pp2_stage0_iter139() {
    ap_block_state147_pp2_stage0_iter139 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state148_pp2_stage0_iter140() {
    ap_block_state148_pp2_stage0_iter140 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state149_pp2_stage0_iter141() {
    ap_block_state149_pp2_stage0_iter141 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state14_pp2_stage0_iter6() {
    ap_block_state14_pp2_stage0_iter6 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state150_pp2_stage0_iter142() {
    ap_block_state150_pp2_stage0_iter142 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state151_pp2_stage0_iter143() {
    ap_block_state151_pp2_stage0_iter143 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state152_pp2_stage0_iter144() {
    ap_block_state152_pp2_stage0_iter144 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state153_pp2_stage0_iter145() {
    ap_block_state153_pp2_stage0_iter145 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state154_pp2_stage0_iter146() {
    ap_block_state154_pp2_stage0_iter146 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state155_pp2_stage0_iter147() {
    ap_block_state155_pp2_stage0_iter147 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state156_pp2_stage0_iter148() {
    ap_block_state156_pp2_stage0_iter148 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state157_pp2_stage0_iter149() {
    ap_block_state157_pp2_stage0_iter149 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state158_pp2_stage0_iter150() {
    ap_block_state158_pp2_stage0_iter150 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state159_pp2_stage0_iter151() {
    ap_block_state159_pp2_stage0_iter151 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state15_pp2_stage0_iter7() {
    ap_block_state15_pp2_stage0_iter7 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state160_pp2_stage0_iter152() {
    ap_block_state160_pp2_stage0_iter152 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state161_pp2_stage0_iter153() {
    ap_block_state161_pp2_stage0_iter153 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state162_pp2_stage0_iter154() {
    ap_block_state162_pp2_stage0_iter154 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state163_pp2_stage0_iter155() {
    ap_block_state163_pp2_stage0_iter155 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state164_pp2_stage0_iter156() {
    ap_block_state164_pp2_stage0_iter156 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state165_pp2_stage0_iter157() {
    ap_block_state165_pp2_stage0_iter157 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state166_pp2_stage0_iter158() {
    ap_block_state166_pp2_stage0_iter158 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state167_pp2_stage0_iter159() {
    ap_block_state167_pp2_stage0_iter159 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state168_pp2_stage0_iter160() {
    ap_block_state168_pp2_stage0_iter160 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state169_pp2_stage0_iter161() {
    ap_block_state169_pp2_stage0_iter161 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state16_pp2_stage0_iter8() {
    ap_block_state16_pp2_stage0_iter8 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state170_pp2_stage0_iter162() {
    ap_block_state170_pp2_stage0_iter162 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state171_pp2_stage0_iter163() {
    ap_block_state171_pp2_stage0_iter163 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state172_pp2_stage0_iter164() {
    ap_block_state172_pp2_stage0_iter164 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state173_pp2_stage0_iter165() {
    ap_block_state173_pp2_stage0_iter165 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state174_pp2_stage0_iter166() {
    ap_block_state174_pp2_stage0_iter166 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state176_pp3_stage0_iter0() {
    ap_block_state176_pp3_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state177_io() {
    ap_block_state177_io = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()) && esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_data_V_1_ack_in.read()));
}

void HLS_accel::thread_ap_block_state177_pp3_stage0_iter1() {
    ap_block_state177_pp3_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state178_io() {
    ap_block_state178_io = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406_pp3_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_data_V_1_ack_in.read()));
}

void HLS_accel::thread_ap_block_state178_pp3_stage0_iter2() {
    ap_block_state178_pp3_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state179() {
    ap_block_state179 = (esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_data_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_keep_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_strb_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_user_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_last_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_id_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_dest_V_1_ack_in.read()));
}

void HLS_accel::thread_ap_block_state17_pp2_stage0_iter9() {
    ap_block_state17_pp2_stage0_iter9 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state18_pp2_stage0_iter10() {
    ap_block_state18_pp2_stage0_iter10 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state19_pp2_stage0_iter11() {
    ap_block_state19_pp2_stage0_iter11 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state2() {
    ap_block_state2 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_1733_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()));
}

void HLS_accel::thread_ap_block_state20_pp2_stage0_iter12() {
    ap_block_state20_pp2_stage0_iter12 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state21_pp2_stage0_iter13() {
    ap_block_state21_pp2_stage0_iter13 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state22_pp2_stage0_iter14() {
    ap_block_state22_pp2_stage0_iter14 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state23_pp2_stage0_iter15() {
    ap_block_state23_pp2_stage0_iter15 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state24_pp2_stage0_iter16() {
    ap_block_state24_pp2_stage0_iter16 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state25_pp2_stage0_iter17() {
    ap_block_state25_pp2_stage0_iter17 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state26_pp2_stage0_iter18() {
    ap_block_state26_pp2_stage0_iter18 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state27_pp2_stage0_iter19() {
    ap_block_state27_pp2_stage0_iter19 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state28_pp2_stage0_iter20() {
    ap_block_state28_pp2_stage0_iter20 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state29_pp2_stage0_iter21() {
    ap_block_state29_pp2_stage0_iter21 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state30_pp2_stage0_iter22() {
    ap_block_state30_pp2_stage0_iter22 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state31_pp2_stage0_iter23() {
    ap_block_state31_pp2_stage0_iter23 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state32_pp2_stage0_iter24() {
    ap_block_state32_pp2_stage0_iter24 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state33_pp2_stage0_iter25() {
    ap_block_state33_pp2_stage0_iter25 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state34_pp2_stage0_iter26() {
    ap_block_state34_pp2_stage0_iter26 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state35_pp2_stage0_iter27() {
    ap_block_state35_pp2_stage0_iter27 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state36_pp2_stage0_iter28() {
    ap_block_state36_pp2_stage0_iter28 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state37_pp2_stage0_iter29() {
    ap_block_state37_pp2_stage0_iter29 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state38_pp2_stage0_iter30() {
    ap_block_state38_pp2_stage0_iter30 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state39_pp2_stage0_iter31() {
    ap_block_state39_pp2_stage0_iter31 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state4() {
    ap_block_state4 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()));
}

void HLS_accel::thread_ap_block_state40_pp2_stage0_iter32() {
    ap_block_state40_pp2_stage0_iter32 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state41_pp2_stage0_iter33() {
    ap_block_state41_pp2_stage0_iter33 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state42_pp2_stage0_iter34() {
    ap_block_state42_pp2_stage0_iter34 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state43_pp2_stage0_iter35() {
    ap_block_state43_pp2_stage0_iter35 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state44_pp2_stage0_iter36() {
    ap_block_state44_pp2_stage0_iter36 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state45_pp2_stage0_iter37() {
    ap_block_state45_pp2_stage0_iter37 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state46_pp2_stage0_iter38() {
    ap_block_state46_pp2_stage0_iter38 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state47_pp2_stage0_iter39() {
    ap_block_state47_pp2_stage0_iter39 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state48_pp2_stage0_iter40() {
    ap_block_state48_pp2_stage0_iter40 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state49_pp2_stage0_iter41() {
    ap_block_state49_pp2_stage0_iter41 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state50_pp2_stage0_iter42() {
    ap_block_state50_pp2_stage0_iter42 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state51_pp2_stage0_iter43() {
    ap_block_state51_pp2_stage0_iter43 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state52_pp2_stage0_iter44() {
    ap_block_state52_pp2_stage0_iter44 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state53_pp2_stage0_iter45() {
    ap_block_state53_pp2_stage0_iter45 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state54_pp2_stage0_iter46() {
    ap_block_state54_pp2_stage0_iter46 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state55_pp2_stage0_iter47() {
    ap_block_state55_pp2_stage0_iter47 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state56_pp2_stage0_iter48() {
    ap_block_state56_pp2_stage0_iter48 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state57_pp2_stage0_iter49() {
    ap_block_state57_pp2_stage0_iter49 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state58_pp2_stage0_iter50() {
    ap_block_state58_pp2_stage0_iter50 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state59_pp2_stage0_iter51() {
    ap_block_state59_pp2_stage0_iter51 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state60_pp2_stage0_iter52() {
    ap_block_state60_pp2_stage0_iter52 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state61_pp2_stage0_iter53() {
    ap_block_state61_pp2_stage0_iter53 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state62_pp2_stage0_iter54() {
    ap_block_state62_pp2_stage0_iter54 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state63_pp2_stage0_iter55() {
    ap_block_state63_pp2_stage0_iter55 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state64_pp2_stage0_iter56() {
    ap_block_state64_pp2_stage0_iter56 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state65_pp2_stage0_iter57() {
    ap_block_state65_pp2_stage0_iter57 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state66_pp2_stage0_iter58() {
    ap_block_state66_pp2_stage0_iter58 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state67_pp2_stage0_iter59() {
    ap_block_state67_pp2_stage0_iter59 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state68_pp2_stage0_iter60() {
    ap_block_state68_pp2_stage0_iter60 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state69_pp2_stage0_iter61() {
    ap_block_state69_pp2_stage0_iter61 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state70_pp2_stage0_iter62() {
    ap_block_state70_pp2_stage0_iter62 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state71_pp2_stage0_iter63() {
    ap_block_state71_pp2_stage0_iter63 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state72_pp2_stage0_iter64() {
    ap_block_state72_pp2_stage0_iter64 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state73_pp2_stage0_iter65() {
    ap_block_state73_pp2_stage0_iter65 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state74_pp2_stage0_iter66() {
    ap_block_state74_pp2_stage0_iter66 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state75_pp2_stage0_iter67() {
    ap_block_state75_pp2_stage0_iter67 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state76_pp2_stage0_iter68() {
    ap_block_state76_pp2_stage0_iter68 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state77_pp2_stage0_iter69() {
    ap_block_state77_pp2_stage0_iter69 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state78_pp2_stage0_iter70() {
    ap_block_state78_pp2_stage0_iter70 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state79_pp2_stage0_iter71() {
    ap_block_state79_pp2_stage0_iter71 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state80_pp2_stage0_iter72() {
    ap_block_state80_pp2_stage0_iter72 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state81_pp2_stage0_iter73() {
    ap_block_state81_pp2_stage0_iter73 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state82_pp2_stage0_iter74() {
    ap_block_state82_pp2_stage0_iter74 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state83_pp2_stage0_iter75() {
    ap_block_state83_pp2_stage0_iter75 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state84_pp2_stage0_iter76() {
    ap_block_state84_pp2_stage0_iter76 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state85_pp2_stage0_iter77() {
    ap_block_state85_pp2_stage0_iter77 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state86_pp2_stage0_iter78() {
    ap_block_state86_pp2_stage0_iter78 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state87_pp2_stage0_iter79() {
    ap_block_state87_pp2_stage0_iter79 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state88_pp2_stage0_iter80() {
    ap_block_state88_pp2_stage0_iter80 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state89_pp2_stage0_iter81() {
    ap_block_state89_pp2_stage0_iter81 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state8_pp2_stage0_iter0() {
    ap_block_state8_pp2_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state90_pp2_stage0_iter82() {
    ap_block_state90_pp2_stage0_iter82 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state91_pp2_stage0_iter83() {
    ap_block_state91_pp2_stage0_iter83 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state92_pp2_stage0_iter84() {
    ap_block_state92_pp2_stage0_iter84 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state93_pp2_stage0_iter85() {
    ap_block_state93_pp2_stage0_iter85 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state94_pp2_stage0_iter86() {
    ap_block_state94_pp2_stage0_iter86 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state95_pp2_stage0_iter87() {
    ap_block_state95_pp2_stage0_iter87 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state96_pp2_stage0_iter88() {
    ap_block_state96_pp2_stage0_iter88 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state97_pp2_stage0_iter89() {
    ap_block_state97_pp2_stage0_iter89 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state98_pp2_stage0_iter90() {
    ap_block_state98_pp2_stage0_iter90 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state99_pp2_stage0_iter91() {
    ap_block_state99_pp2_stage0_iter91 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_block_state9_pp2_stage0_iter1() {
    ap_block_state9_pp2_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void HLS_accel::thread_ap_condition_pp2_exit_iter0_state8() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_flatten1_fu_2029_p2.read())) {
        ap_condition_pp2_exit_iter0_state8 = ap_const_logic_1;
    } else {
        ap_condition_pp2_exit_iter0_state8 = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_condition_pp3_exit_iter0_state176() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_flatten2_fu_2162_p2.read())) {
        ap_condition_pp3_exit_iter0_state176 = ap_const_logic_1;
    } else {
        ap_condition_pp3_exit_iter0_state176 = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_data_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_keep_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_strb_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_user_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_last_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_id_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_dest_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state179.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_data_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_keep_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_strb_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_user_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_last_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_id_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_dest_V_1_ack_in.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_enable_pp2() {
    ap_enable_pp2 = (ap_idle_pp2.read() ^ ap_const_logic_1);
}

void HLS_accel::thread_ap_enable_pp3() {
    ap_enable_pp3 = (ap_idle_pp3.read() ^ ap_const_logic_1);
}

void HLS_accel::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_idle_pp2() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter62.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter63.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter64.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter65.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter66.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter67.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter68.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter69.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter70.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter71.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter72.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter73.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter74.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter75.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter76.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter77.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter78.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter79.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter80.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter81.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter82.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter83.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter84.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter85.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter86.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter87.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter88.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter89.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter90.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter91.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter92.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter93.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter94.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter95.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter96.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter97.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter98.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter99.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter100.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter101.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter102.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter103.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter104.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter105.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter106.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter107.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter108.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter109.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter110.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter111.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter112.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter113.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter114.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter115.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter116.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter117.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter118.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter119.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter120.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter121.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter122.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter123.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter124.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter125.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter126.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter127.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter128.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter129.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter130.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter132.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter133.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter134.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter135.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter136.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter137.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter138.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter139.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter140.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter141.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter142.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter143.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter144.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter145.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter146.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter147.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter148.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter149.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter150.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter151.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter152.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter153.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter154.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter155.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter156.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter157.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter158.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter159.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter160.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter161.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter162.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter163.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter164.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter165.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter166.read()))) {
        ap_idle_pp2 = ap_const_logic_1;
    } else {
        ap_idle_pp2 = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_idle_pp3() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp3_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp3_iter2.read()))) {
        ap_idle_pp3 = ap_const_logic_1;
    } else {
        ap_idle_pp3 = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_phi_mux_i1_0_i_i_phi_fu_1422_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten1_reg_2332.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        ap_phi_mux_i1_0_i_i_phi_fu_1422_p4 = p_v_reg_2347.read();
    } else {
        ap_phi_mux_i1_0_i_i_phi_fu_1422_p4 = i1_0_i_i_reg_1418.read();
    }
}

void HLS_accel::thread_ap_phi_mux_i4_0_i_phi_fu_1455_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten2_reg_3406.read()))) {
        ap_phi_mux_i4_0_i_phi_fu_1455_p4 = tmp_2_mid2_v_v_reg_3415.read();
    } else {
        ap_phi_mux_i4_0_i_phi_fu_1455_p4 = i4_0_i_reg_1451.read();
    }
}

void HLS_accel::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_data_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_keep_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_strb_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_user_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_last_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_id_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_dest_V_1_state.read()[0]) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state179.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_data_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_keep_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_strb_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_user_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_last_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_id_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, OUTPUT_STREAM_dest_V_1_ack_in.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void HLS_accel::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void HLS_accel::thread_arrayNo1_cast_mid2_fu_1881_p4() {
    arrayNo1_cast_mid2_fu_1881_p4 = arrayNo1_cast_mid2_v_fu_1873_p3.read().range(5, 1);
}

void HLS_accel::thread_arrayNo1_cast_mid2_v_fu_1873_p3() {
    arrayNo1_cast_mid2_v_fu_1873_p3 = (!exitcond2_i_fu_1859_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond2_i_fu_1859_p2.read()[0].to_bool())? i_1_fu_1853_p2.read(): i1_0_i_reg_1363.read());
}

void HLS_accel::thread_arrayNo_cast_fu_1793_p4() {
    arrayNo_cast_fu_1793_p4 = j_0_i_mid2_fu_1757_p3.read().range(5, 1);
}

void HLS_accel::thread_b_0_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        b_0_address0 =  (sc_lv<6>) (tmp_10_fu_2112_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_0_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_0_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_0_address1() {
    b_0_address1 =  (sc_lv<6>) (tmp_27_cast_fu_2157_p1.read());
}

void HLS_accel::thread_b_0_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())))) {
        b_0_ce0 = ap_const_logic_1;
    } else {
        b_0_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_0_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter5.read()))) {
        b_0_ce1 = ap_const_logic_1;
    } else {
        b_0_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_0_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_0, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_0_we0 = ap_const_logic_1;
    } else {
        b_0_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_10_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter100.read()))) {
        b_10_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter99_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_10_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_10_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_10_address1() {
    b_10_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter104_reg.read());
}

void HLS_accel::thread_b_10_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter100.read())))) {
        b_10_ce0 = ap_const_logic_1;
    } else {
        b_10_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_10_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter105.read()))) {
        b_10_ce1 = ap_const_logic_1;
    } else {
        b_10_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_10_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_A, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_10_we0 = ap_const_logic_1;
    } else {
        b_10_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_11_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter110.read()))) {
        b_11_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter109_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_11_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_11_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_11_address1() {
    b_11_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter114_reg.read());
}

void HLS_accel::thread_b_11_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter110.read())))) {
        b_11_ce0 = ap_const_logic_1;
    } else {
        b_11_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_11_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter115.read()))) {
        b_11_ce1 = ap_const_logic_1;
    } else {
        b_11_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_11_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_B, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_11_we0 = ap_const_logic_1;
    } else {
        b_11_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_12_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter120.read()))) {
        b_12_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter119_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_12_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_12_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_12_address1() {
    b_12_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter124_reg.read());
}

void HLS_accel::thread_b_12_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter120.read())))) {
        b_12_ce0 = ap_const_logic_1;
    } else {
        b_12_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_12_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter125.read()))) {
        b_12_ce1 = ap_const_logic_1;
    } else {
        b_12_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_12_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_C, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_12_we0 = ap_const_logic_1;
    } else {
        b_12_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_13_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter130.read()))) {
        b_13_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter129_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_13_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_13_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_13_address1() {
    b_13_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter134_reg.read());
}

void HLS_accel::thread_b_13_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter130.read())))) {
        b_13_ce0 = ap_const_logic_1;
    } else {
        b_13_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_13_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter135.read()))) {
        b_13_ce1 = ap_const_logic_1;
    } else {
        b_13_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_13_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_D, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_13_we0 = ap_const_logic_1;
    } else {
        b_13_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_14_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter140.read()))) {
        b_14_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter139_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_14_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_14_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_14_address1() {
    b_14_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter144_reg.read());
}

void HLS_accel::thread_b_14_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter140.read())))) {
        b_14_ce0 = ap_const_logic_1;
    } else {
        b_14_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_14_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter145.read()))) {
        b_14_ce1 = ap_const_logic_1;
    } else {
        b_14_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_14_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_E, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_14_we0 = ap_const_logic_1;
    } else {
        b_14_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_15_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter150.read()))) {
        b_15_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter149_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_15_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_15_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_15_address1() {
    b_15_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter154_reg.read());
}

void HLS_accel::thread_b_15_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter150.read())))) {
        b_15_ce0 = ap_const_logic_1;
    } else {
        b_15_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_15_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter155.read()))) {
        b_15_ce1 = ap_const_logic_1;
    } else {
        b_15_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_15_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         !esl_seteq<1,5,5>(ap_const_lv5_0, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_1, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_2, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_3, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_4, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_5, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_6, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_7, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_8, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_9, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_A, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_B, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_C, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_D, arrayNo1_cast_mid2_fu_1881_p4.read()) && 
         !esl_seteq<1,5,5>(ap_const_lv5_E, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_15_we0 = ap_const_logic_1;
    } else {
        b_15_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_1_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter10.read()))) {
        b_1_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter9_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_1_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_1_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_1_address1() {
    b_1_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter14_reg.read());
}

void HLS_accel::thread_b_1_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter10.read())))) {
        b_1_ce0 = ap_const_logic_1;
    } else {
        b_1_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_1_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter15.read()))) {
        b_1_ce1 = ap_const_logic_1;
    } else {
        b_1_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_1_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_1, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_1_we0 = ap_const_logic_1;
    } else {
        b_1_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_2_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter20.read()))) {
        b_2_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter19_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_2_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_2_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_2_address1() {
    b_2_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter24_reg.read());
}

void HLS_accel::thread_b_2_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter20.read())))) {
        b_2_ce0 = ap_const_logic_1;
    } else {
        b_2_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_2_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter25.read()))) {
        b_2_ce1 = ap_const_logic_1;
    } else {
        b_2_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_2_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_2, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_2_we0 = ap_const_logic_1;
    } else {
        b_2_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_3_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter30.read()))) {
        b_3_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter29_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_3_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_3_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_3_address1() {
    b_3_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter34_reg.read());
}

void HLS_accel::thread_b_3_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter30.read())))) {
        b_3_ce0 = ap_const_logic_1;
    } else {
        b_3_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter35.read()))) {
        b_3_ce1 = ap_const_logic_1;
    } else {
        b_3_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_3_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_3, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_3_we0 = ap_const_logic_1;
    } else {
        b_3_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_4_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter40.read()))) {
        b_4_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter39_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_4_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_4_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_4_address1() {
    b_4_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter44_reg.read());
}

void HLS_accel::thread_b_4_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter40.read())))) {
        b_4_ce0 = ap_const_logic_1;
    } else {
        b_4_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_4_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter45.read()))) {
        b_4_ce1 = ap_const_logic_1;
    } else {
        b_4_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_4_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_4, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_4_we0 = ap_const_logic_1;
    } else {
        b_4_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_5_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter50.read()))) {
        b_5_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter49_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_5_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_5_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_5_address1() {
    b_5_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter54_reg.read());
}

void HLS_accel::thread_b_5_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter50.read())))) {
        b_5_ce0 = ap_const_logic_1;
    } else {
        b_5_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_5_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter55.read()))) {
        b_5_ce1 = ap_const_logic_1;
    } else {
        b_5_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_5_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_5, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_5_we0 = ap_const_logic_1;
    } else {
        b_5_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_6_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter60.read()))) {
        b_6_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter59_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_6_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_6_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_6_address1() {
    b_6_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter64_reg.read());
}

void HLS_accel::thread_b_6_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter60.read())))) {
        b_6_ce0 = ap_const_logic_1;
    } else {
        b_6_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_6_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter65.read()))) {
        b_6_ce1 = ap_const_logic_1;
    } else {
        b_6_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_6_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_6, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_6_we0 = ap_const_logic_1;
    } else {
        b_6_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_7_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter70.read()))) {
        b_7_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter69_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_7_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_7_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_7_address1() {
    b_7_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter74_reg.read());
}

void HLS_accel::thread_b_7_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter70.read())))) {
        b_7_ce0 = ap_const_logic_1;
    } else {
        b_7_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_7_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter75.read()))) {
        b_7_ce1 = ap_const_logic_1;
    } else {
        b_7_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_7_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_7, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_7_we0 = ap_const_logic_1;
    } else {
        b_7_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_8_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter80.read()))) {
        b_8_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter79_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_8_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_8_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_8_address1() {
    b_8_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter84_reg.read());
}

void HLS_accel::thread_b_8_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter80.read())))) {
        b_8_ce0 = ap_const_logic_1;
    } else {
        b_8_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_8_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter85.read()))) {
        b_8_ce1 = ap_const_logic_1;
    } else {
        b_8_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_8_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_8, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_8_we0 = ap_const_logic_1;
    } else {
        b_8_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_9_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter90.read()))) {
        b_9_address0 =  (sc_lv<6>) (tmp_10_reg_2397_pp2_iter89_reg.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        b_9_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1931_p1.read());
    } else {
        b_9_address0 = "XXXXXX";
    }
}

void HLS_accel::thread_b_9_address1() {
    b_9_address1 =  (sc_lv<6>) (tmp_27_cast_reg_2447_pp2_iter94_reg.read());
}

void HLS_accel::thread_b_9_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter90.read())))) {
        b_9_ce0 = ap_const_logic_1;
    } else {
        b_9_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_9_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter95.read()))) {
        b_9_ce1 = ap_const_logic_1;
    } else {
        b_9_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_b_9_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_fu_1841_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, INPUT_STREAM_data_V_0_vld_out.read())) && 
         esl_seteq<1,5,5>(ap_const_lv5_9, arrayNo1_cast_mid2_fu_1881_p4.read()))) {
        b_9_we0 = ap_const_logic_1;
    } else {
        b_9_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_exitcond1_i_i_fu_2047_p2() {
    exitcond1_i_i_fu_2047_p2 = (!j2_0_i_i_reg_1429.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j2_0_i_i_reg_1429.read() == ap_const_lv6_20);
}

void HLS_accel::thread_exitcond2_i_fu_1859_p2() {
    exitcond2_i_fu_1859_p2 = (!j2_0_i_reg_1374.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j2_0_i_reg_1374.read() == ap_const_lv6_20);
}

void HLS_accel::thread_exitcond3_i_i_fu_1981_p2() {
    exitcond3_i_i_fu_1981_p2 = (!j_0_i_i_reg_1396.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_0_i_i_reg_1396.read() == ap_const_lv6_20);
}

void HLS_accel::thread_exitcond4_i_fu_1751_p2() {
    exitcond4_i_fu_1751_p2 = (!j_0_i_reg_1341.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_0_i_reg_1341.read() == ap_const_lv6_20);
}

void HLS_accel::thread_exitcond4_i_i_fu_1957_p2() {
    exitcond4_i_i_fu_1957_p2 = (!i_0_i_i_reg_1385.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_i_reg_1385.read() == ap_const_lv6_20);
}

void HLS_accel::thread_exitcond_flatten1_fu_2029_p2() {
    exitcond_flatten1_fu_2029_p2 = (!indvar_flatten1_reg_1407.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten1_reg_1407.read() == ap_const_lv11_400);
}

void HLS_accel::thread_exitcond_flatten2_fu_2162_p2() {
    exitcond_flatten2_fu_2162_p2 = (!indvar_flatten2_reg_1440.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten2_reg_1440.read() == ap_const_lv11_400);
}

void HLS_accel::thread_exitcond_flatten8_fu_1841_p2() {
    exitcond_flatten8_fu_1841_p2 = (!indvar_flatten6_reg_1352.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten6_reg_1352.read() == ap_const_lv11_400);
}

void HLS_accel::thread_exitcond_flatten_fu_1733_p2() {
    exitcond_flatten_fu_1733_p2 = (!indvar_flatten_reg_1319.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_1319.read() == ap_const_lv11_400);
}

void HLS_accel::thread_exitcond_i_fu_2180_p2() {
    exitcond_i_fu_2180_p2 = (!j5_0_i_reg_1462.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j5_0_i_reg_1462.read() == ap_const_lv6_20);
}

void HLS_accel::thread_i_1_fu_1853_p2() {
    i_1_fu_1853_p2 = (!ap_const_lv6_1.is_01() || !i1_0_i_reg_1363.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(i1_0_i_reg_1363.read()));
}

void HLS_accel::thread_i_2_fu_1963_p2() {
    i_2_fu_1963_p2 = (!i_0_i_i_reg_1385.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_0_i_i_reg_1385.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void HLS_accel::thread_i_3_fu_2041_p2() {
    i_3_fu_2041_p2 = (!ap_phi_mux_i1_0_i_i_phi_fu_1422_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(ap_phi_mux_i1_0_i_i_phi_fu_1422_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void HLS_accel::thread_i_4_fu_2174_p2() {
    i_4_fu_2174_p2 = (!ap_const_lv6_1.is_01() || !ap_phi_mux_i4_0_i_phi_fu_1455_p4.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(ap_phi_mux_i4_0_i_phi_fu_1455_p4.read()));
}

void HLS_accel::thread_i_fu_1745_p2() {
    i_fu_1745_p2 = (!ap_const_lv6_1.is_01() || !i_0_i_reg_1330.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(i_0_i_reg_1330.read()));
}

void HLS_accel::thread_indvar_flatten_next1_fu_2035_p2() {
    indvar_flatten_next1_fu_2035_p2 = (!indvar_flatten1_reg_1407.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten1_reg_1407.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void HLS_accel::thread_indvar_flatten_next2_fu_2168_p2() {
    indvar_flatten_next2_fu_2168_p2 = (!indvar_flatten2_reg_1440.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten2_reg_1440.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void HLS_accel::thread_indvar_flatten_next7_fu_1847_p2() {
    indvar_flatten_next7_fu_1847_p2 = (!indvar_flatten6_reg_1352.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten6_reg_1352.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void HLS_accel::thread_indvar_flatten_next_fu_1739_p2() {
    indvar_flatten_next_fu_1739_p2 = (!indvar_flatten_reg_1319.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten_reg_1319.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void HLS_accel::thread_j2_0_i_i_mid2_fu_2053_p3() {
    j2_0_i_i_mid2_fu_2053_p3 = (!exitcond1_i_i_fu_2047_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_i_i_fu_2047_p2.read()[0].to_bool())? ap_const_lv6_0: j2_0_i_i_reg_1429.read());
}

void HLS_accel::thread_j2_0_i_mid2_fu_1865_p3() {
    j2_0_i_mid2_fu_1865_p3 = (!exitcond2_i_fu_1859_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond2_i_fu_1859_p2.read()[0].to_bool())? ap_const_lv6_0: j2_0_i_reg_1374.read());
}

void HLS_accel::thread_j5_0_i_cast2_fu_2226_p1() {
    j5_0_i_cast2_fu_2226_p1 = esl_zext<10,6>(j5_0_i_mid2_fu_2186_p3.read());
}

void HLS_accel::thread_j5_0_i_mid2_fu_2186_p3() {
    j5_0_i_mid2_fu_2186_p3 = (!exitcond_i_fu_2180_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond_i_fu_2180_p2.read()[0].to_bool())? ap_const_lv6_0: j5_0_i_reg_1462.read());
}

void HLS_accel::thread_j_0_i_mid2_fu_1757_p3() {
    j_0_i_mid2_fu_1757_p3 = (!exitcond4_i_fu_1751_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond4_i_fu_1751_p2.read()[0].to_bool())? ap_const_lv6_0: j_0_i_reg_1341.read());
}

void HLS_accel::thread_j_1_fu_1951_p2() {
    j_1_fu_1951_p2 = (!j2_0_i_mid2_fu_1865_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j2_0_i_mid2_fu_1865_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void HLS_accel::thread_j_2_fu_1987_p2() {
    j_2_fu_1987_p2 = (!j_0_i_i_reg_1396.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_0_i_i_reg_1396.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void HLS_accel::thread_j_3_fu_2257_p2() {
    j_3_fu_2257_p2 = (!ap_const_lv6_1.is_01() || !j5_0_i_mid2_fu_2186_p3.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(j5_0_i_mid2_fu_2186_p3.read()));
}

void HLS_accel::thread_j_4_fu_2117_p2() {
    j_4_fu_2117_p2 = (!j2_0_i_i_mid2_fu_2053_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j2_0_i_i_mid2_fu_2053_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void HLS_accel::thread_j_fu_1835_p2() {
    j_fu_1835_p2 = (!j_0_i_mid2_fu_1757_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_0_i_mid2_fu_1757_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void HLS_accel::thread_k_fu_2230_p2() {
    k_fu_2230_p2 = (!j5_0_i_cast2_fu_2226_p1.read().is_01() || !tmp_2_mid2_fu_2206_p3.read().is_01())? sc_lv<10>(): (sc_biguint<10>(j5_0_i_cast2_fu_2226_p1.read()) + sc_biguint<10>(tmp_2_mid2_fu_2206_p3.read()));
}

void HLS_accel::thread_last_assign_fu_2251_p2() {
    last_assign_fu_2251_p2 = (!k_fu_2230_p2.read().is_01() || !ap_const_lv10_3FF.is_01())? sc_lv<1>(): sc_lv<1>(k_fu_2230_p2.read() == ap_const_lv10_3FF);
}

void HLS_accel::thread_out_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter4.read()))) {
        out_address0 =  (sc_lv<10>) (tmp_28_cast_fu_2143_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        out_address0 =  (sc_lv<10>) (tmp_29_cast_fu_2002_p1.read());
    } else {
        out_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void HLS_accel::thread_out_address1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp3_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter0.read()))) {
        out_address1 =  (sc_lv<10>) (tmp_33_cast_fu_2246_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter166.read()))) {
        out_address1 = out_addr_1_reg_2436_pp2_iter165_reg.read();
    } else {
        out_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void HLS_accel::thread_out_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter4.read())))) {
        out_ce0 = ap_const_logic_1;
    } else {
        out_ce0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_out_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp3_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter166.read())))) {
        out_ce1 = ap_const_logic_1;
    } else {
        out_ce1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_out_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_i_i_fu_1981_p2.read()))) {
        out_we0 = ap_const_logic_1;
    } else {
        out_we0 = ap_const_logic_0;
    }
}

void HLS_accel::thread_out_we1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp2_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter166.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten1_reg_2332_pp2_iter165_reg.read()))) {
        out_we1 = ap_const_logic_1;
    } else {
        out_we1 = ap_const_logic_0;
    }
}

void HLS_accel::thread_p_v_fu_2083_p3() {
    p_v_fu_2083_p3 = (!exitcond1_i_i_fu_2047_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_i_i_fu_2047_p2.read()[0].to_bool())? i_3_fu_2041_p2.read(): ap_phi_mux_i1_0_i_i_phi_fu_1422_p4.read());
}

void HLS_accel::thread_ret_1_fu_1901_p1() {
    ret_1_fu_1901_p1 = INPUT_STREAM_data_V_0_data_out.read();
}

void HLS_accel::thread_ret_fu_1773_p1() {
    ret_fu_1773_p1 = INPUT_STREAM_data_V_0_data_out.read();
}

void HLS_accel::thread_tmp_10_cast1_fu_2134_p1() {
    tmp_10_cast1_fu_2134_p1 = esl_zext<12,6>(j2_0_i_i_mid2_reg_2341_pp2_iter3_reg.read());
}

void HLS_accel::thread_tmp_10_cast_fu_2148_p1() {
    tmp_10_cast_fu_2148_p1 = esl_zext<7,6>(j2_0_i_i_mid2_reg_2341_pp2_iter4_reg.read());
}

void HLS_accel::thread_tmp_10_fu_2112_p1() {
    tmp_10_fu_2112_p1 = esl_zext<64,6>(j2_0_i_i_mid2_fu_2053_p3.read());
}

void HLS_accel::thread_tmp_14_cast_fu_2236_p1() {
    tmp_14_cast_fu_2236_p1 = esl_zext<12,6>(j5_0_i_mid2_fu_2186_p3.read());
}

void HLS_accel::thread_tmp_14_fu_2021_p3() {
    tmp_14_fu_2021_p3 = esl_concat<57,7>(ap_const_lv57_0, tmp_8_fu_2015_p2.read());
}

void HLS_accel::thread_tmp_15_fu_2061_p3() {
    tmp_15_fu_2061_p3 = esl_concat<6,1>(i_3_fu_2041_p2.read(), ap_const_lv1_0);
}

void HLS_accel::thread_tmp_16_cast_fu_1977_p1() {
    tmp_16_cast_fu_1977_p1 = esl_zext<12,11>(tmp_s_fu_1969_p3.read());
}

void HLS_accel::thread_tmp_16_fu_2069_p2() {
    tmp_16_fu_2069_p2 = (tmp_15_fu_2061_p3.read() | ap_const_lv7_1);
}

void HLS_accel::thread_tmp_17_fu_2075_p3() {
    tmp_17_fu_2075_p3 = esl_concat<57,7>(ap_const_lv57_0, tmp_16_fu_2069_p2.read());
}

void HLS_accel::thread_tmp_18_fu_2123_p3() {
    tmp_18_fu_2123_p3 = esl_concat<6,5>(p_v_reg_2347_pp2_iter3_reg.read(), ap_const_lv5_0);
}

void HLS_accel::thread_tmp_19_fu_2151_p2() {
    tmp_19_fu_2151_p2 = (!tmp_10_cast_fu_2148_p1.read().is_01() || !ap_const_lv7_20.is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_10_cast_fu_2148_p1.read()) + sc_biguint<7>(ap_const_lv7_20));
}

void HLS_accel::thread_tmp_1_fu_1815_p1() {
    tmp_1_fu_1815_p1 = esl_zext<64,7>(tmp_fu_1807_p3.read());
}

void HLS_accel::thread_tmp_1_mid2_v_fu_1765_p3() {
    tmp_1_mid2_v_fu_1765_p3 = (!exitcond4_i_fu_1751_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond4_i_fu_1751_p2.read()[0].to_bool())? i_fu_1745_p2.read(): i_0_i_reg_1330.read());
}

void HLS_accel::thread_tmp_20_fu_2137_p2() {
    tmp_20_fu_2137_p2 = (!tmp_26_cast_fu_2130_p1.read().is_01() || !tmp_10_cast1_fu_2134_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_26_cast_fu_2130_p1.read()) + sc_biguint<12>(tmp_10_cast1_fu_2134_p1.read()));
}

void HLS_accel::thread_tmp_21_fu_1997_p2() {
    tmp_21_fu_1997_p2 = (!tmp_16_cast_reg_2319.read().is_01() || !tmp_cast_fu_1993_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_16_cast_reg_2319.read()) + sc_biguint<12>(tmp_cast_fu_1993_p1.read()));
}

void HLS_accel::thread_tmp_22_fu_2202_p1() {
    tmp_22_fu_2202_p1 = tmp_2_mid2_v_v_fu_2194_p3.read().range(5-1, 0);
}

void HLS_accel::thread_tmp_23_fu_2214_p3() {
    tmp_23_fu_2214_p3 = esl_concat<6,5>(tmp_2_mid2_v_v_fu_2194_p3.read(), ap_const_lv5_0);
}

void HLS_accel::thread_tmp_24_fu_2240_p2() {
    tmp_24_fu_2240_p2 = (!tmp_32_cast_fu_2222_p1.read().is_01() || !tmp_14_cast_fu_2236_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_32_cast_fu_2222_p1.read()) + sc_biguint<12>(tmp_14_cast_fu_2236_p1.read()));
}

void HLS_accel::thread_tmp_26_cast_fu_2130_p1() {
    tmp_26_cast_fu_2130_p1 = esl_zext<12,11>(tmp_18_fu_2123_p3.read());
}

void HLS_accel::thread_tmp_27_cast_fu_2157_p1() {
    tmp_27_cast_fu_2157_p1 = esl_zext<64,7>(tmp_19_fu_2151_p2.read());
}

void HLS_accel::thread_tmp_28_cast_fu_2143_p1() {
    tmp_28_cast_fu_2143_p1 = esl_zext<64,12>(tmp_20_fu_2137_p2.read());
}

void HLS_accel::thread_tmp_29_cast_fu_2002_p1() {
    tmp_29_cast_fu_2002_p1 = esl_zext<64,12>(tmp_21_fu_1997_p2.read());
}

void HLS_accel::thread_tmp_2_fu_1803_p1() {
    tmp_2_fu_1803_p1 = j_0_i_mid2_fu_1757_p3.read().range(1-1, 0);
}

void HLS_accel::thread_tmp_2_mid2_fu_2206_p3() {
    tmp_2_mid2_fu_2206_p3 = esl_concat<5,5>(tmp_22_fu_2202_p1.read(), ap_const_lv5_0);
}

void HLS_accel::thread_tmp_2_mid2_v_v_fu_2194_p3() {
    tmp_2_mid2_v_v_fu_2194_p3 = (!exitcond_i_fu_2180_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond_i_fu_2180_p2.read()[0].to_bool())? i_4_fu_2174_p2.read(): ap_phi_mux_i4_0_i_phi_fu_1455_p4.read());
}

void HLS_accel::thread_tmp_32_cast_fu_2222_p1() {
    tmp_32_cast_fu_2222_p1 = esl_zext<12,11>(tmp_23_fu_2214_p3.read());
}

void HLS_accel::thread_tmp_33_cast_fu_2246_p1() {
    tmp_33_cast_fu_2246_p1 = esl_zext<64,12>(tmp_24_fu_2240_p2.read());
}

void HLS_accel::thread_tmp_4_fu_1891_p2() {
    tmp_4_fu_1891_p2 = (!ap_const_lv6_5.is_01())? sc_lv<6>(): arrayNo1_cast_mid2_v_fu_1873_p3.read() << (unsigned short)ap_const_lv6_5.to_uint();
}

void HLS_accel::thread_tmp_6_cast_fu_1921_p1() {
    tmp_6_cast_fu_1921_p1 = esl_zext<7,6>(j2_0_i_mid2_fu_1865_p3.read());
}

void HLS_accel::thread_tmp_6_fu_2007_p3() {
    tmp_6_fu_2007_p3 = esl_concat<6,1>(ap_phi_mux_i1_0_i_i_phi_fu_1422_p4.read(), ap_const_lv1_0);
}

void HLS_accel::thread_tmp_8_cast_fu_1897_p1() {
    tmp_8_cast_fu_1897_p1 = esl_zext<7,6>(tmp_4_fu_1891_p2.read());
}

void HLS_accel::thread_tmp_8_fu_2015_p2() {
    tmp_8_fu_2015_p2 = (tmp_6_fu_2007_p3.read() | ap_const_lv7_1);
}

void HLS_accel::thread_tmp_9_cast_fu_1931_p1() {
    tmp_9_cast_fu_1931_p1 = esl_zext<64,7>(tmp_9_fu_1925_p2.read());
}

void HLS_accel::thread_tmp_9_fu_1925_p2() {
    tmp_9_fu_1925_p2 = (!tmp_8_cast_fu_1897_p1.read().is_01() || !tmp_6_cast_fu_1921_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_8_cast_fu_1897_p1.read()) + sc_biguint<7>(tmp_6_cast_fu_1921_p1.read()));
}

void HLS_accel::thread_tmp_cast_fu_1993_p1() {
    tmp_cast_fu_1993_p1 = esl_zext<12,6>(j_0_i_i_reg_1396.read());
}

void HLS_accel::thread_tmp_fu_1807_p3() {
    tmp_fu_1807_p3 = esl_concat<6,1>(tmp_1_mid2_v_fu_1765_p3.read(), tmp_2_fu_1803_p1.read());
}

void HLS_accel::thread_tmp_s_fu_1969_p3() {
    tmp_s_fu_1969_p3 = esl_concat<6,5>(i_0_i_i_reg_1385.read(), ap_const_lv5_0);
}

void HLS_accel::thread_val_assign_fu_2263_p1() {
    val_assign_fu_2263_p1 = out_q1.read();
}

}

