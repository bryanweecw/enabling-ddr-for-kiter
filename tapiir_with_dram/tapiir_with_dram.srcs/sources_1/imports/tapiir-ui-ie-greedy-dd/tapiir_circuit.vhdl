library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tapiir is
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
end tapiir;

architecture behaviour of tapiir is

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


component const_value_6 is
generic (
    value : std_logic_vector(33 downto 0)
);
port (
    clk : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_data_1 : out std_logic_vector(33 downto 0);
    op_out_data_2 : out std_logic_vector(33 downto 0);
    op_out_data_3 : out std_logic_vector(33 downto 0);
    op_out_data_4 : out std_logic_vector(33 downto 0);
    op_out_data_5 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_ready_2 : in std_logic;
    op_out_ready_3 : in std_logic;
    op_out_ready_4 : in std_logic;
    op_out_ready_5 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    op_out_valid_2 : out std_logic;
    op_out_valid_3 : out std_logic;
    op_out_valid_4 : out std_logic;
    op_out_valid_5 : out std_logic;
    rst : in std_logic
);
end component;

component vslider is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component hs_fifo is
generic (
    buffer_size : natural;
    init : natural;
    ram_width : natural
);
port (
    buffer_in_data_0 : in std_logic_vector(33 downto 0);
    buffer_in_ready_0 : out std_logic;
    buffer_in_valid_0 : in std_logic;
    buffer_out_data_0 : out std_logic_vector(33 downto 0);
    buffer_out_ready_0 : in std_logic;
    buffer_out_valid_0 : out std_logic;
    clk : in std_logic;
    rst : in std_logic
);
end component;

component delay is
generic (
    ram_depth : natural;
    ram_init : natural;
    ram_width : natural;
    SIMULATION_ONLY : INTEGER;
    C_M_AXI_ADDR_WIDTH : INTEGER;
    C_M_AXI_DATA_WIDTH : INTEGER;
    C_NATIVE_DATA_WIDTH : INTEGER;
    C_LENGTH_WIDTH : INTEGER;
    C_FAMILY : STRING;
    DRAM_START_ADDRESS : STD_LOGIC_VECTOR;
    DRAM_SIZE : INTEGER
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic;
    
    md_error : OUT STD_LOGIC;
        m_axi_arready : IN STD_LOGIC;
        m_axi_arvalid : OUT STD_LOGIC;
        m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        m_axi_rready : OUT STD_LOGIC;
        m_axi_rvalid : IN STD_LOGIC;
        m_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        m_axi_rlast : IN STD_LOGIC;
        m_axi_awready : IN STD_LOGIC;
        m_axi_awvalid : OUT STD_LOGIC;
        m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        m_axi_wready : IN STD_LOGIC;
        m_axi_wvalid : OUT STD_LOGIC;
        m_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        m_axi_wlast : OUT STD_LOGIC;
        m_axi_bready : OUT STD_LOGIC;
        m_axi_bvalid : IN STD_LOGIC;
        m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
);
end component;

component broadcast_8 is
generic (
    bit_width : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_data_1 : out std_logic_vector(33 downto 0);
    op_out_data_2 : out std_logic_vector(33 downto 0);
    op_out_data_3 : out std_logic_vector(33 downto 0);
    op_out_data_4 : out std_logic_vector(33 downto 0);
    op_out_data_5 : out std_logic_vector(33 downto 0);
    op_out_data_6 : out std_logic_vector(33 downto 0);
    op_out_data_7 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_ready_2 : in std_logic;
    op_out_ready_3 : in std_logic;
    op_out_ready_4 : in std_logic;
    op_out_ready_5 : in std_logic;
    op_out_ready_6 : in std_logic;
    op_out_ready_7 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    op_out_valid_2 : out std_logic;
    op_out_valid_3 : out std_logic;
    op_out_valid_4 : out std_logic;
    op_out_valid_5 : out std_logic;
    op_out_valid_6 : out std_logic;
    op_out_valid_7 : out std_logic;
    rst : in std_logic
);
end component;

component broadcast_2 is
generic (
    bit_width : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_data_1 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    rst : in std_logic
);
end component;

component broadcast_6 is
generic (
    bit_width : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_data_1 : out std_logic_vector(33 downto 0);
    op_out_data_2 : out std_logic_vector(33 downto 0);
    op_out_data_3 : out std_logic_vector(33 downto 0);
    op_out_data_4 : out std_logic_vector(33 downto 0);
    op_out_data_5 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_ready_2 : in std_logic;
    op_out_ready_3 : in std_logic;
    op_out_ready_4 : in std_logic;
    op_out_ready_5 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    op_out_valid_2 : out std_logic;
    op_out_valid_3 : out std_logic;
    op_out_valid_4 : out std_logic;
    op_out_valid_5 : out std_logic;
    rst : in std_logic
);
end component;

