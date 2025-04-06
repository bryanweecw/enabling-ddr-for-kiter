--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_f60c_wrapper.bd
--Design : bd_f60c_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_f60c_wrapper is
  port (
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_10_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_arready : in STD_LOGIC;
    SLOT_10_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_arvalid : in STD_LOGIC;
    SLOT_10_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_awready : in STD_LOGIC;
    SLOT_10_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_awvalid : in STD_LOGIC;
    SLOT_10_AXI_bready : in STD_LOGIC;
    SLOT_10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_bvalid : in STD_LOGIC;
    SLOT_10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_rlast : in STD_LOGIC;
    SLOT_10_AXI_rready : in STD_LOGIC;
    SLOT_10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_rvalid : in STD_LOGIC;
    SLOT_10_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_wlast : in STD_LOGIC;
    SLOT_10_AXI_wready : in STD_LOGIC;
    SLOT_10_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_wvalid : in STD_LOGIC;
    SLOT_11_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_arready : in STD_LOGIC;
    SLOT_11_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_arvalid : in STD_LOGIC;
    SLOT_11_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_awready : in STD_LOGIC;
    SLOT_11_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_awvalid : in STD_LOGIC;
    SLOT_11_AXI_bready : in STD_LOGIC;
    SLOT_11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_bvalid : in STD_LOGIC;
    SLOT_11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_rlast : in STD_LOGIC;
    SLOT_11_AXI_rready : in STD_LOGIC;
    SLOT_11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_rvalid : in STD_LOGIC;
    SLOT_11_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_wlast : in STD_LOGIC;
    SLOT_11_AXI_wready : in STD_LOGIC;
    SLOT_11_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_wvalid : in STD_LOGIC;
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rlast : in STD_LOGIC;
    SLOT_3_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wlast : in STD_LOGIC;
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_4_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arready : in STD_LOGIC;
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arvalid : in STD_LOGIC;
    SLOT_4_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awready : in STD_LOGIC;
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awvalid : in STD_LOGIC;
    SLOT_4_AXI_bready : in STD_LOGIC;
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_bvalid : in STD_LOGIC;
    SLOT_4_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_rlast : in STD_LOGIC;
    SLOT_4_AXI_rready : in STD_LOGIC;
    SLOT_4_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_rvalid : in STD_LOGIC;
    SLOT_4_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_wlast : in STD_LOGIC;
    SLOT_4_AXI_wready : in STD_LOGIC;
    SLOT_4_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_wvalid : in STD_LOGIC;
    SLOT_5_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arready : in STD_LOGIC;
    SLOT_5_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arvalid : in STD_LOGIC;
    SLOT_5_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awready : in STD_LOGIC;
    SLOT_5_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awvalid : in STD_LOGIC;
    SLOT_5_AXI_bready : in STD_LOGIC;
    SLOT_5_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_bvalid : in STD_LOGIC;
    SLOT_5_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_rlast : in STD_LOGIC;
    SLOT_5_AXI_rready : in STD_LOGIC;
    SLOT_5_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_rvalid : in STD_LOGIC;
    SLOT_5_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_wlast : in STD_LOGIC;
    SLOT_5_AXI_wready : in STD_LOGIC;
    SLOT_5_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_wvalid : in STD_LOGIC;
    SLOT_6_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_arready : in STD_LOGIC;
    SLOT_6_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_arvalid : in STD_LOGIC;
    SLOT_6_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_awready : in STD_LOGIC;
    SLOT_6_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_awvalid : in STD_LOGIC;
    SLOT_6_AXI_bready : in STD_LOGIC;
    SLOT_6_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_bvalid : in STD_LOGIC;
    SLOT_6_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_rlast : in STD_LOGIC;
    SLOT_6_AXI_rready : in STD_LOGIC;
    SLOT_6_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_rvalid : in STD_LOGIC;
    SLOT_6_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_wlast : in STD_LOGIC;
    SLOT_6_AXI_wready : in STD_LOGIC;
    SLOT_6_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_wvalid : in STD_LOGIC;
    SLOT_7_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_arcache : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_arready : in STD_LOGIC;
    SLOT_7_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_arvalid : in STD_LOGIC;
    SLOT_7_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_awready : in STD_LOGIC;
    SLOT_7_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_awvalid : in STD_LOGIC;
    SLOT_7_AXI_bready : in STD_LOGIC;
    SLOT_7_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_bvalid : in STD_LOGIC;
    SLOT_7_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_rlast : in STD_LOGIC;
    SLOT_7_AXI_rready : in STD_LOGIC;
    SLOT_7_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_rvalid : in STD_LOGIC;
    SLOT_7_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_wlast : in STD_LOGIC;
    SLOT_7_AXI_wready : in STD_LOGIC;
    SLOT_7_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_wvalid : in STD_LOGIC;
    SLOT_8_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_arready : in STD_LOGIC;
    SLOT_8_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_arvalid : in STD_LOGIC;
    SLOT_8_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_awready : in STD_LOGIC;
    SLOT_8_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_awvalid : in STD_LOGIC;
    SLOT_8_AXI_bready : in STD_LOGIC;
    SLOT_8_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_bvalid : in STD_LOGIC;
    SLOT_8_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_rlast : in STD_LOGIC;
    SLOT_8_AXI_rready : in STD_LOGIC;
    SLOT_8_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_rvalid : in STD_LOGIC;
    SLOT_8_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_wlast : in STD_LOGIC;
    SLOT_8_AXI_wready : in STD_LOGIC;
    SLOT_8_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_wvalid : in STD_LOGIC;
    SLOT_9_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_arready : in STD_LOGIC;
    SLOT_9_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_arvalid : in STD_LOGIC;
    SLOT_9_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_awready : in STD_LOGIC;
    SLOT_9_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_awvalid : in STD_LOGIC;
    SLOT_9_AXI_bready : in STD_LOGIC;
    SLOT_9_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_bvalid : in STD_LOGIC;
    SLOT_9_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_rlast : in STD_LOGIC;
    SLOT_9_AXI_rready : in STD_LOGIC;
    SLOT_9_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_rvalid : in STD_LOGIC;
    SLOT_9_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_wlast : in STD_LOGIC;
    SLOT_9_AXI_wready : in STD_LOGIC;
    SLOT_9_AXI_wstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    resetn : in STD_LOGIC
  );
