----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2023 14:02:18
-- Design Name: 
-- Module Name: axi_fifo_n2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Simplified AXI FIFO implementation with burst size 1 for both reads and writes.
-- Each read or write operation processes one value at a time, ensuring handshake signals
-- are properly handled for each transaction.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - Simplified logic for AXI transactions
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity axi_fifo_n3 is
  generic (
    ram_width : natural := 34;
    ram_init  : natural := 0;
    ram_depth : natural := 11;
    C_M_AXI_ADDR_WIDTH  : natural := 32;
    C_NATIVE_DATA_WIDTH : natural := 32;
    
    C_LENGTH_WIDTH      : natural := 12;
    
    -- DRAM parameters
    DRAM_START_ADDRESS  : std_logic_vector := X"0008_0000";
    DRAM_SIZE           : natural := 100
  );
  port (
    buffer_clk : in std_logic;
    buffer_rst : in std_logic;

    -- AXI input interface
    buffer_in_ready : out std_logic;
    buffer_in_valid : in std_logic;
    buffer_in_data  : in std_logic_vector(ram_width - 1 downto 0);

    -- AXI output interface
    buffer_out_ready : in std_logic;
    buffer_out_valid : out std_logic;
    buffer_out_data  : out std_logic_vector(ram_width - 1 downto 0);
    
    op_in_ready_1 : out std_logic;
    op_in_valid_1 : in std_logic;
    op_in_data_1  : in std_logic_vector(33 downto 0) ;

    -- AXI Master interface
    ip2bus_mstwr_req  : out std_logic;
    ip2bus_mstrd_req  : out std_logic;
    ip2bus_mst_addr   : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    ip2bus_mst_length : out std_logic_vector(C_LENGTH_WIDTH-1 downto 0 );
    ip2bus_mst_be     : out std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0 );
    ip2bus_mst_type   : out std_logic;
    ip2bus_mst_lock   : out std_logic;
    ip2bus_mst_reset  : out std_logic;
    
    
    -- IPIC Request Status Reply
    bus2ip_mst_cmdack       : in std_logic;
    bus2ip_mst_cmplt        : in std_logic;
    bus2ip_mst_error        : in std_logic;
    bus2ip_mst_rearbitrate  : in std_logic;
    bus2ip_mst_cmd_timeout  : in std_logic;
    
    -- IPIC Read LocalLink Channel
    bus2ip_mstrd_d          : in  std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 );
    bus2ip_mstrd_rem        : in  std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0 );
    bus2ip_mstrd_sof_n      : in  std_logic;
    bus2ip_mstrd_eof_n      : in  std_logic;
    bus2ip_mstrd_src_rdy_n  : in  std_logic;
    bus2ip_mstrd_src_dsc_n  : in  std_logic;
    ip2bus_mstrd_dst_rdy_n  : out std_logic;
    ip2bus_mstrd_dst_dsc_n  : out std_logic;
    
    -- IPIC Write LocalLink Channel
    ip2bus_mstwr_d          : out std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 );
    ip2bus_mstwr_rem        : out std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0 );
    ip2bus_mstwr_sof_n      : out std_logic;
    ip2bus_mstwr_eof_n      : out std_logic;
    ip2bus_mstwr_src_rdy_n  : out std_logic;
    ip2bus_mstwr_src_dsc_n  : out std_logic;
    bus2ip_mstwr_dst_rdy_n  : in  std_logic;
    bus2ip_mstwr_dst_dsc_n  : in  std_logic;
    
    -- Debug clock cycle ports
    avg_read_cycles_out    : out std_logic_vector(31 downto 0);
    avg_write_cycles_out   : out std_logic_vector(31 downto 0);
    max_read_cycles_out    : out std_logic_vector(31 downto 0);
    max_write_cycles_out   : out std_logic_vector(31 downto 0);
    min_read_cycles_out    : out std_logic_vector(31 downto 0);
    min_write_cycles_out   : out std_logic_vector(31 downto 0)    
  );
end axi_fifo_n3;

