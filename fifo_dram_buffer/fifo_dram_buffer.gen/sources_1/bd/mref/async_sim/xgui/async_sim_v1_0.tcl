# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NUM_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_REPS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ram_depth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ram_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.NUM_DATA { PARAM_VALUE.NUM_DATA } {
	# Procedure called to update NUM_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_DATA { PARAM_VALUE.NUM_DATA } {
	# Procedure called to validate NUM_DATA
	return true
}

proc update_PARAM_VALUE.NUM_REPS { PARAM_VALUE.NUM_REPS } {
	# Procedure called to update NUM_REPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_REPS { PARAM_VALUE.NUM_REPS } {
	# Procedure called to validate NUM_REPS
	return true
}

proc update_PARAM_VALUE.ram_depth { PARAM_VALUE.ram_depth } {
	# Procedure called to update ram_depth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ram_depth { PARAM_VALUE.ram_depth } {
	# Procedure called to validate ram_depth
	return true
}

proc update_PARAM_VALUE.ram_width { PARAM_VALUE.ram_width } {
	# Procedure called to update ram_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ram_width { PARAM_VALUE.ram_width } {
	# Procedure called to validate ram_width
	return true
}


proc update_MODELPARAM_VALUE.ram_width { MODELPARAM_VALUE.ram_width PARAM_VALUE.ram_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ram_width}] ${MODELPARAM_VALUE.ram_width}
}

proc update_MODELPARAM_VALUE.ram_depth { MODELPARAM_VALUE.ram_depth PARAM_VALUE.ram_depth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ram_depth}] ${MODELPARAM_VALUE.ram_depth}
}

proc update_MODELPARAM_VALUE.NUM_DATA { MODELPARAM_VALUE.NUM_DATA PARAM_VALUE.NUM_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_DATA}] ${MODELPARAM_VALUE.NUM_DATA}
}

proc update_MODELPARAM_VALUE.NUM_REPS { MODELPARAM_VALUE.NUM_REPS PARAM_VALUE.NUM_REPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_REPS}] ${MODELPARAM_VALUE.NUM_REPS}
}

