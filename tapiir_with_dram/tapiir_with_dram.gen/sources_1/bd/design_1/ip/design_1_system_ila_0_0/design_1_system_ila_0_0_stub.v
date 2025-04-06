// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 14 09:14:47 2025
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_system_ila_0_0 -prefix
//               design_1_system_ila_0_0_ design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_f60c,Vivado 2022.2" *)
module design_1_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27, probe28, 
  probe29, probe30, probe31, probe32, probe33, probe34, probe35, probe36, probe37, probe38, probe39, 
  probe40, probe41, SLOT_0_AXI_awaddr, SLOT_0_AXI_awlen, SLOT_0_AXI_awsize, 
  SLOT_0_AXI_awburst, SLOT_0_AXI_awcache, SLOT_0_AXI_awprot, SLOT_0_AXI_awvalid, 
  SLOT_0_AXI_awready, SLOT_0_AXI_wdata, SLOT_0_AXI_wstrb, SLOT_0_AXI_wlast, 
  SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, SLOT_0_AXI_bresp, SLOT_0_AXI_bvalid, 
  SLOT_0_AXI_bready, SLOT_0_AXI_araddr, SLOT_0_AXI_arlen, SLOT_0_AXI_arsize, 
  SLOT_0_AXI_arburst, SLOT_0_AXI_arcache, SLOT_0_AXI_arprot, SLOT_0_AXI_arvalid, 
  SLOT_0_AXI_arready, SLOT_0_AXI_rdata, SLOT_0_AXI_rresp, SLOT_0_AXI_rlast, 
  SLOT_0_AXI_rvalid, SLOT_0_AXI_rready, SLOT_1_AXI_awaddr, SLOT_1_AXI_awlen, 
  SLOT_1_AXI_awsize, SLOT_1_AXI_awburst, SLOT_1_AXI_awcache, SLOT_1_AXI_awprot, 
  SLOT_1_AXI_awvalid, SLOT_1_AXI_awready, SLOT_1_AXI_wdata, SLOT_1_AXI_wstrb, 
  SLOT_1_AXI_wlast, SLOT_1_AXI_wvalid, SLOT_1_AXI_wready, SLOT_1_AXI_bresp, 
  SLOT_1_AXI_bvalid, SLOT_1_AXI_bready, SLOT_1_AXI_araddr, SLOT_1_AXI_arlen, 
  SLOT_1_AXI_arsize, SLOT_1_AXI_arburst, SLOT_1_AXI_arcache, SLOT_1_AXI_arprot, 
  SLOT_1_AXI_arvalid, SLOT_1_AXI_arready, SLOT_1_AXI_rdata, SLOT_1_AXI_rresp, 
  SLOT_1_AXI_rlast, SLOT_1_AXI_rvalid, SLOT_1_AXI_rready, SLOT_2_AXI_awaddr, 
  SLOT_2_AXI_awlen, SLOT_2_AXI_awsize, SLOT_2_AXI_awburst, SLOT_2_AXI_awcache, 
  SLOT_2_AXI_awprot, SLOT_2_AXI_awvalid, SLOT_2_AXI_awready, SLOT_2_AXI_wdata, 
  SLOT_2_AXI_wstrb, SLOT_2_AXI_wlast, SLOT_2_AXI_wvalid, SLOT_2_AXI_wready, 
  SLOT_2_AXI_bresp, SLOT_2_AXI_bvalid, SLOT_2_AXI_bready, SLOT_2_AXI_araddr, 
  SLOT_2_AXI_arlen, SLOT_2_AXI_arsize, SLOT_2_AXI_arburst, SLOT_2_AXI_arcache, 
  SLOT_2_AXI_arprot, SLOT_2_AXI_arvalid, SLOT_2_AXI_arready, SLOT_2_AXI_rdata, 
  SLOT_2_AXI_rresp, SLOT_2_AXI_rlast, SLOT_2_AXI_rvalid, SLOT_2_AXI_rready, 
  SLOT_3_AXI_awaddr, SLOT_3_AXI_awlen, SLOT_3_AXI_awsize, SLOT_3_AXI_awburst, 
  SLOT_3_AXI_awcache, SLOT_3_AXI_awprot, SLOT_3_AXI_awvalid, SLOT_3_AXI_awready, 
  SLOT_3_AXI_wdata, SLOT_3_AXI_wstrb, SLOT_3_AXI_wlast, SLOT_3_AXI_wvalid, 
  SLOT_3_AXI_wready, SLOT_3_AXI_bresp, SLOT_3_AXI_bvalid, SLOT_3_AXI_bready, 
  SLOT_3_AXI_araddr, SLOT_3_AXI_arlen, SLOT_3_AXI_arsize, SLOT_3_AXI_arburst, 
  SLOT_3_AXI_arcache, SLOT_3_AXI_arprot, SLOT_3_AXI_arvalid, SLOT_3_AXI_arready, 
  SLOT_3_AXI_rdata, SLOT_3_AXI_rresp, SLOT_3_AXI_rlast, SLOT_3_AXI_rvalid, 
  SLOT_3_AXI_rready, SLOT_4_AXI_awaddr, SLOT_4_AXI_awlen, SLOT_4_AXI_awsize, 
  SLOT_4_AXI_awburst, SLOT_4_AXI_awcache, SLOT_4_AXI_awprot, SLOT_4_AXI_awvalid, 
  SLOT_4_AXI_awready, SLOT_4_AXI_wdata, SLOT_4_AXI_wstrb, SLOT_4_AXI_wlast, 
  SLOT_4_AXI_wvalid, SLOT_4_AXI_wready, SLOT_4_AXI_bresp, SLOT_4_AXI_bvalid, 
  SLOT_4_AXI_bready, SLOT_4_AXI_araddr, SLOT_4_AXI_arlen, SLOT_4_AXI_arsize, 
  SLOT_4_AXI_arburst, SLOT_4_AXI_arcache, SLOT_4_AXI_arprot, SLOT_4_AXI_arvalid, 
  SLOT_4_AXI_arready, SLOT_4_AXI_rdata, SLOT_4_AXI_rresp, SLOT_4_AXI_rlast, 
  SLOT_4_AXI_rvalid, SLOT_4_AXI_rready, SLOT_5_AXI_awaddr, SLOT_5_AXI_awlen, 
  SLOT_5_AXI_awsize, SLOT_5_AXI_awburst, SLOT_5_AXI_awcache, SLOT_5_AXI_awprot, 
  SLOT_5_AXI_awvalid, SLOT_5_AXI_awready, SLOT_5_AXI_wdata, SLOT_5_AXI_wstrb, 
  SLOT_5_AXI_wlast, SLOT_5_AXI_wvalid, SLOT_5_AXI_wready, SLOT_5_AXI_bresp, 
  SLOT_5_AXI_bvalid, SLOT_5_AXI_bready, SLOT_5_AXI_araddr, SLOT_5_AXI_arlen, 
  SLOT_5_AXI_arsize, SLOT_5_AXI_arburst, SLOT_5_AXI_arcache, SLOT_5_AXI_arprot, 
  SLOT_5_AXI_arvalid, SLOT_5_AXI_arready, SLOT_5_AXI_rdata, SLOT_5_AXI_rresp, 
  SLOT_5_AXI_rlast, SLOT_5_AXI_rvalid, SLOT_5_AXI_rready, SLOT_6_AXI_awaddr, 
  SLOT_6_AXI_awlen, SLOT_6_AXI_awsize, SLOT_6_AXI_awburst, SLOT_6_AXI_awcache, 
  SLOT_6_AXI_awprot, SLOT_6_AXI_awvalid, SLOT_6_AXI_awready, SLOT_6_AXI_wdata, 
  SLOT_6_AXI_wstrb, SLOT_6_AXI_wlast, SLOT_6_AXI_wvalid, SLOT_6_AXI_wready, 
  SLOT_6_AXI_bresp, SLOT_6_AXI_bvalid, SLOT_6_AXI_bready, SLOT_6_AXI_araddr, 
  SLOT_6_AXI_arlen, SLOT_6_AXI_arsize, SLOT_6_AXI_arburst, SLOT_6_AXI_arcache, 
  SLOT_6_AXI_arprot, SLOT_6_AXI_arvalid, SLOT_6_AXI_arready, SLOT_6_AXI_rdata, 
  SLOT_6_AXI_rresp, SLOT_6_AXI_rlast, SLOT_6_AXI_rvalid, SLOT_6_AXI_rready, 
  SLOT_7_AXI_awaddr, SLOT_7_AXI_awlen, SLOT_7_AXI_awsize, SLOT_7_AXI_awburst, 
  SLOT_7_AXI_awcache, SLOT_7_AXI_awprot, SLOT_7_AXI_awvalid, SLOT_7_AXI_awready, 
  SLOT_7_AXI_wdata, SLOT_7_AXI_wstrb, SLOT_7_AXI_wlast, SLOT_7_AXI_wvalid, 
  SLOT_7_AXI_wready, SLOT_7_AXI_bresp, SLOT_7_AXI_bvalid, SLOT_7_AXI_bready, 
  SLOT_7_AXI_araddr, SLOT_7_AXI_arlen, SLOT_7_AXI_arsize, SLOT_7_AXI_arburst, 
  SLOT_7_AXI_arcache, SLOT_7_AXI_arprot, SLOT_7_AXI_arvalid, SLOT_7_AXI_arready, 
  SLOT_7_AXI_rdata, SLOT_7_AXI_rresp, SLOT_7_AXI_rlast, SLOT_7_AXI_rvalid, 
  SLOT_7_AXI_rready, SLOT_8_AXI_awaddr, SLOT_8_AXI_awlen, SLOT_8_AXI_awsize, 
  SLOT_8_AXI_awburst, SLOT_8_AXI_awcache, SLOT_8_AXI_awprot, SLOT_8_AXI_awvalid, 
  SLOT_8_AXI_awready, SLOT_8_AXI_wdata, SLOT_8_AXI_wstrb, SLOT_8_AXI_wlast, 
  SLOT_8_AXI_wvalid, SLOT_8_AXI_wready, SLOT_8_AXI_bresp, SLOT_8_AXI_bvalid, 
  SLOT_8_AXI_bready, SLOT_8_AXI_araddr, SLOT_8_AXI_arlen, SLOT_8_AXI_arsize, 
  SLOT_8_AXI_arburst, SLOT_8_AXI_arcache, SLOT_8_AXI_arprot, SLOT_8_AXI_arvalid, 
  SLOT_8_AXI_arready, SLOT_8_AXI_rdata, SLOT_8_AXI_rresp, SLOT_8_AXI_rlast, 
  SLOT_8_AXI_rvalid, SLOT_8_AXI_rready, SLOT_9_AXI_awaddr, SLOT_9_AXI_awlen, 
  SLOT_9_AXI_awsize, SLOT_9_AXI_awburst, SLOT_9_AXI_awcache, SLOT_9_AXI_awprot, 
  SLOT_9_AXI_awvalid, SLOT_9_AXI_awready, SLOT_9_AXI_wdata, SLOT_9_AXI_wstrb, 
  SLOT_9_AXI_wlast, SLOT_9_AXI_wvalid, SLOT_9_AXI_wready, SLOT_9_AXI_bresp, 
  SLOT_9_AXI_bvalid, SLOT_9_AXI_bready, SLOT_9_AXI_araddr, SLOT_9_AXI_arlen, 
  SLOT_9_AXI_arsize, SLOT_9_AXI_arburst, SLOT_9_AXI_arcache, SLOT_9_AXI_arprot, 
  SLOT_9_AXI_arvalid, SLOT_9_AXI_arready, SLOT_9_AXI_rdata, SLOT_9_AXI_rresp, 
  SLOT_9_AXI_rlast, SLOT_9_AXI_rvalid, SLOT_9_AXI_rready, SLOT_10_AXI_awaddr, 
  SLOT_10_AXI_awlen, SLOT_10_AXI_awsize, SLOT_10_AXI_awburst, SLOT_10_AXI_awcache, 
  SLOT_10_AXI_awprot, SLOT_10_AXI_awvalid, SLOT_10_AXI_awready, SLOT_10_AXI_wdata, 
  SLOT_10_AXI_wstrb, SLOT_10_AXI_wlast, SLOT_10_AXI_wvalid, SLOT_10_AXI_wready, 
  SLOT_10_AXI_bresp, SLOT_10_AXI_bvalid, SLOT_10_AXI_bready, SLOT_10_AXI_araddr, 
  SLOT_10_AXI_arlen, SLOT_10_AXI_arsize, SLOT_10_AXI_arburst, SLOT_10_AXI_arcache, 
  SLOT_10_AXI_arprot, SLOT_10_AXI_arvalid, SLOT_10_AXI_arready, SLOT_10_AXI_rdata, 
  SLOT_10_AXI_rresp, SLOT_10_AXI_rlast, SLOT_10_AXI_rvalid, SLOT_10_AXI_rready, 
  SLOT_11_AXI_awaddr, SLOT_11_AXI_awlen, SLOT_11_AXI_awsize, SLOT_11_AXI_awburst, 
  SLOT_11_AXI_awcache, SLOT_11_AXI_awprot, SLOT_11_AXI_awvalid, SLOT_11_AXI_awready, 
  SLOT_11_AXI_wdata, SLOT_11_AXI_wstrb, SLOT_11_AXI_wlast, SLOT_11_AXI_wvalid, 
  SLOT_11_AXI_wready, SLOT_11_AXI_bresp, SLOT_11_AXI_bvalid, SLOT_11_AXI_bready, 
  SLOT_11_AXI_araddr, SLOT_11_AXI_arlen, SLOT_11_AXI_arsize, SLOT_11_AXI_arburst, 
  SLOT_11_AXI_arcache, SLOT_11_AXI_arprot, SLOT_11_AXI_arvalid, SLOT_11_AXI_arready, 
  SLOT_11_AXI_rdata, SLOT_11_AXI_rresp, SLOT_11_AXI_rlast, SLOT_11_AXI_rvalid, 
  SLOT_11_AXI_rready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[33:0],probe7[0:0],probe8[0:0],probe9[33:0],probe10[0:0],probe11[0:0],probe12[33:0],probe13[0:0],probe14[0:0],probe15[0:0],probe16[33:0],probe17[0:0],probe18[0:0],probe19[33:0],probe20[0:0],probe21[33:0],probe22[0:0],probe23[0:0],probe24[33:0],probe25[0:0],probe26[0:0],probe27[33:0],probe28[0:0],probe29[0:0],probe30[33:0],probe31[0:0],probe32[0:0],probe33[33:0],probe34[0:0],probe35[0:0],probe36[33:0],probe37[0:0],probe38[0:0],probe39[0:0],probe40[0:0],probe41[0:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wstrb[3:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXI_awaddr[31:0],SLOT_1_AXI_awlen[7:0],SLOT_1_AXI_awsize[2:0],SLOT_1_AXI_awburst[1:0],SLOT_1_AXI_awcache[3:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[31:0],SLOT_1_AXI_wstrb[3:0],SLOT_1_AXI_wlast,SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_araddr[31:0],SLOT_1_AXI_arlen[7:0],SLOT_1_AXI_arsize[2:0],SLOT_1_AXI_arburst[1:0],SLOT_1_AXI_arcache[3:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rdata[31:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rlast,SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXI_awaddr[31:0],SLOT_2_AXI_awlen[7:0],SLOT_2_AXI_awsize[2:0],SLOT_2_AXI_awburst[1:0],SLOT_2_AXI_awcache[3:0],SLOT_2_AXI_awprot[2:0],SLOT_2_AXI_awvalid,SLOT_2_AXI_awready,SLOT_2_AXI_wdata[31:0],SLOT_2_AXI_wstrb[3:0],SLOT_2_AXI_wlast,SLOT_2_AXI_wvalid,SLOT_2_AXI_wready,SLOT_2_AXI_bresp[1:0],SLOT_2_AXI_bvalid,SLOT_2_AXI_bready,SLOT_2_AXI_araddr[31:0],SLOT_2_AXI_arlen[7:0],SLOT_2_AXI_arsize[2:0],SLOT_2_AXI_arburst[1:0],SLOT_2_AXI_arcache[3:0],SLOT_2_AXI_arprot[2:0],SLOT_2_AXI_arvalid,SLOT_2_AXI_arready,SLOT_2_AXI_rdata[31:0],SLOT_2_AXI_rresp[1:0],SLOT_2_AXI_rlast,SLOT_2_AXI_rvalid,SLOT_2_AXI_rready,SLOT_3_AXI_awaddr[31:0],SLOT_3_AXI_awlen[7:0],SLOT_3_AXI_awsize[2:0],SLOT_3_AXI_awburst[1:0],SLOT_3_AXI_awcache[3:0],SLOT_3_AXI_awprot[2:0],SLOT_3_AXI_awvalid,SLOT_3_AXI_awready,SLOT_3_AXI_wdata[31:0],SLOT_3_AXI_wstrb[3:0],SLOT_3_AXI_wlast,SLOT_3_AXI_wvalid,SLOT_3_AXI_wready,SLOT_3_AXI_bresp[1:0],SLOT_3_AXI_bvalid,SLOT_3_AXI_bready,SLOT_3_AXI_araddr[31:0],SLOT_3_AXI_arlen[7:0],SLOT_3_AXI_arsize[2:0],SLOT_3_AXI_arburst[1:0],SLOT_3_AXI_arcache[3:0],SLOT_3_AXI_arprot[2:0],SLOT_3_AXI_arvalid,SLOT_3_AXI_arready,SLOT_3_AXI_rdata[31:0],SLOT_3_AXI_rresp[1:0],SLOT_3_AXI_rlast,SLOT_3_AXI_rvalid,SLOT_3_AXI_rready,SLOT_4_AXI_awaddr[31:0],SLOT_4_AXI_awlen[7:0],SLOT_4_AXI_awsize[2:0],SLOT_4_AXI_awburst[1:0],SLOT_4_AXI_awcache[3:0],SLOT_4_AXI_awprot[2:0],SLOT_4_AXI_awvalid,SLOT_4_AXI_awready,SLOT_4_AXI_wdata[31:0],SLOT_4_AXI_wstrb[3:0],SLOT_4_AXI_wlast,SLOT_4_AXI_wvalid,SLOT_4_AXI_wready,SLOT_4_AXI_bresp[1:0],SLOT_4_AXI_bvalid,SLOT_4_AXI_bready,SLOT_4_AXI_araddr[31:0],SLOT_4_AXI_arlen[7:0],SLOT_4_AXI_arsize[2:0],SLOT_4_AXI_arburst[1:0],SLOT_4_AXI_arcache[3:0],SLOT_4_AXI_arprot[2:0],SLOT_4_AXI_arvalid,SLOT_4_AXI_arready,SLOT_4_AXI_rdata[31:0],SLOT_4_AXI_rresp[1:0],SLOT_4_AXI_rlast,SLOT_4_AXI_rvalid,SLOT_4_AXI_rready,SLOT_5_AXI_awaddr[31:0],SLOT_5_AXI_awlen[7:0],SLOT_5_AXI_awsize[2:0],SLOT_5_AXI_awburst[1:0],SLOT_5_AXI_awcache[3:0],SLOT_5_AXI_awprot[2:0],SLOT_5_AXI_awvalid,SLOT_5_AXI_awready,SLOT_5_AXI_wdata[31:0],SLOT_5_AXI_wstrb[3:0],SLOT_5_AXI_wlast,SLOT_5_AXI_wvalid,SLOT_5_AXI_wready,SLOT_5_AXI_bresp[1:0],SLOT_5_AXI_bvalid,SLOT_5_AXI_bready,SLOT_5_AXI_araddr[31:0],SLOT_5_AXI_arlen[7:0],SLOT_5_AXI_arsize[2:0],SLOT_5_AXI_arburst[1:0],SLOT_5_AXI_arcache[3:0],SLOT_5_AXI_arprot[2:0],SLOT_5_AXI_arvalid,SLOT_5_AXI_arready,SLOT_5_AXI_rdata[31:0],SLOT_5_AXI_rresp[1:0],SLOT_5_AXI_rlast,SLOT_5_AXI_rvalid,SLOT_5_AXI_rready,SLOT_6_AXI_awaddr[31:0],SLOT_6_AXI_awlen[3:0],SLOT_6_AXI_awsize[2:0],SLOT_6_AXI_awburst[1:0],SLOT_6_AXI_awcache[3:0],SLOT_6_AXI_awprot[2:0],SLOT_6_AXI_awvalid,SLOT_6_AXI_awready,SLOT_6_AXI_wdata[31:0],SLOT_6_AXI_wstrb[3:0],SLOT_6_AXI_wlast,SLOT_6_AXI_wvalid,SLOT_6_AXI_wready,SLOT_6_AXI_bresp[1:0],SLOT_6_AXI_bvalid,SLOT_6_AXI_bready,SLOT_6_AXI_araddr[31:0],SLOT_6_AXI_arlen[3:0],SLOT_6_AXI_arsize[2:0],SLOT_6_AXI_arburst[1:0],SLOT_6_AXI_arcache[3:0],SLOT_6_AXI_arprot[2:0],SLOT_6_AXI_arvalid,SLOT_6_AXI_arready,SLOT_6_AXI_rdata[31:0],SLOT_6_AXI_rresp[1:0],SLOT_6_AXI_rlast,SLOT_6_AXI_rvalid,SLOT_6_AXI_rready,SLOT_7_AXI_awaddr[31:0],SLOT_7_AXI_awlen[3:0],SLOT_7_AXI_awsize[2:0],SLOT_7_AXI_awburst[1:0],SLOT_7_AXI_awcache[3:0],SLOT_7_AXI_awprot[2:0],SLOT_7_AXI_awvalid,SLOT_7_AXI_awready,SLOT_7_AXI_wdata[31:0],SLOT_7_AXI_wstrb[3:0],SLOT_7_AXI_wlast,SLOT_7_AXI_wvalid,SLOT_7_AXI_wready,SLOT_7_AXI_bresp[1:0],SLOT_7_AXI_bvalid,SLOT_7_AXI_bready,SLOT_7_AXI_araddr[31:0],SLOT_7_AXI_arlen[3:0],SLOT_7_AXI_arsize[2:0],SLOT_7_AXI_arburst[1:0],SLOT_7_AXI_arcache[1:0],SLOT_7_AXI_arprot[2:0],SLOT_7_AXI_arvalid,SLOT_7_AXI_arready,SLOT_7_AXI_rdata[31:0],SLOT_7_AXI_rresp[1:0],SLOT_7_AXI_rlast,SLOT_7_AXI_rvalid,SLOT_7_AXI_rready,SLOT_8_AXI_awaddr[31:0],SLOT_8_AXI_awlen[3:0],SLOT_8_AXI_awsize[2:0],SLOT_8_AXI_awburst[1:0],SLOT_8_AXI_awcache[3:0],SLOT_8_AXI_awprot[2:0],SLOT_8_AXI_awvalid,SLOT_8_AXI_awready,SLOT_8_AXI_wdata[31:0],SLOT_8_AXI_wstrb[3:0],SLOT_8_AXI_wlast,SLOT_8_AXI_wvalid,SLOT_8_AXI_wready,SLOT_8_AXI_bresp[1:0],SLOT_8_AXI_bvalid,SLOT_8_AXI_bready,SLOT_8_AXI_araddr[31:0],SLOT_8_AXI_arlen[3:0],SLOT_8_AXI_arsize[2:0],SLOT_8_AXI_arburst[1:0],SLOT_8_AXI_arcache[3:0],SLOT_8_AXI_arprot[2:0],SLOT_8_AXI_arvalid,SLOT_8_AXI_arready,SLOT_8_AXI_rdata[31:0],SLOT_8_AXI_rresp[1:0],SLOT_8_AXI_rlast,SLOT_8_AXI_rvalid,SLOT_8_AXI_rready,SLOT_9_AXI_awaddr[31:0],SLOT_9_AXI_awlen[3:0],SLOT_9_AXI_awsize[2:0],SLOT_9_AXI_awburst[1:0],SLOT_9_AXI_awcache[3:0],SLOT_9_AXI_awprot[2:0],SLOT_9_AXI_awvalid,SLOT_9_AXI_awready,SLOT_9_AXI_wdata[31:0],SLOT_9_AXI_wstrb[2:0],SLOT_9_AXI_wlast,SLOT_9_AXI_wvalid,SLOT_9_AXI_wready,SLOT_9_AXI_bresp[1:0],SLOT_9_AXI_bvalid,SLOT_9_AXI_bready,SLOT_9_AXI_araddr[31:0],SLOT_9_AXI_arlen[3:0],SLOT_9_AXI_arsize[2:0],SLOT_9_AXI_arburst[1:0],SLOT_9_AXI_arcache[3:0],SLOT_9_AXI_arprot[2:0],SLOT_9_AXI_arvalid,SLOT_9_AXI_arready,SLOT_9_AXI_rdata[31:0],SLOT_9_AXI_rresp[1:0],SLOT_9_AXI_rlast,SLOT_9_AXI_rvalid,SLOT_9_AXI_rready,SLOT_10_AXI_awaddr[31:0],SLOT_10_AXI_awlen[3:0],SLOT_10_AXI_awsize[2:0],SLOT_10_AXI_awburst[1:0],SLOT_10_AXI_awcache[3:0],SLOT_10_AXI_awprot[2:0],SLOT_10_AXI_awvalid,SLOT_10_AXI_awready,SLOT_10_AXI_wdata[31:0],SLOT_10_AXI_wstrb[3:0],SLOT_10_AXI_wlast,SLOT_10_AXI_wvalid,SLOT_10_AXI_wready,SLOT_10_AXI_bresp[1:0],SLOT_10_AXI_bvalid,SLOT_10_AXI_bready,SLOT_10_AXI_araddr[31:0],SLOT_10_AXI_arlen[3:0],SLOT_10_AXI_arsize[2:0],SLOT_10_AXI_arburst[1:0],SLOT_10_AXI_arcache[3:0],SLOT_10_AXI_arprot[2:0],SLOT_10_AXI_arvalid,SLOT_10_AXI_arready,SLOT_10_AXI_rdata[31:0],SLOT_10_AXI_rresp[1:0],SLOT_10_AXI_rlast,SLOT_10_AXI_rvalid,SLOT_10_AXI_rready,SLOT_11_AXI_awaddr[31:0],SLOT_11_AXI_awlen[3:0],SLOT_11_AXI_awsize[2:0],SLOT_11_AXI_awburst[1:0],SLOT_11_AXI_awcache[3:0],SLOT_11_AXI_awprot[2:0],SLOT_11_AXI_awvalid,SLOT_11_AXI_awready,SLOT_11_AXI_wdata[31:0],SLOT_11_AXI_wstrb[3:0],SLOT_11_AXI_wlast,SLOT_11_AXI_wvalid,SLOT_11_AXI_wready,SLOT_11_AXI_bresp[1:0],SLOT_11_AXI_bvalid,SLOT_11_AXI_bready,SLOT_11_AXI_araddr[31:0],SLOT_11_AXI_arlen[3:0],SLOT_11_AXI_arsize[2:0],SLOT_11_AXI_arburst[1:0],SLOT_11_AXI_arcache[3:0],SLOT_11_AXI_arprot[2:0],SLOT_11_AXI_arvalid,SLOT_11_AXI_arready,SLOT_11_AXI_rdata[31:0],SLOT_11_AXI_rresp[1:0],SLOT_11_AXI_rlast,SLOT_11_AXI_rvalid,SLOT_11_AXI_rready,resetn" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [33:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [33:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [33:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [33:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
  input [33:0]probe19;
  input [0:0]probe20;
  input [33:0]probe21;
  input [0:0]probe22;
  input [0:0]probe23;
  input [33:0]probe24;
  input [0:0]probe25;
  input [0:0]probe26;
  input [33:0]probe27;
  input [0:0]probe28;
  input [0:0]probe29;
  input [33:0]probe30;
  input [0:0]probe31;
  input [0:0]probe32;
  input [33:0]probe33;
  input [0:0]probe34;
  input [0:0]probe35;
  input [33:0]probe36;
  input [0:0]probe37;
  input [0:0]probe38;
  input [0:0]probe39;
  input [0:0]probe40;
  input [0:0]probe41;
  input [31:0]SLOT_0_AXI_awaddr;
  input [7:0]SLOT_0_AXI_awlen;
  input [2:0]SLOT_0_AXI_awsize;
  input [1:0]SLOT_0_AXI_awburst;
  input [3:0]SLOT_0_AXI_awcache;
  input [2:0]SLOT_0_AXI_awprot;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_awready;
  input [31:0]SLOT_0_AXI_wdata;
  input [3:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wvalid;
  input SLOT_0_AXI_wready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input SLOT_0_AXI_bready;
  input [31:0]SLOT_0_AXI_araddr;
  input [7:0]SLOT_0_AXI_arlen;
  input [2:0]SLOT_0_AXI_arsize;
  input [1:0]SLOT_0_AXI_arburst;
  input [3:0]SLOT_0_AXI_arcache;
  input [2:0]SLOT_0_AXI_arprot;
  input SLOT_0_AXI_arvalid;
  input SLOT_0_AXI_arready;
  input [31:0]SLOT_0_AXI_rdata;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rvalid;
  input SLOT_0_AXI_rready;
  input [31:0]SLOT_1_AXI_awaddr;
  input [7:0]SLOT_1_AXI_awlen;
  input [2:0]SLOT_1_AXI_awsize;
  input [1:0]SLOT_1_AXI_awburst;
  input [3:0]SLOT_1_AXI_awcache;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_awready;
  input [31:0]SLOT_1_AXI_wdata;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wlast;
  input SLOT_1_AXI_wvalid;
  input SLOT_1_AXI_wready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input SLOT_1_AXI_bready;
  input [31:0]SLOT_1_AXI_araddr;
  input [7:0]SLOT_1_AXI_arlen;
  input [2:0]SLOT_1_AXI_arsize;
  input [1:0]SLOT_1_AXI_arburst;
  input [3:0]SLOT_1_AXI_arcache;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arvalid;
  input SLOT_1_AXI_arready;
  input [31:0]SLOT_1_AXI_rdata;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rlast;
  input SLOT_1_AXI_rvalid;
  input SLOT_1_AXI_rready;
  input [31:0]SLOT_2_AXI_awaddr;
  input [7:0]SLOT_2_AXI_awlen;
  input [2:0]SLOT_2_AXI_awsize;
  input [1:0]SLOT_2_AXI_awburst;
  input [3:0]SLOT_2_AXI_awcache;
  input [2:0]SLOT_2_AXI_awprot;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_awready;
  input [31:0]SLOT_2_AXI_wdata;
  input [3:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wlast;
  input SLOT_2_AXI_wvalid;
  input SLOT_2_AXI_wready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input SLOT_2_AXI_bready;
  input [31:0]SLOT_2_AXI_araddr;
  input [7:0]SLOT_2_AXI_arlen;
  input [2:0]SLOT_2_AXI_arsize;
  input [1:0]SLOT_2_AXI_arburst;
  input [3:0]SLOT_2_AXI_arcache;
  input [2:0]SLOT_2_AXI_arprot;
  input SLOT_2_AXI_arvalid;
  input SLOT_2_AXI_arready;
  input [31:0]SLOT_2_AXI_rdata;
  input [1:0]SLOT_2_AXI_rresp;
  input SLOT_2_AXI_rlast;
  input SLOT_2_AXI_rvalid;
  input SLOT_2_AXI_rready;
  input [31:0]SLOT_3_AXI_awaddr;
  input [7:0]SLOT_3_AXI_awlen;
  input [2:0]SLOT_3_AXI_awsize;
  input [1:0]SLOT_3_AXI_awburst;
  input [3:0]SLOT_3_AXI_awcache;
  input [2:0]SLOT_3_AXI_awprot;
  input SLOT_3_AXI_awvalid;
  input SLOT_3_AXI_awready;
  input [31:0]SLOT_3_AXI_wdata;
  input [3:0]SLOT_3_AXI_wstrb;
  input SLOT_3_AXI_wlast;
  input SLOT_3_AXI_wvalid;
  input SLOT_3_AXI_wready;
  input [1:0]SLOT_3_AXI_bresp;
  input SLOT_3_AXI_bvalid;
  input SLOT_3_AXI_bready;
  input [31:0]SLOT_3_AXI_araddr;
  input [7:0]SLOT_3_AXI_arlen;
  input [2:0]SLOT_3_AXI_arsize;
  input [1:0]SLOT_3_AXI_arburst;
  input [3:0]SLOT_3_AXI_arcache;
  input [2:0]SLOT_3_AXI_arprot;
  input SLOT_3_AXI_arvalid;
  input SLOT_3_AXI_arready;
  input [31:0]SLOT_3_AXI_rdata;
  input [1:0]SLOT_3_AXI_rresp;
  input SLOT_3_AXI_rlast;
  input SLOT_3_AXI_rvalid;
  input SLOT_3_AXI_rready;
  input [31:0]SLOT_4_AXI_awaddr;
  input [7:0]SLOT_4_AXI_awlen;
  input [2:0]SLOT_4_AXI_awsize;
  input [1:0]SLOT_4_AXI_awburst;
  input [3:0]SLOT_4_AXI_awcache;
  input [2:0]SLOT_4_AXI_awprot;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_awready;
  input [31:0]SLOT_4_AXI_wdata;
  input [3:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wlast;
  input SLOT_4_AXI_wvalid;
  input SLOT_4_AXI_wready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input SLOT_4_AXI_bready;
  input [31:0]SLOT_4_AXI_araddr;
  input [7:0]SLOT_4_AXI_arlen;
  input [2:0]SLOT_4_AXI_arsize;
  input [1:0]SLOT_4_AXI_arburst;
  input [3:0]SLOT_4_AXI_arcache;
  input [2:0]SLOT_4_AXI_arprot;
  input SLOT_4_AXI_arvalid;
  input SLOT_4_AXI_arready;
  input [31:0]SLOT_4_AXI_rdata;
  input [1:0]SLOT_4_AXI_rresp;
  input SLOT_4_AXI_rlast;
  input SLOT_4_AXI_rvalid;
  input SLOT_4_AXI_rready;
  input [31:0]SLOT_5_AXI_awaddr;
  input [7:0]SLOT_5_AXI_awlen;
  input [2:0]SLOT_5_AXI_awsize;
  input [1:0]SLOT_5_AXI_awburst;
  input [3:0]SLOT_5_AXI_awcache;
  input [2:0]SLOT_5_AXI_awprot;
  input SLOT_5_AXI_awvalid;
  input SLOT_5_AXI_awready;
  input [31:0]SLOT_5_AXI_wdata;
  input [3:0]SLOT_5_AXI_wstrb;
  input SLOT_5_AXI_wlast;
  input SLOT_5_AXI_wvalid;
  input SLOT_5_AXI_wready;
  input [1:0]SLOT_5_AXI_bresp;
  input SLOT_5_AXI_bvalid;
  input SLOT_5_AXI_bready;
  input [31:0]SLOT_5_AXI_araddr;
  input [7:0]SLOT_5_AXI_arlen;
  input [2:0]SLOT_5_AXI_arsize;
  input [1:0]SLOT_5_AXI_arburst;
  input [3:0]SLOT_5_AXI_arcache;
  input [2:0]SLOT_5_AXI_arprot;
  input SLOT_5_AXI_arvalid;
  input SLOT_5_AXI_arready;
  input [31:0]SLOT_5_AXI_rdata;
  input [1:0]SLOT_5_AXI_rresp;
  input SLOT_5_AXI_rlast;
  input SLOT_5_AXI_rvalid;
  input SLOT_5_AXI_rready;
  input [31:0]SLOT_6_AXI_awaddr;
  input [3:0]SLOT_6_AXI_awlen;
  input [2:0]SLOT_6_AXI_awsize;
  input [1:0]SLOT_6_AXI_awburst;
  input [3:0]SLOT_6_AXI_awcache;
  input [2:0]SLOT_6_AXI_awprot;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_awready;
  input [31:0]SLOT_6_AXI_wdata;
  input [3:0]SLOT_6_AXI_wstrb;
  input SLOT_6_AXI_wlast;
  input SLOT_6_AXI_wvalid;
  input SLOT_6_AXI_wready;
  input [1:0]SLOT_6_AXI_bresp;
  input SLOT_6_AXI_bvalid;
  input SLOT_6_AXI_bready;
  input [31:0]SLOT_6_AXI_araddr;
  input [3:0]SLOT_6_AXI_arlen;
  input [2:0]SLOT_6_AXI_arsize;
  input [1:0]SLOT_6_AXI_arburst;
  input [3:0]SLOT_6_AXI_arcache;
  input [2:0]SLOT_6_AXI_arprot;
  input SLOT_6_AXI_arvalid;
  input SLOT_6_AXI_arready;
  input [31:0]SLOT_6_AXI_rdata;
  input [1:0]SLOT_6_AXI_rresp;
  input SLOT_6_AXI_rlast;
  input SLOT_6_AXI_rvalid;
  input SLOT_6_AXI_rready;
  input [31:0]SLOT_7_AXI_awaddr;
  input [3:0]SLOT_7_AXI_awlen;
  input [2:0]SLOT_7_AXI_awsize;
  input [1:0]SLOT_7_AXI_awburst;
  input [3:0]SLOT_7_AXI_awcache;
  input [2:0]SLOT_7_AXI_awprot;
  input SLOT_7_AXI_awvalid;
  input SLOT_7_AXI_awready;
  input [31:0]SLOT_7_AXI_wdata;
  input [3:0]SLOT_7_AXI_wstrb;
  input SLOT_7_AXI_wlast;
  input SLOT_7_AXI_wvalid;
  input SLOT_7_AXI_wready;
  input [1:0]SLOT_7_AXI_bresp;
  input SLOT_7_AXI_bvalid;
  input SLOT_7_AXI_bready;
  input [31:0]SLOT_7_AXI_araddr;
  input [3:0]SLOT_7_AXI_arlen;
  input [2:0]SLOT_7_AXI_arsize;
  input [1:0]SLOT_7_AXI_arburst;
  input [1:0]SLOT_7_AXI_arcache;
  input [2:0]SLOT_7_AXI_arprot;
  input SLOT_7_AXI_arvalid;
  input SLOT_7_AXI_arready;
  input [31:0]SLOT_7_AXI_rdata;
  input [1:0]SLOT_7_AXI_rresp;
  input SLOT_7_AXI_rlast;
  input SLOT_7_AXI_rvalid;
  input SLOT_7_AXI_rready;
  input [31:0]SLOT_8_AXI_awaddr;
  input [3:0]SLOT_8_AXI_awlen;
  input [2:0]SLOT_8_AXI_awsize;
  input [1:0]SLOT_8_AXI_awburst;
  input [3:0]SLOT_8_AXI_awcache;
  input [2:0]SLOT_8_AXI_awprot;
  input SLOT_8_AXI_awvalid;
  input SLOT_8_AXI_awready;
  input [31:0]SLOT_8_AXI_wdata;
  input [3:0]SLOT_8_AXI_wstrb;
  input SLOT_8_AXI_wlast;
  input SLOT_8_AXI_wvalid;
  input SLOT_8_AXI_wready;
  input [1:0]SLOT_8_AXI_bresp;
  input SLOT_8_AXI_bvalid;
  input SLOT_8_AXI_bready;
  input [31:0]SLOT_8_AXI_araddr;
  input [3:0]SLOT_8_AXI_arlen;
  input [2:0]SLOT_8_AXI_arsize;
  input [1:0]SLOT_8_AXI_arburst;
  input [3:0]SLOT_8_AXI_arcache;
  input [2:0]SLOT_8_AXI_arprot;
  input SLOT_8_AXI_arvalid;
  input SLOT_8_AXI_arready;
  input [31:0]SLOT_8_AXI_rdata;
  input [1:0]SLOT_8_AXI_rresp;
  input SLOT_8_AXI_rlast;
  input SLOT_8_AXI_rvalid;
  input SLOT_8_AXI_rready;
  input [31:0]SLOT_9_AXI_awaddr;
  input [3:0]SLOT_9_AXI_awlen;
  input [2:0]SLOT_9_AXI_awsize;
  input [1:0]SLOT_9_AXI_awburst;
  input [3:0]SLOT_9_AXI_awcache;
  input [2:0]SLOT_9_AXI_awprot;
  input SLOT_9_AXI_awvalid;
  input SLOT_9_AXI_awready;
  input [31:0]SLOT_9_AXI_wdata;
  input [2:0]SLOT_9_AXI_wstrb;
  input SLOT_9_AXI_wlast;
  input SLOT_9_AXI_wvalid;
  input SLOT_9_AXI_wready;
  input [1:0]SLOT_9_AXI_bresp;
  input SLOT_9_AXI_bvalid;
  input SLOT_9_AXI_bready;
  input [31:0]SLOT_9_AXI_araddr;
  input [3:0]SLOT_9_AXI_arlen;
  input [2:0]SLOT_9_AXI_arsize;
  input [1:0]SLOT_9_AXI_arburst;
  input [3:0]SLOT_9_AXI_arcache;
  input [2:0]SLOT_9_AXI_arprot;
  input SLOT_9_AXI_arvalid;
  input SLOT_9_AXI_arready;
  input [31:0]SLOT_9_AXI_rdata;
  input [1:0]SLOT_9_AXI_rresp;
  input SLOT_9_AXI_rlast;
  input SLOT_9_AXI_rvalid;
  input SLOT_9_AXI_rready;
  input [31:0]SLOT_10_AXI_awaddr;
  input [3:0]SLOT_10_AXI_awlen;
  input [2:0]SLOT_10_AXI_awsize;
  input [1:0]SLOT_10_AXI_awburst;
  input [3:0]SLOT_10_AXI_awcache;
  input [2:0]SLOT_10_AXI_awprot;
  input SLOT_10_AXI_awvalid;
  input SLOT_10_AXI_awready;
  input [31:0]SLOT_10_AXI_wdata;
  input [3:0]SLOT_10_AXI_wstrb;
  input SLOT_10_AXI_wlast;
  input SLOT_10_AXI_wvalid;
  input SLOT_10_AXI_wready;
  input [1:0]SLOT_10_AXI_bresp;
  input SLOT_10_AXI_bvalid;
  input SLOT_10_AXI_bready;
  input [31:0]SLOT_10_AXI_araddr;
  input [3:0]SLOT_10_AXI_arlen;
  input [2:0]SLOT_10_AXI_arsize;
  input [1:0]SLOT_10_AXI_arburst;
  input [3:0]SLOT_10_AXI_arcache;
  input [2:0]SLOT_10_AXI_arprot;
  input SLOT_10_AXI_arvalid;
  input SLOT_10_AXI_arready;
  input [31:0]SLOT_10_AXI_rdata;
  input [1:0]SLOT_10_AXI_rresp;
  input SLOT_10_AXI_rlast;
  input SLOT_10_AXI_rvalid;
  input SLOT_10_AXI_rready;
  input [31:0]SLOT_11_AXI_awaddr;
  input [3:0]SLOT_11_AXI_awlen;
  input [2:0]SLOT_11_AXI_awsize;
  input [1:0]SLOT_11_AXI_awburst;
  input [3:0]SLOT_11_AXI_awcache;
  input [2:0]SLOT_11_AXI_awprot;
  input SLOT_11_AXI_awvalid;
  input SLOT_11_AXI_awready;
  input [31:0]SLOT_11_AXI_wdata;
  input [3:0]SLOT_11_AXI_wstrb;
  input SLOT_11_AXI_wlast;
  input SLOT_11_AXI_wvalid;
  input SLOT_11_AXI_wready;
  input [1:0]SLOT_11_AXI_bresp;
  input SLOT_11_AXI_bvalid;
  input SLOT_11_AXI_bready;
  input [31:0]SLOT_11_AXI_araddr;
  input [3:0]SLOT_11_AXI_arlen;
  input [2:0]SLOT_11_AXI_arsize;
  input [1:0]SLOT_11_AXI_arburst;
  input [3:0]SLOT_11_AXI_arcache;
  input [2:0]SLOT_11_AXI_arprot;
  input SLOT_11_AXI_arvalid;
  input SLOT_11_AXI_arready;
  input [31:0]SLOT_11_AXI_rdata;
  input [1:0]SLOT_11_AXI_rresp;
  input SLOT_11_AXI_rlast;
  input SLOT_11_AXI_rvalid;
  input SLOT_11_AXI_rready;
  input resetn;
endmodule
