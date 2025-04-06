------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 12/31/2024 04:08:24 PM
---- Design Name: 
---- Module Name: async_sim - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.numeric_std.all;

--entity async_sim is
--generic (
--    ram_width : natural := 34;
--    ram_init  : natural := 0;
--    ram_depth : natural := 10;
--    NUM_DATA  : natural := 10
--    );
--  port (
--    buffer_clk : in std_logic;
--    buffer_rst : in std_logic;

--    -- HS input interface
--    buffer_in_ready : out std_logic;
--    buffer_in_valid : in std_logic;
--    buffer_in_data : in std_logic_vector(ram_width - 1 downto 0);

--    -- HS output interface
--    buffer_out_ready : in std_logic;
--    buffer_out_valid : out std_logic;
--    buffer_out_data : out std_logic_vector(ram_width - 1 downto 0);
    
--    --External signal
--    start: in   std_logic;
--    started: out std_logic;
--    done : out  std_logic;
    
--    --State lights
--    o1: out std_logic;
--    o2: out std_logic;
--    o3: out std_logic;
--    o4: out std_logic;
    
--    -- Debugging signal
--    debug_ram_in_index: out std_logic_vector(3 downto 0) -- New output port
    
--    );end async_sim;

--architecture Behavioral of async_sim is

--  -- This is the RAM of the buffer. 
--  type ram_type is array (0 to ram_depth - 1) of std_logic_vector (ram_width - 1 downto 0);
--  signal ram_in, ram_out : ram_type;
  
--  -- RAM Index
--  signal ram_out_index  : natural; 
--  signal ram_in_index   : natural;
  
--  -- FSM States
--  type STATE_TYPE_1 is (
--      FSM_IDLE, 
--      FSM_SEND_DATA_PHASE_1, 
--      FSM_WAIT_PHASE_1,
--      FSM_SEND_DATA_PHASE_2, 
--      FSM_WAIT_PHASE_2, 
--      FSM_RECEIVE_DATA_PHASE_1,
--      FSM_WAIT_PHASE_3,
--      FSM_RECEIVE_DATA_PHASE_2,
--      FSM_ERROR,
--      FSM_DONE
--  ); 
--  signal mainFSM_currentState : STATE_TYPE_1;
--  signal mainFSM_prevState    : STATE_TYPE_1;


--begin

  
--  -- Update state output signals based on the current state
--  process(mainFSM_currentState)
--  begin
--    case mainFSM_currentState is
--      when FSM_IDLE =>
--        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '0';
--      when FSM_SEND_DATA_PHASE_1 =>
--        o1 <= '1'; o2 <= '0'; o3 <= '0'; o4 <= '0';
--      when FSM_WAIT_PHASE_1 =>
--        o1 <= '0'; o2 <= '1'; o3 <= '0'; o4 <= '0';
--      when FSM_SEND_DATA_PHASE_2 =>
--        o1 <= '1'; o2 <= '1'; o3 <= '0'; o4 <= '0';
--      when FSM_WAIT_PHASE_2 =>
--        o1 <= '0'; o2 <= '0'; o3 <= '1'; o4 <= '0';
--      when FSM_RECEIVE_DATA_PHASE_1 =>
--        o1 <= '1'; o2 <= '0'; o3 <= '1'; o4 <= '0';
--      when FSM_WAIT_PHASE_3 =>
--        o1 <= '0'; o2 <= '1'; o3 <= '1'; o4 <= '0';
--      when FSM_RECEIVE_DATA_PHASE_2 =>
--        o1 <= '1'; o2 <= '1'; o3 <= '1'; o4 <= '0';
--      when FSM_ERROR =>
--        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '1';
--      when FSM_DONE =>
--        o1 <= '1'; o2 <= '0'; o3 <= '0'; o4 <= '1';
--      when others =>
--        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '0';
--    end case;
--  end process;

--  debug_ram_in_index <= std_logic_vector(to_unsigned(ram_in_index, 4));

--  -- FSM Logic
--  main_FSM: process(buffer_clk, buffer_rst)
--  variable send_count : natural := 0;
--  variable receive_count : natural := 0;
--  variable wait_counter : natural := 0;
--  variable error_counter : natural := 0;

--  begin
--    if buffer_rst = '0' then
--      mainFSM_currentState  <= FSM_IDLE;
--      mainFSM_prevState     <= FSM_IDLE;
      
--      done <= '0';
      
