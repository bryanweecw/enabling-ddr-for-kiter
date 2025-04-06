--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_07cf.bd
--Design : bd_07cf
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_07cf is
  port (
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rlast : in STD_LOGIC;
    SLOT_3_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wlast : in STD_LOGIC;
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_4_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arready : in STD_LOGIC;
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arvalid : in STD_LOGIC;
    SLOT_4_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awready : in STD_LOGIC;
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awvalid : in STD_LOGIC;
    SLOT_4_AXI_bready : in STD_LOGIC;
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_bvalid : in STD_LOGIC;
    SLOT_4_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_rlast : in STD_LOGIC;
    SLOT_4_AXI_rready : in STD_LOGIC;
    SLOT_4_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_rvalid : in STD_LOGIC;
    SLOT_4_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_wlast : in STD_LOGIC;
    SLOT_4_AXI_wready : in STD_LOGIC;
    SLOT_4_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    probe4 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_07cf : entity is "bd_07cf,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_07cf,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=27,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_07cf : entity is "quad_delay_system_ila_0_0.hwdef";
end bd_07cf;

architecture STRUCTURE of bd_07cf is
  component bd_07cf_ila_lib_0 is
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
    probe43 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe56 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe57 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe64 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe65 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe66 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe67 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe68 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe69 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe70 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe71 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe72 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe73 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe74 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe75 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe76 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe77 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe78 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe79 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe80 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe81 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe82 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe83 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe84 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe85 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe86 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe87 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe88 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe89 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe90 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe91 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe92 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe93 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe94 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe95 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe96 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe97 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe98 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe99 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe100 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe101 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe102 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe103 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe104 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe105 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe106 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe107 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe108 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe109 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe110 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe111 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe112 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe113 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe114 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe115 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe116 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe117 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe118 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe119 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe120 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe121 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe122 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe123 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe124 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe125 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe126 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe127 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe128 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe129 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe130 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe131 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe132 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe133 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe134 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe135 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe136 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe137 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe138 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe139 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe140 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe141 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe142 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe143 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe144 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe145 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe146 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe147 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe148 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe149 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe150 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe151 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe152 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe153 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe154 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe155 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe156 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe157 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe158 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe159 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe160 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe161 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe162 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe163 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe164 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe165 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe166 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe167 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe168 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe169 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe170 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe171 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe172 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe173 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe174 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe175 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe176 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe177 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe178 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe179 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe180 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe181 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe182 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe183 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe184 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe185 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe186 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe187 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe188 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe189 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe190 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe191 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_ila_lib_0;
  component bd_07cf_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_slot_0_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_awvalid : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    slot_1_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_1_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_awvalid : in STD_LOGIC;
    slot_1_axi_awready : in STD_LOGIC;
    slot_1_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_wlast : in STD_LOGIC;
    slot_1_axi_wvalid : in STD_LOGIC;
    slot_1_axi_wready : in STD_LOGIC;
    slot_1_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_bvalid : in STD_LOGIC;
    slot_1_axi_bready : in STD_LOGIC;
    slot_1_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_1_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_arvalid : in STD_LOGIC;
    slot_1_axi_arready : in STD_LOGIC;
    slot_1_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_rlast : in STD_LOGIC;
    slot_1_axi_rvalid : in STD_LOGIC;
    slot_1_axi_rready : in STD_LOGIC;
    slot_2_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_awvalid : in STD_LOGIC;
    slot_2_axi_awready : in STD_LOGIC;
    slot_2_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_wlast : in STD_LOGIC;
    slot_2_axi_wvalid : in STD_LOGIC;
    slot_2_axi_wready : in STD_LOGIC;
    slot_2_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_bvalid : in STD_LOGIC;
    slot_2_axi_bready : in STD_LOGIC;
    slot_2_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_arvalid : in STD_LOGIC;
    slot_2_axi_arready : in STD_LOGIC;
    slot_2_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_rlast : in STD_LOGIC;
    slot_2_axi_rvalid : in STD_LOGIC;
    slot_2_axi_rready : in STD_LOGIC;
    slot_3_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_3_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_awvalid : in STD_LOGIC;
    slot_3_axi_awready : in STD_LOGIC;
    slot_3_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_wlast : in STD_LOGIC;
    slot_3_axi_wvalid : in STD_LOGIC;
    slot_3_axi_wready : in STD_LOGIC;
    slot_3_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_bvalid : in STD_LOGIC;
    slot_3_axi_bready : in STD_LOGIC;
    slot_3_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_3_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_arvalid : in STD_LOGIC;
    slot_3_axi_arready : in STD_LOGIC;
    slot_3_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_rlast : in STD_LOGIC;
    slot_3_axi_rvalid : in STD_LOGIC;
    slot_3_axi_rready : in STD_LOGIC;
    slot_4_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_4_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_awvalid : in STD_LOGIC;
    slot_4_axi_awready : in STD_LOGIC;
    slot_4_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_wlast : in STD_LOGIC;
    slot_4_axi_wvalid : in STD_LOGIC;
    slot_4_axi_wready : in STD_LOGIC;
    slot_4_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_bvalid : in STD_LOGIC;
    slot_4_axi_bready : in STD_LOGIC;
    slot_4_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_4_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_arvalid : in STD_LOGIC;
    slot_4_axi_arready : in STD_LOGIC;
    slot_4_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_rlast : in STD_LOGIC;
    slot_4_axi_rvalid : in STD_LOGIC;
    slot_4_axi_rready : in STD_LOGIC;
    m_slot_0_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_0_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_awvalid : out STD_LOGIC;
    m_slot_0_axi_awready : out STD_LOGIC;
    m_slot_0_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_wlast : out STD_LOGIC;
    m_slot_0_axi_wvalid : out STD_LOGIC;
    m_slot_0_axi_wready : out STD_LOGIC;
    m_slot_0_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_bvalid : out STD_LOGIC;
    m_slot_0_axi_bready : out STD_LOGIC;
    m_slot_0_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_0_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_arvalid : out STD_LOGIC;
    m_slot_0_axi_arready : out STD_LOGIC;
    m_slot_0_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_rlast : out STD_LOGIC;
    m_slot_0_axi_rvalid : out STD_LOGIC;
    m_slot_0_axi_rready : out STD_LOGIC;
    m_slot_1_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_1_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_1_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_1_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_1_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_1_axi_awvalid : out STD_LOGIC;
    m_slot_1_axi_awready : out STD_LOGIC;
    m_slot_1_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_1_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_1_axi_wlast : out STD_LOGIC;
    m_slot_1_axi_wvalid : out STD_LOGIC;
    m_slot_1_axi_wready : out STD_LOGIC;
    m_slot_1_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_bvalid : out STD_LOGIC;
    m_slot_1_axi_bready : out STD_LOGIC;
    m_slot_1_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_1_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_1_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_1_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_1_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_1_axi_arvalid : out STD_LOGIC;
    m_slot_1_axi_arready : out STD_LOGIC;
    m_slot_1_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_1_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_1_axi_rlast : out STD_LOGIC;
    m_slot_1_axi_rvalid : out STD_LOGIC;
    m_slot_1_axi_rready : out STD_LOGIC;
    m_slot_2_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_2_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_2_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_2_axi_awvalid : out STD_LOGIC;
    m_slot_2_axi_awready : out STD_LOGIC;
    m_slot_2_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_2_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_wlast : out STD_LOGIC;
    m_slot_2_axi_wvalid : out STD_LOGIC;
    m_slot_2_axi_wready : out STD_LOGIC;
    m_slot_2_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_bvalid : out STD_LOGIC;
    m_slot_2_axi_bready : out STD_LOGIC;
    m_slot_2_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_2_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_2_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_2_axi_arvalid : out STD_LOGIC;
    m_slot_2_axi_arready : out STD_LOGIC;
    m_slot_2_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_2_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_rlast : out STD_LOGIC;
    m_slot_2_axi_rvalid : out STD_LOGIC;
    m_slot_2_axi_rready : out STD_LOGIC;
    m_slot_3_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_3_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_3_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_awvalid : out STD_LOGIC;
    m_slot_3_axi_awready : out STD_LOGIC;
    m_slot_3_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_3_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_wlast : out STD_LOGIC;
    m_slot_3_axi_wvalid : out STD_LOGIC;
    m_slot_3_axi_wready : out STD_LOGIC;
    m_slot_3_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_bvalid : out STD_LOGIC;
    m_slot_3_axi_bready : out STD_LOGIC;
    m_slot_3_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_3_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_3_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_arvalid : out STD_LOGIC;
    m_slot_3_axi_arready : out STD_LOGIC;
    m_slot_3_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_3_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_rlast : out STD_LOGIC;
    m_slot_3_axi_rvalid : out STD_LOGIC;
    m_slot_3_axi_rready : out STD_LOGIC;
    m_slot_4_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_4_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_4_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_4_axi_awvalid : out STD_LOGIC;
    m_slot_4_axi_awready : out STD_LOGIC;
    m_slot_4_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_4_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_4_axi_wlast : out STD_LOGIC;
    m_slot_4_axi_wvalid : out STD_LOGIC;
    m_slot_4_axi_wready : out STD_LOGIC;
    m_slot_4_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_bvalid : out STD_LOGIC;
    m_slot_4_axi_bready : out STD_LOGIC;
    m_slot_4_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_4_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_4_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_4_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_arvalid : out STD_LOGIC;
    m_slot_4_axi_arready : out STD_LOGIC;
    m_slot_4_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_4_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_rlast : out STD_LOGIC;
    m_slot_4_axi_rvalid : out STD_LOGIC;
    m_slot_4_axi_rready : out STD_LOGIC;
    slot_2_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component bd_07cf_g_inst_0;
  component bd_07cf_slot_0_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_0_aw_0;
  component bd_07cf_slot_0_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_0_w_0;
  component bd_07cf_slot_0_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_0_b_0;
  component bd_07cf_slot_0_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_0_ar_0;
  component bd_07cf_slot_0_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_0_r_0;
  component bd_07cf_slot_1_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_1_aw_0;
  component bd_07cf_slot_1_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_1_w_0;
  component bd_07cf_slot_1_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_1_b_0;
  component bd_07cf_slot_1_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_1_ar_0;
  component bd_07cf_slot_1_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_1_r_0;
  component bd_07cf_slot_2_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_2_aw_0;
  component bd_07cf_slot_2_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_2_w_0;
  component bd_07cf_slot_2_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_2_b_0;
  component bd_07cf_slot_2_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_2_ar_0;
  component bd_07cf_slot_2_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_2_r_0;
  component bd_07cf_slot_3_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_3_aw_0;
  component bd_07cf_slot_3_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_3_w_0;
  component bd_07cf_slot_3_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_3_b_0;
  component bd_07cf_slot_3_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_3_ar_0;
  component bd_07cf_slot_3_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_3_r_0;
  component bd_07cf_slot_4_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_4_aw_0;
  component bd_07cf_slot_4_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_4_w_0;
  component bd_07cf_slot_4_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_4_b_0;
  component bd_07cf_slot_4_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_07cf_slot_4_ar_0;
  component bd_07cf_slot_4_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_07cf_slot_4_r_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RLAST : STD_LOGIC;
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RLAST : STD_LOGIC;
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WLAST : STD_LOGIC;
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn3_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RLAST : STD_LOGIC;
  signal Conn3_RREADY : STD_LOGIC;
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WLAST : STD_LOGIC;
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC;
  signal Conn4_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARREADY : STD_LOGIC;
  signal Conn4_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARVALID : STD_LOGIC;
  signal Conn4_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWREADY : STD_LOGIC;
  signal Conn4_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWVALID : STD_LOGIC;
  signal Conn4_BREADY : STD_LOGIC;
  signal Conn4_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_BVALID : STD_LOGIC;
  signal Conn4_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_RLAST : STD_LOGIC;
  signal Conn4_RREADY : STD_LOGIC;
  signal Conn4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_RVALID : STD_LOGIC;
  signal Conn4_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_WLAST : STD_LOGIC;
  signal Conn4_WREADY : STD_LOGIC;
  signal Conn4_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_WVALID : STD_LOGIC;
  signal Conn_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn_ARREADY : STD_LOGIC;
  signal Conn_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn_ARVALID : STD_LOGIC;
  signal Conn_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn_AWREADY : STD_LOGIC;
  signal Conn_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn_AWVALID : STD_LOGIC;
  signal Conn_BREADY : STD_LOGIC;
  signal Conn_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn_BVALID : STD_LOGIC;
  signal Conn_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_RLAST : STD_LOGIC;
  signal Conn_RREADY : STD_LOGIC;
  signal Conn_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn_RVALID : STD_LOGIC;
  signal Conn_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_WLAST : STD_LOGIC;
  signal Conn_WREADY : STD_LOGIC;
  signal Conn_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn_WVALID : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal net_slot_0_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_araddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_0_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_arready : STD_LOGIC;
  signal net_slot_0_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_arvalid : STD_LOGIC;
  signal net_slot_0_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_awaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_0_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_awready : STD_LOGIC;
  signal net_slot_0_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_awvalid : STD_LOGIC;
  signal net_slot_0_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_bready : STD_LOGIC;
  signal net_slot_0_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_bvalid : STD_LOGIC;
  signal net_slot_0_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_rlast : STD_LOGIC;
  signal net_slot_0_axi_rready : STD_LOGIC;
  signal net_slot_0_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_rvalid : STD_LOGIC;
  signal net_slot_0_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_wlast : STD_LOGIC;
  signal net_slot_0_axi_wready : STD_LOGIC;
  signal net_slot_0_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_wvalid : STD_LOGIC;
  signal net_slot_1_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_araddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_1_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_1_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_1_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_1_axi_arready : STD_LOGIC;
  signal net_slot_1_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_1_axi_arvalid : STD_LOGIC;
  signal net_slot_1_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_awaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_1_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_1_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_1_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_1_axi_awready : STD_LOGIC;
  signal net_slot_1_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_1_axi_awvalid : STD_LOGIC;
  signal net_slot_1_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_bready : STD_LOGIC;
  signal net_slot_1_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_bvalid : STD_LOGIC;
  signal net_slot_1_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_1_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_1_axi_rlast : STD_LOGIC;
  signal net_slot_1_axi_rready : STD_LOGIC;
  signal net_slot_1_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axi_rvalid : STD_LOGIC;
  signal net_slot_1_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_1_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_1_axi_wlast : STD_LOGIC;
  signal net_slot_1_axi_wready : STD_LOGIC;
  signal net_slot_1_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_1_axi_wvalid : STD_LOGIC;
  signal net_slot_2_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_araddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_2_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_2_axi_arlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_2_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_arqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_arready : STD_LOGIC;
  signal net_slot_2_axi_arregion : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_arvalid : STD_LOGIC;
  signal net_slot_2_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_awaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_2_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_2_axi_awlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_2_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_awqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_awready : STD_LOGIC;
  signal net_slot_2_axi_awregion : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_awvalid : STD_LOGIC;
  signal net_slot_2_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_bready : STD_LOGIC;
  signal net_slot_2_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_bvalid : STD_LOGIC;
  signal net_slot_2_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_2_axi_rlast : STD_LOGIC;
  signal net_slot_2_axi_rready : STD_LOGIC;
  signal net_slot_2_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_rvalid : STD_LOGIC;
  signal net_slot_2_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_2_axi_wlast : STD_LOGIC;
  signal net_slot_2_axi_wready : STD_LOGIC;
  signal net_slot_2_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_wvalid : STD_LOGIC;
  signal net_slot_3_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_araddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_3_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_3_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_arready : STD_LOGIC;
  signal net_slot_3_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_arvalid : STD_LOGIC;
  signal net_slot_3_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_awaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_3_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_3_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_awready : STD_LOGIC;
  signal net_slot_3_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_awvalid : STD_LOGIC;
  signal net_slot_3_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_bready : STD_LOGIC;
  signal net_slot_3_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_bvalid : STD_LOGIC;
  signal net_slot_3_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_3_axi_rlast : STD_LOGIC;
  signal net_slot_3_axi_rready : STD_LOGIC;
  signal net_slot_3_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_rvalid : STD_LOGIC;
  signal net_slot_3_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_3_axi_wlast : STD_LOGIC;
  signal net_slot_3_axi_wready : STD_LOGIC;
  signal net_slot_3_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_wvalid : STD_LOGIC;
  signal net_slot_4_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_araddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_4_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_4_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_4_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_arready : STD_LOGIC;
  signal net_slot_4_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_arvalid : STD_LOGIC;
  signal net_slot_4_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_awaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_4_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_4_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_4_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_awready : STD_LOGIC;
  signal net_slot_4_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_awvalid : STD_LOGIC;
  signal net_slot_4_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_bready : STD_LOGIC;
  signal net_slot_4_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_bvalid : STD_LOGIC;
  signal net_slot_4_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_4_axi_rlast : STD_LOGIC;
  signal net_slot_4_axi_rready : STD_LOGIC;
  signal net_slot_4_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_rvalid : STD_LOGIC;
  signal net_slot_4_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_4_axi_wlast : STD_LOGIC;
  signal net_slot_4_axi_wready : STD_LOGIC;
  signal net_slot_4_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_4_axi_wvalid : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe10_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe11_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe12_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe13_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe14_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe15_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe16_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe17_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe18_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe19_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe20_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe21_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe22_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe23_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe24_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe25_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe26_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe27_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe28_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe29_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe30_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe31_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe32_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe33_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe34_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe35_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe36_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe37_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe38_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe39_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe40_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe41_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe42_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe43_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe44_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe45_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe46_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe47_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe48_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe49_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal probe50_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe51_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe52_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe53_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe54_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe55_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal probe8_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal probe9_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal resetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_1_AXI:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50347222, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 50347222, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_1_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_1_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 50347222, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_1_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_2_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 50347222, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREGION";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREGION";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_3_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_3_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 50347222, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_4_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_4_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 50347222, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB";
begin
  Conn1_ARADDR(31 downto 0) <= SLOT_1_AXI_araddr(31 downto 0);
  Conn1_ARBURST(1 downto 0) <= SLOT_1_AXI_arburst(1 downto 0);
  Conn1_ARCACHE(3 downto 0) <= SLOT_1_AXI_arcache(3 downto 0);
  Conn1_ARLEN(7 downto 0) <= SLOT_1_AXI_arlen(7 downto 0);
  Conn1_ARPROT(2 downto 0) <= SLOT_1_AXI_arprot(2 downto 0);
  Conn1_ARREADY <= SLOT_1_AXI_arready;
  Conn1_ARSIZE(2 downto 0) <= SLOT_1_AXI_arsize(2 downto 0);
  Conn1_ARVALID <= SLOT_1_AXI_arvalid;
  Conn1_AWADDR(31 downto 0) <= SLOT_1_AXI_awaddr(31 downto 0);
  Conn1_AWBURST(1 downto 0) <= SLOT_1_AXI_awburst(1 downto 0);
  Conn1_AWCACHE(3 downto 0) <= SLOT_1_AXI_awcache(3 downto 0);
  Conn1_AWLEN(7 downto 0) <= SLOT_1_AXI_awlen(7 downto 0);
  Conn1_AWPROT(2 downto 0) <= SLOT_1_AXI_awprot(2 downto 0);
  Conn1_AWREADY <= SLOT_1_AXI_awready;
  Conn1_AWSIZE(2 downto 0) <= SLOT_1_AXI_awsize(2 downto 0);
  Conn1_AWVALID <= SLOT_1_AXI_awvalid;
  Conn1_BREADY <= SLOT_1_AXI_bready;
  Conn1_BRESP(1 downto 0) <= SLOT_1_AXI_bresp(1 downto 0);
  Conn1_BVALID <= SLOT_1_AXI_bvalid;
  Conn1_RDATA(31 downto 0) <= SLOT_1_AXI_rdata(31 downto 0);
  Conn1_RLAST <= SLOT_1_AXI_rlast;
  Conn1_RREADY <= SLOT_1_AXI_rready;
  Conn1_RRESP(1 downto 0) <= SLOT_1_AXI_rresp(1 downto 0);
  Conn1_RVALID <= SLOT_1_AXI_rvalid;
  Conn1_WDATA(31 downto 0) <= SLOT_1_AXI_wdata(31 downto 0);
  Conn1_WLAST <= SLOT_1_AXI_wlast;
  Conn1_WREADY <= SLOT_1_AXI_wready;
  Conn1_WSTRB(3 downto 0) <= SLOT_1_AXI_wstrb(3 downto 0);
  Conn1_WVALID <= SLOT_1_AXI_wvalid;
  Conn2_ARADDR(31 downto 0) <= SLOT_2_AXI_araddr(31 downto 0);
  Conn2_ARBURST(1 downto 0) <= SLOT_2_AXI_arburst(1 downto 0);
  Conn2_ARCACHE(3 downto 0) <= SLOT_2_AXI_arcache(3 downto 0);
  Conn2_ARLEN(7 downto 0) <= SLOT_2_AXI_arlen(7 downto 0);
  Conn2_ARLOCK(0) <= SLOT_2_AXI_arlock(0);
  Conn2_ARPROT(2 downto 0) <= SLOT_2_AXI_arprot(2 downto 0);
  Conn2_ARQOS(3 downto 0) <= SLOT_2_AXI_arqos(3 downto 0);
  Conn2_ARREADY <= SLOT_2_AXI_arready;
  Conn2_ARREGION(3 downto 0) <= SLOT_2_AXI_arregion(3 downto 0);
  Conn2_ARSIZE(2 downto 0) <= SLOT_2_AXI_arsize(2 downto 0);
  Conn2_ARVALID <= SLOT_2_AXI_arvalid;
  Conn2_AWADDR(31 downto 0) <= SLOT_2_AXI_awaddr(31 downto 0);
  Conn2_AWBURST(1 downto 0) <= SLOT_2_AXI_awburst(1 downto 0);
  Conn2_AWCACHE(3 downto 0) <= SLOT_2_AXI_awcache(3 downto 0);
  Conn2_AWLEN(7 downto 0) <= SLOT_2_AXI_awlen(7 downto 0);
  Conn2_AWLOCK(0) <= SLOT_2_AXI_awlock(0);
  Conn2_AWPROT(2 downto 0) <= SLOT_2_AXI_awprot(2 downto 0);
  Conn2_AWQOS(3 downto 0) <= SLOT_2_AXI_awqos(3 downto 0);
  Conn2_AWREADY <= SLOT_2_AXI_awready;
  Conn2_AWREGION(3 downto 0) <= SLOT_2_AXI_awregion(3 downto 0);
  Conn2_AWSIZE(2 downto 0) <= SLOT_2_AXI_awsize(2 downto 0);
  Conn2_AWVALID <= SLOT_2_AXI_awvalid;
  Conn2_BREADY <= SLOT_2_AXI_bready;
  Conn2_BRESP(1 downto 0) <= SLOT_2_AXI_bresp(1 downto 0);
  Conn2_BVALID <= SLOT_2_AXI_bvalid;
  Conn2_RDATA(31 downto 0) <= SLOT_2_AXI_rdata(31 downto 0);
  Conn2_RLAST <= SLOT_2_AXI_rlast;
  Conn2_RREADY <= SLOT_2_AXI_rready;
  Conn2_RRESP(1 downto 0) <= SLOT_2_AXI_rresp(1 downto 0);
  Conn2_RVALID <= SLOT_2_AXI_rvalid;
  Conn2_WDATA(31 downto 0) <= SLOT_2_AXI_wdata(31 downto 0);
  Conn2_WLAST <= SLOT_2_AXI_wlast;
  Conn2_WREADY <= SLOT_2_AXI_wready;
  Conn2_WSTRB(3 downto 0) <= SLOT_2_AXI_wstrb(3 downto 0);
  Conn2_WVALID <= SLOT_2_AXI_wvalid;
  Conn3_ARADDR(31 downto 0) <= SLOT_3_AXI_araddr(31 downto 0);
  Conn3_ARBURST(1 downto 0) <= SLOT_3_AXI_arburst(1 downto 0);
  Conn3_ARCACHE(3 downto 0) <= SLOT_3_AXI_arcache(3 downto 0);
  Conn3_ARLEN(7 downto 0) <= SLOT_3_AXI_arlen(7 downto 0);
  Conn3_ARPROT(2 downto 0) <= SLOT_3_AXI_arprot(2 downto 0);
  Conn3_ARREADY <= SLOT_3_AXI_arready;
  Conn3_ARSIZE(2 downto 0) <= SLOT_3_AXI_arsize(2 downto 0);
  Conn3_ARVALID <= SLOT_3_AXI_arvalid;
  Conn3_AWADDR(31 downto 0) <= SLOT_3_AXI_awaddr(31 downto 0);
  Conn3_AWBURST(1 downto 0) <= SLOT_3_AXI_awburst(1 downto 0);
  Conn3_AWCACHE(3 downto 0) <= SLOT_3_AXI_awcache(3 downto 0);
  Conn3_AWLEN(7 downto 0) <= SLOT_3_AXI_awlen(7 downto 0);
  Conn3_AWPROT(2 downto 0) <= SLOT_3_AXI_awprot(2 downto 0);
  Conn3_AWREADY <= SLOT_3_AXI_awready;
  Conn3_AWSIZE(2 downto 0) <= SLOT_3_AXI_awsize(2 downto 0);
  Conn3_AWVALID <= SLOT_3_AXI_awvalid;
  Conn3_BREADY <= SLOT_3_AXI_bready;
  Conn3_BRESP(1 downto 0) <= SLOT_3_AXI_bresp(1 downto 0);
  Conn3_BVALID <= SLOT_3_AXI_bvalid;
  Conn3_RDATA(31 downto 0) <= SLOT_3_AXI_rdata(31 downto 0);
  Conn3_RLAST <= SLOT_3_AXI_rlast;
  Conn3_RREADY <= SLOT_3_AXI_rready;
  Conn3_RRESP(1 downto 0) <= SLOT_3_AXI_rresp(1 downto 0);
  Conn3_RVALID <= SLOT_3_AXI_rvalid;
  Conn3_WDATA(31 downto 0) <= SLOT_3_AXI_wdata(31 downto 0);
  Conn3_WLAST <= SLOT_3_AXI_wlast;
  Conn3_WREADY <= SLOT_3_AXI_wready;
  Conn3_WSTRB(3 downto 0) <= SLOT_3_AXI_wstrb(3 downto 0);
  Conn3_WVALID <= SLOT_3_AXI_wvalid;
  Conn4_ARADDR(31 downto 0) <= SLOT_4_AXI_araddr(31 downto 0);
  Conn4_ARBURST(1 downto 0) <= SLOT_4_AXI_arburst(1 downto 0);
  Conn4_ARCACHE(3 downto 0) <= SLOT_4_AXI_arcache(3 downto 0);
  Conn4_ARLEN(7 downto 0) <= SLOT_4_AXI_arlen(7 downto 0);
  Conn4_ARPROT(2 downto 0) <= SLOT_4_AXI_arprot(2 downto 0);
  Conn4_ARREADY <= SLOT_4_AXI_arready;
  Conn4_ARSIZE(2 downto 0) <= SLOT_4_AXI_arsize(2 downto 0);
  Conn4_ARVALID <= SLOT_4_AXI_arvalid;
  Conn4_AWADDR(31 downto 0) <= SLOT_4_AXI_awaddr(31 downto 0);
  Conn4_AWBURST(1 downto 0) <= SLOT_4_AXI_awburst(1 downto 0);
  Conn4_AWCACHE(3 downto 0) <= SLOT_4_AXI_awcache(3 downto 0);
  Conn4_AWLEN(7 downto 0) <= SLOT_4_AXI_awlen(7 downto 0);
  Conn4_AWPROT(2 downto 0) <= SLOT_4_AXI_awprot(2 downto 0);
  Conn4_AWREADY <= SLOT_4_AXI_awready;
  Conn4_AWSIZE(2 downto 0) <= SLOT_4_AXI_awsize(2 downto 0);
  Conn4_AWVALID <= SLOT_4_AXI_awvalid;
  Conn4_BREADY <= SLOT_4_AXI_bready;
  Conn4_BRESP(1 downto 0) <= SLOT_4_AXI_bresp(1 downto 0);
  Conn4_BVALID <= SLOT_4_AXI_bvalid;
  Conn4_RDATA(31 downto 0) <= SLOT_4_AXI_rdata(31 downto 0);
  Conn4_RLAST <= SLOT_4_AXI_rlast;
  Conn4_RREADY <= SLOT_4_AXI_rready;
  Conn4_RRESP(1 downto 0) <= SLOT_4_AXI_rresp(1 downto 0);
  Conn4_RVALID <= SLOT_4_AXI_rvalid;
  Conn4_WDATA(31 downto 0) <= SLOT_4_AXI_wdata(31 downto 0);
  Conn4_WLAST <= SLOT_4_AXI_wlast;
  Conn4_WREADY <= SLOT_4_AXI_wready;
  Conn4_WSTRB(3 downto 0) <= SLOT_4_AXI_wstrb(3 downto 0);
  Conn4_WVALID <= SLOT_4_AXI_wvalid;
  Conn_ARADDR(31 downto 0) <= SLOT_0_AXI_araddr(31 downto 0);
  Conn_ARBURST(1 downto 0) <= SLOT_0_AXI_arburst(1 downto 0);
  Conn_ARCACHE(3 downto 0) <= SLOT_0_AXI_arcache(3 downto 0);
  Conn_ARLEN(7 downto 0) <= SLOT_0_AXI_arlen(7 downto 0);
  Conn_ARPROT(2 downto 0) <= SLOT_0_AXI_arprot(2 downto 0);
  Conn_ARREADY <= SLOT_0_AXI_arready;
  Conn_ARSIZE(2 downto 0) <= SLOT_0_AXI_arsize(2 downto 0);
  Conn_ARVALID <= SLOT_0_AXI_arvalid;
  Conn_AWADDR(31 downto 0) <= SLOT_0_AXI_awaddr(31 downto 0);
  Conn_AWBURST(1 downto 0) <= SLOT_0_AXI_awburst(1 downto 0);
  Conn_AWCACHE(3 downto 0) <= SLOT_0_AXI_awcache(3 downto 0);
  Conn_AWLEN(7 downto 0) <= SLOT_0_AXI_awlen(7 downto 0);
  Conn_AWPROT(2 downto 0) <= SLOT_0_AXI_awprot(2 downto 0);
  Conn_AWREADY <= SLOT_0_AXI_awready;
  Conn_AWSIZE(2 downto 0) <= SLOT_0_AXI_awsize(2 downto 0);
  Conn_AWVALID <= SLOT_0_AXI_awvalid;
  Conn_BREADY <= SLOT_0_AXI_bready;
  Conn_BRESP(1 downto 0) <= SLOT_0_AXI_bresp(1 downto 0);
  Conn_BVALID <= SLOT_0_AXI_bvalid;
  Conn_RDATA(31 downto 0) <= SLOT_0_AXI_rdata(31 downto 0);
  Conn_RLAST <= SLOT_0_AXI_rlast;
  Conn_RREADY <= SLOT_0_AXI_rready;
  Conn_RRESP(1 downto 0) <= SLOT_0_AXI_rresp(1 downto 0);
  Conn_RVALID <= SLOT_0_AXI_rvalid;
  Conn_WDATA(31 downto 0) <= SLOT_0_AXI_wdata(31 downto 0);
  Conn_WLAST <= SLOT_0_AXI_wlast;
  Conn_WREADY <= SLOT_0_AXI_wready;
  Conn_WSTRB(3 downto 0) <= SLOT_0_AXI_wstrb(3 downto 0);
  Conn_WVALID <= SLOT_0_AXI_wvalid;
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
  probe10_1(12 downto 0) <= probe10(12 downto 0);
  probe11_1(12 downto 0) <= probe11(12 downto 0);
  probe12_1(12 downto 0) <= probe12(12 downto 0);
  probe13_1(12 downto 0) <= probe13(12 downto 0);
  probe14_1(12 downto 0) <= probe14(12 downto 0);
  probe15_1(12 downto 0) <= probe15(12 downto 0);
  probe16_1(12 downto 0) <= probe16(12 downto 0);
  probe17_1(12 downto 0) <= probe17(12 downto 0);
  probe18_1(12 downto 0) <= probe18(12 downto 0);
  probe19_1(12 downto 0) <= probe19(12 downto 0);
  probe1_1(0) <= probe1(0);
  probe20_1(12 downto 0) <= probe20(12 downto 0);
  probe21_1(12 downto 0) <= probe21(12 downto 0);
  probe22_1(12 downto 0) <= probe22(12 downto 0);
  probe23_1(12 downto 0) <= probe23(12 downto 0);
  probe24_1(12 downto 0) <= probe24(12 downto 0);
  probe25_1(12 downto 0) <= probe25(12 downto 0);
  probe26_1(12 downto 0) <= probe26(12 downto 0);
  probe27_1(12 downto 0) <= probe27(12 downto 0);
  probe28_1(12 downto 0) <= probe28(12 downto 0);
  probe29_1(12 downto 0) <= probe29(12 downto 0);
  probe2_1(0) <= probe2(0);
  probe30_1(12 downto 0) <= probe30(12 downto 0);
  probe31_1(12 downto 0) <= probe31(12 downto 0);
  probe32_1(12 downto 0) <= probe32(12 downto 0);
  probe33_1(12 downto 0) <= probe33(12 downto 0);
  probe34_1(12 downto 0) <= probe34(12 downto 0);
  probe35_1(12 downto 0) <= probe35(12 downto 0);
  probe36_1(12 downto 0) <= probe36(12 downto 0);
  probe37_1(12 downto 0) <= probe37(12 downto 0);
  probe38_1(12 downto 0) <= probe38(12 downto 0);
  probe39_1(12 downto 0) <= probe39(12 downto 0);
  probe3_1(0) <= probe3(0);
  probe40_1(12 downto 0) <= probe40(12 downto 0);
  probe41_1(12 downto 0) <= probe41(12 downto 0);
  probe42_1(12 downto 0) <= probe42(12 downto 0);
  probe43_1(12 downto 0) <= probe43(12 downto 0);
  probe44_1(12 downto 0) <= probe44(12 downto 0);
  probe45_1(12 downto 0) <= probe45(12 downto 0);
  probe46_1(12 downto 0) <= probe46(12 downto 0);
  probe47_1(12 downto 0) <= probe47(12 downto 0);
  probe48_1(12 downto 0) <= probe48(12 downto 0);
  probe49_1(12 downto 0) <= probe49(12 downto 0);
  probe4_1(33 downto 0) <= probe4(33 downto 0);
  probe50_1(12 downto 0) <= probe50(12 downto 0);
  probe51_1(12 downto 0) <= probe51(12 downto 0);
  probe52_1(12 downto 0) <= probe52(12 downto 0);
  probe53_1(12 downto 0) <= probe53(12 downto 0);
  probe54_1(12 downto 0) <= probe54(12 downto 0);
  probe55_1(12 downto 0) <= probe55(12 downto 0);
  probe5_1(0) <= probe5(0);
  probe6_1(0) <= probe6(0);
  probe7_1(33 downto 0) <= probe7(33 downto 0);
  probe8_1(12 downto 0) <= probe8(12 downto 0);
  probe9_1(12 downto 0) <= probe9(12 downto 0);
  resetn_1 <= resetn;
g_inst: component bd_07cf_g_inst_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      m_slot_0_axi_ar_cnt(1 downto 0) => net_slot_0_axi_ar_cnt(1 downto 0),
      m_slot_0_axi_araddr(31 downto 0) => net_slot_0_axi_araddr(31 downto 0),
      m_slot_0_axi_arburst(1 downto 0) => net_slot_0_axi_arburst(1 downto 0),
      m_slot_0_axi_arcache(3 downto 0) => net_slot_0_axi_arcache(3 downto 0),
      m_slot_0_axi_arlen(7 downto 0) => net_slot_0_axi_arlen(7 downto 0),
      m_slot_0_axi_arprot(2 downto 0) => net_slot_0_axi_arprot(2 downto 0),
      m_slot_0_axi_arready => net_slot_0_axi_arready,
      m_slot_0_axi_arsize(2 downto 0) => net_slot_0_axi_arsize(2 downto 0),
      m_slot_0_axi_arvalid => net_slot_0_axi_arvalid,
      m_slot_0_axi_aw_cnt(1 downto 0) => net_slot_0_axi_aw_cnt(1 downto 0),
      m_slot_0_axi_awaddr(31 downto 0) => net_slot_0_axi_awaddr(31 downto 0),
      m_slot_0_axi_awburst(1 downto 0) => net_slot_0_axi_awburst(1 downto 0),
      m_slot_0_axi_awcache(3 downto 0) => net_slot_0_axi_awcache(3 downto 0),
      m_slot_0_axi_awlen(7 downto 0) => net_slot_0_axi_awlen(7 downto 0),
      m_slot_0_axi_awprot(2 downto 0) => net_slot_0_axi_awprot(2 downto 0),
      m_slot_0_axi_awready => net_slot_0_axi_awready,
      m_slot_0_axi_awsize(2 downto 0) => net_slot_0_axi_awsize(2 downto 0),
      m_slot_0_axi_awvalid => net_slot_0_axi_awvalid,
      m_slot_0_axi_b_cnt(1 downto 0) => net_slot_0_axi_b_cnt(1 downto 0),
      m_slot_0_axi_bready => net_slot_0_axi_bready,
      m_slot_0_axi_bresp(1 downto 0) => net_slot_0_axi_bresp(1 downto 0),
      m_slot_0_axi_bvalid => net_slot_0_axi_bvalid,
      m_slot_0_axi_r_cnt(1 downto 0) => net_slot_0_axi_r_cnt(1 downto 0),
      m_slot_0_axi_rdata(31 downto 0) => net_slot_0_axi_rdata(31 downto 0),
      m_slot_0_axi_rlast => net_slot_0_axi_rlast,
      m_slot_0_axi_rready => net_slot_0_axi_rready,
      m_slot_0_axi_rresp(1 downto 0) => net_slot_0_axi_rresp(1 downto 0),
      m_slot_0_axi_rvalid => net_slot_0_axi_rvalid,
      m_slot_0_axi_wdata(31 downto 0) => net_slot_0_axi_wdata(31 downto 0),
      m_slot_0_axi_wlast => net_slot_0_axi_wlast,
      m_slot_0_axi_wready => net_slot_0_axi_wready,
      m_slot_0_axi_wstrb(3 downto 0) => net_slot_0_axi_wstrb(3 downto 0),
      m_slot_0_axi_wvalid => net_slot_0_axi_wvalid,
      m_slot_1_axi_ar_cnt(1 downto 0) => net_slot_1_axi_ar_cnt(1 downto 0),
      m_slot_1_axi_araddr(31 downto 0) => net_slot_1_axi_araddr(31 downto 0),
      m_slot_1_axi_arburst(1 downto 0) => net_slot_1_axi_arburst(1 downto 0),
      m_slot_1_axi_arcache(3 downto 0) => net_slot_1_axi_arcache(3 downto 0),
      m_slot_1_axi_arlen(7 downto 0) => net_slot_1_axi_arlen(7 downto 0),
      m_slot_1_axi_arprot(2 downto 0) => net_slot_1_axi_arprot(2 downto 0),
      m_slot_1_axi_arready => net_slot_1_axi_arready,
      m_slot_1_axi_arsize(2 downto 0) => net_slot_1_axi_arsize(2 downto 0),
      m_slot_1_axi_arvalid => net_slot_1_axi_arvalid,
      m_slot_1_axi_aw_cnt(1 downto 0) => net_slot_1_axi_aw_cnt(1 downto 0),
      m_slot_1_axi_awaddr(31 downto 0) => net_slot_1_axi_awaddr(31 downto 0),
      m_slot_1_axi_awburst(1 downto 0) => net_slot_1_axi_awburst(1 downto 0),
      m_slot_1_axi_awcache(3 downto 0) => net_slot_1_axi_awcache(3 downto 0),
      m_slot_1_axi_awlen(7 downto 0) => net_slot_1_axi_awlen(7 downto 0),
      m_slot_1_axi_awprot(2 downto 0) => net_slot_1_axi_awprot(2 downto 0),
      m_slot_1_axi_awready => net_slot_1_axi_awready,
      m_slot_1_axi_awsize(2 downto 0) => net_slot_1_axi_awsize(2 downto 0),
      m_slot_1_axi_awvalid => net_slot_1_axi_awvalid,
      m_slot_1_axi_b_cnt(1 downto 0) => net_slot_1_axi_b_cnt(1 downto 0),
      m_slot_1_axi_bready => net_slot_1_axi_bready,
      m_slot_1_axi_bresp(1 downto 0) => net_slot_1_axi_bresp(1 downto 0),
      m_slot_1_axi_bvalid => net_slot_1_axi_bvalid,
      m_slot_1_axi_r_cnt(1 downto 0) => net_slot_1_axi_r_cnt(1 downto 0),
      m_slot_1_axi_rdata(31 downto 0) => net_slot_1_axi_rdata(31 downto 0),
      m_slot_1_axi_rlast => net_slot_1_axi_rlast,
      m_slot_1_axi_rready => net_slot_1_axi_rready,
      m_slot_1_axi_rresp(1 downto 0) => net_slot_1_axi_rresp(1 downto 0),
      m_slot_1_axi_rvalid => net_slot_1_axi_rvalid,
      m_slot_1_axi_wdata(31 downto 0) => net_slot_1_axi_wdata(31 downto 0),
      m_slot_1_axi_wlast => net_slot_1_axi_wlast,
      m_slot_1_axi_wready => net_slot_1_axi_wready,
      m_slot_1_axi_wstrb(3 downto 0) => net_slot_1_axi_wstrb(3 downto 0),
      m_slot_1_axi_wvalid => net_slot_1_axi_wvalid,
      m_slot_2_axi_ar_cnt(1 downto 0) => net_slot_2_axi_ar_cnt(1 downto 0),
      m_slot_2_axi_araddr(31 downto 0) => net_slot_2_axi_araddr(31 downto 0),
      m_slot_2_axi_arburst(1 downto 0) => net_slot_2_axi_arburst(1 downto 0),
      m_slot_2_axi_arcache(3 downto 0) => net_slot_2_axi_arcache(3 downto 0),
      m_slot_2_axi_arlen(7 downto 0) => net_slot_2_axi_arlen(7 downto 0),
      m_slot_2_axi_arlock(0) => net_slot_2_axi_arlock(0),
      m_slot_2_axi_arprot(2 downto 0) => net_slot_2_axi_arprot(2 downto 0),
      m_slot_2_axi_arqos(3 downto 0) => net_slot_2_axi_arqos(3 downto 0),
      m_slot_2_axi_arready => net_slot_2_axi_arready,
      m_slot_2_axi_arregion(3 downto 0) => net_slot_2_axi_arregion(3 downto 0),
      m_slot_2_axi_arsize(2 downto 0) => net_slot_2_axi_arsize(2 downto 0),
      m_slot_2_axi_arvalid => net_slot_2_axi_arvalid,
      m_slot_2_axi_aw_cnt(1 downto 0) => net_slot_2_axi_aw_cnt(1 downto 0),
      m_slot_2_axi_awaddr(31 downto 0) => net_slot_2_axi_awaddr(31 downto 0),
      m_slot_2_axi_awburst(1 downto 0) => net_slot_2_axi_awburst(1 downto 0),
      m_slot_2_axi_awcache(3 downto 0) => net_slot_2_axi_awcache(3 downto 0),
      m_slot_2_axi_awlen(7 downto 0) => net_slot_2_axi_awlen(7 downto 0),
      m_slot_2_axi_awlock(0) => net_slot_2_axi_awlock(0),
      m_slot_2_axi_awprot(2 downto 0) => net_slot_2_axi_awprot(2 downto 0),
      m_slot_2_axi_awqos(3 downto 0) => net_slot_2_axi_awqos(3 downto 0),
      m_slot_2_axi_awready => net_slot_2_axi_awready,
      m_slot_2_axi_awregion(3 downto 0) => net_slot_2_axi_awregion(3 downto 0),
      m_slot_2_axi_awsize(2 downto 0) => net_slot_2_axi_awsize(2 downto 0),
      m_slot_2_axi_awvalid => net_slot_2_axi_awvalid,
      m_slot_2_axi_b_cnt(1 downto 0) => net_slot_2_axi_b_cnt(1 downto 0),
      m_slot_2_axi_bready => net_slot_2_axi_bready,
      m_slot_2_axi_bresp(1 downto 0) => net_slot_2_axi_bresp(1 downto 0),
      m_slot_2_axi_bvalid => net_slot_2_axi_bvalid,
      m_slot_2_axi_r_cnt(1 downto 0) => net_slot_2_axi_r_cnt(1 downto 0),
      m_slot_2_axi_rdata(31 downto 0) => net_slot_2_axi_rdata(31 downto 0),
      m_slot_2_axi_rlast => net_slot_2_axi_rlast,
      m_slot_2_axi_rready => net_slot_2_axi_rready,
      m_slot_2_axi_rresp(1 downto 0) => net_slot_2_axi_rresp(1 downto 0),
      m_slot_2_axi_rvalid => net_slot_2_axi_rvalid,
      m_slot_2_axi_wdata(31 downto 0) => net_slot_2_axi_wdata(31 downto 0),
      m_slot_2_axi_wlast => net_slot_2_axi_wlast,
      m_slot_2_axi_wready => net_slot_2_axi_wready,
      m_slot_2_axi_wstrb(3 downto 0) => net_slot_2_axi_wstrb(3 downto 0),
      m_slot_2_axi_wvalid => net_slot_2_axi_wvalid,
      m_slot_3_axi_ar_cnt(1 downto 0) => net_slot_3_axi_ar_cnt(1 downto 0),
      m_slot_3_axi_araddr(31 downto 0) => net_slot_3_axi_araddr(31 downto 0),
      m_slot_3_axi_arburst(1 downto 0) => net_slot_3_axi_arburst(1 downto 0),
      m_slot_3_axi_arcache(3 downto 0) => net_slot_3_axi_arcache(3 downto 0),
      m_slot_3_axi_arlen(7 downto 0) => net_slot_3_axi_arlen(7 downto 0),
      m_slot_3_axi_arprot(2 downto 0) => net_slot_3_axi_arprot(2 downto 0),
      m_slot_3_axi_arready => net_slot_3_axi_arready,
      m_slot_3_axi_arsize(2 downto 0) => net_slot_3_axi_arsize(2 downto 0),
      m_slot_3_axi_arvalid => net_slot_3_axi_arvalid,
      m_slot_3_axi_aw_cnt(1 downto 0) => net_slot_3_axi_aw_cnt(1 downto 0),
      m_slot_3_axi_awaddr(31 downto 0) => net_slot_3_axi_awaddr(31 downto 0),
      m_slot_3_axi_awburst(1 downto 0) => net_slot_3_axi_awburst(1 downto 0),
      m_slot_3_axi_awcache(3 downto 0) => net_slot_3_axi_awcache(3 downto 0),
      m_slot_3_axi_awlen(7 downto 0) => net_slot_3_axi_awlen(7 downto 0),
      m_slot_3_axi_awprot(2 downto 0) => net_slot_3_axi_awprot(2 downto 0),
      m_slot_3_axi_awready => net_slot_3_axi_awready,
      m_slot_3_axi_awsize(2 downto 0) => net_slot_3_axi_awsize(2 downto 0),
      m_slot_3_axi_awvalid => net_slot_3_axi_awvalid,
      m_slot_3_axi_b_cnt(1 downto 0) => net_slot_3_axi_b_cnt(1 downto 0),
      m_slot_3_axi_bready => net_slot_3_axi_bready,
      m_slot_3_axi_bresp(1 downto 0) => net_slot_3_axi_bresp(1 downto 0),
      m_slot_3_axi_bvalid => net_slot_3_axi_bvalid,
      m_slot_3_axi_r_cnt(1 downto 0) => net_slot_3_axi_r_cnt(1 downto 0),
      m_slot_3_axi_rdata(31 downto 0) => net_slot_3_axi_rdata(31 downto 0),
      m_slot_3_axi_rlast => net_slot_3_axi_rlast,
      m_slot_3_axi_rready => net_slot_3_axi_rready,
      m_slot_3_axi_rresp(1 downto 0) => net_slot_3_axi_rresp(1 downto 0),
      m_slot_3_axi_rvalid => net_slot_3_axi_rvalid,
      m_slot_3_axi_wdata(31 downto 0) => net_slot_3_axi_wdata(31 downto 0),
      m_slot_3_axi_wlast => net_slot_3_axi_wlast,
      m_slot_3_axi_wready => net_slot_3_axi_wready,
      m_slot_3_axi_wstrb(3 downto 0) => net_slot_3_axi_wstrb(3 downto 0),
      m_slot_3_axi_wvalid => net_slot_3_axi_wvalid,
      m_slot_4_axi_ar_cnt(1 downto 0) => net_slot_4_axi_ar_cnt(1 downto 0),
      m_slot_4_axi_araddr(31 downto 0) => net_slot_4_axi_araddr(31 downto 0),
      m_slot_4_axi_arburst(1 downto 0) => net_slot_4_axi_arburst(1 downto 0),
      m_slot_4_axi_arcache(3 downto 0) => net_slot_4_axi_arcache(3 downto 0),
      m_slot_4_axi_arlen(7 downto 0) => net_slot_4_axi_arlen(7 downto 0),
      m_slot_4_axi_arprot(2 downto 0) => net_slot_4_axi_arprot(2 downto 0),
      m_slot_4_axi_arready => net_slot_4_axi_arready,
      m_slot_4_axi_arsize(2 downto 0) => net_slot_4_axi_arsize(2 downto 0),
      m_slot_4_axi_arvalid => net_slot_4_axi_arvalid,
      m_slot_4_axi_aw_cnt(1 downto 0) => net_slot_4_axi_aw_cnt(1 downto 0),
      m_slot_4_axi_awaddr(31 downto 0) => net_slot_4_axi_awaddr(31 downto 0),
      m_slot_4_axi_awburst(1 downto 0) => net_slot_4_axi_awburst(1 downto 0),
      m_slot_4_axi_awcache(3 downto 0) => net_slot_4_axi_awcache(3 downto 0),
      m_slot_4_axi_awlen(7 downto 0) => net_slot_4_axi_awlen(7 downto 0),
      m_slot_4_axi_awprot(2 downto 0) => net_slot_4_axi_awprot(2 downto 0),
      m_slot_4_axi_awready => net_slot_4_axi_awready,
      m_slot_4_axi_awsize(2 downto 0) => net_slot_4_axi_awsize(2 downto 0),
      m_slot_4_axi_awvalid => net_slot_4_axi_awvalid,
      m_slot_4_axi_b_cnt(1 downto 0) => net_slot_4_axi_b_cnt(1 downto 0),
      m_slot_4_axi_bready => net_slot_4_axi_bready,
      m_slot_4_axi_bresp(1 downto 0) => net_slot_4_axi_bresp(1 downto 0),
      m_slot_4_axi_bvalid => net_slot_4_axi_bvalid,
      m_slot_4_axi_r_cnt(1 downto 0) => net_slot_4_axi_r_cnt(1 downto 0),
      m_slot_4_axi_rdata(31 downto 0) => net_slot_4_axi_rdata(31 downto 0),
      m_slot_4_axi_rlast => net_slot_4_axi_rlast,
      m_slot_4_axi_rready => net_slot_4_axi_rready,
      m_slot_4_axi_rresp(1 downto 0) => net_slot_4_axi_rresp(1 downto 0),
      m_slot_4_axi_rvalid => net_slot_4_axi_rvalid,
      m_slot_4_axi_wdata(31 downto 0) => net_slot_4_axi_wdata(31 downto 0),
      m_slot_4_axi_wlast => net_slot_4_axi_wlast,
      m_slot_4_axi_wready => net_slot_4_axi_wready,
      m_slot_4_axi_wstrb(3 downto 0) => net_slot_4_axi_wstrb(3 downto 0),
      m_slot_4_axi_wvalid => net_slot_4_axi_wvalid,
      slot_0_axi_araddr(31 downto 0) => Conn_ARADDR(31 downto 0),
      slot_0_axi_arburst(1 downto 0) => Conn_ARBURST(1 downto 0),
      slot_0_axi_arcache(3 downto 0) => Conn_ARCACHE(3 downto 0),
      slot_0_axi_arlen(7 downto 0) => Conn_ARLEN(7 downto 0),
      slot_0_axi_arprot(2 downto 0) => Conn_ARPROT(2 downto 0),
      slot_0_axi_arready => Conn_ARREADY,
      slot_0_axi_arsize(2 downto 0) => Conn_ARSIZE(2 downto 0),
      slot_0_axi_arvalid => Conn_ARVALID,
      slot_0_axi_awaddr(31 downto 0) => Conn_AWADDR(31 downto 0),
      slot_0_axi_awburst(1 downto 0) => Conn_AWBURST(1 downto 0),
      slot_0_axi_awcache(3 downto 0) => Conn_AWCACHE(3 downto 0),
      slot_0_axi_awlen(7 downto 0) => Conn_AWLEN(7 downto 0),
      slot_0_axi_awprot(2 downto 0) => Conn_AWPROT(2 downto 0),
      slot_0_axi_awready => Conn_AWREADY,
      slot_0_axi_awsize(2 downto 0) => Conn_AWSIZE(2 downto 0),
      slot_0_axi_awvalid => Conn_AWVALID,
      slot_0_axi_bready => Conn_BREADY,
      slot_0_axi_bresp(1 downto 0) => Conn_BRESP(1 downto 0),
      slot_0_axi_bvalid => Conn_BVALID,
      slot_0_axi_rdata(31 downto 0) => Conn_RDATA(31 downto 0),
      slot_0_axi_rlast => Conn_RLAST,
      slot_0_axi_rready => Conn_RREADY,
      slot_0_axi_rresp(1 downto 0) => Conn_RRESP(1 downto 0),
      slot_0_axi_rvalid => Conn_RVALID,
      slot_0_axi_wdata(31 downto 0) => Conn_WDATA(31 downto 0),
      slot_0_axi_wlast => Conn_WLAST,
      slot_0_axi_wready => Conn_WREADY,
      slot_0_axi_wstrb(3 downto 0) => Conn_WSTRB(3 downto 0),
      slot_0_axi_wvalid => Conn_WVALID,
      slot_1_axi_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      slot_1_axi_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      slot_1_axi_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      slot_1_axi_arlen(7 downto 0) => Conn1_ARLEN(7 downto 0),
      slot_1_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      slot_1_axi_arready => Conn1_ARREADY,
      slot_1_axi_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      slot_1_axi_arvalid => Conn1_ARVALID,
      slot_1_axi_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      slot_1_axi_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      slot_1_axi_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      slot_1_axi_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      slot_1_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      slot_1_axi_awready => Conn1_AWREADY,
      slot_1_axi_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      slot_1_axi_awvalid => Conn1_AWVALID,
      slot_1_axi_bready => Conn1_BREADY,
      slot_1_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      slot_1_axi_bvalid => Conn1_BVALID,
      slot_1_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      slot_1_axi_rlast => Conn1_RLAST,
      slot_1_axi_rready => Conn1_RREADY,
      slot_1_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      slot_1_axi_rvalid => Conn1_RVALID,
      slot_1_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      slot_1_axi_wlast => Conn1_WLAST,
      slot_1_axi_wready => Conn1_WREADY,
      slot_1_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      slot_1_axi_wvalid => Conn1_WVALID,
      slot_2_axi_araddr(31 downto 0) => Conn2_ARADDR(31 downto 0),
      slot_2_axi_arburst(1 downto 0) => Conn2_ARBURST(1 downto 0),
      slot_2_axi_arcache(3 downto 0) => Conn2_ARCACHE(3 downto 0),
      slot_2_axi_arlen(7 downto 0) => Conn2_ARLEN(7 downto 0),
      slot_2_axi_arlock(0) => Conn2_ARLOCK(0),
      slot_2_axi_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      slot_2_axi_arqos(3 downto 0) => Conn2_ARQOS(3 downto 0),
      slot_2_axi_arready => Conn2_ARREADY,
      slot_2_axi_arregion(3 downto 0) => Conn2_ARREGION(3 downto 0),
      slot_2_axi_arsize(2 downto 0) => Conn2_ARSIZE(2 downto 0),
      slot_2_axi_arvalid => Conn2_ARVALID,
      slot_2_axi_awaddr(31 downto 0) => Conn2_AWADDR(31 downto 0),
      slot_2_axi_awburst(1 downto 0) => Conn2_AWBURST(1 downto 0),
      slot_2_axi_awcache(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      slot_2_axi_awlen(7 downto 0) => Conn2_AWLEN(7 downto 0),
      slot_2_axi_awlock(0) => Conn2_AWLOCK(0),
      slot_2_axi_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      slot_2_axi_awqos(3 downto 0) => Conn2_AWQOS(3 downto 0),
      slot_2_axi_awready => Conn2_AWREADY,
      slot_2_axi_awregion(3 downto 0) => Conn2_AWREGION(3 downto 0),
      slot_2_axi_awsize(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      slot_2_axi_awvalid => Conn2_AWVALID,
      slot_2_axi_bready => Conn2_BREADY,
      slot_2_axi_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      slot_2_axi_bvalid => Conn2_BVALID,
      slot_2_axi_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      slot_2_axi_rlast => Conn2_RLAST,
      slot_2_axi_rready => Conn2_RREADY,
      slot_2_axi_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      slot_2_axi_rvalid => Conn2_RVALID,
      slot_2_axi_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      slot_2_axi_wlast => Conn2_WLAST,
      slot_2_axi_wready => Conn2_WREADY,
      slot_2_axi_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      slot_2_axi_wvalid => Conn2_WVALID,
      slot_3_axi_araddr(31 downto 0) => Conn3_ARADDR(31 downto 0),
      slot_3_axi_arburst(1 downto 0) => Conn3_ARBURST(1 downto 0),
      slot_3_axi_arcache(3 downto 0) => Conn3_ARCACHE(3 downto 0),
      slot_3_axi_arlen(7 downto 0) => Conn3_ARLEN(7 downto 0),
      slot_3_axi_arprot(2 downto 0) => Conn3_ARPROT(2 downto 0),
      slot_3_axi_arready => Conn3_ARREADY,
      slot_3_axi_arsize(2 downto 0) => Conn3_ARSIZE(2 downto 0),
      slot_3_axi_arvalid => Conn3_ARVALID,
      slot_3_axi_awaddr(31 downto 0) => Conn3_AWADDR(31 downto 0),
      slot_3_axi_awburst(1 downto 0) => Conn3_AWBURST(1 downto 0),
      slot_3_axi_awcache(3 downto 0) => Conn3_AWCACHE(3 downto 0),
      slot_3_axi_awlen(7 downto 0) => Conn3_AWLEN(7 downto 0),
      slot_3_axi_awprot(2 downto 0) => Conn3_AWPROT(2 downto 0),
      slot_3_axi_awready => Conn3_AWREADY,
      slot_3_axi_awsize(2 downto 0) => Conn3_AWSIZE(2 downto 0),
      slot_3_axi_awvalid => Conn3_AWVALID,
      slot_3_axi_bready => Conn3_BREADY,
      slot_3_axi_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      slot_3_axi_bvalid => Conn3_BVALID,
      slot_3_axi_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      slot_3_axi_rlast => Conn3_RLAST,
      slot_3_axi_rready => Conn3_RREADY,
      slot_3_axi_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      slot_3_axi_rvalid => Conn3_RVALID,
      slot_3_axi_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      slot_3_axi_wlast => Conn3_WLAST,
      slot_3_axi_wready => Conn3_WREADY,
      slot_3_axi_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      slot_3_axi_wvalid => Conn3_WVALID,
      slot_4_axi_araddr(31 downto 0) => Conn4_ARADDR(31 downto 0),
      slot_4_axi_arburst(1 downto 0) => Conn4_ARBURST(1 downto 0),
      slot_4_axi_arcache(3 downto 0) => Conn4_ARCACHE(3 downto 0),
      slot_4_axi_arlen(7 downto 0) => Conn4_ARLEN(7 downto 0),
      slot_4_axi_arprot(2 downto 0) => Conn4_ARPROT(2 downto 0),
      slot_4_axi_arready => Conn4_ARREADY,
      slot_4_axi_arsize(2 downto 0) => Conn4_ARSIZE(2 downto 0),
      slot_4_axi_arvalid => Conn4_ARVALID,
      slot_4_axi_awaddr(31 downto 0) => Conn4_AWADDR(31 downto 0),
      slot_4_axi_awburst(1 downto 0) => Conn4_AWBURST(1 downto 0),
      slot_4_axi_awcache(3 downto 0) => Conn4_AWCACHE(3 downto 0),
      slot_4_axi_awlen(7 downto 0) => Conn4_AWLEN(7 downto 0),
      slot_4_axi_awprot(2 downto 0) => Conn4_AWPROT(2 downto 0),
      slot_4_axi_awready => Conn4_AWREADY,
      slot_4_axi_awsize(2 downto 0) => Conn4_AWSIZE(2 downto 0),
      slot_4_axi_awvalid => Conn4_AWVALID,
      slot_4_axi_bready => Conn4_BREADY,
      slot_4_axi_bresp(1 downto 0) => Conn4_BRESP(1 downto 0),
      slot_4_axi_bvalid => Conn4_BVALID,
      slot_4_axi_rdata(31 downto 0) => Conn4_RDATA(31 downto 0),
      slot_4_axi_rlast => Conn4_RLAST,
      slot_4_axi_rready => Conn4_RREADY,
      slot_4_axi_rresp(1 downto 0) => Conn4_RRESP(1 downto 0),
      slot_4_axi_rvalid => Conn4_RVALID,
      slot_4_axi_wdata(31 downto 0) => Conn4_WDATA(31 downto 0),
      slot_4_axi_wlast => Conn4_WLAST,
      slot_4_axi_wready => Conn4_WREADY,
      slot_4_axi_wstrb(3 downto 0) => Conn4_WSTRB(3 downto 0),
      slot_4_axi_wvalid => Conn4_WVALID
    );
ila_lib: component bd_07cf_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0),
      probe1(0) => probe1_1(0),
      probe10(12 downto 0) => probe10_1(12 downto 0),
      probe100(1 downto 0) => net_slot_1_axi_rresp(1 downto 0),
      probe101(31 downto 0) => net_slot_1_axi_wdata(31 downto 0),
      probe102(3 downto 0) => net_slot_1_axi_wstrb(3 downto 0),
      probe103(1 downto 0) => net_slot_1_axi_aw_ctrl(1 downto 0),
      probe104(2 downto 0) => net_slot_1_axi_w_ctrl(2 downto 0),
      probe105(1 downto 0) => net_slot_1_axi_b_ctrl(1 downto 0),
      probe106(1 downto 0) => net_slot_1_axi_ar_ctrl(1 downto 0),
      probe107(2 downto 0) => net_slot_1_axi_r_ctrl(2 downto 0),
      probe108(1 downto 0) => net_slot_2_axi_ar_cnt(1 downto 0),
      probe109(31 downto 0) => net_slot_2_axi_araddr(31 downto 0),
      probe11(12 downto 0) => probe11_1(12 downto 0),
      probe110(1 downto 0) => net_slot_2_axi_arburst(1 downto 0),
      probe111(3 downto 0) => net_slot_2_axi_arcache(3 downto 0),
      probe112(7 downto 0) => net_slot_2_axi_arlen(7 downto 0),
      probe113(0) => net_slot_2_axi_arlock(0),
      probe114(2 downto 0) => net_slot_2_axi_arprot(2 downto 0),
      probe115(3 downto 0) => net_slot_2_axi_arqos(3 downto 0),
      probe116(3 downto 0) => net_slot_2_axi_arregion(3 downto 0),
      probe117(2 downto 0) => net_slot_2_axi_arsize(2 downto 0),
      probe118(1 downto 0) => net_slot_2_axi_aw_cnt(1 downto 0),
      probe119(31 downto 0) => net_slot_2_axi_awaddr(31 downto 0),
      probe12(12 downto 0) => probe12_1(12 downto 0),
      probe120(1 downto 0) => net_slot_2_axi_awburst(1 downto 0),
      probe121(3 downto 0) => net_slot_2_axi_awcache(3 downto 0),
      probe122(7 downto 0) => net_slot_2_axi_awlen(7 downto 0),
      probe123(0) => net_slot_2_axi_awlock(0),
      probe124(2 downto 0) => net_slot_2_axi_awprot(2 downto 0),
      probe125(3 downto 0) => net_slot_2_axi_awqos(3 downto 0),
      probe126(3 downto 0) => net_slot_2_axi_awregion(3 downto 0),
      probe127(2 downto 0) => net_slot_2_axi_awsize(2 downto 0),
      probe128(1 downto 0) => net_slot_2_axi_b_cnt(1 downto 0),
      probe129(1 downto 0) => net_slot_2_axi_bresp(1 downto 0),
      probe13(12 downto 0) => probe13_1(12 downto 0),
      probe130(1 downto 0) => net_slot_2_axi_r_cnt(1 downto 0),
      probe131(31 downto 0) => net_slot_2_axi_rdata(31 downto 0),
      probe132(1 downto 0) => net_slot_2_axi_rresp(1 downto 0),
      probe133(31 downto 0) => net_slot_2_axi_wdata(31 downto 0),
      probe134(3 downto 0) => net_slot_2_axi_wstrb(3 downto 0),
      probe135(1 downto 0) => net_slot_2_axi_aw_ctrl(1 downto 0),
      probe136(2 downto 0) => net_slot_2_axi_w_ctrl(2 downto 0),
      probe137(1 downto 0) => net_slot_2_axi_b_ctrl(1 downto 0),
      probe138(1 downto 0) => net_slot_2_axi_ar_ctrl(1 downto 0),
      probe139(2 downto 0) => net_slot_2_axi_r_ctrl(2 downto 0),
      probe14(12 downto 0) => probe14_1(12 downto 0),
      probe140(1 downto 0) => net_slot_3_axi_ar_cnt(1 downto 0),
      probe141(31 downto 0) => net_slot_3_axi_araddr(31 downto 0),
      probe142(1 downto 0) => net_slot_3_axi_arburst(1 downto 0),
      probe143(3 downto 0) => net_slot_3_axi_arcache(3 downto 0),
      probe144(7 downto 0) => net_slot_3_axi_arlen(7 downto 0),
      probe145(2 downto 0) => net_slot_3_axi_arprot(2 downto 0),
      probe146(2 downto 0) => net_slot_3_axi_arsize(2 downto 0),
      probe147(1 downto 0) => net_slot_3_axi_aw_cnt(1 downto 0),
      probe148(31 downto 0) => net_slot_3_axi_awaddr(31 downto 0),
      probe149(1 downto 0) => net_slot_3_axi_awburst(1 downto 0),
      probe15(12 downto 0) => probe15_1(12 downto 0),
      probe150(3 downto 0) => net_slot_3_axi_awcache(3 downto 0),
      probe151(7 downto 0) => net_slot_3_axi_awlen(7 downto 0),
      probe152(2 downto 0) => net_slot_3_axi_awprot(2 downto 0),
      probe153(2 downto 0) => net_slot_3_axi_awsize(2 downto 0),
      probe154(1 downto 0) => net_slot_3_axi_b_cnt(1 downto 0),
      probe155(1 downto 0) => net_slot_3_axi_bresp(1 downto 0),
      probe156(1 downto 0) => net_slot_3_axi_r_cnt(1 downto 0),
      probe157(31 downto 0) => net_slot_3_axi_rdata(31 downto 0),
      probe158(1 downto 0) => net_slot_3_axi_rresp(1 downto 0),
      probe159(31 downto 0) => net_slot_3_axi_wdata(31 downto 0),
      probe16(12 downto 0) => probe16_1(12 downto 0),
      probe160(3 downto 0) => net_slot_3_axi_wstrb(3 downto 0),
      probe161(1 downto 0) => net_slot_3_axi_aw_ctrl(1 downto 0),
      probe162(2 downto 0) => net_slot_3_axi_w_ctrl(2 downto 0),
      probe163(1 downto 0) => net_slot_3_axi_b_ctrl(1 downto 0),
      probe164(1 downto 0) => net_slot_3_axi_ar_ctrl(1 downto 0),
      probe165(2 downto 0) => net_slot_3_axi_r_ctrl(2 downto 0),
      probe166(1 downto 0) => net_slot_4_axi_ar_cnt(1 downto 0),
      probe167(31 downto 0) => net_slot_4_axi_araddr(31 downto 0),
      probe168(1 downto 0) => net_slot_4_axi_arburst(1 downto 0),
      probe169(3 downto 0) => net_slot_4_axi_arcache(3 downto 0),
      probe17(12 downto 0) => probe17_1(12 downto 0),
      probe170(7 downto 0) => net_slot_4_axi_arlen(7 downto 0),
      probe171(2 downto 0) => net_slot_4_axi_arprot(2 downto 0),
      probe172(2 downto 0) => net_slot_4_axi_arsize(2 downto 0),
      probe173(1 downto 0) => net_slot_4_axi_aw_cnt(1 downto 0),
      probe174(31 downto 0) => net_slot_4_axi_awaddr(31 downto 0),
      probe175(1 downto 0) => net_slot_4_axi_awburst(1 downto 0),
      probe176(3 downto 0) => net_slot_4_axi_awcache(3 downto 0),
      probe177(7 downto 0) => net_slot_4_axi_awlen(7 downto 0),
      probe178(2 downto 0) => net_slot_4_axi_awprot(2 downto 0),
      probe179(2 downto 0) => net_slot_4_axi_awsize(2 downto 0),
      probe18(12 downto 0) => probe18_1(12 downto 0),
      probe180(1 downto 0) => net_slot_4_axi_b_cnt(1 downto 0),
      probe181(1 downto 0) => net_slot_4_axi_bresp(1 downto 0),
      probe182(1 downto 0) => net_slot_4_axi_r_cnt(1 downto 0),
      probe183(31 downto 0) => net_slot_4_axi_rdata(31 downto 0),
      probe184(1 downto 0) => net_slot_4_axi_rresp(1 downto 0),
      probe185(31 downto 0) => net_slot_4_axi_wdata(31 downto 0),
      probe186(3 downto 0) => net_slot_4_axi_wstrb(3 downto 0),
      probe187(1 downto 0) => net_slot_4_axi_aw_ctrl(1 downto 0),
      probe188(2 downto 0) => net_slot_4_axi_w_ctrl(2 downto 0),
      probe189(1 downto 0) => net_slot_4_axi_b_ctrl(1 downto 0),
      probe19(12 downto 0) => probe19_1(12 downto 0),
      probe190(1 downto 0) => net_slot_4_axi_ar_ctrl(1 downto 0),
      probe191(2 downto 0) => net_slot_4_axi_r_ctrl(2 downto 0),
      probe2(0) => probe2_1(0),
      probe20(12 downto 0) => probe20_1(12 downto 0),
      probe21(12 downto 0) => probe21_1(12 downto 0),
      probe22(12 downto 0) => probe22_1(12 downto 0),
      probe23(12 downto 0) => probe23_1(12 downto 0),
      probe24(12 downto 0) => probe24_1(12 downto 0),
      probe25(12 downto 0) => probe25_1(12 downto 0),
      probe26(12 downto 0) => probe26_1(12 downto 0),
      probe27(12 downto 0) => probe27_1(12 downto 0),
      probe28(12 downto 0) => probe28_1(12 downto 0),
      probe29(12 downto 0) => probe29_1(12 downto 0),
      probe3(0) => probe3_1(0),
      probe30(12 downto 0) => probe30_1(12 downto 0),
      probe31(12 downto 0) => probe31_1(12 downto 0),
      probe32(12 downto 0) => probe32_1(12 downto 0),
      probe33(12 downto 0) => probe33_1(12 downto 0),
      probe34(12 downto 0) => probe34_1(12 downto 0),
      probe35(12 downto 0) => probe35_1(12 downto 0),
      probe36(12 downto 0) => probe36_1(12 downto 0),
      probe37(12 downto 0) => probe37_1(12 downto 0),
      probe38(12 downto 0) => probe38_1(12 downto 0),
      probe39(12 downto 0) => probe39_1(12 downto 0),
      probe4(33 downto 0) => probe4_1(33 downto 0),
      probe40(12 downto 0) => probe40_1(12 downto 0),
      probe41(12 downto 0) => probe41_1(12 downto 0),
      probe42(12 downto 0) => probe42_1(12 downto 0),
      probe43(12 downto 0) => probe43_1(12 downto 0),
      probe44(12 downto 0) => probe44_1(12 downto 0),
      probe45(12 downto 0) => probe45_1(12 downto 0),
      probe46(12 downto 0) => probe46_1(12 downto 0),
      probe47(12 downto 0) => probe47_1(12 downto 0),
      probe48(12 downto 0) => probe48_1(12 downto 0),
      probe49(12 downto 0) => probe49_1(12 downto 0),
      probe5(0) => probe5_1(0),
      probe50(12 downto 0) => probe50_1(12 downto 0),
      probe51(12 downto 0) => probe51_1(12 downto 0),
      probe52(12 downto 0) => probe52_1(12 downto 0),
      probe53(12 downto 0) => probe53_1(12 downto 0),
      probe54(12 downto 0) => probe54_1(12 downto 0),
      probe55(12 downto 0) => probe55_1(12 downto 0),
      probe56(1 downto 0) => net_slot_0_axi_ar_cnt(1 downto 0),
      probe57(31 downto 0) => net_slot_0_axi_araddr(31 downto 0),
      probe58(1 downto 0) => net_slot_0_axi_arburst(1 downto 0),
      probe59(3 downto 0) => net_slot_0_axi_arcache(3 downto 0),
      probe6(0) => probe6_1(0),
      probe60(7 downto 0) => net_slot_0_axi_arlen(7 downto 0),
      probe61(2 downto 0) => net_slot_0_axi_arprot(2 downto 0),
      probe62(2 downto 0) => net_slot_0_axi_arsize(2 downto 0),
      probe63(1 downto 0) => net_slot_0_axi_aw_cnt(1 downto 0),
      probe64(31 downto 0) => net_slot_0_axi_awaddr(31 downto 0),
      probe65(1 downto 0) => net_slot_0_axi_awburst(1 downto 0),
      probe66(3 downto 0) => net_slot_0_axi_awcache(3 downto 0),
      probe67(7 downto 0) => net_slot_0_axi_awlen(7 downto 0),
      probe68(2 downto 0) => net_slot_0_axi_awprot(2 downto 0),
      probe69(2 downto 0) => net_slot_0_axi_awsize(2 downto 0),
      probe7(33 downto 0) => probe7_1(33 downto 0),
      probe70(1 downto 0) => net_slot_0_axi_b_cnt(1 downto 0),
      probe71(1 downto 0) => net_slot_0_axi_bresp(1 downto 0),
      probe72(1 downto 0) => net_slot_0_axi_r_cnt(1 downto 0),
      probe73(31 downto 0) => net_slot_0_axi_rdata(31 downto 0),
      probe74(1 downto 0) => net_slot_0_axi_rresp(1 downto 0),
      probe75(31 downto 0) => net_slot_0_axi_wdata(31 downto 0),
      probe76(3 downto 0) => net_slot_0_axi_wstrb(3 downto 0),
      probe77(1 downto 0) => net_slot_0_axi_aw_ctrl(1 downto 0),
      probe78(2 downto 0) => net_slot_0_axi_w_ctrl(2 downto 0),
      probe79(1 downto 0) => net_slot_0_axi_b_ctrl(1 downto 0),
      probe8(12 downto 0) => probe8_1(12 downto 0),
      probe80(1 downto 0) => net_slot_0_axi_ar_ctrl(1 downto 0),
      probe81(2 downto 0) => net_slot_0_axi_r_ctrl(2 downto 0),
      probe82(1 downto 0) => net_slot_1_axi_ar_cnt(1 downto 0),
      probe83(31 downto 0) => net_slot_1_axi_araddr(31 downto 0),
      probe84(1 downto 0) => net_slot_1_axi_arburst(1 downto 0),
      probe85(3 downto 0) => net_slot_1_axi_arcache(3 downto 0),
      probe86(7 downto 0) => net_slot_1_axi_arlen(7 downto 0),
      probe87(2 downto 0) => net_slot_1_axi_arprot(2 downto 0),
      probe88(2 downto 0) => net_slot_1_axi_arsize(2 downto 0),
      probe89(1 downto 0) => net_slot_1_axi_aw_cnt(1 downto 0),
      probe9(12 downto 0) => probe9_1(12 downto 0),
      probe90(31 downto 0) => net_slot_1_axi_awaddr(31 downto 0),
      probe91(1 downto 0) => net_slot_1_axi_awburst(1 downto 0),
      probe92(3 downto 0) => net_slot_1_axi_awcache(3 downto 0),
      probe93(7 downto 0) => net_slot_1_axi_awlen(7 downto 0),
      probe94(2 downto 0) => net_slot_1_axi_awprot(2 downto 0),
      probe95(2 downto 0) => net_slot_1_axi_awsize(2 downto 0),
      probe96(1 downto 0) => net_slot_1_axi_b_cnt(1 downto 0),
      probe97(1 downto 0) => net_slot_1_axi_bresp(1 downto 0),
      probe98(1 downto 0) => net_slot_1_axi_r_cnt(1 downto 0),
      probe99(31 downto 0) => net_slot_1_axi_rdata(31 downto 0)
    );
