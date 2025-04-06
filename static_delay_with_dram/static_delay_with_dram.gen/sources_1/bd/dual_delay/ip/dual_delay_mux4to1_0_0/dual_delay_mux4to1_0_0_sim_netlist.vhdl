-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Mar 14 16:13:28 2025
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/bryan/Documents/bryan_files_echo_with_dram_static/projects/static_delay_100-ui-ie-flat-dd/root.gen/sources_1/bd/dual_delay/ip/dual_delay_mux4to1_0_0/dual_delay_mux4to1_0_0_sim_netlist.vhdl
-- Design      : dual_delay_mux4to1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dual_delay_mux4to1_0_0_mux4to1 is
  port (
    mux_out1 : out STD_LOGIC;
    mux_out2 : out STD_LOGIC;
    mux_out3 : out STD_LOGIC;
    mux_out4 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    srca4 : in STD_LOGIC;
    srca3 : in STD_LOGIC;
    srca2 : in STD_LOGIC;
    srca1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    srcb4 : in STD_LOGIC;
    srcb3 : in STD_LOGIC;
    srcb2 : in STD_LOGIC;
    srcb1 : in STD_LOGIC;
    btn4 : in STD_LOGIC;
    srcd1 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    srcc1 : in STD_LOGIC;
    srcd2 : in STD_LOGIC;
    srcc2 : in STD_LOGIC;
    srcd3 : in STD_LOGIC;
    srcc3 : in STD_LOGIC;
    srcd4 : in STD_LOGIC;
    srcc4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dual_delay_mux4to1_0_0_mux4to1 : entity is "mux4to1";
end dual_delay_mux4to1_0_0_mux4to1;

architecture STRUCTURE of dual_delay_mux4to1_0_0_mux4to1 is
  signal mux_out10 : STD_LOGIC;
  signal mux_out1_C_i_2_n_0 : STD_LOGIC;
  signal mux_out1_reg_C_n_0 : STD_LOGIC;
  signal mux_out1_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal mux_out1_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal mux_out1_reg_LDC_n_0 : STD_LOGIC;
  signal mux_out1_reg_P_n_0 : STD_LOGIC;
  signal mux_out20 : STD_LOGIC;
  signal mux_out2_C_i_2_n_0 : STD_LOGIC;
  signal mux_out2_reg_C_n_0 : STD_LOGIC;
  signal mux_out2_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal mux_out2_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal mux_out2_reg_LDC_n_0 : STD_LOGIC;
  signal mux_out2_reg_P_n_0 : STD_LOGIC;
  signal mux_out30 : STD_LOGIC;
  signal mux_out3_C_i_2_n_0 : STD_LOGIC;
  signal mux_out3_reg_C_n_0 : STD_LOGIC;
  signal mux_out3_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal mux_out3_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal mux_out3_reg_LDC_n_0 : STD_LOGIC;
  signal mux_out3_reg_P_n_0 : STD_LOGIC;
  signal mux_out40 : STD_LOGIC;
  signal mux_out4_C_i_2_n_0 : STD_LOGIC;
  signal mux_out4_reg_C_n_0 : STD_LOGIC;
  signal mux_out4_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal mux_out4_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal mux_out4_reg_LDC_n_0 : STD_LOGIC;
  signal mux_out4_reg_P_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mux_out1_reg_LDC : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of mux_out1_reg_LDC : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of mux_out2_reg_LDC : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of mux_out2_reg_LDC : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of mux_out3_reg_LDC : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of mux_out3_reg_LDC : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of mux_out4_reg_LDC : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of mux_out4_reg_LDC : label is "VCC:GE";
begin
mux_out1_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF20E02"
    )
        port map (
      I0 => mux_out1_C_i_2_n_0,
      I1 => btn2,
      I2 => btn1,
      I3 => srcb1,
      I4 => srca1,
      O => mux_out10
    );
mux_out1_C_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => btn4,
      I1 => srcd1,
      I2 => srca1,
      I3 => btn3,
      I4 => srcc1,
      O => mux_out1_C_i_2_n_0
    );
mux_out1_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mux_out1_reg_P_n_0,
      I1 => mux_out1_reg_LDC_n_0,
      I2 => mux_out1_reg_C_n_0,
      O => mux_out1
    );
mux_out1_reg_C: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => mux_out1_reg_LDC_i_2_n_0,
      D => mux_out10,
      Q => mux_out1_reg_C_n_0
    );
mux_out1_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => mux_out1_reg_LDC_i_2_n_0,
      D => '1',
      G => mux_out1_reg_LDC_i_1_n_0,
      GE => '1',
      Q => mux_out1_reg_LDC_n_0
    );
mux_out1_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset,
      I1 => srca1,
      O => mux_out1_reg_LDC_i_1_n_0
    );
mux_out1_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => srca1,
      O => mux_out1_reg_LDC_i_2_n_0
    );
mux_out1_reg_P: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => mux_out10,
      PRE => mux_out1_reg_LDC_i_1_n_0,
      Q => mux_out1_reg_P_n_0
    );