architecture Behavioral of axi_fifo_n3 is
  signal write_address : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal read_address  : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');

  signal write_in_progress : std_logic := '0';
  signal read_in_progress  : std_logic := '0';
  
  type STATE_TYPE_1 is (FSM_IDLE, FSM_RECEIVE_HS, FSM_SEND_AXI, 
                        FSM_RECEIVE_AXI, FSM_SEND_HS); 
  signal mainFSM_currentState : STATE_TYPE_1;
  signal mainFSM_prevState    : STATE_TYPE_1;
  
  -- AXI Master States FSM
  type STATE_TYPE_2 is (AXI_FSM_IDLE, AXI_FSM_SEND_READ_REQUEST1, AXI_FSM_WAIT_FOR_READ_ACK1, AXI_FSM_WAIT_FOR_READ_CMPLT1,
                        AXI_FSM_SEND_WRITE_REQUEST1, AXI_FSM_WAIT_FOR_WRITE_ACK1, AXI_FSM_WAIT_FOR_WRITE_CMPLT1); 
  signal axiFSM_currentState : STATE_TYPE_2;
  signal axiFSM_prevState    : STATE_TYPE_2;
  
  -- for Reseting after every Write + Read;
  signal reset_count  : natural ;
  signal reset_done   : std_logic;
  
  -- Internal Signals since out signal cannot be read
  signal ip2bus_mstwr_src_rdy_n_i : std_logic; -- Source Ready Signal
  signal ip2bus_mstwr_sof_n_i     : std_logic; -- Start of Frame
  signal ip2bus_mstwr_eof_n_i     : std_logic; -- End of Frame
  signal ip2bus_mst_length_i      : std_logic_vector(C_LENGTH_WIDTH-1 downto 0 ) ; --Length of Data through AXI (in bytes)
  
  signal ram, ram_out : std_logic_vector (ram_width - 1 downto 0);
  attribute ram_style : string; -- what is this for?
  attribute ram_style of ram  : signal is "block"; -- what is this for?
  
  -- Write / Read Complete Signals
  signal write_complete : std_logic;
  signal read_complete : std_logic;
  
  -- Signals to indicate which half to write
  type segment_state is (WRITE_SEGMENT_NONE, WRITE_SEGMENT_LOWER, WRITE_SEGMENT_HIGHER);
  signal write_segment : segment_state;
  signal read_segment  : segment_state;
  
  -- Is Large RAM Width (up to 64 bit)
  signal is_large_ram : std_logic;
  
  -- Data count
  signal data_count : natural;
  
  -- variable write index
  signal cmd_ready : std_logic := '1';
  signal last_cmd : std_logic_vector  (0 to ram_width - 1);
  
  -- Cache valid
  signal cache_fresh : std_logic;
  signal cache_present : std_logic;
  signal cache_valid : std_logic;
  
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
  
  
  signal toggle_rw : std_logic := '0';  -- '0' means do read next if both are pending, '1' means do write next.
  
  -- Add signals for tracking cycle counts
  signal read_cycle_count   : natural := 0;
  signal write_cycle_count  : natural := 0;
  signal total_read_cycles  : natural := 0;
  signal total_write_cycles : natural := 0;
  signal num_reads          : natural := 0;
  signal num_writes         : natural := 0;
  signal max_read_cycles    : natural := 0;
  signal max_write_cycles   : natural := 0;
  signal min_read_cycles    : natural := natural'high;
  signal min_write_cycles   : natural := natural'high;
  signal avg_read_cycles    : natural := 0;
  signal avg_write_cycles   : natural := 0;
begin

  -----------------------------------------------------------------------------------------
  -- AXI Master - constant signals
  -----------------------------------------------------------------------------------------
  -- Each data is 32 bits (4 bytes), we burst send 10 data = 10 *4 = 40 bytes
  ip2bus_mst_be <= "1111";			  -- all of the transferred data is always meaningful
  ip2bus_mst_type <= '0'; 		    -- we always transfer in bursts. 
  ip2bus_mst_lock <= '0'; 
  
  ip2bus_mstrd_dst_dsc_n <= '1'; 	-- we never discountinue a read transfer 
  ip2bus_mstrd_dst_rdy_n <= '0'; 	-- we are always ready to receive the data
  
  ip2bus_mstwr_rem <= "0000"; 
  ip2bus_mstwr_src_dsc_n <= '1';  -- we never discountinue a write transfer 
  
  -- Internal Signals
  ip2bus_mstwr_src_rdy_n  <= ip2bus_mstwr_src_rdy_n_i;
  ip2bus_mstwr_sof_n      <= ip2bus_mstwr_sof_n_i;
  ip2bus_mstwr_eof_n      <= ip2bus_mstwr_eof_n_i;
  ip2bus_mst_length       <= ip2bus_mst_length_i;
  
  RAM_logic : process(buffer_clk, buffer_rst)
  begin
    if buffer_rst = '0' then
      -- signals to top level
      buffer_out_data <= ('0', others => '0'); 
      -- RAM Initialisation with all '0'
      ram <= ('0', others => '0');
      
      -- Set large_ram flag
      if (ram_width > 32) then
        is_large_ram <= '1';
      else
        is_large_ram <= '0';
      end if;      
      -- RAM indexes
      data_count <= ram_init;
      
      -- In RAM_logic process reset block:
      cache_fresh <= '0';
      cache_present <= '0';
      
      cmd_ready <= '0';

    elsif rising_edge(buffer_clk) then

      case mainFSM_currentState is
        -- Receive HS input and store in RAM temporarily
        when FSM_IDLE =>
          -- Only write valid
          if buffer_in_valid = '1' and buffer_out_ready = '0' then
            ram <= buffer_in_data;
