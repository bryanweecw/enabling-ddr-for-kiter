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

ENTITY design_1_audio_interface_wrap_0_0 IS
  PORT (
    ac_bclk_0 : OUT STD_LOGIC;
    ac_pbdat_0 : OUT STD_LOGIC;
    ac_pblrc_0 : OUT STD_LOGIC;
    ac_recdat_0 : IN STD_LOGIC;
    ac_reclrc_0 : OUT STD_LOGIC;
    mclk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    sys_clk : IN STD_LOGIC;
    ui_in_numeric_addr : IN STD_LOGIC_VECTOR(77 DOWNTO 0);
    ui_in_numeric_value : IN STD_LOGIC_VECTOR(33 DOWNTO 0);
    ui_numeric_write_enable : IN STD_LOGIC;
    m_axi_aclk0 : IN STD_LOGIC;
    m_axi_aresetn0 : IN STD_LOGIC;
    md_error0 : OUT STD_LOGIC;
    m_axi_arready0 : IN STD_LOGIC;
    m_axi_arvalid0 : OUT STD_LOGIC;
    m_axi_araddr0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready0 : OUT STD_LOGIC;
    m_axi_rvalid0 : IN STD_LOGIC;
    m_axi_rdata0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast0 : IN STD_LOGIC;
    m_axi_awready0 : IN STD_LOGIC;
    m_axi_awvalid0 : OUT STD_LOGIC;
    m_axi_awaddr0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready0 : IN STD_LOGIC;
    m_axi_wvalid0 : OUT STD_LOGIC;
    m_axi_wdata0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast0 : OUT STD_LOGIC;
    m_axi_bready0 : OUT STD_LOGIC;
    m_axi_bvalid0 : IN STD_LOGIC;
    m_axi_bresp0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_aclk1 : IN STD_LOGIC;
    m_axi_aresetn1 : IN STD_LOGIC;
    md_error1 : OUT STD_LOGIC;
    m_axi_arready1 : IN STD_LOGIC;
    m_axi_arvalid1 : OUT STD_LOGIC;
    m_axi_araddr1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready1 : OUT STD_LOGIC;
    m_axi_rvalid1 : IN STD_LOGIC;
    m_axi_rdata1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast1 : IN STD_LOGIC;
    m_axi_awready1 : IN STD_LOGIC;
    m_axi_awvalid1 : OUT STD_LOGIC;
    m_axi_awaddr1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready1 : IN STD_LOGIC;
    m_axi_wvalid1 : OUT STD_LOGIC;
    m_axi_wdata1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast1 : OUT STD_LOGIC;
    m_axi_bready1 : OUT STD_LOGIC;
    m_axi_bvalid1 : IN STD_LOGIC;
    m_axi_bresp1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_aclk2 : IN STD_LOGIC;
    m_axi_aresetn2 : IN STD_LOGIC;
    md_error2 : OUT STD_LOGIC;
    m_axi_arready2 : IN STD_LOGIC;
    m_axi_arvalid2 : OUT STD_LOGIC;
    m_axi_araddr2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready2 : OUT STD_LOGIC;
    m_axi_rvalid2 : IN STD_LOGIC;
    m_axi_rdata2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast2 : IN STD_LOGIC;
    m_axi_awready2 : IN STD_LOGIC;
    m_axi_awvalid2 : OUT STD_LOGIC;
    m_axi_awaddr2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready2 : IN STD_LOGIC;
    m_axi_wvalid2 : OUT STD_LOGIC;
    m_axi_wdata2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast2 : OUT STD_LOGIC;
    m_axi_bready2 : OUT STD_LOGIC;
    m_axi_bvalid2 : IN STD_LOGIC;
    m_axi_bresp2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_aclk3 : IN STD_LOGIC;
    m_axi_aresetn3 : IN STD_LOGIC;
    md_error3 : OUT STD_LOGIC;
    m_axi_arready3 : IN STD_LOGIC;
    m_axi_arvalid3 : OUT STD_LOGIC;
    m_axi_araddr3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready3 : OUT STD_LOGIC;
    m_axi_rvalid3 : IN STD_LOGIC;
    m_axi_rdata3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast3 : IN STD_LOGIC;
    m_axi_awready3 : IN STD_LOGIC;
    m_axi_awvalid3 : OUT STD_LOGIC;
    m_axi_awaddr3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready3 : IN STD_LOGIC;
    m_axi_wvalid3 : OUT STD_LOGIC;
    m_axi_wdata3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast3 : OUT STD_LOGIC;
    m_axi_bready3 : OUT STD_LOGIC;
    m_axi_bvalid3 : IN STD_LOGIC;
    m_axi_bresp3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_aclk4 : IN STD_LOGIC;
    m_axi_aresetn4 : IN STD_LOGIC;
    md_error4 : OUT STD_LOGIC;
    m_axi_arready4 : IN STD_LOGIC;
    m_axi_arvalid4 : OUT STD_LOGIC;
    m_axi_araddr4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst4 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready4 : OUT STD_LOGIC;
    m_axi_rvalid4 : IN STD_LOGIC;
    m_axi_rdata4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp4 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast4 : IN STD_LOGIC;
    m_axi_awready4 : IN STD_LOGIC;
    m_axi_awvalid4 : OUT STD_LOGIC;
    m_axi_awaddr4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst4 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready4 : IN STD_LOGIC;
    m_axi_wvalid4 : OUT STD_LOGIC;
    m_axi_wdata4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast4 : OUT STD_LOGIC;
    m_axi_bready4 : OUT STD_LOGIC;
    m_axi_bvalid4 : IN STD_LOGIC;
    m_axi_bresp4 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_aclk5 : IN STD_LOGIC;
    m_axi_aresetn5 : IN STD_LOGIC;
    md_error5 : OUT STD_LOGIC;
    m_axi_arready5 : IN STD_LOGIC;
    m_axi_arvalid5 : OUT STD_LOGIC;
    m_axi_araddr5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst5 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready5 : OUT STD_LOGIC;
    m_axi_rvalid5 : IN STD_LOGIC;
    m_axi_rdata5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp5 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast5 : IN STD_LOGIC;
    m_axi_awready5 : IN STD_LOGIC;
    m_axi_awvalid5 : OUT STD_LOGIC;
    m_axi_awaddr5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst5 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready5 : IN STD_LOGIC;
    m_axi_wvalid5 : OUT STD_LOGIC;
    m_axi_wdata5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast5 : OUT STD_LOGIC;
    m_axi_bready5 : OUT STD_LOGIC;
    m_axi_bvalid5 : IN STD_LOGIC;
    m_axi_bresp5 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END design_1_audio_interface_wrap_0_0;

ARCHITECTURE design_1_audio_interface_wrap_0_0_arch OF design_1_audio_interface_wrap_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_audio_interface_wrap_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT audio_interface_wrapper IS
    PORT (
      ac_bclk_0 : OUT STD_LOGIC;
      ac_pbdat_0 : OUT STD_LOGIC;
      ac_pblrc_0 : OUT STD_LOGIC;
      ac_recdat_0 : IN STD_LOGIC;
      ac_reclrc_0 : OUT STD_LOGIC;
      mclk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      sys_clk : IN STD_LOGIC;
      ui_in_numeric_addr : IN STD_LOGIC_VECTOR(77 DOWNTO 0);
      ui_in_numeric_value : IN STD_LOGIC_VECTOR(33 DOWNTO 0);
      ui_numeric_write_enable : IN STD_LOGIC;
      m_axi_aclk0 : IN STD_LOGIC;
      m_axi_aresetn0 : IN STD_LOGIC;
      md_error0 : OUT STD_LOGIC;
      m_axi_arready0 : IN STD_LOGIC;
      m_axi_arvalid0 : OUT STD_LOGIC;
      m_axi_araddr0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready0 : OUT STD_LOGIC;
      m_axi_rvalid0 : IN STD_LOGIC;
      m_axi_rdata0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast0 : IN STD_LOGIC;
      m_axi_awready0 : IN STD_LOGIC;
      m_axi_awvalid0 : OUT STD_LOGIC;
      m_axi_awaddr0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready0 : IN STD_LOGIC;
      m_axi_wvalid0 : OUT STD_LOGIC;
      m_axi_wdata0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast0 : OUT STD_LOGIC;
      m_axi_bready0 : OUT STD_LOGIC;
      m_axi_bvalid0 : IN STD_LOGIC;
      m_axi_bresp0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_aclk1 : IN STD_LOGIC;
      m_axi_aresetn1 : IN STD_LOGIC;
      md_error1 : OUT STD_LOGIC;
      m_axi_arready1 : IN STD_LOGIC;
      m_axi_arvalid1 : OUT STD_LOGIC;
      m_axi_araddr1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready1 : OUT STD_LOGIC;
      m_axi_rvalid1 : IN STD_LOGIC;
      m_axi_rdata1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast1 : IN STD_LOGIC;
      m_axi_awready1 : IN STD_LOGIC;
      m_axi_awvalid1 : OUT STD_LOGIC;
      m_axi_awaddr1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready1 : IN STD_LOGIC;
      m_axi_wvalid1 : OUT STD_LOGIC;
      m_axi_wdata1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast1 : OUT STD_LOGIC;
      m_axi_bready1 : OUT STD_LOGIC;
      m_axi_bvalid1 : IN STD_LOGIC;
      m_axi_bresp1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_aclk2 : IN STD_LOGIC;
      m_axi_aresetn2 : IN STD_LOGIC;
      md_error2 : OUT STD_LOGIC;
      m_axi_arready2 : IN STD_LOGIC;
      m_axi_arvalid2 : OUT STD_LOGIC;
      m_axi_araddr2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready2 : OUT STD_LOGIC;
      m_axi_rvalid2 : IN STD_LOGIC;
      m_axi_rdata2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast2 : IN STD_LOGIC;
      m_axi_awready2 : IN STD_LOGIC;
      m_axi_awvalid2 : OUT STD_LOGIC;
      m_axi_awaddr2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready2 : IN STD_LOGIC;
      m_axi_wvalid2 : OUT STD_LOGIC;
      m_axi_wdata2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast2 : OUT STD_LOGIC;
      m_axi_bready2 : OUT STD_LOGIC;
      m_axi_bvalid2 : IN STD_LOGIC;
      m_axi_bresp2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_aclk3 : IN STD_LOGIC;
      m_axi_aresetn3 : IN STD_LOGIC;
      md_error3 : OUT STD_LOGIC;
      m_axi_arready3 : IN STD_LOGIC;
      m_axi_arvalid3 : OUT STD_LOGIC;
      m_axi_araddr3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready3 : OUT STD_LOGIC;
      m_axi_rvalid3 : IN STD_LOGIC;
      m_axi_rdata3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast3 : IN STD_LOGIC;
      m_axi_awready3 : IN STD_LOGIC;
      m_axi_awvalid3 : OUT STD_LOGIC;
      m_axi_awaddr3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready3 : IN STD_LOGIC;
      m_axi_wvalid3 : OUT STD_LOGIC;
      m_axi_wdata3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast3 : OUT STD_LOGIC;
      m_axi_bready3 : OUT STD_LOGIC;
      m_axi_bvalid3 : IN STD_LOGIC;
      m_axi_bresp3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_aclk4 : IN STD_LOGIC;
      m_axi_aresetn4 : IN STD_LOGIC;
      md_error4 : OUT STD_LOGIC;
      m_axi_arready4 : IN STD_LOGIC;
      m_axi_arvalid4 : OUT STD_LOGIC;
      m_axi_araddr4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst4 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready4 : OUT STD_LOGIC;
      m_axi_rvalid4 : IN STD_LOGIC;
      m_axi_rdata4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp4 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast4 : IN STD_LOGIC;
      m_axi_awready4 : IN STD_LOGIC;
      m_axi_awvalid4 : OUT STD_LOGIC;
      m_axi_awaddr4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst4 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready4 : IN STD_LOGIC;
      m_axi_wvalid4 : OUT STD_LOGIC;
      m_axi_wdata4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast4 : OUT STD_LOGIC;
      m_axi_bready4 : OUT STD_LOGIC;
      m_axi_bvalid4 : IN STD_LOGIC;
      m_axi_bresp4 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_aclk5 : IN STD_LOGIC;
      m_axi_aresetn5 : IN STD_LOGIC;
      md_error5 : OUT STD_LOGIC;
      m_axi_arready5 : IN STD_LOGIC;
      m_axi_arvalid5 : OUT STD_LOGIC;
      m_axi_araddr5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst5 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready5 : OUT STD_LOGIC;
      m_axi_rvalid5 : IN STD_LOGIC;
      m_axi_rdata5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp5 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast5 : IN STD_LOGIC;
      m_axi_awready5 : IN STD_LOGIC;
      m_axi_awvalid5 : OUT STD_LOGIC;
      m_axi_awaddr5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst5 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready5 : IN STD_LOGIC;
      m_axi_wvalid5 : OUT STD_LOGIC;
      m_axi_wdata5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast5 : OUT STD_LOGIC;
      m_axi_bready5 : OUT STD_LOGIC;
      m_axi_bvalid5 : IN STD_LOGIC;
      m_axi_bresp5 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT audio_interface_wrapper;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sys_clk: SIGNAL IS "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET reset, FREQ_HZ 250833333, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF sys_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 sys_clk CLK";
BEGIN
  U0 : audio_interface_wrapper
    PORT MAP (
      ac_bclk_0 => ac_bclk_0,
      ac_pbdat_0 => ac_pbdat_0,
      ac_pblrc_0 => ac_pblrc_0,
      ac_recdat_0 => ac_recdat_0,
      ac_reclrc_0 => ac_reclrc_0,
      mclk => mclk,
      reset => reset,
      sys_clk => sys_clk,
      ui_in_numeric_addr => ui_in_numeric_addr,
      ui_in_numeric_value => ui_in_numeric_value,
      ui_numeric_write_enable => ui_numeric_write_enable,
      m_axi_aclk0 => m_axi_aclk0,
      m_axi_aresetn0 => m_axi_aresetn0,
      md_error0 => md_error0,
      m_axi_arready0 => m_axi_arready0,
      m_axi_arvalid0 => m_axi_arvalid0,
      m_axi_araddr0 => m_axi_araddr0,
      m_axi_arlen0 => m_axi_arlen0,
      m_axi_arsize0 => m_axi_arsize0,
      m_axi_arburst0 => m_axi_arburst0,
      m_axi_arprot0 => m_axi_arprot0,
      m_axi_arcache0 => m_axi_arcache0,
      m_axi_rready0 => m_axi_rready0,
      m_axi_rvalid0 => m_axi_rvalid0,
      m_axi_rdata0 => m_axi_rdata0,
      m_axi_rresp0 => m_axi_rresp0,
      m_axi_rlast0 => m_axi_rlast0,
      m_axi_awready0 => m_axi_awready0,
      m_axi_awvalid0 => m_axi_awvalid0,
      m_axi_awaddr0 => m_axi_awaddr0,
      m_axi_awlen0 => m_axi_awlen0,
      m_axi_awsize0 => m_axi_awsize0,
      m_axi_awburst0 => m_axi_awburst0,
      m_axi_awprot0 => m_axi_awprot0,
      m_axi_awcache0 => m_axi_awcache0,
      m_axi_wready0 => m_axi_wready0,
      m_axi_wvalid0 => m_axi_wvalid0,
      m_axi_wdata0 => m_axi_wdata0,
      m_axi_wstrb0 => m_axi_wstrb0,
      m_axi_wlast0 => m_axi_wlast0,
      m_axi_bready0 => m_axi_bready0,
      m_axi_bvalid0 => m_axi_bvalid0,
      m_axi_bresp0 => m_axi_bresp0,
      m_axi_aclk1 => m_axi_aclk1,
      m_axi_aresetn1 => m_axi_aresetn1,
      md_error1 => md_error1,
      m_axi_arready1 => m_axi_arready1,
      m_axi_arvalid1 => m_axi_arvalid1,
      m_axi_araddr1 => m_axi_araddr1,
      m_axi_arlen1 => m_axi_arlen1,
      m_axi_arsize1 => m_axi_arsize1,
      m_axi_arburst1 => m_axi_arburst1,
      m_axi_arprot1 => m_axi_arprot1,
      m_axi_arcache1 => m_axi_arcache1,
      m_axi_rready1 => m_axi_rready1,
      m_axi_rvalid1 => m_axi_rvalid1,
      m_axi_rdata1 => m_axi_rdata1,
      m_axi_rresp1 => m_axi_rresp1,
      m_axi_rlast1 => m_axi_rlast1,
      m_axi_awready1 => m_axi_awready1,
      m_axi_awvalid1 => m_axi_awvalid1,
      m_axi_awaddr1 => m_axi_awaddr1,
      m_axi_awlen1 => m_axi_awlen1,
      m_axi_awsize1 => m_axi_awsize1,
      m_axi_awburst1 => m_axi_awburst1,
      m_axi_awprot1 => m_axi_awprot1,
      m_axi_awcache1 => m_axi_awcache1,
      m_axi_wready1 => m_axi_wready1,
      m_axi_wvalid1 => m_axi_wvalid1,
      m_axi_wdata1 => m_axi_wdata1,
      m_axi_wstrb1 => m_axi_wstrb1,
      m_axi_wlast1 => m_axi_wlast1,
      m_axi_bready1 => m_axi_bready1,
      m_axi_bvalid1 => m_axi_bvalid1,
      m_axi_bresp1 => m_axi_bresp1,
      m_axi_aclk2 => m_axi_aclk2,
      m_axi_aresetn2 => m_axi_aresetn2,
      md_error2 => md_error2,
      m_axi_arready2 => m_axi_arready2,
      m_axi_arvalid2 => m_axi_arvalid2,
      m_axi_araddr2 => m_axi_araddr2,
      m_axi_arlen2 => m_axi_arlen2,
      m_axi_arsize2 => m_axi_arsize2,
      m_axi_arburst2 => m_axi_arburst2,
      m_axi_arprot2 => m_axi_arprot2,
      m_axi_arcache2 => m_axi_arcache2,
      m_axi_rready2 => m_axi_rready2,
      m_axi_rvalid2 => m_axi_rvalid2,
      m_axi_rdata2 => m_axi_rdata2,
      m_axi_rresp2 => m_axi_rresp2,
      m_axi_rlast2 => m_axi_rlast2,
      m_axi_awready2 => m_axi_awready2,
      m_axi_awvalid2 => m_axi_awvalid2,
      m_axi_awaddr2 => m_axi_awaddr2,
      m_axi_awlen2 => m_axi_awlen2,
      m_axi_awsize2 => m_axi_awsize2,
      m_axi_awburst2 => m_axi_awburst2,
      m_axi_awprot2 => m_axi_awprot2,
      m_axi_awcache2 => m_axi_awcache2,
      m_axi_wready2 => m_axi_wready2,
      m_axi_wvalid2 => m_axi_wvalid2,
      m_axi_wdata2 => m_axi_wdata2,
      m_axi_wstrb2 => m_axi_wstrb2,
      m_axi_wlast2 => m_axi_wlast2,
      m_axi_bready2 => m_axi_bready2,
      m_axi_bvalid2 => m_axi_bvalid2,
      m_axi_bresp2 => m_axi_bresp2,
      m_axi_aclk3 => m_axi_aclk3,
      m_axi_aresetn3 => m_axi_aresetn3,
      md_error3 => md_error3,
      m_axi_arready3 => m_axi_arready3,
      m_axi_arvalid3 => m_axi_arvalid3,
      m_axi_araddr3 => m_axi_araddr3,
      m_axi_arlen3 => m_axi_arlen3,
      m_axi_arsize3 => m_axi_arsize3,
      m_axi_arburst3 => m_axi_arburst3,
      m_axi_arprot3 => m_axi_arprot3,
      m_axi_arcache3 => m_axi_arcache3,
      m_axi_rready3 => m_axi_rready3,
      m_axi_rvalid3 => m_axi_rvalid3,
      m_axi_rdata3 => m_axi_rdata3,
      m_axi_rresp3 => m_axi_rresp3,
      m_axi_rlast3 => m_axi_rlast3,
      m_axi_awready3 => m_axi_awready3,
      m_axi_awvalid3 => m_axi_awvalid3,
      m_axi_awaddr3 => m_axi_awaddr3,
      m_axi_awlen3 => m_axi_awlen3,
      m_axi_awsize3 => m_axi_awsize3,
      m_axi_awburst3 => m_axi_awburst3,
      m_axi_awprot3 => m_axi_awprot3,
      m_axi_awcache3 => m_axi_awcache3,
      m_axi_wready3 => m_axi_wready3,
      m_axi_wvalid3 => m_axi_wvalid3,
      m_axi_wdata3 => m_axi_wdata3,
      m_axi_wstrb3 => m_axi_wstrb3,
      m_axi_wlast3 => m_axi_wlast3,
      m_axi_bready3 => m_axi_bready3,
      m_axi_bvalid3 => m_axi_bvalid3,
      m_axi_bresp3 => m_axi_bresp3,
      m_axi_aclk4 => m_axi_aclk4,
      m_axi_aresetn4 => m_axi_aresetn4,
      md_error4 => md_error4,
      m_axi_arready4 => m_axi_arready4,
      m_axi_arvalid4 => m_axi_arvalid4,
      m_axi_araddr4 => m_axi_araddr4,
      m_axi_arlen4 => m_axi_arlen4,
      m_axi_arsize4 => m_axi_arsize4,
      m_axi_arburst4 => m_axi_arburst4,
      m_axi_arprot4 => m_axi_arprot4,
      m_axi_arcache4 => m_axi_arcache4,
      m_axi_rready4 => m_axi_rready4,
      m_axi_rvalid4 => m_axi_rvalid4,
      m_axi_rdata4 => m_axi_rdata4,
      m_axi_rresp4 => m_axi_rresp4,
      m_axi_rlast4 => m_axi_rlast4,
      m_axi_awready4 => m_axi_awready4,
      m_axi_awvalid4 => m_axi_awvalid4,
      m_axi_awaddr4 => m_axi_awaddr4,
      m_axi_awlen4 => m_axi_awlen4,
      m_axi_awsize4 => m_axi_awsize4,
      m_axi_awburst4 => m_axi_awburst4,
      m_axi_awprot4 => m_axi_awprot4,
      m_axi_awcache4 => m_axi_awcache4,
      m_axi_wready4 => m_axi_wready4,
      m_axi_wvalid4 => m_axi_wvalid4,
      m_axi_wdata4 => m_axi_wdata4,
      m_axi_wstrb4 => m_axi_wstrb4,
      m_axi_wlast4 => m_axi_wlast4,
      m_axi_bready4 => m_axi_bready4,
      m_axi_bvalid4 => m_axi_bvalid4,
      m_axi_bresp4 => m_axi_bresp4,
      m_axi_aclk5 => m_axi_aclk5,
      m_axi_aresetn5 => m_axi_aresetn5,
      md_error5 => md_error5,
      m_axi_arready5 => m_axi_arready5,
      m_axi_arvalid5 => m_axi_arvalid5,
      m_axi_araddr5 => m_axi_araddr5,
      m_axi_arlen5 => m_axi_arlen5,
      m_axi_arsize5 => m_axi_arsize5,
      m_axi_arburst5 => m_axi_arburst5,
      m_axi_arprot5 => m_axi_arprot5,
      m_axi_arcache5 => m_axi_arcache5,
      m_axi_rready5 => m_axi_rready5,
      m_axi_rvalid5 => m_axi_rvalid5,
      m_axi_rdata5 => m_axi_rdata5,
      m_axi_rresp5 => m_axi_rresp5,
      m_axi_rlast5 => m_axi_rlast5,
      m_axi_awready5 => m_axi_awready5,
      m_axi_awvalid5 => m_axi_awvalid5,
      m_axi_awaddr5 => m_axi_awaddr5,
      m_axi_awlen5 => m_axi_awlen5,
      m_axi_awsize5 => m_axi_awsize5,
      m_axi_awburst5 => m_axi_awburst5,
      m_axi_awprot5 => m_axi_awprot5,
      m_axi_awcache5 => m_axi_awcache5,
      m_axi_wready5 => m_axi_wready5,
      m_axi_wvalid5 => m_axi_wvalid5,
      m_axi_wdata5 => m_axi_wdata5,
      m_axi_wstrb5 => m_axi_wstrb5,
      m_axi_wlast5 => m_axi_wlast5,
      m_axi_bready5 => m_axi_bready5,
      m_axi_bvalid5 => m_axi_bvalid5,
      m_axi_bresp5 => m_axi_bresp5
    );
END design_1_audio_interface_wrap_0_0_arch;
