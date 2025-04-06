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

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13

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

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../../root.gen/sources_1/bd/design_1/ip/design_1_audio_interface_wrap_0_0/sim/design_1_audio_interface_wrap_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../root.gen/sources_1/bd/design_1/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../root.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../../root.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../../root.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../../root.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../root.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../root.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../root.gen/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
"../../../../root.gen/sources_1/bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

