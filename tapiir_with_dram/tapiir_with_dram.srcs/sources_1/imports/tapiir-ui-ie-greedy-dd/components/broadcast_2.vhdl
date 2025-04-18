-- Takes in one input (following HS conventions), sending to multiple outputs at the same time.
library ieee;
use ieee.std_logic_1164.all;

entity broadcast_2 is
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
end broadcast_2;


architecture Behavioral of broadcast_2 is
  signal temp_data_0   : std_logic_vector (bit_width-1 downto 0);
  signal is_in_ready_0 : std_logic := '1';
  signal is_stored_0   : std_logic := '0';
  signal is_sent       : std_logic := '0';

begin

  store_data : process(clk) -- store data when available in temporary storage
  begin
    if falling_edge(clk) then
      -- clear previous data (considered sent after 1 cycle where out valid and ready = 1)
      if (is_stored_0 = '1' AND (op_out_ready_0='1' AND op_out_ready_1='1')) then
        is_stored_0 <= '0';
        is_in_ready_0 <= '1';
      else
        -- store data if input available and temp storage not used
        if (is_stored_0 = '0' AND
            op_in_valid_0 = '1' AND is_in_ready_0 = '1') then
          is_in_ready_0 <= '0';
          is_stored_0 <= '1';
          temp_data_0(bit_width-1 downto 0) <= op_in_data_0;
        end if;
      end if;
      -- for resetting component
      if (rst = '0') then
        is_stored_0 <= '0';
        is_in_ready_0 <= '1';
        is_sent <= '0';
      end if;
    end if;
  end process store_data;

  write_data : process(clk) -- write stored data to output ports
  begin
    if rising_edge(clk) then
      if (is_stored_0 = '1') then -- only write when both data ready to send
        op_out_data_0 <= temp_data_0(bit_width-1 downto 0);
op_out_data_1 <= temp_data_0(bit_width-1 downto 0);

      end if;
      op_in_ready_0 <= is_in_ready_0;
      op_out_valid_0 <= is_stored_0;
op_out_valid_1 <= is_stored_0;

    end if;
  end process write_data;

end Behavioral;
