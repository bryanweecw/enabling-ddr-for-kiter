-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Mar 21 15:39:38 2025
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bryan/Documents/bryan_files_echo_with_dram_static/projects/static_delay_100-ui-ie-flat-dd/root.gen/sources_1/bd/dual_delay/ip/dual_delay_system_ila_0_0/dual_delay_system_ila_0_0_stub.vhdl
-- Design      : dual_delay_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dual_delay_system_ila_0_0 is
  Port ( 
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
    probe26 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 12 downto 0 );
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
    resetn : in STD_LOGIC
  );

end dual_delay_system_ila_0_0;

architecture stub of dual_delay_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[33:0],probe5[0:0],probe6[0:0],probe7[33:0],probe8[12:0],probe9[12:0],probe10[12:0],probe11[12:0],probe12[12:0],probe13[12:0],probe14[12:0],probe15[12:0],probe16[12:0],probe17[12:0],probe18[12:0],probe19[12:0],probe20[12:0],probe21[12:0],probe22[12:0],probe23[12:0],probe24[12:0],probe25[12:0],probe26[12:0],probe27[12:0],probe28[12:0],probe29[12:0],probe30[12:0],probe31[12:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wstrb[3:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,resetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_e813,Vivado 2022.2";
begin
end;