slot_0_ar: component bd_07cf_slot_0_ar_0
     port map (
      In0(0) => net_slot_0_axi_arvalid,
      In1(0) => net_slot_0_axi_arready,
      dout(1 downto 0) => net_slot_0_axi_ar_ctrl(1 downto 0)
    );
slot_0_aw: component bd_07cf_slot_0_aw_0
     port map (
      In0(0) => net_slot_0_axi_awvalid,
      In1(0) => net_slot_0_axi_awready,
      dout(1 downto 0) => net_slot_0_axi_aw_ctrl(1 downto 0)
    );
slot_0_b: component bd_07cf_slot_0_b_0
     port map (
      In0(0) => net_slot_0_axi_bvalid,
      In1(0) => net_slot_0_axi_bready,
      dout(1 downto 0) => net_slot_0_axi_b_ctrl(1 downto 0)
    );
slot_0_r: component bd_07cf_slot_0_r_0
     port map (
      In0(0) => net_slot_0_axi_rvalid,
      In1(0) => net_slot_0_axi_rready,
      In2(0) => net_slot_0_axi_rlast,
      dout(2 downto 0) => net_slot_0_axi_r_ctrl(2 downto 0)
    );
slot_0_w: component bd_07cf_slot_0_w_0
     port map (
      In0(0) => net_slot_0_axi_wvalid,
      In1(0) => net_slot_0_axi_wready,
      In2(0) => net_slot_0_axi_wlast,
      dout(2 downto 0) => net_slot_0_axi_w_ctrl(2 downto 0)
    );