component float2int is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component input_selector_6 is
generic (
    num_phases : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_data_2 : in std_logic_vector(33 downto 0);
    op_in_data_3 : in std_logic_vector(33 downto 0);
    op_in_data_4 : in std_logic_vector(33 downto 0);
    op_in_data_5 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_ready_2 : out std_logic;
    op_in_ready_3 : out std_logic;
    op_in_ready_4 : out std_logic;
    op_in_ready_5 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_in_valid_2 : in std_logic;
    op_in_valid_3 : in std_logic;
    op_in_valid_4 : in std_logic;
    op_in_valid_5 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component output_selector_6 is
generic (
    num_phases : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_data_1 : out std_logic_vector(33 downto 0);
    op_out_data_2 : out std_logic_vector(33 downto 0);
    op_out_data_3 : out std_logic_vector(33 downto 0);
    op_out_data_4 : out std_logic_vector(33 downto 0);
    op_out_data_5 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_ready_2 : in std_logic;
    op_out_ready_3 : in std_logic;
    op_out_ready_4 : in std_logic;
    op_out_ready_5 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    op_out_valid_2 : out std_logic;
    op_out_valid_3 : out std_logic;
    op_out_valid_4 : out std_logic;
    op_out_valid_5 : out std_logic;
    rst : in std_logic
);
end component;

component fp_add is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component input_selector_56 is
generic (
    num_phases : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_data_10 : in std_logic_vector(33 downto 0);
    op_in_data_11 : in std_logic_vector(33 downto 0);
    op_in_data_12 : in std_logic_vector(33 downto 0);
    op_in_data_13 : in std_logic_vector(33 downto 0);
    op_in_data_14 : in std_logic_vector(33 downto 0);
    op_in_data_15 : in std_logic_vector(33 downto 0);
    op_in_data_16 : in std_logic_vector(33 downto 0);
    op_in_data_17 : in std_logic_vector(33 downto 0);
    op_in_data_18 : in std_logic_vector(33 downto 0);
    op_in_data_19 : in std_logic_vector(33 downto 0);
    op_in_data_2 : in std_logic_vector(33 downto 0);
    op_in_data_20 : in std_logic_vector(33 downto 0);
    op_in_data_21 : in std_logic_vector(33 downto 0);
    op_in_data_22 : in std_logic_vector(33 downto 0);
    op_in_data_23 : in std_logic_vector(33 downto 0);
    op_in_data_24 : in std_logic_vector(33 downto 0);
    op_in_data_25 : in std_logic_vector(33 downto 0);
    op_in_data_26 : in std_logic_vector(33 downto 0);
    op_in_data_27 : in std_logic_vector(33 downto 0);
    op_in_data_28 : in std_logic_vector(33 downto 0);
    op_in_data_29 : in std_logic_vector(33 downto 0);
    op_in_data_3 : in std_logic_vector(33 downto 0);
    op_in_data_30 : in std_logic_vector(33 downto 0);
    op_in_data_31 : in std_logic_vector(33 downto 0);
    op_in_data_32 : in std_logic_vector(33 downto 0);
    op_in_data_33 : in std_logic_vector(33 downto 0);
    op_in_data_34 : in std_logic_vector(33 downto 0);
    op_in_data_35 : in std_logic_vector(33 downto 0);
    op_in_data_36 : in std_logic_vector(33 downto 0);
    op_in_data_37 : in std_logic_vector(33 downto 0);
    op_in_data_38 : in std_logic_vector(33 downto 0);
    op_in_data_39 : in std_logic_vector(33 downto 0);
    op_in_data_4 : in std_logic_vector(33 downto 0);
    op_in_data_40 : in std_logic_vector(33 downto 0);
    op_in_data_41 : in std_logic_vector(33 downto 0);
    op_in_data_42 : in std_logic_vector(33 downto 0);
    op_in_data_43 : in std_logic_vector(33 downto 0);
    op_in_data_44 : in std_logic_vector(33 downto 0);
    op_in_data_45 : in std_logic_vector(33 downto 0);
    op_in_data_46 : in std_logic_vector(33 downto 0);
    op_in_data_47 : in std_logic_vector(33 downto 0);
    op_in_data_48 : in std_logic_vector(33 downto 0);
    op_in_data_49 : in std_logic_vector(33 downto 0);
    op_in_data_5 : in std_logic_vector(33 downto 0);
    op_in_data_50 : in std_logic_vector(33 downto 0);
    op_in_data_51 : in std_logic_vector(33 downto 0);
    op_in_data_52 : in std_logic_vector(33 downto 0);
    op_in_data_53 : in std_logic_vector(33 downto 0);
    op_in_data_54 : in std_logic_vector(33 downto 0);
    op_in_data_55 : in std_logic_vector(33 downto 0);
    op_in_data_6 : in std_logic_vector(33 downto 0);
    op_in_data_7 : in std_logic_vector(33 downto 0);
    op_in_data_8 : in std_logic_vector(33 downto 0);
    op_in_data_9 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_ready_10 : out std_logic;
    op_in_ready_11 : out std_logic;
    op_in_ready_12 : out std_logic;
    op_in_ready_13 : out std_logic;
    op_in_ready_14 : out std_logic;
    op_in_ready_15 : out std_logic;
    op_in_ready_16 : out std_logic;
    op_in_ready_17 : out std_logic;
    op_in_ready_18 : out std_logic;
    op_in_ready_19 : out std_logic;
    op_in_ready_2 : out std_logic;
    op_in_ready_20 : out std_logic;
    op_in_ready_21 : out std_logic;
    op_in_ready_22 : out std_logic;
    op_in_ready_23 : out std_logic;
    op_in_ready_24 : out std_logic;
    op_in_ready_25 : out std_logic;
    op_in_ready_26 : out std_logic;
    op_in_ready_27 : out std_logic;
    op_in_ready_28 : out std_logic;
    op_in_ready_29 : out std_logic;
    op_in_ready_3 : out std_logic;
    op_in_ready_30 : out std_logic;
    op_in_ready_31 : out std_logic;
    op_in_ready_32 : out std_logic;
    op_in_ready_33 : out std_logic;
    op_in_ready_34 : out std_logic;
    op_in_ready_35 : out std_logic;
    op_in_ready_36 : out std_logic;
    op_in_ready_37 : out std_logic;
    op_in_ready_38 : out std_logic;
    op_in_ready_39 : out std_logic;
    op_in_ready_4 : out std_logic;
    op_in_ready_40 : out std_logic;
    op_in_ready_41 : out std_logic;
    op_in_ready_42 : out std_logic;
    op_in_ready_43 : out std_logic;
    op_in_ready_44 : out std_logic;
    op_in_ready_45 : out std_logic;
    op_in_ready_46 : out std_logic;
    op_in_ready_47 : out std_logic;
    op_in_ready_48 : out std_logic;
    op_in_ready_49 : out std_logic;
    op_in_ready_5 : out std_logic;
    op_in_ready_50 : out std_logic;
    op_in_ready_51 : out std_logic;
    op_in_ready_52 : out std_logic;
    op_in_ready_53 : out std_logic;
    op_in_ready_54 : out std_logic;
    op_in_ready_55 : out std_logic;
    op_in_ready_6 : out std_logic;
    op_in_ready_7 : out std_logic;
    op_in_ready_8 : out std_logic;
    op_in_ready_9 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_in_valid_10 : in std_logic;
    op_in_valid_11 : in std_logic;
    op_in_valid_12 : in std_logic;
    op_in_valid_13 : in std_logic;
    op_in_valid_14 : in std_logic;
    op_in_valid_15 : in std_logic;
    op_in_valid_16 : in std_logic;
    op_in_valid_17 : in std_logic;
    op_in_valid_18 : in std_logic;
    op_in_valid_19 : in std_logic;
    op_in_valid_2 : in std_logic;
    op_in_valid_20 : in std_logic;
    op_in_valid_21 : in std_logic;
    op_in_valid_22 : in std_logic;
    op_in_valid_23 : in std_logic;
    op_in_valid_24 : in std_logic;
    op_in_valid_25 : in std_logic;
    op_in_valid_26 : in std_logic;
    op_in_valid_27 : in std_logic;
    op_in_valid_28 : in std_logic;
    op_in_valid_29 : in std_logic;
    op_in_valid_3 : in std_logic;
    op_in_valid_30 : in std_logic;
    op_in_valid_31 : in std_logic;
    op_in_valid_32 : in std_logic;
    op_in_valid_33 : in std_logic;
    op_in_valid_34 : in std_logic;
    op_in_valid_35 : in std_logic;
    op_in_valid_36 : in std_logic;
    op_in_valid_37 : in std_logic;
    op_in_valid_38 : in std_logic;
    op_in_valid_39 : in std_logic;
    op_in_valid_4 : in std_logic;
    op_in_valid_40 : in std_logic;
    op_in_valid_41 : in std_logic;
    op_in_valid_42 : in std_logic;
    op_in_valid_43 : in std_logic;
    op_in_valid_44 : in std_logic;
    op_in_valid_45 : in std_logic;
    op_in_valid_46 : in std_logic;
    op_in_valid_47 : in std_logic;
    op_in_valid_48 : in std_logic;
    op_in_valid_49 : in std_logic;
    op_in_valid_5 : in std_logic;
    op_in_valid_50 : in std_logic;
    op_in_valid_51 : in std_logic;
    op_in_valid_52 : in std_logic;
    op_in_valid_53 : in std_logic;
    op_in_valid_54 : in std_logic;
    op_in_valid_55 : in std_logic;
    op_in_valid_6 : in std_logic;
    op_in_valid_7 : in std_logic;
    op_in_valid_8 : in std_logic;
    op_in_valid_9 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component output_selector_56 is
generic (
    num_phases : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_data_1 : out std_logic_vector(33 downto 0);
    op_out_data_10 : out std_logic_vector(33 downto 0);
    op_out_data_11 : out std_logic_vector(33 downto 0);
    op_out_data_12 : out std_logic_vector(33 downto 0);
    op_out_data_13 : out std_logic_vector(33 downto 0);
    op_out_data_14 : out std_logic_vector(33 downto 0);
    op_out_data_15 : out std_logic_vector(33 downto 0);
    op_out_data_16 : out std_logic_vector(33 downto 0);
    op_out_data_17 : out std_logic_vector(33 downto 0);
    op_out_data_18 : out std_logic_vector(33 downto 0);
    op_out_data_19 : out std_logic_vector(33 downto 0);
    op_out_data_2 : out std_logic_vector(33 downto 0);
    op_out_data_20 : out std_logic_vector(33 downto 0);
    op_out_data_21 : out std_logic_vector(33 downto 0);
    op_out_data_22 : out std_logic_vector(33 downto 0);
    op_out_data_23 : out std_logic_vector(33 downto 0);
    op_out_data_24 : out std_logic_vector(33 downto 0);
    op_out_data_25 : out std_logic_vector(33 downto 0);
    op_out_data_26 : out std_logic_vector(33 downto 0);
    op_out_data_27 : out std_logic_vector(33 downto 0);
    op_out_data_28 : out std_logic_vector(33 downto 0);
    op_out_data_29 : out std_logic_vector(33 downto 0);
    op_out_data_3 : out std_logic_vector(33 downto 0);
    op_out_data_30 : out std_logic_vector(33 downto 0);
    op_out_data_31 : out std_logic_vector(33 downto 0);
    op_out_data_32 : out std_logic_vector(33 downto 0);
    op_out_data_33 : out std_logic_vector(33 downto 0);
    op_out_data_34 : out std_logic_vector(33 downto 0);
    op_out_data_35 : out std_logic_vector(33 downto 0);
    op_out_data_36 : out std_logic_vector(33 downto 0);
    op_out_data_37 : out std_logic_vector(33 downto 0);
    op_out_data_38 : out std_logic_vector(33 downto 0);
    op_out_data_39 : out std_logic_vector(33 downto 0);
    op_out_data_4 : out std_logic_vector(33 downto 0);
    op_out_data_40 : out std_logic_vector(33 downto 0);
    op_out_data_41 : out std_logic_vector(33 downto 0);
    op_out_data_42 : out std_logic_vector(33 downto 0);
    op_out_data_43 : out std_logic_vector(33 downto 0);
    op_out_data_44 : out std_logic_vector(33 downto 0);
    op_out_data_45 : out std_logic_vector(33 downto 0);
    op_out_data_46 : out std_logic_vector(33 downto 0);
    op_out_data_47 : out std_logic_vector(33 downto 0);
    op_out_data_48 : out std_logic_vector(33 downto 0);
    op_out_data_49 : out std_logic_vector(33 downto 0);
    op_out_data_5 : out std_logic_vector(33 downto 0);
    op_out_data_50 : out std_logic_vector(33 downto 0);
    op_out_data_51 : out std_logic_vector(33 downto 0);
    op_out_data_52 : out std_logic_vector(33 downto 0);
    op_out_data_53 : out std_logic_vector(33 downto 0);
    op_out_data_54 : out std_logic_vector(33 downto 0);
    op_out_data_55 : out std_logic_vector(33 downto 0);
    op_out_data_6 : out std_logic_vector(33 downto 0);
    op_out_data_7 : out std_logic_vector(33 downto 0);
    op_out_data_8 : out std_logic_vector(33 downto 0);
    op_out_data_9 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_ready_10 : in std_logic;
    op_out_ready_11 : in std_logic;
    op_out_ready_12 : in std_logic;
    op_out_ready_13 : in std_logic;
    op_out_ready_14 : in std_logic;
    op_out_ready_15 : in std_logic;
    op_out_ready_16 : in std_logic;
    op_out_ready_17 : in std_logic;
    op_out_ready_18 : in std_logic;
    op_out_ready_19 : in std_logic;
    op_out_ready_2 : in std_logic;
    op_out_ready_20 : in std_logic;
    op_out_ready_21 : in std_logic;
    op_out_ready_22 : in std_logic;
    op_out_ready_23 : in std_logic;
    op_out_ready_24 : in std_logic;
    op_out_ready_25 : in std_logic;
    op_out_ready_26 : in std_logic;
    op_out_ready_27 : in std_logic;
    op_out_ready_28 : in std_logic;
    op_out_ready_29 : in std_logic;
    op_out_ready_3 : in std_logic;
    op_out_ready_30 : in std_logic;
    op_out_ready_31 : in std_logic;
    op_out_ready_32 : in std_logic;
    op_out_ready_33 : in std_logic;
    op_out_ready_34 : in std_logic;
    op_out_ready_35 : in std_logic;
    op_out_ready_36 : in std_logic;
    op_out_ready_37 : in std_logic;
    op_out_ready_38 : in std_logic;
    op_out_ready_39 : in std_logic;
    op_out_ready_4 : in std_logic;
    op_out_ready_40 : in std_logic;
    op_out_ready_41 : in std_logic;
    op_out_ready_42 : in std_logic;
    op_out_ready_43 : in std_logic;
    op_out_ready_44 : in std_logic;
    op_out_ready_45 : in std_logic;
    op_out_ready_46 : in std_logic;
    op_out_ready_47 : in std_logic;
    op_out_ready_48 : in std_logic;
    op_out_ready_49 : in std_logic;
    op_out_ready_5 : in std_logic;
    op_out_ready_50 : in std_logic;
    op_out_ready_51 : in std_logic;
    op_out_ready_52 : in std_logic;
    op_out_ready_53 : in std_logic;
    op_out_ready_54 : in std_logic;
    op_out_ready_55 : in std_logic;
    op_out_ready_6 : in std_logic;
    op_out_ready_7 : in std_logic;
    op_out_ready_8 : in std_logic;
    op_out_ready_9 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    op_out_valid_10 : out std_logic;
    op_out_valid_11 : out std_logic;
    op_out_valid_12 : out std_logic;
    op_out_valid_13 : out std_logic;
    op_out_valid_14 : out std_logic;
    op_out_valid_15 : out std_logic;
    op_out_valid_16 : out std_logic;
    op_out_valid_17 : out std_logic;
    op_out_valid_18 : out std_logic;
    op_out_valid_19 : out std_logic;
    op_out_valid_2 : out std_logic;
    op_out_valid_20 : out std_logic;
    op_out_valid_21 : out std_logic;
    op_out_valid_22 : out std_logic;
    op_out_valid_23 : out std_logic;
    op_out_valid_24 : out std_logic;
    op_out_valid_25 : out std_logic;
    op_out_valid_26 : out std_logic;
    op_out_valid_27 : out std_logic;
    op_out_valid_28 : out std_logic;
    op_out_valid_29 : out std_logic;
    op_out_valid_3 : out std_logic;
    op_out_valid_30 : out std_logic;
    op_out_valid_31 : out std_logic;
    op_out_valid_32 : out std_logic;
    op_out_valid_33 : out std_logic;
    op_out_valid_34 : out std_logic;
    op_out_valid_35 : out std_logic;
    op_out_valid_36 : out std_logic;
    op_out_valid_37 : out std_logic;
    op_out_valid_38 : out std_logic;
    op_out_valid_39 : out std_logic;
    op_out_valid_4 : out std_logic;
    op_out_valid_40 : out std_logic;
    op_out_valid_41 : out std_logic;
    op_out_valid_42 : out std_logic;
    op_out_valid_43 : out std_logic;
    op_out_valid_44 : out std_logic;
    op_out_valid_45 : out std_logic;
    op_out_valid_46 : out std_logic;
    op_out_valid_47 : out std_logic;
    op_out_valid_48 : out std_logic;
    op_out_valid_49 : out std_logic;
    op_out_valid_5 : out std_logic;
    op_out_valid_50 : out std_logic;
    op_out_valid_51 : out std_logic;
    op_out_valid_52 : out std_logic;
    op_out_valid_53 : out std_logic;
    op_out_valid_54 : out std_logic;
    op_out_valid_55 : out std_logic;
    op_out_valid_6 : out std_logic;
    op_out_valid_7 : out std_logic;
    op_out_valid_8 : out std_logic;
    op_out_valid_9 : out std_logic;
    rst : in std_logic
);
end component;

component fp_max is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component fp_min is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component fp_prod is
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component input_selector_78 is
generic (
    num_phases : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_data_10 : in std_logic_vector(33 downto 0);
    op_in_data_11 : in std_logic_vector(33 downto 0);
    op_in_data_12 : in std_logic_vector(33 downto 0);
    op_in_data_13 : in std_logic_vector(33 downto 0);
    op_in_data_14 : in std_logic_vector(33 downto 0);
    op_in_data_15 : in std_logic_vector(33 downto 0);
    op_in_data_16 : in std_logic_vector(33 downto 0);
    op_in_data_17 : in std_logic_vector(33 downto 0);
    op_in_data_18 : in std_logic_vector(33 downto 0);
    op_in_data_19 : in std_logic_vector(33 downto 0);
    op_in_data_2 : in std_logic_vector(33 downto 0);
    op_in_data_20 : in std_logic_vector(33 downto 0);
    op_in_data_21 : in std_logic_vector(33 downto 0);
    op_in_data_22 : in std_logic_vector(33 downto 0);
    op_in_data_23 : in std_logic_vector(33 downto 0);
    op_in_data_24 : in std_logic_vector(33 downto 0);
    op_in_data_25 : in std_logic_vector(33 downto 0);
    op_in_data_26 : in std_logic_vector(33 downto 0);
    op_in_data_27 : in std_logic_vector(33 downto 0);
    op_in_data_28 : in std_logic_vector(33 downto 0);
    op_in_data_29 : in std_logic_vector(33 downto 0);
    op_in_data_3 : in std_logic_vector(33 downto 0);
    op_in_data_30 : in std_logic_vector(33 downto 0);
    op_in_data_31 : in std_logic_vector(33 downto 0);
    op_in_data_32 : in std_logic_vector(33 downto 0);
    op_in_data_33 : in std_logic_vector(33 downto 0);
    op_in_data_34 : in std_logic_vector(33 downto 0);
    op_in_data_35 : in std_logic_vector(33 downto 0);
    op_in_data_36 : in std_logic_vector(33 downto 0);
    op_in_data_37 : in std_logic_vector(33 downto 0);
    op_in_data_38 : in std_logic_vector(33 downto 0);
    op_in_data_39 : in std_logic_vector(33 downto 0);
    op_in_data_4 : in std_logic_vector(33 downto 0);
    op_in_data_40 : in std_logic_vector(33 downto 0);
    op_in_data_41 : in std_logic_vector(33 downto 0);
    op_in_data_42 : in std_logic_vector(33 downto 0);
    op_in_data_43 : in std_logic_vector(33 downto 0);
    op_in_data_44 : in std_logic_vector(33 downto 0);
    op_in_data_45 : in std_logic_vector(33 downto 0);
    op_in_data_46 : in std_logic_vector(33 downto 0);
    op_in_data_47 : in std_logic_vector(33 downto 0);
    op_in_data_48 : in std_logic_vector(33 downto 0);
    op_in_data_49 : in std_logic_vector(33 downto 0);
    op_in_data_5 : in std_logic_vector(33 downto 0);
    op_in_data_50 : in std_logic_vector(33 downto 0);
    op_in_data_51 : in std_logic_vector(33 downto 0);
    op_in_data_52 : in std_logic_vector(33 downto 0);
    op_in_data_53 : in std_logic_vector(33 downto 0);
    op_in_data_54 : in std_logic_vector(33 downto 0);
    op_in_data_55 : in std_logic_vector(33 downto 0);
    op_in_data_56 : in std_logic_vector(33 downto 0);
    op_in_data_57 : in std_logic_vector(33 downto 0);
    op_in_data_58 : in std_logic_vector(33 downto 0);
    op_in_data_59 : in std_logic_vector(33 downto 0);
    op_in_data_6 : in std_logic_vector(33 downto 0);
    op_in_data_60 : in std_logic_vector(33 downto 0);
    op_in_data_61 : in std_logic_vector(33 downto 0);
    op_in_data_62 : in std_logic_vector(33 downto 0);
    op_in_data_63 : in std_logic_vector(33 downto 0);
    op_in_data_64 : in std_logic_vector(33 downto 0);
    op_in_data_65 : in std_logic_vector(33 downto 0);
    op_in_data_66 : in std_logic_vector(33 downto 0);
    op_in_data_67 : in std_logic_vector(33 downto 0);
    op_in_data_68 : in std_logic_vector(33 downto 0);
    op_in_data_69 : in std_logic_vector(33 downto 0);
    op_in_data_7 : in std_logic_vector(33 downto 0);
    op_in_data_70 : in std_logic_vector(33 downto 0);
    op_in_data_71 : in std_logic_vector(33 downto 0);
    op_in_data_72 : in std_logic_vector(33 downto 0);
    op_in_data_73 : in std_logic_vector(33 downto 0);
    op_in_data_74 : in std_logic_vector(33 downto 0);
    op_in_data_75 : in std_logic_vector(33 downto 0);
    op_in_data_76 : in std_logic_vector(33 downto 0);
    op_in_data_77 : in std_logic_vector(33 downto 0);
    op_in_data_8 : in std_logic_vector(33 downto 0);
    op_in_data_9 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_ready_10 : out std_logic;
    op_in_ready_11 : out std_logic;
    op_in_ready_12 : out std_logic;
    op_in_ready_13 : out std_logic;
    op_in_ready_14 : out std_logic;
    op_in_ready_15 : out std_logic;
    op_in_ready_16 : out std_logic;
    op_in_ready_17 : out std_logic;
    op_in_ready_18 : out std_logic;
    op_in_ready_19 : out std_logic;
    op_in_ready_2 : out std_logic;
    op_in_ready_20 : out std_logic;
    op_in_ready_21 : out std_logic;
    op_in_ready_22 : out std_logic;
    op_in_ready_23 : out std_logic;
    op_in_ready_24 : out std_logic;
    op_in_ready_25 : out std_logic;
    op_in_ready_26 : out std_logic;
    op_in_ready_27 : out std_logic;
    op_in_ready_28 : out std_logic;
    op_in_ready_29 : out std_logic;
    op_in_ready_3 : out std_logic;
    op_in_ready_30 : out std_logic;
    op_in_ready_31 : out std_logic;
    op_in_ready_32 : out std_logic;
    op_in_ready_33 : out std_logic;
    op_in_ready_34 : out std_logic;
    op_in_ready_35 : out std_logic;
    op_in_ready_36 : out std_logic;
    op_in_ready_37 : out std_logic;
    op_in_ready_38 : out std_logic;
    op_in_ready_39 : out std_logic;
    op_in_ready_4 : out std_logic;
    op_in_ready_40 : out std_logic;
    op_in_ready_41 : out std_logic;
    op_in_ready_42 : out std_logic;
    op_in_ready_43 : out std_logic;
    op_in_ready_44 : out std_logic;
    op_in_ready_45 : out std_logic;
    op_in_ready_46 : out std_logic;
    op_in_ready_47 : out std_logic;
    op_in_ready_48 : out std_logic;
    op_in_ready_49 : out std_logic;
    op_in_ready_5 : out std_logic;
    op_in_ready_50 : out std_logic;
    op_in_ready_51 : out std_logic;
    op_in_ready_52 : out std_logic;
    op_in_ready_53 : out std_logic;
    op_in_ready_54 : out std_logic;
    op_in_ready_55 : out std_logic;
    op_in_ready_56 : out std_logic;
    op_in_ready_57 : out std_logic;
    op_in_ready_58 : out std_logic;
    op_in_ready_59 : out std_logic;
    op_in_ready_6 : out std_logic;
    op_in_ready_60 : out std_logic;
    op_in_ready_61 : out std_logic;
    op_in_ready_62 : out std_logic;
    op_in_ready_63 : out std_logic;
    op_in_ready_64 : out std_logic;
    op_in_ready_65 : out std_logic;
    op_in_ready_66 : out std_logic;
    op_in_ready_67 : out std_logic;
    op_in_ready_68 : out std_logic;
    op_in_ready_69 : out std_logic;
    op_in_ready_7 : out std_logic;
    op_in_ready_70 : out std_logic;
    op_in_ready_71 : out std_logic;
    op_in_ready_72 : out std_logic;
    op_in_ready_73 : out std_logic;
    op_in_ready_74 : out std_logic;
    op_in_ready_75 : out std_logic;
    op_in_ready_76 : out std_logic;
    op_in_ready_77 : out std_logic;
    op_in_ready_8 : out std_logic;
    op_in_ready_9 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_in_valid_10 : in std_logic;
    op_in_valid_11 : in std_logic;
    op_in_valid_12 : in std_logic;
    op_in_valid_13 : in std_logic;
    op_in_valid_14 : in std_logic;
    op_in_valid_15 : in std_logic;
    op_in_valid_16 : in std_logic;
    op_in_valid_17 : in std_logic;
    op_in_valid_18 : in std_logic;
    op_in_valid_19 : in std_logic;
    op_in_valid_2 : in std_logic;
    op_in_valid_20 : in std_logic;
    op_in_valid_21 : in std_logic;
    op_in_valid_22 : in std_logic;
    op_in_valid_23 : in std_logic;
    op_in_valid_24 : in std_logic;
    op_in_valid_25 : in std_logic;
    op_in_valid_26 : in std_logic;
    op_in_valid_27 : in std_logic;
    op_in_valid_28 : in std_logic;
    op_in_valid_29 : in std_logic;
    op_in_valid_3 : in std_logic;
    op_in_valid_30 : in std_logic;
    op_in_valid_31 : in std_logic;
    op_in_valid_32 : in std_logic;
    op_in_valid_33 : in std_logic;
    op_in_valid_34 : in std_logic;
    op_in_valid_35 : in std_logic;
    op_in_valid_36 : in std_logic;
    op_in_valid_37 : in std_logic;
    op_in_valid_38 : in std_logic;
    op_in_valid_39 : in std_logic;
    op_in_valid_4 : in std_logic;
    op_in_valid_40 : in std_logic;
    op_in_valid_41 : in std_logic;
    op_in_valid_42 : in std_logic;
    op_in_valid_43 : in std_logic;
    op_in_valid_44 : in std_logic;
    op_in_valid_45 : in std_logic;
    op_in_valid_46 : in std_logic;
    op_in_valid_47 : in std_logic;
    op_in_valid_48 : in std_logic;
    op_in_valid_49 : in std_logic;
    op_in_valid_5 : in std_logic;
    op_in_valid_50 : in std_logic;
    op_in_valid_51 : in std_logic;
    op_in_valid_52 : in std_logic;
    op_in_valid_53 : in std_logic;
    op_in_valid_54 : in std_logic;
    op_in_valid_55 : in std_logic;
    op_in_valid_56 : in std_logic;
    op_in_valid_57 : in std_logic;
    op_in_valid_58 : in std_logic;
    op_in_valid_59 : in std_logic;
    op_in_valid_6 : in std_logic;
    op_in_valid_60 : in std_logic;
    op_in_valid_61 : in std_logic;
    op_in_valid_62 : in std_logic;
    op_in_valid_63 : in std_logic;
    op_in_valid_64 : in std_logic;
    op_in_valid_65 : in std_logic;
    op_in_valid_66 : in std_logic;
    op_in_valid_67 : in std_logic;
    op_in_valid_68 : in std_logic;
    op_in_valid_69 : in std_logic;
    op_in_valid_7 : in std_logic;
    op_in_valid_70 : in std_logic;
    op_in_valid_71 : in std_logic;
    op_in_valid_72 : in std_logic;
    op_in_valid_73 : in std_logic;
    op_in_valid_74 : in std_logic;
    op_in_valid_75 : in std_logic;
    op_in_valid_76 : in std_logic;
    op_in_valid_77 : in std_logic;
    op_in_valid_8 : in std_logic;
    op_in_valid_9 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end component;

component output_selector_78 is
generic (
    num_phases : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_data_1 : out std_logic_vector(33 downto 0);
    op_out_data_10 : out std_logic_vector(33 downto 0);
    op_out_data_11 : out std_logic_vector(33 downto 0);
    op_out_data_12 : out std_logic_vector(33 downto 0);
    op_out_data_13 : out std_logic_vector(33 downto 0);
    op_out_data_14 : out std_logic_vector(33 downto 0);
    op_out_data_15 : out std_logic_vector(33 downto 0);
    op_out_data_16 : out std_logic_vector(33 downto 0);
    op_out_data_17 : out std_logic_vector(33 downto 0);
    op_out_data_18 : out std_logic_vector(33 downto 0);
    op_out_data_19 : out std_logic_vector(33 downto 0);
    op_out_data_2 : out std_logic_vector(33 downto 0);
    op_out_data_20 : out std_logic_vector(33 downto 0);
    op_out_data_21 : out std_logic_vector(33 downto 0);
    op_out_data_22 : out std_logic_vector(33 downto 0);
    op_out_data_23 : out std_logic_vector(33 downto 0);
    op_out_data_24 : out std_logic_vector(33 downto 0);
    op_out_data_25 : out std_logic_vector(33 downto 0);
    op_out_data_26 : out std_logic_vector(33 downto 0);
    op_out_data_27 : out std_logic_vector(33 downto 0);
    op_out_data_28 : out std_logic_vector(33 downto 0);
    op_out_data_29 : out std_logic_vector(33 downto 0);
    op_out_data_3 : out std_logic_vector(33 downto 0);
    op_out_data_30 : out std_logic_vector(33 downto 0);
    op_out_data_31 : out std_logic_vector(33 downto 0);
    op_out_data_32 : out std_logic_vector(33 downto 0);
    op_out_data_33 : out std_logic_vector(33 downto 0);
    op_out_data_34 : out std_logic_vector(33 downto 0);
    op_out_data_35 : out std_logic_vector(33 downto 0);
    op_out_data_36 : out std_logic_vector(33 downto 0);
    op_out_data_37 : out std_logic_vector(33 downto 0);
    op_out_data_38 : out std_logic_vector(33 downto 0);
    op_out_data_39 : out std_logic_vector(33 downto 0);
    op_out_data_4 : out std_logic_vector(33 downto 0);
    op_out_data_40 : out std_logic_vector(33 downto 0);
    op_out_data_41 : out std_logic_vector(33 downto 0);
    op_out_data_42 : out std_logic_vector(33 downto 0);
    op_out_data_43 : out std_logic_vector(33 downto 0);
    op_out_data_44 : out std_logic_vector(33 downto 0);
    op_out_data_45 : out std_logic_vector(33 downto 0);
    op_out_data_46 : out std_logic_vector(33 downto 0);
    op_out_data_47 : out std_logic_vector(33 downto 0);
    op_out_data_48 : out std_logic_vector(33 downto 0);
    op_out_data_49 : out std_logic_vector(33 downto 0);
    op_out_data_5 : out std_logic_vector(33 downto 0);
    op_out_data_50 : out std_logic_vector(33 downto 0);
    op_out_data_51 : out std_logic_vector(33 downto 0);
    op_out_data_52 : out std_logic_vector(33 downto 0);
    op_out_data_53 : out std_logic_vector(33 downto 0);
    op_out_data_54 : out std_logic_vector(33 downto 0);
    op_out_data_55 : out std_logic_vector(33 downto 0);
    op_out_data_56 : out std_logic_vector(33 downto 0);
    op_out_data_57 : out std_logic_vector(33 downto 0);
    op_out_data_58 : out std_logic_vector(33 downto 0);
    op_out_data_59 : out std_logic_vector(33 downto 0);
    op_out_data_6 : out std_logic_vector(33 downto 0);
    op_out_data_60 : out std_logic_vector(33 downto 0);
    op_out_data_61 : out std_logic_vector(33 downto 0);
    op_out_data_62 : out std_logic_vector(33 downto 0);
    op_out_data_63 : out std_logic_vector(33 downto 0);
    op_out_data_64 : out std_logic_vector(33 downto 0);
    op_out_data_65 : out std_logic_vector(33 downto 0);
    op_out_data_66 : out std_logic_vector(33 downto 0);
    op_out_data_67 : out std_logic_vector(33 downto 0);
    op_out_data_68 : out std_logic_vector(33 downto 0);
    op_out_data_69 : out std_logic_vector(33 downto 0);
    op_out_data_7 : out std_logic_vector(33 downto 0);
    op_out_data_70 : out std_logic_vector(33 downto 0);
    op_out_data_71 : out std_logic_vector(33 downto 0);
    op_out_data_72 : out std_logic_vector(33 downto 0);
    op_out_data_73 : out std_logic_vector(33 downto 0);
    op_out_data_74 : out std_logic_vector(33 downto 0);
    op_out_data_75 : out std_logic_vector(33 downto 0);
    op_out_data_76 : out std_logic_vector(33 downto 0);
    op_out_data_77 : out std_logic_vector(33 downto 0);
    op_out_data_8 : out std_logic_vector(33 downto 0);
    op_out_data_9 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_ready_10 : in std_logic;
    op_out_ready_11 : in std_logic;
    op_out_ready_12 : in std_logic;
    op_out_ready_13 : in std_logic;
    op_out_ready_14 : in std_logic;
    op_out_ready_15 : in std_logic;
    op_out_ready_16 : in std_logic;
    op_out_ready_17 : in std_logic;
    op_out_ready_18 : in std_logic;
    op_out_ready_19 : in std_logic;
    op_out_ready_2 : in std_logic;
    op_out_ready_20 : in std_logic;
    op_out_ready_21 : in std_logic;
    op_out_ready_22 : in std_logic;
    op_out_ready_23 : in std_logic;
    op_out_ready_24 : in std_logic;
    op_out_ready_25 : in std_logic;
    op_out_ready_26 : in std_logic;
    op_out_ready_27 : in std_logic;
    op_out_ready_28 : in std_logic;
    op_out_ready_29 : in std_logic;
    op_out_ready_3 : in std_logic;
    op_out_ready_30 : in std_logic;
    op_out_ready_31 : in std_logic;
    op_out_ready_32 : in std_logic;
    op_out_ready_33 : in std_logic;
    op_out_ready_34 : in std_logic;
    op_out_ready_35 : in std_logic;
    op_out_ready_36 : in std_logic;
    op_out_ready_37 : in std_logic;
    op_out_ready_38 : in std_logic;
    op_out_ready_39 : in std_logic;
    op_out_ready_4 : in std_logic;
    op_out_ready_40 : in std_logic;
    op_out_ready_41 : in std_logic;
    op_out_ready_42 : in std_logic;
    op_out_ready_43 : in std_logic;
    op_out_ready_44 : in std_logic;
    op_out_ready_45 : in std_logic;
    op_out_ready_46 : in std_logic;
    op_out_ready_47 : in std_logic;
    op_out_ready_48 : in std_logic;
    op_out_ready_49 : in std_logic;
    op_out_ready_5 : in std_logic;
    op_out_ready_50 : in std_logic;
    op_out_ready_51 : in std_logic;
    op_out_ready_52 : in std_logic;
    op_out_ready_53 : in std_logic;
    op_out_ready_54 : in std_logic;
    op_out_ready_55 : in std_logic;
    op_out_ready_56 : in std_logic;
    op_out_ready_57 : in std_logic;
    op_out_ready_58 : in std_logic;
    op_out_ready_59 : in std_logic;
    op_out_ready_6 : in std_logic;
    op_out_ready_60 : in std_logic;
    op_out_ready_61 : in std_logic;
    op_out_ready_62 : in std_logic;
    op_out_ready_63 : in std_logic;
    op_out_ready_64 : in std_logic;
    op_out_ready_65 : in std_logic;
    op_out_ready_66 : in std_logic;
    op_out_ready_67 : in std_logic;
    op_out_ready_68 : in std_logic;
    op_out_ready_69 : in std_logic;
    op_out_ready_7 : in std_logic;
    op_out_ready_70 : in std_logic;
    op_out_ready_71 : in std_logic;
    op_out_ready_72 : in std_logic;
    op_out_ready_73 : in std_logic;
    op_out_ready_74 : in std_logic;
    op_out_ready_75 : in std_logic;
    op_out_ready_76 : in std_logic;
    op_out_ready_77 : in std_logic;
    op_out_ready_8 : in std_logic;
    op_out_ready_9 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    op_out_valid_10 : out std_logic;
    op_out_valid_11 : out std_logic;
    op_out_valid_12 : out std_logic;
    op_out_valid_13 : out std_logic;
    op_out_valid_14 : out std_logic;
    op_out_valid_15 : out std_logic;
    op_out_valid_16 : out std_logic;
    op_out_valid_17 : out std_logic;
    op_out_valid_18 : out std_logic;
    op_out_valid_19 : out std_logic;
    op_out_valid_2 : out std_logic;
    op_out_valid_20 : out std_logic;
    op_out_valid_21 : out std_logic;
    op_out_valid_22 : out std_logic;
    op_out_valid_23 : out std_logic;
    op_out_valid_24 : out std_logic;
    op_out_valid_25 : out std_logic;
    op_out_valid_26 : out std_logic;
    op_out_valid_27 : out std_logic;
    op_out_valid_28 : out std_logic;
    op_out_valid_29 : out std_logic;
    op_out_valid_3 : out std_logic;
    op_out_valid_30 : out std_logic;
    op_out_valid_31 : out std_logic;
    op_out_valid_32 : out std_logic;
    op_out_valid_33 : out std_logic;
    op_out_valid_34 : out std_logic;
    op_out_valid_35 : out std_logic;
    op_out_valid_36 : out std_logic;
    op_out_valid_37 : out std_logic;
    op_out_valid_38 : out std_logic;
    op_out_valid_39 : out std_logic;
    op_out_valid_4 : out std_logic;
    op_out_valid_40 : out std_logic;
    op_out_valid_41 : out std_logic;
    op_out_valid_42 : out std_logic;
    op_out_valid_43 : out std_logic;
    op_out_valid_44 : out std_logic;
    op_out_valid_45 : out std_logic;
    op_out_valid_46 : out std_logic;
    op_out_valid_47 : out std_logic;
    op_out_valid_48 : out std_logic;
    op_out_valid_49 : out std_logic;
    op_out_valid_5 : out std_logic;
    op_out_valid_50 : out std_logic;
    op_out_valid_51 : out std_logic;
    op_out_valid_52 : out std_logic;
    op_out_valid_53 : out std_logic;
    op_out_valid_54 : out std_logic;
    op_out_valid_55 : out std_logic;
    op_out_valid_56 : out std_logic;
    op_out_valid_57 : out std_logic;
    op_out_valid_58 : out std_logic;
    op_out_valid_59 : out std_logic;
    op_out_valid_6 : out std_logic;
    op_out_valid_60 : out std_logic;
    op_out_valid_61 : out std_logic;
    op_out_valid_62 : out std_logic;
    op_out_valid_63 : out std_logic;
    op_out_valid_64 : out std_logic;
    op_out_valid_65 : out std_logic;
    op_out_valid_66 : out std_logic;
    op_out_valid_67 : out std_logic;
    op_out_valid_68 : out std_logic;
    op_out_valid_69 : out std_logic;
    op_out_valid_7 : out std_logic;
    op_out_valid_70 : out std_logic;
    op_out_valid_71 : out std_logic;
    op_out_valid_72 : out std_logic;
    op_out_valid_73 : out std_logic;
    op_out_valid_74 : out std_logic;
    op_out_valid_75 : out std_logic;
    op_out_valid_76 : out std_logic;
    op_out_valid_77 : out std_logic;
    op_out_valid_8 : out std_logic;
    op_out_valid_9 : out std_logic;
    rst : in std_logic
);
end component;

signal broadcast_0x7777602468f0_real_VALID,
broadcast_0x7777602468f0_real_READY,
broadcast_0x7777602469e0_real_VALID,
broadcast_0x7777602469e0_real_READY,
broadcast_0x7777602b8350_real_VALID,
broadcast_0x7777602b8350_real_READY,
broadcast_0x7777602b8770_real_VALID,
broadcast_0x7777602b8770_real_READY,
broadcast_0x7777602b8b00_real_VALID,
broadcast_0x7777602b8b00_real_READY,
broadcast_0x7777602b8e90_real_VALID,
broadcast_0x7777602b8e90_real_READY,
broadcast_0x7777602b9240_real_VALID,
broadcast_0x7777602b9240_real_READY,
broadcast_0x7777602b9670_real_VALID,
broadcast_0x7777602b9670_real_READY,
broadcast_0x7777602c97e0_real_VALID,
broadcast_0x7777602c97e0_real_READY,
broadcast_0x7777602c9e30_real_VALID,
broadcast_0x7777602c9e30_real_READY,
broadcast_0x7777602ca500_real_VALID,
broadcast_0x7777602ca500_real_READY,
broadcast_0x7777602cab90_real_VALID,
broadcast_0x7777602cab90_real_READY,
broadcast_0x7777602cb220_real_VALID,
broadcast_0x7777602cb220_real_READY,
broadcast_0x7777602cb8b0_real_VALID,
broadcast_0x7777602cb8b0_real_READY,
channel_9_0_real_VALID,
channel_9_0_real_READY,
channel_9_1_real_VALID,
channel_9_1_real_READY,
broadcast_0x7777602ccf80_real_VALID,
broadcast_0x7777602ccf80_real_READY,
channel_16_0_real_VALID,
channel_16_0_real_READY,
channel_16_1_real_VALID,
channel_16_1_real_READY,
broadcast_0x7777602cf8e0_real_VALID,
broadcast_0x7777602cf8e0_real_READY,
channel_23_0_real_VALID,
channel_23_0_real_READY,
channel_23_1_real_VALID,
channel_23_1_real_READY,
broadcast_0x7777602d21b0_real_VALID,
broadcast_0x7777602d21b0_real_READY,
channel_30_0_real_VALID,
channel_30_0_real_READY,
channel_30_1_real_VALID,
channel_30_1_real_READY,
broadcast_0x7777602d4b00_real_VALID,
broadcast_0x7777602d4b00_real_READY,
channel_37_0_real_VALID,
channel_37_0_real_READY,
channel_37_1_real_VALID,
channel_37_1_real_READY,
broadcast_0x7777602d73e0_real_VALID,
broadcast_0x7777602d73e0_real_READY,
channel_276_0_real_VALID,
channel_276_0_real_READY,
channel_276_1_real_VALID,
channel_276_1_real_READY,
broadcast_0x7777602d9d30_real_VALID,
broadcast_0x7777602d9d30_real_READY,
channel_772_real_VALID,
channel_772_real_READY,
channel_774_int_VALID,
channel_774_int_READY,
channel_64_int_VALID,
channel_64_int_READY,
channel_106_int_VALID,
channel_106_int_READY,
channel_148_int_VALID,
channel_148_int_READY,
channel_190_int_VALID,
channel_190_int_READY,
channel_232_int_VALID,
channel_232_int_READY,
channel_274_int_VALID,
channel_274_int_READY,
channel_838_real_VALID,
channel_838_real_READY,
channel_896_real_VALID,
channel_896_real_READY,
channel_898_real_VALID,
channel_898_real_READY,
channel_14_real_VALID,
channel_14_real_READY,
channel_73_real_VALID,
channel_73_real_READY,
channel_115_real_VALID,
channel_115_real_READY,
channel_157_real_VALID,
channel_157_real_READY,
channel_199_real_VALID,
channel_199_real_READY,
channel_241_real_VALID,
channel_241_real_READY,
channel_286_real_VALID,
channel_286_real_READY,
channel_327_real_VALID,
channel_327_real_READY,
channel_21_real_VALID,
channel_21_real_READY,
channel_77_real_VALID,
channel_77_real_READY,
channel_119_real_VALID,
channel_119_real_READY,
channel_161_real_VALID,
channel_161_real_READY,
channel_203_real_VALID,
channel_203_real_READY,
channel_245_real_VALID,
channel_245_real_READY,
channel_292_real_VALID,
channel_292_real_READY,
channel_331_real_VALID,
channel_331_real_READY,
channel_28_real_VALID,
channel_28_real_READY,
channel_81_real_VALID,
channel_81_real_READY,
channel_123_real_VALID,
channel_123_real_READY,
channel_165_real_VALID,
channel_165_real_READY,
channel_207_real_VALID,
channel_207_real_READY,
channel_249_real_VALID,
channel_249_real_READY,
channel_298_real_VALID,
channel_298_real_READY,
channel_335_real_VALID,
channel_335_real_READY,
channel_35_real_VALID,
channel_35_real_READY,
channel_85_real_VALID,
channel_85_real_READY,
channel_127_real_VALID,
channel_127_real_READY,
channel_169_real_VALID,
channel_169_real_READY,
channel_211_real_VALID,
channel_211_real_READY,
channel_253_real_VALID,
channel_253_real_READY,
channel_304_real_VALID,
channel_304_real_READY,
channel_339_real_VALID,
channel_339_real_READY,
channel_42_real_VALID,
channel_42_real_READY,
channel_89_real_VALID,
channel_89_real_READY,
channel_131_real_VALID,
channel_131_real_READY,
channel_173_real_VALID,
channel_173_real_READY,
channel_215_real_VALID,
channel_215_real_READY,
channel_257_real_VALID,
channel_257_real_READY,
channel_310_real_VALID,
channel_310_real_READY,
channel_343_real_VALID,
channel_343_real_READY,
channel_46_real_VALID,
channel_46_real_READY,
channel_93_real_VALID,
channel_93_real_READY,
channel_135_real_VALID,
channel_135_real_READY,
channel_177_real_VALID,
channel_177_real_READY,
channel_219_real_VALID,
channel_219_real_READY,
channel_261_real_VALID,
channel_261_real_READY,
channel_314_real_VALID,
channel_314_real_READY,
channel_347_real_VALID,
channel_347_real_READY,
channel_53_real_VALID,
channel_53_real_READY,
channel_100_real_VALID,
channel_100_real_READY,
channel_142_real_VALID,
channel_142_real_READY,
channel_184_real_VALID,
channel_184_real_READY,
channel_226_real_VALID,
channel_226_real_READY,
channel_268_real_VALID,
channel_268_real_READY,
channel_962_real_VALID,
channel_962_real_READY,
channel_970_real_VALID,
channel_970_real_READY,
channel_972_real_VALID,
channel_972_real_READY,
channel_52_real_VALID,
channel_52_real_READY,
channel_99_real_VALID,
channel_99_real_READY,
channel_141_real_VALID,
channel_141_real_READY,
channel_183_real_VALID,
channel_183_real_READY,
channel_225_real_VALID,
channel_225_real_READY,
channel_267_real_VALID,
channel_267_real_READY,
channel_986_real_VALID,
channel_986_real_READY,
channel_62_real_VALID,
channel_62_real_READY,
channel_104_real_VALID,
channel_104_real_READY,
channel_146_real_VALID,
channel_146_real_READY,
channel_188_real_VALID,
channel_188_real_READY,
channel_230_real_VALID,
channel_230_real_READY,
channel_272_real_VALID,
channel_272_real_READY,
channel_994_real_VALID,
channel_994_real_READY,
channel_996_real_VALID,
channel_996_real_READY,
channel_63_real_VALID,
channel_63_real_READY,
channel_105_real_VALID,
channel_105_real_READY,
channel_147_real_VALID,
channel_147_real_READY,
channel_189_real_VALID,
channel_189_real_READY,
channel_231_real_VALID,
channel_231_real_READY,
channel_273_real_VALID,
channel_273_real_READY,
channel_59_real_VALID,
channel_59_real_READY,
channel_67_real_VALID,
channel_67_real_READY,
channel_8_real_VALID,
channel_8_real_READY,
channel_15_real_VALID,
channel_15_real_READY,
channel_3_real_VALID,
channel_3_real_READY,
channel_94_real_VALID,
channel_94_real_READY,
channel_132_real_VALID,
channel_132_real_READY,
channel_22_real_VALID,
channel_22_real_READY,
channel_29_real_VALID,
channel_29_real_READY,
channel_36_real_VALID,
channel_36_real_READY,
channel_82_real_VALID,
channel_82_real_READY,
channel_86_real_VALID,
channel_86_real_READY,
channel_70_real_VALID,
channel_70_real_READY,
channel_74_real_VALID,
channel_74_real_READY,
channel_78_real_VALID,
channel_78_real_READY,
channel_109_real_VALID,
channel_109_real_READY,
channel_112_real_VALID,
channel_112_real_READY,
channel_101_real_VALID,
channel_101_real_READY,
channel_120_real_VALID,
channel_120_real_READY,
channel_124_real_VALID,
channel_124_real_READY,
channel_116_real_VALID,
channel_116_real_READY,
channel_151_real_VALID,
channel_151_real_READY,
channel_154_real_VALID,
channel_154_real_READY,
channel_128_real_VALID,
channel_128_real_READY,
channel_143_real_VALID,
channel_143_real_READY,
channel_162_real_VALID,
channel_162_real_READY,
channel_166_real_VALID,
channel_166_real_READY,
channel_158_real_VALID,
channel_158_real_READY,
channel_185_real_VALID,
channel_185_real_READY,
channel_193_real_VALID,
channel_193_real_READY,
channel_170_real_VALID,
channel_170_real_READY,
channel_204_real_VALID,
channel_204_real_READY,
channel_208_real_VALID,
channel_208_real_READY,
channel_196_real_VALID,
channel_196_real_READY,
channel_200_real_VALID,
channel_200_real_READY,
channel_227_real_VALID,
channel_227_real_READY,
channel_235_real_VALID,
channel_235_real_READY,
channel_212_real_VALID,
channel_212_real_READY,
channel_242_real_VALID,
channel_242_real_READY,
channel_246_real_VALID,
channel_246_real_READY,
channel_238_real_VALID,
channel_238_real_READY,
channel_254_real_VALID,
channel_254_real_READY,
channel_269_real_VALID,
channel_269_real_READY,
channel_250_real_VALID,
channel_250_real_READY,
channel_281_real_VALID,
channel_281_real_READY,
channel_287_real_VALID,
channel_287_real_READY,
channel_43_real_VALID,
channel_43_real_READY,
channel_47_real_VALID,
channel_47_real_READY,
channel_90_real_VALID,
channel_90_real_READY,
channel_174_real_VALID,
channel_174_real_READY,
channel_178_real_VALID,
channel_178_real_READY,
channel_136_real_VALID,
channel_136_real_READY,
channel_220_real_VALID,
channel_220_real_READY,
channel_258_real_VALID,
channel_258_real_READY,
channel_216_real_VALID,
channel_216_real_READY,
channel_66_real_VALID,
channel_66_real_READY,
channel_108_real_VALID,
channel_108_real_READY,
channel_262_real_VALID,
channel_262_real_READY,
channel_1_real_VALID,
channel_1_real_READY,
channel_299_real_VALID,
channel_299_real_READY,
channel_305_real_VALID,
channel_305_real_READY,
channel_293_real_VALID,
channel_293_real_READY,
channel_315_real_VALID,
channel_315_real_READY,
channel_321_real_VALID,
channel_321_real_READY,
channel_311_real_VALID,
channel_311_real_READY,
channel_328_real_VALID,
channel_328_real_READY,
channel_332_real_VALID,
channel_332_real_READY,
channel_324_real_VALID,
channel_324_real_READY,
channel_344_real_VALID,
channel_344_real_READY,
channel_348_real_VALID,
channel_348_real_READY,
channel_336_real_VALID,
channel_336_real_READY,
channel_340_real_VALID,
channel_340_real_READY,
channel_1082_real_VALID,
channel_1082_real_READY,
channel_6_real_VALID,
channel_6_real_READY,
channel_2_real_VALID,
channel_2_real_READY,
channel_192_real_VALID,
channel_192_real_READY,
channel_234_real_VALID,
channel_234_real_READY,
channel_150_real_VALID,
channel_150_real_READY,
channel_12_real_VALID,
channel_12_real_READY,
channel_19_real_VALID,
channel_19_real_READY,
channel_26_real_VALID,
channel_26_real_READY,
channel_0_real_VALID,
channel_0_real_READY,
channel_320_real_VALID,
channel_320_real_READY,
channel_40_real_VALID,
channel_40_real_READY,
channel_60_real_VALID,
channel_60_real_READY,
channel_68_real_VALID,
channel_68_real_READY,
channel_155_real_VALID,
channel_155_real_READY,
channel_159_real_VALID,
channel_159_real_READY,
channel_163_real_VALID,
channel_163_real_READY,
channel_33_real_VALID,
channel_33_real_READY,
channel_83_real_VALID,
channel_83_real_READY,
channel_87_real_VALID,
channel_87_real_READY,
channel_102_real_VALID,
channel_102_real_READY,
channel_71_real_VALID,
channel_71_real_READY,
channel_75_real_VALID,
channel_75_real_READY,
channel_79_real_VALID,
channel_79_real_READY,
channel_121_real_VALID,
channel_121_real_READY,
channel_125_real_VALID,
channel_125_real_READY,
channel_129_real_VALID,
channel_129_real_READY,
channel_110_real_VALID,
channel_110_real_READY,
channel_113_real_VALID,
channel_113_real_READY,
channel_117_real_VALID,
channel_117_real_READY,
channel_290_real_VALID,
channel_290_real_READY,
channel_296_real_VALID,
channel_296_real_READY,
channel_302_real_VALID,
channel_302_real_READY,
channel_144_real_VALID,
channel_144_real_READY,
channel_152_real_VALID,
channel_152_real_READY,
channel_194_real_VALID,
channel_194_real_READY,
channel_197_real_VALID,
channel_197_real_READY,
channel_201_real_VALID,
channel_201_real_READY,
channel_167_real_VALID,
channel_167_real_READY,
channel_171_real_VALID,
channel_171_real_READY,
channel_186_real_VALID,
channel_186_real_READY,
channel_209_real_VALID,
channel_209_real_READY,
channel_213_real_VALID,
channel_213_real_READY,
channel_228_real_VALID,
channel_228_real_READY,
channel_205_real_VALID,
channel_205_real_READY,
channel_239_real_VALID,
channel_239_real_READY,
channel_243_real_VALID,
channel_243_real_READY,
channel_247_real_VALID,
channel_247_real_READY,
channel_236_real_VALID,
channel_236_real_READY,
channel_44_real_vect_VALID,
channel_44_real_vect_READY,
channel_48_real_vect_VALID,
channel_48_real_vect_READY,
channel_91_real_vect_VALID,
channel_91_real_vect_READY,
channel_251_real_VALID,
channel_251_real_READY,
channel_255_real_VALID,
channel_255_real_READY,
channel_270_real_VALID,
channel_270_real_READY,
channel_133_real_vect_VALID,
channel_133_real_vect_READY,
channel_137_real_vect_VALID,
channel_137_real_vect_READY,
channel_175_real_vect_VALID,
channel_175_real_vect_READY,
channel_179_real_vect_VALID,
channel_179_real_vect_READY,
channel_95_real_vect_VALID,
channel_95_real_vect_READY,
channel_221_real_vect_VALID,
channel_221_real_vect_READY,
channel_259_real_vect_VALID,
channel_259_real_vect_READY,
channel_263_real_vect_VALID,
channel_263_real_vect_READY,
channel_217_real_vect_VALID,
channel_217_real_vect_READY,
channel_316_real_vect_VALID,
channel_316_real_vect_READY,
channel_322_real_VALID,
channel_322_real_READY,
channel_325_real_VALID,
channel_325_real_READY,
channel_279_real_VALID,
channel_279_real_READY,
channel_284_real_VALID,
channel_284_real_READY,
channel_139_real_VALID,
channel_139_real_READY,
channel_181_real_VALID,
channel_181_real_READY,
channel_223_real_VALID,
channel_223_real_READY,
channel_308_real_VALID,
channel_308_real_READY,
channel_312_real_vect_VALID,
channel_312_real_vect_READY,
channel_337_real_VALID,
channel_337_real_READY,
channel_341_real_VALID,
channel_341_real_READY,
channel_345_real_vect_VALID,
channel_345_real_vect_READY,
channel_329_real_VALID,
channel_329_real_READY,
channel_333_real_VALID,
channel_333_real_READY,
channel_13_real_VALID,
channel_13_real_READY,
channel_20_real_VALID,
channel_20_real_READY,
channel_27_real_VALID,
channel_27_real_READY,
channel_34_real_VALID,
channel_34_real_READY,
channel_349_real_vect_VALID,
channel_349_real_vect_READY,
channel_50_real_VALID,
channel_50_real_READY,
channel_97_real_VALID,
channel_97_real_READY,
channel_1162_real_VALID,
channel_1162_real_READY,
channel_1164_real_VALID,
channel_1164_real_READY,
channel_7_real_VALID,
channel_7_real_READY,
channel_265_real_VALID,
channel_265_real_READY,
channel_318_real_VALID,
channel_318_real_READY,
channel_351_real_VALID,
channel_351_real_READY,
channel_41_real_VALID,
channel_41_real_READY,
channel_61_real_VALID,
channel_61_real_READY,
channel_69_real_VALID,
channel_69_real_READY,
channel_72_real_VALID,
channel_72_real_READY,
channel_76_real_VALID,
channel_76_real_READY,
channel_80_real_VALID,
channel_80_real_READY,
channel_84_real_VALID,
channel_84_real_READY,
channel_88_real_VALID,
channel_88_real_READY,
channel_103_real_VALID,
channel_103_real_READY,
channel_111_real_VALID,
channel_111_real_READY,
channel_114_real_VALID,
channel_114_real_READY,
channel_118_real_VALID,
channel_118_real_READY,
channel_122_real_VALID,
channel_122_real_READY,
channel_126_real_VALID,
channel_126_real_READY,
channel_130_real_VALID,
channel_130_real_READY,
channel_145_real_VALID,
channel_145_real_READY,
channel_153_real_VALID,
channel_153_real_READY,
channel_156_real_VALID,
channel_156_real_READY,
channel_160_real_VALID,
channel_160_real_READY,
channel_164_real_VALID,
channel_164_real_READY,
channel_168_real_VALID,
channel_168_real_READY,
channel_172_real_VALID,
channel_172_real_READY,
channel_187_real_VALID,
channel_187_real_READY,
channel_195_real_VALID,
channel_195_real_READY,
channel_198_real_VALID,
channel_198_real_READY,
channel_202_real_VALID,
channel_202_real_READY,
channel_206_real_VALID,
channel_206_real_READY,
channel_210_real_VALID,
channel_210_real_READY,
channel_214_real_VALID,
channel_214_real_READY,
channel_229_real_VALID,
channel_229_real_READY,
channel_237_real_VALID,
channel_237_real_READY,
channel_240_real_VALID,
channel_240_real_READY,
channel_244_real_VALID,
channel_244_real_READY,
channel_248_real_VALID,
channel_248_real_READY,
channel_252_real_VALID,
channel_252_real_READY,
channel_256_real_VALID,
channel_256_real_READY,
channel_271_real_VALID,
channel_271_real_READY,
channel_45_real_vect_VALID,
channel_45_real_vect_READY,
channel_49_real_vect_VALID,
channel_49_real_vect_READY,
channel_92_real_vect_VALID,
channel_92_real_vect_READY,
channel_96_real_vect_VALID,
channel_96_real_vect_READY,
channel_134_real_vect_VALID,
channel_134_real_vect_READY,
channel_138_real_vect_VALID,
channel_138_real_vect_READY,
channel_176_real_vect_VALID,
channel_176_real_vect_READY,
channel_180_real_vect_VALID,
channel_180_real_vect_READY,
channel_218_real_vect_VALID,
channel_218_real_vect_READY,
channel_222_real_vect_VALID,
channel_222_real_vect_READY,
channel_260_real_vect_VALID,
channel_260_real_vect_READY,
channel_264_real_vect_VALID,
channel_264_real_vect_READY,
channel_280_real_VALID,
channel_280_real_READY,
channel_285_real_VALID,
channel_285_real_READY,
channel_291_real_VALID,
channel_291_real_READY,
channel_297_real_VALID,
channel_297_real_READY,
channel_303_real_VALID,
channel_303_real_READY,
channel_309_real_VALID,
channel_309_real_READY,
channel_313_real_vect_VALID,
channel_313_real_vect_READY,
channel_317_real_vect_VALID,
channel_317_real_vect_READY,
channel_323_real_VALID,
channel_323_real_READY,
channel_326_real_VALID,
channel_326_real_READY,
channel_330_real_VALID,
channel_330_real_READY,
channel_334_real_VALID,
channel_334_real_READY,
channel_338_real_VALID,
channel_338_real_READY,
channel_342_real_VALID,
channel_342_real_READY,
channel_346_real_vect_VALID,
channel_346_real_vect_READY,
channel_350_real_vect_VALID,
channel_350_real_vect_READY,
channel_51_real_VALID,
channel_51_real_READY,
channel_98_real_VALID,
channel_98_real_READY,
channel_140_real_VALID,
channel_140_real_READY,
channel_182_real_VALID,
channel_182_real_READY,
channel_224_real_VALID,
channel_224_real_READY,
channel_266_real_VALID,
channel_266_real_READY,
channel_319_real_VALID,
channel_319_real_READY,
channel_352_real_VALID,
channel_352_real_READY : std_logic;

signal broadcast_0x7777602468f0_real_DATA,
broadcast_0x7777602469e0_real_DATA,
broadcast_0x7777602b8350_real_DATA,
broadcast_0x7777602b8770_real_DATA,
broadcast_0x7777602b8b00_real_DATA,
broadcast_0x7777602b8e90_real_DATA,
broadcast_0x7777602b9240_real_DATA,
broadcast_0x7777602b9670_real_DATA,
broadcast_0x7777602c97e0_real_DATA,
broadcast_0x7777602c9e30_real_DATA,
broadcast_0x7777602ca500_real_DATA,
broadcast_0x7777602cab90_real_DATA,
broadcast_0x7777602cb220_real_DATA,
broadcast_0x7777602cb8b0_real_DATA,
channel_9_0_real_DATA,
channel_9_1_real_DATA,
broadcast_0x7777602ccf80_real_DATA,
channel_16_0_real_DATA,
channel_16_1_real_DATA,
broadcast_0x7777602cf8e0_real_DATA,
channel_23_0_real_DATA,
channel_23_1_real_DATA,
broadcast_0x7777602d21b0_real_DATA,
channel_30_0_real_DATA,
channel_30_1_real_DATA,
broadcast_0x7777602d4b00_real_DATA,
channel_37_0_real_DATA,
channel_37_1_real_DATA,
broadcast_0x7777602d73e0_real_DATA,
channel_276_0_real_DATA,
channel_276_1_real_DATA,
broadcast_0x7777602d9d30_real_DATA,
channel_772_real_DATA,
channel_774_int_DATA,
channel_64_int_DATA,
channel_106_int_DATA,
channel_148_int_DATA,
channel_190_int_DATA,
channel_232_int_DATA,
channel_274_int_DATA,
channel_838_real_DATA,
channel_896_real_DATA,
channel_898_real_DATA,
channel_14_real_DATA,
channel_73_real_DATA,
channel_115_real_DATA,
channel_157_real_DATA,
channel_199_real_DATA,
channel_241_real_DATA,
channel_286_real_DATA,
channel_327_real_DATA,
channel_21_real_DATA,
channel_77_real_DATA,
channel_119_real_DATA,
channel_161_real_DATA,
channel_203_real_DATA,
channel_245_real_DATA,
channel_292_real_DATA,
channel_331_real_DATA,
channel_28_real_DATA,
channel_81_real_DATA,
channel_123_real_DATA,
channel_165_real_DATA,
channel_207_real_DATA,
channel_249_real_DATA,
channel_298_real_DATA,
channel_335_real_DATA,
channel_35_real_DATA,
channel_85_real_DATA,
channel_127_real_DATA,
channel_169_real_DATA,
channel_211_real_DATA,
channel_253_real_DATA,
channel_304_real_DATA,
channel_339_real_DATA,
channel_42_real_DATA,
channel_89_real_DATA,
channel_131_real_DATA,
channel_173_real_DATA,
channel_215_real_DATA,
channel_257_real_DATA,
channel_310_real_DATA,
channel_343_real_DATA,
channel_46_real_DATA,
channel_93_real_DATA,
channel_135_real_DATA,
channel_177_real_DATA,
channel_219_real_DATA,
channel_261_real_DATA,
channel_314_real_DATA,
channel_347_real_DATA,
channel_53_real_DATA,
channel_100_real_DATA,
channel_142_real_DATA,
channel_184_real_DATA,
channel_226_real_DATA,
channel_268_real_DATA,
channel_962_real_DATA,
channel_970_real_DATA,
channel_972_real_DATA,
channel_52_real_DATA,
channel_99_real_DATA,
channel_141_real_DATA,
channel_183_real_DATA,
channel_225_real_DATA,
channel_267_real_DATA,
channel_986_real_DATA,
channel_62_real_DATA,
channel_104_real_DATA,
channel_146_real_DATA,
channel_188_real_DATA,
channel_230_real_DATA,
channel_272_real_DATA,
channel_994_real_DATA,
channel_996_real_DATA,
channel_63_real_DATA,
channel_105_real_DATA,
channel_147_real_DATA,
channel_189_real_DATA,
channel_231_real_DATA,
channel_273_real_DATA,
channel_59_real_DATA,
channel_67_real_DATA,
channel_8_real_DATA,
channel_15_real_DATA,
channel_3_real_DATA,
channel_94_real_DATA,
channel_132_real_DATA,
channel_22_real_DATA,
channel_29_real_DATA,
channel_36_real_DATA,
channel_82_real_DATA,
channel_86_real_DATA,
channel_70_real_DATA,
channel_74_real_DATA,
channel_78_real_DATA,
channel_109_real_DATA,
channel_112_real_DATA,
channel_101_real_DATA,
channel_120_real_DATA,
channel_124_real_DATA,
channel_116_real_DATA,
channel_151_real_DATA,
channel_154_real_DATA,
channel_128_real_DATA,
channel_143_real_DATA,
channel_162_real_DATA,
channel_166_real_DATA,
channel_158_real_DATA,
channel_185_real_DATA,
channel_193_real_DATA,
channel_170_real_DATA,
channel_204_real_DATA,
channel_208_real_DATA,
channel_196_real_DATA,
channel_200_real_DATA,
channel_227_real_DATA,
channel_235_real_DATA,
channel_212_real_DATA,
channel_242_real_DATA,
channel_246_real_DATA,
channel_238_real_DATA,
channel_254_real_DATA,
channel_269_real_DATA,
channel_250_real_DATA,
channel_281_real_DATA,
channel_287_real_DATA,
channel_43_real_DATA,
channel_47_real_DATA,
channel_90_real_DATA,
channel_174_real_DATA,
channel_178_real_DATA,
channel_136_real_DATA,
channel_220_real_DATA,
channel_258_real_DATA,
channel_216_real_DATA,
channel_66_real_DATA,
channel_108_real_DATA,
channel_262_real_DATA,
channel_1_real_DATA,
channel_299_real_DATA,
channel_305_real_DATA,
channel_293_real_DATA,
channel_315_real_DATA,
channel_321_real_DATA,
channel_311_real_DATA,
channel_328_real_DATA,
channel_332_real_DATA,
channel_324_real_DATA,
channel_344_real_DATA,
channel_348_real_DATA,
channel_336_real_DATA,
channel_340_real_DATA,
channel_1082_real_DATA,
channel_6_real_DATA,
channel_2_real_DATA,
channel_192_real_DATA,
channel_234_real_DATA,
channel_150_real_DATA,
channel_12_real_DATA,
channel_19_real_DATA,
channel_26_real_DATA,
channel_0_real_DATA,
channel_320_real_DATA,
channel_40_real_DATA,
channel_60_real_DATA,
channel_68_real_DATA,
channel_155_real_DATA,
channel_159_real_DATA,
channel_163_real_DATA,
channel_33_real_DATA,
channel_83_real_DATA,
channel_87_real_DATA,
channel_102_real_DATA,
channel_71_real_DATA,
channel_75_real_DATA,
channel_79_real_DATA,
channel_121_real_DATA,
channel_125_real_DATA,
channel_129_real_DATA,
channel_110_real_DATA,
channel_113_real_DATA,
channel_117_real_DATA,
channel_290_real_DATA,
channel_296_real_DATA,
channel_302_real_DATA,
channel_144_real_DATA,
channel_152_real_DATA,
channel_194_real_DATA,
channel_197_real_DATA,
channel_201_real_DATA,
channel_167_real_DATA,
channel_171_real_DATA,
channel_186_real_DATA,
channel_209_real_DATA,
channel_213_real_DATA,
channel_228_real_DATA,
channel_205_real_DATA,
channel_239_real_DATA,
channel_243_real_DATA,
channel_247_real_DATA,
channel_236_real_DATA,
channel_44_real_vect_DATA,
channel_48_real_vect_DATA,
channel_91_real_vect_DATA,
channel_251_real_DATA,
channel_255_real_DATA,
channel_270_real_DATA,
channel_133_real_vect_DATA,
channel_137_real_vect_DATA,
channel_175_real_vect_DATA,
channel_179_real_vect_DATA,
channel_95_real_vect_DATA,
channel_221_real_vect_DATA,
channel_259_real_vect_DATA,
channel_263_real_vect_DATA,
channel_217_real_vect_DATA,
channel_316_real_vect_DATA,
channel_322_real_DATA,
channel_325_real_DATA,
channel_279_real_DATA,
channel_284_real_DATA,
channel_139_real_DATA,
channel_181_real_DATA,
channel_223_real_DATA,
channel_308_real_DATA,
channel_312_real_vect_DATA,
channel_337_real_DATA,
channel_341_real_DATA,
channel_345_real_vect_DATA,
channel_329_real_DATA,
channel_333_real_DATA,
channel_13_real_DATA,
channel_20_real_DATA,
channel_27_real_DATA,
channel_34_real_DATA,
channel_349_real_vect_DATA,
channel_50_real_DATA,
channel_97_real_DATA,
channel_1162_real_DATA,
channel_1164_real_DATA,
channel_7_real_DATA,
channel_265_real_DATA,
channel_318_real_DATA,
channel_351_real_DATA,
channel_41_real_DATA,
channel_61_real_DATA,
channel_69_real_DATA,
channel_72_real_DATA,
channel_76_real_DATA,
channel_80_real_DATA,
channel_84_real_DATA,
channel_88_real_DATA,
channel_103_real_DATA,
channel_111_real_DATA,
channel_114_real_DATA,
channel_118_real_DATA,
channel_122_real_DATA,
channel_126_real_DATA,
channel_130_real_DATA,
channel_145_real_DATA,
channel_153_real_DATA,
channel_156_real_DATA,
channel_160_real_DATA,
channel_164_real_DATA,
channel_168_real_DATA,
channel_172_real_DATA,
channel_187_real_DATA,
channel_195_real_DATA,
channel_198_real_DATA,
channel_202_real_DATA,
channel_206_real_DATA,
channel_210_real_DATA,
channel_214_real_DATA,
channel_229_real_DATA,
channel_237_real_DATA,
channel_240_real_DATA,
channel_244_real_DATA,
channel_248_real_DATA,
channel_252_real_DATA,
channel_256_real_DATA,
channel_271_real_DATA,
channel_45_real_vect_DATA,
channel_49_real_vect_DATA,
channel_92_real_vect_DATA,
channel_96_real_vect_DATA,
channel_134_real_vect_DATA,
channel_138_real_vect_DATA,
channel_176_real_vect_DATA,
channel_180_real_vect_DATA,
channel_218_real_vect_DATA,
channel_222_real_vect_DATA,
channel_260_real_vect_DATA,
channel_264_real_vect_DATA,
channel_280_real_DATA,
channel_285_real_DATA,
channel_291_real_DATA,
channel_297_real_DATA,
channel_303_real_DATA,
channel_309_real_DATA,
channel_313_real_vect_DATA,
channel_317_real_vect_DATA,
channel_323_real_DATA,
channel_326_real_DATA,
channel_330_real_DATA,
channel_334_real_DATA,
channel_338_real_DATA,
channel_342_real_DATA,
channel_346_real_vect_DATA,
channel_350_real_vect_DATA,
channel_51_real_DATA,
channel_98_real_DATA,
channel_140_real_DATA,
channel_182_real_DATA,
channel_224_real_DATA,
channel_266_real_DATA,
channel_319_real_DATA,
channel_352_real_DATA : std_logic_vector(33 downto 0);

begin

const_value_6_0 : const_value_6
generic map (
    value => "0000000000000000000000000000000000"
)
port map (
    clk => clk,
    op_out_data_0 => channel_53_real_DATA,
    op_out_data_1 => channel_100_real_DATA,
    op_out_data_2 => channel_142_real_DATA,
    op_out_data_3 => channel_184_real_DATA,
    op_out_data_4 => channel_226_real_DATA,
    op_out_data_5 => channel_268_real_DATA,
    op_out_ready_0 => channel_53_real_READY,
    op_out_ready_1 => channel_100_real_READY,
    op_out_ready_2 => channel_142_real_READY,
    op_out_ready_3 => channel_184_real_READY,
    op_out_ready_4 => channel_226_real_READY,
    op_out_ready_5 => channel_268_real_READY,
    op_out_valid_0 => channel_53_real_VALID,
    op_out_valid_1 => channel_100_real_VALID,
    op_out_valid_2 => channel_142_real_VALID,
    op_out_valid_3 => channel_184_real_VALID,
    op_out_valid_4 => channel_226_real_VALID,
    op_out_valid_5 => channel_268_real_VALID,
    rst => rst
);

vslider_0 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_4_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_262_real_DATA,
    op_out_ready_0 => channel_262_real_READY,
    op_out_valid_0 => channel_262_real_VALID,
    rst => rst
);

vslider_1 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_5_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_258_real_DATA,
    op_out_ready_0 => channel_258_real_READY,
    op_out_valid_0 => channel_258_real_VALID,
    rst => rst
);

vslider_2 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_6_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_254_real_DATA,
    op_out_ready_0 => channel_254_real_READY,
    op_out_valid_0 => channel_254_real_VALID,
    rst => rst
);

