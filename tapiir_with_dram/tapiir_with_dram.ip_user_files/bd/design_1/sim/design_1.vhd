--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Wed Mar 12 11:40:56 2025
--Host        : fedora running 64-bit unknown
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_processing_system7_0_0 is
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
  end component design_1_processing_system7_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_250mhz : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_clk_wiz_1_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_i2s : out STD_LOGIC;
    clk_24mhz : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_1_0;
  component design_1_proc_sys_reset_0_0 is
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
  end component design_1_proc_sys_reset_0_0;
  component design_1_audio_interface_wrap_0_0 is
  port (
    ac_bclk_0 : out STD_LOGIC;
    ac_pbdat_0 : out STD_LOGIC;
    ac_pblrc_0 : out STD_LOGIC;
    ac_recdat_0 : in STD_LOGIC;
    ac_reclrc_0 : out STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    ui_in_numeric_addr : in STD_LOGIC_VECTOR ( 77 downto 0 );
    ui_in_numeric_value : in STD_LOGIC_VECTOR ( 33 downto 0 );
    ui_numeric_write_enable : in STD_LOGIC;
    m_axi_aclk0 : in STD_LOGIC;
    m_axi_aresetn0 : in STD_LOGIC;
    md_error0 : out STD_LOGIC;
    m_axi_arready0 : in STD_LOGIC;
    m_axi_arvalid0 : out STD_LOGIC;
    m_axi_araddr0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready0 : out STD_LOGIC;
    m_axi_rvalid0 : in STD_LOGIC;
    m_axi_rdata0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast0 : in STD_LOGIC;
    m_axi_awready0 : in STD_LOGIC;
    m_axi_awvalid0 : out STD_LOGIC;
    m_axi_awaddr0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready0 : in STD_LOGIC;
    m_axi_wvalid0 : out STD_LOGIC;
    m_axi_wdata0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast0 : out STD_LOGIC;
    m_axi_bready0 : out STD_LOGIC;
    m_axi_bvalid0 : in STD_LOGIC;
    m_axi_bresp0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aclk1 : in STD_LOGIC;
    m_axi_aresetn1 : in STD_LOGIC;
    md_error1 : out STD_LOGIC;
    m_axi_arready1 : in STD_LOGIC;
    m_axi_arvalid1 : out STD_LOGIC;
    m_axi_araddr1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready1 : out STD_LOGIC;
    m_axi_rvalid1 : in STD_LOGIC;
    m_axi_rdata1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast1 : in STD_LOGIC;
    m_axi_awready1 : in STD_LOGIC;
    m_axi_awvalid1 : out STD_LOGIC;
    m_axi_awaddr1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready1 : in STD_LOGIC;
    m_axi_wvalid1 : out STD_LOGIC;
    m_axi_wdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast1 : out STD_LOGIC;
    m_axi_bready1 : out STD_LOGIC;
    m_axi_bvalid1 : in STD_LOGIC;
    m_axi_bresp1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aclk2 : in STD_LOGIC;
    m_axi_aresetn2 : in STD_LOGIC;
    md_error2 : out STD_LOGIC;
    m_axi_arready2 : in STD_LOGIC;
    m_axi_arvalid2 : out STD_LOGIC;
    m_axi_araddr2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready2 : out STD_LOGIC;
    m_axi_rvalid2 : in STD_LOGIC;
    m_axi_rdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast2 : in STD_LOGIC;
    m_axi_awready2 : in STD_LOGIC;
    m_axi_awvalid2 : out STD_LOGIC;
    m_axi_awaddr2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready2 : in STD_LOGIC;
    m_axi_wvalid2 : out STD_LOGIC;
    m_axi_wdata2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast2 : out STD_LOGIC;
    m_axi_bready2 : out STD_LOGIC;
    m_axi_bvalid2 : in STD_LOGIC;
    m_axi_bresp2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aclk3 : in STD_LOGIC;
    m_axi_aresetn3 : in STD_LOGIC;
    md_error3 : out STD_LOGIC;
    m_axi_arready3 : in STD_LOGIC;
    m_axi_arvalid3 : out STD_LOGIC;
    m_axi_araddr3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready3 : out STD_LOGIC;
    m_axi_rvalid3 : in STD_LOGIC;
    m_axi_rdata3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast3 : in STD_LOGIC;
    m_axi_awready3 : in STD_LOGIC;
    m_axi_awvalid3 : out STD_LOGIC;
    m_axi_awaddr3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready3 : in STD_LOGIC;
    m_axi_wvalid3 : out STD_LOGIC;
    m_axi_wdata3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast3 : out STD_LOGIC;
    m_axi_bready3 : out STD_LOGIC;
    m_axi_bvalid3 : in STD_LOGIC;
    m_axi_bresp3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aclk4 : in STD_LOGIC;
    m_axi_aresetn4 : in STD_LOGIC;
    md_error4 : out STD_LOGIC;
    m_axi_arready4 : in STD_LOGIC;
    m_axi_arvalid4 : out STD_LOGIC;
    m_axi_araddr4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize4 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot4 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready4 : out STD_LOGIC;
    m_axi_rvalid4 : in STD_LOGIC;
    m_axi_rdata4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast4 : in STD_LOGIC;
    m_axi_awready4 : in STD_LOGIC;
    m_axi_awvalid4 : out STD_LOGIC;
    m_axi_awaddr4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize4 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot4 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready4 : in STD_LOGIC;
    m_axi_wvalid4 : out STD_LOGIC;
    m_axi_wdata4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast4 : out STD_LOGIC;
    m_axi_bready4 : out STD_LOGIC;
    m_axi_bvalid4 : in STD_LOGIC;
    m_axi_bresp4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aclk5 : in STD_LOGIC;
    m_axi_aresetn5 : in STD_LOGIC;
    md_error5 : out STD_LOGIC;
    m_axi_arready5 : in STD_LOGIC;
    m_axi_arvalid5 : out STD_LOGIC;
    m_axi_araddr5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready5 : out STD_LOGIC;
    m_axi_rvalid5 : in STD_LOGIC;
    m_axi_rdata5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast5 : in STD_LOGIC;
    m_axi_awready5 : in STD_LOGIC;
    m_axi_awvalid5 : out STD_LOGIC;
    m_axi_awaddr5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready5 : in STD_LOGIC;
    m_axi_wvalid5 : out STD_LOGIC;
    m_axi_wdata5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast5 : out STD_LOGIC;
    m_axi_bready5 : out STD_LOGIC;
    m_axi_bvalid5 : in STD_LOGIC;
    m_axi_bresp5 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_audio_interface_wrap_0_0;
  signal ac_recdat_1 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_bclk_0 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_pbdat_0 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_pblrc_0 : STD_LOGIC;
  signal audio_interface_wrap_0_ac_reclrc_0 : STD_LOGIC;
  signal clk_wiz_0_clk_250mhz : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_1_clk_24mhz : STD_LOGIC;
  signal clk_wiz_1_clk_i2s : STD_LOGIC;
  signal clk_wiz_1_locked : STD_LOGIC;
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
  signal NLW_audio_interface_wrap_0_m_axi_arvalid0_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_arvalid1_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_arvalid2_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_arvalid3_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_arvalid4_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_arvalid5_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_awvalid0_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_awvalid1_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_awvalid2_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_awvalid3_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_awvalid4_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_awvalid5_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_bready0_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_bready1_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_bready2_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_bready3_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_bready4_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_bready5_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_rready0_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_rready1_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_rready2_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_rready3_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_rready4_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_rready5_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wlast0_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wlast1_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wlast2_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wlast3_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wlast4_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wlast5_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wvalid0_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wvalid1_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wvalid2_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wvalid3_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wvalid4_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_wvalid5_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_md_error0_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_md_error1_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_md_error2_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_md_error3_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_md_error4_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_md_error5_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_interface_wrap_0_m_axi_araddr0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_araddr1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_araddr2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_araddr3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_araddr4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_araddr5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arburst0_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arburst1_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arburst2_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arburst3_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arburst4_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arburst5_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arcache0_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arcache1_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arcache2_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arcache3_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arcache4_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arcache5_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arlen0_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arlen1_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arlen2_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arlen3_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arlen4_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arlen5_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arprot0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arprot1_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arprot2_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arprot3_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arprot4_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arprot5_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arsize0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arsize1_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arsize2_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arsize3_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arsize4_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_arsize5_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awaddr0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awaddr1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awaddr2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awaddr3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awaddr4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awaddr5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awburst0_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awburst1_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awburst2_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awburst3_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awburst4_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awburst5_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awcache0_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awcache1_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awcache2_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awcache3_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awcache4_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awcache5_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awlen0_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awlen1_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awlen2_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awlen3_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awlen4_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awlen5_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awprot0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awprot1_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awprot2_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awprot3_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awprot4_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awprot5_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awsize0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awsize1_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awsize2_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awsize3_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awsize4_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_awsize5_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wdata0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wdata1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wdata2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wdata3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wdata4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wdata5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wstrb0_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wstrb1_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wstrb2_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wstrb3_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wstrb4_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_interface_wrap_0_m_axi_wstrb5_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  attribute X_INTERFACE_PARAMETER of ac_mclk : signal is "XIL_INTERFACENAME CLK.AC_MCLK, CLK_DOMAIN /clk_wiz_1_clk_out1, FREQ_HZ 24560508, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
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
  ac_bclk <= audio_interface_wrap_0_ac_bclk_0;
  ac_mclk <= clk_wiz_1_clk_24mhz;
  ac_muten <= sw0_1;
  ac_pbdat <= audio_interface_wrap_0_ac_pbdat_0;
  ac_pblrc <= audio_interface_wrap_0_ac_pblrc_0;
  ac_recdat_1 <= ac_recdat;
  ac_reclrc <= audio_interface_wrap_0_ac_reclrc_0;
  iic_scl_o <= processing_system7_0_IIC_0_SCL_O;
  iic_scl_t <= processing_system7_0_IIC_0_SCL_T;
  iic_sda_o <= processing_system7_0_IIC_0_SDA_O;
  iic_sda_t <= processing_system7_0_IIC_0_SDA_T;
  led <= sw0_1;
  processing_system7_0_IIC_0_SCL_I <= iic_scl_i;
  processing_system7_0_IIC_0_SDA_I <= iic_sda_i;
  sw0_1 <= sw0;
  sys_clock_1 <= sys_clock;
audio_interface_wrap_0: component design_1_audio_interface_wrap_0_0
     port map (
      ac_bclk_0 => audio_interface_wrap_0_ac_bclk_0,
      ac_pbdat_0 => audio_interface_wrap_0_ac_pbdat_0,
      ac_pblrc_0 => audio_interface_wrap_0_ac_pblrc_0,
      ac_recdat_0 => ac_recdat_1,
      ac_reclrc_0 => audio_interface_wrap_0_ac_reclrc_0,
      m_axi_aclk0 => '0',
      m_axi_aclk1 => '0',
      m_axi_aclk2 => '0',
      m_axi_aclk3 => '0',
      m_axi_aclk4 => '0',
      m_axi_aclk5 => '0',
      m_axi_araddr0(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_araddr0_UNCONNECTED(31 downto 0),
      m_axi_araddr1(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_araddr1_UNCONNECTED(31 downto 0),
      m_axi_araddr2(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_araddr2_UNCONNECTED(31 downto 0),
      m_axi_araddr3(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_araddr3_UNCONNECTED(31 downto 0),
      m_axi_araddr4(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_araddr4_UNCONNECTED(31 downto 0),
      m_axi_araddr5(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_araddr5_UNCONNECTED(31 downto 0),
      m_axi_arburst0(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_arburst0_UNCONNECTED(1 downto 0),
      m_axi_arburst1(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_arburst1_UNCONNECTED(1 downto 0),
      m_axi_arburst2(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_arburst2_UNCONNECTED(1 downto 0),
      m_axi_arburst3(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_arburst3_UNCONNECTED(1 downto 0),
      m_axi_arburst4(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_arburst4_UNCONNECTED(1 downto 0),
      m_axi_arburst5(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_arburst5_UNCONNECTED(1 downto 0),
      m_axi_arcache0(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_arcache0_UNCONNECTED(3 downto 0),
      m_axi_arcache1(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_arcache1_UNCONNECTED(3 downto 0),
      m_axi_arcache2(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_arcache2_UNCONNECTED(3 downto 0),
      m_axi_arcache3(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_arcache3_UNCONNECTED(3 downto 0),
      m_axi_arcache4(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_arcache4_UNCONNECTED(3 downto 0),
      m_axi_arcache5(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_arcache5_UNCONNECTED(3 downto 0),
      m_axi_aresetn0 => '0',
      m_axi_aresetn1 => '0',
      m_axi_aresetn2 => '0',
      m_axi_aresetn3 => '0',
      m_axi_aresetn4 => '0',
      m_axi_aresetn5 => '0',
      m_axi_arlen0(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_arlen0_UNCONNECTED(7 downto 0),
      m_axi_arlen1(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_arlen1_UNCONNECTED(7 downto 0),
      m_axi_arlen2(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_arlen2_UNCONNECTED(7 downto 0),
      m_axi_arlen3(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_arlen3_UNCONNECTED(7 downto 0),
      m_axi_arlen4(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_arlen4_UNCONNECTED(7 downto 0),
      m_axi_arlen5(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_arlen5_UNCONNECTED(7 downto 0),
      m_axi_arprot0(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arprot0_UNCONNECTED(2 downto 0),
      m_axi_arprot1(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arprot1_UNCONNECTED(2 downto 0),
      m_axi_arprot2(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arprot2_UNCONNECTED(2 downto 0),
      m_axi_arprot3(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arprot3_UNCONNECTED(2 downto 0),
      m_axi_arprot4(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arprot4_UNCONNECTED(2 downto 0),
      m_axi_arprot5(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arprot5_UNCONNECTED(2 downto 0),
      m_axi_arready0 => '0',
      m_axi_arready1 => '0',
      m_axi_arready2 => '0',
      m_axi_arready3 => '0',
      m_axi_arready4 => '0',
      m_axi_arready5 => '0',
      m_axi_arsize0(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arsize0_UNCONNECTED(2 downto 0),
      m_axi_arsize1(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arsize1_UNCONNECTED(2 downto 0),
      m_axi_arsize2(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arsize2_UNCONNECTED(2 downto 0),
      m_axi_arsize3(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arsize3_UNCONNECTED(2 downto 0),
      m_axi_arsize4(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arsize4_UNCONNECTED(2 downto 0),
      m_axi_arsize5(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_arsize5_UNCONNECTED(2 downto 0),
      m_axi_arvalid0 => NLW_audio_interface_wrap_0_m_axi_arvalid0_UNCONNECTED,
      m_axi_arvalid1 => NLW_audio_interface_wrap_0_m_axi_arvalid1_UNCONNECTED,
      m_axi_arvalid2 => NLW_audio_interface_wrap_0_m_axi_arvalid2_UNCONNECTED,
      m_axi_arvalid3 => NLW_audio_interface_wrap_0_m_axi_arvalid3_UNCONNECTED,
      m_axi_arvalid4 => NLW_audio_interface_wrap_0_m_axi_arvalid4_UNCONNECTED,
      m_axi_arvalid5 => NLW_audio_interface_wrap_0_m_axi_arvalid5_UNCONNECTED,
      m_axi_awaddr0(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_awaddr0_UNCONNECTED(31 downto 0),
      m_axi_awaddr1(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_awaddr1_UNCONNECTED(31 downto 0),
      m_axi_awaddr2(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_awaddr2_UNCONNECTED(31 downto 0),
      m_axi_awaddr3(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_awaddr3_UNCONNECTED(31 downto 0),
      m_axi_awaddr4(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_awaddr4_UNCONNECTED(31 downto 0),
      m_axi_awaddr5(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_awaddr5_UNCONNECTED(31 downto 0),
      m_axi_awburst0(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_awburst0_UNCONNECTED(1 downto 0),
      m_axi_awburst1(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_awburst1_UNCONNECTED(1 downto 0),
      m_axi_awburst2(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_awburst2_UNCONNECTED(1 downto 0),
      m_axi_awburst3(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_awburst3_UNCONNECTED(1 downto 0),
      m_axi_awburst4(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_awburst4_UNCONNECTED(1 downto 0),
      m_axi_awburst5(1 downto 0) => NLW_audio_interface_wrap_0_m_axi_awburst5_UNCONNECTED(1 downto 0),
      m_axi_awcache0(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_awcache0_UNCONNECTED(3 downto 0),
      m_axi_awcache1(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_awcache1_UNCONNECTED(3 downto 0),
      m_axi_awcache2(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_awcache2_UNCONNECTED(3 downto 0),
      m_axi_awcache3(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_awcache3_UNCONNECTED(3 downto 0),
      m_axi_awcache4(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_awcache4_UNCONNECTED(3 downto 0),
      m_axi_awcache5(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_awcache5_UNCONNECTED(3 downto 0),
      m_axi_awlen0(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_awlen0_UNCONNECTED(7 downto 0),
      m_axi_awlen1(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_awlen1_UNCONNECTED(7 downto 0),
      m_axi_awlen2(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_awlen2_UNCONNECTED(7 downto 0),
      m_axi_awlen3(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_awlen3_UNCONNECTED(7 downto 0),
      m_axi_awlen4(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_awlen4_UNCONNECTED(7 downto 0),
      m_axi_awlen5(7 downto 0) => NLW_audio_interface_wrap_0_m_axi_awlen5_UNCONNECTED(7 downto 0),
      m_axi_awprot0(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awprot0_UNCONNECTED(2 downto 0),
      m_axi_awprot1(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awprot1_UNCONNECTED(2 downto 0),
      m_axi_awprot2(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awprot2_UNCONNECTED(2 downto 0),
      m_axi_awprot3(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awprot3_UNCONNECTED(2 downto 0),
      m_axi_awprot4(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awprot4_UNCONNECTED(2 downto 0),
      m_axi_awprot5(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awprot5_UNCONNECTED(2 downto 0),
      m_axi_awready0 => '0',
      m_axi_awready1 => '0',
      m_axi_awready2 => '0',
      m_axi_awready3 => '0',
      m_axi_awready4 => '0',
      m_axi_awready5 => '0',
      m_axi_awsize0(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awsize0_UNCONNECTED(2 downto 0),
      m_axi_awsize1(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awsize1_UNCONNECTED(2 downto 0),
      m_axi_awsize2(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awsize2_UNCONNECTED(2 downto 0),
      m_axi_awsize3(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awsize3_UNCONNECTED(2 downto 0),
      m_axi_awsize4(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awsize4_UNCONNECTED(2 downto 0),
      m_axi_awsize5(2 downto 0) => NLW_audio_interface_wrap_0_m_axi_awsize5_UNCONNECTED(2 downto 0),
      m_axi_awvalid0 => NLW_audio_interface_wrap_0_m_axi_awvalid0_UNCONNECTED,
      m_axi_awvalid1 => NLW_audio_interface_wrap_0_m_axi_awvalid1_UNCONNECTED,
      m_axi_awvalid2 => NLW_audio_interface_wrap_0_m_axi_awvalid2_UNCONNECTED,
      m_axi_awvalid3 => NLW_audio_interface_wrap_0_m_axi_awvalid3_UNCONNECTED,
      m_axi_awvalid4 => NLW_audio_interface_wrap_0_m_axi_awvalid4_UNCONNECTED,
      m_axi_awvalid5 => NLW_audio_interface_wrap_0_m_axi_awvalid5_UNCONNECTED,
      m_axi_bready0 => NLW_audio_interface_wrap_0_m_axi_bready0_UNCONNECTED,
      m_axi_bready1 => NLW_audio_interface_wrap_0_m_axi_bready1_UNCONNECTED,
      m_axi_bready2 => NLW_audio_interface_wrap_0_m_axi_bready2_UNCONNECTED,
      m_axi_bready3 => NLW_audio_interface_wrap_0_m_axi_bready3_UNCONNECTED,
      m_axi_bready4 => NLW_audio_interface_wrap_0_m_axi_bready4_UNCONNECTED,
      m_axi_bready5 => NLW_audio_interface_wrap_0_m_axi_bready5_UNCONNECTED,
      m_axi_bresp0(1 downto 0) => B"00",
      m_axi_bresp1(1 downto 0) => B"00",
      m_axi_bresp2(1 downto 0) => B"00",
      m_axi_bresp3(1 downto 0) => B"00",
      m_axi_bresp4(1 downto 0) => B"00",
      m_axi_bresp5(1 downto 0) => B"00",
      m_axi_bvalid0 => '0',
      m_axi_bvalid1 => '0',
      m_axi_bvalid2 => '0',
      m_axi_bvalid3 => '0',
      m_axi_bvalid4 => '0',
      m_axi_bvalid5 => '0',
      m_axi_rdata0(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rdata1(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rdata2(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rdata3(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rdata4(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rdata5(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rlast0 => '0',
      m_axi_rlast1 => '0',
      m_axi_rlast2 => '0',
      m_axi_rlast3 => '0',
      m_axi_rlast4 => '0',
      m_axi_rlast5 => '0',
      m_axi_rready0 => NLW_audio_interface_wrap_0_m_axi_rready0_UNCONNECTED,
      m_axi_rready1 => NLW_audio_interface_wrap_0_m_axi_rready1_UNCONNECTED,
      m_axi_rready2 => NLW_audio_interface_wrap_0_m_axi_rready2_UNCONNECTED,
      m_axi_rready3 => NLW_audio_interface_wrap_0_m_axi_rready3_UNCONNECTED,
      m_axi_rready4 => NLW_audio_interface_wrap_0_m_axi_rready4_UNCONNECTED,
      m_axi_rready5 => NLW_audio_interface_wrap_0_m_axi_rready5_UNCONNECTED,
      m_axi_rresp0(1 downto 0) => B"00",
      m_axi_rresp1(1 downto 0) => B"00",
      m_axi_rresp2(1 downto 0) => B"00",
      m_axi_rresp3(1 downto 0) => B"00",
      m_axi_rresp4(1 downto 0) => B"00",
      m_axi_rresp5(1 downto 0) => B"00",
      m_axi_rvalid0 => '0',
      m_axi_rvalid1 => '0',
      m_axi_rvalid2 => '0',
      m_axi_rvalid3 => '0',
      m_axi_rvalid4 => '0',
      m_axi_rvalid5 => '0',
      m_axi_wdata0(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_wdata0_UNCONNECTED(31 downto 0),
      m_axi_wdata1(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_wdata1_UNCONNECTED(31 downto 0),
      m_axi_wdata2(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_wdata2_UNCONNECTED(31 downto 0),
      m_axi_wdata3(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_wdata3_UNCONNECTED(31 downto 0),
      m_axi_wdata4(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_wdata4_UNCONNECTED(31 downto 0),
      m_axi_wdata5(31 downto 0) => NLW_audio_interface_wrap_0_m_axi_wdata5_UNCONNECTED(31 downto 0),
      m_axi_wlast0 => NLW_audio_interface_wrap_0_m_axi_wlast0_UNCONNECTED,
      m_axi_wlast1 => NLW_audio_interface_wrap_0_m_axi_wlast1_UNCONNECTED,
      m_axi_wlast2 => NLW_audio_interface_wrap_0_m_axi_wlast2_UNCONNECTED,
      m_axi_wlast3 => NLW_audio_interface_wrap_0_m_axi_wlast3_UNCONNECTED,
      m_axi_wlast4 => NLW_audio_interface_wrap_0_m_axi_wlast4_UNCONNECTED,
      m_axi_wlast5 => NLW_audio_interface_wrap_0_m_axi_wlast5_UNCONNECTED,
      m_axi_wready0 => '0',
      m_axi_wready1 => '0',
      m_axi_wready2 => '0',
      m_axi_wready3 => '0',
      m_axi_wready4 => '0',
      m_axi_wready5 => '0',
      m_axi_wstrb0(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_wstrb0_UNCONNECTED(3 downto 0),
      m_axi_wstrb1(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_wstrb1_UNCONNECTED(3 downto 0),
      m_axi_wstrb2(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_wstrb2_UNCONNECTED(3 downto 0),
      m_axi_wstrb3(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_wstrb3_UNCONNECTED(3 downto 0),
      m_axi_wstrb4(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_wstrb4_UNCONNECTED(3 downto 0),
      m_axi_wstrb5(3 downto 0) => NLW_audio_interface_wrap_0_m_axi_wstrb5_UNCONNECTED(3 downto 0),
      m_axi_wvalid0 => NLW_audio_interface_wrap_0_m_axi_wvalid0_UNCONNECTED,
      m_axi_wvalid1 => NLW_audio_interface_wrap_0_m_axi_wvalid1_UNCONNECTED,
      m_axi_wvalid2 => NLW_audio_interface_wrap_0_m_axi_wvalid2_UNCONNECTED,
      m_axi_wvalid3 => NLW_audio_interface_wrap_0_m_axi_wvalid3_UNCONNECTED,
      m_axi_wvalid4 => NLW_audio_interface_wrap_0_m_axi_wvalid4_UNCONNECTED,
      m_axi_wvalid5 => NLW_audio_interface_wrap_0_m_axi_wvalid5_UNCONNECTED,
      mclk => clk_wiz_1_clk_i2s,
      md_error0 => NLW_audio_interface_wrap_0_md_error0_UNCONNECTED,
      md_error1 => NLW_audio_interface_wrap_0_md_error1_UNCONNECTED,
      md_error2 => NLW_audio_interface_wrap_0_md_error2_UNCONNECTED,
      md_error3 => NLW_audio_interface_wrap_0_md_error3_UNCONNECTED,
      md_error4 => NLW_audio_interface_wrap_0_md_error4_UNCONNECTED,
      md_error5 => NLW_audio_interface_wrap_0_md_error5_UNCONNECTED,
      reset => proc_sys_reset_0_peripheral_aresetn(0),
      sys_clk => clk_wiz_0_clk_250mhz,
      ui_in_numeric_addr(77 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000",
      ui_in_numeric_value(33 downto 0) => B"0000000000000000000000000000000000",
      ui_numeric_write_enable => '0'
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_250mhz => clk_wiz_0_clk_250mhz,
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
clk_wiz_1: component design_1_clk_wiz_1_0
     port map (
      clk_24mhz => clk_wiz_1_clk_24mhz,
      clk_i2s => clk_wiz_1_clk_i2s,
      clk_in1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_1_locked
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_0
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
processing_system7_0: component design_1_processing_system7_0_0
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
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
end STRUCTURE;
