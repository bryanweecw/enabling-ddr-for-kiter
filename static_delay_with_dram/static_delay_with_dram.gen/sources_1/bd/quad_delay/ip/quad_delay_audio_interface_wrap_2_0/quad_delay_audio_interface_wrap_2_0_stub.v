// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 21 16:28:48 2025
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top quad_delay_audio_interface_wrap_2_0 -prefix
//               quad_delay_audio_interface_wrap_2_0_ triple_delay_audio_interface_wrap_1_1_stub.v
// Design      : triple_delay_audio_interface_wrap_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "audio_interface_wrapper,Vivado 2022.2" *)
module quad_delay_audio_interface_wrap_2_0(ac_bclk_0, ac_pbdat_0, ac_recdat_0, ac_pblrc_0, 
  ac_reclrc_0, sys_clk, reset, mclk, md_error, m_axi_arready, m_axi_arvalid, m_axi_araddr, 
  m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arprot, m_axi_arcache, m_axi_rready, 
  m_axi_rvalid, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_awready, m_axi_awvalid, 
  m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awprot, m_axi_awcache, 
  m_axi_wready, m_axi_wvalid, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_bready, 
  m_axi_bvalid, m_axi_bresp, debug_static_delay_in_ready, debug_static_delay_in_valid, 
  debug_static_delay_in_data, debug_static_delay_out_ready, 
  debug_static_delay_out_valid, debug_static_delay_out_data, avg_read_cycles_out, 
  avg_write_cycles_out, max_read_cycles_out, max_write_cycles_out, min_read_cycles_out, 
  min_write_cycles_out, axi_avg_read_cycles_out, axi_avg_write_cycles_out, 
  axi_max_read_cycles_out, axi_max_write_cycles_out, axi_min_read_cycles_out, 
  axi_min_write_cycles_out)
/* synthesis syn_black_box black_box_pad_pin="ac_bclk_0,ac_pbdat_0,ac_recdat_0,ac_pblrc_0,ac_reclrc_0,sys_clk,reset,mclk,md_error,m_axi_arready,m_axi_arvalid,m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arcache[3:0],m_axi_rready,m_axi_rvalid,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_awready,m_axi_awvalid,m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awcache[3:0],m_axi_wready,m_axi_wvalid,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wlast,m_axi_bready,m_axi_bvalid,m_axi_bresp[1:0],debug_static_delay_in_ready,debug_static_delay_in_valid,debug_static_delay_in_data[33:0],debug_static_delay_out_ready,debug_static_delay_out_valid,debug_static_delay_out_data[33:0],avg_read_cycles_out[12:0],avg_write_cycles_out[12:0],max_read_cycles_out[12:0],max_write_cycles_out[12:0],min_read_cycles_out[12:0],min_write_cycles_out[12:0],axi_avg_read_cycles_out[12:0],axi_avg_write_cycles_out[12:0],axi_max_read_cycles_out[12:0],axi_max_write_cycles_out[12:0],axi_min_read_cycles_out[12:0],axi_min_write_cycles_out[12:0]" */;
  output ac_bclk_0;
  output ac_pbdat_0;
  input ac_recdat_0;
  output ac_pblrc_0;
  output ac_reclrc_0;
  input sys_clk;
  input reset;
  input mclk;
  output md_error;
  input m_axi_arready;
  output m_axi_arvalid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  input m_axi_rvalid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_awready;
  output m_axi_awvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awcache;
  input m_axi_wready;
  output m_axi_wvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_bready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;
  output debug_static_delay_in_ready;
  output debug_static_delay_in_valid;
  output [33:0]debug_static_delay_in_data;
  output debug_static_delay_out_ready;
  output debug_static_delay_out_valid;
  output [33:0]debug_static_delay_out_data;
  output [12:0]avg_read_cycles_out;
  output [12:0]avg_write_cycles_out;
  output [12:0]max_read_cycles_out;
  output [12:0]max_write_cycles_out;
  output [12:0]min_read_cycles_out;
  output [12:0]min_write_cycles_out;
  output [12:0]axi_avg_read_cycles_out;
  output [12:0]axi_avg_write_cycles_out;
  output [12:0]axi_max_read_cycles_out;
  output [12:0]axi_max_write_cycles_out;
  output [12:0]axi_min_read_cycles_out;
  output [12:0]axi_min_write_cycles_out;
endmodule