vslider_3 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_7_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_250_real_DATA,
    op_out_ready_0 => channel_250_real_READY,
    op_out_valid_0 => channel_250_real_VALID,
    rst => rst
);

vslider_4 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_8_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_246_real_DATA,
    op_out_ready_0 => channel_246_real_READY,
    op_out_valid_0 => channel_246_real_VALID,
    rst => rst
);

vslider_5 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_9_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_242_real_DATA,
    op_out_ready_0 => channel_242_real_READY,
    op_out_valid_0 => channel_242_real_VALID,
    rst => rst
);

vslider_6 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_10_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_238_real_DATA,
    op_out_ready_0 => channel_238_real_READY,
    op_out_valid_0 => channel_238_real_VALID,
    rst => rst
);

vslider_7 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_11_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_235_real_DATA,
    op_out_ready_0 => channel_235_real_READY,
    op_out_valid_0 => channel_235_real_VALID,
    rst => rst
);

vslider_8 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_12_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_234_real_DATA,
    op_out_ready_0 => channel_234_real_READY,
    op_out_valid_0 => channel_234_real_VALID,
    rst => rst
);

vslider_9 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_13_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_270_real_DATA,
    op_out_ready_0 => channel_270_real_READY,
    op_out_valid_0 => channel_270_real_VALID,
    rst => rst
);

vslider_10 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_14_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_220_real_DATA,
    op_out_ready_0 => channel_220_real_READY,
    op_out_valid_0 => channel_220_real_VALID,
    rst => rst
);

vslider_11 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_15_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_216_real_DATA,
    op_out_ready_0 => channel_216_real_READY,
    op_out_valid_0 => channel_216_real_VALID,
    rst => rst
);

vslider_12 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_16_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_212_real_DATA,
    op_out_ready_0 => channel_212_real_READY,
    op_out_valid_0 => channel_212_real_VALID,
    rst => rst
);

vslider_13 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_17_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_208_real_DATA,
    op_out_ready_0 => channel_208_real_READY,
    op_out_valid_0 => channel_208_real_VALID,
    rst => rst
);

vslider_14 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_18_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_204_real_DATA,
    op_out_ready_0 => channel_204_real_READY,
    op_out_valid_0 => channel_204_real_VALID,
    rst => rst
);

vslider_15 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_19_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_200_real_DATA,
    op_out_ready_0 => channel_200_real_READY,
    op_out_valid_0 => channel_200_real_VALID,
    rst => rst
);

vslider_16 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_20_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_196_real_DATA,
    op_out_ready_0 => channel_196_real_READY,
    op_out_valid_0 => channel_196_real_VALID,
    rst => rst
);

vslider_17 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_21_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_193_real_DATA,
    op_out_ready_0 => channel_193_real_READY,
    op_out_valid_0 => channel_193_real_VALID,
    rst => rst
);

vslider_18 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_22_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_192_real_DATA,
    op_out_ready_0 => channel_192_real_READY,
    op_out_valid_0 => channel_192_real_VALID,
    rst => rst
);

vslider_19 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_23_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_228_real_DATA,
    op_out_ready_0 => channel_228_real_READY,
    op_out_valid_0 => channel_228_real_VALID,
    rst => rst
);

vslider_20 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_24_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_178_real_DATA,
    op_out_ready_0 => channel_178_real_READY,
    op_out_valid_0 => channel_178_real_VALID,
    rst => rst
);