slot_1_ar: component bd_07cf_slot_1_ar_0
     port map (
      In0(0) => net_slot_1_axi_arvalid,
      In1(0) => net_slot_1_axi_arready,
      dout(1 downto 0) => net_slot_1_axi_ar_ctrl(1 downto 0)
    );
slot_1_aw: component bd_07cf_slot_1_aw_0
     port map (
      In0(0) => net_slot_1_axi_awvalid,
      In1(0) => net_slot_1_axi_awready,
      dout(1 downto 0) => net_slot_1_axi_aw_ctrl(1 downto 0)
    );
slot_1_b: component bd_07cf_slot_1_b_0
     port map (
      In0(0) => net_slot_1_axi_bvalid,
      In1(0) => net_slot_1_axi_bready,
      dout(1 downto 0) => net_slot_1_axi_b_ctrl(1 downto 0)
    );
slot_1_r: component bd_07cf_slot_1_r_0
     port map (
      In0(0) => net_slot_1_axi_rvalid,
      In1(0) => net_slot_1_axi_rready,
      In2(0) => net_slot_1_axi_rlast,
      dout(2 downto 0) => net_slot_1_axi_r_ctrl(2 downto 0)
    );
slot_1_w: component bd_07cf_slot_1_w_0
     port map (
      In0(0) => net_slot_1_axi_wvalid,
      In1(0) => net_slot_1_axi_wready,
      In2(0) => net_slot_1_axi_wlast,
      dout(2 downto 0) => net_slot_1_axi_w_ctrl(2 downto 0)
    );
