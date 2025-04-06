// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 14 16:13:27 2025
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/bryan/Documents/bryan_files_echo_with_dram_static/projects/static_delay_100-ui-ie-flat-dd/root.gen/sources_1/bd/dual_delay/ip/dual_delay_clk_wiz_1_0/dual_delay_clk_wiz_1_0_stub.v
// Design      : dual_delay_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module dual_delay_clk_wiz_1_0(clk_i2s, clk_24mhz, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_i2s,clk_24mhz,locked,clk_in1" */;
  output clk_i2s;
  output clk_24mhz;
  output locked;
  input clk_in1;
endmodule
