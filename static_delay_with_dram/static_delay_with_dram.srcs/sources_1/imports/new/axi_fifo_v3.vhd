----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2024 16:54:29
-- Design Name: 
-- Module Name: axi_fifo_v3_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
-- Source: AXI reference https://docs.xilinx.com/v/u/en-US/ug761_axi_reference_guide
-- Source: AXI docs: https://fpgaemu.readthedocs.io/en/latest/axi.html#the-axi-protocol 
-- Remember to add the libraries: https://support.xilinx.com/s/question/0D52E00007ECS8lSAH/aximasterburst-creating-ip-from-vhdl-instantiation-problem?language=en_US

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library work;
library axi_master_burst_v2_0_7;

-- THIS SHALL BE THE TOP LEVEL MODULE
entity hs_fifo is
  generic (
    ram_width : natural := 34;
    ram_depth : natural := 11;
    ram_init  : natural := 0;
    SIMULATION_ONLY: natural := 0; --for AXI master simulation
    
    -- axi master burst parameters
    C_M_AXI_ADDR_WIDTH  : integer := 32;
    C_M_AXI_DATA_WIDTH  : integer := 32;
    C_NATIVE_DATA_WIDTH : integer := 32;
    C_LENGTH_WIDTH      : integer := 12;
    C_FAMILY            : string  := "zynq7000";
    
    -- DRAM parameters
    DRAM_START_ADDRESS  : std_logic_vector := X"0008_0000";
    DRAM_SIZE           : natural := 100
    );

  port (
--    buffer_clk : in std_logic;
--    buffer_rst : in std_logic;

    -- axi input interface
    buffer_in_ready : out std_logic;
    buffer_in_valid : in std_logic;
    buffer_in_data  : in std_logic_vector(ram_width - 1 downto 0);

    -- axi output interface
    buffer_out_ready : in std_logic;
    buffer_out_valid : out std_logic;
    buffer_out_data  : out std_logic_vector(ram_width - 1 downto 0);
    
    -- AXI4 Master Burst
    m_axi_aclk          : in  std_logic;
    m_axi_aresetn       : in  std_logic; --active low
    md_error            : out  std_logic;
    
    -----------------------------------------------------------------------------
    -- AXI4 Master Read Channel
    -----------------------------------------------------------------------------
    -- Read Address Channel 
    m_axi_arready : in  std_logic;
    m_axi_arvalid : out std_logic;
    m_axi_araddr  : out std_logic_vector (C_M_AXI_ADDR_WIDTH-1 downto 0);
    m_axi_arlen   : out std_logic_vector (7 downto 0);
    m_axi_arsize  : out std_logic_vector (2 downto 0);
    m_axi_arburst : out std_logic_vector (1 downto 0);
    m_axi_arprot  : out std_logic_vector (2 downto 0);
    m_axi_arcache : out std_logic_vector (3 downto 0);
    
    -- Read Data Channel
    m_axi_rready : out std_logic;
    m_axi_rvalid : in  std_logic;
    m_axi_rdata  : in std_logic_vector (C_M_AXI_DATA_WIDTH-1 downto 0);
    m_axi_rresp  : in std_logic_vector (1 downto 0);
    m_axi_rlast  : in  std_logic;
    
    -----------------------------------------------------------------------------
    -- AXI4 Master Write Channel
    -----------------------------------------------------------------------------
    -- Write Address Channel                                               -- AXI4
    m_axi_awready               : in  std_logic                          ; -- AXI4
    m_axi_awvalid               : out std_logic                          ; -- AXI4
    m_axi_awaddr                : out std_logic_vector                     -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ; -- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)       ; -- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)       ; -- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)       ; -- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)       ; -- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)       ; -- AXI4
                                                                           -- AXI4
    -- Write Data Channel                                                  -- AXI4
    m_axi_wready                : in  std_logic                          ; -- AXI4
    m_axi_wvalid                : out std_logic                          ; -- AXI4
    m_axi_wdata                 : out std_logic_vector                     -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ; -- AXI4
    m_axi_wstrb                 : out std_logic_vector                     -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0); -- AXI4
    m_axi_wlast                 : out std_logic                          ; -- AXI4
                                                                           -- AXI4
    -- Write Response Channel                                              -- AXI4
    m_axi_bready                : out std_logic                          ; -- AXI4
    m_axi_bvalid                : in  std_logic                          ; -- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)       ; -- AXI4
    
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
end hs_fifo;