vslider_21 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_25_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_174_real_DATA,
    op_out_ready_0 => channel_174_real_READY,
    op_out_valid_0 => channel_174_real_VALID,
    rst => rst
);

vslider_22 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_26_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_170_real_DATA,
    op_out_ready_0 => channel_170_real_READY,
    op_out_valid_0 => channel_170_real_VALID,
    rst => rst
);

vslider_23 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_27_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_166_real_DATA,
    op_out_ready_0 => channel_166_real_READY,
    op_out_valid_0 => channel_166_real_VALID,
    rst => rst
);

vslider_24 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_28_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_162_real_DATA,
    op_out_ready_0 => channel_162_real_READY,
    op_out_valid_0 => channel_162_real_VALID,
    rst => rst
);

vslider_25 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_29_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_158_real_DATA,
    op_out_ready_0 => channel_158_real_READY,
    op_out_valid_0 => channel_158_real_VALID,
    rst => rst
);

vslider_26 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_30_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_154_real_DATA,
    op_out_ready_0 => channel_154_real_READY,
    op_out_valid_0 => channel_154_real_VALID,
    rst => rst
);

vslider_27 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_31_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_151_real_DATA,
    op_out_ready_0 => channel_151_real_READY,
    op_out_valid_0 => channel_151_real_VALID,
    rst => rst
);

vslider_28 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_32_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_150_real_DATA,
    op_out_ready_0 => channel_150_real_READY,
    op_out_valid_0 => channel_150_real_VALID,
    rst => rst
);

vslider_29 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_33_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_186_real_DATA,
    op_out_ready_0 => channel_186_real_READY,
    op_out_valid_0 => channel_186_real_VALID,
    rst => rst
);

vslider_30 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_34_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_136_real_DATA,
    op_out_ready_0 => channel_136_real_READY,
    op_out_valid_0 => channel_136_real_VALID,
    rst => rst
);

vslider_31 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_35_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_132_real_DATA,
    op_out_ready_0 => channel_132_real_READY,
    op_out_valid_0 => channel_132_real_VALID,
    rst => rst
);

vslider_32 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_36_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_128_real_DATA,
    op_out_ready_0 => channel_128_real_READY,
    op_out_valid_0 => channel_128_real_VALID,
    rst => rst
);

vslider_33 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_37_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_124_real_DATA,
    op_out_ready_0 => channel_124_real_READY,
    op_out_valid_0 => channel_124_real_VALID,
    rst => rst
);

vslider_34 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_38_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_120_real_DATA,
    op_out_ready_0 => channel_120_real_READY,
    op_out_valid_0 => channel_120_real_VALID,
    rst => rst
);

vslider_35 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_39_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_116_real_DATA,
    op_out_ready_0 => channel_116_real_READY,
    op_out_valid_0 => channel_116_real_VALID,
    rst => rst
);

vslider_36 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_40_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_112_real_DATA,
    op_out_ready_0 => channel_112_real_READY,
    op_out_valid_0 => channel_112_real_VALID,
    rst => rst
);

vslider_37 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_41_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_109_real_DATA,
    op_out_ready_0 => channel_109_real_READY,
    op_out_valid_0 => channel_109_real_VALID,
    rst => rst
);

vslider_38 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_42_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_108_real_DATA,
    op_out_ready_0 => channel_108_real_READY,
    op_out_valid_0 => channel_108_real_VALID,
    rst => rst
);

vslider_39 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_43_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_144_real_DATA,
    op_out_ready_0 => channel_144_real_READY,
    op_out_valid_0 => channel_144_real_VALID,
    rst => rst
);

vslider_40 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_44_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_94_real_DATA,
    op_out_ready_0 => channel_94_real_READY,
    op_out_valid_0 => channel_94_real_VALID,
    rst => rst
);

vslider_41 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_45_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_90_real_DATA,
    op_out_ready_0 => channel_90_real_READY,
    op_out_valid_0 => channel_90_real_VALID,
    rst => rst
);

vslider_42 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_46_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_86_real_DATA,
    op_out_ready_0 => channel_86_real_READY,
    op_out_valid_0 => channel_86_real_VALID,
    rst => rst
);

vslider_43 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_47_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_82_real_DATA,
    op_out_ready_0 => channel_82_real_READY,
    op_out_valid_0 => channel_82_real_VALID,
    rst => rst
);

vslider_44 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_48_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_78_real_DATA,
    op_out_ready_0 => channel_78_real_READY,
    op_out_valid_0 => channel_78_real_VALID,
    rst => rst
);

vslider_45 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_49_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_74_real_DATA,
    op_out_ready_0 => channel_74_real_READY,
    op_out_valid_0 => channel_74_real_VALID,
    rst => rst
);

vslider_46 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_50_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_70_real_DATA,
    op_out_ready_0 => channel_70_real_READY,
    op_out_valid_0 => channel_70_real_VALID,
    rst => rst
);

vslider_47 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_51_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_67_real_DATA,
    op_out_ready_0 => channel_67_real_READY,
    op_out_valid_0 => channel_67_real_VALID,
    rst => rst
);

vslider_48 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_52_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_66_real_DATA,
    op_out_ready_0 => channel_66_real_READY,
    op_out_valid_0 => channel_66_real_VALID,
    rst => rst
);

vslider_49 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_53_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_102_real_DATA,
    op_out_ready_0 => channel_102_real_READY,
    op_out_valid_0 => channel_102_real_VALID,
    rst => rst
);

vslider_50 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_54_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_47_real_DATA,
    op_out_ready_0 => channel_47_real_READY,
    op_out_valid_0 => channel_47_real_VALID,
    rst => rst
);

vslider_51 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_55_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_43_real_DATA,
    op_out_ready_0 => channel_43_real_READY,
    op_out_valid_0 => channel_43_real_VALID,
    rst => rst
);

vslider_52 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_56_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_36_real_DATA,
    op_out_ready_0 => channel_36_real_READY,
    op_out_valid_0 => channel_36_real_VALID,
    rst => rst
);

vslider_53 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_57_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_29_real_DATA,
    op_out_ready_0 => channel_29_real_READY,
    op_out_valid_0 => channel_29_real_VALID,
    rst => rst
);

vslider_54 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_58_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_22_real_DATA,
    op_out_ready_0 => channel_22_real_READY,
    op_out_valid_0 => channel_22_real_VALID,
    rst => rst
);

vslider_55 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_59_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_15_real_DATA,
    op_out_ready_0 => channel_15_real_READY,
    op_out_valid_0 => channel_15_real_VALID,
    rst => rst
);

vslider_56 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_60_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_8_real_DATA,
    op_out_ready_0 => channel_8_real_READY,
    op_out_valid_0 => channel_8_real_VALID,
    rst => rst
);

vslider_57 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_61_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_3_real_DATA,
    op_out_ready_0 => channel_3_real_READY,
    op_out_valid_0 => channel_3_real_VALID,
    rst => rst
);

vslider_58 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_62_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_2_real_DATA,
    op_out_ready_0 => channel_2_real_READY,
    op_out_valid_0 => channel_2_real_VALID,
    rst => rst
);

vslider_59 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_63_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_60_real_DATA,
    op_out_ready_0 => channel_60_real_READY,
    op_out_valid_0 => channel_60_real_VALID,
    rst => rst
);

vslider_60 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_64_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_348_real_DATA,
    op_out_ready_0 => channel_348_real_READY,
    op_out_valid_0 => channel_348_real_VALID,
    rst => rst
);

vslider_61 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_65_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_344_real_DATA,
    op_out_ready_0 => channel_344_real_READY,
    op_out_valid_0 => channel_344_real_VALID,
    rst => rst
);

vslider_62 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_66_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_340_real_DATA,
    op_out_ready_0 => channel_340_real_READY,
    op_out_valid_0 => channel_340_real_VALID,
    rst => rst
);

vslider_63 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_67_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_336_real_DATA,
    op_out_ready_0 => channel_336_real_READY,
    op_out_valid_0 => channel_336_real_VALID,
    rst => rst
);

vslider_64 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_68_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_332_real_DATA,
    op_out_ready_0 => channel_332_real_READY,
    op_out_valid_0 => channel_332_real_VALID,
    rst => rst
);

vslider_65 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_69_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_328_real_DATA,
    op_out_ready_0 => channel_328_real_READY,
    op_out_valid_0 => channel_328_real_VALID,
    rst => rst
);

vslider_66 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_70_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_324_real_DATA,
    op_out_ready_0 => channel_324_real_READY,
    op_out_valid_0 => channel_324_real_VALID,
    rst => rst
);

vslider_67 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_71_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_321_real_DATA,
    op_out_ready_0 => channel_321_real_READY,
    op_out_valid_0 => channel_321_real_VALID,
    rst => rst
);

vslider_68 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_72_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_320_real_DATA,
    op_out_ready_0 => channel_320_real_READY,
    op_out_valid_0 => channel_320_real_VALID,
    rst => rst
);

vslider_69 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_73_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_315_real_DATA,
    op_out_ready_0 => channel_315_real_READY,
    op_out_valid_0 => channel_315_real_VALID,
    rst => rst
);

vslider_70 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_74_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_311_real_DATA,
    op_out_ready_0 => channel_311_real_READY,
    op_out_valid_0 => channel_311_real_VALID,
    rst => rst
);

vslider_71 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_75_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_305_real_DATA,
    op_out_ready_0 => channel_305_real_READY,
    op_out_valid_0 => channel_305_real_VALID,
    rst => rst
);

vslider_72 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_76_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_299_real_DATA,
    op_out_ready_0 => channel_299_real_READY,
    op_out_valid_0 => channel_299_real_VALID,
    rst => rst
);

vslider_73 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_77_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_293_real_DATA,
    op_out_ready_0 => channel_293_real_READY,
    op_out_valid_0 => channel_293_real_VALID,
    rst => rst
);

vslider_74 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_78_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_287_real_DATA,
    op_out_ready_0 => channel_287_real_READY,
    op_out_valid_0 => channel_287_real_VALID,
    rst => rst
);

vslider_75 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_79_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_281_real_DATA,
    op_out_ready_0 => channel_281_real_READY,
    op_out_valid_0 => channel_281_real_VALID,
    rst => rst
);

vslider_76 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_80_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_1_real_DATA,
    op_out_ready_0 => channel_1_real_READY,
    op_out_valid_0 => channel_1_real_VALID,
    rst => rst
);

vslider_77 : vslider
port map (
    clk => clk,
    op_in_data_0 => vslider_81_op_in_data_0,
    op_in_ready_0 => open,
    op_in_valid_0 => '1',
    op_out_data_0 => channel_0_real_DATA,
    op_out_ready_0 => channel_0_real_READY,
    op_out_valid_0 => channel_0_real_VALID,
    rst => rst
);

hs_fifo_0 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_276_0_real_DATA,
    buffer_in_ready_0 => channel_276_0_real_READY,
    buffer_in_valid_0 => channel_276_0_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602b8350_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602b8350_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602b8350_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_1 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_9_1_real_DATA,
    buffer_in_ready_0 => channel_9_1_real_READY,
    buffer_in_valid_0 => channel_9_1_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602b8770_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602b8770_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602b8770_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_2 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_16_1_real_DATA,
    buffer_in_ready_0 => channel_16_1_real_READY,
    buffer_in_valid_0 => channel_16_1_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602b8b00_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602b8b00_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602b8b00_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_3 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_23_1_real_DATA,
    buffer_in_ready_0 => channel_23_1_real_READY,
    buffer_in_valid_0 => channel_23_1_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602b8e90_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602b8e90_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602b8e90_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_4 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_30_0_real_DATA,
    buffer_in_ready_0 => channel_30_0_real_READY,
    buffer_in_valid_0 => channel_30_0_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602b9240_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602b9240_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602b9240_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_5 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_37_0_real_DATA,
    buffer_in_ready_0 => channel_37_0_real_READY,
    buffer_in_valid_0 => channel_37_0_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602b9670_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602b9670_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602b9670_real_VALID,
    clk => clk,
    rst => rst
);

const_value_6_1 : const_value_6
generic map (
    value => "0101001001000000000000000000000000"
)
port map (
    clk => clk,
    op_out_data_0 => channel_52_real_DATA,
    op_out_data_1 => channel_99_real_DATA,
    op_out_data_2 => channel_141_real_DATA,
    op_out_data_3 => channel_183_real_DATA,
    op_out_data_4 => channel_225_real_DATA,
    op_out_data_5 => channel_267_real_DATA,
    op_out_ready_0 => channel_52_real_READY,
    op_out_ready_1 => channel_99_real_READY,
    op_out_ready_2 => channel_141_real_READY,
    op_out_ready_3 => channel_183_real_READY,
    op_out_ready_4 => channel_225_real_READY,
    op_out_ready_5 => channel_267_real_READY,
    op_out_valid_0 => channel_52_real_VALID,
    op_out_valid_1 => channel_99_real_VALID,
    op_out_valid_2 => channel_141_real_VALID,
    op_out_valid_3 => channel_183_real_VALID,
    op_out_valid_4 => channel_225_real_VALID,
    op_out_valid_5 => channel_267_real_VALID,
    rst => rst
);

const_value_6_2 : const_value_6
generic map (
    value => "0101000111001011000100010000000000"
)
port map (
    clk => clk,
    op_out_data_0 => channel_59_real_DATA,
    op_out_data_1 => channel_101_real_DATA,
    op_out_data_2 => channel_143_real_DATA,
    op_out_data_3 => channel_185_real_DATA,
    op_out_data_4 => channel_227_real_DATA,
    op_out_data_5 => channel_269_real_DATA,
    op_out_ready_0 => channel_59_real_READY,
    op_out_ready_1 => channel_101_real_READY,
    op_out_ready_2 => channel_143_real_READY,
    op_out_ready_3 => channel_185_real_READY,
    op_out_ready_4 => channel_227_real_READY,
    op_out_ready_5 => channel_269_real_READY,
    op_out_valid_0 => channel_59_real_VALID,
    op_out_valid_1 => channel_101_real_VALID,
    op_out_valid_2 => channel_143_real_VALID,
    op_out_valid_3 => channel_185_real_VALID,
    op_out_valid_4 => channel_227_real_VALID,
    op_out_valid_5 => channel_269_real_VALID,
    rst => rst
);

hs_fifo_6 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_276_1_real_DATA,
    buffer_in_ready_0 => channel_276_1_real_READY,
    buffer_in_valid_0 => channel_276_1_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602c97e0_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602c97e0_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602c97e0_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_7 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_9_0_real_DATA,
    buffer_in_ready_0 => channel_9_0_real_READY,
    buffer_in_valid_0 => channel_9_0_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602c9e30_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602c9e30_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602c9e30_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_8 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_16_0_real_DATA,
    buffer_in_ready_0 => channel_16_0_real_READY,
    buffer_in_valid_0 => channel_16_0_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602ca500_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602ca500_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602ca500_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_9 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_23_0_real_DATA,
    buffer_in_ready_0 => channel_23_0_real_READY,
    buffer_in_valid_0 => channel_23_0_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602cab90_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602cab90_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602cab90_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_10 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_30_1_real_DATA,
    buffer_in_ready_0 => channel_30_1_real_READY,
    buffer_in_valid_0 => channel_30_1_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602cb220_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602cb220_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602cb220_real_VALID,
    clk => clk,
    rst => rst
);

hs_fifo_11 : hs_fifo
generic map (
    buffer_size => 1,
    init => 0,
    ram_width => ram_width
)
port map (
    buffer_in_data_0 => channel_37_1_real_DATA,
    buffer_in_ready_0 => channel_37_1_real_READY,
    buffer_in_valid_0 => channel_37_1_real_VALID,
    buffer_out_data_0 => broadcast_0x7777602cb8b0_real_DATA,
    buffer_out_ready_0 => broadcast_0x7777602cb8b0_real_READY,
    buffer_out_valid_0 => broadcast_0x7777602cb8b0_real_VALID,
    clk => clk,
    rst => rst
);

    -- op_in / op_out connections
    op_in_ready_01  <= channel_64_int_READY;
    op_in_valid_01   <= channel_64_int_VALID;
    op_in_data_01    <= channel_64_int_DATA;
    
    op_in_ready_11   <= channel_51_real_READY;
    op_in_valid_11   <= channel_51_real_VALID;
    op_in_data_11    <= channel_51_real_DATA;
    
    op_out_ready_01  <= broadcast_0x7777602ccf80_real_READY;
    op_out_valid_01  <= broadcast_0x7777602ccf80_real_VALID;
    op_out_data_01   <= broadcast_0x7777602ccf80_real_DATA;

delay_0 : delay
  generic map (
    ram_depth => 524288,
    ram_init  => 0,
    ram_width => ram_width,
    -- (Other generics can be left at their default values or added here if needed)
    SIMULATION_ONLY => 0,
    C_M_AXI_ADDR_WIDTH => 32,
    C_M_AXI_DATA_WIDTH => 32,
    C_NATIVE_DATA_WIDTH => 32,
    C_LENGTH_WIDTH => 12,
    C_FAMILY => "zynq",
    DRAM_START_ADDRESS => X"00080000",
    DRAM_SIZE => 70000000
  )
  port map (
    clk             => clk,
    rst             => rst,
    
    -- op_in / op_out connections
    op_in_ready_0   => channel_64_int_READY,
    op_in_valid_0   => channel_64_int_VALID,
    op_in_data_0    => channel_64_int_DATA,
    
    op_in_ready_1   => channel_51_real_READY,
    op_in_valid_1   => channel_51_real_VALID,
    op_in_data_1    => channel_51_real_DATA,
    
    op_out_ready_0  => broadcast_0x7777602ccf80_real_READY,
    op_out_valid_0  => broadcast_0x7777602ccf80_real_VALID,
    op_out_data_0   => broadcast_0x7777602ccf80_real_DATA,
    
    -- AXI interface connections (assumed to be interface 0)
    md_error        => md_error0,  -- connect to your internal error signal for delay_0
    m_axi_arready   => m_axi_arready0,
    m_axi_arvalid   => m_axi_arvalid0,
    m_axi_araddr    => m_axi_araddr0,
    m_axi_arlen     => m_axi_arlen0,
    m_axi_arsize    => m_axi_arsize0,
    m_axi_arburst   => m_axi_arburst0,
    m_axi_arprot    => m_axi_arprot0,
    m_axi_arcache   => m_axi_arcache0,
    m_axi_rready    => m_axi_rready0,
    m_axi_rvalid    => m_axi_rvalid0,
    m_axi_rdata     => m_axi_rdata0,
    m_axi_rresp     => m_axi_rresp0,
    m_axi_rlast     => m_axi_rlast0,
    m_axi_awready   => m_axi_awready0,
    m_axi_awvalid   => m_axi_awvalid0,
    m_axi_awaddr    => m_axi_awaddr0,
    m_axi_awlen     => m_axi_awlen0,
    m_axi_awsize    => m_axi_awsize0,
    m_axi_awburst   => m_axi_awburst0,
    m_axi_awprot    => m_axi_awprot0,
    m_axi_awcache   => m_axi_awcache0,
    m_axi_wready    => m_axi_wready0,
    m_axi_wvalid    => m_axi_wvalid0,
    m_axi_wdata     => m_axi_wdata0,
    m_axi_wstrb     => m_axi_wstrb0,
    m_axi_wlast     => m_axi_wlast0,
    m_axi_bready    => m_axi_bready0,
    m_axi_bvalid    => m_axi_bvalid0,
    m_axi_bresp     => m_axi_bresp0
  );
  

  op_in_ready_02  <= channel_106_int_READY;
    op_in_valid_02  <= channel_106_int_VALID;
    op_in_data_02   <= channel_106_int_DATA;
    
    op_in_ready_12  <= channel_98_real_READY;
    op_in_valid_12  <= channel_98_real_VALID;
    op_in_data_12   <= channel_98_real_DATA;
    
    op_out_ready_02 <= broadcast_0x7777602cf8e0_real_READY;
    op_out_valid_02 <= broadcast_0x7777602cf8e0_real_VALID;
    op_out_data_02  <= broadcast_0x7777602cf8e0_real_DATA;
  
  -- delay_1 instantiation (with a larger DRAM_SIZE and adjusted start address)
delay_1 : delay
  generic map (
    ram_depth            => 524288,
    ram_init             => 0,
    ram_width            => ram_width,
    SIMULATION_ONLY      => 0,
    C_M_AXI_ADDR_WIDTH   => 32,
    C_M_AXI_DATA_WIDTH   => 32,
    C_NATIVE_DATA_WIDTH  => 32,
    C_LENGTH_WIDTH       => 12,
    C_FAMILY             => "zynq",
    DRAM_START_ADDRESS   => X"01080000",  -- adjusted start address
    DRAM_SIZE            => 100000000
  )
  port map (
    clk             => clk,
    rst             => rst,
    
    -- op_in / op_out connections
    op_in_ready_0   => channel_106_int_READY,
    op_in_valid_0   => channel_106_int_VALID,
    op_in_data_0    => channel_106_int_DATA,
    
    op_in_ready_1   => channel_98_real_READY,
    op_in_valid_1   => channel_98_real_VALID,
    op_in_data_1    => channel_98_real_DATA,
    
    op_out_ready_0  => broadcast_0x7777602cf8e0_real_READY,
    op_out_valid_0  => broadcast_0x7777602cf8e0_real_VALID,
    op_out_data_0   => broadcast_0x7777602cf8e0_real_DATA,
    
    -- AXI interface connections (instance 1)
    md_error        => md_error1,
    m_axi_arready   => m_axi_arready1,
    m_axi_arvalid   => m_axi_arvalid1,
    m_axi_araddr    => m_axi_araddr1,
    m_axi_arlen     => m_axi_arlen1,
    m_axi_arsize    => m_axi_arsize1,
    m_axi_arburst   => m_axi_arburst1,
    m_axi_arprot    => m_axi_arprot1,
    m_axi_arcache   => m_axi_arcache1,
    m_axi_rready    => m_axi_rready1,
    m_axi_rvalid    => m_axi_rvalid1,
    m_axi_rdata     => m_axi_rdata1,
    m_axi_rresp     => m_axi_rresp1,
    m_axi_rlast     => m_axi_rlast1,
    m_axi_awready   => m_axi_awready1,
    m_axi_awvalid   => m_axi_awvalid1,
    m_axi_awaddr    => m_axi_awaddr1,
    m_axi_awlen     => m_axi_awlen1,
    m_axi_awsize    => m_axi_awsize1,
    m_axi_awburst   => m_axi_awburst1,
    m_axi_awprot    => m_axi_awprot1,
    m_axi_awcache   => m_axi_awcache1,
    m_axi_wready    => m_axi_wready1,
    m_axi_wvalid    => m_axi_wvalid1,
    m_axi_wdata     => m_axi_wdata1,
    m_axi_wstrb     => m_axi_wstrb1,
    m_axi_wlast     => m_axi_wlast1,
    m_axi_bready    => m_axi_bready1,
    m_axi_bvalid    => m_axi_bvalid1,
    m_axi_bresp     => m_axi_bresp1
  );


      op_in_ready_03   <= channel_148_int_READY;
    op_in_valid_03   <= channel_148_int_VALID;
    op_in_data_03    <= channel_148_int_DATA;
    
    op_in_ready_13   <= channel_140_real_READY;
    op_in_valid_13   <= channel_140_real_VALID;
    op_in_data_13    <= channel_140_real_DATA;
    
    op_out_ready_03  <= broadcast_0x7777602d21b0_real_READY;
    op_out_valid_03  <= broadcast_0x7777602d21b0_real_VALID;
    op_out_data_03   <= broadcast_0x7777602d21b0_real_DATA;

-- delay_2 instantiation
delay_2 : delay
  generic map (
    ram_depth            => 524288,
    ram_init             => 0,
    ram_width            => ram_width,
    SIMULATION_ONLY      => 0,
    C_M_AXI_ADDR_WIDTH   => 32,
    C_M_AXI_DATA_WIDTH   => 32,
    C_NATIVE_DATA_WIDTH  => 32,
    C_LENGTH_WIDTH       => 12,
    C_FAMILY             => "zynq",
    DRAM_START_ADDRESS   => X"02080000",  -- adjusted start address
    DRAM_SIZE            => 70000000
  )
  port map (
    clk             => clk,
    rst             => rst,
    
    -- op_in / op_out connections
    op_in_ready_0   => channel_148_int_READY,
    op_in_valid_0   => channel_148_int_VALID,
    op_in_data_0    => channel_148_int_DATA,
    
    op_in_ready_1   => channel_140_real_READY,
    op_in_valid_1   => channel_140_real_VALID,
    op_in_data_1    => channel_140_real_DATA,
    
    op_out_ready_0  => broadcast_0x7777602d21b0_real_READY,
    op_out_valid_0  => broadcast_0x7777602d21b0_real_VALID,
    op_out_data_0   => broadcast_0x7777602d21b0_real_DATA,
    
    -- AXI interface connections (instance 2)
    md_error        => md_error2,
    m_axi_arready   => m_axi_arready2,
    m_axi_arvalid   => m_axi_arvalid2,
    m_axi_araddr    => m_axi_araddr2,
    m_axi_arlen     => m_axi_arlen2,
    m_axi_arsize    => m_axi_arsize2,
    m_axi_arburst   => m_axi_arburst2,
    m_axi_arprot    => m_axi_arprot2,
    m_axi_arcache   => m_axi_arcache2,
    m_axi_rready    => m_axi_rready2,
    m_axi_rvalid    => m_axi_rvalid2,
    m_axi_rdata     => m_axi_rdata2,
    m_axi_rresp     => m_axi_rresp2,
    m_axi_rlast     => m_axi_rlast2,
    m_axi_awready   => m_axi_awready2,
    m_axi_awvalid   => m_axi_awvalid2,
    m_axi_awaddr    => m_axi_awaddr2,
    m_axi_awlen     => m_axi_awlen2,
    m_axi_awsize    => m_axi_awsize2,
    m_axi_awburst   => m_axi_awburst2,
    m_axi_awprot    => m_axi_awprot2,
    m_axi_awcache   => m_axi_awcache2,
    m_axi_wready    => m_axi_wready2,
    m_axi_wvalid    => m_axi_wvalid2,
    m_axi_wdata     => m_axi_wdata2,
    m_axi_wstrb     => m_axi_wstrb2,
    m_axi_wlast     => m_axi_wlast2,
    m_axi_bready    => m_axi_bready2,
    m_axi_bvalid    => m_axi_bvalid2,
    m_axi_bresp     => m_axi_bresp2
  );

      -- op_in / op_out connections
    op_in_ready_04   <= channel_190_int_READY;
    op_in_valid_04   <= channel_190_int_VALID;
    op_in_data_04    <= channel_190_int_DATA;
    
    op_in_ready_14   <= channel_182_real_READY;
    op_in_valid_14   <= channel_182_real_VALID;
    op_in_data_14    <= channel_182_real_DATA;
    
    op_out_ready_04  <= broadcast_0x7777602d4b00_real_READY;
    op_out_valid_04  <= broadcast_0x7777602d4b00_real_VALID;
    op_out_data_04   <= broadcast_0x7777602d4b00_real_DATA;

