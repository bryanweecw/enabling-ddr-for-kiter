library ieee;
use ieee.std_logic_1164.all;
entity audio_interface_wrapper is
port (
    ac_bclk_0 : out std_logic;
    ac_pbdat_0 : out std_logic;
    ac_pblrc_0 : out std_logic;
    ac_recdat_0 : in std_logic;
    ac_reclrc_0 : out std_logic;
    mclk : in std_logic;
    reset : in std_logic;
    sys_clk : in std_logic;
    ui_in_numeric_addr : in std_logic_vector(77 downto 0);
    ui_in_numeric_value : in std_logic_vector(33 downto 0);
    ui_numeric_write_enable : in std_logic;
    
    -- Interface 0
    m_axi_aclk0      : in  std_logic;
    m_axi_aresetn0   : in  std_logic;
    md_error0        : out std_logic;
    m_axi_arready0   : in  std_logic;
    m_axi_arvalid0   : out std_logic;
    m_axi_araddr0    : out std_logic_vector(31 downto 0);
    m_axi_arlen0     : out std_logic_vector(7 downto 0);
    m_axi_arsize0    : out std_logic_vector(2 downto 0);
    m_axi_arburst0   : out std_logic_vector(1 downto 0);
    m_axi_arprot0    : out std_logic_vector(2 downto 0);
    m_axi_arcache0   : out std_logic_vector(3 downto 0);
    m_axi_rready0    : out std_logic;
    m_axi_rvalid0    : in  std_logic;
    m_axi_rdata0     : in  std_logic_vector(31 downto 0);
    m_axi_rresp0     : in  std_logic_vector(1 downto 0);
    m_axi_rlast0     : in  std_logic;
    m_axi_awready0   : in  std_logic;
    m_axi_awvalid0   : out std_logic;
    m_axi_awaddr0    : out std_logic_vector(31 downto 0);
    m_axi_awlen0     : out std_logic_vector(7 downto 0);
    m_axi_awsize0    : out std_logic_vector(2 downto 0);
    m_axi_awburst0   : out std_logic_vector(1 downto 0);
    m_axi_awprot0    : out std_logic_vector(2 downto 0);
    m_axi_awcache0   : out std_logic_vector(3 downto 0);
    m_axi_wready0    : in  std_logic;
    m_axi_wvalid0    : out std_logic;
    m_axi_wdata0     : out std_logic_vector(31 downto 0);
    m_axi_wstrb0     : out std_logic_vector(3 downto 0);
    m_axi_wlast0     : out std_logic;
    m_axi_bready0    : out std_logic;
    m_axi_bvalid0    : in  std_logic;
    m_axi_bresp0     : in  std_logic_vector(1 downto 0);
    
    
      op_in_ready_01 : out std_logic;
         op_in_valid_01 : out std_logic;
         op_in_data_01  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_01  : out std_logic;
         op_out_valid_01  : out std_logic;
         op_out_data_01   : out std_logic_vector(33 downto 0);
         
             op_in_ready_02 : out std_logic;
         op_in_valid_02 : out std_logic;
         op_in_data_02  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_02  : out std_logic;
         op_out_valid_02  : out std_logic;
         op_out_data_02   : out std_logic_vector(33 downto 0);
         
             op_in_ready_03 : out std_logic;
         op_in_valid_03 : out std_logic;
         op_in_data_03  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_03  : out std_logic;
         op_out_valid_03  : out std_logic;
         op_out_data_03   : out std_logic_vector(33 downto 0);
         
             op_in_ready_04 : out std_logic;
         op_in_valid_04 : out std_logic;
         op_in_data_04  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_04  : out std_logic;
         op_out_valid_04  : out std_logic;
         op_out_data_04   : out std_logic_vector(33 downto 0);
             op_in_ready_05 : out std_logic;
         op_in_valid_05 : out std_logic;
         op_in_data_05  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_05  : out std_logic;
         op_out_valid_05  : out std_logic;
         op_out_data_05   : out std_logic_vector(33 downto 0);
             op_in_ready_06 : out std_logic;
         op_in_valid_06 : out std_logic;
         op_in_data_06  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_06  : out std_logic;
         op_out_valid_06  : out std_logic;
         op_out_data_06   : out std_logic_vector(33 downto 0);
    
         op_in_ready_11 : out std_logic;
         op_in_valid_11 : out std_logic;
         op_in_data_11  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_12 : out std_logic;
         op_in_valid_12 : out std_logic;
         op_in_data_12  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_13 : out std_logic;
         op_in_valid_13 : out std_logic;
         op_in_data_13  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_14 : out std_logic;
         op_in_valid_14 : out std_logic;
         op_in_data_14  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_15 : out std_logic;
         op_in_valid_15 : out std_logic;
         op_in_data_15  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_16 : out std_logic;
         op_in_valid_16 : out std_logic;
         op_in_data_16  : out std_logic_vector(33 downto 0) ;

    -- Interface 1
    m_axi_aclk1      : in  std_logic;
    m_axi_aresetn1   : in  std_logic;
    md_error1        : out std_logic;
    m_axi_arready1   : in  std_logic;
    m_axi_arvalid1   : out std_logic;
    m_axi_araddr1    : out std_logic_vector(31 downto 0);
    m_axi_arlen1     : out std_logic_vector(7 downto 0);
    m_axi_arsize1    : out std_logic_vector(2 downto 0);
    m_axi_arburst1   : out std_logic_vector(1 downto 0);
    m_axi_arprot1    : out std_logic_vector(2 downto 0);
    m_axi_arcache1   : out std_logic_vector(3 downto 0);
    m_axi_rready1    : out std_logic;
    m_axi_rvalid1    : in  std_logic;
    m_axi_rdata1     : in  std_logic_vector(31 downto 0);
    m_axi_rresp1     : in  std_logic_vector(1 downto 0);
    m_axi_rlast1     : in  std_logic;
    m_axi_awready1   : in  std_logic;
    m_axi_awvalid1   : out std_logic;
    m_axi_awaddr1    : out std_logic_vector(31 downto 0);
    m_axi_awlen1     : out std_logic_vector(7 downto 0);
    m_axi_awsize1    : out std_logic_vector(2 downto 0);
    m_axi_awburst1   : out std_logic_vector(1 downto 0);
    m_axi_awprot1    : out std_logic_vector(2 downto 0);
    m_axi_awcache1   : out std_logic_vector(3 downto 0);
    m_axi_wready1    : in  std_logic;
    m_axi_wvalid1    : out std_logic;
    m_axi_wdata1     : out std_logic_vector(31 downto 0);
    m_axi_wstrb1     : out std_logic_vector(3 downto 0);
    m_axi_wlast1     : out std_logic;
    m_axi_bready1    : out std_logic;
    m_axi_bvalid1    : in  std_logic;
    m_axi_bresp1     : in  std_logic_vector(1 downto 0);

    -- Interface 2
    m_axi_aclk2      : in  std_logic;
    m_axi_aresetn2   : in  std_logic;
    md_error2        : out std_logic;
    m_axi_arready2   : in  std_logic;
    m_axi_arvalid2   : out std_logic;
    m_axi_araddr2    : out std_logic_vector(31 downto 0);
    m_axi_arlen2     : out std_logic_vector(7 downto 0);
    m_axi_arsize2    : out std_logic_vector(2 downto 0);
    m_axi_arburst2   : out std_logic_vector(1 downto 0);
    m_axi_arprot2    : out std_logic_vector(2 downto 0);
    m_axi_arcache2   : out std_logic_vector(3 downto 0);
    m_axi_rready2    : out std_logic;
    m_axi_rvalid2    : in  std_logic;
    m_axi_rdata2     : in  std_logic_vector(31 downto 0);
    m_axi_rresp2     : in  std_logic_vector(1 downto 0);
    m_axi_rlast2     : in  std_logic;
    m_axi_awready2   : in  std_logic;
    m_axi_awvalid2   : out std_logic;
    m_axi_awaddr2    : out std_logic_vector(31 downto 0);
    m_axi_awlen2     : out std_logic_vector(7 downto 0);
    m_axi_awsize2    : out std_logic_vector(2 downto 0);
    m_axi_awburst2   : out std_logic_vector(1 downto 0);
    m_axi_awprot2    : out std_logic_vector(2 downto 0);
    m_axi_awcache2   : out std_logic_vector(3 downto 0);
    m_axi_wready2    : in  std_logic;
    m_axi_wvalid2    : out std_logic;
    m_axi_wdata2     : out std_logic_vector(31 downto 0);
    m_axi_wstrb2     : out std_logic_vector(3 downto 0);
    m_axi_wlast2     : out std_logic;
    m_axi_bready2    : out std_logic;
    m_axi_bvalid2    : in  std_logic;
    m_axi_bresp2     : in  std_logic_vector(1 downto 0);

    -- Interface 3
    m_axi_aclk3      : in  std_logic;
    m_axi_aresetn3   : in  std_logic;
    md_error3        : out std_logic;
    m_axi_arready3   : in  std_logic;
    m_axi_arvalid3   : out std_logic;
    m_axi_araddr3    : out std_logic_vector(31 downto 0);
    m_axi_arlen3     : out std_logic_vector(7 downto 0);
    m_axi_arsize3    : out std_logic_vector(2 downto 0);
    m_axi_arburst3   : out std_logic_vector(1 downto 0);
    m_axi_arprot3    : out std_logic_vector(2 downto 0);
    m_axi_arcache3   : out std_logic_vector(3 downto 0);
    m_axi_rready3    : out std_logic;
    m_axi_rvalid3    : in  std_logic;
    m_axi_rdata3     : in  std_logic_vector(31 downto 0);
    m_axi_rresp3     : in  std_logic_vector(1 downto 0);
    m_axi_rlast3     : in  std_logic;
    m_axi_awready3   : in  std_logic;
    m_axi_awvalid3   : out std_logic;
    m_axi_awaddr3    : out std_logic_vector(31 downto 0);
    m_axi_awlen3     : out std_logic_vector(7 downto 0);
    m_axi_awsize3    : out std_logic_vector(2 downto 0);
    m_axi_awburst3   : out std_logic_vector(1 downto 0);
    m_axi_awprot3    : out std_logic_vector(2 downto 0);
    m_axi_awcache3   : out std_logic_vector(3 downto 0);
    m_axi_wready3    : in  std_logic;
    m_axi_wvalid3    : out std_logic;
    m_axi_wdata3     : out std_logic_vector(31 downto 0);
    m_axi_wstrb3     : out std_logic_vector(3 downto 0);
    m_axi_wlast3     : out std_logic;
    m_axi_bready3    : out std_logic;
    m_axi_bvalid3    : in  std_logic;
    m_axi_bresp3     : in  std_logic_vector(1 downto 0);

    -- Interface 4
    m_axi_aclk4      : in  std_logic;
    m_axi_aresetn4   : in  std_logic;
    md_error4        : out std_logic;
    m_axi_arready4   : in  std_logic;
    m_axi_arvalid4   : out std_logic;
    m_axi_araddr4    : out std_logic_vector(31 downto 0);
    m_axi_arlen4     : out std_logic_vector(7 downto 0);
    m_axi_arsize4    : out std_logic_vector(2 downto 0);
    m_axi_arburst4   : out std_logic_vector(1 downto 0);
    m_axi_arprot4    : out std_logic_vector(2 downto 0);
    m_axi_arcache4   : out std_logic_vector(3 downto 0);
    m_axi_rready4    : out std_logic;
    m_axi_rvalid4    : in  std_logic;
    m_axi_rdata4     : in  std_logic_vector(31 downto 0);
    m_axi_rresp4     : in  std_logic_vector(1 downto 0);
    m_axi_rlast4     : in  std_logic;
    m_axi_awready4   : in  std_logic;
    m_axi_awvalid4   : out std_logic;
    m_axi_awaddr4    : out std_logic_vector(31 downto 0);
    m_axi_awlen4     : out std_logic_vector(7 downto 0);
    m_axi_awsize4    : out std_logic_vector(2 downto 0);
    m_axi_awburst4   : out std_logic_vector(1 downto 0);
    m_axi_awprot4    : out std_logic_vector(2 downto 0);
    m_axi_awcache4   : out std_logic_vector(3 downto 0);
    m_axi_wready4    : in  std_logic;
    m_axi_wvalid4    : out std_logic;
    m_axi_wdata4     : out std_logic_vector(31 downto 0);
    m_axi_wstrb4     : out std_logic_vector(3 downto 0);
    m_axi_wlast4     : out std_logic;
    m_axi_bready4    : out std_logic;
    m_axi_bvalid4    : in  std_logic;
    m_axi_bresp4     : in  std_logic_vector(1 downto 0);

    -- Interface 5
    m_axi_aclk5      : in  std_logic;
    m_axi_aresetn5   : in  std_logic;
    md_error5        : out std_logic;
    m_axi_arready5   : in  std_logic;
    m_axi_arvalid5   : out std_logic;
    m_axi_araddr5    : out std_logic_vector(31 downto 0);
    m_axi_arlen5     : out std_logic_vector(7 downto 0);
    m_axi_arsize5    : out std_logic_vector(2 downto 0);
    m_axi_arburst5   : out std_logic_vector(1 downto 0);
    m_axi_arprot5    : out std_logic_vector(2 downto 0);
    m_axi_arcache5   : out std_logic_vector(3 downto 0);
    m_axi_rready5    : out std_logic;
    m_axi_rvalid5    : in  std_logic;
    m_axi_rdata5     : in  std_logic_vector(31 downto 0);
    m_axi_rresp5     : in  std_logic_vector(1 downto 0);
    m_axi_rlast5     : in  std_logic;
    m_axi_awready5   : in  std_logic;
    m_axi_awvalid5   : out std_logic;
    m_axi_awaddr5    : out std_logic_vector(31 downto 0);
    m_axi_awlen5     : out std_logic_vector(7 downto 0);
    m_axi_awsize5    : out std_logic_vector(2 downto 0);
    m_axi_awburst5   : out std_logic_vector(1 downto 0);
    m_axi_awprot5    : out std_logic_vector(2 downto 0);
    m_axi_awcache5   : out std_logic_vector(3 downto 0);
    m_axi_wready5    : in  std_logic;
    m_axi_wvalid5    : out std_logic;
    m_axi_wdata5     : out std_logic_vector(31 downto 0);
    m_axi_wstrb5     : out std_logic_vector(3 downto 0);
    m_axi_wlast5     : out std_logic;
    m_axi_bready5    : out std_logic;
    m_axi_bvalid5    : in  std_logic;
    m_axi_bresp5     : in  std_logic_vector(1 downto 0)
);
end audio_interface_wrapper;