--            if (data_count + 1 > DRAM_SIZE / 16) then
            if (data_count + 1 > ram_depth) then
              cache_fresh <= '0';
              data_count <= data_count;
            else
              data_count <= data_count + 1;
            end if;
            
          -- Only read valid
          elsif buffer_in_valid = '0' and buffer_out_ready = '1' and cache_fresh = '1' and cache_present = '1' and data_count > 0 then
          -- and data_count > 0 then 
            buffer_out_data <= ram_out;
            cache_present <= '0';
            data_count <= data_count - 1;
          -- Write and read valid
          elsif buffer_in_valid = '1' and buffer_out_ready = '1' and cache_fresh = '1' and cache_present = '1' and data_count > 0 then
          -- and data_count > 0 then 
            buffer_out_data <= ram_out;
            cache_present <= '0';
            ram <= buffer_in_data;
            data_count <= data_count;
          elsif buffer_in_valid = '1' and buffer_out_ready ='1' and (cache_fresh = '0' or cache_present = '0') then
            ram <= buffer_in_data;
--            if (data_count + 1 > DRAM_SIZE / 16) then
            if (data_count + 1 > ram_depth) then
              cache_fresh <= '0';
              data_count <= data_count;
            else
              data_count <= data_count + 1;
            end if;
          else 
            buffer_out_data <= ram_out;
          end if;
        
        --Send RAM data to HS output  
        when FSM_SEND_HS =>
          -- and data_count > 0 then 
          buffer_out_data <= ram_out;
          cache_present <= '1';
          cache_fresh <= '1';
          
          -- Manual reset of the read index due to errors in AXI Master Burst
--          if data_count = 0 then 
--            read_index_out <= write_index_out;
--          end if;
          
        --default
        when others =>