-- delay_3 instantiation
delay_3 : delay
  generic map (
    ram_depth            => 524288,
    ram_init             => 0,
    ram_width            => ram_width,
    SIMULATION_ONLY      => 0,
    C_M_AXI_ADDR_WIDTH   => 32,
    C_M_AXI_DATA_WIDTH   => 32,
    C_NATIVE_DATA_WIDTH  => 32,
    C_LENGTH_WIDTH       => 12,
    C_FAMILY             => "zynq",
    DRAM_START_ADDRESS   => X"03080000",  -- adjusted start address
    DRAM_SIZE            => 70000000
  )
  port map (
    clk             => clk,
    rst             => rst,
    
    -- op_in / op_out connections
    op_in_ready_0   => channel_190_int_READY,
    op_in_valid_0   => channel_190_int_VALID,
    op_in_data_0    => channel_190_int_DATA,
    
    op_in_ready_1   => channel_182_real_READY,
    op_in_valid_1   => channel_182_real_VALID,
    op_in_data_1    => channel_182_real_DATA,
    
    op_out_ready_0  => broadcast_0x7777602d4b00_real_READY,
    op_out_valid_0  => broadcast_0x7777602d4b00_real_VALID,
    op_out_data_0   => broadcast_0x7777602d4b00_real_DATA,
    
    -- AXI interface connections (instance 3)
    md_error        => md_error3,
    m_axi_arready   => m_axi_arready3,
    m_axi_arvalid   => m_axi_arvalid3,
    m_axi_araddr    => m_axi_araddr3,
    m_axi_arlen     => m_axi_arlen3,
    m_axi_arsize    => m_axi_arsize3,
    m_axi_arburst   => m_axi_arburst3,
    m_axi_arprot    => m_axi_arprot3,
    m_axi_arcache   => m_axi_arcache3,
    m_axi_rready    => m_axi_rready3,
    m_axi_rvalid    => m_axi_rvalid3,
    m_axi_rdata     => m_axi_rdata3,
    m_axi_rresp     => m_axi_rresp3,
    m_axi_rlast     => m_axi_rlast3,
    m_axi_awready   => m_axi_awready3,
    m_axi_awvalid   => m_axi_awvalid3,
    m_axi_awaddr    => m_axi_awaddr3,
    m_axi_awlen     => m_axi_awlen3,
    m_axi_awsize    => m_axi_awsize3,
    m_axi_awburst   => m_axi_awburst3,
    m_axi_awprot    => m_axi_awprot3,
    m_axi_awcache   => m_axi_awcache3,
    m_axi_wready    => m_axi_wready3,
    m_axi_wvalid    => m_axi_wvalid3,
    m_axi_wdata     => m_axi_wdata3,
    m_axi_wstrb     => m_axi_wstrb3,
    m_axi_wlast     => m_axi_wlast3,
    m_axi_bready    => m_axi_bready3,
    m_axi_bvalid    => m_axi_bvalid3,
    m_axi_bresp     => m_axi_bresp3
  );

      -- op_in / op_out connections
    op_in_ready_05   <= channel_232_int_READY;
    op_in_valid_05   <= channel_232_int_VALID;
    op_in_data_05   <= channel_232_int_DATA;
    
    op_in_ready_15   <= channel_224_real_READY;
    op_in_valid_15   <= channel_224_real_VALID;
    op_in_data_15   <= channel_224_real_DATA;
    
    op_out_ready_05  <= broadcast_0x7777602d73e0_real_READY;
    op_out_valid_05  <= broadcast_0x7777602d73e0_real_VALID;
    op_out_data_05   <= broadcast_0x7777602d73e0_real_DATA;

-- delay_4 instantiation
delay_4 : delay
  generic map (
    ram_depth            => 524288,
    ram_init             => 0,
    ram_width            => ram_width,
    SIMULATION_ONLY      => 0,
    C_M_AXI_ADDR_WIDTH   => 32,
    C_M_AXI_DATA_WIDTH   => 32,
    C_NATIVE_DATA_WIDTH  => 32,
    C_LENGTH_WIDTH       => 12,
    C_FAMILY             => "zynq",
    DRAM_START_ADDRESS   => X"04080000",  -- adjusted start address
    DRAM_SIZE            => 70000000
  )
  port map (
    clk             => clk,
    rst             => rst,
    
    -- op_in / op_out connections
    op_in_ready_0   => channel_232_int_READY,
    op_in_valid_0   => channel_232_int_VALID,
    op_in_data_0    => channel_232_int_DATA,
    
    op_in_ready_1   => channel_224_real_READY,
    op_in_valid_1   => channel_224_real_VALID,
    op_in_data_1    => channel_224_real_DATA,
    
    op_out_ready_0  => broadcast_0x7777602d73e0_real_READY,
    op_out_valid_0  => broadcast_0x7777602d73e0_real_VALID,
    op_out_data_0   => broadcast_0x7777602d73e0_real_DATA,
    
    -- AXI interface connections (instance 4)
    md_error        => md_error4,
    m_axi_arready   => m_axi_arready4,
    m_axi_arvalid   => m_axi_arvalid4,
    m_axi_araddr    => m_axi_araddr4,
    m_axi_arlen     => m_axi_arlen4,
    m_axi_arsize    => m_axi_arsize4,
    m_axi_arburst   => m_axi_arburst4,
    m_axi_arprot    => m_axi_arprot4,
    m_axi_arcache   => m_axi_arcache4,
    m_axi_rready    => m_axi_rready4,
    m_axi_rvalid    => m_axi_rvalid4,
    m_axi_rdata     => m_axi_rdata4,
    m_axi_rresp     => m_axi_rresp4,
    m_axi_rlast     => m_axi_rlast4,
    m_axi_awready   => m_axi_awready4,
    m_axi_awvalid   => m_axi_awvalid4,
    m_axi_awaddr    => m_axi_awaddr4,
    m_axi_awlen     => m_axi_awlen4,
    m_axi_awsize    => m_axi_awsize4,
    m_axi_awburst   => m_axi_awburst4,
    m_axi_awprot    => m_axi_awprot4,
    m_axi_awcache   => m_axi_awcache4,
    m_axi_wready    => m_axi_wready4,
    m_axi_wvalid    => m_axi_wvalid4,
    m_axi_wdata     => m_axi_wdata4,
    m_axi_wstrb     => m_axi_wstrb4,
    m_axi_wlast     => m_axi_wlast4,
    m_axi_bready    => m_axi_bready4,
    m_axi_bvalid    => m_axi_bvalid4,
    m_axi_bresp     => m_axi_bresp4
  );

      -- op_in / op_out connections
    op_in_ready_06 <= channel_274_int_READY;
    op_in_valid_06 <= channel_274_int_VALID;
    op_in_data_06 <= channel_274_int_DATA;
    
    op_in_ready_16 <= channel_266_real_READY;
    op_in_valid_16 <= channel_266_real_VALID;
    op_in_data_16 <= channel_266_real_DATA;
    
    op_out_ready_06 <= broadcast_0x7777602d9d30_real_READY;
    op_out_valid_06 <= broadcast_0x7777602d9d30_real_VALID;
    op_out_data_06 <= broadcast_0x7777602d9d30_real_DATA;

-- delay_5 instantiation
delay_5 : delay
  generic map (
    ram_depth            => 524288,
    ram_init             => 0,
    ram_width            => ram_width,
    SIMULATION_ONLY      => 0,
    C_M_AXI_ADDR_WIDTH   => 32,
    C_M_AXI_DATA_WIDTH   => 32,
    C_NATIVE_DATA_WIDTH  => 32,
    C_LENGTH_WIDTH       => 12,
    C_FAMILY             => "zynq",
    DRAM_START_ADDRESS   => X"05080000",  -- adjusted start address
    DRAM_SIZE            => 70000000
  )
  port map (
    clk             => clk,
    rst             => rst,
    
    -- op_in / op_out connections
    op_in_ready_0   => channel_274_int_READY,
    op_in_valid_0   => channel_274_int_VALID,
    op_in_data_0    => channel_274_int_DATA,
    
    op_in_ready_1   => channel_266_real_READY,
    op_in_valid_1   => channel_266_real_VALID,
    op_in_data_1    => channel_266_real_DATA,
    
    op_out_ready_0  => broadcast_0x7777602d9d30_real_READY,
    op_out_valid_0  => broadcast_0x7777602d9d30_real_VALID,
    op_out_data_0   => broadcast_0x7777602d9d30_real_DATA,
    
    -- AXI interface connections (instance 5)
    md_error        => md_error5,
    m_axi_arready   => m_axi_arready5,
    m_axi_arvalid   => m_axi_arvalid5,
    m_axi_araddr    => m_axi_araddr5,
    m_axi_arlen     => m_axi_arlen5,
    m_axi_arsize    => m_axi_arsize5,
    m_axi_arburst   => m_axi_arburst5,
    m_axi_arprot    => m_axi_arprot5,
    m_axi_arcache   => m_axi_arcache5,
    m_axi_rready    => m_axi_rready5,
    m_axi_rvalid    => m_axi_rvalid5,
    m_axi_rdata     => m_axi_rdata5,
    m_axi_rresp     => m_axi_rresp5,
    m_axi_rlast     => m_axi_rlast5,
    m_axi_awready   => m_axi_awready5,
    m_axi_awvalid   => m_axi_awvalid5,
    m_axi_awaddr    => m_axi_awaddr5,
    m_axi_awlen     => m_axi_awlen5,
    m_axi_awsize    => m_axi_awsize5,
    m_axi_awburst   => m_axi_awburst5,
    m_axi_awprot    => m_axi_awprot5,
    m_axi_awcache   => m_axi_awcache5,
    m_axi_wready    => m_axi_wready5,
    m_axi_wvalid    => m_axi_wvalid5,
    m_axi_wdata     => m_axi_wdata5,
    m_axi_wstrb     => m_axi_wstrb5,
    m_axi_wlast     => m_axi_wlast5,
    m_axi_bready    => m_axi_bready5,
    m_axi_bvalid    => m_axi_bvalid5,
    m_axi_bresp     => m_axi_bresp5
  );


--delay_1 : delay
--generic map (
--    ram_depth => 524288,
--    ram_init => 0,
--    ram_width => ram_width,
--    SIMULATION_ONLY => 0,
--    C_M_AXI_ADDR_WIDTH => 32,
--    C_M_AXI_DATA_WIDTH => 32,
--    C_NATIVE_DATA_WIDTH => 32,
--    C_LENGTH_WIDTH => 12,
--    C_FAMILY => "zynq",
--    DRAM_START_ADDRESS => X"00080000",
--    DRAM_SIZE => 100000000
--)
--port map (
--    clk => clk,
--    op_in_data_0 => channel_106_int_DATA,
--    op_in_data_1 => channel_98_real_DATA,
--    op_in_ready_0 => channel_106_int_READY,
--    op_in_ready_1 => channel_98_real_READY,
--    op_in_valid_0 => channel_106_int_VALID,
--    op_in_valid_1 => channel_98_real_VALID,
--    op_out_data_0 => broadcast_0x7777602cf8e0_real_DATA,
--    op_out_ready_0 => broadcast_0x7777602cf8e0_real_READY,
--    op_out_valid_0 => broadcast_0x7777602cf8e0_real_VALID,
--    rst => rst
--);

--delay_2 : delay
--generic map (
--    ram_depth => 524288,
--    ram_init => 0,
--    ram_width => ram_width
--)
--port map (
--    clk => clk,
--    op_in_data_0 => channel_148_int_DATA,
--    op_in_data_1 => channel_140_real_DATA,
--    op_in_ready_0 => channel_148_int_READY,
--    op_in_ready_1 => channel_140_real_READY,
--    op_in_valid_0 => channel_148_int_VALID,
--    op_in_valid_1 => channel_140_real_VALID,
--    op_out_data_0 => broadcast_0x7777602d21b0_real_DATA,
--    op_out_ready_0 => broadcast_0x7777602d21b0_real_READY,
--    op_out_valid_0 => broadcast_0x7777602d21b0_real_VALID,
--    rst => rst
--);

--delay_3 : delay
--generic map (
--    ram_depth => 524288,
--    ram_init => 0,
--    ram_width => ram_width
--)
--port map (
--    clk => clk,
--    op_in_data_0 => channel_190_int_DATA,
--    op_in_data_1 => channel_182_real_DATA,
--    op_in_ready_0 => channel_190_int_READY,
--    op_in_ready_1 => channel_182_real_READY,
--    op_in_valid_0 => channel_190_int_VALID,
--    op_in_valid_1 => channel_182_real_VALID,
--    op_out_data_0 => broadcast_0x7777602d4b00_real_DATA,
--    op_out_ready_0 => broadcast_0x7777602d4b00_real_READY,
--    op_out_valid_0 => broadcast_0x7777602d4b00_real_VALID,
--    rst => rst
--);

--delay_4 : delay
--generic map (
--    ram_depth => 524288,
--    ram_init => 0,
--    ram_width => ram_width
--)
--port map (
--    clk => clk,
--    op_in_data_0 => channel_232_int_DATA,
--    op_in_data_1 => channel_224_real_DATA,
--    op_in_ready_0 => channel_232_int_READY,
--    op_in_ready_1 => channel_224_real_READY,
--    op_in_valid_0 => channel_232_int_VALID,
--    op_in_valid_1 => channel_224_real_VALID,
--    op_out_data_0 => broadcast_0x7777602d73e0_real_DATA,
--    op_out_ready_0 => broadcast_0x7777602d73e0_real_READY,
--    op_out_valid_0 => broadcast_0x7777602d73e0_real_VALID,
--    rst => rst
--);

--delay_5 : delay
--generic map (
--    ram_depth => 524288,
--    ram_init => 0,
--    ram_width => ram_width
--)
--port map (
--    clk => clk,
--    op_in_data_0 => channel_274_int_DATA,
--    op_in_data_1 => channel_266_real_DATA,
--    op_in_ready_0 => channel_274_int_READY,
--    op_in_ready_1 => channel_266_real_READY,
--    op_in_valid_0 => channel_274_int_VALID,
--    op_in_valid_1 => channel_266_real_VALID,
--    op_out_data_0 => broadcast_0x7777602d9d30_real_DATA,
--    op_out_ready_0 => broadcast_0x7777602d9d30_real_READY,
--    op_out_valid_0 => broadcast_0x7777602d9d30_real_VALID,
--    rst => rst
--);

broadcast_8_0 : broadcast_8
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => tapiir_in_data_0,
    op_in_ready_0 => tapiir_in_ready_0,
    op_in_valid_0 => tapiir_in_valid_0,
    op_out_data_0 => channel_44_real_vect_DATA,
    op_out_data_1 => channel_91_real_vect_DATA,
    op_out_data_2 => channel_133_real_vect_DATA,
    op_out_data_3 => channel_175_real_vect_DATA,
    op_out_data_4 => channel_217_real_vect_DATA,
    op_out_data_5 => channel_259_real_vect_DATA,
    op_out_data_6 => channel_312_real_vect_DATA,
    op_out_data_7 => channel_345_real_vect_DATA,
    op_out_ready_0 => channel_44_real_vect_READY,
    op_out_ready_1 => channel_91_real_vect_READY,
    op_out_ready_2 => channel_133_real_vect_READY,
    op_out_ready_3 => channel_175_real_vect_READY,
    op_out_ready_4 => channel_217_real_vect_READY,
    op_out_ready_5 => channel_259_real_vect_READY,
    op_out_ready_6 => channel_312_real_vect_READY,
    op_out_ready_7 => channel_345_real_vect_READY,
    op_out_valid_0 => channel_44_real_vect_VALID,
    op_out_valid_1 => channel_91_real_vect_VALID,
    op_out_valid_2 => channel_133_real_vect_VALID,
    op_out_valid_3 => channel_175_real_vect_VALID,
    op_out_valid_4 => channel_217_real_vect_VALID,
    op_out_valid_5 => channel_259_real_vect_VALID,
    op_out_valid_6 => channel_312_real_vect_VALID,
    op_out_valid_7 => channel_345_real_vect_VALID,
    rst => rst
);

broadcast_8_1 : broadcast_8
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => tapiir_in_data_1,
    op_in_ready_0 => tapiir_in_ready_1,
    op_in_valid_0 => tapiir_in_valid_1,
    op_out_data_0 => channel_48_real_vect_DATA,
    op_out_data_1 => channel_95_real_vect_DATA,
    op_out_data_2 => channel_137_real_vect_DATA,
    op_out_data_3 => channel_179_real_vect_DATA,
    op_out_data_4 => channel_221_real_vect_DATA,
    op_out_data_5 => channel_263_real_vect_DATA,
    op_out_data_6 => channel_316_real_vect_DATA,
    op_out_data_7 => channel_349_real_vect_DATA,
    op_out_ready_0 => channel_48_real_vect_READY,
    op_out_ready_1 => channel_95_real_vect_READY,
    op_out_ready_2 => channel_137_real_vect_READY,
    op_out_ready_3 => channel_179_real_vect_READY,
    op_out_ready_4 => channel_221_real_vect_READY,
    op_out_ready_5 => channel_263_real_vect_READY,
    op_out_ready_6 => channel_316_real_vect_READY,
    op_out_ready_7 => channel_349_real_vect_READY,
    op_out_valid_0 => channel_48_real_vect_VALID,
    op_out_valid_1 => channel_95_real_vect_VALID,
    op_out_valid_2 => channel_137_real_vect_VALID,
    op_out_valid_3 => channel_179_real_vect_VALID,
    op_out_valid_4 => channel_221_real_vect_VALID,
    op_out_valid_5 => channel_263_real_vect_VALID,
    op_out_valid_6 => channel_316_real_vect_VALID,
    op_out_valid_7 => channel_349_real_vect_VALID,
    rst => rst
);

broadcast_2_0 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602b8350_real_DATA,
    op_in_ready_0 => broadcast_0x7777602b8350_real_READY,
    op_in_valid_0 => broadcast_0x7777602b8350_real_VALID,
    op_out_data_0 => channel_279_real_DATA,
    op_out_data_1 => channel_322_real_DATA,
    op_out_ready_0 => channel_279_real_READY,
    op_out_ready_1 => channel_322_real_READY,
    op_out_valid_0 => channel_279_real_VALID,
    op_out_valid_1 => channel_322_real_VALID,
    rst => rst
);

broadcast_2_1 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602b8770_real_DATA,
    op_in_ready_0 => broadcast_0x7777602b8770_real_READY,
    op_in_valid_0 => broadcast_0x7777602b8770_real_VALID,
    op_out_data_0 => channel_284_real_DATA,
    op_out_data_1 => channel_325_real_DATA,
    op_out_ready_0 => channel_284_real_READY,
    op_out_ready_1 => channel_325_real_READY,
    op_out_valid_0 => channel_284_real_VALID,
    op_out_valid_1 => channel_325_real_VALID,
    rst => rst
);

broadcast_2_2 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602b8b00_real_DATA,
    op_in_ready_0 => broadcast_0x7777602b8b00_real_READY,
    op_in_valid_0 => broadcast_0x7777602b8b00_real_VALID,
    op_out_data_0 => channel_290_real_DATA,
    op_out_data_1 => channel_329_real_DATA,
    op_out_ready_0 => channel_290_real_READY,
    op_out_ready_1 => channel_329_real_READY,
    op_out_valid_0 => channel_290_real_VALID,
    op_out_valid_1 => channel_329_real_VALID,
    rst => rst
);

broadcast_2_3 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602b8e90_real_DATA,
    op_in_ready_0 => broadcast_0x7777602b8e90_real_READY,
    op_in_valid_0 => broadcast_0x7777602b8e90_real_VALID,
    op_out_data_0 => channel_296_real_DATA,
    op_out_data_1 => channel_333_real_DATA,
    op_out_ready_0 => channel_296_real_READY,
    op_out_ready_1 => channel_333_real_READY,
    op_out_valid_0 => channel_296_real_VALID,
    op_out_valid_1 => channel_333_real_VALID,
    rst => rst
);

broadcast_2_4 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602b9240_real_DATA,
    op_in_ready_0 => broadcast_0x7777602b9240_real_READY,
    op_in_valid_0 => broadcast_0x7777602b9240_real_VALID,
    op_out_data_0 => channel_302_real_DATA,
    op_out_data_1 => channel_337_real_DATA,
    op_out_ready_0 => channel_302_real_READY,
    op_out_ready_1 => channel_337_real_READY,
    op_out_valid_0 => channel_302_real_VALID,
    op_out_valid_1 => channel_337_real_VALID,
    rst => rst
);

broadcast_2_5 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602b9670_real_DATA,
    op_in_ready_0 => broadcast_0x7777602b9670_real_READY,
    op_in_valid_0 => broadcast_0x7777602b9670_real_VALID,
    op_out_data_0 => channel_308_real_DATA,
    op_out_data_1 => channel_341_real_DATA,
    op_out_ready_0 => channel_308_real_READY,
    op_out_ready_1 => channel_341_real_READY,
    op_out_valid_0 => channel_308_real_VALID,
    op_out_valid_1 => channel_341_real_VALID,
    rst => rst
);

broadcast_6_0 : broadcast_6
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602c97e0_real_DATA,
    op_in_ready_0 => broadcast_0x7777602c97e0_real_READY,
    op_in_valid_0 => broadcast_0x7777602c97e0_real_VALID,
    op_out_data_0 => channel_6_real_DATA,
    op_out_data_1 => channel_68_real_DATA,
    op_out_data_2 => channel_110_real_DATA,
    op_out_data_3 => channel_152_real_DATA,
    op_out_data_4 => channel_194_real_DATA,
    op_out_data_5 => channel_236_real_DATA,
    op_out_ready_0 => channel_6_real_READY,
    op_out_ready_1 => channel_68_real_READY,
    op_out_ready_2 => channel_110_real_READY,
    op_out_ready_3 => channel_152_real_READY,
    op_out_ready_4 => channel_194_real_READY,
    op_out_ready_5 => channel_236_real_READY,
    op_out_valid_0 => channel_6_real_VALID,
    op_out_valid_1 => channel_68_real_VALID,
    op_out_valid_2 => channel_110_real_VALID,
    op_out_valid_3 => channel_152_real_VALID,
    op_out_valid_4 => channel_194_real_VALID,
    op_out_valid_5 => channel_236_real_VALID,
    rst => rst
);

broadcast_6_1 : broadcast_6
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602c9e30_real_DATA,
    op_in_ready_0 => broadcast_0x7777602c9e30_real_READY,
    op_in_valid_0 => broadcast_0x7777602c9e30_real_VALID,
    op_out_data_0 => channel_12_real_DATA,
    op_out_data_1 => channel_71_real_DATA,
    op_out_data_2 => channel_113_real_DATA,
    op_out_data_3 => channel_155_real_DATA,
    op_out_data_4 => channel_197_real_DATA,
    op_out_data_5 => channel_239_real_DATA,
    op_out_ready_0 => channel_12_real_READY,
    op_out_ready_1 => channel_71_real_READY,
    op_out_ready_2 => channel_113_real_READY,
    op_out_ready_3 => channel_155_real_READY,
    op_out_ready_4 => channel_197_real_READY,
    op_out_ready_5 => channel_239_real_READY,
    op_out_valid_0 => channel_12_real_VALID,
    op_out_valid_1 => channel_71_real_VALID,
    op_out_valid_2 => channel_113_real_VALID,
    op_out_valid_3 => channel_155_real_VALID,
    op_out_valid_4 => channel_197_real_VALID,
    op_out_valid_5 => channel_239_real_VALID,
    rst => rst
);

broadcast_6_2 : broadcast_6
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602ca500_real_DATA,
    op_in_ready_0 => broadcast_0x7777602ca500_real_READY,
    op_in_valid_0 => broadcast_0x7777602ca500_real_VALID,
    op_out_data_0 => channel_19_real_DATA,
    op_out_data_1 => channel_75_real_DATA,
    op_out_data_2 => channel_117_real_DATA,
    op_out_data_3 => channel_159_real_DATA,
    op_out_data_4 => channel_201_real_DATA,
    op_out_data_5 => channel_243_real_DATA,
    op_out_ready_0 => channel_19_real_READY,
    op_out_ready_1 => channel_75_real_READY,
    op_out_ready_2 => channel_117_real_READY,
    op_out_ready_3 => channel_159_real_READY,
    op_out_ready_4 => channel_201_real_READY,
    op_out_ready_5 => channel_243_real_READY,
    op_out_valid_0 => channel_19_real_VALID,
    op_out_valid_1 => channel_75_real_VALID,
    op_out_valid_2 => channel_117_real_VALID,
    op_out_valid_3 => channel_159_real_VALID,
    op_out_valid_4 => channel_201_real_VALID,
    op_out_valid_5 => channel_243_real_VALID,
    rst => rst
);

broadcast_6_3 : broadcast_6
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602cab90_real_DATA,
    op_in_ready_0 => broadcast_0x7777602cab90_real_READY,
    op_in_valid_0 => broadcast_0x7777602cab90_real_VALID,
    op_out_data_0 => channel_26_real_DATA,
    op_out_data_1 => channel_79_real_DATA,
    op_out_data_2 => channel_121_real_DATA,
    op_out_data_3 => channel_163_real_DATA,
    op_out_data_4 => channel_205_real_DATA,
    op_out_data_5 => channel_247_real_DATA,
    op_out_ready_0 => channel_26_real_READY,
    op_out_ready_1 => channel_79_real_READY,
    op_out_ready_2 => channel_121_real_READY,
    op_out_ready_3 => channel_163_real_READY,
    op_out_ready_4 => channel_205_real_READY,
    op_out_ready_5 => channel_247_real_READY,
    op_out_valid_0 => channel_26_real_VALID,
    op_out_valid_1 => channel_79_real_VALID,
    op_out_valid_2 => channel_121_real_VALID,
    op_out_valid_3 => channel_163_real_VALID,
    op_out_valid_4 => channel_205_real_VALID,
    op_out_valid_5 => channel_247_real_VALID,
    rst => rst
);

broadcast_6_4 : broadcast_6
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602cb220_real_DATA,
    op_in_ready_0 => broadcast_0x7777602cb220_real_READY,
    op_in_valid_0 => broadcast_0x7777602cb220_real_VALID,
    op_out_data_0 => channel_33_real_DATA,
    op_out_data_1 => channel_83_real_DATA,
    op_out_data_2 => channel_125_real_DATA,
    op_out_data_3 => channel_167_real_DATA,
    op_out_data_4 => channel_209_real_DATA,
    op_out_data_5 => channel_251_real_DATA,
    op_out_ready_0 => channel_33_real_READY,
    op_out_ready_1 => channel_83_real_READY,
    op_out_ready_2 => channel_125_real_READY,
    op_out_ready_3 => channel_167_real_READY,
    op_out_ready_4 => channel_209_real_READY,
    op_out_ready_5 => channel_251_real_READY,
    op_out_valid_0 => channel_33_real_VALID,
    op_out_valid_1 => channel_83_real_VALID,
    op_out_valid_2 => channel_125_real_VALID,
    op_out_valid_3 => channel_167_real_VALID,
    op_out_valid_4 => channel_209_real_VALID,
    op_out_valid_5 => channel_251_real_VALID,
    rst => rst
);

broadcast_6_5 : broadcast_6
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602cb8b0_real_DATA,
    op_in_ready_0 => broadcast_0x7777602cb8b0_real_READY,
    op_in_valid_0 => broadcast_0x7777602cb8b0_real_VALID,
    op_out_data_0 => channel_40_real_DATA,
    op_out_data_1 => channel_87_real_DATA,
    op_out_data_2 => channel_129_real_DATA,
    op_out_data_3 => channel_171_real_DATA,
    op_out_data_4 => channel_213_real_DATA,
    op_out_data_5 => channel_255_real_DATA,
    op_out_ready_0 => channel_40_real_READY,
    op_out_ready_1 => channel_87_real_READY,
    op_out_ready_2 => channel_129_real_READY,
    op_out_ready_3 => channel_171_real_READY,
    op_out_ready_4 => channel_213_real_READY,
    op_out_ready_5 => channel_255_real_READY,
    op_out_valid_0 => channel_40_real_VALID,
    op_out_valid_1 => channel_87_real_VALID,
    op_out_valid_2 => channel_129_real_VALID,
    op_out_valid_3 => channel_171_real_VALID,
    op_out_valid_4 => channel_213_real_VALID,
    op_out_valid_5 => channel_255_real_VALID,
    rst => rst
);

broadcast_2_6 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602ccf80_real_DATA,
    op_in_ready_0 => broadcast_0x7777602ccf80_real_READY,
    op_in_valid_0 => broadcast_0x7777602ccf80_real_VALID,
    op_out_data_0 => channel_9_0_real_DATA,
    op_out_data_1 => channel_9_1_real_DATA,
    op_out_ready_0 => channel_9_0_real_READY,
    op_out_ready_1 => channel_9_1_real_READY,
    op_out_valid_0 => channel_9_0_real_VALID,
    op_out_valid_1 => channel_9_1_real_VALID,
    rst => rst
);