mux_out2_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF20E02"
    )
        port map (
      I0 => mux_out2_C_i_2_n_0,
      I1 => btn2,
      I2 => btn1,
      I3 => srcb2,
      I4 => srca2,
      O => mux_out20
    );
mux_out2_C_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => btn4,
      I1 => srcd2,
      I2 => srca2,
      I3 => btn3,
      I4 => srcc2,
      O => mux_out2_C_i_2_n_0
    );
mux_out2_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mux_out2_reg_P_n_0,
      I1 => mux_out2_reg_LDC_n_0,
      I2 => mux_out2_reg_C_n_0,
      O => mux_out2
    );
mux_out2_reg_C: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => mux_out2_reg_LDC_i_2_n_0,
      D => mux_out20,
      Q => mux_out2_reg_C_n_0
    );
mux_out2_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => mux_out2_reg_LDC_i_2_n_0,
      D => '1',
      G => mux_out2_reg_LDC_i_1_n_0,
      GE => '1',
      Q => mux_out2_reg_LDC_n_0
    );
mux_out2_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset,
      I1 => srca2,
      O => mux_out2_reg_LDC_i_1_n_0
    );
mux_out2_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => srca2,
      O => mux_out2_reg_LDC_i_2_n_0
    );
mux_out2_reg_P: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => mux_out20,
      PRE => mux_out2_reg_LDC_i_1_n_0,
      Q => mux_out2_reg_P_n_0
    );
mux_out3_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF20E02"
    )
        port map (
      I0 => mux_out3_C_i_2_n_0,
      I1 => btn2,
      I2 => btn1,
      I3 => srcb3,
      I4 => srca3,
      O => mux_out30
    );
mux_out3_C_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => btn4,
      I1 => srcd3,
      I2 => srca3,
      I3 => btn3,
      I4 => srcc3,
      O => mux_out3_C_i_2_n_0
    );
mux_out3_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mux_out3_reg_P_n_0,
      I1 => mux_out3_reg_LDC_n_0,
      I2 => mux_out3_reg_C_n_0,
      O => mux_out3
    );
mux_out3_reg_C: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => mux_out3_reg_LDC_i_2_n_0,
      D => mux_out30,
      Q => mux_out3_reg_C_n_0
    );
mux_out3_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => mux_out3_reg_LDC_i_2_n_0,
      D => '1',
      G => mux_out3_reg_LDC_i_1_n_0,
      GE => '1',
      Q => mux_out3_reg_LDC_n_0
    );
mux_out3_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset,
      I1 => srca3,
      O => mux_out3_reg_LDC_i_1_n_0
    );
mux_out3_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => srca3,
      O => mux_out3_reg_LDC_i_2_n_0
    );
mux_out3_reg_P: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => mux_out30,
      PRE => mux_out3_reg_LDC_i_1_n_0,
      Q => mux_out3_reg_P_n_0
    );
mux_out4_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF20E02"
    )
        port map (
      I0 => mux_out4_C_i_2_n_0,
      I1 => btn2,
      I2 => btn1,
      I3 => srcb4,
      I4 => srca4,
      O => mux_out40
    );
mux_out4_C_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => btn4,
      I1 => srcd4,
      I2 => srca4,
      I3 => btn3,
      I4 => srcc4,
      O => mux_out4_C_i_2_n_0
    );
mux_out4_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mux_out4_reg_P_n_0,
      I1 => mux_out4_reg_LDC_n_0,
      I2 => mux_out4_reg_C_n_0,
      O => mux_out4
    );
mux_out4_reg_C: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => mux_out4_reg_LDC_i_2_n_0,
      D => mux_out40,
      Q => mux_out4_reg_C_n_0
    );
mux_out4_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => mux_out4_reg_LDC_i_2_n_0,
      D => '1',
      G => mux_out4_reg_LDC_i_1_n_0,
      GE => '1',
      Q => mux_out4_reg_LDC_n_0
    );
mux_out4_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset,
      I1 => srca4,
      O => mux_out4_reg_LDC_i_1_n_0
    );
mux_out4_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => srca4,
      O => mux_out4_reg_LDC_i_2_n_0
    );
mux_out4_reg_P: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => mux_out40,
      PRE => mux_out4_reg_LDC_i_1_n_0,
      Q => mux_out4_reg_P_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dual_delay_mux4to1_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dual_delay_mux4to1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dual_delay_mux4to1_0_0 : entity is "dual_delay_mux4to1_0_0,mux4to1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dual_delay_mux4to1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of dual_delay_mux4to1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of dual_delay_mux4to1_0_0 : entity is "mux4to1,Vivado 2022.2";
end dual_delay_mux4to1_0_0;

architecture STRUCTURE of dual_delay_mux4to1_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50347222, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.dual_delay_mux4to1_0_0_mux4to1
     port map (
      btn1 => btn1,
      btn2 => btn2,
      btn3 => btn3,
      btn4 => btn4,
      clk => clk,
      mux_out1 => mux_out1,
      mux_out2 => mux_out2,
      mux_out3 => mux_out3,
      mux_out4 => mux_out4,
      reset => reset,
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
      srcd4 => srcd4
    );
end STRUCTURE;