end bd_f60c_wrapper;

architecture STRUCTURE of bd_f60c_wrapper is
  component bd_f60c is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rlast : in STD_LOGIC;
    SLOT_3_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wlast : in STD_LOGIC;
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_4_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arready : in STD_LOGIC;
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arvalid : in STD_LOGIC;
    SLOT_4_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awready : in STD_LOGIC;
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awvalid : in STD_LOGIC;
    SLOT_4_AXI_bready : in STD_LOGIC;
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_bvalid : in STD_LOGIC;
    SLOT_4_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_rlast : in STD_LOGIC;
    SLOT_4_AXI_rready : in STD_LOGIC;
    SLOT_4_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_rvalid : in STD_LOGIC;
    SLOT_4_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_wlast : in STD_LOGIC;
    SLOT_4_AXI_wready : in STD_LOGIC;
    SLOT_4_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_wvalid : in STD_LOGIC;
    SLOT_5_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arready : in STD_LOGIC;
    SLOT_5_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arvalid : in STD_LOGIC;
    SLOT_5_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awready : in STD_LOGIC;
    SLOT_5_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awvalid : in STD_LOGIC;
    SLOT_5_AXI_bready : in STD_LOGIC;
    SLOT_5_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_bvalid : in STD_LOGIC;
    SLOT_5_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_rlast : in STD_LOGIC;
    SLOT_5_AXI_rready : in STD_LOGIC;
    SLOT_5_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_rvalid : in STD_LOGIC;
    SLOT_5_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_wlast : in STD_LOGIC;
    SLOT_5_AXI_wready : in STD_LOGIC;
    SLOT_5_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_wvalid : in STD_LOGIC;
    SLOT_6_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_arready : in STD_LOGIC;
    SLOT_6_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_arvalid : in STD_LOGIC;
    SLOT_6_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_awready : in STD_LOGIC;
    SLOT_6_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_awvalid : in STD_LOGIC;
    SLOT_6_AXI_bready : in STD_LOGIC;
    SLOT_6_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_bvalid : in STD_LOGIC;
    SLOT_6_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_rlast : in STD_LOGIC;
    SLOT_6_AXI_rready : in STD_LOGIC;
    SLOT_6_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_rvalid : in STD_LOGIC;
    SLOT_6_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_wlast : in STD_LOGIC;
    SLOT_6_AXI_wready : in STD_LOGIC;
    SLOT_6_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_wvalid : in STD_LOGIC;
    SLOT_7_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_arcache : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_arready : in STD_LOGIC;
    SLOT_7_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_arvalid : in STD_LOGIC;
    SLOT_7_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_awready : in STD_LOGIC;
    SLOT_7_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_awvalid : in STD_LOGIC;
    SLOT_7_AXI_bready : in STD_LOGIC;
    SLOT_7_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_bvalid : in STD_LOGIC;
    SLOT_7_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_rlast : in STD_LOGIC;
    SLOT_7_AXI_rready : in STD_LOGIC;
    SLOT_7_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_rvalid : in STD_LOGIC;
    SLOT_7_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_wlast : in STD_LOGIC;
    SLOT_7_AXI_wready : in STD_LOGIC;
    SLOT_7_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_wvalid : in STD_LOGIC;
    SLOT_8_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_arready : in STD_LOGIC;
    SLOT_8_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_arvalid : in STD_LOGIC;
    SLOT_8_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_awready : in STD_LOGIC;
    SLOT_8_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_awvalid : in STD_LOGIC;
    SLOT_8_AXI_bready : in STD_LOGIC;
    SLOT_8_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_bvalid : in STD_LOGIC;
    SLOT_8_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_rlast : in STD_LOGIC;
    SLOT_8_AXI_rready : in STD_LOGIC;
    SLOT_8_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_rvalid : in STD_LOGIC;
    SLOT_8_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_wlast : in STD_LOGIC;
    SLOT_8_AXI_wready : in STD_LOGIC;
    SLOT_8_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_wvalid : in STD_LOGIC;
    SLOT_9_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_arready : in STD_LOGIC;
    SLOT_9_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_arvalid : in STD_LOGIC;
    SLOT_9_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_9_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_awready : in STD_LOGIC;
    SLOT_9_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_awvalid : in STD_LOGIC;
    SLOT_9_AXI_bready : in STD_LOGIC;
    SLOT_9_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_bvalid : in STD_LOGIC;
    SLOT_9_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_rlast : in STD_LOGIC;
    SLOT_9_AXI_rready : in STD_LOGIC;
    SLOT_9_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_9_AXI_rvalid : in STD_LOGIC;
    SLOT_9_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXI_wlast : in STD_LOGIC;
    SLOT_9_AXI_wready : in STD_LOGIC;
    SLOT_9_AXI_wstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_9_AXI_wvalid : in STD_LOGIC;
    SLOT_10_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_arready : in STD_LOGIC;
    SLOT_10_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_arvalid : in STD_LOGIC;
    SLOT_10_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_awready : in STD_LOGIC;
    SLOT_10_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_10_AXI_awvalid : in STD_LOGIC;
    SLOT_10_AXI_bready : in STD_LOGIC;
    SLOT_10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_bvalid : in STD_LOGIC;
    SLOT_10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_rlast : in STD_LOGIC;
    SLOT_10_AXI_rready : in STD_LOGIC;
    SLOT_10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_10_AXI_rvalid : in STD_LOGIC;
    SLOT_10_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXI_wlast : in STD_LOGIC;
    SLOT_10_AXI_wready : in STD_LOGIC;
    SLOT_10_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_10_AXI_wvalid : in STD_LOGIC;
    SLOT_11_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_arready : in STD_LOGIC;
    SLOT_11_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_arvalid : in STD_LOGIC;
    SLOT_11_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_awready : in STD_LOGIC;
    SLOT_11_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_11_AXI_awvalid : in STD_LOGIC;
    SLOT_11_AXI_bready : in STD_LOGIC;
    SLOT_11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_bvalid : in STD_LOGIC;
    SLOT_11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_rlast : in STD_LOGIC;
    SLOT_11_AXI_rready : in STD_LOGIC;
    SLOT_11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_11_AXI_rvalid : in STD_LOGIC;
    SLOT_11_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXI_wlast : in STD_LOGIC;
    SLOT_11_AXI_wready : in STD_LOGIC;
    SLOT_11_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_11_AXI_wvalid : in STD_LOGIC
  );
  end component bd_f60c;
