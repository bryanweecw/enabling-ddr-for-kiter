vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../root.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.vhd" \

vlog -work gigantic_mux -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_2/sim/bd_f60c_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_3/sim/bd_f60c_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_4/sim/bd_f60c_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_5/sim/bd_f60c_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_6/sim/bd_f60c_slot_0_r_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.vhd" \
"../../../bd/design_1/ip/design_1_audio_interface_wrap_0_0/sim/design_1_audio_interface_wrap_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93  \
"../../../../root.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

