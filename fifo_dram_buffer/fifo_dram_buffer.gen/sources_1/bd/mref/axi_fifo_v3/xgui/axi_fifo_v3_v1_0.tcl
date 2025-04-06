# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_LENGTH_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NATIVE_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DRAM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DRAM_START_ADDRESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIMULATION_ONLY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ram_depth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ram_init" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ram_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_LENGTH_WIDTH { PARAM_VALUE.C_LENGTH_WIDTH } {
	# Procedure called to update C_LENGTH_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LENGTH_WIDTH { PARAM_VALUE.C_LENGTH_WIDTH } {
	# Procedure called to validate C_LENGTH_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_NATIVE_DATA_WIDTH { PARAM_VALUE.C_NATIVE_DATA_WIDTH } {
	# Procedure called to update C_NATIVE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NATIVE_DATA_WIDTH { PARAM_VALUE.C_NATIVE_DATA_WIDTH } {
	# Procedure called to validate C_NATIVE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DRAM_SIZE { PARAM_VALUE.DRAM_SIZE } {
	# Procedure called to update DRAM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DRAM_SIZE { PARAM_VALUE.DRAM_SIZE } {
	# Procedure called to validate DRAM_SIZE
	return true
}

proc update_PARAM_VALUE.DRAM_START_ADDRESS { PARAM_VALUE.DRAM_START_ADDRESS } {
	# Procedure called to update DRAM_START_ADDRESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DRAM_START_ADDRESS { PARAM_VALUE.DRAM_START_ADDRESS } {
	# Procedure called to validate DRAM_START_ADDRESS
	return true
}

proc update_PARAM_VALUE.SIMULATION_ONLY { PARAM_VALUE.SIMULATION_ONLY } {
	# Procedure called to update SIMULATION_ONLY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIMULATION_ONLY { PARAM_VALUE.SIMULATION_ONLY } {
	# Procedure called to validate SIMULATION_ONLY
	return true
}

proc update_PARAM_VALUE.ram_depth { PARAM_VALUE.ram_depth } {
	# Procedure called to update ram_depth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ram_depth { PARAM_VALUE.ram_depth } {
	# Procedure called to validate ram_depth
	return true
}

proc update_PARAM_VALUE.ram_init { PARAM_VALUE.ram_init } {
	# Procedure called to update ram_init when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ram_init { PARAM_VALUE.ram_init } {
	# Procedure called to validate ram_init
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

proc update_MODELPARAM_VALUE.ram_init { MODELPARAM_VALUE.ram_init PARAM_VALUE.ram_init } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ram_init}] ${MODELPARAM_VALUE.ram_init}
}

proc update_MODELPARAM_VALUE.SIMULATION_ONLY { MODELPARAM_VALUE.SIMULATION_ONLY PARAM_VALUE.SIMULATION_ONLY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIMULATION_ONLY}] ${MODELPARAM_VALUE.SIMULATION_ONLY}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_NATIVE_DATA_WIDTH { MODELPARAM_VALUE.C_NATIVE_DATA_WIDTH PARAM_VALUE.C_NATIVE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NATIVE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_NATIVE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_LENGTH_WIDTH { MODELPARAM_VALUE.C_LENGTH_WIDTH PARAM_VALUE.C_LENGTH_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LENGTH_WIDTH}] ${MODELPARAM_VALUE.C_LENGTH_WIDTH}
}

proc update_MODELPARAM_VALUE.DRAM_START_ADDRESS { MODELPARAM_VALUE.DRAM_START_ADDRESS PARAM_VALUE.DRAM_START_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRAM_START_ADDRESS}] ${MODELPARAM_VALUE.DRAM_START_ADDRESS}
}

proc update_MODELPARAM_VALUE.DRAM_SIZE { MODELPARAM_VALUE.DRAM_SIZE PARAM_VALUE.DRAM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRAM_SIZE}] ${MODELPARAM_VALUE.DRAM_SIZE}
}