--      -- Handshake signals
--      buffer_in_ready <= '0';
--      buffer_out_valid <= '0';
--      buffer_out_data <= ('0', others => '0');
      
--      -- RAM initialization 
--      ram_in   <= ((others=>'0'), others => (others=>'0'));
      
--      -- Phase 1 data (send 2)
--      ram_out(0) <= "00" & x"1D6EF782";
--      ram_out(1) <= "01" & x"26AC0001";
      
--      -- Phase 2 data (send 4)
--      ram_out(2) <= "00" & x"36AC0001";
--      ram_out(3) <= "01" & x"4F7FFF30";
--      ram_out(4) <= "00" & x"5F800001";
--      ram_out(5) <= "01" & x"67AEFFF1";
      
--      ram_in_index  <= 0;
--      ram_out_index <= 0;
      
--      send_count := 0;
--      receive_count := 0;
--      wait_counter := 0;
--      error_counter := 0;
      
--    elsif rising_edge(buffer_clk) then
      
--      case mainFSM_currentState is
--        -- Start Operation when receive input from FPGA button
--        when FSM_IDLE =>
--          if start = '1' then
--            started <= '1';
--            buffer_out_valid  <= '1'; 
--            buffer_out_data   <= ram_out(ram_out_index);
            
--            mainFSM_currentState  <= FSM_SEND_DATA_PHASE_1; 
--            mainFSM_prevState     <= FSM_IDLE;
--          end if;
        
--        -- Send first 2 data items
--        when FSM_SEND_DATA_PHASE_1 =>
--          started <= '1';
--          if ram_out_index = 2 then
--            buffer_out_valid <= '0';
--            mainFSM_currentState  <= FSM_WAIT_PHASE_1;
--            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_1;
--          elsif buffer_out_ready = '1' then
--            buffer_out_valid <= '0';
--            buffer_out_data   <= ram_out(ram_out_index);
--            ram_out_index     <= ram_out_index + 1;
            
--            mainFSM_currentState  <= FSM_SEND_DATA_PHASE_1;
--            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_1;
--          else
--            buffer_out_valid  <= '1';
--            buffer_out_data   <= ram_out(ram_out_index);
            
--            mainFSM_currentState  <= FSM_SEND_DATA_PHASE_1;
--            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_1;
--          end if;
        
--        -- Wait after sending first 2
--        when FSM_WAIT_PHASE_1 =>
--          started <= '1';
--          buffer_out_valid <= '0';
--          buffer_in_ready <= '0';
--          if wait_counter < 100 then
--            wait_counter := wait_counter + 1;
--            mainFSM_currentState  <= FSM_WAIT_PHASE_1;
--          else
--            wait_counter := 0;
--            buffer_out_valid  <= '1';
--            buffer_out_data   <= ram_out(ram_out_index);
--            mainFSM_currentState  <= FSM_SEND_DATA_PHASE_2;
--          end if;
--          mainFSM_prevState     <= FSM_WAIT_PHASE_1;
        
--        -- Send next 4 data items
--        when FSM_SEND_DATA_PHASE_2 =>
--          started <= '1';
--          if ram_out_index = 6 then
--            buffer_out_valid <= '0';
--            mainFSM_currentState  <= FSM_WAIT_PHASE_2;
--            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_2;
--          elsif buffer_out_ready = '1' then
--            buffer_out_valid <= '0';
--            buffer_out_data   <= ram_out(ram_out_index);
--            ram_out_index     <= ram_out_index + 1;
            
--            mainFSM_currentState  <= FSM_SEND_DATA_PHASE_2;
--            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_2;
--          else
--            buffer_out_valid  <= '1';
--            buffer_out_data   <= ram_out(ram_out_index);
            
--            mainFSM_currentState  <= FSM_SEND_DATA_PHASE_2;
--            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_2;
--          end if;
----          started <= '1';
----          if send_count = 3 and buffer_out_ready = '1' then 
----            buffer_out_data   <= ram_out(ram_out_index);
----            buffer_out_valid  <= '0';
----            ram_out_index     <= ram_out_index + 1;
----            send_count        := 0;
            
----            mainFSM_currentState  <= FSM_WAIT_PHASE_2;
----            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_2;
----          elsif buffer_out_ready = '1' then
----            buffer_out_data   <= ram_out(ram_out_index + 1);
----            buffer_out_valid <= '1';
----            ram_out_index     <= ram_out_index + 1;
----            send_count        := send_count + 1;
            
