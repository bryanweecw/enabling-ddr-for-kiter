-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sat Mar 15 13:41:11 2025
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bryan/Documents/bryan_files_echo_with_dram_static/projects/static_delay_100-ui-ie-flat-dd/root.gen/sources_1/bd/triple_delay/ip/triple_delay_clk_wiz_0_0/triple_delay_clk_wiz_0_0_stub.vhdl
-- Design      : triple_delay_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity triple_delay_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_50mhz : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end triple_delay_clk_wiz_0_0;

architecture stub of triple_delay_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_50mhz,clk_in1";
begin
end;
