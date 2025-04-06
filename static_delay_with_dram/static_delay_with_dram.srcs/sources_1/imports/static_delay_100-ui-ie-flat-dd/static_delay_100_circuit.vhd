library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity static_delay_100 is
generic (
    ram_width : natural := 34;
    ram_depth : natural := 2;
    fifo_ram_depth : natural := 100001;
    fifo_ram_init : natural := 100000;
    DRAM_START_ADDRESS : std_logic_vector := X"00080000";
    DRAM_SIZE : natural := 20000000
    );
port (
    clk : in std_logic;
    rst : in std_logic;

    static_delay_100_in_data_0 : in std_logic_vector(33 downto 0);
    static_delay_100_in_ready_0 : out std_logic;
    static_delay_100_in_valid_0 : in std_logic;
    static_delay_100_out_data_0 : out std_logic_vector(33 downto 0);
    static_delay_100_out_ready_0 : in std_logic;
    static_delay_100_out_valid_0 : out std_logic;
    
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
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    
        -- Debug Clock Cycle Ports
    avg_read_cycles_out    : out std_logic_vector(12 downto 0);
    avg_write_cycles_out   : out std_logic_vector(12 downto 0);
    max_read_cycles_out    : out std_logic_vector(12 downto 0);
    max_write_cycles_out   : out std_logic_vector(12 downto 0);
    min_read_cycles_out    : out std_logic_vector(12 downto 0);
    min_write_cycles_out   : out std_logic_vector(12 downto 0);
    
    axi_avg_read_cycles_out    : out std_logic_vector(12 downto 0);
    axi_avg_write_cycles_out   : out std_logic_vector(12 downto 0);
    axi_max_read_cycles_out    : out std_logic_vector(12 downto 0);
    axi_max_write_cycles_out   : out std_logic_vector(12 downto 0);
    axi_min_read_cycles_out    : out std_logic_vector(12 downto 0);
    axi_min_write_cycles_out   : out std_logic_vector(12 downto 0) 
);
end static_delay_100;

architecture behaviour of static_delay_100 is

component hs_fifo is
generic (
      ram_width : INTEGER;
      ram_depth : INTEGER;
      ram_init : INTEGER;
      SIMULATION_ONLY : INTEGER;
      C_M_AXI_ADDR_WIDTH : INTEGER;
      C_M_AXI_DATA_WIDTH : INTEGER;
      C_NATIVE_DATA_WIDTH : INTEGER;
      C_LENGTH_WIDTH : INTEGER;
      C_FAMILY : STRING;
      DRAM_START_ADDRESS : STD_LOGIC_VECTOR;
      DRAM_SIZE : INTEGER
    );
    PORT (
      buffer_in_ready : OUT STD_LOGIC;
      buffer_in_valid : IN STD_LOGIC;
      buffer_in_data : IN STD_LOGIC_VECTOR(33 DOWNTO 0);
      buffer_out_ready : IN STD_LOGIC;
      buffer_out_valid : OUT STD_LOGIC;
      buffer_out_data : OUT STD_LOGIC_VECTOR(33 DOWNTO 0);
      m_axi_aclk : IN STD_LOGIC;
      m_axi_aresetn : IN STD_LOGIC;
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
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      
          -- Debug Clock Cycle Ports
    avg_read_cycles_out    : out std_logic_vector(12 downto 0);
    avg_write_cycles_out   : out std_logic_vector(12 downto 0);
    max_read_cycles_out    : out std_logic_vector(12 downto 0);
    max_write_cycles_out   : out std_logic_vector(12 downto 0);
    min_read_cycles_out    : out std_logic_vector(12 downto 0);
    min_write_cycles_out   : out std_logic_vector(12 downto 0);
    
    axi_avg_read_cycles_out    : out std_logic_vector(12 downto 0);
    axi_avg_write_cycles_out   : out std_logic_vector(12 downto 0);
    axi_max_read_cycles_out    : out std_logic_vector(12 downto 0);
    axi_max_write_cycles_out   : out std_logic_vector(12 downto 0);
    axi_min_read_cycles_out    : out std_logic_vector(12 downto 0);
    axi_min_write_cycles_out   : out std_logic_vector(12 downto 0)    
    );
