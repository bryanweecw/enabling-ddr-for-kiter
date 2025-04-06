-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY dual_delay_system_ila_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe4 : IN STD_LOGIC_VECTOR(33 DOWNTO 0);
    probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe7 : IN STD_LOGIC_VECTOR(33 DOWNTO 0);
    probe8 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe9 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe10 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe11 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe12 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe13 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe14 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe15 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe16 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe17 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe18 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe19 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe20 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe21 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe22 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe23 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe24 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe25 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe26 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe27 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe28 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe29 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe30 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    probe31 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    SLOT_0_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_0_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_awvalid : IN STD_LOGIC;
    SLOT_0_AXI_awready : IN STD_LOGIC;
    SLOT_0_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXI_wlast : IN STD_LOGIC;
    SLOT_0_AXI_wvalid : IN STD_LOGIC;
    SLOT_0_AXI_wready : IN STD_LOGIC;
    SLOT_0_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_bvalid : IN STD_LOGIC;
    SLOT_0_AXI_bready : IN STD_LOGIC;
    SLOT_0_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_0_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_arvalid : IN STD_LOGIC;
    SLOT_0_AXI_arready : IN STD_LOGIC;
    SLOT_0_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_rlast : IN STD_LOGIC;
    SLOT_0_AXI_rvalid : IN STD_LOGIC;
    SLOT_0_AXI_rready : IN STD_LOGIC;
    resetn : IN STD_LOGIC
  );
END dual_delay_system_ila_0_0;

ARCHITECTURE dual_delay_system_ila_0_0_arch OF dual_delay_system_ila_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF dual_delay_system_ila_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_e813 IS
    PORT (
      clk : IN STD_LOGIC;
      probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe4 : IN STD_LOGIC_VECTOR(33 DOWNTO 0);
      probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe7 : IN STD_LOGIC_VECTOR(33 DOWNTO 0);
      probe8 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe9 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe10 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe11 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe12 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe13 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe14 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe15 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe16 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe17 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe18 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe19 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe20 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe21 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe22 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe23 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe24 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe25 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe26 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe27 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe28 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe29 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe30 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      probe31 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      SLOT_0_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_0_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_awvalid : IN STD_LOGIC;
      SLOT_0_AXI_awready : IN STD_LOGIC;
      SLOT_0_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXI_wlast : IN STD_LOGIC;
      SLOT_0_AXI_wvalid : IN STD_LOGIC;
      SLOT_0_AXI_wready : IN STD_LOGIC;
      SLOT_0_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_bvalid : IN STD_LOGIC;
      SLOT_0_AXI_bready : IN STD_LOGIC;
      SLOT_0_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_0_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_arvalid : IN STD_LOGIC;
      SLOT_0_AXI_arready : IN STD_LOGIC;
      SLOT_0_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_rlast : IN STD_LOGIC;
      SLOT_0_AXI_rvalid : IN STD_LOGIC;
      SLOT_0_AXI_rready : IN STD_LOGIC;
      resetn : IN STD_LOGIC
    );
  END COMPONENT bd_e813;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_0_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50347222, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS" & 
" 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 50347222, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF SLOT_0_AXI, ASSOCIATED_RESET resetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.resetn RST";
BEGIN
  U0 : bd_e813
    PORT MAP (
      clk => clk,
      probe0 => probe0,
      probe1 => probe1,
      probe2 => probe2,
      probe3 => probe3,
      probe4 => probe4,
      probe5 => probe5,
      probe6 => probe6,
      probe7 => probe7,
      probe8 => probe8,
      probe9 => probe9,
      probe10 => probe10,
      probe11 => probe11,
      probe12 => probe12,
      probe13 => probe13,
      probe14 => probe14,
      probe15 => probe15,
      probe16 => probe16,
      probe17 => probe17,
      probe18 => probe18,
      probe19 => probe19,
      probe20 => probe20,
      probe21 => probe21,
      probe22 => probe22,
      probe23 => probe23,
      probe24 => probe24,
      probe25 => probe25,
      probe26 => probe26,
      probe27 => probe27,
      probe28 => probe28,
      probe29 => probe29,
      probe30 => probe30,
      probe31 => probe31,
      SLOT_0_AXI_awaddr => SLOT_0_AXI_awaddr,
      SLOT_0_AXI_awlen => SLOT_0_AXI_awlen,
      SLOT_0_AXI_awsize => SLOT_0_AXI_awsize,
      SLOT_0_AXI_awburst => SLOT_0_AXI_awburst,
      SLOT_0_AXI_awcache => SLOT_0_AXI_awcache,
      SLOT_0_AXI_awprot => SLOT_0_AXI_awprot,
      SLOT_0_AXI_awvalid => SLOT_0_AXI_awvalid,
      SLOT_0_AXI_awready => SLOT_0_AXI_awready,
      SLOT_0_AXI_wdata => SLOT_0_AXI_wdata,
      SLOT_0_AXI_wstrb => SLOT_0_AXI_wstrb,
      SLOT_0_AXI_wlast => SLOT_0_AXI_wlast,
      SLOT_0_AXI_wvalid => SLOT_0_AXI_wvalid,
      SLOT_0_AXI_wready => SLOT_0_AXI_wready,
      SLOT_0_AXI_bresp => SLOT_0_AXI_bresp,
      SLOT_0_AXI_bvalid => SLOT_0_AXI_bvalid,
      SLOT_0_AXI_bready => SLOT_0_AXI_bready,
      SLOT_0_AXI_araddr => SLOT_0_AXI_araddr,
      SLOT_0_AXI_arlen => SLOT_0_AXI_arlen,
      SLOT_0_AXI_arsize => SLOT_0_AXI_arsize,
      SLOT_0_AXI_arburst => SLOT_0_AXI_arburst,
      SLOT_0_AXI_arcache => SLOT_0_AXI_arcache,
      SLOT_0_AXI_arprot => SLOT_0_AXI_arprot,
      SLOT_0_AXI_arvalid => SLOT_0_AXI_arvalid,
      SLOT_0_AXI_arready => SLOT_0_AXI_arready,
      SLOT_0_AXI_rdata => SLOT_0_AXI_rdata,
      SLOT_0_AXI_rresp => SLOT_0_AXI_rresp,
      SLOT_0_AXI_rlast => SLOT_0_AXI_rlast,
      SLOT_0_AXI_rvalid => SLOT_0_AXI_rvalid,
      SLOT_0_AXI_rready => SLOT_0_AXI_rready,
      resetn => resetn
    );
END dual_delay_system_ila_0_0_arch;