----            mainFSM_currentState  <= FSM_SEND_DATA_PHASE_2;
----            mainFSM_prevState     <= FSM_SEND_DATA_PHASE_2;
            
----          else
----            buffer_out_valid <= '1';
            
----          end if;
        
--        -- Wait after sending next 4
--        when FSM_WAIT_PHASE_2 =>
--          started <= '1';
--          buffer_out_valid <= '0';
--          buffer_in_ready <= '0';
--          if wait_counter < 100 then
--            wait_counter := wait_counter + 1;
--            mainFSM_currentState  <= FSM_WAIT_PHASE_2;
--          else
--            wait_counter := 0;
--            mainFSM_currentState  <= FSM_RECEIVE_DATA_PHASE_1;
--          end if;
--          mainFSM_prevState     <= FSM_WAIT_PHASE_2;
        
--        -- Receive first 3 data items
--        when FSM_RECEIVE_DATA_PHASE_1 =>
--          started <= '1';
--          buffer_in_ready <= '1';
--          if ram_in_index = 4 then
--            ram_in_index <= 4;
--            buffer_in_ready <= '0';
--            mainFSM_currentState  <= FSM_WAIT_PHASE_3;
--          elsif buffer_in_valid = '1' then
--            if buffer_in_data /= ram_out(ram_in_index-1) then 
--              mainFSM_currentState <= FSM_ERROR;
--            else
--              ram_in(ram_in_index-1)  <= buffer_in_data;
--              ram_in_index          <= ram_in_index + 1;
--            end if;
--          end if;
          
--          mainFSM_prevState     <= FSM_RECEIVE_DATA_PHASE_1;

        
--        -- Wait after receiving first 3
--        when FSM_WAIT_PHASE_3 =>
--          started <= '1';
--          buffer_out_valid <= '0';
--          buffer_in_ready <= '0';
--          if wait_counter < 100 then
--            wait_counter := wait_counter + 1;
--            mainFSM_currentState  <= FSM_WAIT_PHASE_3;
--          else
--            wait_counter := 0;
--            ram_in_index <= 4;
--            buffer_in_ready <= '1';
--            mainFSM_currentState  <= FSM_RECEIVE_DATA_PHASE_2;
--          end if;
--          mainFSM_prevState     <= FSM_WAIT_PHASE_3;
        
        
--        -- Receive next 3 data items
--        when FSM_RECEIVE_DATA_PHASE_2 =>
--          started <= '1';
--          buffer_in_ready <= '1';
--          if ram_in_index = 7 then
--            buffer_in_ready <= '0';
--            mainFSM_currentState  <= FSM_DONE;
--          elsif buffer_in_valid = '1' then
--            if buffer_in_data /= ram_out(ram_in_index-1) then 
--              mainFSM_currentState <= FSM_ERROR;
--            else
--              ram_in(ram_in_index-1)  <= buffer_in_data;
--              ram_in_index          <= ram_in_index + 1;
--            end if;
--          end if;
          
--          mainFSM_prevState     <= FSM_RECEIVE_DATA_PHASE_2;
        
--        -- Error State
--        when FSM_ERROR =>
--          started <= '0';
--          buffer_in_ready <= '0';
--          buffer_out_valid <= '0';
--          if mainFSM_prevState = FSM_RECEIVE_DATA_PHASE_1 then
--            if error_counter < 200 then
--              done <= '1';
--              error_counter := error_counter + 1;
--            elsif error_counter < 400 then
--              done <= '0';
--              error_counter := error_counter + 1;
--            else
--              error_counter := 0;
--            end if;
--          elsif mainFSM_prevState = FSM_RECEIVE_DATA_PHASE_2 then
--            if error_counter < 200 then
--              done <= '1';
--              error_counter := error_counter + 1;
--            elsif error_counter < 300 then
--              done <= '0';
--              error_counter := error_counter + 1;
--            elsif error_counter < 500 then
--              done <= '1';
--              error_counter := error_counter + 1;
--            elsif error_counter < 900 then
--              done <= '0';
--              error_counter := error_counter + 1;
--            else
--              error_counter := 0;
--            end if;
--          else
--            done <= '0';
--          end if;
        
--        -- Final State
--        when FSM_DONE =>
--          started <= '1';
--          done <= '1';
--          mainFSM_currentState  <= FSM_DONE;
--          mainFSM_prevState     <= FSM_DONE;
        