architecture simulation of hs_fifo is

         -----------------------------------------------------------------------------------------
         -- IPIC Request/Qualifiers
         -----------------------------------------------------------------------------------------
signal    ip2bus_mstrd_req           : std_logic                                           ;-- IPIC CMD
signal    ip2bus_mstwr_req           : std_logic                                           ;-- IPIC CMD
signal    ip2bus_mst_addr            : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)     ;-- IPIC CMD
signal    ip2bus_mst_length          : std_logic_vector(C_LENGTH_WIDTH-1 downto 0)         ;-- IPIC CMD
signal    ip2bus_mst_be              : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC CMD
signal    ip2bus_mst_type            : std_logic                                           ;-- IPIC CMD
signal    ip2bus_mst_lock            : std_logic                                           ;-- IPIC CMD
signal    ip2bus_mst_reset           : std_logic                                           ;-- IPIC CMD
      
          -----------------------------------------------------------------------------------------
          -- IPIC Request Status Reply
          -----------------------------------------------------------------------------------------
signal    bus2ip_mst_cmdack          : std_logic                                           ;-- IPIC Stat
signal    bus2ip_mst_cmplt           : std_logic                                           ;-- IPIC Stat
signal    bus2ip_mst_error           : std_logic                                           ;-- IPIC Stat
signal    bus2ip_mst_rearbitrate     : std_logic                                           ;-- IPIC Stat
signal    bus2ip_mst_cmd_timeout     : std_logic                                           ;-- IPIC Stat
      
          -----------------------------------------------------------------------------------------
          -- IPIC Read LocalLink Channel
          -----------------------------------------------------------------------------------------
signal    bus2ip_mstrd_d             : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;-- IPIC RD LLink
signal    bus2ip_mstrd_rem           : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC RD LLink
signal    bus2ip_mstrd_sof_n         : std_logic                                           ;-- IPIC RD LLink
signal    bus2ip_mstrd_eof_n         : std_logic                                           ;-- IPIC RD LLink
signal    bus2ip_mstrd_src_rdy_n     : std_logic                                           ;-- IPIC RD LLink
signal    bus2ip_mstrd_src_dsc_n     : std_logic                                           ;-- IPIC RD LLink

signal    ip2bus_mstrd_dst_rdy_n     : std_logic                                           ;-- IPIC RD LLink
signal    ip2bus_mstrd_dst_dsc_n     : std_logic                                           ;-- IPIC RD LLink
      
          -----------------------------------------------------------------------------------------
          -- IPIC Write LocalLink Channel
          -----------------------------------------------------------------------------------------
signal    ip2bus_mstwr_d             : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0)    ;-- IPIC WR LLink
signal    ip2bus_mstwr_rem           : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC WR LLink
signal    ip2bus_mstwr_sof_n         : std_logic                                           ;-- IPIC WR LLink
signal    ip2bus_mstwr_eof_n         : std_logic                                           ;-- IPIC WR LLink
signal    ip2bus_mstwr_src_rdy_n     : std_logic                                           ;-- IPIC WR LLink
signal    ip2bus_mstwr_src_dsc_n     : std_logic                                           ;-- IPIC WR LLink

signal    bus2ip_mstwr_dst_rdy_n     : std_logic                                           ;-- IPIC WR LLink
signal    bus2ip_mstwr_dst_dsc_n     : std_logic                                           ;-- IPIC WR LLink