begin
bd_f60c_i: component bd_f60c
     port map (
      SLOT_0_AXI_araddr(31 downto 0) => SLOT_0_AXI_araddr(31 downto 0),
      SLOT_0_AXI_arburst(1 downto 0) => SLOT_0_AXI_arburst(1 downto 0),
      SLOT_0_AXI_arcache(3 downto 0) => SLOT_0_AXI_arcache(3 downto 0),
      SLOT_0_AXI_arlen(7 downto 0) => SLOT_0_AXI_arlen(7 downto 0),
      SLOT_0_AXI_arprot(2 downto 0) => SLOT_0_AXI_arprot(2 downto 0),
      SLOT_0_AXI_arready => SLOT_0_AXI_arready,
      SLOT_0_AXI_arsize(2 downto 0) => SLOT_0_AXI_arsize(2 downto 0),
      SLOT_0_AXI_arvalid => SLOT_0_AXI_arvalid,
      SLOT_0_AXI_awaddr(31 downto 0) => SLOT_0_AXI_awaddr(31 downto 0),
      SLOT_0_AXI_awburst(1 downto 0) => SLOT_0_AXI_awburst(1 downto 0),
      SLOT_0_AXI_awcache(3 downto 0) => SLOT_0_AXI_awcache(3 downto 0),
      SLOT_0_AXI_awlen(7 downto 0) => SLOT_0_AXI_awlen(7 downto 0),
      SLOT_0_AXI_awprot(2 downto 0) => SLOT_0_AXI_awprot(2 downto 0),
      SLOT_0_AXI_awready => SLOT_0_AXI_awready,
      SLOT_0_AXI_awsize(2 downto 0) => SLOT_0_AXI_awsize(2 downto 0),
      SLOT_0_AXI_awvalid => SLOT_0_AXI_awvalid,
      SLOT_0_AXI_bready => SLOT_0_AXI_bready,
      SLOT_0_AXI_bresp(1 downto 0) => SLOT_0_AXI_bresp(1 downto 0),
      SLOT_0_AXI_bvalid => SLOT_0_AXI_bvalid,
      SLOT_0_AXI_rdata(31 downto 0) => SLOT_0_AXI_rdata(31 downto 0),
      SLOT_0_AXI_rlast => SLOT_0_AXI_rlast,
      SLOT_0_AXI_rready => SLOT_0_AXI_rready,
      SLOT_0_AXI_rresp(1 downto 0) => SLOT_0_AXI_rresp(1 downto 0),
      SLOT_0_AXI_rvalid => SLOT_0_AXI_rvalid,
      SLOT_0_AXI_wdata(31 downto 0) => SLOT_0_AXI_wdata(31 downto 0),
      SLOT_0_AXI_wlast => SLOT_0_AXI_wlast,
      SLOT_0_AXI_wready => SLOT_0_AXI_wready,
      SLOT_0_AXI_wstrb(3 downto 0) => SLOT_0_AXI_wstrb(3 downto 0),
      SLOT_0_AXI_wvalid => SLOT_0_AXI_wvalid,
      SLOT_10_AXI_araddr(31 downto 0) => SLOT_10_AXI_araddr(31 downto 0),
      SLOT_10_AXI_arburst(1 downto 0) => SLOT_10_AXI_arburst(1 downto 0),
      SLOT_10_AXI_arcache(3 downto 0) => SLOT_10_AXI_arcache(3 downto 0),
      SLOT_10_AXI_arlen(3 downto 0) => SLOT_10_AXI_arlen(3 downto 0),
      SLOT_10_AXI_arprot(2 downto 0) => SLOT_10_AXI_arprot(2 downto 0),
      SLOT_10_AXI_arready => SLOT_10_AXI_arready,
      SLOT_10_AXI_arsize(2 downto 0) => SLOT_10_AXI_arsize(2 downto 0),
      SLOT_10_AXI_arvalid => SLOT_10_AXI_arvalid,
      SLOT_10_AXI_awaddr(31 downto 0) => SLOT_10_AXI_awaddr(31 downto 0),
      SLOT_10_AXI_awburst(1 downto 0) => SLOT_10_AXI_awburst(1 downto 0),
      SLOT_10_AXI_awcache(3 downto 0) => SLOT_10_AXI_awcache(3 downto 0),
      SLOT_10_AXI_awlen(3 downto 0) => SLOT_10_AXI_awlen(3 downto 0),
      SLOT_10_AXI_awprot(2 downto 0) => SLOT_10_AXI_awprot(2 downto 0),
      SLOT_10_AXI_awready => SLOT_10_AXI_awready,
      SLOT_10_AXI_awsize(2 downto 0) => SLOT_10_AXI_awsize(2 downto 0),
      SLOT_10_AXI_awvalid => SLOT_10_AXI_awvalid,
      SLOT_10_AXI_bready => SLOT_10_AXI_bready,
      SLOT_10_AXI_bresp(1 downto 0) => SLOT_10_AXI_bresp(1 downto 0),
      SLOT_10_AXI_bvalid => SLOT_10_AXI_bvalid,
      SLOT_10_AXI_rdata(31 downto 0) => SLOT_10_AXI_rdata(31 downto 0),
      SLOT_10_AXI_rlast => SLOT_10_AXI_rlast,
      SLOT_10_AXI_rready => SLOT_10_AXI_rready,
      SLOT_10_AXI_rresp(1 downto 0) => SLOT_10_AXI_rresp(1 downto 0),
      SLOT_10_AXI_rvalid => SLOT_10_AXI_rvalid,
      SLOT_10_AXI_wdata(31 downto 0) => SLOT_10_AXI_wdata(31 downto 0),
      SLOT_10_AXI_wlast => SLOT_10_AXI_wlast,
      SLOT_10_AXI_wready => SLOT_10_AXI_wready,
      SLOT_10_AXI_wstrb(3 downto 0) => SLOT_10_AXI_wstrb(3 downto 0),
      SLOT_10_AXI_wvalid => SLOT_10_AXI_wvalid,
      SLOT_11_AXI_araddr(31 downto 0) => SLOT_11_AXI_araddr(31 downto 0),
      SLOT_11_AXI_arburst(1 downto 0) => SLOT_11_AXI_arburst(1 downto 0),
      SLOT_11_AXI_arcache(3 downto 0) => SLOT_11_AXI_arcache(3 downto 0),
      SLOT_11_AXI_arlen(3 downto 0) => SLOT_11_AXI_arlen(3 downto 0),
      SLOT_11_AXI_arprot(2 downto 0) => SLOT_11_AXI_arprot(2 downto 0),
      SLOT_11_AXI_arready => SLOT_11_AXI_arready,
      SLOT_11_AXI_arsize(2 downto 0) => SLOT_11_AXI_arsize(2 downto 0),
      SLOT_11_AXI_arvalid => SLOT_11_AXI_arvalid,
      SLOT_11_AXI_awaddr(31 downto 0) => SLOT_11_AXI_awaddr(31 downto 0),
      SLOT_11_AXI_awburst(1 downto 0) => SLOT_11_AXI_awburst(1 downto 0),
      SLOT_11_AXI_awcache(3 downto 0) => SLOT_11_AXI_awcache(3 downto 0),
      SLOT_11_AXI_awlen(3 downto 0) => SLOT_11_AXI_awlen(3 downto 0),
      SLOT_11_AXI_awprot(2 downto 0) => SLOT_11_AXI_awprot(2 downto 0),
      SLOT_11_AXI_awready => SLOT_11_AXI_awready,
      SLOT_11_AXI_awsize(2 downto 0) => SLOT_11_AXI_awsize(2 downto 0),
      SLOT_11_AXI_awvalid => SLOT_11_AXI_awvalid,
      SLOT_11_AXI_bready => SLOT_11_AXI_bready,
      SLOT_11_AXI_bresp(1 downto 0) => SLOT_11_AXI_bresp(1 downto 0),
      SLOT_11_AXI_bvalid => SLOT_11_AXI_bvalid,
      SLOT_11_AXI_rdata(31 downto 0) => SLOT_11_AXI_rdata(31 downto 0),
      SLOT_11_AXI_rlast => SLOT_11_AXI_rlast,
      SLOT_11_AXI_rready => SLOT_11_AXI_rready,
      SLOT_11_AXI_rresp(1 downto 0) => SLOT_11_AXI_rresp(1 downto 0),
      SLOT_11_AXI_rvalid => SLOT_11_AXI_rvalid,
      SLOT_11_AXI_wdata(31 downto 0) => SLOT_11_AXI_wdata(31 downto 0),
      SLOT_11_AXI_wlast => SLOT_11_AXI_wlast,
      SLOT_11_AXI_wready => SLOT_11_AXI_wready,
      SLOT_11_AXI_wstrb(3 downto 0) => SLOT_11_AXI_wstrb(3 downto 0),
      SLOT_11_AXI_wvalid => SLOT_11_AXI_wvalid,
      SLOT_1_AXI_araddr(31 downto 0) => SLOT_1_AXI_araddr(31 downto 0),
      SLOT_1_AXI_arburst(1 downto 0) => SLOT_1_AXI_arburst(1 downto 0),
      SLOT_1_AXI_arcache(3 downto 0) => SLOT_1_AXI_arcache(3 downto 0),
      SLOT_1_AXI_arlen(7 downto 0) => SLOT_1_AXI_arlen(7 downto 0),
      SLOT_1_AXI_arprot(2 downto 0) => SLOT_1_AXI_arprot(2 downto 0),
      SLOT_1_AXI_arready => SLOT_1_AXI_arready,
      SLOT_1_AXI_arsize(2 downto 0) => SLOT_1_AXI_arsize(2 downto 0),
      SLOT_1_AXI_arvalid => SLOT_1_AXI_arvalid,
      SLOT_1_AXI_awaddr(31 downto 0) => SLOT_1_AXI_awaddr(31 downto 0),
      SLOT_1_AXI_awburst(1 downto 0) => SLOT_1_AXI_awburst(1 downto 0),
      SLOT_1_AXI_awcache(3 downto 0) => SLOT_1_AXI_awcache(3 downto 0),
      SLOT_1_AXI_awlen(7 downto 0) => SLOT_1_AXI_awlen(7 downto 0),
      SLOT_1_AXI_awprot(2 downto 0) => SLOT_1_AXI_awprot(2 downto 0),
      SLOT_1_AXI_awready => SLOT_1_AXI_awready,
      SLOT_1_AXI_awsize(2 downto 0) => SLOT_1_AXI_awsize(2 downto 0),
      SLOT_1_AXI_awvalid => SLOT_1_AXI_awvalid,
      SLOT_1_AXI_bready => SLOT_1_AXI_bready,
      SLOT_1_AXI_bresp(1 downto 0) => SLOT_1_AXI_bresp(1 downto 0),
      SLOT_1_AXI_bvalid => SLOT_1_AXI_bvalid,
      SLOT_1_AXI_rdata(31 downto 0) => SLOT_1_AXI_rdata(31 downto 0),
      SLOT_1_AXI_rlast => SLOT_1_AXI_rlast,
      SLOT_1_AXI_rready => SLOT_1_AXI_rready,
      SLOT_1_AXI_rresp(1 downto 0) => SLOT_1_AXI_rresp(1 downto 0),
      SLOT_1_AXI_rvalid => SLOT_1_AXI_rvalid,
      SLOT_1_AXI_wdata(31 downto 0) => SLOT_1_AXI_wdata(31 downto 0),
      SLOT_1_AXI_wlast => SLOT_1_AXI_wlast,
      SLOT_1_AXI_wready => SLOT_1_AXI_wready,
      SLOT_1_AXI_wstrb(3 downto 0) => SLOT_1_AXI_wstrb(3 downto 0),
      SLOT_1_AXI_wvalid => SLOT_1_AXI_wvalid,
      SLOT_2_AXI_araddr(31 downto 0) => SLOT_2_AXI_araddr(31 downto 0),
      SLOT_2_AXI_arburst(1 downto 0) => SLOT_2_AXI_arburst(1 downto 0),
      SLOT_2_AXI_arcache(3 downto 0) => SLOT_2_AXI_arcache(3 downto 0),
      SLOT_2_AXI_arlen(7 downto 0) => SLOT_2_AXI_arlen(7 downto 0),
      SLOT_2_AXI_arprot(2 downto 0) => SLOT_2_AXI_arprot(2 downto 0),
      SLOT_2_AXI_arready => SLOT_2_AXI_arready,
      SLOT_2_AXI_arsize(2 downto 0) => SLOT_2_AXI_arsize(2 downto 0),
      SLOT_2_AXI_arvalid => SLOT_2_AXI_arvalid,
      SLOT_2_AXI_awaddr(31 downto 0) => SLOT_2_AXI_awaddr(31 downto 0),
      SLOT_2_AXI_awburst(1 downto 0) => SLOT_2_AXI_awburst(1 downto 0),
      SLOT_2_AXI_awcache(3 downto 0) => SLOT_2_AXI_awcache(3 downto 0),
      SLOT_2_AXI_awlen(7 downto 0) => SLOT_2_AXI_awlen(7 downto 0),
      SLOT_2_AXI_awprot(2 downto 0) => SLOT_2_AXI_awprot(2 downto 0),
      SLOT_2_AXI_awready => SLOT_2_AXI_awready,
      SLOT_2_AXI_awsize(2 downto 0) => SLOT_2_AXI_awsize(2 downto 0),
      SLOT_2_AXI_awvalid => SLOT_2_AXI_awvalid,
      SLOT_2_AXI_bready => SLOT_2_AXI_bready,
      SLOT_2_AXI_bresp(1 downto 0) => SLOT_2_AXI_bresp(1 downto 0),
      SLOT_2_AXI_bvalid => SLOT_2_AXI_bvalid,
      SLOT_2_AXI_rdata(31 downto 0) => SLOT_2_AXI_rdata(31 downto 0),
      SLOT_2_AXI_rlast => SLOT_2_AXI_rlast,
      SLOT_2_AXI_rready => SLOT_2_AXI_rready,
      SLOT_2_AXI_rresp(1 downto 0) => SLOT_2_AXI_rresp(1 downto 0),
      SLOT_2_AXI_rvalid => SLOT_2_AXI_rvalid,
      SLOT_2_AXI_wdata(31 downto 0) => SLOT_2_AXI_wdata(31 downto 0),
      SLOT_2_AXI_wlast => SLOT_2_AXI_wlast,
      SLOT_2_AXI_wready => SLOT_2_AXI_wready,
      SLOT_2_AXI_wstrb(3 downto 0) => SLOT_2_AXI_wstrb(3 downto 0),
      SLOT_2_AXI_wvalid => SLOT_2_AXI_wvalid,
      SLOT_3_AXI_araddr(31 downto 0) => SLOT_3_AXI_araddr(31 downto 0),
      SLOT_3_AXI_arburst(1 downto 0) => SLOT_3_AXI_arburst(1 downto 0),
      SLOT_3_AXI_arcache(3 downto 0) => SLOT_3_AXI_arcache(3 downto 0),
      SLOT_3_AXI_arlen(7 downto 0) => SLOT_3_AXI_arlen(7 downto 0),
      SLOT_3_AXI_arprot(2 downto 0) => SLOT_3_AXI_arprot(2 downto 0),
      SLOT_3_AXI_arready => SLOT_3_AXI_arready,
      SLOT_3_AXI_arsize(2 downto 0) => SLOT_3_AXI_arsize(2 downto 0),
      SLOT_3_AXI_arvalid => SLOT_3_AXI_arvalid,
      SLOT_3_AXI_awaddr(31 downto 0) => SLOT_3_AXI_awaddr(31 downto 0),
      SLOT_3_AXI_awburst(1 downto 0) => SLOT_3_AXI_awburst(1 downto 0),
      SLOT_3_AXI_awcache(3 downto 0) => SLOT_3_AXI_awcache(3 downto 0),
      SLOT_3_AXI_awlen(7 downto 0) => SLOT_3_AXI_awlen(7 downto 0),
      SLOT_3_AXI_awprot(2 downto 0) => SLOT_3_AXI_awprot(2 downto 0),
      SLOT_3_AXI_awready => SLOT_3_AXI_awready,
      SLOT_3_AXI_awsize(2 downto 0) => SLOT_3_AXI_awsize(2 downto 0),
      SLOT_3_AXI_awvalid => SLOT_3_AXI_awvalid,
      SLOT_3_AXI_bready => SLOT_3_AXI_bready,
      SLOT_3_AXI_bresp(1 downto 0) => SLOT_3_AXI_bresp(1 downto 0),
      SLOT_3_AXI_bvalid => SLOT_3_AXI_bvalid,
      SLOT_3_AXI_rdata(31 downto 0) => SLOT_3_AXI_rdata(31 downto 0),
      SLOT_3_AXI_rlast => SLOT_3_AXI_rlast,
      SLOT_3_AXI_rready => SLOT_3_AXI_rready,
      SLOT_3_AXI_rresp(1 downto 0) => SLOT_3_AXI_rresp(1 downto 0),
      SLOT_3_AXI_rvalid => SLOT_3_AXI_rvalid,
      SLOT_3_AXI_wdata(31 downto 0) => SLOT_3_AXI_wdata(31 downto 0),
      SLOT_3_AXI_wlast => SLOT_3_AXI_wlast,
      SLOT_3_AXI_wready => SLOT_3_AXI_wready,
      SLOT_3_AXI_wstrb(3 downto 0) => SLOT_3_AXI_wstrb(3 downto 0),
      SLOT_3_AXI_wvalid => SLOT_3_AXI_wvalid,
      SLOT_4_AXI_araddr(31 downto 0) => SLOT_4_AXI_araddr(31 downto 0),
      SLOT_4_AXI_arburst(1 downto 0) => SLOT_4_AXI_arburst(1 downto 0),
      SLOT_4_AXI_arcache(3 downto 0) => SLOT_4_AXI_arcache(3 downto 0),
      SLOT_4_AXI_arlen(7 downto 0) => SLOT_4_AXI_arlen(7 downto 0),
      SLOT_4_AXI_arprot(2 downto 0) => SLOT_4_AXI_arprot(2 downto 0),
      SLOT_4_AXI_arready => SLOT_4_AXI_arready,
      SLOT_4_AXI_arsize(2 downto 0) => SLOT_4_AXI_arsize(2 downto 0),
      SLOT_4_AXI_arvalid => SLOT_4_AXI_arvalid,
      SLOT_4_AXI_awaddr(31 downto 0) => SLOT_4_AXI_awaddr(31 downto 0),
      SLOT_4_AXI_awburst(1 downto 0) => SLOT_4_AXI_awburst(1 downto 0),
      SLOT_4_AXI_awcache(3 downto 0) => SLOT_4_AXI_awcache(3 downto 0),
      SLOT_4_AXI_awlen(7 downto 0) => SLOT_4_AXI_awlen(7 downto 0),
      SLOT_4_AXI_awprot(2 downto 0) => SLOT_4_AXI_awprot(2 downto 0),
      SLOT_4_AXI_awready => SLOT_4_AXI_awready,
      SLOT_4_AXI_awsize(2 downto 0) => SLOT_4_AXI_awsize(2 downto 0),
      SLOT_4_AXI_awvalid => SLOT_4_AXI_awvalid,
      SLOT_4_AXI_bready => SLOT_4_AXI_bready,
      SLOT_4_AXI_bresp(1 downto 0) => SLOT_4_AXI_bresp(1 downto 0),
      SLOT_4_AXI_bvalid => SLOT_4_AXI_bvalid,
      SLOT_4_AXI_rdata(31 downto 0) => SLOT_4_AXI_rdata(31 downto 0),
      SLOT_4_AXI_rlast => SLOT_4_AXI_rlast,
      SLOT_4_AXI_rready => SLOT_4_AXI_rready,
      SLOT_4_AXI_rresp(1 downto 0) => SLOT_4_AXI_rresp(1 downto 0),
      SLOT_4_AXI_rvalid => SLOT_4_AXI_rvalid,
      SLOT_4_AXI_wdata(31 downto 0) => SLOT_4_AXI_wdata(31 downto 0),
      SLOT_4_AXI_wlast => SLOT_4_AXI_wlast,
      SLOT_4_AXI_wready => SLOT_4_AXI_wready,
      SLOT_4_AXI_wstrb(3 downto 0) => SLOT_4_AXI_wstrb(3 downto 0),
      SLOT_4_AXI_wvalid => SLOT_4_AXI_wvalid,
      SLOT_5_AXI_araddr(31 downto 0) => SLOT_5_AXI_araddr(31 downto 0),
      SLOT_5_AXI_arburst(1 downto 0) => SLOT_5_AXI_arburst(1 downto 0),
      SLOT_5_AXI_arcache(3 downto 0) => SLOT_5_AXI_arcache(3 downto 0),
      SLOT_5_AXI_arlen(7 downto 0) => SLOT_5_AXI_arlen(7 downto 0),
      SLOT_5_AXI_arprot(2 downto 0) => SLOT_5_AXI_arprot(2 downto 0),
      SLOT_5_AXI_arready => SLOT_5_AXI_arready,
      SLOT_5_AXI_arsize(2 downto 0) => SLOT_5_AXI_arsize(2 downto 0),
      SLOT_5_AXI_arvalid => SLOT_5_AXI_arvalid,
      SLOT_5_AXI_awaddr(31 downto 0) => SLOT_5_AXI_awaddr(31 downto 0),
      SLOT_5_AXI_awburst(1 downto 0) => SLOT_5_AXI_awburst(1 downto 0),
      SLOT_5_AXI_awcache(3 downto 0) => SLOT_5_AXI_awcache(3 downto 0),
      SLOT_5_AXI_awlen(7 downto 0) => SLOT_5_AXI_awlen(7 downto 0),
      SLOT_5_AXI_awprot(2 downto 0) => SLOT_5_AXI_awprot(2 downto 0),
      SLOT_5_AXI_awready => SLOT_5_AXI_awready,
      SLOT_5_AXI_awsize(2 downto 0) => SLOT_5_AXI_awsize(2 downto 0),
      SLOT_5_AXI_awvalid => SLOT_5_AXI_awvalid,
      SLOT_5_AXI_bready => SLOT_5_AXI_bready,
      SLOT_5_AXI_bresp(1 downto 0) => SLOT_5_AXI_bresp(1 downto 0),
      SLOT_5_AXI_bvalid => SLOT_5_AXI_bvalid,
      SLOT_5_AXI_rdata(31 downto 0) => SLOT_5_AXI_rdata(31 downto 0),
      SLOT_5_AXI_rlast => SLOT_5_AXI_rlast,
      SLOT_5_AXI_rready => SLOT_5_AXI_rready,
      SLOT_5_AXI_rresp(1 downto 0) => SLOT_5_AXI_rresp(1 downto 0),
      SLOT_5_AXI_rvalid => SLOT_5_AXI_rvalid,
      SLOT_5_AXI_wdata(31 downto 0) => SLOT_5_AXI_wdata(31 downto 0),
      SLOT_5_AXI_wlast => SLOT_5_AXI_wlast,
      SLOT_5_AXI_wready => SLOT_5_AXI_wready,
      SLOT_5_AXI_wstrb(3 downto 0) => SLOT_5_AXI_wstrb(3 downto 0),
      SLOT_5_AXI_wvalid => SLOT_5_AXI_wvalid,
      SLOT_6_AXI_araddr(31 downto 0) => SLOT_6_AXI_araddr(31 downto 0),
      SLOT_6_AXI_arburst(1 downto 0) => SLOT_6_AXI_arburst(1 downto 0),
      SLOT_6_AXI_arcache(3 downto 0) => SLOT_6_AXI_arcache(3 downto 0),
      SLOT_6_AXI_arlen(3 downto 0) => SLOT_6_AXI_arlen(3 downto 0),
      SLOT_6_AXI_arprot(2 downto 0) => SLOT_6_AXI_arprot(2 downto 0),
      SLOT_6_AXI_arready => SLOT_6_AXI_arready,
      SLOT_6_AXI_arsize(2 downto 0) => SLOT_6_AXI_arsize(2 downto 0),
      SLOT_6_AXI_arvalid => SLOT_6_AXI_arvalid,
      SLOT_6_AXI_awaddr(31 downto 0) => SLOT_6_AXI_awaddr(31 downto 0),
      SLOT_6_AXI_awburst(1 downto 0) => SLOT_6_AXI_awburst(1 downto 0),
      SLOT_6_AXI_awcache(3 downto 0) => SLOT_6_AXI_awcache(3 downto 0),
      SLOT_6_AXI_awlen(3 downto 0) => SLOT_6_AXI_awlen(3 downto 0),
      SLOT_6_AXI_awprot(2 downto 0) => SLOT_6_AXI_awprot(2 downto 0),
      SLOT_6_AXI_awready => SLOT_6_AXI_awready,
      SLOT_6_AXI_awsize(2 downto 0) => SLOT_6_AXI_awsize(2 downto 0),
      SLOT_6_AXI_awvalid => SLOT_6_AXI_awvalid,
      SLOT_6_AXI_bready => SLOT_6_AXI_bready,
      SLOT_6_AXI_bresp(1 downto 0) => SLOT_6_AXI_bresp(1 downto 0),
      SLOT_6_AXI_bvalid => SLOT_6_AXI_bvalid,
      SLOT_6_AXI_rdata(31 downto 0) => SLOT_6_AXI_rdata(31 downto 0),
      SLOT_6_AXI_rlast => SLOT_6_AXI_rlast,
      SLOT_6_AXI_rready => SLOT_6_AXI_rready,
      SLOT_6_AXI_rresp(1 downto 0) => SLOT_6_AXI_rresp(1 downto 0),
      SLOT_6_AXI_rvalid => SLOT_6_AXI_rvalid,
      SLOT_6_AXI_wdata(31 downto 0) => SLOT_6_AXI_wdata(31 downto 0),
      SLOT_6_AXI_wlast => SLOT_6_AXI_wlast,
      SLOT_6_AXI_wready => SLOT_6_AXI_wready,
      SLOT_6_AXI_wstrb(3 downto 0) => SLOT_6_AXI_wstrb(3 downto 0),
      SLOT_6_AXI_wvalid => SLOT_6_AXI_wvalid,
      SLOT_7_AXI_araddr(31 downto 0) => SLOT_7_AXI_araddr(31 downto 0),
      SLOT_7_AXI_arburst(1 downto 0) => SLOT_7_AXI_arburst(1 downto 0),
      SLOT_7_AXI_arcache(1 downto 0) => SLOT_7_AXI_arcache(1 downto 0),
      SLOT_7_AXI_arlen(3 downto 0) => SLOT_7_AXI_arlen(3 downto 0),
      SLOT_7_AXI_arprot(2 downto 0) => SLOT_7_AXI_arprot(2 downto 0),
      SLOT_7_AXI_arready => SLOT_7_AXI_arready,
      SLOT_7_AXI_arsize(2 downto 0) => SLOT_7_AXI_arsize(2 downto 0),
      SLOT_7_AXI_arvalid => SLOT_7_AXI_arvalid,
      SLOT_7_AXI_awaddr(31 downto 0) => SLOT_7_AXI_awaddr(31 downto 0),
      SLOT_7_AXI_awburst(1 downto 0) => SLOT_7_AXI_awburst(1 downto 0),
      SLOT_7_AXI_awcache(3 downto 0) => SLOT_7_AXI_awcache(3 downto 0),
      SLOT_7_AXI_awlen(3 downto 0) => SLOT_7_AXI_awlen(3 downto 0),
      SLOT_7_AXI_awprot(2 downto 0) => SLOT_7_AXI_awprot(2 downto 0),
      SLOT_7_AXI_awready => SLOT_7_AXI_awready,
      SLOT_7_AXI_awsize(2 downto 0) => SLOT_7_AXI_awsize(2 downto 0),
      SLOT_7_AXI_awvalid => SLOT_7_AXI_awvalid,
      SLOT_7_AXI_bready => SLOT_7_AXI_bready,
      SLOT_7_AXI_bresp(1 downto 0) => SLOT_7_AXI_bresp(1 downto 0),
      SLOT_7_AXI_bvalid => SLOT_7_AXI_bvalid,
      SLOT_7_AXI_rdata(31 downto 0) => SLOT_7_AXI_rdata(31 downto 0),
      SLOT_7_AXI_rlast => SLOT_7_AXI_rlast,
      SLOT_7_AXI_rready => SLOT_7_AXI_rready,
      SLOT_7_AXI_rresp(1 downto 0) => SLOT_7_AXI_rresp(1 downto 0),
      SLOT_7_AXI_rvalid => SLOT_7_AXI_rvalid,
      SLOT_7_AXI_wdata(31 downto 0) => SLOT_7_AXI_wdata(31 downto 0),
      SLOT_7_AXI_wlast => SLOT_7_AXI_wlast,
      SLOT_7_AXI_wready => SLOT_7_AXI_wready,
      SLOT_7_AXI_wstrb(3 downto 0) => SLOT_7_AXI_wstrb(3 downto 0),
      SLOT_7_AXI_wvalid => SLOT_7_AXI_wvalid,
      SLOT_8_AXI_araddr(31 downto 0) => SLOT_8_AXI_araddr(31 downto 0),
      SLOT_8_AXI_arburst(1 downto 0) => SLOT_8_AXI_arburst(1 downto 0),
      SLOT_8_AXI_arcache(3 downto 0) => SLOT_8_AXI_arcache(3 downto 0),
      SLOT_8_AXI_arlen(3 downto 0) => SLOT_8_AXI_arlen(3 downto 0),
      SLOT_8_AXI_arprot(2 downto 0) => SLOT_8_AXI_arprot(2 downto 0),
      SLOT_8_AXI_arready => SLOT_8_AXI_arready,
      SLOT_8_AXI_arsize(2 downto 0) => SLOT_8_AXI_arsize(2 downto 0),
      SLOT_8_AXI_arvalid => SLOT_8_AXI_arvalid,
      SLOT_8_AXI_awaddr(31 downto 0) => SLOT_8_AXI_awaddr(31 downto 0),
      SLOT_8_AXI_awburst(1 downto 0) => SLOT_8_AXI_awburst(1 downto 0),
      SLOT_8_AXI_awcache(3 downto 0) => SLOT_8_AXI_awcache(3 downto 0),
      SLOT_8_AXI_awlen(3 downto 0) => SLOT_8_AXI_awlen(3 downto 0),
      SLOT_8_AXI_awprot(2 downto 0) => SLOT_8_AXI_awprot(2 downto 0),
      SLOT_8_AXI_awready => SLOT_8_AXI_awready,
      SLOT_8_AXI_awsize(2 downto 0) => SLOT_8_AXI_awsize(2 downto 0),
      SLOT_8_AXI_awvalid => SLOT_8_AXI_awvalid,
      SLOT_8_AXI_bready => SLOT_8_AXI_bready,
      SLOT_8_AXI_bresp(1 downto 0) => SLOT_8_AXI_bresp(1 downto 0),
      SLOT_8_AXI_bvalid => SLOT_8_AXI_bvalid,
      SLOT_8_AXI_rdata(31 downto 0) => SLOT_8_AXI_rdata(31 downto 0),
      SLOT_8_AXI_rlast => SLOT_8_AXI_rlast,
      SLOT_8_AXI_rready => SLOT_8_AXI_rready,
      SLOT_8_AXI_rresp(1 downto 0) => SLOT_8_AXI_rresp(1 downto 0),
      SLOT_8_AXI_rvalid => SLOT_8_AXI_rvalid,
      SLOT_8_AXI_wdata(31 downto 0) => SLOT_8_AXI_wdata(31 downto 0),
      SLOT_8_AXI_wlast => SLOT_8_AXI_wlast,
      SLOT_8_AXI_wready => SLOT_8_AXI_wready,
      SLOT_8_AXI_wstrb(3 downto 0) => SLOT_8_AXI_wstrb(3 downto 0),
      SLOT_8_AXI_wvalid => SLOT_8_AXI_wvalid,
      SLOT_9_AXI_araddr(31 downto 0) => SLOT_9_AXI_araddr(31 downto 0),
      SLOT_9_AXI_arburst(1 downto 0) => SLOT_9_AXI_arburst(1 downto 0),
      SLOT_9_AXI_arcache(3 downto 0) => SLOT_9_AXI_arcache(3 downto 0),
      SLOT_9_AXI_arlen(3 downto 0) => SLOT_9_AXI_arlen(3 downto 0),
      SLOT_9_AXI_arprot(2 downto 0) => SLOT_9_AXI_arprot(2 downto 0),
      SLOT_9_AXI_arready => SLOT_9_AXI_arready,
      SLOT_9_AXI_arsize(2 downto 0) => SLOT_9_AXI_arsize(2 downto 0),
      SLOT_9_AXI_arvalid => SLOT_9_AXI_arvalid,
      SLOT_9_AXI_awaddr(31 downto 0) => SLOT_9_AXI_awaddr(31 downto 0),
      SLOT_9_AXI_awburst(1 downto 0) => SLOT_9_AXI_awburst(1 downto 0),
      SLOT_9_AXI_awcache(3 downto 0) => SLOT_9_AXI_awcache(3 downto 0),
      SLOT_9_AXI_awlen(3 downto 0) => SLOT_9_AXI_awlen(3 downto 0),
      SLOT_9_AXI_awprot(2 downto 0) => SLOT_9_AXI_awprot(2 downto 0),
      SLOT_9_AXI_awready => SLOT_9_AXI_awready,
      SLOT_9_AXI_awsize(2 downto 0) => SLOT_9_AXI_awsize(2 downto 0),
      SLOT_9_AXI_awvalid => SLOT_9_AXI_awvalid,
      SLOT_9_AXI_bready => SLOT_9_AXI_bready,
      SLOT_9_AXI_bresp(1 downto 0) => SLOT_9_AXI_bresp(1 downto 0),
      SLOT_9_AXI_bvalid => SLOT_9_AXI_bvalid,
      SLOT_9_AXI_rdata(31 downto 0) => SLOT_9_AXI_rdata(31 downto 0),
      SLOT_9_AXI_rlast => SLOT_9_AXI_rlast,
      SLOT_9_AXI_rready => SLOT_9_AXI_rready,
      SLOT_9_AXI_rresp(1 downto 0) => SLOT_9_AXI_rresp(1 downto 0),
      SLOT_9_AXI_rvalid => SLOT_9_AXI_rvalid,
      SLOT_9_AXI_wdata(31 downto 0) => SLOT_9_AXI_wdata(31 downto 0),
      SLOT_9_AXI_wlast => SLOT_9_AXI_wlast,
      SLOT_9_AXI_wready => SLOT_9_AXI_wready,
      SLOT_9_AXI_wstrb(2 downto 0) => SLOT_9_AXI_wstrb(2 downto 0),
      SLOT_9_AXI_wvalid => SLOT_9_AXI_wvalid,
      clk => clk,
      probe0(0) => probe0(0),
      probe1(0) => probe1(0),
      probe10(0) => probe10(0),
      probe11(0) => probe11(0),
      probe12(33 downto 0) => probe12(33 downto 0),
      probe13(0) => probe13(0),
      probe14(0) => probe14(0),
      probe15(0) => probe15(0),
      probe16(33 downto 0) => probe16(33 downto 0),
      probe17(0) => probe17(0),
      probe18(0) => probe18(0),
      probe19(33 downto 0) => probe19(33 downto 0),
      probe2(0) => probe2(0),
      probe20(0) => probe20(0),
      probe21(33 downto 0) => probe21(33 downto 0),
      probe22(0) => probe22(0),
      probe23(0) => probe23(0),
      probe24(33 downto 0) => probe24(33 downto 0),
      probe25(0) => probe25(0),
      probe26(0) => probe26(0),
      probe27(33 downto 0) => probe27(33 downto 0),
      probe28(0) => probe28(0),
      probe29(0) => probe29(0),
      probe3(0) => probe3(0),
      probe30(33 downto 0) => probe30(33 downto 0),
      probe31(0) => probe31(0),
      probe32(0) => probe32(0),
      probe33(33 downto 0) => probe33(33 downto 0),
      probe34(0) => probe34(0),
      probe35(0) => probe35(0),
      probe36(33 downto 0) => probe36(33 downto 0),
      probe37(0) => probe37(0),
      probe38(0) => probe38(0),
      probe39(0) => probe39(0),
      probe4(0) => probe4(0),
      probe40(0) => probe40(0),
      probe41(0) => probe41(0),
      probe5(0) => probe5(0),
      probe6(33 downto 0) => probe6(33 downto 0),
      probe7(0) => probe7(0),
      probe8(0) => probe8(0),
      probe9(33 downto 0) => probe9(33 downto 0),
      resetn => resetn
    );
end STRUCTURE;
