# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DRAM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DRAM_START_ADDRESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "fifo_ram_depth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "fifo_ram_init" -parent ${Page_0}


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

proc update_PARAM_VALUE.fifo_ram_depth { PARAM_VALUE.fifo_ram_depth } {
	# Procedure called to update fifo_ram_depth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fifo_ram_depth { PARAM_VALUE.fifo_ram_depth } {
	# Procedure called to validate fifo_ram_depth
	return true
}

proc update_PARAM_VALUE.fifo_ram_init { PARAM_VALUE.fifo_ram_init } {
	# Procedure called to update fifo_ram_init when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fifo_ram_init { PARAM_VALUE.fifo_ram_init } {
	# Procedure called to validate fifo_ram_init
	return true
}


proc update_MODELPARAM_VALUE.fifo_ram_depth { MODELPARAM_VALUE.fifo_ram_depth PARAM_VALUE.fifo_ram_depth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fifo_ram_depth}] ${MODELPARAM_VALUE.fifo_ram_depth}
}

proc update_MODELPARAM_VALUE.fifo_ram_init { MODELPARAM_VALUE.fifo_ram_init PARAM_VALUE.fifo_ram_init } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fifo_ram_init}] ${MODELPARAM_VALUE.fifo_ram_init}
}

proc update_MODELPARAM_VALUE.DRAM_START_ADDRESS { MODELPARAM_VALUE.DRAM_START_ADDRESS PARAM_VALUE.DRAM_START_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRAM_START_ADDRESS}] ${MODELPARAM_VALUE.DRAM_START_ADDRESS}
}

proc update_MODELPARAM_VALUE.DRAM_SIZE { MODELPARAM_VALUE.DRAM_SIZE PARAM_VALUE.DRAM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRAM_SIZE}] ${MODELPARAM_VALUE.DRAM_SIZE}
}

