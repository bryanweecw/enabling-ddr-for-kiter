-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Mar 14 16:13:28 2025
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top triple_delay_mux4to1_0_0 -prefix
--               triple_delay_mux4to1_0_0_ dual_delay_mux4to1_0_0_stub.vhdl
-- Design      : dual_delay_mux4to1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity triple_delay_mux4to1_0_0 is
  Port ( 
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

end triple_delay_mux4to1_0_0;

architecture stub of triple_delay_mux4to1_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,btn1,btn2,btn3,btn4,srca1,srca2,srca3,srca4,srcb1,srcb2,srcb3,srcb4,srcc1,srcc2,srcc3,srcc4,srcd1,srcd2,srcd3,srcd4,mux_out1,mux_out2,mux_out3,mux_out4";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mux4to1,Vivado 2022.2";
begin
end;