slot_2_ar: component bd_07cf_slot_2_ar_0
     port map (
      In0(0) => net_slot_2_axi_arvalid,
      In1(0) => net_slot_2_axi_arready,
      dout(1 downto 0) => net_slot_2_axi_ar_ctrl(1 downto 0)
    );
slot_2_aw: component bd_07cf_slot_2_aw_0
     port map (
      In0(0) => net_slot_2_axi_awvalid,
      In1(0) => net_slot_2_axi_awready,
      dout(1 downto 0) => net_slot_2_axi_aw_ctrl(1 downto 0)
    );
slot_2_b: component bd_07cf_slot_2_b_0
     port map (
      In0(0) => net_slot_2_axi_bvalid,
      In1(0) => net_slot_2_axi_bready,
      dout(1 downto 0) => net_slot_2_axi_b_ctrl(1 downto 0)
    );
slot_2_r: component bd_07cf_slot_2_r_0
     port map (
      In0(0) => net_slot_2_axi_rvalid,
      In1(0) => net_slot_2_axi_rready,
      In2(0) => net_slot_2_axi_rlast,
      dout(2 downto 0) => net_slot_2_axi_r_ctrl(2 downto 0)
    );
slot_2_w: component bd_07cf_slot_2_w_0
     port map (
      In0(0) => net_slot_2_axi_wvalid,
      In1(0) => net_slot_2_axi_wready,
      In2(0) => net_slot_2_axi_wlast,
      dout(2 downto 0) => net_slot_2_axi_w_ctrl(2 downto 0)
    );