broadcast_2_7 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602cf8e0_real_DATA,
    op_in_ready_0 => broadcast_0x7777602cf8e0_real_READY,
    op_in_valid_0 => broadcast_0x7777602cf8e0_real_VALID,
    op_out_data_0 => channel_16_0_real_DATA,
    op_out_data_1 => channel_16_1_real_DATA,
    op_out_ready_0 => channel_16_0_real_READY,
    op_out_ready_1 => channel_16_1_real_READY,
    op_out_valid_0 => channel_16_0_real_VALID,
    op_out_valid_1 => channel_16_1_real_VALID,
    rst => rst
);

broadcast_2_8 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602d21b0_real_DATA,
    op_in_ready_0 => broadcast_0x7777602d21b0_real_READY,
    op_in_valid_0 => broadcast_0x7777602d21b0_real_VALID,
    op_out_data_0 => channel_23_0_real_DATA,
    op_out_data_1 => channel_23_1_real_DATA,
    op_out_ready_0 => channel_23_0_real_READY,
    op_out_ready_1 => channel_23_1_real_READY,
    op_out_valid_0 => channel_23_0_real_VALID,
    op_out_valid_1 => channel_23_1_real_VALID,
    rst => rst
);

broadcast_2_9 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602d4b00_real_DATA,
    op_in_ready_0 => broadcast_0x7777602d4b00_real_READY,
    op_in_valid_0 => broadcast_0x7777602d4b00_real_VALID,
    op_out_data_0 => channel_30_0_real_DATA,
    op_out_data_1 => channel_30_1_real_DATA,
    op_out_ready_0 => channel_30_0_real_READY,
    op_out_ready_1 => channel_30_1_real_READY,
    op_out_valid_0 => channel_30_0_real_VALID,
    op_out_valid_1 => channel_30_1_real_VALID,
    rst => rst
);

broadcast_2_10 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602d73e0_real_DATA,
    op_in_ready_0 => broadcast_0x7777602d73e0_real_READY,
    op_in_valid_0 => broadcast_0x7777602d73e0_real_VALID,
    op_out_data_0 => channel_37_0_real_DATA,
    op_out_data_1 => channel_37_1_real_DATA,
    op_out_ready_0 => channel_37_0_real_READY,
    op_out_ready_1 => channel_37_1_real_READY,
    op_out_valid_0 => channel_37_0_real_VALID,
    op_out_valid_1 => channel_37_1_real_VALID,
    rst => rst
);

broadcast_2_11 : broadcast_2
generic map (
    bit_width => ram_width
)
port map (
    clk => clk,
    op_in_data_0 => broadcast_0x7777602d9d30_real_DATA,
    op_in_ready_0 => broadcast_0x7777602d9d30_real_READY,
    op_in_valid_0 => broadcast_0x7777602d9d30_real_VALID,
    op_out_data_0 => channel_276_0_real_DATA,
    op_out_data_1 => channel_276_1_real_DATA,
    op_out_ready_0 => channel_276_0_real_READY,
    op_out_ready_1 => channel_276_1_real_READY,
    op_out_valid_0 => channel_276_0_real_VALID,
    op_out_valid_1 => channel_276_1_real_VALID,
    rst => rst
);

float2int_0 : float2int
port map (
    clk => clk,
    op_in_data_0 => channel_772_real_DATA,
    op_in_ready_0 => channel_772_real_READY,
    op_in_valid_0 => channel_772_real_VALID,
    op_out_data_0 => channel_774_int_DATA,
    op_out_ready_0 => channel_774_int_READY,
    op_out_valid_0 => channel_774_int_VALID,
    rst => rst
);

input_selector_6_0 : input_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_63_real_DATA,
    op_in_data_1 => channel_105_real_DATA,
    op_in_data_2 => channel_147_real_DATA,
    op_in_data_3 => channel_189_real_DATA,
    op_in_data_4 => channel_231_real_DATA,
    op_in_data_5 => channel_273_real_DATA,
    op_in_ready_0 => channel_63_real_READY,
    op_in_ready_1 => channel_105_real_READY,
    op_in_ready_2 => channel_147_real_READY,
    op_in_ready_3 => channel_189_real_READY,
    op_in_ready_4 => channel_231_real_READY,
    op_in_ready_5 => channel_273_real_READY,
    op_in_valid_0 => channel_63_real_VALID,
    op_in_valid_1 => channel_105_real_VALID,
    op_in_valid_2 => channel_147_real_VALID,
    op_in_valid_3 => channel_189_real_VALID,
    op_in_valid_4 => channel_231_real_VALID,
    op_in_valid_5 => channel_273_real_VALID,
    op_out_data_0 => channel_772_real_DATA,
    op_out_ready_0 => channel_772_real_READY,
    op_out_valid_0 => channel_772_real_VALID,
    rst => rst
);

output_selector_6_0 : output_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_774_int_DATA,
    op_in_ready_0 => channel_774_int_READY,
    op_in_valid_0 => channel_774_int_VALID,
    op_out_data_0 => channel_64_int_DATA,
    op_out_data_1 => channel_106_int_DATA,
    op_out_data_2 => channel_148_int_DATA,
    op_out_data_3 => channel_190_int_DATA,
    op_out_data_4 => channel_232_int_DATA,
    op_out_data_5 => channel_274_int_DATA,
    op_out_ready_0 => channel_64_int_READY,
    op_out_ready_1 => channel_106_int_READY,
    op_out_ready_2 => channel_148_int_READY,
    op_out_ready_3 => channel_190_int_READY,
    op_out_ready_4 => channel_232_int_READY,
    op_out_ready_5 => channel_274_int_READY,
    op_out_valid_0 => channel_64_int_VALID,
    op_out_valid_1 => channel_106_int_VALID,
    op_out_valid_2 => channel_148_int_VALID,
    op_out_valid_3 => channel_190_int_VALID,
    op_out_valid_4 => channel_232_int_VALID,
    op_out_valid_5 => channel_274_int_VALID,
    rst => rst
);

fp_add_0 : fp_add
port map (
    clk => clk,
    op_in_data_0 => channel_838_real_DATA,
    op_in_data_1 => channel_896_real_DATA,
    op_in_ready_0 => channel_838_real_READY,
    op_in_ready_1 => channel_896_real_READY,
    op_in_valid_0 => channel_838_real_VALID,
    op_in_valid_1 => channel_896_real_VALID,
    op_out_data_0 => channel_898_real_DATA,
    op_out_ready_0 => channel_898_real_READY,
    op_out_valid_0 => channel_898_real_VALID,
    rst => rst
);

input_selector_56_0 : input_selector_56
generic map (
    num_phases => 56
)
port map (
    clk => clk,
    op_in_data_0 => channel_7_real_DATA,
    op_in_data_1 => channel_69_real_DATA,
    op_in_data_10 => channel_115_real_DATA,
    op_in_data_11 => channel_157_real_DATA,
    op_in_data_12 => channel_199_real_DATA,
    op_in_data_13 => channel_241_real_DATA,
    op_in_data_14 => channel_286_real_DATA,
    op_in_data_15 => channel_327_real_DATA,
    op_in_data_16 => channel_21_real_DATA,
    op_in_data_17 => channel_77_real_DATA,
    op_in_data_18 => channel_119_real_DATA,
    op_in_data_19 => channel_161_real_DATA,
    op_in_data_2 => channel_111_real_DATA,
    op_in_data_20 => channel_203_real_DATA,
    op_in_data_21 => channel_245_real_DATA,
    op_in_data_22 => channel_292_real_DATA,
    op_in_data_23 => channel_331_real_DATA,
    op_in_data_24 => channel_28_real_DATA,
    op_in_data_25 => channel_81_real_DATA,
    op_in_data_26 => channel_123_real_DATA,
    op_in_data_27 => channel_165_real_DATA,
    op_in_data_28 => channel_207_real_DATA,
    op_in_data_29 => channel_249_real_DATA,
    op_in_data_3 => channel_153_real_DATA,
    op_in_data_30 => channel_298_real_DATA,
    op_in_data_31 => channel_335_real_DATA,
    op_in_data_32 => channel_35_real_DATA,
    op_in_data_33 => channel_85_real_DATA,
    op_in_data_34 => channel_127_real_DATA,
    op_in_data_35 => channel_169_real_DATA,
    op_in_data_36 => channel_211_real_DATA,
    op_in_data_37 => channel_253_real_DATA,
    op_in_data_38 => channel_304_real_DATA,
    op_in_data_39 => channel_339_real_DATA,
    op_in_data_4 => channel_195_real_DATA,
    op_in_data_40 => channel_42_real_DATA,
    op_in_data_41 => channel_89_real_DATA,
    op_in_data_42 => channel_131_real_DATA,
    op_in_data_43 => channel_173_real_DATA,
    op_in_data_44 => channel_215_real_DATA,
    op_in_data_45 => channel_257_real_DATA,
    op_in_data_46 => channel_310_real_DATA,
    op_in_data_47 => channel_343_real_DATA,
    op_in_data_48 => channel_46_real_DATA,
    op_in_data_49 => channel_93_real_DATA,
    op_in_data_5 => channel_237_real_DATA,
    op_in_data_50 => channel_135_real_DATA,
    op_in_data_51 => channel_177_real_DATA,
    op_in_data_52 => channel_219_real_DATA,
    op_in_data_53 => channel_261_real_DATA,
    op_in_data_54 => channel_314_real_DATA,
    op_in_data_55 => channel_347_real_DATA,
    op_in_data_6 => channel_280_real_DATA,
    op_in_data_7 => channel_323_real_DATA,
    op_in_data_8 => channel_14_real_DATA,
    op_in_data_9 => channel_73_real_DATA,
    op_in_ready_0 => channel_7_real_READY,
    op_in_ready_1 => channel_69_real_READY,
    op_in_ready_10 => channel_115_real_READY,
    op_in_ready_11 => channel_157_real_READY,
    op_in_ready_12 => channel_199_real_READY,
    op_in_ready_13 => channel_241_real_READY,
    op_in_ready_14 => channel_286_real_READY,
    op_in_ready_15 => channel_327_real_READY,
    op_in_ready_16 => channel_21_real_READY,
    op_in_ready_17 => channel_77_real_READY,
    op_in_ready_18 => channel_119_real_READY,
    op_in_ready_19 => channel_161_real_READY,
    op_in_ready_2 => channel_111_real_READY,
    op_in_ready_20 => channel_203_real_READY,
    op_in_ready_21 => channel_245_real_READY,
    op_in_ready_22 => channel_292_real_READY,
    op_in_ready_23 => channel_331_real_READY,
    op_in_ready_24 => channel_28_real_READY,
    op_in_ready_25 => channel_81_real_READY,
    op_in_ready_26 => channel_123_real_READY,
    op_in_ready_27 => channel_165_real_READY,
    op_in_ready_28 => channel_207_real_READY,
    op_in_ready_29 => channel_249_real_READY,
    op_in_ready_3 => channel_153_real_READY,
    op_in_ready_30 => channel_298_real_READY,
    op_in_ready_31 => channel_335_real_READY,
    op_in_ready_32 => channel_35_real_READY,
    op_in_ready_33 => channel_85_real_READY,
    op_in_ready_34 => channel_127_real_READY,
    op_in_ready_35 => channel_169_real_READY,
    op_in_ready_36 => channel_211_real_READY,
    op_in_ready_37 => channel_253_real_READY,
    op_in_ready_38 => channel_304_real_READY,
    op_in_ready_39 => channel_339_real_READY,
    op_in_ready_4 => channel_195_real_READY,
    op_in_ready_40 => channel_42_real_READY,
    op_in_ready_41 => channel_89_real_READY,
    op_in_ready_42 => channel_131_real_READY,
    op_in_ready_43 => channel_173_real_READY,
    op_in_ready_44 => channel_215_real_READY,
    op_in_ready_45 => channel_257_real_READY,
    op_in_ready_46 => channel_310_real_READY,
    op_in_ready_47 => channel_343_real_READY,
    op_in_ready_48 => channel_46_real_READY,
    op_in_ready_49 => channel_93_real_READY,
    op_in_ready_5 => channel_237_real_READY,
    op_in_ready_50 => channel_135_real_READY,
    op_in_ready_51 => channel_177_real_READY,
    op_in_ready_52 => channel_219_real_READY,
    op_in_ready_53 => channel_261_real_READY,
    op_in_ready_54 => channel_314_real_READY,
    op_in_ready_55 => channel_347_real_READY,
    op_in_ready_6 => channel_280_real_READY,
    op_in_ready_7 => channel_323_real_READY,
    op_in_ready_8 => channel_14_real_READY,
    op_in_ready_9 => channel_73_real_READY,
    op_in_valid_0 => channel_7_real_VALID,
    op_in_valid_1 => channel_69_real_VALID,
    op_in_valid_10 => channel_115_real_VALID,
    op_in_valid_11 => channel_157_real_VALID,
    op_in_valid_12 => channel_199_real_VALID,
    op_in_valid_13 => channel_241_real_VALID,
    op_in_valid_14 => channel_286_real_VALID,
    op_in_valid_15 => channel_327_real_VALID,
    op_in_valid_16 => channel_21_real_VALID,
    op_in_valid_17 => channel_77_real_VALID,
    op_in_valid_18 => channel_119_real_VALID,
    op_in_valid_19 => channel_161_real_VALID,
    op_in_valid_2 => channel_111_real_VALID,
    op_in_valid_20 => channel_203_real_VALID,
    op_in_valid_21 => channel_245_real_VALID,
    op_in_valid_22 => channel_292_real_VALID,
    op_in_valid_23 => channel_331_real_VALID,
    op_in_valid_24 => channel_28_real_VALID,
    op_in_valid_25 => channel_81_real_VALID,
    op_in_valid_26 => channel_123_real_VALID,
    op_in_valid_27 => channel_165_real_VALID,
    op_in_valid_28 => channel_207_real_VALID,
    op_in_valid_29 => channel_249_real_VALID,
    op_in_valid_3 => channel_153_real_VALID,
    op_in_valid_30 => channel_298_real_VALID,
    op_in_valid_31 => channel_335_real_VALID,
    op_in_valid_32 => channel_35_real_VALID,
    op_in_valid_33 => channel_85_real_VALID,
    op_in_valid_34 => channel_127_real_VALID,
    op_in_valid_35 => channel_169_real_VALID,
    op_in_valid_36 => channel_211_real_VALID,
    op_in_valid_37 => channel_253_real_VALID,
    op_in_valid_38 => channel_304_real_VALID,
    op_in_valid_39 => channel_339_real_VALID,
    op_in_valid_4 => channel_195_real_VALID,
    op_in_valid_40 => channel_42_real_VALID,
    op_in_valid_41 => channel_89_real_VALID,
    op_in_valid_42 => channel_131_real_VALID,
    op_in_valid_43 => channel_173_real_VALID,
    op_in_valid_44 => channel_215_real_VALID,
    op_in_valid_45 => channel_257_real_VALID,
    op_in_valid_46 => channel_310_real_VALID,
    op_in_valid_47 => channel_343_real_VALID,
    op_in_valid_48 => channel_46_real_VALID,
    op_in_valid_49 => channel_93_real_VALID,
    op_in_valid_5 => channel_237_real_VALID,
    op_in_valid_50 => channel_135_real_VALID,
    op_in_valid_51 => channel_177_real_VALID,
    op_in_valid_52 => channel_219_real_VALID,
    op_in_valid_53 => channel_261_real_VALID,
    op_in_valid_54 => channel_314_real_VALID,
    op_in_valid_55 => channel_347_real_VALID,
    op_in_valid_6 => channel_280_real_VALID,
    op_in_valid_7 => channel_323_real_VALID,
    op_in_valid_8 => channel_14_real_VALID,
    op_in_valid_9 => channel_73_real_VALID,
    op_out_data_0 => channel_838_real_DATA,
    op_out_ready_0 => channel_838_real_READY,
    op_out_valid_0 => channel_838_real_VALID,
    rst => rst
);

input_selector_56_1 : input_selector_56
generic map (
    num_phases => 56
)
port map (
    clk => clk,
    op_in_data_0 => channel_13_real_DATA,
    op_in_data_1 => channel_72_real_DATA,
    op_in_data_10 => channel_118_real_DATA,
    op_in_data_11 => channel_160_real_DATA,
    op_in_data_12 => channel_202_real_DATA,
    op_in_data_13 => channel_244_real_DATA,
    op_in_data_14 => channel_291_real_DATA,
    op_in_data_15 => channel_330_real_DATA,
    op_in_data_16 => channel_27_real_DATA,
    op_in_data_17 => channel_80_real_DATA,
    op_in_data_18 => channel_122_real_DATA,
    op_in_data_19 => channel_164_real_DATA,
    op_in_data_2 => channel_114_real_DATA,
    op_in_data_20 => channel_206_real_DATA,
    op_in_data_21 => channel_248_real_DATA,
    op_in_data_22 => channel_297_real_DATA,
    op_in_data_23 => channel_334_real_DATA,
    op_in_data_24 => channel_34_real_DATA,
    op_in_data_25 => channel_84_real_DATA,
    op_in_data_26 => channel_126_real_DATA,
    op_in_data_27 => channel_168_real_DATA,
    op_in_data_28 => channel_210_real_DATA,
    op_in_data_29 => channel_252_real_DATA,
    op_in_data_3 => channel_156_real_DATA,
    op_in_data_30 => channel_303_real_DATA,
    op_in_data_31 => channel_338_real_DATA,
    op_in_data_32 => channel_41_real_DATA,
    op_in_data_33 => channel_88_real_DATA,
    op_in_data_34 => channel_130_real_DATA,
    op_in_data_35 => channel_172_real_DATA,
    op_in_data_36 => channel_214_real_DATA,
    op_in_data_37 => channel_256_real_DATA,
    op_in_data_38 => channel_309_real_DATA,
    op_in_data_39 => channel_342_real_DATA,
    op_in_data_4 => channel_198_real_DATA,
    op_in_data_40 => channel_45_real_vect_DATA,
    op_in_data_41 => channel_92_real_vect_DATA,
    op_in_data_42 => channel_134_real_vect_DATA,
    op_in_data_43 => channel_176_real_vect_DATA,
    op_in_data_44 => channel_218_real_vect_DATA,
    op_in_data_45 => channel_260_real_vect_DATA,
    op_in_data_46 => channel_313_real_vect_DATA,
    op_in_data_47 => channel_346_real_vect_DATA,
    op_in_data_48 => channel_49_real_vect_DATA,
    op_in_data_49 => channel_96_real_vect_DATA,
    op_in_data_5 => channel_240_real_DATA,
    op_in_data_50 => channel_138_real_vect_DATA,
    op_in_data_51 => channel_180_real_vect_DATA,
    op_in_data_52 => channel_222_real_vect_DATA,
    op_in_data_53 => channel_264_real_vect_DATA,
    op_in_data_54 => channel_317_real_vect_DATA,
    op_in_data_55 => channel_350_real_vect_DATA,
    op_in_data_6 => channel_285_real_DATA,
    op_in_data_7 => channel_326_real_DATA,
    op_in_data_8 => channel_20_real_DATA,
    op_in_data_9 => channel_76_real_DATA,
    op_in_ready_0 => channel_13_real_READY,
    op_in_ready_1 => channel_72_real_READY,
    op_in_ready_10 => channel_118_real_READY,
    op_in_ready_11 => channel_160_real_READY,
    op_in_ready_12 => channel_202_real_READY,
    op_in_ready_13 => channel_244_real_READY,
    op_in_ready_14 => channel_291_real_READY,
    op_in_ready_15 => channel_330_real_READY,
    op_in_ready_16 => channel_27_real_READY,
    op_in_ready_17 => channel_80_real_READY,
    op_in_ready_18 => channel_122_real_READY,
    op_in_ready_19 => channel_164_real_READY,
    op_in_ready_2 => channel_114_real_READY,
    op_in_ready_20 => channel_206_real_READY,
    op_in_ready_21 => channel_248_real_READY,
    op_in_ready_22 => channel_297_real_READY,
    op_in_ready_23 => channel_334_real_READY,
    op_in_ready_24 => channel_34_real_READY,
    op_in_ready_25 => channel_84_real_READY,
    op_in_ready_26 => channel_126_real_READY,
    op_in_ready_27 => channel_168_real_READY,
    op_in_ready_28 => channel_210_real_READY,
    op_in_ready_29 => channel_252_real_READY,
    op_in_ready_3 => channel_156_real_READY,
    op_in_ready_30 => channel_303_real_READY,
    op_in_ready_31 => channel_338_real_READY,
    op_in_ready_32 => channel_41_real_READY,
    op_in_ready_33 => channel_88_real_READY,
    op_in_ready_34 => channel_130_real_READY,
    op_in_ready_35 => channel_172_real_READY,
    op_in_ready_36 => channel_214_real_READY,
    op_in_ready_37 => channel_256_real_READY,
    op_in_ready_38 => channel_309_real_READY,
    op_in_ready_39 => channel_342_real_READY,
    op_in_ready_4 => channel_198_real_READY,
    op_in_ready_40 => channel_45_real_vect_READY,
    op_in_ready_41 => channel_92_real_vect_READY,
    op_in_ready_42 => channel_134_real_vect_READY,
    op_in_ready_43 => channel_176_real_vect_READY,
    op_in_ready_44 => channel_218_real_vect_READY,
    op_in_ready_45 => channel_260_real_vect_READY,
    op_in_ready_46 => channel_313_real_vect_READY,
    op_in_ready_47 => channel_346_real_vect_READY,
    op_in_ready_48 => channel_49_real_vect_READY,
    op_in_ready_49 => channel_96_real_vect_READY,
    op_in_ready_5 => channel_240_real_READY,
    op_in_ready_50 => channel_138_real_vect_READY,
    op_in_ready_51 => channel_180_real_vect_READY,
    op_in_ready_52 => channel_222_real_vect_READY,
    op_in_ready_53 => channel_264_real_vect_READY,
    op_in_ready_54 => channel_317_real_vect_READY,
    op_in_ready_55 => channel_350_real_vect_READY,
    op_in_ready_6 => channel_285_real_READY,
    op_in_ready_7 => channel_326_real_READY,
    op_in_ready_8 => channel_20_real_READY,
    op_in_ready_9 => channel_76_real_READY,
    op_in_valid_0 => channel_13_real_VALID,
    op_in_valid_1 => channel_72_real_VALID,
    op_in_valid_10 => channel_118_real_VALID,
    op_in_valid_11 => channel_160_real_VALID,
    op_in_valid_12 => channel_202_real_VALID,
    op_in_valid_13 => channel_244_real_VALID,
    op_in_valid_14 => channel_291_real_VALID,
    op_in_valid_15 => channel_330_real_VALID,
    op_in_valid_16 => channel_27_real_VALID,
    op_in_valid_17 => channel_80_real_VALID,
    op_in_valid_18 => channel_122_real_VALID,
    op_in_valid_19 => channel_164_real_VALID,
    op_in_valid_2 => channel_114_real_VALID,
    op_in_valid_20 => channel_206_real_VALID,
    op_in_valid_21 => channel_248_real_VALID,
    op_in_valid_22 => channel_297_real_VALID,
    op_in_valid_23 => channel_334_real_VALID,
    op_in_valid_24 => channel_34_real_VALID,
    op_in_valid_25 => channel_84_real_VALID,
    op_in_valid_26 => channel_126_real_VALID,
    op_in_valid_27 => channel_168_real_VALID,
    op_in_valid_28 => channel_210_real_VALID,
    op_in_valid_29 => channel_252_real_VALID,
    op_in_valid_3 => channel_156_real_VALID,
    op_in_valid_30 => channel_303_real_VALID,
    op_in_valid_31 => channel_338_real_VALID,
    op_in_valid_32 => channel_41_real_VALID,
    op_in_valid_33 => channel_88_real_VALID,
    op_in_valid_34 => channel_130_real_VALID,
    op_in_valid_35 => channel_172_real_VALID,
    op_in_valid_36 => channel_214_real_VALID,
    op_in_valid_37 => channel_256_real_VALID,
    op_in_valid_38 => channel_309_real_VALID,
    op_in_valid_39 => channel_342_real_VALID,
    op_in_valid_4 => channel_198_real_VALID,
    op_in_valid_40 => channel_45_real_vect_VALID,
    op_in_valid_41 => channel_92_real_vect_VALID,
    op_in_valid_42 => channel_134_real_vect_VALID,
    op_in_valid_43 => channel_176_real_vect_VALID,
    op_in_valid_44 => channel_218_real_vect_VALID,
    op_in_valid_45 => channel_260_real_vect_VALID,
    op_in_valid_46 => channel_313_real_vect_VALID,
    op_in_valid_47 => channel_346_real_vect_VALID,
    op_in_valid_48 => channel_49_real_vect_VALID,
    op_in_valid_49 => channel_96_real_vect_VALID,
    op_in_valid_5 => channel_240_real_VALID,
    op_in_valid_50 => channel_138_real_vect_VALID,
    op_in_valid_51 => channel_180_real_vect_VALID,
    op_in_valid_52 => channel_222_real_vect_VALID,
    op_in_valid_53 => channel_264_real_vect_VALID,
    op_in_valid_54 => channel_317_real_vect_VALID,
    op_in_valid_55 => channel_350_real_vect_VALID,
    op_in_valid_6 => channel_285_real_VALID,
    op_in_valid_7 => channel_326_real_VALID,
    op_in_valid_8 => channel_20_real_VALID,
    op_in_valid_9 => channel_76_real_VALID,
    op_out_data_0 => channel_896_real_DATA,
    op_out_ready_0 => channel_896_real_READY,
    op_out_valid_0 => channel_896_real_VALID,
    rst => rst
);

