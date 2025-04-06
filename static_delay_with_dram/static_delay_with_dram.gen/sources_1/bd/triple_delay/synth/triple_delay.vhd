--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Fri Mar 21 16:27:05 2025
--Host        : fedora running 64-bit unknown
--Command     : generate_target triple_delay.bd
--Design      : triple_delay
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_10OYRV7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_10OYRV7;

architecture STRUCTURE of s00_couplers_imp_10OYRV7 is
  component triple_delay_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component triple_delay_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_s00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_s00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component triple_delay_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_s00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_s00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_14CWYKC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_14CWYKC;

architecture STRUCTURE of s00_couplers_imp_14CWYKC is
  component triple_delay_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component triple_delay_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_s00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_s00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component triple_delay_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_s00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_s00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_WURLNV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_WURLNV;

architecture STRUCTURE of s00_couplers_imp_WURLNV is
  component triple_delay_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component triple_delay_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_s00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_s00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component triple_delay_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_s00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_s00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity triple_delay_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end triple_delay_axi_interconnect_0_0;

architecture STRUCTURE of triple_delay_axi_interconnect_0_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_axi_interconnect_0_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_axi_interconnect_0_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_interconnect_0_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= s00_couplers_to_axi_interconnect_0_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= s00_couplers_to_axi_interconnect_0_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_axi_interconnect_0_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wlast <= s00_couplers_to_axi_interconnect_0_WLAST;
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= M00_ACLK;
  axi_interconnect_0_ARESETN_net <= M00_ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_interconnect_0_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_14CWYKC
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_axi_interconnect_0_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_axi_interconnect_0_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_interconnect_0_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => s00_couplers_to_axi_interconnect_0_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => s00_couplers_to_axi_interconnect_0_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_axi_interconnect_0_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => s00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => s00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity triple_delay_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end triple_delay_axi_interconnect_1_0;

architecture STRUCTURE of triple_delay_axi_interconnect_1_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_1_ACLK_net : STD_LOGIC;
  signal axi_interconnect_1_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_axi_interconnect_1_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_axi_interconnect_1_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_interconnect_1_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_interconnect_1_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= s00_couplers_to_axi_interconnect_1_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= s00_couplers_to_axi_interconnect_1_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_axi_interconnect_1_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_interconnect_1_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_interconnect_1_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_interconnect_1_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M00_AXI_wlast <= s00_couplers_to_axi_interconnect_1_WLAST;
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_interconnect_1_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_1_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_1_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_1_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_1_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast <= axi_interconnect_1_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_1_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_1_to_s00_couplers_WREADY;
  axi_interconnect_1_ACLK_net <= M00_ACLK;
  axi_interconnect_1_ARESETN_net <= M00_ARESETN;
  axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_1_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_1_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_1_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_1_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_1_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_1_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_1_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_1_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_1_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_1_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_1_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_1_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_1_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_interconnect_1_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_interconnect_1_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_interconnect_1_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_interconnect_1_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_interconnect_1_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_interconnect_1_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_WURLNV
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_axi_interconnect_1_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_axi_interconnect_1_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_interconnect_1_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => s00_couplers_to_axi_interconnect_1_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => s00_couplers_to_axi_interconnect_1_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_axi_interconnect_1_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_interconnect_1_RLAST,
      M_AXI_rready => s00_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_axi_interconnect_1_WLAST,
      M_AXI_wready => s00_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_1_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_interconnect_1_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_1_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_1_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_1_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_1_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_1_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_1_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_interconnect_1_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_1_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_1_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_1_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_1_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_1_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_interconnect_1_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_1_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_1_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_1_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_interconnect_1_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_1_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_1_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_1_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity triple_delay_axi_interconnect_1_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end triple_delay_axi_interconnect_1_1;

