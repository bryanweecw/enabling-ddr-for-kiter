// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 21 16:55:06 2025
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/bryan/Documents/bryan_files_echo_with_dram_static/projects/static_delay_100-ui-ie-flat-dd/root.gen/sources_1/bd/quad_delay/ip/quad_delay_system_ila_0_0/quad_delay_system_ila_0_0_stub.v
// Design      : quad_delay_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_07cf,Vivado 2022.2" *)
module quad_delay_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27, probe28, 
  probe29, probe30, probe31, probe32, probe33, probe34, probe35, probe36, probe37, probe38, probe39, 
  probe40, probe41, probe42, probe43, probe44, probe45, probe46, probe47, probe48, probe49, probe50, 
  probe51, probe52, probe53, probe54, probe55, SLOT_0_AXI_awaddr, SLOT_0_AXI_awlen, 
  SLOT_0_AXI_awsize, SLOT_0_AXI_awburst, SLOT_0_AXI_awcache, SLOT_0_AXI_awprot, 
  SLOT_0_AXI_awvalid, SLOT_0_AXI_awready, SLOT_0_AXI_wdata, SLOT_0_AXI_wstrb, 
  SLOT_0_AXI_wlast, SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, SLOT_0_AXI_bresp, 
  SLOT_0_AXI_bvalid, SLOT_0_AXI_bready, SLOT_0_AXI_araddr, SLOT_0_AXI_arlen, 
  SLOT_0_AXI_arsize, SLOT_0_AXI_arburst, SLOT_0_AXI_arcache, SLOT_0_AXI_arprot, 
  SLOT_0_AXI_arvalid, SLOT_0_AXI_arready, SLOT_0_AXI_rdata, SLOT_0_AXI_rresp, 
  SLOT_0_AXI_rlast, SLOT_0_AXI_rvalid, SLOT_0_AXI_rready, SLOT_1_AXI_awaddr, 
  SLOT_1_AXI_awlen, SLOT_1_AXI_awsize, SLOT_1_AXI_awburst, SLOT_1_AXI_awcache, 
  SLOT_1_AXI_awprot, SLOT_1_AXI_awvalid, SLOT_1_AXI_awready, SLOT_1_AXI_wdata, 
  SLOT_1_AXI_wstrb, SLOT_1_AXI_wlast, SLOT_1_AXI_wvalid, SLOT_1_AXI_wready, 
  SLOT_1_AXI_bresp, SLOT_1_AXI_bvalid, SLOT_1_AXI_bready, SLOT_1_AXI_araddr, 
  SLOT_1_AXI_arlen, SLOT_1_AXI_arsize, SLOT_1_AXI_arburst, SLOT_1_AXI_arcache, 
  SLOT_1_AXI_arprot, SLOT_1_AXI_arvalid, SLOT_1_AXI_arready, SLOT_1_AXI_rdata, 
  SLOT_1_AXI_rresp, SLOT_1_AXI_rlast, SLOT_1_AXI_rvalid, SLOT_1_AXI_rready, 
  SLOT_2_AXI_awaddr, SLOT_2_AXI_awlen, SLOT_2_AXI_awsize, SLOT_2_AXI_awburst, 
  SLOT_2_AXI_awlock, SLOT_2_AXI_awcache, SLOT_2_AXI_awprot, SLOT_2_AXI_awregion, 
  SLOT_2_AXI_awqos, SLOT_2_AXI_awvalid, SLOT_2_AXI_awready, SLOT_2_AXI_wdata, 
  SLOT_2_AXI_wstrb, SLOT_2_AXI_wlast, SLOT_2_AXI_wvalid, SLOT_2_AXI_wready, 
  SLOT_2_AXI_bresp, SLOT_2_AXI_bvalid, SLOT_2_AXI_bready, SLOT_2_AXI_araddr, 
  SLOT_2_AXI_arlen, SLOT_2_AXI_arsize, SLOT_2_AXI_arburst, SLOT_2_AXI_arlock, 
  SLOT_2_AXI_arcache, SLOT_2_AXI_arprot, SLOT_2_AXI_arregion, SLOT_2_AXI_arqos, 
  SLOT_2_AXI_arvalid, SLOT_2_AXI_arready, SLOT_2_AXI_rdata, SLOT_2_AXI_rresp, 
  SLOT_2_AXI_rlast, SLOT_2_AXI_rvalid, SLOT_2_AXI_rready, SLOT_3_AXI_awaddr, 
  SLOT_3_AXI_awlen, SLOT_3_AXI_awsize, SLOT_3_AXI_awburst, SLOT_3_AXI_awcache, 
  SLOT_3_AXI_awprot, SLOT_3_AXI_awvalid, SLOT_3_AXI_awready, SLOT_3_AXI_wdata, 
  SLOT_3_AXI_wstrb, SLOT_3_AXI_wlast, SLOT_3_AXI_wvalid, SLOT_3_AXI_wready, 
  SLOT_3_AXI_bresp, SLOT_3_AXI_bvalid, SLOT_3_AXI_bready, SLOT_3_AXI_araddr, 
  SLOT_3_AXI_arlen, SLOT_3_AXI_arsize, SLOT_3_AXI_arburst, SLOT_3_AXI_arcache, 
  SLOT_3_AXI_arprot, SLOT_3_AXI_arvalid, SLOT_3_AXI_arready, SLOT_3_AXI_rdata, 
  SLOT_3_AXI_rresp, SLOT_3_AXI_rlast, SLOT_3_AXI_rvalid, SLOT_3_AXI_rready, 
  SLOT_4_AXI_awaddr, SLOT_4_AXI_awlen, SLOT_4_AXI_awsize, SLOT_4_AXI_awburst, 
  SLOT_4_AXI_awcache, SLOT_4_AXI_awprot, SLOT_4_AXI_awvalid, SLOT_4_AXI_awready, 
  SLOT_4_AXI_wdata, SLOT_4_AXI_wstrb, SLOT_4_AXI_wlast, SLOT_4_AXI_wvalid, 
  SLOT_4_AXI_wready, SLOT_4_AXI_bresp, SLOT_4_AXI_bvalid, SLOT_4_AXI_bready, 
  SLOT_4_AXI_araddr, SLOT_4_AXI_arlen, SLOT_4_AXI_arsize, SLOT_4_AXI_arburst, 
  SLOT_4_AXI_arcache, SLOT_4_AXI_arprot, SLOT_4_AXI_arvalid, SLOT_4_AXI_arready, 
  SLOT_4_AXI_rdata, SLOT_4_AXI_rresp, SLOT_4_AXI_rlast, SLOT_4_AXI_rvalid, 
  SLOT_4_AXI_rready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[33:0],probe5[0:0],probe6[0:0],probe7[33:0],probe8[12:0],probe9[12:0],probe10[12:0],probe11[12:0],probe12[12:0],probe13[12:0],probe14[12:0],probe15[12:0],probe16[12:0],probe17[12:0],probe18[12:0],probe19[12:0],probe20[12:0],probe21[12:0],probe22[12:0],probe23[12:0],probe24[12:0],probe25[12:0],probe26[12:0],probe27[12:0],probe28[12:0],probe29[12:0],probe30[12:0],probe31[12:0],probe32[12:0],probe33[12:0],probe34[12:0],probe35[12:0],probe36[12:0],probe37[12:0],probe38[12:0],probe39[12:0],probe40[12:0],probe41[12:0],probe42[12:0],probe43[12:0],probe44[12:0],probe45[12:0],probe46[12:0],probe47[12:0],probe48[12:0],probe49[12:0],probe50[12:0],probe51[12:0],probe52[12:0],probe53[12:0],probe54[12:0],probe55[12:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wstrb[3:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXI_awaddr[31:0],SLOT_1_AXI_awlen[7:0],SLOT_1_AXI_awsize[2:0],SLOT_1_AXI_awburst[1:0],SLOT_1_AXI_awcache[3:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[31:0],SLOT_1_AXI_wstrb[3:0],SLOT_1_AXI_wlast,SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_araddr[31:0],SLOT_1_AXI_arlen[7:0],SLOT_1_AXI_arsize[2:0],SLOT_1_AXI_arburst[1:0],SLOT_1_AXI_arcache[3:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rdata[31:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rlast,SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXI_awaddr[31:0],SLOT_2_AXI_awlen[7:0],SLOT_2_AXI_awsize[2:0],SLOT_2_AXI_awburst[1:0],SLOT_2_AXI_awlock[0:0],SLOT_2_AXI_awcache[3:0],SLOT_2_AXI_awprot[2:0],SLOT_2_AXI_awregion[3:0],SLOT_2_AXI_awqos[3:0],SLOT_2_AXI_awvalid,SLOT_2_AXI_awready,SLOT_2_AXI_wdata[31:0],SLOT_2_AXI_wstrb[3:0],SLOT_2_AXI_wlast,SLOT_2_AXI_wvalid,SLOT_2_AXI_wready,SLOT_2_AXI_bresp[1:0],SLOT_2_AXI_bvalid,SLOT_2_AXI_bready,SLOT_2_AXI_araddr[31:0],SLOT_2_AXI_arlen[7:0],SLOT_2_AXI_arsize[2:0],SLOT_2_AXI_arburst[1:0],SLOT_2_AXI_arlock[0:0],SLOT_2_AXI_arcache[3:0],SLOT_2_AXI_arprot[2:0],SLOT_2_AXI_arregion[3:0],SLOT_2_AXI_arqos[3:0],SLOT_2_AXI_arvalid,SLOT_2_AXI_arready,SLOT_2_AXI_rdata[31:0],SLOT_2_AXI_rresp[1:0],SLOT_2_AXI_rlast,SLOT_2_AXI_rvalid,SLOT_2_AXI_rready,SLOT_3_AXI_awaddr[31:0],SLOT_3_AXI_awlen[7:0],SLOT_3_AXI_awsize[2:0],SLOT_3_AXI_awburst[1:0],SLOT_3_AXI_awcache[3:0],SLOT_3_AXI_awprot[2:0],SLOT_3_AXI_awvalid,SLOT_3_AXI_awready,SLOT_3_AXI_wdata[31:0],SLOT_3_AXI_wstrb[3:0],SLOT_3_AXI_wlast,SLOT_3_AXI_wvalid,SLOT_3_AXI_wready,SLOT_3_AXI_bresp[1:0],SLOT_3_AXI_bvalid,SLOT_3_AXI_bready,SLOT_3_AXI_araddr[31:0],SLOT_3_AXI_arlen[7:0],SLOT_3_AXI_arsize[2:0],SLOT_3_AXI_arburst[1:0],SLOT_3_AXI_arcache[3:0],SLOT_3_AXI_arprot[2:0],SLOT_3_AXI_arvalid,SLOT_3_AXI_arready,SLOT_3_AXI_rdata[31:0],SLOT_3_AXI_rresp[1:0],SLOT_3_AXI_rlast,SLOT_3_AXI_rvalid,SLOT_3_AXI_rready,SLOT_4_AXI_awaddr[31:0],SLOT_4_AXI_awlen[7:0],SLOT_4_AXI_awsize[2:0],SLOT_4_AXI_awburst[1:0],SLOT_4_AXI_awcache[3:0],SLOT_4_AXI_awprot[2:0],SLOT_4_AXI_awvalid,SLOT_4_AXI_awready,SLOT_4_AXI_wdata[31:0],SLOT_4_AXI_wstrb[3:0],SLOT_4_AXI_wlast,SLOT_4_AXI_wvalid,SLOT_4_AXI_wready,SLOT_4_AXI_bresp[1:0],SLOT_4_AXI_bvalid,SLOT_4_AXI_bready,SLOT_4_AXI_araddr[31:0],SLOT_4_AXI_arlen[7:0],SLOT_4_AXI_arsize[2:0],SLOT_4_AXI_arburst[1:0],SLOT_4_AXI_arcache[3:0],SLOT_4_AXI_arprot[2:0],SLOT_4_AXI_arvalid,SLOT_4_AXI_arready,SLOT_4_AXI_rdata[31:0],SLOT_4_AXI_rresp[1:0],SLOT_4_AXI_rlast,SLOT_4_AXI_rvalid,SLOT_4_AXI_rready,resetn" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [33:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [33:0]probe7;
  input [12:0]probe8;
  input [12:0]probe9;
  input [12:0]probe10;
  input [12:0]probe11;
  input [12:0]probe12;
  input [12:0]probe13;
  input [12:0]probe14;
  input [12:0]probe15;
  input [12:0]probe16;
  input [12:0]probe17;
  input [12:0]probe18;
  input [12:0]probe19;
  input [12:0]probe20;
  input [12:0]probe21;
  input [12:0]probe22;
  input [12:0]probe23;
  input [12:0]probe24;
  input [12:0]probe25;
  input [12:0]probe26;
  input [12:0]probe27;
  input [12:0]probe28;
  input [12:0]probe29;
  input [12:0]probe30;
  input [12:0]probe31;
  input [12:0]probe32;
  input [12:0]probe33;
  input [12:0]probe34;
  input [12:0]probe35;
  input [12:0]probe36;
  input [12:0]probe37;
  input [12:0]probe38;
  input [12:0]probe39;
  input [12:0]probe40;
  input [12:0]probe41;
  input [12:0]probe42;
  input [12:0]probe43;
  input [12:0]probe44;
  input [12:0]probe45;
  input [12:0]probe46;
  input [12:0]probe47;
  input [12:0]probe48;
  input [12:0]probe49;
  input [12:0]probe50;
  input [12:0]probe51;
  input [12:0]probe52;
  input [12:0]probe53;
  input [12:0]probe54;
  input [12:0]probe55;
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
  input [0:0]SLOT_2_AXI_awlock;
  input [3:0]SLOT_2_AXI_awcache;
  input [2:0]SLOT_2_AXI_awprot;
  input [3:0]SLOT_2_AXI_awregion;
  input [3:0]SLOT_2_AXI_awqos;
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
  input [0:0]SLOT_2_AXI_arlock;
  input [3:0]SLOT_2_AXI_arcache;
  input [2:0]SLOT_2_AXI_arprot;
  input [3:0]SLOT_2_AXI_arregion;
  input [3:0]SLOT_2_AXI_arqos;
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
  input resetn;
endmodule