end component;

signal channel_0_real_vect_VALID,
channel_0_real_vect_READY,
channel_2_real_vect_VALID,
channel_2_real_vect_READY : std_logic;

signal channel_0_real_vect_DATA,
channel_2_real_vect_DATA : std_logic_vector(33 downto 0);

begin


hs_fifo_0 : hs_fifo
generic map (
    ram_width => ram_width,
--    ram_depth => 100001,
--    ram_init => 100000,
    ram_depth => 100001,
    ram_init => 100000,
    SIMULATION_ONLY => 0,
    C_M_AXI_ADDR_WIDTH => 32,
    C_M_AXI_DATA_WIDTH => 32,
    C_NATIVE_DATA_WIDTH => 32,
    C_LENGTH_WIDTH => 12,
    C_FAMILY => "zynq",
    DRAM_START_ADDRESS => X"00080000",
    DRAM_SIZE => 100000000
)
port map (
    buffer_in_data => static_delay_100_in_data_0,
    buffer_in_ready => static_delay_100_in_ready_0,
    buffer_in_valid => static_delay_100_in_valid_0,
    buffer_out_data => static_delay_100_out_data_0,
    buffer_out_ready => static_delay_100_out_ready_0,
    buffer_out_valid => static_delay_100_out_valid_0,
    m_axi_aclk => clk,
    m_axi_aresetn => rst,
    
    md_error => md_error,
    m_axi_arready => m_axi_arready,
    m_axi_arvalid => m_axi_arvalid,
    m_axi_araddr => m_axi_araddr,
    m_axi_arlen => m_axi_arlen,
    m_axi_arsize => m_axi_arsize,
    m_axi_arburst => m_axi_arburst,
    m_axi_arprot => m_axi_arprot,
    m_axi_arcache => m_axi_arcache,
    m_axi_rready => m_axi_rready,
    m_axi_rvalid => m_axi_rvalid,
    m_axi_rdata => m_axi_rdata,
    m_axi_rresp => m_axi_rresp,
    m_axi_rlast => m_axi_rlast,
    m_axi_awready => m_axi_awready,
    m_axi_awvalid => m_axi_awvalid,
    m_axi_awaddr => m_axi_awaddr,
    m_axi_awlen => m_axi_awlen,
    m_axi_awsize => m_axi_awsize,
    m_axi_awburst => m_axi_awburst,
    m_axi_awprot => m_axi_awprot,
    m_axi_awcache => m_axi_awcache,
    m_axi_wready => m_axi_wready,
    m_axi_wvalid => m_axi_wvalid,
    m_axi_wdata => m_axi_wdata,
    m_axi_wstrb => m_axi_wstrb,
    m_axi_wlast => m_axi_wlast,
    m_axi_bready => m_axi_bready,
    m_axi_bvalid => m_axi_bvalid,
    m_axi_bresp => m_axi_bresp,
        -- Debug Clock Cycle Ports
                avg_read_cycles_out => avg_read_cycles_out,
                avg_write_cycles_out => avg_write_cycles_out,
                max_read_cycles_out => max_read_cycles_out,
                max_write_cycles_out => max_write_cycles_out,
                min_read_cycles_out => min_read_cycles_out,
                min_write_cycles_out => min_write_cycles_out,
                
                axi_avg_read_cycles_out => axi_avg_read_cycles_out,
                axi_avg_write_cycles_out => axi_avg_write_cycles_out,
                axi_max_read_cycles_out => axi_max_read_cycles_out,
                axi_max_write_cycles_out => axi_max_write_cycles_out,
                axi_min_read_cycles_out => axi_min_read_cycles_out,
                axi_min_write_cycles_out => axi_min_write_cycles_out
);


end behaviour;