--          write_index <= write_index;
--          read_index_out <= read_index_out;
          buffer_out_data <= ram_out; --update RAM when new data received from AXI
        
      end case;
      
      -- VARIABLE WRITE INDEX LOGIC BEGINS
      if op_in_valid_1 = '1' and cmd_ready = '1' and last_cmd /= op_in_data_1 then
        data_count <= min_value(op_in_data_1, ram_depth);
        cache_fresh <= '0'; -- not sure if this will break w/ variable write index, try commenting out if you have issues
      end if;
          
      cmd_ready <= '1';
      last_cmd <= op_in_data_1;
      
      -- VARIABLE WRITE INDEX LOGIC ENDS
    end if;
  end process RAM_logic;
  
  cache_valid <= cache_fresh and cache_present;
  
  -- High Level FSM
  -- Asserting HS Signal: Input Ready & Output Valid
  buffer_in_ready   <= '1' when (mainFSM_currentState = FSM_IDLE) and ((data_count > 0 and (cache_fresh = '0' or cache_present = '0') and toggle_rw = '1') or (data_count = 0 or (cache_fresh = '1' and cache_present = '1'))) else '0'; --not fifo_full;
  buffer_out_valid  <= '1' when mainFSM_currentState = FSM_IDLE and cache_fresh = '1' and cache_present = '1' and data_count > 0 else '0'; --not fifo_empty;
  op_in_ready_1 <= cmd_ready;
  
  mainFSM_logic : process(buffer_clk, buffer_rst)
  begin
    if buffer_rst = '0' then    
      -- internal state tracking
      mainFSM_currentState <= FSM_IDLE;
      mainFSM_prevState <= FSM_IDLE;
      write_in_progress <= '0';
      read_in_progress <= '0';
      write_segment <= WRITE_SEGMENT_NONE;
      read_segment <= WRITE_SEGMENT_NONE;
      toggle_rw <= '0';

    elsif rising_edge(buffer_clk) then
      case mainFSM_currentState is
            when FSM_IDLE =>
      -- When a read is pending:
      if (data_count > 0 and (cache_fresh = '0' or cache_present = '0')) then
        -- if no write is pending and read has priority
        if toggle_rw = '0' then
          -- Process read first this cycle
          read_segment <= WRITE_SEGMENT_HIGHER;
          mainFSM_currentState  <= FSM_SEND_AXI;
          toggle_rw <= '1';  -- toggle so that next time a write will be prioritized
        
        -- otherwise, read has no priority, and if a write has priority it can proceed
        elsif (toggle_rw = '1' and buffer_in_valid = '1') then
          -- Process write this cycle
          write_segment <= WRITE_SEGMENT_HIGHER;
          mainFSM_currentState  <= FSM_RECEIVE_HS;
          toggle_rw <= '0';  -- toggle back
        end if;
      -- Only a read is pending:
      elsif data_count > 0 and (cache_fresh = '0' or cache_present = '0') then
        read_segment <= WRITE_SEGMENT_HIGHER;
        mainFSM_currentState  <= FSM_SEND_AXI;
        toggle_rw <= '1';  -- toggle so that next time a write will be prioritized
      -- Only a write is pending:
      elsif buffer_in_valid = '1' then
        write_segment <= WRITE_SEGMENT_HIGHER;
        mainFSM_currentState  <= FSM_RECEIVE_HS;
        toggle_rw <= '0';  -- toggle back
      else 
        mainFSM_currentState  <= FSM_IDLE;
      end if;
      mainFSM_prevState <= FSM_IDLE;
        
        when FSM_RECEIVE_HS => 
          mainFSM_currentState  <= FSM_RECEIVE_AXI;
          mainFSM_prevState     <= FSM_RECEIVE_HS;
        
        when FSM_SEND_HS => 
          mainFSM_currentState  <= FSM_IDLE;
          mainFSM_prevState     <= FSM_SEND_HS;
          
        when FSM_RECEIVE_AXI =>
          if (is_large_ram = '1') then
              if (bus2ip_mst_cmplt = '1' and write_segment = WRITE_SEGMENT_LOWER) then
                write_segment <= WRITE_SEGMENT_HIGHER;
                mainFSM_currentState  <= FSM_IDLE;
                mainFSM_prevState     <= FSM_RECEIVE_AXI;
              elsif (bus2ip_mst_cmplt = '1' and write_segment = WRITE_SEGMENT_HIGHER) then
                write_segment <= WRITE_SEGMENT_LOWER;
                mainFSM_currentState  <= FSM_RECEIVE_AXI;
                mainFSM_prevState     <= FSM_RECEIVE_AXI;
              else
                mainFSM_currentState  <= FSM_RECEIVE_AXI;
                mainFSM_prevState     <= FSM_RECEIVE_AXI;
              end if;
          else
              if (bus2ip_mst_cmplt = '1') then
                mainFSM_currentState  <= FSM_IDLE;
                mainFSM_prevState     <= FSM_RECEIVE_AXI;
              else
                mainFSM_currentState  <= FSM_RECEIVE_AXI;
                mainFSM_prevState     <= FSM_RECEIVE_AXI;
              end if;
          end if;
          
        when FSM_SEND_AXI =>
          if (is_large_ram = '1') then
              if (bus2ip_mst_cmplt = '1' and read_segment = WRITE_SEGMENT_LOWER) then
                read_segment <= WRITE_SEGMENT_HIGHER;
                mainFSM_currentState  <= FSM_SEND_HS;
                mainFSM_prevState     <= FSM_SEND_AXI;
              elsif (bus2ip_mst_cmplt = '1' and read_segment = WRITE_SEGMENT_HIGHER) then
                read_segment <= WRITE_SEGMENT_LOWER;
                mainFSM_currentState  <= FSM_SEND_AXI;
                mainFSM_prevState     <= FSM_SEND_AXI;
              else
                mainFSM_currentState  <= FSM_SEND_AXI;
                mainFSM_prevState     <= FSM_SEND_AXI;
              end if;
           else
              if (bus2ip_mst_cmplt = '1') then
                mainFSM_currentState  <= FSM_SEND_HS;
                mainFSM_prevState     <= FSM_SEND_AXI;
              else
                mainFSM_currentState  <= FSM_SEND_AXI;
                mainFSM_prevState     <= FSM_SEND_AXI;
              end if;
          end if;
          
        when others =>
          mainFSM_currentState  <= FSM_IDLE;
          mainFSM_prevState     <= FSM_IDLE;
          
      end case;
    end if;

  end process;
  
  -----------------------------------------------------------------------------------------
  -- AXI Master FSM
  -----------------------------------------------------------------------------------------
  
  AXI_MASTER : process(buffer_clk, buffer_rst)
  begin
    if buffer_rst = '0' then
      -- signals to burst master
      ip2bus_mstwr_req <= '0';
      ip2bus_mstrd_req <= '0';
      
      if (ram_width > 32) then
        write_address <= std_logic_vector(unsigned(DRAM_START_ADDRESS) + (ram_init * 16));
      else 
        write_address <= std_logic_vector(unsigned(DRAM_START_ADDRESS) + (ram_init * 8));
      end if;
      
      read_address  <= DRAM_START_ADDRESS; --('0', others => '0');
      reset_count <= 0;
      reset_done  <= '1';
      
      
    elsif rising_edge(buffer_clk) then
      case axiFSM_currentState is 
        when AXI_FSM_IDLE =>
          -- Reset the AXI master burst after every Write + Read transaction
          -- Need to wait for a reset because sometimes AXI Master Write Error
          if ( axiFSM_prevState = AXI_FSM_WAIT_FOR_READ_CMPLT1 or axiFSM_prevState = AXI_FSM_WAIT_FOR_WRITE_CMPLT1 or reset_count > 0) then
            if (reset_count < 8) then
              ip2bus_mst_reset <= '1';
              reset_count <= reset_count + 1;
            else 
              ip2bus_mst_reset <= '0';
              reset_count <= 0;
              reset_done  <= '1';
            end if;
          end if;
          
          -- VARIABLE WRITE INDEX LOGIC BEGINS
          
          if (op_in_valid_1 = '1' and cmd_ready = '1' and last_cmd /= op_in_data_1) then
              if (ram_width > 32) then
                write_address <= std_logic_vector(unsigned(DRAM_START_ADDRESS) + (min_value(op_in_data_1, ram_depth) * 16));
              else 
                write_address <= std_logic_vector(unsigned(DRAM_START_ADDRESS) + (min_value(op_in_data_1, ram_depth) * 8));
              end if;
              
              read_address  <= DRAM_START_ADDRESS; --('0', others => '0');
          end if;
          
          -- VARIABLE WRITE INDEX LOGIC ENDS
          
          if ( mainFSM_currentState = FSM_SEND_AXI and reset_done = '1') then
            axiFSM_currentState <= AXI_FSM_SEND_READ_REQUEST1; 
            axiFSM_prevState    <= AXI_FSM_IDLE; 
            reset_done  <= '0';
          elsif ( mainFSM_currentState = FSM_RECEIVE_AXI and reset_done = '1') then
            axiFSM_currentState <= AXI_FSM_SEND_WRITE_REQUEST1;
            axiFSM_prevState    <= AXI_FSM_IDLE; 
            reset_done  <= '0';
          else
            axiFSM_currentState <= AXI_FSM_IDLE; 
            axiFSM_prevState    <= AXI_FSM_IDLE; 
          end if;
          
        when AXI_FSM_SEND_READ_REQUEST1 => 
	      ip2bus_mstrd_req <= '1';
		  ip2bus_mst_addr <= read_address;
		  
		  if (unsigned(read_address) + 8) < (unsigned(DRAM_START_ADDRESS) + (ram_depth * 8 * ((ram_width + 31) / 32))) then 
			read_address <= std_logic_vector(unsigned(read_address) + 8);
		  else 
			read_address <= DRAM_START_ADDRESS;
		  end if;
						
		  axiFSM_currentState <= AXI_FSM_WAIT_FOR_READ_ACK1; 
          axiFSM_prevState    <= AXI_FSM_SEND_READ_REQUEST1;
        
        when AXI_FSM_SEND_WRITE_REQUEST1 =>
          ip2bus_mst_length_i <= std_logic_vector(to_unsigned(4, C_LENGTH_WIDTH)); --every read or write transaction has a length of 10 data --> 10 * 4 = 40 bytes. 
		  ip2bus_mstwr_req <= '1';
		  
		  ip2bus_mst_addr <= write_address;
		  
		  if (unsigned(write_address) + 8) < (unsigned(DRAM_START_ADDRESS) + (ram_depth * 8 * ((ram_width + 31) / 32))) then 
			write_address <= std_logic_vector(unsigned(write_address) + 8);
		  else 
			write_address <= DRAM_START_ADDRESS;
		  end if;
						
          axiFSM_currentState <= AXI_FSM_WAIT_FOR_WRITE_ACK1; 
          axiFSM_prevState    <= AXI_FSM_SEND_WRITE_REQUEST1;
          
        -- Wait for Read Acknowledgement
		when AXI_FSM_WAIT_FOR_READ_ACK1 => 
		  if ( bus2ip_mst_cmdack = '1') then
			ip2bus_mstrd_req <= '0';
						  
			axiFSM_currentState <= AXI_FSM_WAIT_FOR_READ_CMPLT1; 
            axiFSM_prevState    <= AXI_FSM_WAIT_FOR_READ_ACK1;
          else 
            ip2bus_mstrd_req <= '1';
						  
			axiFSM_currentState <= AXI_FSM_WAIT_FOR_READ_ACK1; 
            axiFSM_prevState    <= AXI_FSM_WAIT_FOR_READ_ACK1;
	      end if;
          
        -- Wait for Write Acknowledgement
		when AXI_FSM_WAIT_FOR_WRITE_ACK1 => 
		  if ( bus2ip_mst_cmdack = '1') then
			ip2bus_mstwr_req <= '0';
							
			axiFSM_currentState <= AXI_FSM_WAIT_FOR_WRITE_CMPLT1; 
			axiFSM_prevState    <= AXI_FSM_WAIT_FOR_WRITE_ACK1; 
	      else
			ip2bus_mstwr_req <= '1'; 
			
			axiFSM_currentState <= AXI_FSM_WAIT_FOR_WRITE_ACK1; 
            axiFSM_prevState    <= AXI_FSM_WAIT_FOR_WRITE_ACK1; 
		  end if;
		  
		-- Wait for Read Completion
		when AXI_FSM_WAIT_FOR_READ_CMPLT1 => 
          if ( bus2ip_mst_cmplt = '1' ) then
            axiFSM_currentState <= AXI_FSM_IDLE; 
            axiFSM_prevState    <= AXI_FSM_WAIT_FOR_READ_CMPLT1;
          else 
            axiFSM_currentState <= AXI_FSM_WAIT_FOR_READ_CMPLT1; 
            axiFSM_prevState    <= AXI_FSM_WAIT_FOR_READ_CMPLT1;
          end if;
        
        when AXI_FSM_WAIT_FOR_WRITE_CMPLT1 =>
          if ( bus2ip_mst_cmplt = '1') then
            axiFSM_currentState <= AXI_FSM_IDLE; 
            axiFSM_prevState <= AXI_FSM_WAIT_FOR_WRITE_CMPLT1;
          else
            axiFSM_currentState <= AXI_FSM_WAIT_FOR_WRITE_CMPLT1;
            axiFSM_prevState <= AXI_FSM_WAIT_FOR_WRITE_CMPLT1;
          end if;
    
		when others => 
          axiFSM_currentState <= AXI_FSM_IDLE; 
          axiFSM_prevState <= AXI_FSM_IDLE;
          
      end case;
    end if;
  end process;
  
  -----------------------------------------------------------------------------------------
  -- AXI Read Request Data
  -----------------------------------------------------------------------------------------
  AXI_READ_DATA : process(buffer_clk, buffer_rst) is
  variable first_read : natural;
  variable flop : natural;
  begin
    if buffer_rst = '0' then
      ram_out <= ('0', others => '0');
    elsif rising_edge(buffer_clk) then
      if ( ( axiFSM_currentState = AXI_FSM_WAIT_FOR_READ_CMPLT1 ) and  (bus2ip_mstrd_src_rdy_n = '0') ) then
        if (is_large_ram = '1') then
          if (read_segment = WRITE_SEGMENT_HIGHER) then
            ram_out(ram_width-1 downto 32) <= bus2ip_mstrd_d(ram_width - 33 downto 0);
          else
            ram_out(31 downto 0) <= bus2ip_mstrd_d;
          end if;
        else
          ram_out(31 downto 0) <= bus2ip_mstrd_d;
        end if;
      end if;
    end if; 
  end process;
  
    -----------------------------------------------------------------------------------------
  -- AXI Write Request Data
  -----------------------------------------------------------------------------------------
  
  AXI_WRITE_DATA : process(buffer_clk, buffer_rst) is
  variable first_write    : natural;
  begin
    if buffer_rst = '0' then
      first_write := 1;
      ip2bus_mstwr_d <= ('0', others => '0');
    elsif rising_edge(buffer_clk) then