slot_3_ar: component bd_07cf_slot_3_ar_0
     port map (
      In0(0) => net_slot_3_axi_arvalid,
      In1(0) => net_slot_3_axi_arready,
      dout(1 downto 0) => net_slot_3_axi_ar_ctrl(1 downto 0)
    );
slot_3_aw: component bd_07cf_slot_3_aw_0
     port map (
      In0(0) => net_slot_3_axi_awvalid,
      In1(0) => net_slot_3_axi_awready,
      dout(1 downto 0) => net_slot_3_axi_aw_ctrl(1 downto 0)
    );
slot_3_b: component bd_07cf_slot_3_b_0
     port map (
      In0(0) => net_slot_3_axi_bvalid,
      In1(0) => net_slot_3_axi_bready,
      dout(1 downto 0) => net_slot_3_axi_b_ctrl(1 downto 0)
    );
slot_3_r: component bd_07cf_slot_3_r_0
     port map (
      In0(0) => net_slot_3_axi_rvalid,
      In1(0) => net_slot_3_axi_rready,
      In2(0) => net_slot_3_axi_rlast,
      dout(2 downto 0) => net_slot_3_axi_r_ctrl(2 downto 0)
    );
slot_3_w: component bd_07cf_slot_3_w_0
     port map (
      In0(0) => net_slot_3_axi_wvalid,
      In1(0) => net_slot_3_axi_wready,
      In2(0) => net_slot_3_axi_wlast,
      dout(2 downto 0) => net_slot_3_axi_w_ctrl(2 downto 0)
    );
