// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 14 16:13:28 2025
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top triple_delay_mux4to1_0_0 -prefix
//               triple_delay_mux4to1_0_0_ dual_delay_mux4to1_0_0_stub.v
// Design      : dual_delay_mux4to1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mux4to1,Vivado 2022.2" *)
module triple_delay_mux4to1_0_0(clk, reset, btn1, btn2, btn3, btn4, srca1, srca2, srca3, 
  srca4, srcb1, srcb2, srcb3, srcb4, srcc1, srcc2, srcc3, srcc4, srcd1, srcd2, srcd3, srcd4, mux_out1, 
  mux_out2, mux_out3, mux_out4)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,btn1,btn2,btn3,btn4,srca1,srca2,srca3,srca4,srcb1,srcb2,srcb3,srcb4,srcc1,srcc2,srcc3,srcc4,srcd1,srcd2,srcd3,srcd4,mux_out1,mux_out2,mux_out3,mux_out4" */;
  input clk;
  input reset;
  input btn1;
  input btn2;
  input btn3;
  input btn4;
  input srca1;
  input srca2;
  input srca3;
  input srca4;
  input srcb1;
  input srcb2;
  input srcb3;
  input srcb4;
  input srcc1;
  input srcc2;
  input srcc3;
  input srcc4;
  input srcd1;
  input srcd2;
  input srcd3;
  input srcd4;
  output mux_out1;
  output mux_out2;
  output mux_out3;
  output mux_out4;
endmodule
