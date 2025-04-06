-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Mar 21 07:10:16 2025
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top quad_delay_audio_interface_wrap_0_0 -prefix
--               quad_delay_audio_interface_wrap_0_0_ design_1_audio_interface_wrap_0_0_stub.vhdl
-- Design      : design_1_audio_interface_wrap_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity quad_delay_audio_interface_wrap_0_0 is
  Port ( 
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

end quad_delay_audio_interface_wrap_0_0;

architecture stub of quad_delay_audio_interface_wrap_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ac_bclk_0,ac_pbdat_0,ac_recdat_0,ac_pblrc_0,ac_reclrc_0,sys_clk,reset,mclk,md_error,m_axi_arready,m_axi_arvalid,m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arcache[3:0],m_axi_rready,m_axi_rvalid,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_awready,m_axi_awvalid,m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awcache[3:0],m_axi_wready,m_axi_wvalid,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wlast,m_axi_bready,m_axi_bvalid,m_axi_bresp[1:0],debug_static_delay_in_ready,debug_static_delay_in_valid,debug_static_delay_in_data[33:0],debug_static_delay_out_ready,debug_static_delay_out_valid,debug_static_delay_out_data[33:0],avg_read_cycles_out[12:0],avg_write_cycles_out[12:0],max_read_cycles_out[12:0],max_write_cycles_out[12:0],min_read_cycles_out[12:0],min_write_cycles_out[12:0],axi_avg_read_cycles_out[12:0],axi_avg_write_cycles_out[12:0],axi_max_read_cycles_out[12:0],axi_max_write_cycles_out[12:0],axi_min_read_cycles_out[12:0],axi_min_write_cycles_out[12:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "audio_interface_wrapper,Vivado 2022.2";
begin
end;