-- Need to use Component Instantiation for .sv into VHDL
-- Link: https://vhdlwhiz.com/entity-instantiation-and-component-instantiation/
component sim_AXIMasterPlugModel
port (
  Clk    : in std_logic;
  ResetL : in std_logic;

  ip2bus_mstrd_req   : in std_logic;
  ip2bus_mstwr_req   : in std_logic;
  ip2bus_mst_addr    : in std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0); --[31:0]
  ip2bus_mst_length  : in std_logic_vector(C_LENGTH_WIDTH-1 downto 0); --[19:0]
  ip2bus_mst_be      : in std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0); --[7:0] 
  ip2bus_mst_type  : in std_logic;
  ip2bus_mst_lock  : in std_logic;
  ip2bus_mst_reset : in std_logic;
  
  bus2ip_mst_cmdack       : out std_logic;
  bus2ip_mst_cmplt        : out std_logic;
  bus2ip_mst_error        : out std_logic;
  bus2ip_mst_rearbitrate  : out std_logic;
  bus2ip_mst_cmd_timeout  : out std_logic;
  
  bus2ip_mstrd_d         : out std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 ); --[63:0]
  bus2ip_mstrd_rem       : out std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0); --[7:0]
  bus2ip_mstrd_sof_n     : out std_logic;
  bus2ip_mstrd_eof_n     : out std_logic;
  bus2ip_mstrd_src_rdy_n : out std_logic;
  bus2ip_mstrd_src_dsc_n : out std_logic;
  ip2bus_mstrd_dst_rdy_n : in std_logic;
  ip2bus_mstrd_dst_dsc_n : in std_logic;
  
  ip2bus_mstwr_d         : in std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0); --[63:0]
  ip2bus_mstwr_rem       : in std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0); --[7:0]
  ip2bus_mstwr_sof_n     : in std_logic; 
  ip2bus_mstwr_eof_n     : in std_logic;
  ip2bus_mstwr_src_rdy_n : in std_logic;
  ip2bus_mstwr_src_dsc_n : in std_logic; 
  bus2ip_mstwr_dst_rdy_n : out std_logic; 
  bus2ip_mstwr_dst_dsc_n : out std_logic
);
end component sim_AXIMasterPlugModel;


begin

  assert (ram_depth >= 0) report "Buffer size must be positive or zero" severity error;
  assert (ram_init >= 0) report "Initial marking must be positive or zero" severity error;
  assert (ram_depth >= ram_init) report "Initial marking of buffer overflow" severity error;
  assert (ram_depth >= DRAM_SIZE / ((ram_width + 31) / 32)) report "DRAM declared too small to support ram depth" severity error;

--  gen_fifo_zero: if (ram_depth = 0) generate

--    -- instance
--    DUT : entity work.axi_fifo_zero
--      generic map ( ram_width => ram_width
--                    )
--      port map ( buffer_clk        => buffer_clk,
--                 buffer_rst      => buffer_rst,
--                 buffer_in_ready => buffer_in_ready,
--                 buffer_in_valid => buffer_in_valid,
--                 buffer_in_data  => buffer_in_data,
--                 buffer_out_ready  => buffer_out_ready,
--                 buffer_out_valid  => buffer_out_valid,
--                 buffer_out_data => buffer_out_data);

--  end generate gen_fifo_zero;


--  gen_fifo_one: if (ram_depth = 1) generate

--    -- instance
--    DUT : entity work.axi_fifo_one
--      generic map ( ram_width => ram_width ,
--                    ram_init => ram_init
--                    )
--      port map ( buffer_clk        => buffer_clk,
--                 buffer_rst      => buffer_rst,
--                 buffer_in_ready => buffer_in_ready,
--                 buffer_in_valid => buffer_in_valid,
--                 buffer_in_data  => buffer_in_data,
--                 buffer_out_ready  => buffer_out_ready,
--                 buffer_out_valid  => buffer_out_valid,
--                 buffer_out_data => buffer_out_data);