--        -- Default
--        when others =>
--          mainFSM_currentState  <= FSM_IDLE;
--          mainFSM_prevState     <= FSM_IDLE;
          
--      end case;
--    end if;
--  end process;

--end Behavioral;

------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 12/31/2024 04:08:24 PM  -- Revised for simultaneous R/W test
---- Design Name: 
---- Module Name: async_sim - Behavioral (Simultaneous Read/Write Test)
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: Testbench that forces simultaneous read and write transactions.
---- This test drives both the output (write) and input (read) handshakes at the same time,
---- checking that data sent out on buffer_out_data is accepted by the DUT (when
---- buffer_out_ready is '1') while data coming in on buffer_in_data (when buffer_in_valid
---- is '1') is correctly captured. Any data mismatch will drive the FSM into an error state.
----
---- Revision:
---- Revision 0.01 - Initial creation
---- Revision 0.02 - Rewritten to test simultaneous read and write transactions
---- Additional Comments:
----   In this test, the FSM enters FSM_SIMUL_RW (simultaneous read/write) once the start 
----   signal is asserted. It then asserts both buffer_out_valid and buffer_in_ready on every
----   clock. It updates the send counter when the DUT accepts output (buffer_out_ready) and 
----   captures input data when buffer_in_valid is asserted. When NUM_DATA transactions in both 
----   directions have occurred (and match the expected data) the test goes to the DONE state.
------------------------------------------------------------------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.numeric_std.all;

--entity async_sim is
--  generic (
--    ram_width : natural := 34;
--    ram_depth : natural := 10;
--    NUM_DATA  : natural := 10
--    );
--  port (
--    buffer_clk : in std_logic;
--    buffer_rst : in std_logic;

--    -- HS input interface (data coming from DUT)
--    buffer_in_ready : out std_logic;
--    buffer_in_valid : in std_logic;
--    buffer_in_data  : in std_logic_vector(ram_width - 1 downto 0);

--    -- HS output interface (data sent to DUT)
--    buffer_out_ready : in std_logic;
--    buffer_out_valid : out std_logic;
--    buffer_out_data  : out std_logic_vector(ram_width - 1 downto 0);
    
--    -- External control signals
--    start   : in std_logic;
--    started : out std_logic;
--    done    : out std_logic;
    
--    -- State lights for debugging
--    o1 : out std_logic;
--    o2 : out std_logic;
--    o3 : out std_logic;
--    o4 : out std_logic;
    
--    -- Debugging counters
--    debug_send_count    : out std_logic_vector(3 downto 0);
--    debug_receive_count : out std_logic_vector(3 downto 0)
--  );
--end async_sim;

--architecture Behavioral of async_sim is

--  -- Simplify the state machine for a simultaneous R/W test.
--  type STATE_TYPE_1 is (
--      FSM_IDLE,       -- Wait for the start signal
--      FSM_SIMUL_RW,   -- Simultaneous Read/Write phase
--      FSM_DONE,       -- Completed successful test
--      FSM_ERROR       -- Error detected
--  );
--  signal mainFSM_currentState : STATE_TYPE_1;

--  -- Counters for send and receive transactions
--  signal send_count    : natural := 0;
--  signal receive_count : natural := 0;

--  -- Create an array to hold the data to send (and expected to be echoed back)
--  type ram_type is array (0 to NUM_DATA - 1) of std_logic_vector(ram_width - 1 downto 0);
--  signal send_data     : ram_type;
--  signal exp_recv_data : ram_type;  -- expected data coming from the DUT
--  signal recv_data     : ram_type;  -- captured data from the DUT

--begin

--  -- Drive debugging outputs for the counters
--  debug_send_count    <= std_logic_vector(to_unsigned(send_count, 4));
--  debug_receive_count <= std_logic_vector(to_unsigned(receive_count, 4));

--  -- Update state lights for visibility
--  process(mainFSM_currentState)
--  begin
--    case mainFSM_currentState is
--      when FSM_IDLE =>
--        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '0';
--      when FSM_SIMUL_RW =>
--        o1 <= '1'; o2 <= '1'; o3 <= '0'; o4 <= '0';
--      when FSM_DONE =>
--        o1 <= '1'; o2 <= '0'; o3 <= '1'; o4 <= '0';
--      when FSM_ERROR =>
--        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '1';
--      when others =>
--        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '0';
--    end case;
--  end process;