architecture structure of audio_interface_wrapper is

ATTRIBUTE X_INTERFACE_INFO : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER : STRING;

-- ==========================
-- Interface Group: m_axi_1
-- ==========================
ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 ARVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 AWVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 BREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 BRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 BVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 RDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 RLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 RREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 RRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 RVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 WDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 WLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 WREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 WSTRB";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid0 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_1 WVALID";

-- ==========================
-- Interface Group: m_axi_2
-- ==========================
ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 ARVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 AWVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 BREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 BRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 BVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 RDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 RLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 RREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 RRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 RVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 WDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 WLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 WREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 WSTRB";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid1 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_2 WVALID";

-- ==========================
-- Interface Group: m_axi_3
-- ==========================
ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 ARVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 AWVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 BREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 BRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 BVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 RDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 RLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 RREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 RRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 RVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 WDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 WLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 WREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 WSTRB";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid2 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_3 WVALID";

-- ==========================
-- Interface Group: m_axi_4
-- ==========================
ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 ARVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 AWVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 BREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 BRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 BVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 RDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 RLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 RREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 RRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 RVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 WDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 WLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 WREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 WSTRB";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid3 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_4 WVALID";

-- ==========================
-- Interface Group: m_axi_5
-- ==========================
ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 ARVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 AWVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 BREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 BRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 BVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 RDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 RLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 RREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 RRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 RVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 WDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 WLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 WREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 WSTRB";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid4 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_5 WVALID";