--      if ( axiFSM_currentState = AXI_FSM_WAIT_FOR_WRITE_CMPLT1 ) then
        
--        -- Ensure IPIC is rdy too before incrementing index
--        if ( (ip2bus_mstwr_src_rdy_n_i = '0') and (bus2ip_mstwr_dst_rdy_n = '0') ) then

        if (is_large_ram = '1') then
          if (write_segment = WRITE_SEGMENT_HIGHER) then
            ip2bus_mstwr_d(31 downto ram_width - 32) <= (others => '0');
            ip2bus_mstwr_d(ram_width - 33 downto 0) <= ram(ram_width-1 downto 32);
          else
            ip2bus_mstwr_d <= ram(31 downto 0);
          end if;
        else
          ip2bus_mstwr_d <= ram(31 downto 0);
        end if;
--        else 
--          -- Pass data into the IPIC bus
--          ip2bus_mstwr_d <= ram(31 downto 0);
--        end if;
--      end if;
    end if; 
  end process;
  
  -----------------------------------------------------------------------------------------
  -- AXI Write, Source Ready Signal: ip2bus_mstwr_src_rdy_n
  ----------------------------------------------------------------------------------------- 
  -- goes down in the beginning of data transfer and comes up at its end.
  AXI_MSTWR_SRC_RDY : process(buffer_clk, buffer_rst) is
  begin
    if buffer_rst = '0' then 
      ip2bus_mstwr_src_rdy_n_i <= '1';
    elsif rising_edge(buffer_clk) then
      if ( axiFSM_currentState = AXI_FSM_IDLE ) then
        ip2bus_mstwr_src_rdy_n_i <= '1';
      elsif ( ( axiFSM_currentState = AXI_FSM_WAIT_FOR_WRITE_CMPLT1 ) ) then
        if ( ip2bus_mstwr_src_rdy_n_i = '0' ) and ( bus2ip_mstwr_dst_rdy_n = '0' ) then 
          ip2bus_mstwr_src_rdy_n_i <= '1';  
        elsif (axiFSM_prevState = AXI_FSM_WAIT_FOR_WRITE_ACK1) and (axiFSM_currentState = AXI_FSM_WAIT_FOR_WRITE_CMPLT1) then 		
          ip2bus_mstwr_src_rdy_n_i <= '0'; 
        else 
          ip2bus_mstwr_src_rdy_n_i <= ip2bus_mstwr_src_rdy_n_i;
        end if;
      end if;
    end if;
  end process; 
  
    -----------------------------------------------------------------------------------------
  -- AXI Write, Start of Frame: ip2bus_mstwr_sof_n
  ----------------------------------------------------------------------------------------- 
  AXI_MSTWR_SOF : process(buffer_clk, buffer_rst) is
  begin
    if buffer_rst = '0' then 
      ip2bus_mstwr_sof_n_i <= '1';
    elsif rising_edge(buffer_clk) then
      if ( axiFSM_currentState = AXI_FSM_IDLE ) then 
        ip2bus_mstwr_sof_n_i <= '1'; 
      elsif ( axiFSM_currentState = AXI_FSM_WAIT_FOR_WRITE_CMPLT1 ) then 
        if ( ( ip2bus_mstwr_src_rdy_n_i = '0' ) and ( bus2ip_mstwr_dst_rdy_n = '0' ) ) then
          ip2bus_mstwr_sof_n_i <= '1'; 
        -- MISSING  pixelBuffer_readEnableR = '1'
        else 		
          ip2bus_mstwr_sof_n_i <= '0';  
        end if;
      else
        ip2bus_mstwr_sof_n_i <= ip2bus_mstwr_sof_n_i; 
      end if;
    end if;
  end process;
  
  -----------------------------------------------------------------------------------------
  -- AXI Write, End of Frame: ip2bus_mstwr_eof_n
  ----------------------------------------------------------------------------------------- 
  AXI_MSTWR_EOF : process(buffer_clk, buffer_rst) is
  begin
    if buffer_rst = '0' then 
      ip2bus_mstwr_eof_n_i <= '1';
    elsif rising_edge(buffer_clk) then
      if ( axiFSM_currentState = AXI_FSM_IDLE ) then 
        ip2bus_mstwr_eof_n_i <= '1'; 
      elsif ( axiFSM_currentState = AXI_FSM_WAIT_FOR_WRITE_CMPLT1 ) then 
        if (ip2bus_mstwr_src_rdy_n_i = '0') and ( bus2ip_mstwr_dst_rdy_n = '0' ) then
          ip2bus_mstwr_eof_n_i <= '0';  
        elsif ( ( ip2bus_mstwr_src_rdy_n_i = '0' ) and ( bus2ip_mstwr_dst_rdy_n = '0' ) ) then 		
          ip2bus_mstwr_eof_n_i <= '1';  
        -- EOF signal if the burstLength = 1
        else 
          ip2bus_mstwr_eof_n_i <= '0'; 
        end if;
      else
        ip2bus_mstwr_eof_n_i <= ip2bus_mstwr_eof_n_i; 
      end if;
    end if;
  end process;
  
  -- Debug clock cycle counter process
  -- Modify FSM processes to count cycles
    DEBUG_CLOCK_CYCLE_COUNT : process(buffer_clk, buffer_rst) is
    begin
        if buffer_rst = '0' then
            read_cycle_count   <= 0;
            write_cycle_count  <= 0;
            total_read_cycles  <= 0;
            total_write_cycles <= 0;
            num_reads          <= 0;
            num_writes         <= 0;
            max_read_cycles    <= 0;
            max_write_cycles   <= 0;
            min_read_cycles    <= natural'high;
            min_write_cycles   <= natural'high;
            avg_read_cycles    <= 0;
            avg_write_cycles   <= 0;
        elsif rising_edge(buffer_clk) then
            if mainFSM_currentState = FSM_SEND_AXI then
                read_cycle_count <= read_cycle_count + 1;
            elsif mainFSM_currentState = FSM_RECEIVE_AXI then
                write_cycle_count <= write_cycle_count + 1;
            end if;
    
            if axiFSM_currentState = AXI_FSM_WAIT_FOR_READ_CMPLT1 and bus2ip_mst_cmplt = '1' then
                total_read_cycles <= total_read_cycles + read_cycle_count;
                num_reads         <= num_reads + 1;
                if read_cycle_count > max_read_cycles then
                    max_read_cycles <= read_cycle_count;
                end if;
                if read_cycle_count < min_read_cycles then
                    min_read_cycles <= read_cycle_count;
                end if;
                if num_reads > 0 then
                    avg_read_cycles <= total_read_cycles / num_reads;
                end if;
                read_cycle_count <= 0;
            end if;
    
            if axiFSM_currentState = AXI_FSM_WAIT_FOR_WRITE_CMPLT1 and bus2ip_mst_cmplt = '1' then
                total_write_cycles <= total_write_cycles + write_cycle_count;
                num_writes         <= num_writes + 1;
                if write_cycle_count > max_write_cycles then
                    max_write_cycles <= write_cycle_count;
                end if;
                if write_cycle_count < min_write_cycles then
                    min_write_cycles <= write_cycle_count;
                end if;
                if num_writes > 0 then
                    avg_write_cycles <= total_write_cycles / num_writes;
                end if;
                write_cycle_count <= 0;
            end if;
        end if;
    
        -- Assign values to output ports
        avg_read_cycles_out  <= std_logic_vector(to_unsigned(avg_read_cycles, 32));
        avg_write_cycles_out <= std_logic_vector(to_unsigned(avg_write_cycles, 32));
        max_read_cycles_out  <= std_logic_vector(to_unsigned(max_read_cycles, 32));
        max_write_cycles_out <= std_logic_vector(to_unsigned(max_write_cycles, 32));
        min_read_cycles_out  <= std_logic_vector(to_unsigned(min_read_cycles, 32));
        min_write_cycles_out <= std_logic_vector(to_unsigned(min_write_cycles, 32));
    end process;
  
end Behavioral;