output_selector_56_0 : output_selector_56
generic map (
    num_phases => 56
)
port map (
    clk => clk,
    op_in_data_0 => channel_898_real_DATA,
    op_in_ready_0 => channel_898_real_READY,
    op_in_valid_0 => channel_898_real_VALID,
    op_out_data_0 => channel_14_real_DATA,
    op_out_data_1 => channel_73_real_DATA,
    op_out_data_10 => channel_119_real_DATA,
    op_out_data_11 => channel_161_real_DATA,
    op_out_data_12 => channel_203_real_DATA,
    op_out_data_13 => channel_245_real_DATA,
    op_out_data_14 => channel_292_real_DATA,
    op_out_data_15 => channel_331_real_DATA,
    op_out_data_16 => channel_28_real_DATA,
    op_out_data_17 => channel_81_real_DATA,
    op_out_data_18 => channel_123_real_DATA,
    op_out_data_19 => channel_165_real_DATA,
    op_out_data_2 => channel_115_real_DATA,
    op_out_data_20 => channel_207_real_DATA,
    op_out_data_21 => channel_249_real_DATA,
    op_out_data_22 => channel_298_real_DATA,
    op_out_data_23 => channel_335_real_DATA,
    op_out_data_24 => channel_35_real_DATA,
    op_out_data_25 => channel_85_real_DATA,
    op_out_data_26 => channel_127_real_DATA,
    op_out_data_27 => channel_169_real_DATA,
    op_out_data_28 => channel_211_real_DATA,
    op_out_data_29 => channel_253_real_DATA,
    op_out_data_3 => channel_157_real_DATA,
    op_out_data_30 => channel_304_real_DATA,
    op_out_data_31 => channel_339_real_DATA,
    op_out_data_32 => channel_42_real_DATA,
    op_out_data_33 => channel_89_real_DATA,
    op_out_data_34 => channel_131_real_DATA,
    op_out_data_35 => channel_173_real_DATA,
    op_out_data_36 => channel_215_real_DATA,
    op_out_data_37 => channel_257_real_DATA,
    op_out_data_38 => channel_310_real_DATA,
    op_out_data_39 => channel_343_real_DATA,
    op_out_data_4 => channel_199_real_DATA,
    op_out_data_40 => channel_46_real_DATA,
    op_out_data_41 => channel_93_real_DATA,
    op_out_data_42 => channel_135_real_DATA,
    op_out_data_43 => channel_177_real_DATA,
    op_out_data_44 => channel_219_real_DATA,
    op_out_data_45 => channel_261_real_DATA,
    op_out_data_46 => channel_314_real_DATA,
    op_out_data_47 => channel_347_real_DATA,
    op_out_data_48 => channel_50_real_DATA,
    op_out_data_49 => channel_97_real_DATA,
    op_out_data_5 => channel_241_real_DATA,
    op_out_data_50 => channel_139_real_DATA,
    op_out_data_51 => channel_181_real_DATA,
    op_out_data_52 => channel_223_real_DATA,
    op_out_data_53 => channel_265_real_DATA,
    op_out_data_54 => channel_318_real_DATA,
    op_out_data_55 => channel_351_real_DATA,
    op_out_data_6 => channel_286_real_DATA,
    op_out_data_7 => channel_327_real_DATA,
    op_out_data_8 => channel_21_real_DATA,
    op_out_data_9 => channel_77_real_DATA,
    op_out_ready_0 => channel_14_real_READY,
    op_out_ready_1 => channel_73_real_READY,
    op_out_ready_10 => channel_119_real_READY,
    op_out_ready_11 => channel_161_real_READY,
    op_out_ready_12 => channel_203_real_READY,
    op_out_ready_13 => channel_245_real_READY,
    op_out_ready_14 => channel_292_real_READY,
    op_out_ready_15 => channel_331_real_READY,
    op_out_ready_16 => channel_28_real_READY,
    op_out_ready_17 => channel_81_real_READY,
    op_out_ready_18 => channel_123_real_READY,
    op_out_ready_19 => channel_165_real_READY,
    op_out_ready_2 => channel_115_real_READY,
    op_out_ready_20 => channel_207_real_READY,
    op_out_ready_21 => channel_249_real_READY,
    op_out_ready_22 => channel_298_real_READY,
    op_out_ready_23 => channel_335_real_READY,
    op_out_ready_24 => channel_35_real_READY,
    op_out_ready_25 => channel_85_real_READY,
    op_out_ready_26 => channel_127_real_READY,
    op_out_ready_27 => channel_169_real_READY,
    op_out_ready_28 => channel_211_real_READY,
    op_out_ready_29 => channel_253_real_READY,
    op_out_ready_3 => channel_157_real_READY,
    op_out_ready_30 => channel_304_real_READY,
    op_out_ready_31 => channel_339_real_READY,
    op_out_ready_32 => channel_42_real_READY,
    op_out_ready_33 => channel_89_real_READY,
    op_out_ready_34 => channel_131_real_READY,
    op_out_ready_35 => channel_173_real_READY,
    op_out_ready_36 => channel_215_real_READY,
    op_out_ready_37 => channel_257_real_READY,
    op_out_ready_38 => channel_310_real_READY,
    op_out_ready_39 => channel_343_real_READY,
    op_out_ready_4 => channel_199_real_READY,
    op_out_ready_40 => channel_46_real_READY,
    op_out_ready_41 => channel_93_real_READY,
    op_out_ready_42 => channel_135_real_READY,
    op_out_ready_43 => channel_177_real_READY,
    op_out_ready_44 => channel_219_real_READY,
    op_out_ready_45 => channel_261_real_READY,
    op_out_ready_46 => channel_314_real_READY,
    op_out_ready_47 => channel_347_real_READY,
    op_out_ready_48 => channel_50_real_READY,
    op_out_ready_49 => channel_97_real_READY,
    op_out_ready_5 => channel_241_real_READY,
    op_out_ready_50 => channel_139_real_READY,
    op_out_ready_51 => channel_181_real_READY,
    op_out_ready_52 => channel_223_real_READY,
    op_out_ready_53 => channel_265_real_READY,
    op_out_ready_54 => channel_318_real_READY,
    op_out_ready_55 => channel_351_real_READY,
    op_out_ready_6 => channel_286_real_READY,
    op_out_ready_7 => channel_327_real_READY,
    op_out_ready_8 => channel_21_real_READY,
    op_out_ready_9 => channel_77_real_READY,
    op_out_valid_0 => channel_14_real_VALID,
    op_out_valid_1 => channel_73_real_VALID,
    op_out_valid_10 => channel_119_real_VALID,
    op_out_valid_11 => channel_161_real_VALID,
    op_out_valid_12 => channel_203_real_VALID,
    op_out_valid_13 => channel_245_real_VALID,
    op_out_valid_14 => channel_292_real_VALID,
    op_out_valid_15 => channel_331_real_VALID,
    op_out_valid_16 => channel_28_real_VALID,
    op_out_valid_17 => channel_81_real_VALID,
    op_out_valid_18 => channel_123_real_VALID,
    op_out_valid_19 => channel_165_real_VALID,
    op_out_valid_2 => channel_115_real_VALID,
    op_out_valid_20 => channel_207_real_VALID,
    op_out_valid_21 => channel_249_real_VALID,
    op_out_valid_22 => channel_298_real_VALID,
    op_out_valid_23 => channel_335_real_VALID,
    op_out_valid_24 => channel_35_real_VALID,
    op_out_valid_25 => channel_85_real_VALID,
    op_out_valid_26 => channel_127_real_VALID,
    op_out_valid_27 => channel_169_real_VALID,
    op_out_valid_28 => channel_211_real_VALID,
    op_out_valid_29 => channel_253_real_VALID,
    op_out_valid_3 => channel_157_real_VALID,
    op_out_valid_30 => channel_304_real_VALID,
    op_out_valid_31 => channel_339_real_VALID,
    op_out_valid_32 => channel_42_real_VALID,
    op_out_valid_33 => channel_89_real_VALID,
    op_out_valid_34 => channel_131_real_VALID,
    op_out_valid_35 => channel_173_real_VALID,
    op_out_valid_36 => channel_215_real_VALID,
    op_out_valid_37 => channel_257_real_VALID,
    op_out_valid_38 => channel_310_real_VALID,
    op_out_valid_39 => channel_343_real_VALID,
    op_out_valid_4 => channel_199_real_VALID,
    op_out_valid_40 => channel_46_real_VALID,
    op_out_valid_41 => channel_93_real_VALID,
    op_out_valid_42 => channel_135_real_VALID,
    op_out_valid_43 => channel_177_real_VALID,
    op_out_valid_44 => channel_219_real_VALID,
    op_out_valid_45 => channel_261_real_VALID,
    op_out_valid_46 => channel_314_real_VALID,
    op_out_valid_47 => channel_347_real_VALID,
    op_out_valid_48 => channel_50_real_VALID,
    op_out_valid_49 => channel_97_real_VALID,
    op_out_valid_5 => channel_241_real_VALID,
    op_out_valid_50 => channel_139_real_VALID,
    op_out_valid_51 => channel_181_real_VALID,
    op_out_valid_52 => channel_223_real_VALID,
    op_out_valid_53 => channel_265_real_VALID,
    op_out_valid_54 => channel_318_real_VALID,
    op_out_valid_55 => channel_351_real_VALID,
    op_out_valid_6 => channel_286_real_VALID,
    op_out_valid_7 => channel_327_real_VALID,
    op_out_valid_8 => channel_21_real_VALID,
    op_out_valid_9 => channel_77_real_VALID,
    rst => rst
);

fp_max_0 : fp_max
port map (
    clk => clk,
    op_in_data_0 => channel_962_real_DATA,
    op_in_data_1 => channel_970_real_DATA,
    op_in_ready_0 => channel_962_real_READY,
    op_in_ready_1 => channel_970_real_READY,
    op_in_valid_0 => channel_962_real_VALID,
    op_in_valid_1 => channel_970_real_VALID,
    op_out_data_0 => channel_972_real_DATA,
    op_out_ready_0 => channel_972_real_READY,
    op_out_valid_0 => channel_972_real_VALID,
    rst => rst
);

input_selector_6_1 : input_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_53_real_DATA,
    op_in_data_1 => channel_100_real_DATA,
    op_in_data_2 => channel_142_real_DATA,
    op_in_data_3 => channel_184_real_DATA,
    op_in_data_4 => channel_226_real_DATA,
    op_in_data_5 => channel_268_real_DATA,
    op_in_ready_0 => channel_53_real_READY,
    op_in_ready_1 => channel_100_real_READY,
    op_in_ready_2 => channel_142_real_READY,
    op_in_ready_3 => channel_184_real_READY,
    op_in_ready_4 => channel_226_real_READY,
    op_in_ready_5 => channel_268_real_READY,
    op_in_valid_0 => channel_53_real_VALID,
    op_in_valid_1 => channel_100_real_VALID,
    op_in_valid_2 => channel_142_real_VALID,
    op_in_valid_3 => channel_184_real_VALID,
    op_in_valid_4 => channel_226_real_VALID,
    op_in_valid_5 => channel_268_real_VALID,
    op_out_data_0 => channel_962_real_DATA,
    op_out_ready_0 => channel_962_real_READY,
    op_out_valid_0 => channel_962_real_VALID,
    rst => rst
);

input_selector_6_2 : input_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_61_real_DATA,
    op_in_data_1 => channel_103_real_DATA,
    op_in_data_2 => channel_145_real_DATA,
    op_in_data_3 => channel_187_real_DATA,
    op_in_data_4 => channel_229_real_DATA,
    op_in_data_5 => channel_271_real_DATA,
    op_in_ready_0 => channel_61_real_READY,
    op_in_ready_1 => channel_103_real_READY,
    op_in_ready_2 => channel_145_real_READY,
    op_in_ready_3 => channel_187_real_READY,
    op_in_ready_4 => channel_229_real_READY,
    op_in_ready_5 => channel_271_real_READY,
    op_in_valid_0 => channel_61_real_VALID,
    op_in_valid_1 => channel_103_real_VALID,
    op_in_valid_2 => channel_145_real_VALID,
    op_in_valid_3 => channel_187_real_VALID,
    op_in_valid_4 => channel_229_real_VALID,
    op_in_valid_5 => channel_271_real_VALID,
    op_out_data_0 => channel_970_real_DATA,
    op_out_ready_0 => channel_970_real_READY,
    op_out_valid_0 => channel_970_real_VALID,
    rst => rst
);

output_selector_6_1 : output_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_972_real_DATA,
    op_in_ready_0 => channel_972_real_READY,
    op_in_valid_0 => channel_972_real_VALID,
    op_out_data_0 => channel_62_real_DATA,
    op_out_data_1 => channel_104_real_DATA,
    op_out_data_2 => channel_146_real_DATA,
    op_out_data_3 => channel_188_real_DATA,
    op_out_data_4 => channel_230_real_DATA,
    op_out_data_5 => channel_272_real_DATA,
    op_out_ready_0 => channel_62_real_READY,
    op_out_ready_1 => channel_104_real_READY,
    op_out_ready_2 => channel_146_real_READY,
    op_out_ready_3 => channel_188_real_READY,
    op_out_ready_4 => channel_230_real_READY,
    op_out_ready_5 => channel_272_real_READY,
    op_out_valid_0 => channel_62_real_VALID,
    op_out_valid_1 => channel_104_real_VALID,
    op_out_valid_2 => channel_146_real_VALID,
    op_out_valid_3 => channel_188_real_VALID,
    op_out_valid_4 => channel_230_real_VALID,
    op_out_valid_5 => channel_272_real_VALID,
    rst => rst
);

fp_min_0 : fp_min
port map (
    clk => clk,
    op_in_data_0 => channel_986_real_DATA,
    op_in_data_1 => channel_994_real_DATA,
    op_in_ready_0 => channel_986_real_READY,
    op_in_ready_1 => channel_994_real_READY,
    op_in_valid_0 => channel_986_real_VALID,
    op_in_valid_1 => channel_994_real_VALID,
    op_out_data_0 => channel_996_real_DATA,
    op_out_ready_0 => channel_996_real_READY,
    op_out_valid_0 => channel_996_real_VALID,
    rst => rst
);

input_selector_6_3 : input_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_52_real_DATA,
    op_in_data_1 => channel_99_real_DATA,
    op_in_data_2 => channel_141_real_DATA,
    op_in_data_3 => channel_183_real_DATA,
    op_in_data_4 => channel_225_real_DATA,
    op_in_data_5 => channel_267_real_DATA,
    op_in_ready_0 => channel_52_real_READY,
    op_in_ready_1 => channel_99_real_READY,
    op_in_ready_2 => channel_141_real_READY,
    op_in_ready_3 => channel_183_real_READY,
    op_in_ready_4 => channel_225_real_READY,
    op_in_ready_5 => channel_267_real_READY,
    op_in_valid_0 => channel_52_real_VALID,
    op_in_valid_1 => channel_99_real_VALID,
    op_in_valid_2 => channel_141_real_VALID,
    op_in_valid_3 => channel_183_real_VALID,
    op_in_valid_4 => channel_225_real_VALID,
    op_in_valid_5 => channel_267_real_VALID,
    op_out_data_0 => channel_986_real_DATA,
    op_out_ready_0 => channel_986_real_READY,
    op_out_valid_0 => channel_986_real_VALID,
    rst => rst
);

input_selector_6_4 : input_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_62_real_DATA,
    op_in_data_1 => channel_104_real_DATA,
    op_in_data_2 => channel_146_real_DATA,
    op_in_data_3 => channel_188_real_DATA,
    op_in_data_4 => channel_230_real_DATA,
    op_in_data_5 => channel_272_real_DATA,
    op_in_ready_0 => channel_62_real_READY,
    op_in_ready_1 => channel_104_real_READY,
    op_in_ready_2 => channel_146_real_READY,
    op_in_ready_3 => channel_188_real_READY,
    op_in_ready_4 => channel_230_real_READY,
    op_in_ready_5 => channel_272_real_READY,
    op_in_valid_0 => channel_62_real_VALID,
    op_in_valid_1 => channel_104_real_VALID,
    op_in_valid_2 => channel_146_real_VALID,
    op_in_valid_3 => channel_188_real_VALID,
    op_in_valid_4 => channel_230_real_VALID,
    op_in_valid_5 => channel_272_real_VALID,
    op_out_data_0 => channel_994_real_DATA,
    op_out_ready_0 => channel_994_real_READY,
    op_out_valid_0 => channel_994_real_VALID,
    rst => rst
);

output_selector_6_2 : output_selector_6
generic map (
    num_phases => 6
)
port map (
    clk => clk,
    op_in_data_0 => channel_996_real_DATA,
    op_in_ready_0 => channel_996_real_READY,
    op_in_valid_0 => channel_996_real_VALID,
    op_out_data_0 => channel_63_real_DATA,
    op_out_data_1 => channel_105_real_DATA,
    op_out_data_2 => channel_147_real_DATA,
    op_out_data_3 => channel_189_real_DATA,
    op_out_data_4 => channel_231_real_DATA,
    op_out_data_5 => channel_273_real_DATA,
    op_out_ready_0 => channel_63_real_READY,
    op_out_ready_1 => channel_105_real_READY,
    op_out_ready_2 => channel_147_real_READY,
    op_out_ready_3 => channel_189_real_READY,
    op_out_ready_4 => channel_231_real_READY,
    op_out_ready_5 => channel_273_real_READY,
    op_out_valid_0 => channel_63_real_VALID,
    op_out_valid_1 => channel_105_real_VALID,
    op_out_valid_2 => channel_147_real_VALID,
    op_out_valid_3 => channel_189_real_VALID,
    op_out_valid_4 => channel_231_real_VALID,
    op_out_valid_5 => channel_273_real_VALID,
    rst => rst
);

fp_prod_0 : fp_prod
port map (
    clk => clk,
    op_in_data_0 => channel_1082_real_DATA,
    op_in_data_1 => channel_1162_real_DATA,
    op_in_ready_0 => channel_1082_real_READY,
    op_in_ready_1 => channel_1162_real_READY,
    op_in_valid_0 => channel_1082_real_VALID,
    op_in_valid_1 => channel_1162_real_VALID,
    op_out_data_0 => channel_1164_real_DATA,
    op_out_ready_0 => channel_1164_real_READY,
    op_out_valid_0 => channel_1164_real_VALID,
    rst => rst
);

input_selector_78_0 : input_selector_78
generic map (
    num_phases => 78
)
port map (
    clk => clk,
    op_in_data_0 => channel_3_real_DATA,
    op_in_data_1 => channel_8_real_DATA,
    op_in_data_10 => channel_78_real_DATA,
    op_in_data_11 => channel_82_real_DATA,
    op_in_data_12 => channel_86_real_DATA,
    op_in_data_13 => channel_101_real_DATA,
    op_in_data_14 => channel_109_real_DATA,
    op_in_data_15 => channel_112_real_DATA,
    op_in_data_16 => channel_116_real_DATA,
    op_in_data_17 => channel_120_real_DATA,
    op_in_data_18 => channel_124_real_DATA,
    op_in_data_19 => channel_128_real_DATA,
    op_in_data_2 => channel_15_real_DATA,
    op_in_data_20 => channel_143_real_DATA,
    op_in_data_21 => channel_151_real_DATA,
    op_in_data_22 => channel_154_real_DATA,
    op_in_data_23 => channel_158_real_DATA,
    op_in_data_24 => channel_162_real_DATA,
    op_in_data_25 => channel_166_real_DATA,
    op_in_data_26 => channel_170_real_DATA,
    op_in_data_27 => channel_185_real_DATA,
    op_in_data_28 => channel_193_real_DATA,
    op_in_data_29 => channel_196_real_DATA,
    op_in_data_3 => channel_22_real_DATA,
    op_in_data_30 => channel_200_real_DATA,
    op_in_data_31 => channel_204_real_DATA,
    op_in_data_32 => channel_208_real_DATA,
    op_in_data_33 => channel_212_real_DATA,
    op_in_data_34 => channel_227_real_DATA,
    op_in_data_35 => channel_235_real_DATA,
    op_in_data_36 => channel_238_real_DATA,
    op_in_data_37 => channel_242_real_DATA,
    op_in_data_38 => channel_246_real_DATA,
    op_in_data_39 => channel_250_real_DATA,
    op_in_data_4 => channel_29_real_DATA,
    op_in_data_40 => channel_254_real_DATA,
    op_in_data_41 => channel_269_real_DATA,
    op_in_data_42 => channel_43_real_DATA,
    op_in_data_43 => channel_47_real_DATA,
    op_in_data_44 => channel_90_real_DATA,
    op_in_data_45 => channel_94_real_DATA,
    op_in_data_46 => channel_132_real_DATA,
    op_in_data_47 => channel_136_real_DATA,
    op_in_data_48 => channel_174_real_DATA,
    op_in_data_49 => channel_178_real_DATA,
    op_in_data_5 => channel_36_real_DATA,
    op_in_data_50 => channel_216_real_DATA,
    op_in_data_51 => channel_220_real_DATA,
    op_in_data_52 => channel_258_real_DATA,
    op_in_data_53 => channel_262_real_DATA,
    op_in_data_54 => channel_1_real_DATA,
    op_in_data_55 => channel_281_real_DATA,
    op_in_data_56 => channel_287_real_DATA,
    op_in_data_57 => channel_293_real_DATA,
    op_in_data_58 => channel_299_real_DATA,
    op_in_data_59 => channel_305_real_DATA,
    op_in_data_6 => channel_59_real_DATA,
    op_in_data_60 => channel_311_real_DATA,
    op_in_data_61 => channel_315_real_DATA,
    op_in_data_62 => channel_321_real_DATA,
    op_in_data_63 => channel_324_real_DATA,
    op_in_data_64 => channel_328_real_DATA,
    op_in_data_65 => channel_332_real_DATA,
    op_in_data_66 => channel_336_real_DATA,
    op_in_data_67 => channel_340_real_DATA,
    op_in_data_68 => channel_344_real_DATA,
    op_in_data_69 => channel_348_real_DATA,
    op_in_data_7 => channel_67_real_DATA,
    op_in_data_70 => channel_2_real_DATA,
    op_in_data_71 => channel_66_real_DATA,
    op_in_data_72 => channel_108_real_DATA,
    op_in_data_73 => channel_150_real_DATA,
    op_in_data_74 => channel_192_real_DATA,
    op_in_data_75 => channel_234_real_DATA,
    op_in_data_76 => channel_0_real_DATA,
    op_in_data_77 => channel_320_real_DATA,
    op_in_data_8 => channel_70_real_DATA,
    op_in_data_9 => channel_74_real_DATA,
    op_in_ready_0 => channel_3_real_READY,
    op_in_ready_1 => channel_8_real_READY,
    op_in_ready_10 => channel_78_real_READY,
    op_in_ready_11 => channel_82_real_READY,
    op_in_ready_12 => channel_86_real_READY,
    op_in_ready_13 => channel_101_real_READY,
    op_in_ready_14 => channel_109_real_READY,
    op_in_ready_15 => channel_112_real_READY,
    op_in_ready_16 => channel_116_real_READY,
    op_in_ready_17 => channel_120_real_READY,
    op_in_ready_18 => channel_124_real_READY,
    op_in_ready_19 => channel_128_real_READY,
    op_in_ready_2 => channel_15_real_READY,
    op_in_ready_20 => channel_143_real_READY,
    op_in_ready_21 => channel_151_real_READY,
    op_in_ready_22 => channel_154_real_READY,
    op_in_ready_23 => channel_158_real_READY,
    op_in_ready_24 => channel_162_real_READY,
    op_in_ready_25 => channel_166_real_READY,
    op_in_ready_26 => channel_170_real_READY,
    op_in_ready_27 => channel_185_real_READY,
    op_in_ready_28 => channel_193_real_READY,
    op_in_ready_29 => channel_196_real_READY,
    op_in_ready_3 => channel_22_real_READY,
    op_in_ready_30 => channel_200_real_READY,
    op_in_ready_31 => channel_204_real_READY,
    op_in_ready_32 => channel_208_real_READY,
    op_in_ready_33 => channel_212_real_READY,
    op_in_ready_34 => channel_227_real_READY,
    op_in_ready_35 => channel_235_real_READY,
    op_in_ready_36 => channel_238_real_READY,
    op_in_ready_37 => channel_242_real_READY,
    op_in_ready_38 => channel_246_real_READY,
    op_in_ready_39 => channel_250_real_READY,
    op_in_ready_4 => channel_29_real_READY,
    op_in_ready_40 => channel_254_real_READY,
    op_in_ready_41 => channel_269_real_READY,
    op_in_ready_42 => channel_43_real_READY,
    op_in_ready_43 => channel_47_real_READY,
    op_in_ready_44 => channel_90_real_READY,
    op_in_ready_45 => channel_94_real_READY,
    op_in_ready_46 => channel_132_real_READY,
    op_in_ready_47 => channel_136_real_READY,
    op_in_ready_48 => channel_174_real_READY,
    op_in_ready_49 => channel_178_real_READY,
    op_in_ready_5 => channel_36_real_READY,
    op_in_ready_50 => channel_216_real_READY,
    op_in_ready_51 => channel_220_real_READY,
    op_in_ready_52 => channel_258_real_READY,
    op_in_ready_53 => channel_262_real_READY,
    op_in_ready_54 => channel_1_real_READY,
    op_in_ready_55 => channel_281_real_READY,
    op_in_ready_56 => channel_287_real_READY,
    op_in_ready_57 => channel_293_real_READY,
    op_in_ready_58 => channel_299_real_READY,
    op_in_ready_59 => channel_305_real_READY,
    op_in_ready_6 => channel_59_real_READY,
    op_in_ready_60 => channel_311_real_READY,
    op_in_ready_61 => channel_315_real_READY,
    op_in_ready_62 => channel_321_real_READY,
    op_in_ready_63 => channel_324_real_READY,
    op_in_ready_64 => channel_328_real_READY,
    op_in_ready_65 => channel_332_real_READY,
    op_in_ready_66 => channel_336_real_READY,
    op_in_ready_67 => channel_340_real_READY,
    op_in_ready_68 => channel_344_real_READY,
    op_in_ready_69 => channel_348_real_READY,
    op_in_ready_7 => channel_67_real_READY,
    op_in_ready_70 => channel_2_real_READY,
    op_in_ready_71 => channel_66_real_READY,
    op_in_ready_72 => channel_108_real_READY,
    op_in_ready_73 => channel_150_real_READY,
    op_in_ready_74 => channel_192_real_READY,
    op_in_ready_75 => channel_234_real_READY,
    op_in_ready_76 => channel_0_real_READY,
    op_in_ready_77 => channel_320_real_READY,
    op_in_ready_8 => channel_70_real_READY,
    op_in_ready_9 => channel_74_real_READY,
    op_in_valid_0 => channel_3_real_VALID,
    op_in_valid_1 => channel_8_real_VALID,
    op_in_valid_10 => channel_78_real_VALID,
    op_in_valid_11 => channel_82_real_VALID,
    op_in_valid_12 => channel_86_real_VALID,
    op_in_valid_13 => channel_101_real_VALID,
    op_in_valid_14 => channel_109_real_VALID,
    op_in_valid_15 => channel_112_real_VALID,
    op_in_valid_16 => channel_116_real_VALID,
    op_in_valid_17 => channel_120_real_VALID,
    op_in_valid_18 => channel_124_real_VALID,
    op_in_valid_19 => channel_128_real_VALID,
    op_in_valid_2 => channel_15_real_VALID,
    op_in_valid_20 => channel_143_real_VALID,
    op_in_valid_21 => channel_151_real_VALID,
    op_in_valid_22 => channel_154_real_VALID,
    op_in_valid_23 => channel_158_real_VALID,
    op_in_valid_24 => channel_162_real_VALID,
    op_in_valid_25 => channel_166_real_VALID,
    op_in_valid_26 => channel_170_real_VALID,
    op_in_valid_27 => channel_185_real_VALID,
    op_in_valid_28 => channel_193_real_VALID,
    op_in_valid_29 => channel_196_real_VALID,
    op_in_valid_3 => channel_22_real_VALID,
    op_in_valid_30 => channel_200_real_VALID,
    op_in_valid_31 => channel_204_real_VALID,
    op_in_valid_32 => channel_208_real_VALID,
    op_in_valid_33 => channel_212_real_VALID,
    op_in_valid_34 => channel_227_real_VALID,
    op_in_valid_35 => channel_235_real_VALID,
    op_in_valid_36 => channel_238_real_VALID,
    op_in_valid_37 => channel_242_real_VALID,
    op_in_valid_38 => channel_246_real_VALID,
    op_in_valid_39 => channel_250_real_VALID,
    op_in_valid_4 => channel_29_real_VALID,
    op_in_valid_40 => channel_254_real_VALID,
    op_in_valid_41 => channel_269_real_VALID,
    op_in_valid_42 => channel_43_real_VALID,
    op_in_valid_43 => channel_47_real_VALID,
    op_in_valid_44 => channel_90_real_VALID,
    op_in_valid_45 => channel_94_real_VALID,
    op_in_valid_46 => channel_132_real_VALID,
    op_in_valid_47 => channel_136_real_VALID,
    op_in_valid_48 => channel_174_real_VALID,
    op_in_valid_49 => channel_178_real_VALID,
    op_in_valid_5 => channel_36_real_VALID,
    op_in_valid_50 => channel_216_real_VALID,
    op_in_valid_51 => channel_220_real_VALID,
    op_in_valid_52 => channel_258_real_VALID,
    op_in_valid_53 => channel_262_real_VALID,
    op_in_valid_54 => channel_1_real_VALID,
    op_in_valid_55 => channel_281_real_VALID,
    op_in_valid_56 => channel_287_real_VALID,
    op_in_valid_57 => channel_293_real_VALID,
    op_in_valid_58 => channel_299_real_VALID,
    op_in_valid_59 => channel_305_real_VALID,
    op_in_valid_6 => channel_59_real_VALID,
    op_in_valid_60 => channel_311_real_VALID,
    op_in_valid_61 => channel_315_real_VALID,
    op_in_valid_62 => channel_321_real_VALID,
    op_in_valid_63 => channel_324_real_VALID,
    op_in_valid_64 => channel_328_real_VALID,
    op_in_valid_65 => channel_332_real_VALID,
    op_in_valid_66 => channel_336_real_VALID,
    op_in_valid_67 => channel_340_real_VALID,
    op_in_valid_68 => channel_344_real_VALID,
    op_in_valid_69 => channel_348_real_VALID,
    op_in_valid_7 => channel_67_real_VALID,
    op_in_valid_70 => channel_2_real_VALID,
    op_in_valid_71 => channel_66_real_VALID,
    op_in_valid_72 => channel_108_real_VALID,
    op_in_valid_73 => channel_150_real_VALID,
    op_in_valid_74 => channel_192_real_VALID,
    op_in_valid_75 => channel_234_real_VALID,
    op_in_valid_76 => channel_0_real_VALID,
    op_in_valid_77 => channel_320_real_VALID,
    op_in_valid_8 => channel_70_real_VALID,
    op_in_valid_9 => channel_74_real_VALID,
    op_out_data_0 => channel_1082_real_DATA,
    op_out_ready_0 => channel_1082_real_READY,
    op_out_valid_0 => channel_1082_real_VALID,
    rst => rst
);