--  end generate gen_fifo_one;


  gen_fifo_n: if (ram_depth > 1) generate

    -- instance
    DUT : entity work.axi_fifo_n3
      generic map ( ram_width => ram_width ,
                    ram_depth => ram_depth ,
                    ram_init => ram_init,
                    -- AXI parameters
                    C_M_AXI_ADDR_WIDTH  => C_M_AXI_ADDR_WIDTH,
                    C_NATIVE_DATA_WIDTH => C_NATIVE_DATA_WIDTH,
                    C_LENGTH_WIDTH      => C_LENGTH_WIDTH,
                    
                    -- DRAM parameters
                    DRAM_START_ADDRESS  => DRAM_START_ADDRESS,
                    DRAM_SIZE           => DRAM_SIZE 
                    )
      port map ( buffer_clk      => m_axi_aclk,
                 buffer_rst      => m_axi_aresetn,
                 buffer_in_ready => buffer_in_ready,
                 buffer_in_valid => buffer_in_valid,
                 buffer_in_data  => buffer_in_data,
                 buffer_out_ready  => buffer_out_ready,
                 buffer_out_valid  => buffer_out_valid,
                 buffer_out_data => buffer_out_data,
--                 write_idx => write_idx,
--                 read_idx => read_idx,
--                 w_curr_resp => w_curr_resp,
--                 r_curr_resp => r_curr_resp,
--                 r_src_rdy => r_src_rdy,
--                 r_dst_rdy => r_dst_rdy,
--                 r_add => r_add,
--                 w_add => w_add,

                -- Debug Ports for Clock Cycles
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
                axi_min_write_cycles_out => axi_min_write_cycles_out,

                 
                -----------------------------------------------------------------------------------------
                -- IPIC Request/Qualifiers
                -----------------------------------------------------------------------------------------
                ip2bus_mstrd_req           => ip2bus_mstrd_req, -- IPIC CMD
                ip2bus_mstwr_req           => ip2bus_mstwr_req, -- IPIC CMD
                ip2bus_mst_addr            => ip2bus_mst_addr,  -- IPIC CMD
                ip2bus_mst_length          => ip2bus_mst_length,-- IPIC CMD
                ip2bus_mst_be              => ip2bus_mst_be,    -- IPIC CMD
                ip2bus_mst_type            => ip2bus_mst_type,  -- IPIC CMD
                ip2bus_mst_lock            => ip2bus_mst_lock,  -- IPIC CMD
                ip2bus_mst_reset           => ip2bus_mst_reset, -- IPIC CMD
            
                -----------------------------------------------------------------------------------------
                -- IPIC Request Status Reply
                -----------------------------------------------------------------------------------------
                bus2ip_mst_cmdack          => bus2ip_mst_cmdack,      -- IPIC Stat
                bus2ip_mst_cmplt           => bus2ip_mst_cmplt,       -- IPIC Stat
                bus2ip_mst_error           => bus2ip_mst_error,       -- IPIC Stat
                bus2ip_mst_rearbitrate     => bus2ip_mst_rearbitrate, -- IPIC Stat
                bus2ip_mst_cmd_timeout     => bus2ip_mst_cmd_timeout, -- IPIC Stat
        
                -----------------------------------------------------------------------------------------
                -- IPIC Read LocalLink Channel
                -----------------------------------------------------------------------------------------
                bus2ip_mstrd_d             => bus2ip_mstrd_d,         -- IPIC RD LLink
                bus2ip_mstrd_rem           => bus2ip_mstrd_rem,       -- IPIC RD LLink
                bus2ip_mstrd_sof_n         => bus2ip_mstrd_sof_n,     -- IPIC RD LLink
                bus2ip_mstrd_eof_n         => bus2ip_mstrd_eof_n,     -- IPIC RD LLink
                bus2ip_mstrd_src_rdy_n     => bus2ip_mstrd_src_rdy_n, -- IPIC RD LLink
                bus2ip_mstrd_src_dsc_n     => bus2ip_mstrd_src_dsc_n, -- IPIC RD LLink
                
                ip2bus_mstrd_dst_rdy_n     => ip2bus_mstrd_dst_rdy_n, -- IPIC RD LLink
                ip2bus_mstrd_dst_dsc_n     => ip2bus_mstrd_dst_dsc_n, -- IPIC RD LLink
                
                -----------------------------------------------------------------------------------------
                -- IPIC Write LocalLink Channel
                -----------------------------------------------------------------------------------------
                ip2bus_mstwr_d             => ip2bus_mstwr_d,    -- IPIC WR LLink
                ip2bus_mstwr_rem           => ip2bus_mstwr_rem,  -- IPIC WR LLink
                ip2bus_mstwr_sof_n         => ip2bus_mstwr_sof_n,-- IPIC WR LLink
                ip2bus_mstwr_eof_n         => ip2bus_mstwr_eof_n,-- IPIC WR LLink
                ip2bus_mstwr_src_rdy_n     => ip2bus_mstwr_src_rdy_n,-- IPIC WR LLink
                ip2bus_mstwr_src_dsc_n     => ip2bus_mstwr_src_dsc_n,-- IPIC WR LLink
              
                bus2ip_mstwr_dst_rdy_n     => bus2ip_mstwr_dst_rdy_n,-- IPIC WR LLink
                bus2ip_mstwr_dst_dsc_n     => bus2ip_mstwr_dst_dsc_n -- IPIC WR LLink
                 );

  end generate gen_fifo_n;
  
  axi_master_burst_sim  : if (SIMULATION_ONLY = 1) generate
    -- Instantiate AXI Master Simulation
    axi_master_burst_1 : sim_AXIMasterPlugModel
