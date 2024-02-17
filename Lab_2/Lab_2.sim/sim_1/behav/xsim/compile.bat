@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Thu Sep 28 11:34:44 -0400 2023
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: compile.bat
REM
REM ****************************************************************************
echo "xvlog --incr --relax -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip -prj ALU_test_vlog.prj"
call xvlog  --incr --relax -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip -prj ALU_test_vlog.prj -log xvlog.log
call type xvlog.log > compile.log
echo "xvhdl --incr --relax -prj ALU_test_vhdl.prj"
call xvhdl  --incr --relax -prj ALU_test_vhdl.prj -log xvhdl.log
call type xvhdl.log >> compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