-- ==========================
-- Interface Group: m_axi_6
-- ==========================
ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 ARVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWADDR";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWBURST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWCACHE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWLEN";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWPROT";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWSIZE";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 AWVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 BREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 BRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 BVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 RDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 RLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 RREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 RRESP";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 RVALID";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 WDATA";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 WLAST";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 WREADY";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 WSTRB";
ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid5 : SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_6 WVALID";


component i2s_transceiver is
port (
    l_data_rx : out std_logic_vector(23 downto 0);
    l_data_tx : in std_logic_vector(23 downto 0);
    mclk : in std_logic;
    r_data_rx : out std_logic_vector(23 downto 0);
    r_data_tx : in std_logic_vector(23 downto 0);
    reset_n : in std_logic;
    sclk : out std_logic;
    sd_rx : in std_logic;
    sd_tx : out std_logic;
    ws : out std_logic
);
end component;

component input_interface is
port (
    clk : in std_logic;
    l_data_in : in std_logic_vector(23 downto 0);
    l_data_out : out std_logic_vector(23 downto 0);
    l_ready : in std_logic;
    l_valid : out std_logic;
    r_data_in : in std_logic_vector(23 downto 0);
    r_data_out : out std_logic_vector(23 downto 0);
    r_ready : in std_logic;
    r_valid : out std_logic;
    rst : in std_logic;
    ws : in std_logic
);
end component;

component output_interface is
port (
    clk : in std_logic;
    l_data_in : in std_logic_vector(23 downto 0);
    l_data_out : out std_logic_vector(23 downto 0);
    l_ready : out std_logic;
    l_valid : in std_logic;
    r_data_in : in std_logic_vector(23 downto 0);
    r_data_out : out std_logic_vector(23 downto 0);
    r_ready : out std_logic;
    r_valid : in std_logic;
    rst : in std_logic;
    ws : in std_logic
);
end component;

