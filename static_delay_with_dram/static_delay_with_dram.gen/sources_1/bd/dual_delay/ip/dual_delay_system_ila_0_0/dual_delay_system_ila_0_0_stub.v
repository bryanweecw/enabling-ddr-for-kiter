// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 21 15:39:38 2025
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/bryan/Documents/bryan_files_echo_with_dram_static/projects/static_delay_100-ui-ie-flat-dd/root.gen/sources_1/bd/dual_delay/ip/dual_delay_system_ila_0_0/dual_delay_system_ila_0_0_stub.v
// Design      : dual_delay_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_e813,Vivado 2022.2" *)
module dual_delay_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27, probe28, 
  probe29, probe30, probe31, SLOT_0_AXI_awaddr, SLOT_0_AXI_awlen, SLOT_0_AXI_awsize, 
  SLOT_0_AXI_awburst, SLOT_0_AXI_awcache, SLOT_0_AXI_awprot, SLOT_0_AXI_awvalid, 
  SLOT_0_AXI_awready, SLOT_0_AXI_wdata, SLOT_0_AXI_wstrb, SLOT_0_AXI_wlast, 
  SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, SLOT_0_AXI_bresp, SLOT_0_AXI_bvalid, 
  SLOT_0_AXI_bready, SLOT_0_AXI_araddr, SLOT_0_AXI_arlen, SLOT_0_AXI_arsize, 
  SLOT_0_AXI_arburst, SLOT_0_AXI_arcache, SLOT_0_AXI_arprot, SLOT_0_AXI_arvalid, 
  SLOT_0_AXI_arready, SLOT_0_AXI_rdata, SLOT_0_AXI_rresp, SLOT_0_AXI_rlast, 
  SLOT_0_AXI_rvalid, SLOT_0_AXI_rready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[33:0],probe5[0:0],probe6[0:0],probe7[33:0],probe8[12:0],probe9[12:0],probe10[12:0],probe11[12:0],probe12[12:0],probe13[12:0],probe14[12:0],probe15[12:0],probe16[12:0],probe17[12:0],probe18[12:0],probe19[12:0],probe20[12:0],probe21[12:0],probe22[12:0],probe23[12:0],probe24[12:0],probe25[12:0],probe26[12:0],probe27[12:0],probe28[12:0],probe29[12:0],probe30[12:0],probe31[12:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wstrb[3:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,resetn" */;
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
  input resetn;
endmodule
