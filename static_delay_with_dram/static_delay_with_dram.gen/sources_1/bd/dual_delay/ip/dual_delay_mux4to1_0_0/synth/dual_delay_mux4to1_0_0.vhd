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

-- IP VLNV: xilinx.com:module_ref:mux4to1:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY dual_delay_mux4to1_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    btn1 : IN STD_LOGIC;
    btn2 : IN STD_LOGIC;
    btn3 : IN STD_LOGIC;
    btn4 : IN STD_LOGIC;
    srca1 : IN STD_LOGIC;
    srca2 : IN STD_LOGIC;
    srca3 : IN STD_LOGIC;
    srca4 : IN STD_LOGIC;
    srcb1 : IN STD_LOGIC;
    srcb2 : IN STD_LOGIC;
    srcb3 : IN STD_LOGIC;
    srcb4 : IN STD_LOGIC;
    srcc1 : IN STD_LOGIC;
    srcc2 : IN STD_LOGIC;
    srcc3 : IN STD_LOGIC;
    srcc4 : IN STD_LOGIC;
    srcd1 : IN STD_LOGIC;
    srcd2 : IN STD_LOGIC;
    srcd3 : IN STD_LOGIC;
    srcd4 : IN STD_LOGIC;
    mux_out1 : OUT STD_LOGIC;
    mux_out2 : OUT STD_LOGIC;
    mux_out3 : OUT STD_LOGIC;
    mux_out4 : OUT STD_LOGIC
  );
END dual_delay_mux4to1_0_0;

ARCHITECTURE dual_delay_mux4to1_0_0_arch OF dual_delay_mux4to1_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF dual_delay_mux4to1_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mux4to1 IS
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      btn1 : IN STD_LOGIC;
      btn2 : IN STD_LOGIC;
      btn3 : IN STD_LOGIC;
      btn4 : IN STD_LOGIC;
      srca1 : IN STD_LOGIC;
      srca2 : IN STD_LOGIC;
      srca3 : IN STD_LOGIC;
      srca4 : IN STD_LOGIC;
      srcb1 : IN STD_LOGIC;
      srcb2 : IN STD_LOGIC;
      srcb3 : IN STD_LOGIC;
      srcb4 : IN STD_LOGIC;
      srcc1 : IN STD_LOGIC;
      srcc2 : IN STD_LOGIC;
      srcc3 : IN STD_LOGIC;
      srcc4 : IN STD_LOGIC;
      srcd1 : IN STD_LOGIC;
      srcd2 : IN STD_LOGIC;
      srcd3 : IN STD_LOGIC;
      srcd4 : IN STD_LOGIC;
      mux_out1 : OUT STD_LOGIC;
      mux_out2 : OUT STD_LOGIC;
      mux_out3 : OUT STD_LOGIC;
      mux_out4 : OUT STD_LOGIC
    );
  END COMPONENT mux4to1;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF dual_delay_mux4to1_0_0_arch: ARCHITECTURE IS "mux4to1,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF dual_delay_mux4to1_0_0_arch : ARCHITECTURE IS "dual_delay_mux4to1_0_0,mux4to1,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF dual_delay_mux4to1_0_0_arch: ARCHITECTURE IS "dual_delay_mux4to1_0_0,mux4to1,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mux4to1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF dual_delay_mux4to1_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50347222, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : mux4to1
    PORT MAP (
      clk => clk,
      reset => reset,
      btn1 => btn1,
      btn2 => btn2,
      btn3 => btn3,
      btn4 => btn4,
      srca1 => srca1,
      srca2 => srca2,
      srca3 => srca3,
      srca4 => srca4,
      srcb1 => srcb1,
      srcb2 => srcb2,
      srcb3 => srcb3,
      srcb4 => srcb4,
      srcc1 => srcc1,
      srcc2 => srcc2,
      srcc3 => srcc3,
      srcc4 => srcc4,
      srcd1 => srcd1,
      srcd2 => srcd2,
      srcd3 => srcd3,
      srcd4 => srcd4,
      mux_out1 => mux_out1,
      mux_out2 => mux_out2,
      mux_out3 => mux_out3,
      mux_out4 => mux_out4
    );
END dual_delay_mux4to1_0_0_arch;
