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

-- IP VLNV: xilinx.com:module_ref:audio_interface_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY triple_delay_audio_interface_wrap_1_0 IS
  PORT (
    ac_bclk_0 : OUT STD_LOGIC;
    ac_pbdat_0 : OUT STD_LOGIC;
    ac_recdat_0 : IN STD_LOGIC;
    ac_pblrc_0 : OUT STD_LOGIC;
    ac_reclrc_0 : OUT STD_LOGIC;
    sys_clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    mclk : IN STD_LOGIC;
    md_error : OUT STD_LOGIC;
    m_axi_arready : IN STD_LOGIC;
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready : OUT STD_LOGIC;
    m_axi_rvalid : IN STD_LOGIC;
    m_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_awready : IN STD_LOGIC;
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready : IN STD_LOGIC;
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    debug_static_delay_in_ready : OUT STD_LOGIC;
    debug_static_delay_in_valid : OUT STD_LOGIC;
    debug_static_delay_in_data : OUT STD_LOGIC_VECTOR(33 DOWNTO 0);
    debug_static_delay_out_ready : OUT STD_LOGIC;
    debug_static_delay_out_valid : OUT STD_LOGIC;
    debug_static_delay_out_data : OUT STD_LOGIC_VECTOR(33 DOWNTO 0);
    avg_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    avg_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    max_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    max_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    min_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    min_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    axi_avg_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    axi_avg_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    axi_max_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    axi_max_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    axi_min_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    axi_min_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END triple_delay_audio_interface_wrap_1_0;

ARCHITECTURE triple_delay_audio_interface_wrap_1_0_arch OF triple_delay_audio_interface_wrap_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF triple_delay_audio_interface_wrap_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT audio_interface_wrapper IS
    GENERIC (
      fifo_ram_depth : INTEGER;
      fifo_ram_init : INTEGER;
      DRAM_START_ADDRESS : STD_LOGIC_VECTOR;
      DRAM_SIZE : INTEGER
    );
    PORT (
      ac_bclk_0 : OUT STD_LOGIC;
      ac_pbdat_0 : OUT STD_LOGIC;
      ac_recdat_0 : IN STD_LOGIC;
      ac_pblrc_0 : OUT STD_LOGIC;
      ac_reclrc_0 : OUT STD_LOGIC;
      sys_clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      mclk : IN STD_LOGIC;
      md_error : OUT STD_LOGIC;
      m_axi_arready : IN STD_LOGIC;
      m_axi_arvalid : OUT STD_LOGIC;
      m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready : OUT STD_LOGIC;
      m_axi_rvalid : IN STD_LOGIC;
      m_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast : IN STD_LOGIC;
      m_axi_awready : IN STD_LOGIC;
      m_axi_awvalid : OUT STD_LOGIC;
      m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready : IN STD_LOGIC;
      m_axi_wvalid : OUT STD_LOGIC;
      m_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast : OUT STD_LOGIC;
      m_axi_bready : OUT STD_LOGIC;
      m_axi_bvalid : IN STD_LOGIC;
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      debug_static_delay_in_ready : OUT STD_LOGIC;
      debug_static_delay_in_valid : OUT STD_LOGIC;
      debug_static_delay_in_data : OUT STD_LOGIC_VECTOR(33 DOWNTO 0);
      debug_static_delay_out_ready : OUT STD_LOGIC;
      debug_static_delay_out_valid : OUT STD_LOGIC;
      debug_static_delay_out_data : OUT STD_LOGIC_VECTOR(33 DOWNTO 0);
      avg_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      avg_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      max_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      max_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      min_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      min_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      axi_avg_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      axi_avg_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      axi_max_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      axi_max_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      axi_min_read_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      axi_min_write_cycles_out : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
    );
  END COMPONENT audio_interface_wrapper;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_arready: SIGNAL IS "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50347222, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, R" & 
"USER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sys_clk: SIGNAL IS "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET reset, FREQ_HZ 50347222, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF sys_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 sys_clk CLK";
BEGIN
  U0 : audio_interface_wrapper
    GENERIC MAP (
      fifo_ram_depth => 100001,
      fifo_ram_init => 100000,
      DRAM_START_ADDRESS => X"00381000",
      DRAM_SIZE => 20000000
    )
    PORT MAP (
      ac_bclk_0 => ac_bclk_0,
      ac_pbdat_0 => ac_pbdat_0,
      ac_recdat_0 => ac_recdat_0,
      ac_pblrc_0 => ac_pblrc_0,
      ac_reclrc_0 => ac_reclrc_0,
      sys_clk => sys_clk,
      reset => reset,
      mclk => mclk,
      md_error => md_error,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_araddr => m_axi_araddr,
      m_axi_arlen => m_axi_arlen,
      m_axi_arsize => m_axi_arsize,
      m_axi_arburst => m_axi_arburst,
      m_axi_arprot => m_axi_arprot,
      m_axi_arcache => m_axi_arcache,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rdata => m_axi_rdata,
      m_axi_rresp => m_axi_rresp,
      m_axi_rlast => m_axi_rlast,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awaddr => m_axi_awaddr,
      m_axi_awlen => m_axi_awlen,
      m_axi_awsize => m_axi_awsize,
      m_axi_awburst => m_axi_awburst,
      m_axi_awprot => m_axi_awprot,
      m_axi_awcache => m_axi_awcache,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      m_axi_wdata => m_axi_wdata,
      m_axi_wstrb => m_axi_wstrb,
      m_axi_wlast => m_axi_wlast,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bresp => m_axi_bresp,
      debug_static_delay_in_ready => debug_static_delay_in_ready,
      debug_static_delay_in_valid => debug_static_delay_in_valid,
      debug_static_delay_in_data => debug_static_delay_in_data,
      debug_static_delay_out_ready => debug_static_delay_out_ready,
      debug_static_delay_out_valid => debug_static_delay_out_valid,
      debug_static_delay_out_data => debug_static_delay_out_data,
      avg_read_cycles_out => avg_read_cycles_out,
      avg_write_cycles_out => avg_write_cycles_out,
      max_read_cycles_out => max_read_cycles_out,
      max_write_cycles_out => max_write_cycles_out,
      min_read_cycles_out => min_read_cycles_out,
      min_write_cycles_out => min_write_cycles_out,
      axi_avg_read_cycles_out => axi_avg_read_cycles_out,
      axi_avg_write_cycles_out => axi_avg_write_cycles_out,
      axi_max_read_cycles_out => axi_max_read_cycles_out,
      axi_max_write_cycles_out => axi_max_write_cycles_out,
      axi_min_read_cycles_out => axi_min_read_cycles_out,
      axi_min_write_cycles_out => axi_min_write_cycles_out
    );
END triple_delay_audio_interface_wrap_1_0_arch;
