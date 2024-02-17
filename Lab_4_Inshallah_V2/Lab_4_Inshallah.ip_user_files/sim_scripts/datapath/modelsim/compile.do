vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1

vcom -work xil_defaultlib -64 -93 \
"../../../bd/datapath/ip/datapath_Control_Unit_8_0_0/sim/datapath_Control_Unit_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_PC_8_0_0/sim/datapath_PC_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_two2one_mux_8_0_0/sim/datapath_two2one_mux_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Memory_Data_Register_0_0/sim/datapath_Memory_Data_Register_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Instruction_Register_0_0/sim/datapath_Instruction_Register_0_0.vhd" \
"../../../bd/datapath/ip/datapath_register_file_8_0_0/sim/datapath_register_file_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_fivebit_2to1_mux_8_0_0/sim/datapath_fivebit_2to1_mux_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Sign_Extend_8_0_0/sim/datapath_Sign_Extend_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Shift_Left_2_8_0_0/sim/datapath_Shift_Left_2_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Shift_Left_2_28_8_0_0/sim/datapath_Shift_Left_2_28_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Reg_A_8_0_0/sim/datapath_Reg_A_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Reg_B_8_0_0/sim/datapath_Reg_B_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_two2one_mux_8_2_0/sim/datapath_two2one_mux_8_2_0.vhd" \
"../../../bd/datapath/ip/datapath_four2two_mux_8_0_0/sim/datapath_four2two_mux_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_ALU_0_0/sim/datapath_ALU_0_0.vhd" \
"../../../bd/datapath/ip/datapath_ALUOut_8_0_0/sim/datapath_ALUOut_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_four2three_mux_8_0_0/sim/datapath_four2three_mux_8_0_0.vhd" \
"../../../bd/datapath/ip/datapath_andGateorGate_0_0/sim/datapath_andGateorGate_0_0.vhd" \
"../../../bd/datapath/sim/datapath.vhd" \
"../../../bd/datapath/ip/datapath_fivebit_2to1_mux_8_1_0/sim/datapath_fivebit_2to1_mux_8_1_0.vhd" \
"../../../bd/datapath/ip/datapath_Two2one_1bit_mux_0_0/sim/datapath_Two2one_1bit_mux_0_0.vhd" \
"../../../bd/datapath/ip/datapath_count_leading_ones_0_0/sim/datapath_count_leading_ones_0_0.vhd" \
"../../../bd/datapath/ip/datapath_two2one_mux_8_3_0/sim/datapath_two2one_mux_8_3_0.vhd" \
"../../../bd/datapath/ip/datapath_loading_mux_0_0/sim/datapath_loading_mux_0_0.vhd" \
"../../../bd/datapath/ip/datapath_Multiplier_32_bit_0_0/sim/datapath_Multiplier_32_bit_0_0.vhd" \

vlog -work xlslice_v1_0_1 -64 -incr \
"../../../../Lab_4_Inshallah.srcs/sources_1/bd/datapath/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/datapath/ip/datapath_xlslice_0_0/sim/datapath_xlslice_0_0.v" \
"../../../bd/datapath/ip/datapath_xlslice_1_0/sim/datapath_xlslice_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/datapath/ip/datapath_HILO_reg_0_0/sim/datapath_HILO_reg_0_0.vhd" \
"../../../bd/datapath/ip/datapath_HILO_reg_1_0/sim/datapath_HILO_reg_1_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