--    generic map (
--    )
    port map (
        Clk          => m_axi_aclk,
        ResetL       => m_axi_aresetn, --active low

        -----------------------------------------------------------------------------------------
        -- IPIC Request/Qualifiers
        -----------------------------------------------------------------------------------------
        ip2bus_mstrd_req           => ip2bus_mstrd_req, -- IPIC CMD
        ip2bus_mstwr_req           => ip2bus_mstwr_req, -- IPIC CMD
        ip2bus_mst_addr            => ip2bus_mst_addr,  -- IPIC CMD
        ip2bus_mst_length          => ip2bus_mst_length,-- IPIC CMD
        ip2bus_mst_be              => ip2bus_mst_be,    -- IPIC CMD
        ip2bus_mst_type            => ip2bus_mst_type,  -- IPIC CMD
        ip2bus_mst_lock            => ip2bus_mst_lock,  -- IPIC CMD
        ip2bus_mst_reset           => ip2bus_mst_reset, -- IPIC CMD
    
        -----------------------------------------------------------------------------------------
        -- IPIC Request Status Reply
        -----------------------------------------------------------------------------------------
        bus2ip_mst_cmdack          => bus2ip_mst_cmdack,      -- IPIC Stat
        bus2ip_mst_cmplt           => bus2ip_mst_cmplt,       -- IPIC Stat
        bus2ip_mst_error           => bus2ip_mst_error,       -- IPIC Stat
        bus2ip_mst_rearbitrate     => bus2ip_mst_rearbitrate, -- IPIC Stat
        bus2ip_mst_cmd_timeout     => bus2ip_mst_cmd_timeout, -- IPIC Stat
    
        -----------------------------------------------------------------------------------------
        -- IPIC Read LocalLink Channel
        -----------------------------------------------------------------------------------------
        bus2ip_mstrd_d             => bus2ip_mstrd_d,         -- IPIC RD LLink
        bus2ip_mstrd_rem           => bus2ip_mstrd_rem,       -- IPIC RD LLink
        bus2ip_mstrd_sof_n         => bus2ip_mstrd_sof_n,     -- IPIC RD LLink
        bus2ip_mstrd_eof_n         => bus2ip_mstrd_eof_n,     -- IPIC RD LLink
        bus2ip_mstrd_src_rdy_n     => bus2ip_mstrd_src_rdy_n, -- IPIC RD LLink
        bus2ip_mstrd_src_dsc_n     => bus2ip_mstrd_src_dsc_n, -- IPIC RD LLink

        ip2bus_mstrd_dst_rdy_n     => ip2bus_mstrd_dst_rdy_n, -- IPIC RD LLink
        ip2bus_mstrd_dst_dsc_n     => ip2bus_mstrd_dst_dsc_n, -- IPIC RD LLink
    
        -----------------------------------------------------------------------------------------
        -- IPIC Write LocalLink Channel
        -----------------------------------------------------------------------------------------
        ip2bus_mstwr_d             => ip2bus_mstwr_d,    -- IPIC WR LLink
        ip2bus_mstwr_rem           => ip2bus_mstwr_rem,  -- IPIC WR LLink
        ip2bus_mstwr_sof_n         => ip2bus_mstwr_sof_n,-- IPIC WR LLink
        ip2bus_mstwr_eof_n         => ip2bus_mstwr_eof_n,-- IPIC WR LLink
        ip2bus_mstwr_src_rdy_n     => ip2bus_mstwr_src_rdy_n,-- IPIC WR LLink
        ip2bus_mstwr_src_dsc_n     => ip2bus_mstwr_src_dsc_n,-- IPIC WR LLink
      
        bus2ip_mstwr_dst_rdy_n     => bus2ip_mstwr_dst_rdy_n,-- IPIC WR LLink
        bus2ip_mstwr_dst_dsc_n     => bus2ip_mstwr_dst_dsc_n -- IPIC WR LLink
    );
  end generate axi_master_burst_sim;
  
  axi_master_burst_real : if (SIMULATION_ONLY = 0) generate
    -- Instantiate the AXI Master
    axi_master_burst_0 : entity axi_master_burst_v2_0_7.axi_master_burst
    generic map (
        C_M_AXI_ADDR_WIDTH  => C_M_AXI_ADDR_WIDTH,
        C_M_AXI_DATA_WIDTH  => C_M_AXI_DATA_WIDTH,
        C_MAX_BURST_LEN     => 16,
        C_ADDR_PIPE_DEPTH   => 1,
        C_NATIVE_DATA_WIDTH => C_NATIVE_DATA_WIDTH,
        C_LENGTH_WIDTH      => C_LENGTH_WIDTH,
        C_FAMILY            => C_FAMILY
    )
    
    port map (
        m_axi_aclk          => m_axi_aclk,
        m_axi_aresetn       => m_axi_aresetn, --active low
        md_error            => md_error,
        
        -----------------------------------------------------------------------------
        -- AXI4 Master Read Channel
        -----------------------------------------------------------------------------
        m_axi_arready      => m_axi_arready ,  
        m_axi_arvalid      => m_axi_arvalid ,  
        m_axi_araddr       => m_axi_araddr  ,  
        m_axi_arlen        => m_axi_arlen   ,
        m_axi_arsize       => m_axi_arsize  ,  
        m_axi_arburst      => m_axi_arburst ,  
        m_axi_arprot       => m_axi_arprot  ,  
        m_axi_arcache      => m_axi_arcache ,  
        m_axi_rready       => m_axi_rready  ,  
        m_axi_rvalid       => m_axi_rvalid  ,  
        m_axi_rdata        => m_axi_rdata   ,  
        m_axi_rresp        => m_axi_rresp   ,  
        m_axi_rlast        => m_axi_rlast   ,  

        -----------------------------------------------------------------------------
        -- AXI4 Master Write Channel
        -----------------------------------------------------------------------------
        -- Write Address Channel                                               
        m_axi_awready       => m_axi_awready, -- AXI4
        m_axi_awvalid       => m_axi_awvalid, -- AXI4
        m_axi_awaddr        => m_axi_awaddr,  -- AXI4
        m_axi_awlen         => m_axi_awlen,   -- AXI4
        m_axi_awsize        => m_axi_awsize,  -- AXI4
        m_axi_awburst       => m_axi_awburst, -- AXI4
        m_axi_awprot        => m_axi_awprot,  -- AXI4
        m_axi_awcache       => m_axi_awcache, -- AXI4
    
        -- Write Data Channel                                                  
        m_axi_wready       => m_axi_wready, -- AXI4
        m_axi_wvalid       => m_axi_wvalid, -- AXI4
        m_axi_wdata        => m_axi_wdata,  -- AXI4
        m_axi_wstrb        => m_axi_wstrb,  -- AXI4
        m_axi_wlast        => m_axi_wlast,  -- AXI4
        -- Write Response Channel                                              
        m_axi_bready       => m_axi_bready, -- AXI4
        m_axi_bvalid       => m_axi_bvalid, -- AXI4
        m_axi_bresp        => m_axi_bresp,  -- AXI4
    
        -----------------------------------------------------------------------------------------
        -- IPIC Request/Qualifiers
        -----------------------------------------------------------------------------------------
        ip2bus_mstrd_req           => ip2bus_mstrd_req, -- IPIC CMD
        ip2bus_mstwr_req           => ip2bus_mstwr_req, -- IPIC CMD
        ip2bus_mst_addr            => ip2bus_mst_addr,  -- IPIC CMD
        ip2bus_mst_length          => ip2bus_mst_length,-- IPIC CMD
        ip2bus_mst_be              => ip2bus_mst_be,    -- IPIC CMD
        ip2bus_mst_type            => ip2bus_mst_type,  -- IPIC CMD
        ip2bus_mst_lock            => ip2bus_mst_lock,  -- IPIC CMD
        ip2bus_mst_reset           => ip2bus_mst_reset, -- IPIC CMD
    
        -----------------------------------------------------------------------------------------
        -- IPIC Request Status Reply
        -----------------------------------------------------------------------------------------
        bus2ip_mst_cmdack          => bus2ip_mst_cmdack,      -- IPIC Stat
        bus2ip_mst_cmplt           => bus2ip_mst_cmplt,       -- IPIC Stat
        bus2ip_mst_error           => bus2ip_mst_error,       -- IPIC Stat
        bus2ip_mst_rearbitrate     => bus2ip_mst_rearbitrate, -- IPIC Stat
        bus2ip_mst_cmd_timeout     => bus2ip_mst_cmd_timeout, -- IPIC Stat
    
        -----------------------------------------------------------------------------------------
        -- IPIC Read LocalLink Channel
        -----------------------------------------------------------------------------------------
        bus2ip_mstrd_d             => bus2ip_mstrd_d,         -- IPIC RD LLink
        bus2ip_mstrd_rem           => bus2ip_mstrd_rem,       -- IPIC RD LLink
        bus2ip_mstrd_sof_n         => bus2ip_mstrd_sof_n,     -- IPIC RD LLink
        bus2ip_mstrd_eof_n         => bus2ip_mstrd_eof_n,     -- IPIC RD LLink
        bus2ip_mstrd_src_rdy_n     => bus2ip_mstrd_src_rdy_n, -- IPIC RD LLink
        bus2ip_mstrd_src_dsc_n     => bus2ip_mstrd_src_dsc_n, -- IPIC RD LLink
        
        ip2bus_mstrd_dst_rdy_n     => ip2bus_mstrd_dst_rdy_n, -- IPIC RD LLink
        ip2bus_mstrd_dst_dsc_n     => ip2bus_mstrd_dst_dsc_n, -- IPIC RD LLink
    
        -----------------------------------------------------------------------------------------
        -- IPIC Write LocalLink Channel
        -----------------------------------------------------------------------------------------
        ip2bus_mstwr_d             => ip2bus_mstwr_d,    -- IPIC WR LLink
        ip2bus_mstwr_rem           => ip2bus_mstwr_rem,  -- IPIC WR LLink
        ip2bus_mstwr_sof_n         => ip2bus_mstwr_sof_n,-- IPIC WR LLink
        ip2bus_mstwr_eof_n         => ip2bus_mstwr_eof_n,-- IPIC WR LLink
        ip2bus_mstwr_src_rdy_n     => ip2bus_mstwr_src_rdy_n,-- IPIC WR LLink
        ip2bus_mstwr_src_dsc_n     => ip2bus_mstwr_src_dsc_n,-- IPIC WR LLink
      
        bus2ip_mstwr_dst_rdy_n     => bus2ip_mstwr_dst_rdy_n,-- IPIC WR LLink
        bus2ip_mstwr_dst_dsc_n     => bus2ip_mstwr_dst_dsc_n -- IPIC WR LLink
  );
  end generate axi_master_burst_real;

end architecture;