--  -- Main FSM: In FSM_SIMUL_RW, both interfaces are active simultaneously.
--  process(buffer_clk, buffer_rst)
--  begin
--    if buffer_rst = '0' then
--      mainFSM_currentState <= FSM_IDLE;
--      send_count    <= 0;
--      receive_count <= 0;
--      started       <= '0';
--      done          <= '0';
--      buffer_out_valid <= '0';
--      buffer_out_data  <= (others => '0');
--      buffer_in_ready  <= '0';

--      -- Initialize send data and expected receive data.
--      for i in 0 to NUM_DATA - 1 loop
--        -- Example: Fill with a simple counter pattern. Adjust width/pattern as needed.
--        send_data(i)     <= std_logic_vector(to_unsigned(i, ram_width));
--        exp_recv_data(i) <= std_logic_vector(to_unsigned(i, ram_width));
--      end loop;

--    elsif rising_edge(buffer_clk) then
--      case mainFSM_currentState is

--        when FSM_IDLE =>
--          -- Wait until the test start is signaled.
--          if start = '1' then
--            started <= '1';
--            mainFSM_currentState <= FSM_SIMUL_RW;
--          end if;

--        when FSM_SIMUL_RW =>
--          -- Assert both interfaces simultaneously.
--          buffer_out_valid <= '1';
--          buffer_in_ready  <= '1';

--          -- Drive outgoing data if the DUT is ready to accept it.
--          if buffer_out_ready = '1' then
--            buffer_out_data <= send_data(send_count);
--            if send_count < NUM_DATA then
--              send_count <= send_count + 1;
--            end if;
--          end if;

--          -- Capture incoming data when valid is asserted by the DUT.
--          if buffer_in_valid = '1' then
--            recv_data(receive_count) <= buffer_in_data;
--            -- Check for correctness. (Modify this check as appropriate for your DUT.)
--            if buffer_in_data /= exp_recv_data(receive_count) then
--              mainFSM_currentState <= FSM_ERROR;
--            else
--              if receive_count < NUM_DATA then
--                receive_count <= receive_count + 1;
--              end if;
--            end if;
--          end if;

--          -- Once the required number of transactions are complete, finish the test.
--          if send_count = NUM_DATA and receive_count = NUM_DATA then
--            mainFSM_currentState <= FSM_DONE;
--            buffer_out_valid <= '0';
--            buffer_in_ready  <= '0';
--          end if;

--        when FSM_DONE =>
--          started <= '1';
--          done    <= '1';

--        when FSM_ERROR =>
--          started <= '0';
--          done    <= '0';

--        when others =>
--          mainFSM_currentState <= FSM_IDLE;
--      end case;
--    end if;
--  end process;

--end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity async_sim is
  generic (
    ram_width : natural := 34;
    ram_depth : natural := 10;
    NUM_DATA  : natural := 10;
    NUM_REPS  : natural := 1000
    );
  port (
    buffer_clk : in std_logic;
    buffer_rst : in std_logic;

    -- HS input interface (data coming from DUT)
    buffer_in_ready : out std_logic;
    buffer_in_valid : in std_logic;
    buffer_in_data  : in std_logic_vector(ram_width - 1 downto 0);

    -- HS output interface (data sent to DUT)
    buffer_out_ready : in std_logic;
    buffer_out_valid : out std_logic;
    buffer_out_data  : out std_logic_vector(ram_width - 1 downto 0);
    
    -- External control signals
    start   : in std_logic;
    started : out std_logic;
    done    : out std_logic;
    
    -- State lights for debugging
    o1 : out std_logic;
    o2 : out std_logic;
    o3 : out std_logic;
    o4 : out std_logic;
    
    -- Debugging counters
    debug_send_count    : out std_logic_vector(3 downto 0);
    debug_receive_count : out std_logic_vector(3 downto 0)
  );
end async_sim;

architecture Behavioral of async_sim is

  -- Simplify the state machine for a simultaneous R/W test.
  type STATE_TYPE_1 is (
      FSM_IDLE,       -- Wait for the start signal
      FSM_SIMUL_RW,   -- Simultaneous Read/Write phase
      FSM_DONE,       -- Completed successful test
      FSM_ERROR       -- Error detected
  );
  signal mainFSM_currentState : STATE_TYPE_1;

  -- Counters for send and receive transactions
  signal send_count    : natural := 0;
  signal receive_count : natural := 0;

  -- Create an array to hold the data to send (and expected to be echoed back)
  type ram_type is array (0 to NUM_DATA - 1) of std_logic_vector(ram_width - 1 downto 0);
  signal send_data     : ram_type;
  signal exp_recv_data : ram_type;  -- expected data coming from the DUT
  signal recv_data     : ram_type;  -- captured data from the DUT

