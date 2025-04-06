library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity delay is
generic (
    ram_width : natural;
    ram_init  : natural := 0;
    ram_depth : natural := 1;
    SIMULATION_ONLY : INTEGER;
    C_M_AXI_ADDR_WIDTH : INTEGER;
    C_M_AXI_DATA_WIDTH : INTEGER;
    C_NATIVE_DATA_WIDTH : INTEGER;
    C_LENGTH_WIDTH : INTEGER;
    C_FAMILY : STRING;
    DRAM_START_ADDRESS : STD_LOGIC_VECTOR;
    DRAM_SIZE : INTEGER
    );
  port ( clk : in std_logic;
         rst : in std_logic;

         op_in_ready_0 : out std_logic;
         op_in_valid_0 : in std_logic;
         op_in_data_0  : in std_logic_vector(33 downto 0) ;

         op_in_ready_1 : out std_logic;
         op_in_valid_1 : in std_logic;
         op_in_data_1  : in std_logic_vector(33 downto 0) ;

         op_out_ready_0  : in std_logic;
         op_out_valid_0  : out std_logic;
         op_out_data_0   : out std_logic_vector(33 downto 0);
         
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
end delay;

architecture connections of delay is

    component axi_fifo_v3 is
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
          
                   op_in_ready_1 : out std_logic;
         op_in_valid_1 : in std_logic;
         op_in_data_1  : in std_logic_vector(33 downto 0) ;
          
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
          m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
        );
    end component;

    -- This is the RAM of the buffer.
--    type ram_type is array (0 to ram_depth - 1) of std_logic_vector (ram_width - 1 downto 0);
--    signal ram : ram_type;
--    attribute ram_style : string;
--    attribute ram_style of ram : signal is "block";
    -- index for RAM
    signal read_index, write_index: natural range 0 to ram_depth - 1 := 0;
    signal fifo_empty, cmd_ready, fifo_full: std_logic := '1';
    signal last_cmd : std_logic_vector  (0 to ram_width - 1);
function min_value(A_vector: std_logic_vector; B_natural: natural) return natural is
    variable A_natural : natural;
  begin
    -- Convert A from std_logic_vector to natural
    A_natural := to_integer(unsigned(A_vector));

    -- Compare A and B and return the smaller
    if A_natural < B_natural then
      return A_natural;
    else
      return B_natural;
    end if;
  end function min_value;

begin

  hs_fifo_0 : axi_fifo_v3
generic map (
    ram_width => ram_width,
--    ram_depth => 100001,
--    ram_init => 100000,
    ram_depth => ram_depth,
    ram_init => ram_init,
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
    buffer_in_data => op_in_data_0,
    buffer_in_ready => op_in_ready_0,
    buffer_in_valid => op_in_valid_0,
    buffer_out_data => op_out_data_0,
    buffer_out_ready => op_out_ready_0,
    buffer_out_valid => op_out_valid_0,
    
    op_in_ready_1 => op_in_ready_1,
    op_in_valid_1 => op_in_valid_1,
    op_in_data_1 => op_in_data_1,
    
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
    m_axi_bresp => m_axi_bresp
);


--  -- FIFO read logic
--  read_logic: process(clk, rst)
--  variable tmp_write_index : natural;
--  variable tmp_read_index : natural;
--  begin
--    if rst = '0' then

--      read_index <= 0;
--      write_index <= ram_init;

--      if ram_init + 1 = ram_depth then
--        fifo_full <= '1';
--      else
--        fifo_full <= '0';
--      end if;

--      if ram_init = 0 then
--        fifo_empty <= '1';
--      else
--        fifo_empty <= '0';
--      end if;

--      cmd_ready <= '0';

--    elsif rising_edge(clk) then

----      -- Input behavior
----      if op_in_valid_0 = '1' and fifo_full = '0' then
----        ram(write_index) <= op_in_data_0;
----        write_index <= (write_index + 1) mod ram_depth;
----        tmp_write_index := (write_index + 1) mod ram_depth;
----        else
----        tmp_write_index := write_index mod ram_depth;
----      end if;

----      -- Output behavior
----      if op_out_ready_0 = '1' and fifo_empty = '0' then
----        op_out_data_0 <= ram(read_index);
----        read_index <= (read_index + 1) mod ram_depth;
----        tmp_read_index := (read_index + 1) mod ram_depth;
----        else
----        tmp_read_index := read_index mod ram_depth;
----      end if;

--      if op_in_valid_1 = '1' and cmd_ready = '1' and last_cmd /= op_in_data_1 then
--        tmp_read_index := 0;
--        tmp_write_index := min_value(op_in_data_1, ram_depth);
--        write_index <= tmp_write_index;
--        read_index <= tmp_read_index;
--      end if;

--      if tmp_read_index = tmp_write_index then
--        fifo_empty <= '1';
--      else
--          fifo_empty <= '0';
--      end if;
--      if ((tmp_write_index + 1) mod ram_depth) = tmp_read_index then
--        fifo_full <= '1';
--      else
--        fifo_full <= '0';
--      end if;

--      cmd_ready <= '1';
--      last_cmd <= op_in_data_1;

--    end if;
--  end process read_logic;


  -- Outputs
--  op_in_ready_1 <= cmd_ready;
--  op_in_ready_0 <= not fifo_full;
--  op_out_valid_0 <= not fifo_empty;

end connections;