component i2s_to_fpc is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(23 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component fpc_to_i2s is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(23 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component ui_controller is
generic (
    numeric_input_count : integer;
    ram_width : integer
);
port (
    clk : in std_logic;
    in_numeric_addr : in std_logic_vector(77 downto 0);
    in_numeric_ctrl : out std_logic_vector(2651 downto 0);
    in_numeric_value : in std_logic_vector(33 downto 0);
    numeric_write_enable : in std_logic
);
end component;

component tapiir is
generic (
    ram_depth : natural := 2;
    ram_width : natural := 34
);
port (
    clk : in std_logic;
    rst : in std_logic;
    tapiir_in_data_0 : in std_logic_vector(33 downto 0);
    tapiir_in_data_1 : in std_logic_vector(33 downto 0);
    tapiir_in_ready_0 : out std_logic;
    tapiir_in_ready_1 : out std_logic;
    tapiir_in_valid_0 : in std_logic;
    tapiir_in_valid_1 : in std_logic;
    tapiir_out_data_0 : out std_logic_vector(33 downto 0);
    tapiir_out_data_1 : out std_logic_vector(33 downto 0);
    tapiir_out_ready_0 : in std_logic;
    tapiir_out_ready_1 : in std_logic;
    tapiir_out_valid_0 : out std_logic;
    tapiir_out_valid_1 : out std_logic;
    vslider_10_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_11_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_12_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_13_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_14_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_15_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_16_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_17_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_18_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_19_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_20_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_21_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_22_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_23_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_24_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_25_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_26_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_27_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_28_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_29_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_30_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_31_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_32_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_33_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_34_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_35_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_36_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_37_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_38_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_39_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_40_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_41_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_42_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_43_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_44_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_45_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_46_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_47_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_48_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_49_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_4_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_50_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_51_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_52_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_53_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_54_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_55_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_56_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_57_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_58_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_59_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_5_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_60_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_61_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_62_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_63_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_64_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_65_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_66_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_67_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_68_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_69_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_6_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_70_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_71_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_72_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_73_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_74_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_75_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_76_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_77_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_78_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_79_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_7_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_80_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_81_op_in_data_0 : in std_logic_vector := "0100111111100000000000000000000000";
    vslider_8_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    vslider_9_op_in_data_0 : in std_logic_vector := "0000000000000000000000000000000000";
    
    -- Interface 0
    m_axi_aclk0      : in  std_logic;
    m_axi_aresetn0   : in  std_logic;
    md_error0        : out std_logic;
    m_axi_arready0   : in  std_logic;
    m_axi_arvalid0   : out std_logic;
    m_axi_araddr0    : out std_logic_vector(31 downto 0);
    m_axi_arlen0     : out std_logic_vector(7 downto 0);
    m_axi_arsize0    : out std_logic_vector(2 downto 0);
    m_axi_arburst0   : out std_logic_vector(1 downto 0);
    m_axi_arprot0    : out std_logic_vector(2 downto 0);
    m_axi_arcache0   : out std_logic_vector(3 downto 0);
    m_axi_rready0    : out std_logic;
    m_axi_rvalid0    : in  std_logic;
    m_axi_rdata0     : in  std_logic_vector(31 downto 0);
    m_axi_rresp0     : in  std_logic_vector(1 downto 0);
    m_axi_rlast0     : in  std_logic;
    m_axi_awready0   : in  std_logic;
    m_axi_awvalid0   : out std_logic;
    m_axi_awaddr0    : out std_logic_vector(31 downto 0);
    m_axi_awlen0     : out std_logic_vector(7 downto 0);
    m_axi_awsize0    : out std_logic_vector(2 downto 0);
    m_axi_awburst0   : out std_logic_vector(1 downto 0);
    m_axi_awprot0    : out std_logic_vector(2 downto 0);
    m_axi_awcache0   : out std_logic_vector(3 downto 0);
    m_axi_wready0    : in  std_logic;
    m_axi_wvalid0    : out std_logic;
    m_axi_wdata0     : out std_logic_vector(31 downto 0);
    m_axi_wstrb0     : out std_logic_vector(3 downto 0);
    m_axi_wlast0     : out std_logic;
    m_axi_bready0    : out std_logic;
    m_axi_bvalid0    : in  std_logic;
    m_axi_bresp0     : in  std_logic_vector(1 downto 0);

    -- Interface 1
    m_axi_aclk1      : in  std_logic;
    m_axi_aresetn1   : in  std_logic;
    md_error1        : out std_logic;
    m_axi_arready1   : in  std_logic;
    m_axi_arvalid1   : out std_logic;
    m_axi_araddr1    : out std_logic_vector(31 downto 0);
    m_axi_arlen1     : out std_logic_vector(7 downto 0);
    m_axi_arsize1    : out std_logic_vector(2 downto 0);
    m_axi_arburst1   : out std_logic_vector(1 downto 0);
    m_axi_arprot1    : out std_logic_vector(2 downto 0);
    m_axi_arcache1   : out std_logic_vector(3 downto 0);
    m_axi_rready1    : out std_logic;
    m_axi_rvalid1    : in  std_logic;
    m_axi_rdata1     : in  std_logic_vector(31 downto 0);
    m_axi_rresp1     : in  std_logic_vector(1 downto 0);
    m_axi_rlast1     : in  std_logic;
    m_axi_awready1   : in  std_logic;
    m_axi_awvalid1   : out std_logic;
    m_axi_awaddr1    : out std_logic_vector(31 downto 0);
    m_axi_awlen1     : out std_logic_vector(7 downto 0);
    m_axi_awsize1    : out std_logic_vector(2 downto 0);
    m_axi_awburst1   : out std_logic_vector(1 downto 0);
    m_axi_awprot1    : out std_logic_vector(2 downto 0);
    m_axi_awcache1   : out std_logic_vector(3 downto 0);
    m_axi_wready1    : in  std_logic;
    m_axi_wvalid1    : out std_logic;
    m_axi_wdata1     : out std_logic_vector(31 downto 0);
    m_axi_wstrb1     : out std_logic_vector(3 downto 0);
    m_axi_wlast1     : out std_logic;
    m_axi_bready1    : out std_logic;
    m_axi_bvalid1    : in  std_logic;
    m_axi_bresp1     : in  std_logic_vector(1 downto 0);

    -- Interface 2
    m_axi_aclk2      : in  std_logic;
    m_axi_aresetn2   : in  std_logic;
    md_error2        : out std_logic;
    m_axi_arready2   : in  std_logic;
    m_axi_arvalid2   : out std_logic;
    m_axi_araddr2    : out std_logic_vector(31 downto 0);
    m_axi_arlen2     : out std_logic_vector(7 downto 0);
    m_axi_arsize2    : out std_logic_vector(2 downto 0);
    m_axi_arburst2   : out std_logic_vector(1 downto 0);
    m_axi_arprot2    : out std_logic_vector(2 downto 0);
    m_axi_arcache2   : out std_logic_vector(3 downto 0);
    m_axi_rready2    : out std_logic;
    m_axi_rvalid2    : in  std_logic;
    m_axi_rdata2     : in  std_logic_vector(31 downto 0);
    m_axi_rresp2     : in  std_logic_vector(1 downto 0);
    m_axi_rlast2     : in  std_logic;
    m_axi_awready2   : in  std_logic;
    m_axi_awvalid2   : out std_logic;
    m_axi_awaddr2    : out std_logic_vector(31 downto 0);
    m_axi_awlen2     : out std_logic_vector(7 downto 0);
    m_axi_awsize2    : out std_logic_vector(2 downto 0);
    m_axi_awburst2   : out std_logic_vector(1 downto 0);
    m_axi_awprot2    : out std_logic_vector(2 downto 0);
    m_axi_awcache2   : out std_logic_vector(3 downto 0);
    m_axi_wready2    : in  std_logic;
    m_axi_wvalid2    : out std_logic;
    m_axi_wdata2     : out std_logic_vector(31 downto 0);
    m_axi_wstrb2     : out std_logic_vector(3 downto 0);
    m_axi_wlast2     : out std_logic;
    m_axi_bready2    : out std_logic;
    m_axi_bvalid2    : in  std_logic;
    m_axi_bresp2     : in  std_logic_vector(1 downto 0);

    -- Interface 3
    m_axi_aclk3      : in  std_logic;
    m_axi_aresetn3   : in  std_logic;
    md_error3        : out std_logic;
    m_axi_arready3   : in  std_logic;
    m_axi_arvalid3   : out std_logic;
    m_axi_araddr3    : out std_logic_vector(31 downto 0);
    m_axi_arlen3     : out std_logic_vector(7 downto 0);
    m_axi_arsize3    : out std_logic_vector(2 downto 0);
    m_axi_arburst3   : out std_logic_vector(1 downto 0);
    m_axi_arprot3    : out std_logic_vector(2 downto 0);
    m_axi_arcache3   : out std_logic_vector(3 downto 0);
    m_axi_rready3    : out std_logic;
    m_axi_rvalid3    : in  std_logic;
    m_axi_rdata3     : in  std_logic_vector(31 downto 0);
    m_axi_rresp3     : in  std_logic_vector(1 downto 0);
    m_axi_rlast3     : in  std_logic;
    m_axi_awready3   : in  std_logic;
    m_axi_awvalid3   : out std_logic;
    m_axi_awaddr3    : out std_logic_vector(31 downto 0);
    m_axi_awlen3     : out std_logic_vector(7 downto 0);
    m_axi_awsize3    : out std_logic_vector(2 downto 0);
    m_axi_awburst3   : out std_logic_vector(1 downto 0);
    m_axi_awprot3    : out std_logic_vector(2 downto 0);
    m_axi_awcache3   : out std_logic_vector(3 downto 0);
    m_axi_wready3    : in  std_logic;
    m_axi_wvalid3    : out std_logic;
    m_axi_wdata3     : out std_logic_vector(31 downto 0);
    m_axi_wstrb3     : out std_logic_vector(3 downto 0);
    m_axi_wlast3     : out std_logic;
    m_axi_bready3    : out std_logic;
    m_axi_bvalid3    : in  std_logic;
    m_axi_bresp3     : in  std_logic_vector(1 downto 0);

    -- Interface 4
    m_axi_aclk4      : in  std_logic;
    m_axi_aresetn4   : in  std_logic;
    md_error4        : out std_logic;
    m_axi_arready4   : in  std_logic;
    m_axi_arvalid4   : out std_logic;
    m_axi_araddr4    : out std_logic_vector(31 downto 0);
    m_axi_arlen4     : out std_logic_vector(7 downto 0);
    m_axi_arsize4    : out std_logic_vector(2 downto 0);
    m_axi_arburst4   : out std_logic_vector(1 downto 0);
    m_axi_arprot4    : out std_logic_vector(2 downto 0);
    m_axi_arcache4   : out std_logic_vector(3 downto 0);
    m_axi_rready4    : out std_logic;
    m_axi_rvalid4    : in  std_logic;
    m_axi_rdata4     : in  std_logic_vector(31 downto 0);
    m_axi_rresp4     : in  std_logic_vector(1 downto 0);
    m_axi_rlast4     : in  std_logic;
    m_axi_awready4   : in  std_logic;
    m_axi_awvalid4   : out std_logic;
    m_axi_awaddr4    : out std_logic_vector(31 downto 0);
    m_axi_awlen4     : out std_logic_vector(7 downto 0);
    m_axi_awsize4    : out std_logic_vector(2 downto 0);
    m_axi_awburst4   : out std_logic_vector(1 downto 0);
    m_axi_awprot4    : out std_logic_vector(2 downto 0);
    m_axi_awcache4   : out std_logic_vector(3 downto 0);
    m_axi_wready4    : in  std_logic;
    m_axi_wvalid4    : out std_logic;
    m_axi_wdata4     : out std_logic_vector(31 downto 0);
    m_axi_wstrb4     : out std_logic_vector(3 downto 0);
    m_axi_wlast4     : out std_logic;
    m_axi_bready4    : out std_logic;
    m_axi_bvalid4    : in  std_logic;
    m_axi_bresp4     : in  std_logic_vector(1 downto 0);

    -- Interface 5
    m_axi_aclk5      : in  std_logic;
    m_axi_aresetn5   : in  std_logic;
    md_error5        : out std_logic;
    m_axi_arready5   : in  std_logic;
    m_axi_arvalid5   : out std_logic;
    m_axi_araddr5    : out std_logic_vector(31 downto 0);
    m_axi_arlen5     : out std_logic_vector(7 downto 0);
    m_axi_arsize5    : out std_logic_vector(2 downto 0);
    m_axi_arburst5   : out std_logic_vector(1 downto 0);
    m_axi_arprot5    : out std_logic_vector(2 downto 0);
    m_axi_arcache5   : out std_logic_vector(3 downto 0);
    m_axi_rready5    : out std_logic;
    m_axi_rvalid5    : in  std_logic;
    m_axi_rdata5     : in  std_logic_vector(31 downto 0);
    m_axi_rresp5     : in  std_logic_vector(1 downto 0);
    m_axi_rlast5     : in  std_logic;
    m_axi_awready5   : in  std_logic;
    m_axi_awvalid5   : out std_logic;
    m_axi_awaddr5    : out std_logic_vector(31 downto 0);
    m_axi_awlen5     : out std_logic_vector(7 downto 0);
    m_axi_awsize5    : out std_logic_vector(2 downto 0);
    m_axi_awburst5   : out std_logic_vector(1 downto 0);
    m_axi_awprot5    : out std_logic_vector(2 downto 0);
    m_axi_awcache5   : out std_logic_vector(3 downto 0);
    m_axi_wready5    : in  std_logic;
    m_axi_wvalid5    : out std_logic;
    m_axi_wdata5     : out std_logic_vector(31 downto 0);
    m_axi_wstrb5     : out std_logic_vector(3 downto 0);
    m_axi_wlast5     : out std_logic;
    m_axi_bready5    : out std_logic;
    m_axi_bvalid5    : in  std_logic;
    m_axi_bresp5     : in  std_logic_vector(1 downto 0);
        op_in_ready_01 : out std_logic;
         op_in_valid_01 : out std_logic;
         op_in_data_01  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_01  : out std_logic;
         op_out_valid_01  : out std_logic;
         op_out_data_01   : out std_logic_vector(33 downto 0);
         
             op_in_ready_02 : out std_logic;
         op_in_valid_02 : out std_logic;
         op_in_data_02  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_02  : out std_logic;
         op_out_valid_02  : out std_logic;
         op_out_data_02   : out std_logic_vector(33 downto 0);
         
             op_in_ready_03 : out std_logic;
         op_in_valid_03 : out std_logic;
         op_in_data_03  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_03  : out std_logic;
         op_out_valid_03  : out std_logic;
         op_out_data_03   : out std_logic_vector(33 downto 0);
         
             op_in_ready_04 : out std_logic;
         op_in_valid_04 : out std_logic;
         op_in_data_04  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_04  : out std_logic;
         op_out_valid_04  : out std_logic;
         op_out_data_04   : out std_logic_vector(33 downto 0);
             op_in_ready_05 : out std_logic;
         op_in_valid_05 : out std_logic;
         op_in_data_05  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_05  : out std_logic;
         op_out_valid_05  : out std_logic;
         op_out_data_05   : out std_logic_vector(33 downto 0);
             op_in_ready_06 : out std_logic;
         op_in_valid_06 : out std_logic;
         op_in_data_06  : out std_logic_vector(33 downto 0) ;
         
         op_out_ready_06  : out std_logic;
         op_out_valid_06  : out std_logic;
         op_out_data_06   : out std_logic_vector(33 downto 0);
    
         op_in_ready_11 : out std_logic;
         op_in_valid_11 : out std_logic;
         op_in_data_11  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_12 : out std_logic;
         op_in_valid_12 : out std_logic;
         op_in_data_12  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_13 : out std_logic;
         op_in_valid_13 : out std_logic;
         op_in_data_13  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_14 : out std_logic;
         op_in_valid_14 : out std_logic;
         op_in_data_14  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_15 : out std_logic;
         op_in_valid_15 : out std_logic;
         op_in_data_15  : out std_logic_vector(33 downto 0) ;
                  op_in_ready_16 : out std_logic;
         op_in_valid_16 : out std_logic;
         op_in_data_16  : out std_logic_vector(33 downto 0) 
);
end component;

signal sys_clk_sig : std_logic;
signal rst_sig : std_logic;
signal mclk_sig : std_logic;
signal i2s_transceiver_0_sclk : std_logic;
signal i2s_transceiver_0_sd_tx : std_logic;
signal i2s_transceiver_0_sd_rx : std_logic;
signal i2s_transceiver_0_ws : std_logic;
signal input_interface_0_l_valid : std_logic;
signal input_interface_0_r_valid : std_logic;
signal i2s_to_fpc_0_op_out_valid_0 : std_logic;
signal i2s_to_fpc_0_op_in_ready_0 : std_logic;
signal i2s_to_fpc_1_op_out_valid_0 : std_logic;
signal i2s_to_fpc_1_op_in_ready_0 : std_logic;
signal output_interface_0_l_ready : std_logic;
signal output_interface_0_r_ready : std_logic;
signal fpc_to_i2s_0_op_out_valid_0 : std_logic;
signal fpc_to_i2s_0_op_in_ready_0 : std_logic;
signal fpc_to_i2s_1_op_out_valid_0 : std_logic;
signal fpc_to_i2s_1_op_in_ready_0 : std_logic;
signal tapiir_out_valid_0_fpc_to_i2s_0_op_in_valid_0 : std_logic;
signal tapiir_out_valid_1_fpc_to_i2s_1_op_in_valid_0 : std_logic;
signal tapiir_in_ready_0_i2s_to_fpc_0_op_out_ready_0 : std_logic;
signal tapiir_in_ready_1_i2s_to_fpc_1_op_out_ready_0 : std_logic;
signal i2s_transceiver_0_l_data_rx : std_logic_vector(23 downto 0);
signal i2s_transceiver_0_r_data_rx : std_logic_vector(23 downto 0);
signal i2s_transceiver_0_l_data_tx : std_logic_vector(23 downto 0);
signal i2s_transceiver_0_r_data_tx : std_logic_vector(23 downto 0);
signal input_interface_0_l_data_out : std_logic_vector(23 downto 0);
signal input_interface_0_r_data_out : std_logic_vector(23 downto 0);
signal output_interface_0_l_data_out : std_logic_vector(23 downto 0);
signal output_interface_0_r_data_out : std_logic_vector(23 downto 0);
signal fpc_to_i2s_0_op_out_data_0 : std_logic_vector(23 downto 0);
signal fpc_to_i2s_1_op_out_data_0 : std_logic_vector(23 downto 0);
signal ui_numeric_input_data : std_logic_vector(2651 downto 0);
signal i2s_to_fpc_0_op_out_data_0 : std_logic_vector(33 downto 0);
signal i2s_to_fpc_1_op_out_data_0 : std_logic_vector(33 downto 0);
signal tapiir_out_data_0_fpc_to_i2s_0_op_in_data_0 : std_logic_vector(33 downto 0);
signal tapiir_out_data_1_fpc_to_i2s_1_op_in_data_0 : std_logic_vector(33 downto 0);

begin
mclk_sig <= mclk;
rst_sig <= reset;
sys_clk_sig <= sys_clk;
ac_bclk_0 <= i2s_transceiver_0_sclk;
ac_pbdat_0 <= i2s_transceiver_0_sd_tx;
i2s_transceiver_0_sd_rx <= ac_recdat_0;
ac_pblrc_0 <= i2s_transceiver_0_ws;
ac_reclrc_0 <= i2s_transceiver_0_ws;
i2s_transceiver_0 : i2s_transceiver
port map (
    l_data_rx => i2s_transceiver_0_l_data_rx,
    l_data_tx => i2s_transceiver_0_l_data_tx,
    mclk => mclk_sig,
    r_data_rx => i2s_transceiver_0_r_data_rx,
    r_data_tx => i2s_transceiver_0_r_data_tx,
    reset_n => rst_sig,
    sclk => i2s_transceiver_0_sclk,
    sd_rx => ac_recdat_0,
    sd_tx => i2s_transceiver_0_sd_tx,
    ws => i2s_transceiver_0_ws
);

input_interface_0 : input_interface
port map (
    clk => sys_clk_sig,
    l_data_in => i2s_transceiver_0_l_data_rx,
    l_data_out => input_interface_0_l_data_out,
    l_ready => i2s_to_fpc_0_op_in_ready_0,
    l_valid => input_interface_0_l_valid,
    r_data_in => i2s_transceiver_0_r_data_rx,
    r_data_out => input_interface_0_r_data_out,
    r_ready => i2s_to_fpc_1_op_in_ready_0,
    r_valid => input_interface_0_r_valid,
    rst => rst_sig,
    ws => i2s_transceiver_0_ws
);

output_interface_0 : output_interface
port map (
    clk => sys_clk_sig,
    l_data_in => fpc_to_i2s_0_op_out_data_0,
    l_data_out => i2s_transceiver_0_l_data_tx,
    l_ready => output_interface_0_l_ready,
    l_valid => fpc_to_i2s_0_op_out_valid_0,
    r_data_in => fpc_to_i2s_1_op_out_data_0,
    r_data_out => i2s_transceiver_0_r_data_tx,
    r_ready => output_interface_0_r_ready,
    r_valid => fpc_to_i2s_1_op_out_valid_0,
    rst => rst_sig,
    ws => i2s_transceiver_0_ws
);

i2s_to_fpc_0_0 : i2s_to_fpc
port map (
    clk => sys_clk_sig,
    op_in_data_0 => input_interface_0_l_data_out,
    op_in_ready_0 => i2s_to_fpc_0_op_in_ready_0,
    op_in_valid_0 => input_interface_0_l_valid,
    op_out_data_0 => i2s_to_fpc_0_op_out_data_0,
    op_out_ready_0 => tapiir_in_ready_0_i2s_to_fpc_0_op_out_ready_0,
    op_out_valid_0 => i2s_to_fpc_0_op_out_valid_0,
    rst => rst_sig
);

i2s_to_fpc_1_0 : i2s_to_fpc
port map (
    clk => sys_clk_sig,
    op_in_data_0 => input_interface_0_r_data_out,
    op_in_ready_0 => i2s_to_fpc_1_op_in_ready_0,
    op_in_valid_0 => input_interface_0_r_valid,
    op_out_data_0 => i2s_to_fpc_1_op_out_data_0,
    op_out_ready_0 => tapiir_in_ready_1_i2s_to_fpc_1_op_out_ready_0,
    op_out_valid_0 => i2s_to_fpc_1_op_out_valid_0,
    rst => rst_sig
);

fpc_to_i2s_0_0 : fpc_to_i2s
port map (
    clk => sys_clk_sig,
    op_in_data_0 => tapiir_out_data_0_fpc_to_i2s_0_op_in_data_0,
    op_in_ready_0 => fpc_to_i2s_0_op_in_ready_0,
    op_in_valid_0 => tapiir_out_valid_0_fpc_to_i2s_0_op_in_valid_0,
    op_out_data_0 => fpc_to_i2s_0_op_out_data_0,
    op_out_ready_0 => output_interface_0_l_ready,
    op_out_valid_0 => fpc_to_i2s_0_op_out_valid_0,
    rst => rst_sig
);

fpc_to_i2s_1_0 : fpc_to_i2s
port map (
    clk => sys_clk_sig,
    op_in_data_0 => tapiir_out_data_1_fpc_to_i2s_1_op_in_data_0,
    op_in_ready_0 => fpc_to_i2s_1_op_in_ready_0,
    op_in_valid_0 => tapiir_out_valid_1_fpc_to_i2s_1_op_in_valid_0,
    op_out_data_0 => fpc_to_i2s_1_op_out_data_0,
    op_out_ready_0 => output_interface_0_r_ready,
    op_out_valid_0 => fpc_to_i2s_1_op_out_valid_0,
    rst => rst_sig
);

ui_ctrl_0 : ui_controller
generic map (
    numeric_input_count => 78,
    ram_width => 34
)
port map (
    clk => sys_clk_sig,
    in_numeric_addr => ui_in_numeric_addr,
    in_numeric_ctrl => ui_numeric_input_data,
    in_numeric_value => ui_in_numeric_value,
    numeric_write_enable => ui_numeric_write_enable
);

tapiir_0 : tapiir
generic map (
    ram_depth => 2,
    ram_width => 34
)
port map (
    clk => sys_clk_sig,
    rst => rst_sig,
    tapiir_in_data_0 => i2s_to_fpc_0_op_out_data_0,
    tapiir_in_data_1 => i2s_to_fpc_1_op_out_data_0,
    tapiir_in_ready_0 => tapiir_in_ready_0_i2s_to_fpc_0_op_out_ready_0,
    tapiir_in_ready_1 => tapiir_in_ready_1_i2s_to_fpc_1_op_out_ready_0,
    tapiir_in_valid_0 => i2s_to_fpc_0_op_out_valid_0,
    tapiir_in_valid_1 => i2s_to_fpc_1_op_out_valid_0,
    tapiir_out_data_0 => tapiir_out_data_0_fpc_to_i2s_0_op_in_data_0,
    tapiir_out_data_1 => tapiir_out_data_1_fpc_to_i2s_1_op_in_data_0,
    tapiir_out_ready_0 => fpc_to_i2s_0_op_in_ready_0,
    tapiir_out_ready_1 => fpc_to_i2s_1_op_in_ready_0,
    tapiir_out_valid_0 => tapiir_out_valid_0_fpc_to_i2s_0_op_in_valid_0,
    tapiir_out_valid_1 => tapiir_out_valid_1_fpc_to_i2s_1_op_in_valid_0,
    vslider_10_op_in_data_0 => ui_numeric_input_data(237 downto 204),
    vslider_11_op_in_data_0 => ui_numeric_input_data(271 downto 238),
    vslider_12_op_in_data_0 => ui_numeric_input_data(305 downto 272),
    vslider_13_op_in_data_0 => ui_numeric_input_data(339 downto 306),
    vslider_14_op_in_data_0 => ui_numeric_input_data(373 downto 340),
    vslider_15_op_in_data_0 => ui_numeric_input_data(407 downto 374),
    vslider_16_op_in_data_0 => ui_numeric_input_data(441 downto 408),
    vslider_17_op_in_data_0 => ui_numeric_input_data(475 downto 442),
    vslider_18_op_in_data_0 => ui_numeric_input_data(509 downto 476),
    vslider_19_op_in_data_0 => ui_numeric_input_data(543 downto 510),
    vslider_20_op_in_data_0 => ui_numeric_input_data(577 downto 544),
    vslider_21_op_in_data_0 => ui_numeric_input_data(611 downto 578),
    vslider_22_op_in_data_0 => ui_numeric_input_data(645 downto 612),
    vslider_23_op_in_data_0 => ui_numeric_input_data(679 downto 646),
    vslider_24_op_in_data_0 => ui_numeric_input_data(713 downto 680),
    vslider_25_op_in_data_0 => ui_numeric_input_data(747 downto 714),
    vslider_26_op_in_data_0 => ui_numeric_input_data(781 downto 748),
    vslider_27_op_in_data_0 => ui_numeric_input_data(815 downto 782),
    vslider_28_op_in_data_0 => ui_numeric_input_data(849 downto 816),
    vslider_29_op_in_data_0 => ui_numeric_input_data(883 downto 850),
    vslider_30_op_in_data_0 => ui_numeric_input_data(917 downto 884),
    vslider_31_op_in_data_0 => ui_numeric_input_data(951 downto 918),
    vslider_32_op_in_data_0 => ui_numeric_input_data(985 downto 952),
    vslider_33_op_in_data_0 => ui_numeric_input_data(1019 downto 986),
    vslider_34_op_in_data_0 => ui_numeric_input_data(1053 downto 1020),
    vslider_35_op_in_data_0 => ui_numeric_input_data(1087 downto 1054),
    vslider_36_op_in_data_0 => ui_numeric_input_data(1121 downto 1088),
    vslider_37_op_in_data_0 => ui_numeric_input_data(1155 downto 1122),
    vslider_38_op_in_data_0 => ui_numeric_input_data(1189 downto 1156),
    vslider_39_op_in_data_0 => ui_numeric_input_data(1223 downto 1190),
    vslider_40_op_in_data_0 => ui_numeric_input_data(1257 downto 1224),
    vslider_41_op_in_data_0 => ui_numeric_input_data(1291 downto 1258),
    vslider_42_op_in_data_0 => ui_numeric_input_data(1325 downto 1292),
    vslider_43_op_in_data_0 => ui_numeric_input_data(1359 downto 1326),
    vslider_44_op_in_data_0 => ui_numeric_input_data(1393 downto 1360),
    vslider_45_op_in_data_0 => ui_numeric_input_data(1427 downto 1394),
    vslider_46_op_in_data_0 => ui_numeric_input_data(1461 downto 1428),
    vslider_47_op_in_data_0 => ui_numeric_input_data(1495 downto 1462),
    vslider_48_op_in_data_0 => ui_numeric_input_data(1529 downto 1496),
    vslider_49_op_in_data_0 => ui_numeric_input_data(1563 downto 1530),
    vslider_4_op_in_data_0 => ui_numeric_input_data(33 downto 0),
    vslider_50_op_in_data_0 => ui_numeric_input_data(1597 downto 1564),
    vslider_51_op_in_data_0 => ui_numeric_input_data(1631 downto 1598),
    vslider_52_op_in_data_0 => ui_numeric_input_data(1665 downto 1632),
    vslider_53_op_in_data_0 => ui_numeric_input_data(1699 downto 1666),
    vslider_54_op_in_data_0 => ui_numeric_input_data(1733 downto 1700),
    vslider_55_op_in_data_0 => ui_numeric_input_data(1767 downto 1734),
    vslider_56_op_in_data_0 => ui_numeric_input_data(1801 downto 1768),
    vslider_57_op_in_data_0 => ui_numeric_input_data(1835 downto 1802),
    vslider_58_op_in_data_0 => ui_numeric_input_data(1869 downto 1836),
    vslider_59_op_in_data_0 => ui_numeric_input_data(1903 downto 1870),
    vslider_5_op_in_data_0 => ui_numeric_input_data(67 downto 34),
    vslider_60_op_in_data_0 => ui_numeric_input_data(1937 downto 1904),
    vslider_61_op_in_data_0 => ui_numeric_input_data(1971 downto 1938),
    vslider_62_op_in_data_0 => ui_numeric_input_data(2005 downto 1972),
    vslider_63_op_in_data_0 => ui_numeric_input_data(2039 downto 2006),
    vslider_64_op_in_data_0 => ui_numeric_input_data(2073 downto 2040),
    vslider_65_op_in_data_0 => ui_numeric_input_data(2107 downto 2074),
    vslider_66_op_in_data_0 => ui_numeric_input_data(2141 downto 2108),
    vslider_67_op_in_data_0 => ui_numeric_input_data(2175 downto 2142),
    vslider_68_op_in_data_0 => ui_numeric_input_data(2209 downto 2176),
    vslider_69_op_in_data_0 => ui_numeric_input_data(2243 downto 2210),
    vslider_6_op_in_data_0 => ui_numeric_input_data(101 downto 68),
    vslider_70_op_in_data_0 => ui_numeric_input_data(2277 downto 2244),
    vslider_71_op_in_data_0 => ui_numeric_input_data(2311 downto 2278),
    vslider_72_op_in_data_0 => ui_numeric_input_data(2345 downto 2312),
    vslider_73_op_in_data_0 => ui_numeric_input_data(2379 downto 2346),
    vslider_74_op_in_data_0 => ui_numeric_input_data(2413 downto 2380),
    vslider_75_op_in_data_0 => ui_numeric_input_data(2447 downto 2414),
    vslider_76_op_in_data_0 => ui_numeric_input_data(2481 downto 2448),
    vslider_77_op_in_data_0 => ui_numeric_input_data(2515 downto 2482),
    vslider_78_op_in_data_0 => ui_numeric_input_data(2549 downto 2516),
    vslider_79_op_in_data_0 => ui_numeric_input_data(2583 downto 2550),
    vslider_7_op_in_data_0 => ui_numeric_input_data(135 downto 102),
    vslider_80_op_in_data_0 => ui_numeric_input_data(2617 downto 2584),
    vslider_81_op_in_data_0 => ui_numeric_input_data(2651 downto 2618),
    vslider_8_op_in_data_0 => ui_numeric_input_data(169 downto 136),
    vslider_9_op_in_data_0 => ui_numeric_input_data(203 downto 170),
    m_axi_aclk0      => m_axi_aclk0,
    m_axi_aresetn0   => m_axi_aresetn0,
    md_error0        => md_error0,
    m_axi_arready0   => m_axi_arready0,
    m_axi_arvalid0   => m_axi_arvalid0,
    m_axi_araddr0    => m_axi_araddr0,
    m_axi_arlen0     => m_axi_arlen0,
    m_axi_arsize0    => m_axi_arsize0,
    m_axi_arburst0   => m_axi_arburst0,
    m_axi_arprot0    => m_axi_arprot0,
    m_axi_arcache0   => m_axi_arcache0,
    m_axi_rready0    => m_axi_rready0,
    m_axi_rvalid0    => m_axi_rvalid0,
    m_axi_rdata0     => m_axi_rdata0,
    m_axi_rresp0     => m_axi_rresp0,
    m_axi_rlast0     => m_axi_rlast0,
    m_axi_awready0   => m_axi_awready0,
    m_axi_awvalid0   => m_axi_awvalid0,
    m_axi_awaddr0    => m_axi_awaddr0,
    m_axi_awlen0     => m_axi_awlen0,
    m_axi_awsize0    => m_axi_awsize0,
    m_axi_awburst0   => m_axi_awburst0,
    m_axi_awprot0    => m_axi_awprot0,
    m_axi_awcache0   => m_axi_awcache0,
    m_axi_wready0    => m_axi_wready0,
    m_axi_wvalid0    => m_axi_wvalid0,
    m_axi_wdata0     => m_axi_wdata0,
    m_axi_wstrb0     => m_axi_wstrb0,
    m_axi_wlast0     => m_axi_wlast0,
    m_axi_bready0    => m_axi_bready0,
    m_axi_bvalid0    => m_axi_bvalid0,
    m_axi_bresp0     => m_axi_bresp0,

    m_axi_aclk1      => m_axi_aclk1,
    m_axi_aresetn1   => m_axi_aresetn1,
    md_error1        => md_error1,
    m_axi_arready1   => m_axi_arready1,
    m_axi_arvalid1   => m_axi_arvalid1,
    m_axi_araddr1    => m_axi_araddr1,
    m_axi_arlen1     => m_axi_arlen1,
    m_axi_arsize1    => m_axi_arsize1,
    m_axi_arburst1   => m_axi_arburst1,
    m_axi_arprot1    => m_axi_arprot1,
    m_axi_arcache1   => m_axi_arcache1,
    m_axi_rready1    => m_axi_rready1,
    m_axi_rvalid1    => m_axi_rvalid1,
    m_axi_rdata1     => m_axi_rdata1,
    m_axi_rresp1     => m_axi_rresp1,
    m_axi_rlast1     => m_axi_rlast1,
    m_axi_awready1   => m_axi_awready1,
    m_axi_awvalid1   => m_axi_awvalid1,
    m_axi_awaddr1    => m_axi_awaddr1,
    m_axi_awlen1     => m_axi_awlen1,
    m_axi_awsize1    => m_axi_awsize1,
    m_axi_awburst1   => m_axi_awburst1,
    m_axi_awprot1    => m_axi_awprot1,
    m_axi_awcache1   => m_axi_awcache1,
    m_axi_wready1    => m_axi_wready1,
    m_axi_wvalid1    => m_axi_wvalid1,
    m_axi_wdata1     => m_axi_wdata1,
    m_axi_wstrb1     => m_axi_wstrb1,
    m_axi_wlast1     => m_axi_wlast1,
    m_axi_bready1    => m_axi_bready1,
    m_axi_bvalid1    => m_axi_bvalid1,
    m_axi_bresp1     => m_axi_bresp1,

    m_axi_aclk2      => m_axi_aclk2,
    m_axi_aresetn2   => m_axi_aresetn2,
    md_error2        => md_error2,
    m_axi_arready2   => m_axi_arready2,
    m_axi_arvalid2   => m_axi_arvalid2,
    m_axi_araddr2    => m_axi_araddr2,
    m_axi_arlen2     => m_axi_arlen2,
    m_axi_arsize2    => m_axi_arsize2,
    m_axi_arburst2   => m_axi_arburst2,
    m_axi_arprot2    => m_axi_arprot2,
    m_axi_arcache2   => m_axi_arcache2,
    m_axi_rready2    => m_axi_rready2,
    m_axi_rvalid2    => m_axi_rvalid2,
    m_axi_rdata2     => m_axi_rdata2,
    m_axi_rresp2     => m_axi_rresp2,
    m_axi_rlast2     => m_axi_rlast2,
    m_axi_awready2   => m_axi_awready2,
    m_axi_awvalid2   => m_axi_awvalid2,
    m_axi_awaddr2    => m_axi_awaddr2,
    m_axi_awlen2     => m_axi_awlen2,
    m_axi_awsize2    => m_axi_awsize2,
    m_axi_awburst2   => m_axi_awburst2,
    m_axi_awprot2    => m_axi_awprot2,
    m_axi_awcache2   => m_axi_awcache2,
    m_axi_wready2    => m_axi_wready2,
    m_axi_wvalid2    => m_axi_wvalid2,
    m_axi_wdata2     => m_axi_wdata2,
    m_axi_wstrb2     => m_axi_wstrb2,
    m_axi_wlast2     => m_axi_wlast2,
    m_axi_bready2    => m_axi_bready2,
    m_axi_bvalid2    => m_axi_bvalid2,
    m_axi_bresp2     => m_axi_bresp2,

    m_axi_aclk3      => m_axi_aclk3,
    m_axi_aresetn3   => m_axi_aresetn3,
    md_error3        => md_error3,
    m_axi_arready3   => m_axi_arready3,
    m_axi_arvalid3   => m_axi_arvalid3,
    m_axi_araddr3    => m_axi_araddr3,
    m_axi_arlen3     => m_axi_arlen3,
    m_axi_arsize3    => m_axi_arsize3,
    m_axi_arburst3   => m_axi_arburst3,
    m_axi_arprot3    => m_axi_arprot3,
    m_axi_arcache3   => m_axi_arcache3,
    m_axi_rready3    => m_axi_rready3,
    m_axi_rvalid3    => m_axi_rvalid3,
    m_axi_rdata3     => m_axi_rdata3,
    m_axi_rresp3     => m_axi_rresp3,
    m_axi_rlast3     => m_axi_rlast3,
    m_axi_awready3   => m_axi_awready3,
    m_axi_awvalid3   => m_axi_awvalid3,
    m_axi_awaddr3    => m_axi_awaddr3,
    m_axi_awlen3     => m_axi_awlen3,
    m_axi_awsize3    => m_axi_awsize3,
    m_axi_awburst3   => m_axi_awburst3,
    m_axi_awprot3    => m_axi_awprot3,
    m_axi_awcache3   => m_axi_awcache3,
    m_axi_wready3    => m_axi_wready3,
    m_axi_wvalid3    => m_axi_wvalid3,
    m_axi_wdata3     => m_axi_wdata3,
    m_axi_wstrb3     => m_axi_wstrb3,
    m_axi_wlast3     => m_axi_wlast3,
    m_axi_bready3    => m_axi_bready3,
    m_axi_bvalid3    => m_axi_bvalid3,
    m_axi_bresp3     => m_axi_bresp3,
    
        m_axi_aclk4      => m_axi_aclk4,
    m_axi_aresetn4   => m_axi_aresetn4,
    md_error4        => md_error4,
    m_axi_arready4   => m_axi_arready4,
    m_axi_arvalid4   => m_axi_arvalid4,
    m_axi_araddr4    => m_axi_araddr4,
    m_axi_arlen4     => m_axi_arlen4,
    m_axi_arsize4    => m_axi_arsize4,
    m_axi_arburst4   => m_axi_arburst4,
    m_axi_arprot4    => m_axi_arprot4,
    m_axi_arcache4   => m_axi_arcache4,
    m_axi_rready4    => m_axi_rready4,
    m_axi_rvalid4    => m_axi_rvalid4,
    m_axi_rdata4     => m_axi_rdata4,
    m_axi_rresp4     => m_axi_rresp4,
    m_axi_rlast4     => m_axi_rlast4,
    m_axi_awready4   => m_axi_awready4,
    m_axi_awvalid4   => m_axi_awvalid4,
    m_axi_awaddr4    => m_axi_awaddr4,
    m_axi_awlen4     => m_axi_awlen4,
    m_axi_awsize4    => m_axi_awsize4,
    m_axi_awburst4   => m_axi_awburst4,
    m_axi_awprot4    => m_axi_awprot4,
    m_axi_awcache4   => m_axi_awcache4,
    m_axi_wready4    => m_axi_wready4,
    m_axi_wvalid4    => m_axi_wvalid4,
    m_axi_wdata4     => m_axi_wdata4,
    m_axi_wstrb4     => m_axi_wstrb4,
    m_axi_wlast4     => m_axi_wlast4,
    m_axi_bready4    => m_axi_bready4,
    m_axi_bvalid4    => m_axi_bvalid4,
    m_axi_bresp4     => m_axi_bresp4,

    m_axi_aclk5      => m_axi_aclk5,
    m_axi_aresetn5   => m_axi_aresetn5,
    md_error5        => md_error5,
    m_axi_arready5   => m_axi_arready5,
    m_axi_arvalid5   => m_axi_arvalid5,
    m_axi_araddr5    => m_axi_araddr5,
    m_axi_arlen5     => m_axi_arlen5,
    m_axi_arsize5    => m_axi_arsize5,
    m_axi_arburst5   => m_axi_arburst5,
    m_axi_arprot5    => m_axi_arprot5,
    m_axi_arcache5   => m_axi_arcache5,
    m_axi_rready5    => m_axi_rready5,
    m_axi_rvalid5    => m_axi_rvalid5,
    m_axi_rdata5     => m_axi_rdata5,
    m_axi_rresp5     => m_axi_rresp5,
    m_axi_rlast5     => m_axi_rlast5,
    m_axi_awready5   => m_axi_awready5,
    m_axi_awvalid5   => m_axi_awvalid5,
    m_axi_awaddr5    => m_axi_awaddr5,
    m_axi_awlen5     => m_axi_awlen5,
    m_axi_awsize5    => m_axi_awsize5,
    m_axi_awburst5   => m_axi_awburst5,
    m_axi_awprot5    => m_axi_awprot5,
    m_axi_awcache5   => m_axi_awcache5,
    m_axi_wready5    => m_axi_wready5,
    m_axi_wvalid5    => m_axi_wvalid5,
    m_axi_wdata5     => m_axi_wdata5,
    m_axi_wstrb5     => m_axi_wstrb5,
    m_axi_wlast5     => m_axi_wlast5,
    m_axi_bready5    => m_axi_bready5,
    m_axi_bvalid5    => m_axi_bvalid5,
    m_axi_bresp5     => m_axi_bresp5,
    
    op_in_ready_01  => op_in_ready_01,
    op_in_valid_01  => op_in_valid_01,
    op_in_data_01   => op_in_data_01,
    op_out_ready_01 => op_out_ready_01,
    op_out_valid_01 => op_out_valid_01,
    op_out_data_01  => op_out_data_01,

    op_in_ready_02  => op_in_ready_02,
    op_in_valid_02  => op_in_valid_02,
    op_in_data_02   => op_in_data_02,
    op_out_ready_02 => op_out_ready_02,
    op_out_valid_02 => op_out_valid_02,
    op_out_data_02  => op_out_data_02,

    op_in_ready_03  => op_in_ready_03,
    op_in_valid_03  => op_in_valid_03,
    op_in_data_03   => op_in_data_03,
    op_out_ready_03 => op_out_ready_03,
    op_out_valid_03 => op_out_valid_03,
    op_out_data_03  => op_out_data_03,

    op_in_ready_04  => op_in_ready_04,
    op_in_valid_04  => op_in_valid_04,
    op_in_data_04   => op_in_data_04,
    op_out_ready_04 => op_out_ready_04,
    op_out_valid_04 => op_out_valid_04,
    op_out_data_04  => op_out_data_04,

    op_in_ready_05  => op_in_ready_05,
    op_in_valid_05  => op_in_valid_05,
    op_in_data_05   => op_in_data_05,
    op_out_ready_05 => op_out_ready_05,
    op_out_valid_05 => op_out_valid_05,
    op_out_data_05  => op_out_data_05,

    op_in_ready_06  => op_in_ready_06,
    op_in_valid_06  => op_in_valid_06,
    op_in_data_06   => op_in_data_06,
    op_out_ready_06 => op_out_ready_06,
    op_out_valid_06 => op_out_valid_06,
    op_out_data_06  => op_out_data_06,

    op_in_ready_11  => op_in_ready_11,
    op_in_valid_11  => op_in_valid_11,
    op_in_data_11   => op_in_data_11,
    
    op_in_ready_12  => op_in_ready_12,
    op_in_valid_12  => op_in_valid_12,
    op_in_data_12   => op_in_data_12,
    
    op_in_ready_13  => op_in_ready_13,
    op_in_valid_13  => op_in_valid_13,
    op_in_data_13   => op_in_data_13,
    
    op_in_ready_14  => op_in_ready_14,
    op_in_valid_14  => op_in_valid_14,
    op_in_data_14   => op_in_data_14,
    
    op_in_ready_15  => op_in_ready_15,
    op_in_valid_15  => op_in_valid_15,
    op_in_data_15   => op_in_data_15,
    
    op_in_ready_16  => op_in_ready_16,
    op_in_valid_16  => op_in_valid_16,
    op_in_data_16   => op_in_data_16
    
);
end structure;