begin

  -- Drive debugging outputs for the counters
  debug_send_count    <= std_logic_vector(to_unsigned(send_count, 4));
  debug_receive_count <= std_logic_vector(to_unsigned(receive_count, 4));

  -- Update state lights for visibility
  process(mainFSM_currentState)
  begin
    case mainFSM_currentState is
      when FSM_IDLE =>
        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '0';
      when FSM_SIMUL_RW =>
        o1 <= '1'; o2 <= '1'; o3 <= '0'; o4 <= '0';
      when FSM_DONE =>
        o1 <= '1'; o2 <= '0'; o3 <= '1'; o4 <= '0';
      when FSM_ERROR =>
        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '1';
      when others =>
        o1 <= '0'; o2 <= '0'; o3 <= '0'; o4 <= '0';
    end case;
  end process;

  -- Main FSM: In FSM_SIMUL_RW, both interfaces are active simultaneously.
  process(buffer_clk, buffer_rst)
  begin
    if buffer_rst = '0' then
      mainFSM_currentState <= FSM_IDLE;
      send_count    <= 0;
      receive_count <= 0;
      started       <= '0';
      done          <= '0';
      buffer_out_valid <= '0';
      buffer_out_data  <= (others => '0');
      buffer_in_ready  <= '0';

      -- Initialize send_data and expected receive data with 34-bit patterns.
      -- Each pattern is formed by concatenating a 2-bit prefix and a 32-bit hexadecimal constant.
      send_data(0) <= "00" & x"1D6EF782";
      send_data(1) <= "01" & x"26AC0001";
      send_data(2) <= "00" & x"36AC0001";
      send_data(3) <= "01" & x"4F7FFF30";
      send_data(4) <= "00" & x"5F800001";
      send_data(5) <= "01" & x"67AEFFF1";
      send_data(6) <= "00" & x"89ABCDEF";
      send_data(7) <= "01" & x"01234567";
      send_data(8) <= "00" & x"FEDCBA98";
      send_data(9) <= "01" & x"76543210";

      -- Set expected received data to match the sent data.
      for j in 0 to NUM_REPS - 1 loop
          for i in 0 to NUM_DATA - 1 loop
             exp_recv_data(i) <= send_data(i);
          end loop;
      end loop;
    
    elsif rising_edge(buffer_clk) then
      case mainFSM_currentState is

        when FSM_IDLE =>
          -- Wait until the test start is signaled.
          if start = '1' then
            started <= '1';
            mainFSM_currentState <= FSM_SIMUL_RW;
          end if;

        when FSM_SIMUL_RW =>
          -- Assert both interfaces simultaneously.
          buffer_out_valid <= '1';
          buffer_in_ready  <= '1';

          -- Drive outgoing data if the DUT is ready to accept it.
          if buffer_out_ready = '1' then
            buffer_out_data <= send_data(send_count);
            if send_count < (NUM_REPS * NUM_DATA) then
              send_count <= send_count + 1;
            end if;
          end if;

          -- Capture incoming data when valid is asserted by the DUT.
          if buffer_in_valid = '1' then
            recv_data(receive_count) <= buffer_in_data;
            -- Compare the received data against the expected pattern.
            if buffer_in_data /= exp_recv_data(receive_count) then
              mainFSM_currentState <= FSM_ERROR;
            else
              if receive_count < (NUM_REPS * NUM_DATA) then
                receive_count <= receive_count + 1;
              end if;
            end if;
          end if;

          -- Once the required number of transactions are complete, finish the test.
          if send_count = (NUM_REPS * NUM_DATA) and receive_count = (NUM_REPS * NUM_DATA) then
            mainFSM_currentState <= FSM_DONE;
            buffer_out_valid <= '0';
            buffer_in_ready  <= '0';
          end if;

        when FSM_DONE =>
          started <= '1';
          done    <= '1';

        when FSM_ERROR =>
          started <= '0';
          done    <= '0';

        when others =>
          mainFSM_currentState <= FSM_IDLE;
      end case;
    end if;
  end process;

end Behavioral;