input_selector_78_1 : input_selector_78
generic map (
    num_phases => 78
)
port map (
    clk => clk,
    op_in_data_0 => channel_6_real_DATA,
    op_in_data_1 => channel_12_real_DATA,
    op_in_data_10 => channel_79_real_DATA,
    op_in_data_11 => channel_83_real_DATA,
    op_in_data_12 => channel_87_real_DATA,
    op_in_data_13 => channel_102_real_DATA,
    op_in_data_14 => channel_110_real_DATA,
    op_in_data_15 => channel_113_real_DATA,
    op_in_data_16 => channel_117_real_DATA,
    op_in_data_17 => channel_121_real_DATA,
    op_in_data_18 => channel_125_real_DATA,
    op_in_data_19 => channel_129_real_DATA,
    op_in_data_2 => channel_19_real_DATA,
    op_in_data_20 => channel_144_real_DATA,
    op_in_data_21 => channel_152_real_DATA,
    op_in_data_22 => channel_155_real_DATA,
    op_in_data_23 => channel_159_real_DATA,
    op_in_data_24 => channel_163_real_DATA,
    op_in_data_25 => channel_167_real_DATA,
    op_in_data_26 => channel_171_real_DATA,
    op_in_data_27 => channel_186_real_DATA,
    op_in_data_28 => channel_194_real_DATA,
    op_in_data_29 => channel_197_real_DATA,
    op_in_data_3 => channel_26_real_DATA,
    op_in_data_30 => channel_201_real_DATA,
    op_in_data_31 => channel_205_real_DATA,
    op_in_data_32 => channel_209_real_DATA,
    op_in_data_33 => channel_213_real_DATA,
    op_in_data_34 => channel_228_real_DATA,
    op_in_data_35 => channel_236_real_DATA,
    op_in_data_36 => channel_239_real_DATA,
    op_in_data_37 => channel_243_real_DATA,
    op_in_data_38 => channel_247_real_DATA,
    op_in_data_39 => channel_251_real_DATA,
    op_in_data_4 => channel_33_real_DATA,
    op_in_data_40 => channel_255_real_DATA,
    op_in_data_41 => channel_270_real_DATA,
    op_in_data_42 => channel_44_real_vect_DATA,
    op_in_data_43 => channel_48_real_vect_DATA,
    op_in_data_44 => channel_91_real_vect_DATA,
    op_in_data_45 => channel_95_real_vect_DATA,
    op_in_data_46 => channel_133_real_vect_DATA,
    op_in_data_47 => channel_137_real_vect_DATA,
    op_in_data_48 => channel_175_real_vect_DATA,
    op_in_data_49 => channel_179_real_vect_DATA,
    op_in_data_5 => channel_40_real_DATA,
    op_in_data_50 => channel_217_real_vect_DATA,
    op_in_data_51 => channel_221_real_vect_DATA,
    op_in_data_52 => channel_259_real_vect_DATA,
    op_in_data_53 => channel_263_real_vect_DATA,
    op_in_data_54 => channel_279_real_DATA,
    op_in_data_55 => channel_284_real_DATA,
    op_in_data_56 => channel_290_real_DATA,
    op_in_data_57 => channel_296_real_DATA,
    op_in_data_58 => channel_302_real_DATA,
    op_in_data_59 => channel_308_real_DATA,
    op_in_data_6 => channel_60_real_DATA,
    op_in_data_60 => channel_312_real_vect_DATA,
    op_in_data_61 => channel_316_real_vect_DATA,
    op_in_data_62 => channel_322_real_DATA,
    op_in_data_63 => channel_325_real_DATA,
    op_in_data_64 => channel_329_real_DATA,
    op_in_data_65 => channel_333_real_DATA,
    op_in_data_66 => channel_337_real_DATA,
    op_in_data_67 => channel_341_real_DATA,
    op_in_data_68 => channel_345_real_vect_DATA,
    op_in_data_69 => channel_349_real_vect_DATA,
    op_in_data_7 => channel_68_real_DATA,
    op_in_data_70 => channel_50_real_DATA,
    op_in_data_71 => channel_97_real_DATA,
    op_in_data_72 => channel_139_real_DATA,
    op_in_data_73 => channel_181_real_DATA,
    op_in_data_74 => channel_223_real_DATA,
    op_in_data_75 => channel_265_real_DATA,
    op_in_data_76 => channel_318_real_DATA,
    op_in_data_77 => channel_351_real_DATA,
    op_in_data_8 => channel_71_real_DATA,
    op_in_data_9 => channel_75_real_DATA,
    op_in_ready_0 => channel_6_real_READY,
    op_in_ready_1 => channel_12_real_READY,
    op_in_ready_10 => channel_79_real_READY,
    op_in_ready_11 => channel_83_real_READY,
    op_in_ready_12 => channel_87_real_READY,
    op_in_ready_13 => channel_102_real_READY,
    op_in_ready_14 => channel_110_real_READY,
    op_in_ready_15 => channel_113_real_READY,
    op_in_ready_16 => channel_117_real_READY,
    op_in_ready_17 => channel_121_real_READY,
    op_in_ready_18 => channel_125_real_READY,
    op_in_ready_19 => channel_129_real_READY,
    op_in_ready_2 => channel_19_real_READY,
    op_in_ready_20 => channel_144_real_READY,
    op_in_ready_21 => channel_152_real_READY,
    op_in_ready_22 => channel_155_real_READY,
    op_in_ready_23 => channel_159_real_READY,
    op_in_ready_24 => channel_163_real_READY,
    op_in_ready_25 => channel_167_real_READY,
    op_in_ready_26 => channel_171_real_READY,
    op_in_ready_27 => channel_186_real_READY,
    op_in_ready_28 => channel_194_real_READY,
    op_in_ready_29 => channel_197_real_READY,
    op_in_ready_3 => channel_26_real_READY,
    op_in_ready_30 => channel_201_real_READY,
    op_in_ready_31 => channel_205_real_READY,
    op_in_ready_32 => channel_209_real_READY,
    op_in_ready_33 => channel_213_real_READY,
    op_in_ready_34 => channel_228_real_READY,
    op_in_ready_35 => channel_236_real_READY,
    op_in_ready_36 => channel_239_real_READY,
    op_in_ready_37 => channel_243_real_READY,
    op_in_ready_38 => channel_247_real_READY,
    op_in_ready_39 => channel_251_real_READY,
    op_in_ready_4 => channel_33_real_READY,
    op_in_ready_40 => channel_255_real_READY,
    op_in_ready_41 => channel_270_real_READY,
    op_in_ready_42 => channel_44_real_vect_READY,
    op_in_ready_43 => channel_48_real_vect_READY,
    op_in_ready_44 => channel_91_real_vect_READY,
    op_in_ready_45 => channel_95_real_vect_READY,
    op_in_ready_46 => channel_133_real_vect_READY,
    op_in_ready_47 => channel_137_real_vect_READY,
    op_in_ready_48 => channel_175_real_vect_READY,
    op_in_ready_49 => channel_179_real_vect_READY,
    op_in_ready_5 => channel_40_real_READY,
    op_in_ready_50 => channel_217_real_vect_READY,
    op_in_ready_51 => channel_221_real_vect_READY,
    op_in_ready_52 => channel_259_real_vect_READY,
    op_in_ready_53 => channel_263_real_vect_READY,
    op_in_ready_54 => channel_279_real_READY,
    op_in_ready_55 => channel_284_real_READY,
    op_in_ready_56 => channel_290_real_READY,
    op_in_ready_57 => channel_296_real_READY,
    op_in_ready_58 => channel_302_real_READY,
    op_in_ready_59 => channel_308_real_READY,
    op_in_ready_6 => channel_60_real_READY,
    op_in_ready_60 => channel_312_real_vect_READY,
    op_in_ready_61 => channel_316_real_vect_READY,
    op_in_ready_62 => channel_322_real_READY,
    op_in_ready_63 => channel_325_real_READY,
    op_in_ready_64 => channel_329_real_READY,
    op_in_ready_65 => channel_333_real_READY,
    op_in_ready_66 => channel_337_real_READY,
    op_in_ready_67 => channel_341_real_READY,
    op_in_ready_68 => channel_345_real_vect_READY,
    op_in_ready_69 => channel_349_real_vect_READY,
    op_in_ready_7 => channel_68_real_READY,
    op_in_ready_70 => channel_50_real_READY,
    op_in_ready_71 => channel_97_real_READY,
    op_in_ready_72 => channel_139_real_READY,
    op_in_ready_73 => channel_181_real_READY,
    op_in_ready_74 => channel_223_real_READY,
    op_in_ready_75 => channel_265_real_READY,
    op_in_ready_76 => channel_318_real_READY,
    op_in_ready_77 => channel_351_real_READY,
    op_in_ready_8 => channel_71_real_READY,
    op_in_ready_9 => channel_75_real_READY,
    op_in_valid_0 => channel_6_real_VALID,
    op_in_valid_1 => channel_12_real_VALID,
    op_in_valid_10 => channel_79_real_VALID,
    op_in_valid_11 => channel_83_real_VALID,
    op_in_valid_12 => channel_87_real_VALID,
    op_in_valid_13 => channel_102_real_VALID,
    op_in_valid_14 => channel_110_real_VALID,
    op_in_valid_15 => channel_113_real_VALID,
    op_in_valid_16 => channel_117_real_VALID,
    op_in_valid_17 => channel_121_real_VALID,
    op_in_valid_18 => channel_125_real_VALID,
    op_in_valid_19 => channel_129_real_VALID,
    op_in_valid_2 => channel_19_real_VALID,
    op_in_valid_20 => channel_144_real_VALID,
    op_in_valid_21 => channel_152_real_VALID,
    op_in_valid_22 => channel_155_real_VALID,
    op_in_valid_23 => channel_159_real_VALID,
    op_in_valid_24 => channel_163_real_VALID,
    op_in_valid_25 => channel_167_real_VALID,
    op_in_valid_26 => channel_171_real_VALID,
    op_in_valid_27 => channel_186_real_VALID,
    op_in_valid_28 => channel_194_real_VALID,
    op_in_valid_29 => channel_197_real_VALID,
    op_in_valid_3 => channel_26_real_VALID,
    op_in_valid_30 => channel_201_real_VALID,
    op_in_valid_31 => channel_205_real_VALID,
    op_in_valid_32 => channel_209_real_VALID,
    op_in_valid_33 => channel_213_real_VALID,
    op_in_valid_34 => channel_228_real_VALID,
    op_in_valid_35 => channel_236_real_VALID,
    op_in_valid_36 => channel_239_real_VALID,
    op_in_valid_37 => channel_243_real_VALID,
    op_in_valid_38 => channel_247_real_VALID,
    op_in_valid_39 => channel_251_real_VALID,
    op_in_valid_4 => channel_33_real_VALID,
    op_in_valid_40 => channel_255_real_VALID,
    op_in_valid_41 => channel_270_real_VALID,
    op_in_valid_42 => channel_44_real_vect_VALID,
    op_in_valid_43 => channel_48_real_vect_VALID,
    op_in_valid_44 => channel_91_real_vect_VALID,
    op_in_valid_45 => channel_95_real_vect_VALID,
    op_in_valid_46 => channel_133_real_vect_VALID,
    op_in_valid_47 => channel_137_real_vect_VALID,
    op_in_valid_48 => channel_175_real_vect_VALID,
    op_in_valid_49 => channel_179_real_vect_VALID,
    op_in_valid_5 => channel_40_real_VALID,
    op_in_valid_50 => channel_217_real_vect_VALID,
    op_in_valid_51 => channel_221_real_vect_VALID,
    op_in_valid_52 => channel_259_real_vect_VALID,
    op_in_valid_53 => channel_263_real_vect_VALID,
    op_in_valid_54 => channel_279_real_VALID,
    op_in_valid_55 => channel_284_real_VALID,
    op_in_valid_56 => channel_290_real_VALID,
    op_in_valid_57 => channel_296_real_VALID,
    op_in_valid_58 => channel_302_real_VALID,
    op_in_valid_59 => channel_308_real_VALID,
    op_in_valid_6 => channel_60_real_VALID,
    op_in_valid_60 => channel_312_real_vect_VALID,
    op_in_valid_61 => channel_316_real_vect_VALID,
    op_in_valid_62 => channel_322_real_VALID,
    op_in_valid_63 => channel_325_real_VALID,
    op_in_valid_64 => channel_329_real_VALID,
    op_in_valid_65 => channel_333_real_VALID,
    op_in_valid_66 => channel_337_real_VALID,
    op_in_valid_67 => channel_341_real_VALID,
    op_in_valid_68 => channel_345_real_vect_VALID,
    op_in_valid_69 => channel_349_real_vect_VALID,
    op_in_valid_7 => channel_68_real_VALID,
    op_in_valid_70 => channel_50_real_VALID,
    op_in_valid_71 => channel_97_real_VALID,
    op_in_valid_72 => channel_139_real_VALID,
    op_in_valid_73 => channel_181_real_VALID,
    op_in_valid_74 => channel_223_real_VALID,
    op_in_valid_75 => channel_265_real_VALID,
    op_in_valid_76 => channel_318_real_VALID,
    op_in_valid_77 => channel_351_real_VALID,
    op_in_valid_8 => channel_71_real_VALID,
    op_in_valid_9 => channel_75_real_VALID,
    op_out_data_0 => channel_1162_real_DATA,
    op_out_ready_0 => channel_1162_real_READY,
    op_out_valid_0 => channel_1162_real_VALID,
    rst => rst
);

output_selector_78_0 : output_selector_78
generic map (
    num_phases => 78
)
port map (
    clk => clk,
    op_in_data_0 => channel_1164_real_DATA,
    op_in_ready_0 => channel_1164_real_READY,
    op_in_valid_0 => channel_1164_real_VALID,
    op_out_data_0 => channel_7_real_DATA,
    op_out_data_1 => channel_13_real_DATA,
    op_out_data_10 => channel_80_real_DATA,
    op_out_data_11 => channel_84_real_DATA,
    op_out_data_12 => channel_88_real_DATA,
    op_out_data_13 => channel_103_real_DATA,
    op_out_data_14 => channel_111_real_DATA,
    op_out_data_15 => channel_114_real_DATA,
    op_out_data_16 => channel_118_real_DATA,
    op_out_data_17 => channel_122_real_DATA,
    op_out_data_18 => channel_126_real_DATA,
    op_out_data_19 => channel_130_real_DATA,
    op_out_data_2 => channel_20_real_DATA,
    op_out_data_20 => channel_145_real_DATA,
    op_out_data_21 => channel_153_real_DATA,
    op_out_data_22 => channel_156_real_DATA,
    op_out_data_23 => channel_160_real_DATA,
    op_out_data_24 => channel_164_real_DATA,
    op_out_data_25 => channel_168_real_DATA,
    op_out_data_26 => channel_172_real_DATA,
    op_out_data_27 => channel_187_real_DATA,
    op_out_data_28 => channel_195_real_DATA,
    op_out_data_29 => channel_198_real_DATA,
    op_out_data_3 => channel_27_real_DATA,
    op_out_data_30 => channel_202_real_DATA,
    op_out_data_31 => channel_206_real_DATA,
    op_out_data_32 => channel_210_real_DATA,
    op_out_data_33 => channel_214_real_DATA,
    op_out_data_34 => channel_229_real_DATA,
    op_out_data_35 => channel_237_real_DATA,
    op_out_data_36 => channel_240_real_DATA,
    op_out_data_37 => channel_244_real_DATA,
    op_out_data_38 => channel_248_real_DATA,
    op_out_data_39 => channel_252_real_DATA,
    op_out_data_4 => channel_34_real_DATA,
    op_out_data_40 => channel_256_real_DATA,
    op_out_data_41 => channel_271_real_DATA,
    op_out_data_42 => channel_45_real_vect_DATA,
    op_out_data_43 => channel_49_real_vect_DATA,
    op_out_data_44 => channel_92_real_vect_DATA,
    op_out_data_45 => channel_96_real_vect_DATA,
    op_out_data_46 => channel_134_real_vect_DATA,
    op_out_data_47 => channel_138_real_vect_DATA,
    op_out_data_48 => channel_176_real_vect_DATA,
    op_out_data_49 => channel_180_real_vect_DATA,
    op_out_data_5 => channel_41_real_DATA,
    op_out_data_50 => channel_218_real_vect_DATA,
    op_out_data_51 => channel_222_real_vect_DATA,
    op_out_data_52 => channel_260_real_vect_DATA,
    op_out_data_53 => channel_264_real_vect_DATA,
    op_out_data_54 => channel_280_real_DATA,
    op_out_data_55 => channel_285_real_DATA,
    op_out_data_56 => channel_291_real_DATA,
    op_out_data_57 => channel_297_real_DATA,
    op_out_data_58 => channel_303_real_DATA,
    op_out_data_59 => channel_309_real_DATA,
    op_out_data_6 => channel_61_real_DATA,
    op_out_data_60 => channel_313_real_vect_DATA,
    op_out_data_61 => channel_317_real_vect_DATA,
    op_out_data_62 => channel_323_real_DATA,
    op_out_data_63 => channel_326_real_DATA,
    op_out_data_64 => channel_330_real_DATA,
    op_out_data_65 => channel_334_real_DATA,
    op_out_data_66 => channel_338_real_DATA,
    op_out_data_67 => channel_342_real_DATA,
    op_out_data_68 => channel_346_real_vect_DATA,
    op_out_data_69 => channel_350_real_vect_DATA,
    op_out_data_7 => channel_69_real_DATA,
    op_out_data_70 => channel_51_real_DATA,
    op_out_data_71 => channel_98_real_DATA,
    op_out_data_72 => channel_140_real_DATA,
    op_out_data_73 => channel_182_real_DATA,
    op_out_data_74 => channel_224_real_DATA,
    op_out_data_75 => channel_266_real_DATA,
    op_out_data_76 => tapiir_out_data_0,
    op_out_data_77 => tapiir_out_data_1,
    op_out_data_8 => channel_72_real_DATA,
    op_out_data_9 => channel_76_real_DATA,
    op_out_ready_0 => channel_7_real_READY,
    op_out_ready_1 => channel_13_real_READY,
    op_out_ready_10 => channel_80_real_READY,
    op_out_ready_11 => channel_84_real_READY,
    op_out_ready_12 => channel_88_real_READY,
    op_out_ready_13 => channel_103_real_READY,
    op_out_ready_14 => channel_111_real_READY,
    op_out_ready_15 => channel_114_real_READY,
    op_out_ready_16 => channel_118_real_READY,
    op_out_ready_17 => channel_122_real_READY,
    op_out_ready_18 => channel_126_real_READY,
    op_out_ready_19 => channel_130_real_READY,
    op_out_ready_2 => channel_20_real_READY,
    op_out_ready_20 => channel_145_real_READY,
    op_out_ready_21 => channel_153_real_READY,
    op_out_ready_22 => channel_156_real_READY,
    op_out_ready_23 => channel_160_real_READY,
    op_out_ready_24 => channel_164_real_READY,
    op_out_ready_25 => channel_168_real_READY,
    op_out_ready_26 => channel_172_real_READY,
    op_out_ready_27 => channel_187_real_READY,
    op_out_ready_28 => channel_195_real_READY,
    op_out_ready_29 => channel_198_real_READY,
    op_out_ready_3 => channel_27_real_READY,
    op_out_ready_30 => channel_202_real_READY,
    op_out_ready_31 => channel_206_real_READY,
    op_out_ready_32 => channel_210_real_READY,
    op_out_ready_33 => channel_214_real_READY,
    op_out_ready_34 => channel_229_real_READY,
    op_out_ready_35 => channel_237_real_READY,
    op_out_ready_36 => channel_240_real_READY,
    op_out_ready_37 => channel_244_real_READY,
    op_out_ready_38 => channel_248_real_READY,
    op_out_ready_39 => channel_252_real_READY,
    op_out_ready_4 => channel_34_real_READY,
    op_out_ready_40 => channel_256_real_READY,
    op_out_ready_41 => channel_271_real_READY,
    op_out_ready_42 => channel_45_real_vect_READY,
    op_out_ready_43 => channel_49_real_vect_READY,
    op_out_ready_44 => channel_92_real_vect_READY,
    op_out_ready_45 => channel_96_real_vect_READY,
    op_out_ready_46 => channel_134_real_vect_READY,
    op_out_ready_47 => channel_138_real_vect_READY,
    op_out_ready_48 => channel_176_real_vect_READY,
    op_out_ready_49 => channel_180_real_vect_READY,
    op_out_ready_5 => channel_41_real_READY,
    op_out_ready_50 => channel_218_real_vect_READY,
    op_out_ready_51 => channel_222_real_vect_READY,
    op_out_ready_52 => channel_260_real_vect_READY,
    op_out_ready_53 => channel_264_real_vect_READY,
    op_out_ready_54 => channel_280_real_READY,
    op_out_ready_55 => channel_285_real_READY,
    op_out_ready_56 => channel_291_real_READY,
    op_out_ready_57 => channel_297_real_READY,
    op_out_ready_58 => channel_303_real_READY,
    op_out_ready_59 => channel_309_real_READY,
    op_out_ready_6 => channel_61_real_READY,
    op_out_ready_60 => channel_313_real_vect_READY,
    op_out_ready_61 => channel_317_real_vect_READY,
    op_out_ready_62 => channel_323_real_READY,
    op_out_ready_63 => channel_326_real_READY,
    op_out_ready_64 => channel_330_real_READY,
    op_out_ready_65 => channel_334_real_READY,
    op_out_ready_66 => channel_338_real_READY,
    op_out_ready_67 => channel_342_real_READY,
    op_out_ready_68 => channel_346_real_vect_READY,
    op_out_ready_69 => channel_350_real_vect_READY,
    op_out_ready_7 => channel_69_real_READY,
    op_out_ready_70 => channel_51_real_READY,
    op_out_ready_71 => channel_98_real_READY,
    op_out_ready_72 => channel_140_real_READY,
    op_out_ready_73 => channel_182_real_READY,
    op_out_ready_74 => channel_224_real_READY,
    op_out_ready_75 => channel_266_real_READY,
    op_out_ready_76 => tapiir_out_ready_0,
    op_out_ready_77 => tapiir_out_ready_1,
    op_out_ready_8 => channel_72_real_READY,
    op_out_ready_9 => channel_76_real_READY,
    op_out_valid_0 => channel_7_real_VALID,
    op_out_valid_1 => channel_13_real_VALID,
    op_out_valid_10 => channel_80_real_VALID,
    op_out_valid_11 => channel_84_real_VALID,
    op_out_valid_12 => channel_88_real_VALID,
    op_out_valid_13 => channel_103_real_VALID,
    op_out_valid_14 => channel_111_real_VALID,
    op_out_valid_15 => channel_114_real_VALID,
    op_out_valid_16 => channel_118_real_VALID,
    op_out_valid_17 => channel_122_real_VALID,
    op_out_valid_18 => channel_126_real_VALID,
    op_out_valid_19 => channel_130_real_VALID,
    op_out_valid_2 => channel_20_real_VALID,
    op_out_valid_20 => channel_145_real_VALID,
    op_out_valid_21 => channel_153_real_VALID,
    op_out_valid_22 => channel_156_real_VALID,
    op_out_valid_23 => channel_160_real_VALID,
    op_out_valid_24 => channel_164_real_VALID,
    op_out_valid_25 => channel_168_real_VALID,
    op_out_valid_26 => channel_172_real_VALID,
    op_out_valid_27 => channel_187_real_VALID,
    op_out_valid_28 => channel_195_real_VALID,
    op_out_valid_29 => channel_198_real_VALID,
    op_out_valid_3 => channel_27_real_VALID,
    op_out_valid_30 => channel_202_real_VALID,
    op_out_valid_31 => channel_206_real_VALID,
    op_out_valid_32 => channel_210_real_VALID,
    op_out_valid_33 => channel_214_real_VALID,
    op_out_valid_34 => channel_229_real_VALID,
    op_out_valid_35 => channel_237_real_VALID,
    op_out_valid_36 => channel_240_real_VALID,
    op_out_valid_37 => channel_244_real_VALID,
    op_out_valid_38 => channel_248_real_VALID,
    op_out_valid_39 => channel_252_real_VALID,
    op_out_valid_4 => channel_34_real_VALID,
    op_out_valid_40 => channel_256_real_VALID,
    op_out_valid_41 => channel_271_real_VALID,
    op_out_valid_42 => channel_45_real_vect_VALID,
    op_out_valid_43 => channel_49_real_vect_VALID,
    op_out_valid_44 => channel_92_real_vect_VALID,
    op_out_valid_45 => channel_96_real_vect_VALID,
    op_out_valid_46 => channel_134_real_vect_VALID,
    op_out_valid_47 => channel_138_real_vect_VALID,
    op_out_valid_48 => channel_176_real_vect_VALID,
    op_out_valid_49 => channel_180_real_vect_VALID,
    op_out_valid_5 => channel_41_real_VALID,
    op_out_valid_50 => channel_218_real_vect_VALID,
    op_out_valid_51 => channel_222_real_vect_VALID,
    op_out_valid_52 => channel_260_real_vect_VALID,
    op_out_valid_53 => channel_264_real_vect_VALID,
    op_out_valid_54 => channel_280_real_VALID,
    op_out_valid_55 => channel_285_real_VALID,
    op_out_valid_56 => channel_291_real_VALID,
    op_out_valid_57 => channel_297_real_VALID,
    op_out_valid_58 => channel_303_real_VALID,
    op_out_valid_59 => channel_309_real_VALID,
    op_out_valid_6 => channel_61_real_VALID,
    op_out_valid_60 => channel_313_real_vect_VALID,
    op_out_valid_61 => channel_317_real_vect_VALID,
    op_out_valid_62 => channel_323_real_VALID,
    op_out_valid_63 => channel_326_real_VALID,
    op_out_valid_64 => channel_330_real_VALID,
    op_out_valid_65 => channel_334_real_VALID,
    op_out_valid_66 => channel_338_real_VALID,
    op_out_valid_67 => channel_342_real_VALID,
    op_out_valid_68 => channel_346_real_vect_VALID,
    op_out_valid_69 => channel_350_real_vect_VALID,
    op_out_valid_7 => channel_69_real_VALID,
    op_out_valid_70 => channel_51_real_VALID,
    op_out_valid_71 => channel_98_real_VALID,
    op_out_valid_72 => channel_140_real_VALID,
    op_out_valid_73 => channel_182_real_VALID,
    op_out_valid_74 => channel_224_real_VALID,
    op_out_valid_75 => channel_266_real_VALID,
    op_out_valid_76 => tapiir_out_valid_0,
    op_out_valid_77 => tapiir_out_valid_1,
    op_out_valid_8 => channel_72_real_VALID,
    op_out_valid_9 => channel_76_real_VALID,
    rst => rst
);

end behaviour;