architecture STRUCTURE of triple_delay_axi_interconnect_1_1 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_2_ACLK_net : STD_LOGIC;
  signal axi_interconnect_2_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_2_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_2_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_interconnect_2_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_interconnect_2_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_interconnect_2_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_axi_interconnect_2_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_axi_interconnect_2_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_interconnect_2_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_interconnect_2_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_interconnect_2_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_interconnect_2_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_interconnect_2_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_axi_interconnect_2_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_axi_interconnect_2_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= s00_couplers_to_axi_interconnect_2_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= s00_couplers_to_axi_interconnect_2_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_interconnect_2_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_axi_interconnect_2_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_axi_interconnect_2_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_interconnect_2_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_interconnect_2_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_interconnect_2_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_interconnect_2_WDATA(31 downto 0);
  M00_AXI_wlast <= s00_couplers_to_axi_interconnect_2_WLAST;
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_interconnect_2_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_interconnect_2_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_2_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_2_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_2_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_2_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_2_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast <= axi_interconnect_2_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_2_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_2_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_2_to_s00_couplers_WREADY;
  axi_interconnect_2_ACLK_net <= M00_ACLK;
  axi_interconnect_2_ARESETN_net <= M00_ARESETN;
  axi_interconnect_2_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_2_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_2_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_2_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_2_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_2_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_2_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_2_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_2_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_2_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_2_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_2_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_2_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_2_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_2_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_2_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_2_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_2_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_2_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_2_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_interconnect_2_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_interconnect_2_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_interconnect_2_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_interconnect_2_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_interconnect_2_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_interconnect_2_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_interconnect_2_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_interconnect_2_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_interconnect_2_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_10OYRV7
     port map (
      M_ACLK => axi_interconnect_2_ACLK_net,
      M_ARESETN => axi_interconnect_2_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_interconnect_2_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_interconnect_2_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_interconnect_2_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_axi_interconnect_2_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_axi_interconnect_2_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_interconnect_2_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_interconnect_2_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_interconnect_2_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_interconnect_2_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_interconnect_2_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_interconnect_2_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_axi_interconnect_2_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_axi_interconnect_2_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => s00_couplers_to_axi_interconnect_2_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => s00_couplers_to_axi_interconnect_2_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_interconnect_2_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_axi_interconnect_2_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_axi_interconnect_2_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_axi_interconnect_2_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_axi_interconnect_2_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_interconnect_2_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_interconnect_2_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_interconnect_2_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_interconnect_2_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_interconnect_2_RLAST,
      M_AXI_rready => s00_couplers_to_axi_interconnect_2_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_interconnect_2_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_interconnect_2_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_interconnect_2_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_axi_interconnect_2_WLAST,
      M_AXI_wready => s00_couplers_to_axi_interconnect_2_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_interconnect_2_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_interconnect_2_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_2_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_2_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_2_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_2_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_2_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_interconnect_2_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_2_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_2_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_2_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_2_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_2_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_2_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_2_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_interconnect_2_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_2_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_2_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_2_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_2_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_2_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_2_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_interconnect_2_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_2_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_2_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_2_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_2_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_interconnect_2_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_2_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_2_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_2_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity triple_delay is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    ac_bclk : out STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_muten : out STD_LOGIC;
    ac_pbdat : out STD_LOGIC;
    ac_pblrc : out STD_LOGIC;
    ac_recdat : in STD_LOGIC;
    ac_reclrc : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    iic_scl_i : in STD_LOGIC;
    iic_scl_o : out STD_LOGIC;
    iic_scl_t : out STD_LOGIC;
    iic_sda_i : in STD_LOGIC;
    iic_sda_o : out STD_LOGIC;
    iic_sda_t : out STD_LOGIC;
    led : out STD_LOGIC;
    sw0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of triple_delay : entity is "triple_delay,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=triple_delay,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of triple_delay : entity is "triple_delay.hwdef";
end triple_delay;

architecture STRUCTURE of triple_delay is
  component triple_delay_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_50mhz : out STD_LOGIC
  );
  end component triple_delay_clk_wiz_0_0;
  component triple_delay_clk_wiz_1_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_i2s : out STD_LOGIC;
    clk_24mhz : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component triple_delay_clk_wiz_1_0;
  component triple_delay_mux4to1_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    btn4 : in STD_LOGIC;
    srca1 : in STD_LOGIC;
    srca2 : in STD_LOGIC;
    srca3 : in STD_LOGIC;
    srca4 : in STD_LOGIC;
    srcb1 : in STD_LOGIC;
    srcb2 : in STD_LOGIC;
    srcb3 : in STD_LOGIC;
    srcb4 : in STD_LOGIC;
    srcc1 : in STD_LOGIC;
    srcc2 : in STD_LOGIC;
    srcc3 : in STD_LOGIC;
    srcc4 : in STD_LOGIC;
    srcd1 : in STD_LOGIC;
    srcd2 : in STD_LOGIC;
    srcd3 : in STD_LOGIC;
    srcd4 : in STD_LOGIC;
    mux_out1 : out STD_LOGIC;
    mux_out2 : out STD_LOGIC;
    mux_out3 : out STD_LOGIC;
    mux_out4 : out STD_LOGIC
  );
  end component triple_delay_mux4to1_0_0;
  component triple_delay_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component triple_delay_proc_sys_reset_0_0;
  component triple_delay_processing_system7_0_0 is
  port (
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARREADY : out STD_LOGIC;
    S_AXI_HP1_AWREADY : out STD_LOGIC;
    S_AXI_HP1_BVALID : out STD_LOGIC;
    S_AXI_HP1_RLAST : out STD_LOGIC;
    S_AXI_HP1_RVALID : out STD_LOGIC;
    S_AXI_HP1_WREADY : out STD_LOGIC;
    S_AXI_HP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_ACLK : in STD_LOGIC;
    S_AXI_HP1_ARVALID : in STD_LOGIC;
    S_AXI_HP1_AWVALID : in STD_LOGIC;
    S_AXI_HP1_BREADY : in STD_LOGIC;
    S_AXI_HP1_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_RREADY : in STD_LOGIC;
    S_AXI_HP1_WLAST : in STD_LOGIC;
    S_AXI_HP1_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_WVALID : in STD_LOGIC;
    S_AXI_HP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARREADY : out STD_LOGIC;
    S_AXI_HP2_AWREADY : out STD_LOGIC;
    S_AXI_HP2_BVALID : out STD_LOGIC;
    S_AXI_HP2_RLAST : out STD_LOGIC;
    S_AXI_HP2_RVALID : out STD_LOGIC;
    S_AXI_HP2_WREADY : out STD_LOGIC;
    S_AXI_HP2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_ACLK : in STD_LOGIC;
    S_AXI_HP2_ARVALID : in STD_LOGIC;
    S_AXI_HP2_AWVALID : in STD_LOGIC;
    S_AXI_HP2_BREADY : in STD_LOGIC;
    S_AXI_HP2_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_RREADY : in STD_LOGIC;
    S_AXI_HP2_WLAST : in STD_LOGIC;
    S_AXI_HP2_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_WVALID : in STD_LOGIC;
    S_AXI_HP2_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component triple_delay_processing_system7_0_0;
  component triple_delay_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    probe26 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component triple_delay_system_ila_0_0;
  component triple_delay_audio_interface_wrap_0_0 is
  port (
    ac_bclk_0 : out STD_LOGIC;
    ac_pbdat_0 : out STD_LOGIC;
    ac_recdat_0 : in STD_LOGIC;
    ac_pblrc_0 : out STD_LOGIC;
    ac_reclrc_0 : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mclk : in STD_LOGIC;
    md_error : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    debug_static_delay_in_ready : out STD_LOGIC;
    debug_static_delay_in_valid : out STD_LOGIC;
    debug_static_delay_in_data : out STD_LOGIC_VECTOR ( 33 downto 0 );
    debug_static_delay_out_ready : out STD_LOGIC;
    debug_static_delay_out_valid : out STD_LOGIC;
    debug_static_delay_out_data : out STD_LOGIC_VECTOR ( 33 downto 0 );
    avg_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    avg_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    max_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    max_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    min_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    min_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_avg_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_avg_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_max_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_max_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_min_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_min_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component triple_delay_audio_interface_wrap_0_0;
  component triple_delay_audio_interface_wrap_1_0 is
  port (
    ac_bclk_0 : out STD_LOGIC;
    ac_pbdat_0 : out STD_LOGIC;
    ac_recdat_0 : in STD_LOGIC;
    ac_pblrc_0 : out STD_LOGIC;
    ac_reclrc_0 : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mclk : in STD_LOGIC;
    md_error : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    debug_static_delay_in_ready : out STD_LOGIC;
    debug_static_delay_in_valid : out STD_LOGIC;
    debug_static_delay_in_data : out STD_LOGIC_VECTOR ( 33 downto 0 );
    debug_static_delay_out_ready : out STD_LOGIC;
    debug_static_delay_out_valid : out STD_LOGIC;
    debug_static_delay_out_data : out STD_LOGIC_VECTOR ( 33 downto 0 );
    avg_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    avg_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    max_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    max_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    min_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    min_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_avg_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_avg_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_max_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_max_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_min_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_min_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component triple_delay_audio_interface_wrap_1_0;
  component triple_delay_audio_interface_wrap_1_1 is
  port (
    ac_bclk_0 : out STD_LOGIC;
    ac_pbdat_0 : out STD_LOGIC;
    ac_recdat_0 : in STD_LOGIC;
    ac_pblrc_0 : out STD_LOGIC;
    ac_reclrc_0 : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mclk : in STD_LOGIC;
    md_error : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    debug_static_delay_in_ready : out STD_LOGIC;
    debug_static_delay_in_valid : out STD_LOGIC;
    debug_static_delay_in_data : out STD_LOGIC_VECTOR ( 33 downto 0 );
    debug_static_delay_out_ready : out STD_LOGIC;
    debug_static_delay_out_valid : out STD_LOGIC;
    debug_static_delay_out_data : out STD_LOGIC_VECTOR ( 33 downto 0 );
    avg_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    avg_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    max_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    max_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    min_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    min_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_avg_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_avg_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_max_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_max_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_min_read_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axi_min_write_cycles_out : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component triple_delay_audio_interface_wrap_1_1;
  signal ac_recdat_1 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_bclk_0 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_pbdat_0 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_pblrc_0 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_reclrc_0 : STD_LOGIC;
  signal audio_interface_wrap_0_avg_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_avg_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_axi_avg_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_axi_avg_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_axi_max_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_axi_max_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_axi_min_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_axi_min_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_debug_static_delay_in_data : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal audio_interface_wrap_0_debug_static_delay_in_ready : STD_LOGIC;
  signal audio_interface_wrap_0_debug_static_delay_in_valid : STD_LOGIC;
  signal audio_interface_wrap_0_debug_static_delay_out_data : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal audio_interface_wrap_0_debug_static_delay_out_ready : STD_LOGIC;
  signal audio_interface_wrap_0_debug_static_delay_out_valid : STD_LOGIC;
  signal audio_interface_wrap_0_m_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARADDR : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARADDR";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARADDR : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARBURST : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARBURST";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARBURST : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARCACHE : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARCACHE";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARCACHE : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARLEN : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARLEN";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARLEN : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARPROT : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARPROT";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARPROT : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARREADY : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARREADY";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARREADY : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARSIZE : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARSIZE";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARSIZE : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_ARVALID : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARVALID";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_ARVALID : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWADDR : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWADDR : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWBURST : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWBURST";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWBURST : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWCACHE : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWCACHE : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWLEN : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWLEN : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWPROT : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWPROT : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWREADY : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWREADY : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWSIZE : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWSIZE : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_AWVALID : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_AWVALID : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_BREADY : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_BREADY : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_BRESP : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_BRESP : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_BVALID : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_BVALID : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_RDATA : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RDATA";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_RDATA : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_RLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_RLAST : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RLAST";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_RLAST : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_RREADY : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RREADY";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_RREADY : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_RRESP : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RRESP";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_RRESP : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_RVALID : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RVALID";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_RVALID : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_WDATA : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_WDATA : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_WLAST : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_WLAST : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_WREADY : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_WREADY : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_WSTRB : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_WSTRB : signal is std.standard.true;
  signal audio_interface_wrap_0_m_axi_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of audio_interface_wrap_0_m_axi_WVALID : signal is "audio_interface_wrap_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute DONT_TOUCH of audio_interface_wrap_0_m_axi_WVALID : signal is std.standard.true;
  signal audio_interface_wrap_0_max_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_max_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_min_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_0_min_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_ac_bclk_0 : STD_LOGIC;
  signal audio_interface_wrap_1_ac_pbdat_0 : STD_LOGIC;
  signal audio_interface_wrap_1_ac_pblrc_0 : STD_LOGIC;
  signal audio_interface_wrap_1_ac_reclrc_0 : STD_LOGIC;
  signal audio_interface_wrap_1_avg_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_avg_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_axi_avg_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_axi_avg_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_axi_max_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_axi_max_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_axi_min_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_axi_min_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_m_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_1_m_axi_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_1_m_axi_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_interface_wrap_1_m_axi_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal audio_interface_wrap_1_m_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_1_m_axi_ARREADY : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_1_m_axi_ARVALID : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_1_m_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_1_m_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_interface_wrap_1_m_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal audio_interface_wrap_1_m_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_1_m_axi_AWREADY : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_1_m_axi_AWVALID : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_BREADY : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_1_m_axi_BVALID : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_1_m_axi_RLAST : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_RREADY : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_1_m_axi_RVALID : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_1_m_axi_WLAST : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_WREADY : STD_LOGIC;
  signal audio_interface_wrap_1_m_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_interface_wrap_1_m_axi_WVALID : STD_LOGIC;
  signal audio_interface_wrap_1_max_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_max_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_min_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_1_min_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_ac_bclk_0 : STD_LOGIC;
  signal audio_interface_wrap_2_ac_pbdat_0 : STD_LOGIC;
  signal audio_interface_wrap_2_ac_pblrc_0 : STD_LOGIC;
  signal audio_interface_wrap_2_ac_reclrc_0 : STD_LOGIC;
  signal audio_interface_wrap_2_avg_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_avg_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_axi_avg_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_axi_avg_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_axi_max_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_axi_max_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_axi_min_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_axi_min_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_m_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_2_m_axi_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_2_m_axi_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_interface_wrap_2_m_axi_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal audio_interface_wrap_2_m_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_2_m_axi_ARREADY : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_2_m_axi_ARVALID : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_2_m_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_2_m_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_interface_wrap_2_m_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal audio_interface_wrap_2_m_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_2_m_axi_AWREADY : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_interface_wrap_2_m_axi_AWVALID : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_BREADY : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_2_m_axi_BVALID : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_2_m_axi_RLAST : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_RREADY : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_interface_wrap_2_m_axi_RVALID : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_interface_wrap_2_m_axi_WLAST : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_WREADY : STD_LOGIC;
  signal audio_interface_wrap_2_m_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_interface_wrap_2_m_axi_WVALID : STD_LOGIC;
  signal audio_interface_wrap_2_max_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_max_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_min_read_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal audio_interface_wrap_2_min_write_cycles_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_2_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_2_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_2_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_2_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_2_M00_AXI_WVALID : STD_LOGIC;
  signal btn0_1 : STD_LOGIC;
  signal btn1_1 : STD_LOGIC;
  signal btn2_1 : STD_LOGIC;
  signal btn3_1 : STD_LOGIC;
  signal clk_wiz_0_clk_50mhz : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_1_clk_24mhz : STD_LOGIC;
  signal clk_wiz_1_clk_i2s : STD_LOGIC;
  signal clk_wiz_1_locked : STD_LOGIC;
  signal mux4to1_0_mux_out1 : STD_LOGIC;
  signal mux4to1_0_mux_out2 : STD_LOGIC;
  signal mux4to1_0_mux_out3 : STD_LOGIC;
  signal mux4to1_0_mux_out4 : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_T : STD_LOGIC;
  signal sw0_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_md_error_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_1_debug_static_delay_in_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_1_debug_static_delay_in_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_1_debug_static_delay_out_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_1_debug_static_delay_out_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_1_md_error_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_1_debug_static_delay_in_data_UNCONNECTED : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal NLW_audio_interface_wrap_1_debug_static_delay_out_data_UNCONNECTED : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal NLW_audio_interface_wrap_2_debug_static_delay_in_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_2_debug_static_delay_in_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_2_debug_static_delay_out_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_2_debug_static_delay_out_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_2_md_error_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_2_debug_static_delay_in_data_UNCONNECTED : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal NLW_audio_interface_wrap_2_debug_static_delay_out_data_UNCONNECTED : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of ac_mclk : signal is "xilinx.com:signal:clock:1.0 CLK.AC_MCLK CLK";
  attribute X_INTERFACE_PARAMETER of ac_mclk : signal is "XIL_INTERFACENAME CLK.AC_MCLK, CLK_DOMAIN /clk_wiz_1_clk_out1, FREQ_HZ 24564009, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of iic_scl_i : signal is "xilinx.com:interface:iic:1.0 iic SCL_I";
  attribute X_INTERFACE_INFO of iic_scl_o : signal is "xilinx.com:interface:iic:1.0 iic SCL_O";
  attribute X_INTERFACE_INFO of iic_scl_t : signal is "xilinx.com:interface:iic:1.0 iic SCL_T";
  attribute X_INTERFACE_INFO of iic_sda_i : signal is "xilinx.com:interface:iic:1.0 iic SDA_I";
  attribute X_INTERFACE_INFO of iic_sda_o : signal is "xilinx.com:interface:iic:1.0 iic SDA_O";
  attribute X_INTERFACE_INFO of iic_sda_t : signal is "xilinx.com:interface:iic:1.0 iic SDA_T";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  ac_bclk <= mux4to1_0_mux_out1;
  ac_mclk <= clk_wiz_1_clk_24mhz;
  ac_muten <= sw0_1;
  ac_pbdat <= mux4to1_0_mux_out2;
  ac_pblrc <= mux4to1_0_mux_out3;
  ac_recdat_1 <= ac_recdat;
  ac_reclrc <= mux4to1_0_mux_out4;
  btn0_1 <= btn0;
  btn1_1 <= btn1;
  btn2_1 <= btn2;
  btn3_1 <= btn3;
  iic_scl_o <= processing_system7_0_IIC_0_SCL_O;
  iic_scl_t <= processing_system7_0_IIC_0_SCL_T;
  iic_sda_o <= processing_system7_0_IIC_0_SDA_O;
  iic_sda_t <= processing_system7_0_IIC_0_SDA_T;
  led <= sw0_1;
  processing_system7_0_IIC_0_SCL_I <= iic_scl_i;
  processing_system7_0_IIC_0_SDA_I <= iic_sda_i;
  sw0_1 <= sw0;
  sys_clock_1 <= sys_clock;
audio_interface_wrap_0: component triple_delay_audio_interface_wrap_0_0
     port map (
      ac_bclk_0 => audio_interface_wrap_0_ac_bclk_0,
      ac_pbdat_0 => audio_interface_wrap_0_ac_pbdat_0,
      ac_pblrc_0 => audio_interface_wrap_0_ac_pblrc_0,
      ac_recdat_0 => ac_recdat_1,
      ac_reclrc_0 => audio_interface_wrap_0_ac_reclrc_0,
      avg_read_cycles_out(12 downto 0) => audio_interface_wrap_0_avg_read_cycles_out(12 downto 0),
      avg_write_cycles_out(12 downto 0) => audio_interface_wrap_0_avg_write_cycles_out(12 downto 0),
      axi_avg_read_cycles_out(12 downto 0) => audio_interface_wrap_0_axi_avg_read_cycles_out(12 downto 0),
      axi_avg_write_cycles_out(12 downto 0) => audio_interface_wrap_0_axi_avg_write_cycles_out(12 downto 0),
      axi_max_read_cycles_out(12 downto 0) => audio_interface_wrap_0_axi_max_read_cycles_out(12 downto 0),
      axi_max_write_cycles_out(12 downto 0) => audio_interface_wrap_0_axi_max_write_cycles_out(12 downto 0),
      axi_min_read_cycles_out(12 downto 0) => audio_interface_wrap_0_axi_min_read_cycles_out(12 downto 0),
      axi_min_write_cycles_out(12 downto 0) => audio_interface_wrap_0_axi_min_write_cycles_out(12 downto 0),
      debug_static_delay_in_data(33 downto 0) => audio_interface_wrap_0_debug_static_delay_in_data(33 downto 0),
      debug_static_delay_in_ready => audio_interface_wrap_0_debug_static_delay_in_ready,
      debug_static_delay_in_valid => audio_interface_wrap_0_debug_static_delay_in_valid,
      debug_static_delay_out_data(33 downto 0) => audio_interface_wrap_0_debug_static_delay_out_data(33 downto 0),
      debug_static_delay_out_ready => audio_interface_wrap_0_debug_static_delay_out_ready,
      debug_static_delay_out_valid => audio_interface_wrap_0_debug_static_delay_out_valid,
      m_axi_araddr(31 downto 0) => audio_interface_wrap_0_m_axi_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => audio_interface_wrap_0_m_axi_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => audio_interface_wrap_0_m_axi_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => audio_interface_wrap_0_m_axi_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => audio_interface_wrap_0_m_axi_ARPROT(2 downto 0),
      m_axi_arready => audio_interface_wrap_0_m_axi_ARREADY,
      m_axi_arsize(2 downto 0) => audio_interface_wrap_0_m_axi_ARSIZE(2 downto 0),
      m_axi_arvalid => audio_interface_wrap_0_m_axi_ARVALID,
      m_axi_awaddr(31 downto 0) => audio_interface_wrap_0_m_axi_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => audio_interface_wrap_0_m_axi_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => audio_interface_wrap_0_m_axi_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => audio_interface_wrap_0_m_axi_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => audio_interface_wrap_0_m_axi_AWPROT(2 downto 0),
      m_axi_awready => audio_interface_wrap_0_m_axi_AWREADY,
      m_axi_awsize(2 downto 0) => audio_interface_wrap_0_m_axi_AWSIZE(2 downto 0),
      m_axi_awvalid => audio_interface_wrap_0_m_axi_AWVALID,
      m_axi_bready => audio_interface_wrap_0_m_axi_BREADY,
      m_axi_bresp(1 downto 0) => audio_interface_wrap_0_m_axi_BRESP(1 downto 0),
      m_axi_bvalid => audio_interface_wrap_0_m_axi_BVALID,
      m_axi_rdata(31 downto 0) => audio_interface_wrap_0_m_axi_RDATA(31 downto 0),
      m_axi_rlast => audio_interface_wrap_0_m_axi_RLAST,
      m_axi_rready => audio_interface_wrap_0_m_axi_RREADY,
      m_axi_rresp(1 downto 0) => audio_interface_wrap_0_m_axi_RRESP(1 downto 0),
      m_axi_rvalid => audio_interface_wrap_0_m_axi_RVALID,
      m_axi_wdata(31 downto 0) => audio_interface_wrap_0_m_axi_WDATA(31 downto 0),
      m_axi_wlast => audio_interface_wrap_0_m_axi_WLAST,
      m_axi_wready => audio_interface_wrap_0_m_axi_WREADY,
      m_axi_wstrb(3 downto 0) => audio_interface_wrap_0_m_axi_WSTRB(3 downto 0),
      m_axi_wvalid => audio_interface_wrap_0_m_axi_WVALID,
      max_read_cycles_out(12 downto 0) => audio_interface_wrap_0_max_read_cycles_out(12 downto 0),
      max_write_cycles_out(12 downto 0) => audio_interface_wrap_0_max_write_cycles_out(12 downto 0),
      mclk => clk_wiz_1_clk_i2s,
      md_error => NLW_audio_interface_wrap_0_md_error_UNCONNECTED,
      min_read_cycles_out(12 downto 0) => audio_interface_wrap_0_min_read_cycles_out(12 downto 0),
      min_write_cycles_out(12 downto 0) => audio_interface_wrap_0_min_write_cycles_out(12 downto 0),
      reset => proc_sys_reset_0_peripheral_aresetn(0),
      sys_clk => clk_wiz_0_clk_50mhz
    );
audio_interface_wrap_1: component triple_delay_audio_interface_wrap_1_0
     port map (
      ac_bclk_0 => audio_interface_wrap_1_ac_bclk_0,
      ac_pbdat_0 => audio_interface_wrap_1_ac_pbdat_0,
      ac_pblrc_0 => audio_interface_wrap_1_ac_pblrc_0,
      ac_recdat_0 => ac_recdat_1,
      ac_reclrc_0 => audio_interface_wrap_1_ac_reclrc_0,
      avg_read_cycles_out(12 downto 0) => audio_interface_wrap_1_avg_read_cycles_out(12 downto 0),
      avg_write_cycles_out(12 downto 0) => audio_interface_wrap_1_avg_write_cycles_out(12 downto 0),
      axi_avg_read_cycles_out(12 downto 0) => audio_interface_wrap_1_axi_avg_read_cycles_out(12 downto 0),
      axi_avg_write_cycles_out(12 downto 0) => audio_interface_wrap_1_axi_avg_write_cycles_out(12 downto 0),
      axi_max_read_cycles_out(12 downto 0) => audio_interface_wrap_1_axi_max_read_cycles_out(12 downto 0),
      axi_max_write_cycles_out(12 downto 0) => audio_interface_wrap_1_axi_max_write_cycles_out(12 downto 0),
      axi_min_read_cycles_out(12 downto 0) => audio_interface_wrap_1_axi_min_read_cycles_out(12 downto 0),
      axi_min_write_cycles_out(12 downto 0) => audio_interface_wrap_1_axi_min_write_cycles_out(12 downto 0),
      debug_static_delay_in_data(33 downto 0) => NLW_audio_interface_wrap_1_debug_static_delay_in_data_UNCONNECTED(33 downto 0),
      debug_static_delay_in_ready => NLW_audio_interface_wrap_1_debug_static_delay_in_ready_UNCONNECTED,
      debug_static_delay_in_valid => NLW_audio_interface_wrap_1_debug_static_delay_in_valid_UNCONNECTED,
      debug_static_delay_out_data(33 downto 0) => NLW_audio_interface_wrap_1_debug_static_delay_out_data_UNCONNECTED(33 downto 0),
      debug_static_delay_out_ready => NLW_audio_interface_wrap_1_debug_static_delay_out_ready_UNCONNECTED,
      debug_static_delay_out_valid => NLW_audio_interface_wrap_1_debug_static_delay_out_valid_UNCONNECTED,
      m_axi_araddr(31 downto 0) => audio_interface_wrap_1_m_axi_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => audio_interface_wrap_1_m_axi_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => audio_interface_wrap_1_m_axi_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => audio_interface_wrap_1_m_axi_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => audio_interface_wrap_1_m_axi_ARPROT(2 downto 0),
      m_axi_arready => audio_interface_wrap_1_m_axi_ARREADY,
      m_axi_arsize(2 downto 0) => audio_interface_wrap_1_m_axi_ARSIZE(2 downto 0),
      m_axi_arvalid => audio_interface_wrap_1_m_axi_ARVALID,
      m_axi_awaddr(31 downto 0) => audio_interface_wrap_1_m_axi_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => audio_interface_wrap_1_m_axi_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => audio_interface_wrap_1_m_axi_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => audio_interface_wrap_1_m_axi_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => audio_interface_wrap_1_m_axi_AWPROT(2 downto 0),
      m_axi_awready => audio_interface_wrap_1_m_axi_AWREADY,
      m_axi_awsize(2 downto 0) => audio_interface_wrap_1_m_axi_AWSIZE(2 downto 0),
      m_axi_awvalid => audio_interface_wrap_1_m_axi_AWVALID,
      m_axi_bready => audio_interface_wrap_1_m_axi_BREADY,
      m_axi_bresp(1 downto 0) => audio_interface_wrap_1_m_axi_BRESP(1 downto 0),
      m_axi_bvalid => audio_interface_wrap_1_m_axi_BVALID,
      m_axi_rdata(31 downto 0) => audio_interface_wrap_1_m_axi_RDATA(31 downto 0),
      m_axi_rlast => audio_interface_wrap_1_m_axi_RLAST,
      m_axi_rready => audio_interface_wrap_1_m_axi_RREADY,
      m_axi_rresp(1 downto 0) => audio_interface_wrap_1_m_axi_RRESP(1 downto 0),
      m_axi_rvalid => audio_interface_wrap_1_m_axi_RVALID,
      m_axi_wdata(31 downto 0) => audio_interface_wrap_1_m_axi_WDATA(31 downto 0),
      m_axi_wlast => audio_interface_wrap_1_m_axi_WLAST,
      m_axi_wready => audio_interface_wrap_1_m_axi_WREADY,
      m_axi_wstrb(3 downto 0) => audio_interface_wrap_1_m_axi_WSTRB(3 downto 0),
      m_axi_wvalid => audio_interface_wrap_1_m_axi_WVALID,
      max_read_cycles_out(12 downto 0) => audio_interface_wrap_1_max_read_cycles_out(12 downto 0),
      max_write_cycles_out(12 downto 0) => audio_interface_wrap_1_max_write_cycles_out(12 downto 0),
      mclk => clk_wiz_1_clk_i2s,
      md_error => NLW_audio_interface_wrap_1_md_error_UNCONNECTED,
      min_read_cycles_out(12 downto 0) => audio_interface_wrap_1_min_read_cycles_out(12 downto 0),
      min_write_cycles_out(12 downto 0) => audio_interface_wrap_1_min_write_cycles_out(12 downto 0),
      reset => proc_sys_reset_0_peripheral_aresetn(0),
      sys_clk => clk_wiz_0_clk_50mhz
    );
audio_interface_wrap_2: component triple_delay_audio_interface_wrap_1_1
     port map (
      ac_bclk_0 => audio_interface_wrap_2_ac_bclk_0,
      ac_pbdat_0 => audio_interface_wrap_2_ac_pbdat_0,
      ac_pblrc_0 => audio_interface_wrap_2_ac_pblrc_0,
      ac_recdat_0 => ac_recdat_1,
      ac_reclrc_0 => audio_interface_wrap_2_ac_reclrc_0,
      avg_read_cycles_out(12 downto 0) => audio_interface_wrap_2_avg_read_cycles_out(12 downto 0),
      avg_write_cycles_out(12 downto 0) => audio_interface_wrap_2_avg_write_cycles_out(12 downto 0),
      axi_avg_read_cycles_out(12 downto 0) => audio_interface_wrap_2_axi_avg_read_cycles_out(12 downto 0),
      axi_avg_write_cycles_out(12 downto 0) => audio_interface_wrap_2_axi_avg_write_cycles_out(12 downto 0),
      axi_max_read_cycles_out(12 downto 0) => audio_interface_wrap_2_axi_max_read_cycles_out(12 downto 0),
      axi_max_write_cycles_out(12 downto 0) => audio_interface_wrap_2_axi_max_write_cycles_out(12 downto 0),
      axi_min_read_cycles_out(12 downto 0) => audio_interface_wrap_2_axi_min_read_cycles_out(12 downto 0),
      axi_min_write_cycles_out(12 downto 0) => audio_interface_wrap_2_axi_min_write_cycles_out(12 downto 0),
      debug_static_delay_in_data(33 downto 0) => NLW_audio_interface_wrap_2_debug_static_delay_in_data_UNCONNECTED(33 downto 0),
      debug_static_delay_in_ready => NLW_audio_interface_wrap_2_debug_static_delay_in_ready_UNCONNECTED,
      debug_static_delay_in_valid => NLW_audio_interface_wrap_2_debug_static_delay_in_valid_UNCONNECTED,
      debug_static_delay_out_data(33 downto 0) => NLW_audio_interface_wrap_2_debug_static_delay_out_data_UNCONNECTED(33 downto 0),
      debug_static_delay_out_ready => NLW_audio_interface_wrap_2_debug_static_delay_out_ready_UNCONNECTED,
      debug_static_delay_out_valid => NLW_audio_interface_wrap_2_debug_static_delay_out_valid_UNCONNECTED,
      m_axi_araddr(31 downto 0) => audio_interface_wrap_2_m_axi_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => audio_interface_wrap_2_m_axi_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => audio_interface_wrap_2_m_axi_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => audio_interface_wrap_2_m_axi_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => audio_interface_wrap_2_m_axi_ARPROT(2 downto 0),
      m_axi_arready => audio_interface_wrap_2_m_axi_ARREADY,
      m_axi_arsize(2 downto 0) => audio_interface_wrap_2_m_axi_ARSIZE(2 downto 0),
      m_axi_arvalid => audio_interface_wrap_2_m_axi_ARVALID,
      m_axi_awaddr(31 downto 0) => audio_interface_wrap_2_m_axi_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => audio_interface_wrap_2_m_axi_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => audio_interface_wrap_2_m_axi_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => audio_interface_wrap_2_m_axi_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => audio_interface_wrap_2_m_axi_AWPROT(2 downto 0),
      m_axi_awready => audio_interface_wrap_2_m_axi_AWREADY,
      m_axi_awsize(2 downto 0) => audio_interface_wrap_2_m_axi_AWSIZE(2 downto 0),
      m_axi_awvalid => audio_interface_wrap_2_m_axi_AWVALID,
      m_axi_bready => audio_interface_wrap_2_m_axi_BREADY,
      m_axi_bresp(1 downto 0) => audio_interface_wrap_2_m_axi_BRESP(1 downto 0),
      m_axi_bvalid => audio_interface_wrap_2_m_axi_BVALID,
      m_axi_rdata(31 downto 0) => audio_interface_wrap_2_m_axi_RDATA(31 downto 0),
      m_axi_rlast => audio_interface_wrap_2_m_axi_RLAST,
      m_axi_rready => audio_interface_wrap_2_m_axi_RREADY,
      m_axi_rresp(1 downto 0) => audio_interface_wrap_2_m_axi_RRESP(1 downto 0),
      m_axi_rvalid => audio_interface_wrap_2_m_axi_RVALID,
      m_axi_wdata(31 downto 0) => audio_interface_wrap_2_m_axi_WDATA(31 downto 0),
      m_axi_wlast => audio_interface_wrap_2_m_axi_WLAST,
      m_axi_wready => audio_interface_wrap_2_m_axi_WREADY,
      m_axi_wstrb(3 downto 0) => audio_interface_wrap_2_m_axi_WSTRB(3 downto 0),
      m_axi_wvalid => audio_interface_wrap_2_m_axi_WVALID,
      max_read_cycles_out(12 downto 0) => audio_interface_wrap_2_max_read_cycles_out(12 downto 0),
      max_write_cycles_out(12 downto 0) => audio_interface_wrap_2_max_write_cycles_out(12 downto 0),
      mclk => clk_wiz_1_clk_i2s,
      md_error => NLW_audio_interface_wrap_2_md_error_UNCONNECTED,
      min_read_cycles_out(12 downto 0) => audio_interface_wrap_2_min_read_cycles_out(12 downto 0),
      min_write_cycles_out(12 downto 0) => audio_interface_wrap_2_min_write_cycles_out(12 downto 0),
      reset => proc_sys_reset_0_peripheral_aresetn(0),
      sys_clk => clk_wiz_0_clk_50mhz
    );
axi_interconnect_0: entity work.triple_delay_axi_interconnect_0_0
     port map (
      ACLK => clk_wiz_0_clk_50mhz,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_50mhz,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_50mhz,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => audio_interface_wrap_0_m_axi_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => audio_interface_wrap_0_m_axi_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => audio_interface_wrap_0_m_axi_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => audio_interface_wrap_0_m_axi_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => audio_interface_wrap_0_m_axi_ARPROT(2 downto 0),
      S00_AXI_arready => audio_interface_wrap_0_m_axi_ARREADY,
      S00_AXI_arsize(2 downto 0) => audio_interface_wrap_0_m_axi_ARSIZE(2 downto 0),
      S00_AXI_arvalid => audio_interface_wrap_0_m_axi_ARVALID,
      S00_AXI_awaddr(31 downto 0) => audio_interface_wrap_0_m_axi_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => audio_interface_wrap_0_m_axi_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => audio_interface_wrap_0_m_axi_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => audio_interface_wrap_0_m_axi_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => audio_interface_wrap_0_m_axi_AWPROT(2 downto 0),
      S00_AXI_awready => audio_interface_wrap_0_m_axi_AWREADY,
      S00_AXI_awsize(2 downto 0) => audio_interface_wrap_0_m_axi_AWSIZE(2 downto 0),
      S00_AXI_awvalid => audio_interface_wrap_0_m_axi_AWVALID,
      S00_AXI_bready => audio_interface_wrap_0_m_axi_BREADY,
      S00_AXI_bresp(1 downto 0) => audio_interface_wrap_0_m_axi_BRESP(1 downto 0),
      S00_AXI_bvalid => audio_interface_wrap_0_m_axi_BVALID,
      S00_AXI_rdata(31 downto 0) => audio_interface_wrap_0_m_axi_RDATA(31 downto 0),
      S00_AXI_rlast => audio_interface_wrap_0_m_axi_RLAST,
      S00_AXI_rready => audio_interface_wrap_0_m_axi_RREADY,
      S00_AXI_rresp(1 downto 0) => audio_interface_wrap_0_m_axi_RRESP(1 downto 0),
      S00_AXI_rvalid => audio_interface_wrap_0_m_axi_RVALID,
      S00_AXI_wdata(31 downto 0) => audio_interface_wrap_0_m_axi_WDATA(31 downto 0),
      S00_AXI_wlast => audio_interface_wrap_0_m_axi_WLAST,
      S00_AXI_wready => audio_interface_wrap_0_m_axi_WREADY,
      S00_AXI_wstrb(3 downto 0) => audio_interface_wrap_0_m_axi_WSTRB(3 downto 0),
      S00_AXI_wvalid => audio_interface_wrap_0_m_axi_WVALID
    );
axi_interconnect_1: entity work.triple_delay_axi_interconnect_1_0
     port map (
      ACLK => clk_wiz_0_clk_50mhz,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_50mhz,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_interconnect_1_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_interconnect_1_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_interconnect_1_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_interconnect_1_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_1_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_50mhz,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => audio_interface_wrap_1_m_axi_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => audio_interface_wrap_1_m_axi_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => audio_interface_wrap_1_m_axi_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => audio_interface_wrap_1_m_axi_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => audio_interface_wrap_1_m_axi_ARPROT(2 downto 0),
      S00_AXI_arready => audio_interface_wrap_1_m_axi_ARREADY,
      S00_AXI_arsize(2 downto 0) => audio_interface_wrap_1_m_axi_ARSIZE(2 downto 0),
      S00_AXI_arvalid => audio_interface_wrap_1_m_axi_ARVALID,
      S00_AXI_awaddr(31 downto 0) => audio_interface_wrap_1_m_axi_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => audio_interface_wrap_1_m_axi_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => audio_interface_wrap_1_m_axi_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => audio_interface_wrap_1_m_axi_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => audio_interface_wrap_1_m_axi_AWPROT(2 downto 0),
      S00_AXI_awready => audio_interface_wrap_1_m_axi_AWREADY,
      S00_AXI_awsize(2 downto 0) => audio_interface_wrap_1_m_axi_AWSIZE(2 downto 0),
      S00_AXI_awvalid => audio_interface_wrap_1_m_axi_AWVALID,
      S00_AXI_bready => audio_interface_wrap_1_m_axi_BREADY,
      S00_AXI_bresp(1 downto 0) => audio_interface_wrap_1_m_axi_BRESP(1 downto 0),
      S00_AXI_bvalid => audio_interface_wrap_1_m_axi_BVALID,
      S00_AXI_rdata(31 downto 0) => audio_interface_wrap_1_m_axi_RDATA(31 downto 0),
      S00_AXI_rlast => audio_interface_wrap_1_m_axi_RLAST,
      S00_AXI_rready => audio_interface_wrap_1_m_axi_RREADY,
      S00_AXI_rresp(1 downto 0) => audio_interface_wrap_1_m_axi_RRESP(1 downto 0),
      S00_AXI_rvalid => audio_interface_wrap_1_m_axi_RVALID,
      S00_AXI_wdata(31 downto 0) => audio_interface_wrap_1_m_axi_WDATA(31 downto 0),
      S00_AXI_wlast => audio_interface_wrap_1_m_axi_WLAST,
      S00_AXI_wready => audio_interface_wrap_1_m_axi_WREADY,
      S00_AXI_wstrb(3 downto 0) => audio_interface_wrap_1_m_axi_WSTRB(3 downto 0),
      S00_AXI_wvalid => audio_interface_wrap_1_m_axi_WVALID
    );
axi_interconnect_2: entity work.triple_delay_axi_interconnect_1_1
     port map (
      ACLK => clk_wiz_0_clk_50mhz,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_50mhz,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_2_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_2_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_2_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_interconnect_2_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_interconnect_2_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_2_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_2_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_2_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_2_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_2_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_2_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_2_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_2_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_interconnect_2_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_interconnect_2_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_2_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_2_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_2_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_2_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_2_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_2_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_2_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_2_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_2_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_interconnect_2_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_2_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_2_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_2_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_2_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_interconnect_2_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_2_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_2_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_2_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_50mhz,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => audio_interface_wrap_2_m_axi_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => audio_interface_wrap_2_m_axi_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => audio_interface_wrap_2_m_axi_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => audio_interface_wrap_2_m_axi_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => audio_interface_wrap_2_m_axi_ARPROT(2 downto 0),
      S00_AXI_arready => audio_interface_wrap_2_m_axi_ARREADY,
      S00_AXI_arsize(2 downto 0) => audio_interface_wrap_2_m_axi_ARSIZE(2 downto 0),
      S00_AXI_arvalid => audio_interface_wrap_2_m_axi_ARVALID,
      S00_AXI_awaddr(31 downto 0) => audio_interface_wrap_2_m_axi_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => audio_interface_wrap_2_m_axi_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => audio_interface_wrap_2_m_axi_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => audio_interface_wrap_2_m_axi_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => audio_interface_wrap_2_m_axi_AWPROT(2 downto 0),
      S00_AXI_awready => audio_interface_wrap_2_m_axi_AWREADY,
      S00_AXI_awsize(2 downto 0) => audio_interface_wrap_2_m_axi_AWSIZE(2 downto 0),
      S00_AXI_awvalid => audio_interface_wrap_2_m_axi_AWVALID,
      S00_AXI_bready => audio_interface_wrap_2_m_axi_BREADY,
      S00_AXI_bresp(1 downto 0) => audio_interface_wrap_2_m_axi_BRESP(1 downto 0),
      S00_AXI_bvalid => audio_interface_wrap_2_m_axi_BVALID,
      S00_AXI_rdata(31 downto 0) => audio_interface_wrap_2_m_axi_RDATA(31 downto 0),
      S00_AXI_rlast => audio_interface_wrap_2_m_axi_RLAST,
      S00_AXI_rready => audio_interface_wrap_2_m_axi_RREADY,
      S00_AXI_rresp(1 downto 0) => audio_interface_wrap_2_m_axi_RRESP(1 downto 0),
      S00_AXI_rvalid => audio_interface_wrap_2_m_axi_RVALID,
      S00_AXI_wdata(31 downto 0) => audio_interface_wrap_2_m_axi_WDATA(31 downto 0),
      S00_AXI_wlast => audio_interface_wrap_2_m_axi_WLAST,
      S00_AXI_wready => audio_interface_wrap_2_m_axi_WREADY,
      S00_AXI_wstrb(3 downto 0) => audio_interface_wrap_2_m_axi_WSTRB(3 downto 0),
      S00_AXI_wvalid => audio_interface_wrap_2_m_axi_WVALID
    );
clk_wiz_0: component triple_delay_clk_wiz_0_0
     port map (
      clk_50mhz => clk_wiz_0_clk_50mhz,
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
clk_wiz_1: component triple_delay_clk_wiz_1_0
     port map (
      clk_24mhz => clk_wiz_1_clk_24mhz,
      clk_i2s => clk_wiz_1_clk_i2s,
      clk_in1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_1_locked
    );
mux4to1_0: component triple_delay_mux4to1_0_0
     port map (
      btn1 => btn0_1,
      btn2 => btn1_1,
      btn3 => btn2_1,
      btn4 => btn3_1,
      clk => clk_wiz_0_clk_50mhz,
      mux_out1 => mux4to1_0_mux_out1,
      mux_out2 => mux4to1_0_mux_out2,
      mux_out3 => mux4to1_0_mux_out3,
      mux_out4 => mux4to1_0_mux_out4,
      reset => proc_sys_reset_0_peripheral_aresetn(0),
      srca1 => audio_interface_wrap_0_ac_bclk_0,
      srca2 => audio_interface_wrap_0_ac_pbdat_0,
      srca3 => audio_interface_wrap_0_ac_pblrc_0,
      srca4 => audio_interface_wrap_0_ac_reclrc_0,
      srcb1 => audio_interface_wrap_1_ac_bclk_0,
      srcb2 => audio_interface_wrap_1_ac_pbdat_0,
      srcb3 => audio_interface_wrap_1_ac_pblrc_0,
      srcb4 => audio_interface_wrap_1_ac_reclrc_0,
      srcc1 => audio_interface_wrap_2_ac_bclk_0,
      srcc2 => audio_interface_wrap_2_ac_pbdat_0,
      srcc3 => audio_interface_wrap_2_ac_pblrc_0,
      srcc4 => audio_interface_wrap_2_ac_reclrc_0,
      srcd1 => '0',
      srcd2 => '0',
      srcd3 => '0',
      srcd4 => '0'
    );
proc_sys_reset_0: component triple_delay_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_1_locked,
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => sys_clock_1
    );
processing_system7_0: component triple_delay_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      I2C0_SCL_I => processing_system7_0_IIC_0_SCL_I,
      I2C0_SCL_O => processing_system7_0_IIC_0_SCL_O,
      I2C0_SCL_T => processing_system7_0_IIC_0_SCL_T,
      I2C0_SDA_I => processing_system7_0_IIC_0_SDA_I,
      I2C0_SDA_O => processing_system7_0_IIC_0_SDA_O,
      I2C0_SDA_T => processing_system7_0_IIC_0_SDA_T,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => clk_wiz_0_clk_out1,
      M_AXI_GP0_ARADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARREADY => '0',
      M_AXI_GP0_ARSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARVALID => NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED,
      M_AXI_GP0_AWADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWREADY => '0',
      M_AXI_GP0_AWSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWVALID => NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED,
      M_AXI_GP0_BID(11 downto 0) => B"000000000000",
      M_AXI_GP0_BREADY => NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED,
      M_AXI_GP0_BRESP(1 downto 0) => B"00",
      M_AXI_GP0_BVALID => '0',
      M_AXI_GP0_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI_GP0_RID(11 downto 0) => B"000000000000",
      M_AXI_GP0_RLAST => '0',
      M_AXI_GP0_RREADY => NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED,
      M_AXI_GP0_RRESP(1 downto 0) => B"00",
      M_AXI_GP0_RVALID => '0',
      M_AXI_GP0_WDATA(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_WLAST => NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED,
      M_AXI_GP0_WREADY => '0',
      M_AXI_GP0_WSTRB(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_GP0_WVALID => NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => clk_wiz_0_clk_50mhz,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_interconnect_0_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_interconnect_0_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_interconnect_0_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_interconnect_0_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => axi_interconnect_0_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_interconnect_0_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => axi_interconnect_0_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_interconnect_0_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_interconnect_0_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => axi_interconnect_0_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_interconnect_0_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      S_AXI_HP0_WVALID => axi_interconnect_0_M00_AXI_WVALID,
      S_AXI_HP1_ACLK => clk_wiz_0_clk_50mhz,
      S_AXI_HP1_ARADDR(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP1_ARBURST(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP1_ARCACHE(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP1_ARID(5 downto 0) => B"000000",
      S_AXI_HP1_ARLEN(3 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP1_ARLOCK(1 downto 0) => axi_interconnect_1_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP1_ARPROT(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP1_ARQOS(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP1_ARREADY => axi_interconnect_1_M00_AXI_ARREADY,
      S_AXI_HP1_ARSIZE(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP1_ARVALID => axi_interconnect_1_M00_AXI_ARVALID,
      S_AXI_HP1_AWADDR(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP1_AWBURST(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP1_AWCACHE(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP1_AWID(5 downto 0) => B"000000",
      S_AXI_HP1_AWLEN(3 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP1_AWLOCK(1 downto 0) => axi_interconnect_1_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP1_AWPROT(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP1_AWQOS(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP1_AWREADY => axi_interconnect_1_M00_AXI_AWREADY,
      S_AXI_HP1_AWSIZE(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP1_AWVALID => axi_interconnect_1_M00_AXI_AWVALID,
      S_AXI_HP1_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_BREADY => axi_interconnect_1_M00_AXI_BREADY,
      S_AXI_HP1_BRESP(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP1_BVALID => axi_interconnect_1_M00_AXI_BVALID,
      S_AXI_HP1_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_RDATA(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      S_AXI_HP1_RDISSUECAP1_EN => '0',
      S_AXI_HP1_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_RLAST => axi_interconnect_1_M00_AXI_RLAST,
      S_AXI_HP1_RREADY => axi_interconnect_1_M00_AXI_RREADY,
      S_AXI_HP1_RRESP(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP1_RVALID => axi_interconnect_1_M00_AXI_RVALID,
      S_AXI_HP1_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WDATA(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      S_AXI_HP1_WID(5 downto 0) => B"000000",
      S_AXI_HP1_WLAST => axi_interconnect_1_M00_AXI_WLAST,
      S_AXI_HP1_WREADY => axi_interconnect_1_M00_AXI_WREADY,
      S_AXI_HP1_WRISSUECAP1_EN => '0',
      S_AXI_HP1_WSTRB(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      S_AXI_HP1_WVALID => axi_interconnect_1_M00_AXI_WVALID,
      S_AXI_HP2_ACLK => clk_wiz_0_clk_50mhz,
      S_AXI_HP2_ARADDR(31 downto 0) => axi_interconnect_2_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP2_ARBURST(1 downto 0) => axi_interconnect_2_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP2_ARCACHE(3 downto 0) => axi_interconnect_2_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP2_ARID(5 downto 0) => B"000000",
      S_AXI_HP2_ARLEN(3 downto 0) => axi_interconnect_2_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP2_ARLOCK(1 downto 0) => axi_interconnect_2_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP2_ARPROT(2 downto 0) => axi_interconnect_2_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP2_ARQOS(3 downto 0) => axi_interconnect_2_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP2_ARREADY => axi_interconnect_2_M00_AXI_ARREADY,
      S_AXI_HP2_ARSIZE(2 downto 0) => axi_interconnect_2_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP2_ARVALID => axi_interconnect_2_M00_AXI_ARVALID,
      S_AXI_HP2_AWADDR(31 downto 0) => axi_interconnect_2_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP2_AWBURST(1 downto 0) => axi_interconnect_2_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP2_AWCACHE(3 downto 0) => axi_interconnect_2_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP2_AWID(5 downto 0) => B"000000",
      S_AXI_HP2_AWLEN(3 downto 0) => axi_interconnect_2_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP2_AWLOCK(1 downto 0) => axi_interconnect_2_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP2_AWPROT(2 downto 0) => axi_interconnect_2_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP2_AWQOS(3 downto 0) => axi_interconnect_2_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP2_AWREADY => axi_interconnect_2_M00_AXI_AWREADY,
      S_AXI_HP2_AWSIZE(2 downto 0) => axi_interconnect_2_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP2_AWVALID => axi_interconnect_2_M00_AXI_AWVALID,
      S_AXI_HP2_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP2_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_BREADY => axi_interconnect_2_M00_AXI_BREADY,
      S_AXI_HP2_BRESP(1 downto 0) => axi_interconnect_2_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP2_BVALID => axi_interconnect_2_M00_AXI_BVALID,
      S_AXI_HP2_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP2_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP2_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP2_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_RDATA(31 downto 0) => axi_interconnect_2_M00_AXI_RDATA(31 downto 0),
      S_AXI_HP2_RDISSUECAP1_EN => '0',
      S_AXI_HP2_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP2_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_RLAST => axi_interconnect_2_M00_AXI_RLAST,
      S_AXI_HP2_RREADY => axi_interconnect_2_M00_AXI_RREADY,
      S_AXI_HP2_RRESP(1 downto 0) => axi_interconnect_2_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP2_RVALID => axi_interconnect_2_M00_AXI_RVALID,
      S_AXI_HP2_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP2_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP2_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP2_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_WDATA(31 downto 0) => axi_interconnect_2_M00_AXI_WDATA(31 downto 0),
      S_AXI_HP2_WID(5 downto 0) => B"000000",
      S_AXI_HP2_WLAST => axi_interconnect_2_M00_AXI_WLAST,
      S_AXI_HP2_WREADY => axi_interconnect_2_M00_AXI_WREADY,
      S_AXI_HP2_WRISSUECAP1_EN => '0',
      S_AXI_HP2_WSTRB(3 downto 0) => axi_interconnect_2_M00_AXI_WSTRB(3 downto 0),
      S_AXI_HP2_WVALID => axi_interconnect_2_M00_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
system_ila_0: component triple_delay_system_ila_0_0
     port map (
      SLOT_0_AXI_araddr(31 downto 0) => audio_interface_wrap_0_m_axi_ARADDR(31 downto 0),
      SLOT_0_AXI_arburst(1 downto 0) => audio_interface_wrap_0_m_axi_ARBURST(1 downto 0),
      SLOT_0_AXI_arcache(3 downto 0) => audio_interface_wrap_0_m_axi_ARCACHE(3 downto 0),
      SLOT_0_AXI_arlen(7 downto 0) => audio_interface_wrap_0_m_axi_ARLEN(7 downto 0),
      SLOT_0_AXI_arprot(2 downto 0) => audio_interface_wrap_0_m_axi_ARPROT(2 downto 0),
      SLOT_0_AXI_arready => audio_interface_wrap_0_m_axi_ARREADY,
      SLOT_0_AXI_arsize(2 downto 0) => audio_interface_wrap_0_m_axi_ARSIZE(2 downto 0),
      SLOT_0_AXI_arvalid => audio_interface_wrap_0_m_axi_ARVALID,
      SLOT_0_AXI_awaddr(31 downto 0) => audio_interface_wrap_0_m_axi_AWADDR(31 downto 0),
      SLOT_0_AXI_awburst(1 downto 0) => audio_interface_wrap_0_m_axi_AWBURST(1 downto 0),
      SLOT_0_AXI_awcache(3 downto 0) => audio_interface_wrap_0_m_axi_AWCACHE(3 downto 0),
      SLOT_0_AXI_awlen(7 downto 0) => audio_interface_wrap_0_m_axi_AWLEN(7 downto 0),
      SLOT_0_AXI_awprot(2 downto 0) => audio_interface_wrap_0_m_axi_AWPROT(2 downto 0),
      SLOT_0_AXI_awready => audio_interface_wrap_0_m_axi_AWREADY,
      SLOT_0_AXI_awsize(2 downto 0) => audio_interface_wrap_0_m_axi_AWSIZE(2 downto 0),
      SLOT_0_AXI_awvalid => audio_interface_wrap_0_m_axi_AWVALID,
      SLOT_0_AXI_bready => audio_interface_wrap_0_m_axi_BREADY,
      SLOT_0_AXI_bresp(1 downto 0) => audio_interface_wrap_0_m_axi_BRESP(1 downto 0),
      SLOT_0_AXI_bvalid => audio_interface_wrap_0_m_axi_BVALID,
      SLOT_0_AXI_rdata(31 downto 0) => audio_interface_wrap_0_m_axi_RDATA(31 downto 0),
      SLOT_0_AXI_rlast => audio_interface_wrap_0_m_axi_RLAST,
      SLOT_0_AXI_rready => audio_interface_wrap_0_m_axi_RREADY,
      SLOT_0_AXI_rresp(1 downto 0) => audio_interface_wrap_0_m_axi_RRESP(1 downto 0),
      SLOT_0_AXI_rvalid => audio_interface_wrap_0_m_axi_RVALID,
      SLOT_0_AXI_wdata(31 downto 0) => audio_interface_wrap_0_m_axi_WDATA(31 downto 0),
      SLOT_0_AXI_wlast => audio_interface_wrap_0_m_axi_WLAST,
      SLOT_0_AXI_wready => audio_interface_wrap_0_m_axi_WREADY,
      SLOT_0_AXI_wstrb(3 downto 0) => audio_interface_wrap_0_m_axi_WSTRB(3 downto 0),
      SLOT_0_AXI_wvalid => audio_interface_wrap_0_m_axi_WVALID,
      clk => clk_wiz_0_clk_50mhz,
      probe0(0) => ac_recdat_1,
      probe1(0) => '0',
      probe10(12 downto 0) => audio_interface_wrap_0_max_read_cycles_out(12 downto 0),
      probe11(12 downto 0) => audio_interface_wrap_0_max_write_cycles_out(12 downto 0),
      probe12(12 downto 0) => audio_interface_wrap_0_min_read_cycles_out(12 downto 0),
      probe13(12 downto 0) => audio_interface_wrap_0_min_write_cycles_out(12 downto 0),
      probe14(12 downto 0) => audio_interface_wrap_1_avg_read_cycles_out(12 downto 0),
      probe15(12 downto 0) => audio_interface_wrap_1_avg_write_cycles_out(12 downto 0),
      probe16(12 downto 0) => audio_interface_wrap_1_max_read_cycles_out(12 downto 0),
      probe17(12 downto 0) => audio_interface_wrap_1_max_write_cycles_out(12 downto 0),
      probe18(12 downto 0) => audio_interface_wrap_1_min_read_cycles_out(12 downto 0),
      probe19(12 downto 0) => audio_interface_wrap_1_min_write_cycles_out(12 downto 0),
      probe2(0) => audio_interface_wrap_0_debug_static_delay_in_ready,
      probe20(12 downto 0) => audio_interface_wrap_2_avg_read_cycles_out(12 downto 0),
      probe21(12 downto 0) => audio_interface_wrap_2_avg_write_cycles_out(12 downto 0),
      probe22(12 downto 0) => audio_interface_wrap_2_max_read_cycles_out(12 downto 0),
      probe23(12 downto 0) => audio_interface_wrap_2_max_write_cycles_out(12 downto 0),
      probe24(12 downto 0) => audio_interface_wrap_2_min_read_cycles_out(12 downto 0),
      probe25(12 downto 0) => audio_interface_wrap_2_min_write_cycles_out(12 downto 0),
      probe26(12 downto 0) => audio_interface_wrap_0_axi_avg_read_cycles_out(12 downto 0),
      probe27(12 downto 0) => audio_interface_wrap_0_axi_avg_write_cycles_out(12 downto 0),
      probe28(12 downto 0) => audio_interface_wrap_0_axi_max_read_cycles_out(12 downto 0),
      probe29(12 downto 0) => audio_interface_wrap_0_axi_max_write_cycles_out(12 downto 0),
      probe3(0) => audio_interface_wrap_0_debug_static_delay_in_valid,
      probe30(12 downto 0) => audio_interface_wrap_0_axi_min_read_cycles_out(12 downto 0),
      probe31(12 downto 0) => audio_interface_wrap_0_axi_min_write_cycles_out(12 downto 0),
      probe32(12 downto 0) => audio_interface_wrap_2_axi_avg_read_cycles_out(12 downto 0),
      probe33(12 downto 0) => audio_interface_wrap_2_axi_avg_write_cycles_out(12 downto 0),
      probe34(12 downto 0) => audio_interface_wrap_2_axi_max_read_cycles_out(12 downto 0),
      probe35(12 downto 0) => audio_interface_wrap_2_axi_max_write_cycles_out(12 downto 0),
      probe36(12 downto 0) => audio_interface_wrap_2_axi_min_read_cycles_out(12 downto 0),
      probe37(12 downto 0) => audio_interface_wrap_2_axi_min_write_cycles_out(12 downto 0),
      probe38(12 downto 0) => audio_interface_wrap_1_axi_avg_read_cycles_out(12 downto 0),
      probe39(12 downto 0) => audio_interface_wrap_1_axi_avg_write_cycles_out(12 downto 0),
      probe4(33 downto 0) => audio_interface_wrap_0_debug_static_delay_in_data(33 downto 0),
      probe40(12 downto 0) => audio_interface_wrap_1_axi_max_read_cycles_out(12 downto 0),
      probe41(12 downto 0) => audio_interface_wrap_1_axi_max_write_cycles_out(12 downto 0),
      probe42(12 downto 0) => audio_interface_wrap_1_axi_min_read_cycles_out(12 downto 0),
      probe43(12 downto 0) => audio_interface_wrap_1_axi_min_write_cycles_out(12 downto 0),
      probe5(0) => audio_interface_wrap_0_debug_static_delay_out_ready,
      probe6(0) => audio_interface_wrap_0_debug_static_delay_out_valid,
      probe7(33 downto 0) => audio_interface_wrap_0_debug_static_delay_out_data(33 downto 0),
      probe8(12 downto 0) => audio_interface_wrap_0_avg_read_cycles_out(12 downto 0),
      probe9(12 downto 0) => audio_interface_wrap_0_avg_write_cycles_out(12 downto 0),
      resetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
end STRUCTURE;
