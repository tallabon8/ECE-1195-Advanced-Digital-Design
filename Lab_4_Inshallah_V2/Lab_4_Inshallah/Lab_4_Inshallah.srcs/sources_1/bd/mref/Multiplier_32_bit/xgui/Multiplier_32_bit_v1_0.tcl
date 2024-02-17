# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "W32" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W64" -parent ${Page_0}


}

proc update_PARAM_VALUE.W32 { PARAM_VALUE.W32 } {
	# Procedure called to update W32 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W32 { PARAM_VALUE.W32 } {
	# Procedure called to validate W32
	return true
}

proc update_PARAM_VALUE.W64 { PARAM_VALUE.W64 } {
	# Procedure called to update W64 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W64 { PARAM_VALUE.W64 } {
	# Procedure called to validate W64
	return true
}


proc update_MODELPARAM_VALUE.W64 { MODELPARAM_VALUE.W64 PARAM_VALUE.W64 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W64}] ${MODELPARAM_VALUE.W64}
}

proc update_MODELPARAM_VALUE.W32 { MODELPARAM_VALUE.W32 PARAM_VALUE.W32 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W32}] ${MODELPARAM_VALUE.W32}
}

