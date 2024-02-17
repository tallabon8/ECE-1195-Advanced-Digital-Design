
################################################################
# This is a generated script based on design: datapath
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source datapath_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ALUOut_8, ALU, Control_Unit_8, HILO_reg, HILO_reg, Instruction_Register_8, Memory_Data_Register_8, Multiplier_32_bit, PC_8, Reg_A_8, Reg_B_8, Shift_Left_2_28_8, Shift_Left_2_8, Sign_Extend_8, Two2one_1bit_mux, andGateorGate, count_leading_ones, dummyMemory, fivebit_2to1_mux_8, fivebit_2to1_mux_8, four2three_mux_8, four2two_mux_8, loading_mux, register_file_8, two2one_mux_8, two2one_mux_8, two2one_mux_8

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART www.digilentinc.com:pynq-z1:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name datapath

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CLK_0 [ create_bd_port -dir I -type clk CLK_0 ]
  set MemData_0 [ create_bd_port -dir I -from 31 -to 0 MemData_0 ]
  set RST_0 [ create_bd_port -dir I -type rst RST_0 ]

  # Create instance: ALUOut_8_0, and set properties
  set block_name ALUOut_8
  set block_cell_name ALUOut_8_0
  if { [catch {set ALUOut_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALUOut_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ALU_0, and set properties
  set block_name ALU
  set block_cell_name ALU_0
  if { [catch {set ALU_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Control_Unit_8_0, and set properties
  set block_name Control_Unit_8
  set block_cell_name Control_Unit_8_0
  if { [catch {set Control_Unit_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Control_Unit_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: HILO_reg_0, and set properties
  set block_name HILO_reg
  set block_cell_name HILO_reg_0
  if { [catch {set HILO_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $HILO_reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: HILO_reg_1, and set properties
  set block_name HILO_reg
  set block_cell_name HILO_reg_1
  if { [catch {set HILO_reg_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $HILO_reg_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Instruction_Register_0, and set properties
  set block_name Instruction_Register_8
  set block_cell_name Instruction_Register_0
  if { [catch {set Instruction_Register_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Instruction_Register_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Memory_Data_Register_0, and set properties
  set block_name Memory_Data_Register_8
  set block_cell_name Memory_Data_Register_0
  if { [catch {set Memory_Data_Register_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Memory_Data_Register_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Multiplier_32_bit_0, and set properties
  set block_name Multiplier_32_bit
  set block_cell_name Multiplier_32_bit_0
  if { [catch {set Multiplier_32_bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Multiplier_32_bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PC_8_0, and set properties
  set block_name PC_8
  set block_cell_name PC_8_0
  if { [catch {set PC_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PC_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Reg_A_8_0, and set properties
  set block_name Reg_A_8
  set block_cell_name Reg_A_8_0
  if { [catch {set Reg_A_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Reg_A_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Reg_B_8_0, and set properties
  set block_name Reg_B_8
  set block_cell_name Reg_B_8_0
  if { [catch {set Reg_B_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Reg_B_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Shift_Left_2_28_8_0, and set properties
  set block_name Shift_Left_2_28_8
  set block_cell_name Shift_Left_2_28_8_0
  if { [catch {set Shift_Left_2_28_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Shift_Left_2_28_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Shift_Left_2_8_0, and set properties
  set block_name Shift_Left_2_8
  set block_cell_name Shift_Left_2_8_0
  if { [catch {set Shift_Left_2_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Shift_Left_2_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Sign_Extend_8_0, and set properties
  set block_name Sign_Extend_8
  set block_cell_name Sign_Extend_8_0
  if { [catch {set Sign_Extend_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Sign_Extend_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Two2one_1bit_mux_0, and set properties
  set block_name Two2one_1bit_mux
  set block_cell_name Two2one_1bit_mux_0
  if { [catch {set Two2one_1bit_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Two2one_1bit_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: andGateorGate_0, and set properties
  set block_name andGateorGate
  set block_cell_name andGateorGate_0
  if { [catch {set andGateorGate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $andGateorGate_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: count_leading_ones_0, and set properties
  set block_name count_leading_ones
  set block_cell_name count_leading_ones_0
  if { [catch {set count_leading_ones_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $count_leading_ones_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dummyMemory_0, and set properties
  set block_name dummyMemory
  set block_cell_name dummyMemory_0
  if { [catch {set dummyMemory_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dummyMemory_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fivebit_2to1_mux_8_0, and set properties
  set block_name fivebit_2to1_mux_8
  set block_cell_name fivebit_2to1_mux_8_0
  if { [catch {set fivebit_2to1_mux_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fivebit_2to1_mux_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fivebit_2to1_mux_8_1, and set properties
  set block_name fivebit_2to1_mux_8
  set block_cell_name fivebit_2to1_mux_8_1
  if { [catch {set fivebit_2to1_mux_8_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fivebit_2to1_mux_8_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: four2three_mux_8_0, and set properties
  set block_name four2three_mux_8
  set block_cell_name four2three_mux_8_0
  if { [catch {set four2three_mux_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $four2three_mux_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: four2two_mux_8_0, and set properties
  set block_name four2two_mux_8
  set block_cell_name four2two_mux_8_0
  if { [catch {set four2two_mux_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $four2two_mux_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: loading_mux_0, and set properties
  set block_name loading_mux
  set block_cell_name loading_mux_0
  if { [catch {set loading_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $loading_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: register_file_8_0, and set properties
  set block_name register_file_8
  set block_cell_name register_file_8_0
  if { [catch {set register_file_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $register_file_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: two2one_mux_8_0, and set properties
  set block_name two2one_mux_8
  set block_cell_name two2one_mux_8_0
  if { [catch {set two2one_mux_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $two2one_mux_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: two2one_mux_8_2, and set properties
  set block_name two2one_mux_8
  set block_cell_name two2one_mux_8_2
  if { [catch {set two2one_mux_8_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $two2one_mux_8_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: two2one_mux_8_3, and set properties
  set block_name two2one_mux_8
  set block_cell_name two2one_mux_8_3
  if { [catch {set two2one_mux_8_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $two2one_mux_8_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {63} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {32} \
 ] $xlslice_1

  # Create port connections
  connect_bd_net -net ALUOut_8_0_ALUOut [get_bd_pins ALUOut_8_0/ALUOut] [get_bd_pins four2three_mux_8_0/B] [get_bd_pins loading_mux_0/A] [get_bd_pins two2one_mux_8_0/B]
  connect_bd_net -net ALU_0_R [get_bd_pins ALUOut_8_0/ALUResult] [get_bd_pins four2three_mux_8_0/A] [get_bd_pins two2one_mux_8_3/R]
  connect_bd_net -net ALU_0_R1 [get_bd_pins ALU_0/R] [get_bd_pins two2one_mux_8_3/A]
  connect_bd_net -net ALU_0_zero [get_bd_pins ALU_0/zero] [get_bd_pins Two2one_1bit_mux_0/A] [get_bd_pins Two2one_1bit_mux_0/B]
  connect_bd_net -net CLK_0_1 [get_bd_ports CLK_0] [get_bd_pins ALUOut_8_0/CLK] [get_bd_pins Control_Unit_8_0/CLK] [get_bd_pins HILO_reg_0/CLK] [get_bd_pins HILO_reg_1/CLK] [get_bd_pins Instruction_Register_0/CLK] [get_bd_pins Memory_Data_Register_0/CLK] [get_bd_pins Multiplier_32_bit_0/CLK] [get_bd_pins PC_8_0/CLK] [get_bd_pins Reg_A_8_0/CLK] [get_bd_pins Reg_B_8_0/CLK] [get_bd_pins register_file_8_0/CLK]
  connect_bd_net -net Control_Unit_8_0_ALUOp [get_bd_pins ALU_0/ALUOp] [get_bd_pins Control_Unit_8_0/ALUOp]
  connect_bd_net -net Control_Unit_8_0_ALUWrite [get_bd_pins ALUOut_8_0/EN] [get_bd_pins Control_Unit_8_0/ALUWrite]
  connect_bd_net -net Control_Unit_8_0_ALUsrcA [get_bd_pins Control_Unit_8_0/ALUsrcA] [get_bd_pins two2one_mux_8_2/Selector]
  connect_bd_net -net Control_Unit_8_0_ALUsrcB [get_bd_pins Control_Unit_8_0/ALUsrcB] [get_bd_pins four2two_mux_8_0/Selector]
  connect_bd_net -net Control_Unit_8_0_AWrite [get_bd_pins Control_Unit_8_0/AWrite] [get_bd_pins Reg_A_8_0/EN]
  connect_bd_net -net Control_Unit_8_0_BWrite [get_bd_pins Control_Unit_8_0/BWrite] [get_bd_pins Reg_B_8_0/EN]
  connect_bd_net -net Control_Unit_8_0_CLOEN [get_bd_pins Control_Unit_8_0/CLOEN] [get_bd_pins two2one_mux_8_3/Selector]
  connect_bd_net -net Control_Unit_8_0_HIEN [get_bd_pins Control_Unit_8_0/HIEN] [get_bd_pins HILO_reg_0/EN]
  connect_bd_net -net Control_Unit_8_0_IRWrite [get_bd_pins Control_Unit_8_0/IRWrite] [get_bd_pins Instruction_Register_0/IRWrite]
  connect_bd_net -net Control_Unit_8_0_IorD [get_bd_pins Control_Unit_8_0/IorD] [get_bd_pins two2one_mux_8_0/Selector]
  connect_bd_net -net Control_Unit_8_0_LOIN [get_bd_pins Control_Unit_8_0/LOEN] [get_bd_pins HILO_reg_1/EN]
  connect_bd_net -net Control_Unit_8_0_MDREN [get_bd_pins Control_Unit_8_0/MDREN] [get_bd_pins Memory_Data_Register_0/EN]
  connect_bd_net -net Control_Unit_8_0_MemRead [get_bd_pins Control_Unit_8_0/MemRead] [get_bd_pins dummyMemory_0/MemRead]
  connect_bd_net -net Control_Unit_8_0_MemWrite [get_bd_pins Control_Unit_8_0/MemWrite] [get_bd_pins dummyMemory_0/MemWrite]
  connect_bd_net -net Control_Unit_8_0_MemtoReg [get_bd_pins Control_Unit_8_0/MemtoReg] [get_bd_pins loading_mux_0/Selector]
  connect_bd_net -net Control_Unit_8_0_MultEN [get_bd_pins Control_Unit_8_0/MultEN] [get_bd_pins Multiplier_32_bit_0/RST]
  connect_bd_net -net Control_Unit_8_0_PCSource [get_bd_pins Control_Unit_8_0/PCSource] [get_bd_pins four2three_mux_8_0/Selector]
  connect_bd_net -net Control_Unit_8_0_PCWrite [get_bd_pins Control_Unit_8_0/PCWrite] [get_bd_pins andGateorGate_0/C]
  connect_bd_net -net Control_Unit_8_0_PCWriteCond [get_bd_pins Control_Unit_8_0/PCWriteCond] [get_bd_pins andGateorGate_0/B]
  connect_bd_net -net Control_Unit_8_0_RegDst [get_bd_pins Control_Unit_8_0/RegDst] [get_bd_pins fivebit_2to1_mux_8_0/Selector]
  connect_bd_net -net Control_Unit_8_0_RegWrite [get_bd_pins Control_Unit_8_0/RegWrite] [get_bd_pins register_file_8_0/RegWrite]
  connect_bd_net -net Control_Unit_8_0_SHAMTEN [get_bd_pins Control_Unit_8_0/SHAMTEN] [get_bd_pins fivebit_2to1_mux_8_1/Selector]
  connect_bd_net -net Control_Unit_8_0_SL28EN [get_bd_pins Control_Unit_8_0/SL28EN] [get_bd_pins Shift_Left_2_28_8_0/EN]
  connect_bd_net -net Control_Unit_8_0_SL32EN [get_bd_pins Control_Unit_8_0/SL32EN] [get_bd_pins Shift_Left_2_8_0/EN]
  connect_bd_net -net Control_Unit_8_0_ZeroEN [get_bd_pins Control_Unit_8_0/ZeroEN] [get_bd_pins Two2one_1bit_mux_0/Selector]
  connect_bd_net -net HILO_reg_0_Q [get_bd_pins HILO_reg_0/Q] [get_bd_pins loading_mux_0/Hi]
  connect_bd_net -net HILO_reg_1_Q [get_bd_pins HILO_reg_1/Q] [get_bd_pins loading_mux_0/Lo]
  connect_bd_net -net Instruction_Register_0_Funct [get_bd_pins Control_Unit_8_0/Funct] [get_bd_pins Instruction_Register_0/Funct]
  connect_bd_net -net Instruction_Register_0_Inst10to6 [get_bd_pins Instruction_Register_0/Inst10to6] [get_bd_pins fivebit_2to1_mux_8_1/A]
  connect_bd_net -net Instruction_Register_0_Instr15to0 [get_bd_pins Instruction_Register_0/Instr15to0] [get_bd_pins Sign_Extend_8_0/DataInstructionIn]
  connect_bd_net -net Instruction_Register_0_Instr15to11 [get_bd_pins Instruction_Register_0/Instr15to11] [get_bd_pins fivebit_2to1_mux_8_0/B]
  connect_bd_net -net Instruction_Register_0_Instr20to16 [get_bd_pins Instruction_Register_0/Instr20to16] [get_bd_pins fivebit_2to1_mux_8_0/A] [get_bd_pins register_file_8_0/ReadRegister2]
  connect_bd_net -net Instruction_Register_0_Instr25to0 [get_bd_pins Instruction_Register_0/Instr25to0] [get_bd_pins Shift_Left_2_28_8_0/SignExtOut]
  connect_bd_net -net Instruction_Register_0_Instr25to21 [get_bd_pins Instruction_Register_0/Instr25to21] [get_bd_pins register_file_8_0/ReadRegister1]
  connect_bd_net -net Instruction_Register_0_Instr31to26 [get_bd_pins Control_Unit_8_0/OpCode] [get_bd_pins Instruction_Register_0/Instr31to26]
  connect_bd_net -net MemData_0_1 [get_bd_ports MemData_0] [get_bd_pins Instruction_Register_0/MemData]
  connect_bd_net -net Memory_Data_Register_0_MemRegOut [get_bd_pins Memory_Data_Register_0/MemRegOut] [get_bd_pins loading_mux_0/B]
  connect_bd_net -net Multiplier_32_bit_0_DONE [get_bd_pins Control_Unit_8_0/DONE_FLAG] [get_bd_pins Multiplier_32_bit_0/DONE]
  connect_bd_net -net Multiplier_32_bit_0_R [get_bd_pins Multiplier_32_bit_0/R] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net PC_8_0_PC31to28 [get_bd_pins PC_8_0/PC31to28] [get_bd_pins four2three_mux_8_0/PC31to28]
  connect_bd_net -net PC_8_0_PC_Q [get_bd_pins PC_8_0/PC_Q] [get_bd_pins two2one_mux_8_0/A] [get_bd_pins two2one_mux_8_2/A]
  connect_bd_net -net RST_0_1 [get_bd_ports RST_0] [get_bd_pins ALUOut_8_0/RST] [get_bd_pins Control_Unit_8_0/RST] [get_bd_pins HILO_reg_0/RST] [get_bd_pins HILO_reg_1/RST] [get_bd_pins Instruction_Register_0/RST] [get_bd_pins Memory_Data_Register_0/RST] [get_bd_pins PC_8_0/RST] [get_bd_pins Reg_A_8_0/RST] [get_bd_pins Reg_B_8_0/RST] [get_bd_pins register_file_8_0/RST]
  connect_bd_net -net Reg_A_8_0_A4to0 [get_bd_pins Reg_A_8_0/A4to0] [get_bd_pins fivebit_2to1_mux_8_1/B]
  connect_bd_net -net Reg_A_8_0_A_Q [get_bd_pins Multiplier_32_bit_0/A] [get_bd_pins Reg_A_8_0/A_Q] [get_bd_pins count_leading_ones_0/CLO_in] [get_bd_pins two2one_mux_8_2/B]
  connect_bd_net -net Reg_B_8_0_B_Q [get_bd_pins Multiplier_32_bit_0/B] [get_bd_pins Reg_B_8_0/B_Q] [get_bd_pins dummyMemory_0/WriteData] [get_bd_pins four2two_mux_8_0/A]
  connect_bd_net -net Shift_Left_2_28_8_0_Shift_2_Out [get_bd_pins Shift_Left_2_28_8_0/Shift_2_Out] [get_bd_pins four2three_mux_8_0/C]
  connect_bd_net -net Shift_Left_2_8_0_Shift_2_Out [get_bd_pins Shift_Left_2_8_0/Shift_2_Out] [get_bd_pins four2two_mux_8_0/D]
  connect_bd_net -net Sign_Extend_8_0_DataInstructionOut [get_bd_pins Shift_Left_2_8_0/SignExtOut] [get_bd_pins Sign_Extend_8_0/DataInstructionOut] [get_bd_pins four2two_mux_8_0/C]
  connect_bd_net -net Two2one_1bit_mux_0_R [get_bd_pins Two2one_1bit_mux_0/R] [get_bd_pins andGateorGate_0/A]
  connect_bd_net -net andGateorGate_0_R [get_bd_pins PC_8_0/EN] [get_bd_pins andGateorGate_0/R]
  connect_bd_net -net count_leading_ones_0_CLO_out [get_bd_pins count_leading_ones_0/CLO_out] [get_bd_pins two2one_mux_8_3/B]
  connect_bd_net -net fivebit_2to1_mux_8_0_R [get_bd_pins fivebit_2to1_mux_8_0/R] [get_bd_pins register_file_8_0/WriteRegister]
  connect_bd_net -net fivebit_2to1_mux_8_1_R [get_bd_pins ALU_0/SHAMT] [get_bd_pins fivebit_2to1_mux_8_1/R]
  connect_bd_net -net four2three_mux_8_0_R [get_bd_pins PC_8_0/PC_D] [get_bd_pins four2three_mux_8_0/R]
  connect_bd_net -net four2two_mux_8_0_R [get_bd_pins ALU_0/B] [get_bd_pins four2two_mux_8_0/R]
  connect_bd_net -net loading_mux_0_R [get_bd_pins loading_mux_0/R] [get_bd_pins register_file_8_0/WriteData]
  connect_bd_net -net register_file_8_0_ReadData1 [get_bd_pins Reg_A_8_0/ReadData1] [get_bd_pins register_file_8_0/ReadData1]
  connect_bd_net -net register_file_8_0_ReadData2 [get_bd_pins Reg_B_8_0/ReadData2] [get_bd_pins register_file_8_0/ReadData2]
  connect_bd_net -net two2one_mux_8_0_R [get_bd_pins dummyMemory_0/Address] [get_bd_pins two2one_mux_8_0/R]
  connect_bd_net -net two2one_mux_8_2_R [get_bd_pins ALU_0/A] [get_bd_pins two2one_mux_8_2/R]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins HILO_reg_0/D] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins HILO_reg_1/D] [get_bd_pins xlslice_1/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


