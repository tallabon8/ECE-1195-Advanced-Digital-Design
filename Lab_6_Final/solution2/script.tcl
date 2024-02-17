############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Lab_6_Final
set_top hw_conv
add_files ../../lab6_template/lab6_template/vhls/rock512.pgm
add_files ../../lab6_template/lab6_template/vhls/image.hpp
add_files ../../lab6_template/lab6_template/vhls/image.cpp
add_files ../../lab6_template/lab6_template/vhls/convolution.hpp
add_files ../../lab6_template/lab6_template/vhls/convolution.cpp
add_files -tb ../../lab6_template/lab6_template/vhls/testbench.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./Lab_6_Final/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
