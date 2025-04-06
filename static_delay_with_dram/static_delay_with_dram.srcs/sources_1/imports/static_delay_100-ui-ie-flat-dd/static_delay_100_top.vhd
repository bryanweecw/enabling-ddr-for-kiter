-- Wrapper for PL to interface with data coming in from the ADC
-- and to send data out to the DAC
-- Functionality includes:
-- - Expose data from audio codec
-- - Convert data from audio codec (24-bit two's complement) to 34-bit FloPoCo floating point
-- - Implement handshake protocol to make executions synchronous

library ieee;
use ieee.std_logic_1164.ALL;

entity audio_interface_wrapper is
  generic (
    fifo_ram_depth : natural := 100001;
    fifo_ram_init : natural := 100000;
    DRAM_START_ADDRESS : std_logic_vector := X"00080000";
    DRAM_SIZE : natural := 20000000
  );
  port (
    ac_bclk_0 : out std_logic;
ac_pbdat_0 : out std_logic;
ac_recdat_0 : in std_logic;
ac_pblrc_0 : out std_logic;
ac_reclrc_0 : out std_logic;
sys_clk : in std_logic;
reset : in std_logic;
mclk : in std_logic;
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
    
        -- Debug outputs for static_delay_100 signals:
    debug_static_delay_in_ready  : out std_logic;
    debug_static_delay_in_valid  : out std_logic;
    debug_static_delay_in_data   : out std_logic_vector(33 downto 0);
    debug_static_delay_out_ready : out std_logic;
    debug_static_delay_out_valid : out std_logic;
    debug_static_delay_out_data  : out std_logic_vector(33 downto 0);
    
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
end audio_interface_wrapper;

architecture structure of audio_interface_wrapper is
  component static_delay_100 is
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
    static_delay_100_in_ready_0 : out std_logic;
    static_delay_100_in_valid_0 : in std_logic;
    static_delay_100_in_data_0 : in std_logic_vector(ram_width - 1 downto 0) := (others => '0');

    static_delay_100_out_ready_0 : in std_logic;
    static_delay_100_out_valid_0 : out std_logic;
    static_delay_100_out_data_0 : out std_logic_vector(ram_width - 1 downto 0) := (others => '0');
    
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

  end component static_delay_100;

  component i2s_transceiver is
  port (
    reset_n : in std_logic;
    mclk : in std_logic;
    sclk : out std_logic;
    ws : out std_logic;
    sd_tx : out std_logic;
    sd_rx : in std_logic;
    l_data_tx : in std_logic_vector ( 23 downto 0 );
    r_data_tx : in std_logic_vector ( 23 downto 0 );
    l_data_rx : out std_logic_vector ( 23 downto 0 );
    r_data_rx : out std_logic_vector ( 23 downto 0 )
  );
  end component i2s_transceiver;

  component input_interface is
  port (    clk : in std_logic;
    ws : in std_logic;
    rst : in std_logic;
    l_valid : out std_logic;
    r_valid : out std_logic;
    l_ready : in std_logic;
    r_ready : in std_logic;
    l_data_in : in std_logic_vector ( 23 downto 0 );
    r_data_in : in std_logic_vector ( 23 downto 0 );
    l_data_out : out std_logic_vector ( 23 downto 0 );
    r_data_out : out std_logic_vector ( 23 downto 0 )
);
end component input_interface;
component i2s_to_fpc is
  port (    clk : in std_logic;
    rst : in std_logic;
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_data_0 : in std_logic_vector ( 23 downto 0 );
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_data_0 : out std_logic_vector ( 33 downto 0 )
);
end component i2s_to_fpc;
component output_interface is
  port (    clk : in std_logic;
    ws : in std_logic;
    rst : in std_logic;
    l_valid : in std_logic;
    r_valid : in std_logic;
    l_ready : out std_logic;
    r_ready : out std_logic;
    l_data_in : in std_logic_vector ( 23 downto 0 );
    r_data_in : in std_logic_vector ( 23 downto 0 );
    l_data_out : out std_logic_vector ( 23 downto 0 );
    r_data_out : out std_logic_vector ( 23 downto 0 )
);
end component output_interface;
component fpc_to_i2s is
  port (    clk : in std_logic;
    rst : in std_logic;
    op_in_ready_0 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_data_0 : in std_logic_vector ( 33 downto 0 );
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_data_0 : out std_logic_vector ( 23 downto 0 )
);
end component fpc_to_i2s;


  signal sys_clk_sig : std_logic;
  signal rst_sig : std_logic;
  signal mclk_sig : std_logic;

signal i2s_transceiver_0_l_data_rx : std_logic_vector ( 23 downto 0);
signal i2s_transceiver_0_r_data_rx : std_logic_vector ( 23 downto 0);
signal i2s_transceiver_0_l_data_tx : std_logic_vector ( 23 downto 0);
signal i2s_transceiver_0_r_data_tx : std_logic_vector ( 23 downto 0);
signal i2s_transceiver_0_sclk : std_logic;
signal i2s_transceiver_0_sd_tx : std_logic;
signal i2s_transceiver_0_ws : std_logic;
signal i2s_transceiver_0_sd_rx : std_logic;

signal input_interface_0_l_data_out : std_logic_vector ( 23 downto 0);
signal input_interface_0_l_valid : std_logic;
signal input_interface_0_r_data_out : std_logic_vector ( 23 downto 0);
signal input_interface_0_r_valid : std_logic;

signal output_interface_0_l_data_out : std_logic_vector ( 23 downto 0);
signal output_interface_0_l_ready : std_logic;
signal output_interface_0_r_data_out : std_logic_vector ( 23 downto 0);
signal output_interface_0_r_ready : std_logic;

signal i2s_to_fpc_0_op_out_valid_0 : std_logic;
signal i2s_to_fpc_0_op_in_ready_0 : std_logic;
signal i2s_to_fpc_0_op_out_data_0 : std_logic_vector( 33 downto 0 );
signal i2s_to_fpc_1_op_out_valid_0 : std_logic;
signal i2s_to_fpc_1_op_in_ready_0 : std_logic;
signal i2s_to_fpc_1_op_out_data_0 : std_logic_vector( 33 downto 0 );

signal fpc_to_i2s_0_op_out_valid_0 : std_logic;
signal fpc_to_i2s_0_op_in_ready_0 : std_logic;
signal fpc_to_i2s_0_op_out_data_0 : std_logic_vector( 23 downto 0 );
signal fpc_to_i2s_1_op_out_valid_0 : std_logic;
signal fpc_to_i2s_1_op_in_ready_0 : std_logic;
signal fpc_to_i2s_1_op_out_data_0 : std_logic_vector( 23 downto 0 );

signal static_delay_100_in_ready_0_i2s_to_fpc_0_op_out_ready_0 : std_logic;
signal static_delay_100_out_valid_0_fpc_to_i2s_0_op_in_valid_0 : std_logic;
signal static_delay_100_out_data_0_fpc_to_i2s_0_op_in_data_0 : std_logic_vector( 33 downto 0 );


begin

ac_bclk_0 <= i2s_transceiver_0_sclk;
ac_pbdat_0 <= i2s_transceiver_0_sd_tx;
i2s_transceiver_0_sd_rx <= ac_recdat_0;
ac_pblrc_0 <= i2s_transceiver_0_ws;
ac_reclrc_0 <= i2s_transceiver_0_ws;
sys_clk_sig <= sys_clk;
mclk_sig <= mclk;
rst_sig <= reset;

 -- Debug signal assignments:
  debug_static_delay_in_ready  <= static_delay_100_in_ready_0_i2s_to_fpc_0_op_out_ready_0;
  debug_static_delay_in_valid  <= i2s_to_fpc_0_op_out_valid_0;
  debug_static_delay_in_data   <= i2s_to_fpc_0_op_out_data_0;
  debug_static_delay_out_ready <= fpc_to_i2s_0_op_in_ready_0;
  debug_static_delay_out_valid <= static_delay_100_out_valid_0_fpc_to_i2s_0_op_in_valid_0;
  debug_static_delay_out_data  <= static_delay_100_out_data_0_fpc_to_i2s_0_op_in_data_0;

i2s_transceiver_0: component i2s_transceiver
    port map (
    mclk => mclk_sig,
    reset_n => rst_sig,
    sclk => i2s_transceiver_0_sclk,
    ws => i2s_transceiver_0_ws,
    sd_rx => ac_recdat_0,
    sd_tx => i2s_transceiver_0_sd_tx,
    l_data_rx( 23 downto 0 ) => i2s_transceiver_0_l_data_rx( 23 downto 0 ),
    r_data_rx( 23 downto 0 ) => i2s_transceiver_0_r_data_rx( 23 downto 0 ),
    l_data_tx( 23 downto 0 ) => i2s_transceiver_0_l_data_tx( 23 downto 0 ),
    r_data_tx( 23 downto 0 ) => i2s_transceiver_0_r_data_tx( 23 downto 0 )
);

static_delay_100_0 : component static_delay_100
generic map (
    fifo_ram_depth => fifo_ram_depth,
    fifo_ram_init => fifo_ram_init, 

    DRAM_START_ADDRESS => DRAM_START_ADDRESS,
    DRAM_SIZE => DRAM_SIZE
)
port map (
clk => sys_clk_sig,
rst => rst_sig,
    static_delay_100_in_ready_0 => static_delay_100_in_ready_0_i2s_to_fpc_0_op_out_ready_0,
    static_delay_100_in_valid_0 => i2s_to_fpc_0_op_out_valid_0,
    static_delay_100_in_data_0 => i2s_to_fpc_0_op_out_data_0,

    static_delay_100_out_ready_0 => fpc_to_i2s_0_op_in_ready_0,
    static_delay_100_out_valid_0 => static_delay_100_out_valid_0_fpc_to_i2s_0_op_in_valid_0,
    static_delay_100_out_data_0 => static_delay_100_out_data_0_fpc_to_i2s_0_op_in_data_0,
    
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

input_interface_0: component input_interface
    port map (
    clk => sys_clk_sig,
    rst => rst_sig,
    ws => i2s_transceiver_0_ws,
    l_data_in( 23 downto 0 ) => i2s_transceiver_0_l_data_rx( 23 downto 0 ),
    l_data_out( 23 downto 0 ) => input_interface_0_l_data_out( 23 downto 0 ),
    l_ready => i2s_to_fpc_0_op_in_ready_0,
    l_valid => input_interface_0_l_valid,
    r_data_in( 23 downto 0 ) => i2s_transceiver_0_r_data_rx( 23 downto 0 ),
    r_data_out( 23 downto 0 ) => input_interface_0_r_data_out( 23 downto 0 ),
    r_ready => i2s_to_fpc_1_op_in_ready_0,
    r_valid => input_interface_0_r_valid
);
output_interface_0: component output_interface
    port map (
    clk => sys_clk_sig,
    rst => rst_sig,
    ws => i2s_transceiver_0_ws,
    l_data_in( 23 downto 0 ) => fpc_to_i2s_0_op_out_data_0( 23 downto 0 ),
    l_data_out( 23 downto 0 ) => i2s_transceiver_0_l_data_tx( 23 downto 0 ),
    l_ready => output_interface_0_l_ready,
    l_valid => fpc_to_i2s_0_op_out_valid_0,
    r_data_in( 23 downto 0 ) => fpc_to_i2s_1_op_out_data_0( 23 downto 0 ),
    r_data_out( 23 downto 0 ) => i2s_transceiver_0_r_data_tx( 23 downto 0 ),
    r_ready => output_interface_0_r_ready,
    r_valid => fpc_to_i2s_1_op_out_valid_0
);
i2s_to_fpc_0: component i2s_to_fpc
    port map (
    clk => sys_clk_sig,
    rst => rst_sig,
    op_in_data_0(23 downto 0) => input_interface_0_l_data_out(23 downto 0),
    op_in_ready_0 => i2s_to_fpc_0_op_in_ready_0,
    op_in_valid_0 => input_interface_0_l_valid,
    op_out_data_0(33 downto 0) => i2s_to_fpc_0_op_out_data_0(33 downto 0),
    op_out_ready_0 => static_delay_100_in_ready_0_i2s_to_fpc_0_op_out_ready_0,
    op_out_valid_0 => i2s_to_fpc_0_op_out_valid_0
);

fpc_to_i2s_0: component fpc_to_i2s
    port map (
    clk => sys_clk_sig,
    rst => rst_sig,
    op_in_data_0(33 downto 0) => static_delay_100_out_data_0_fpc_to_i2s_0_op_in_data_0,
    op_in_valid_0 => static_delay_100_out_valid_0_fpc_to_i2s_0_op_in_valid_0,
    op_in_ready_0 => fpc_to_i2s_0_op_in_ready_0,
    op_out_data_0(23 downto 0) => fpc_to_i2s_0_op_out_data_0,
    op_out_ready_0 => output_interface_0_l_ready,
    op_out_valid_0 => fpc_to_i2s_0_op_out_valid_0
);


end structure;