slot_4_ar: component bd_07cf_slot_4_ar_0
     port map (
      In0(0) => net_slot_4_axi_arvalid,
      In1(0) => net_slot_4_axi_arready,
      dout(1 downto 0) => net_slot_4_axi_ar_ctrl(1 downto 0)
    );
slot_4_aw: component bd_07cf_slot_4_aw_0
     port map (
      In0(0) => net_slot_4_axi_awvalid,
      In1(0) => net_slot_4_axi_awready,
      dout(1 downto 0) => net_slot_4_axi_aw_ctrl(1 downto 0)
    );
slot_4_b: component bd_07cf_slot_4_b_0
     port map (
      In0(0) => net_slot_4_axi_bvalid,
      In1(0) => net_slot_4_axi_bready,
      dout(1 downto 0) => net_slot_4_axi_b_ctrl(1 downto 0)
    );
slot_4_r: component bd_07cf_slot_4_r_0
     port map (
      In0(0) => net_slot_4_axi_rvalid,
      In1(0) => net_slot_4_axi_rready,
      In2(0) => net_slot_4_axi_rlast,
      dout(2 downto 0) => net_slot_4_axi_r_ctrl(2 downto 0)
    );
slot_4_w: component bd_07cf_slot_4_w_0
     port map (
      In0(0) => net_slot_4_axi_wvalid,
      In1(0) => net_slot_4_axi_wready,
      In2(0) => net_slot_4_axi_wlast,
      dout(2 downto 0) => net_slot_4_axi_w_ctrl(2 downto 0)
    );
end STRUCTURE;
