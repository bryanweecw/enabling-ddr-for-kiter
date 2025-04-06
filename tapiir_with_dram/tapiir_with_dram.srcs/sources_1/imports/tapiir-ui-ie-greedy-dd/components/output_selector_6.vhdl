-- Takes in two inputs, sending to output at the
-- same time. Will store input if they don't arrive at the same time; will only
-- output once both inputs are provided.
library ieee;
use ieee.std_logic_1164.all;

entity output_selector_6 is
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
end output_selector_6;


architecture Behavioral of output_selector_6 is
    signal current_phase, next_phase : integer := 0;


begin

  update_execution_phase : process(clk)
  begin
    if falling_edge(clk) then

        if (current_phase = 0) then
        if (op_in_valid_0 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 1) then
        if (op_in_valid_0 = '1' and op_out_ready_1 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 2) then
        if (op_in_valid_0 = '1' and op_out_ready_2 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 3) then
        if (op_in_valid_0 = '1' and op_out_ready_3 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 4) then
        if (op_in_valid_0 = '1' and op_out_ready_4 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 5) then
        if (op_in_valid_0 = '1' and op_out_ready_5 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
end if;


        -- rst behaviour
        if (rst = '0') then
            current_phase <= 0;
            next_phase <= 0;
        end if;
    end if;

    if rising_edge(clk) then
        current_phase <= next_phase;
    end if;
  end process update_execution_phase;

  op_out_valid_0 <= op_in_valid_0 when (current_phase = 0) else
'0';
op_out_valid_1 <= op_in_valid_0 when (current_phase = 1) else
'0';
op_out_valid_2 <= op_in_valid_0 when (current_phase = 2) else
'0';
op_out_valid_3 <= op_in_valid_0 when (current_phase = 3) else
'0';
op_out_valid_4 <= op_in_valid_0 when (current_phase = 4) else
'0';
op_out_valid_5 <= op_in_valid_0 when (current_phase = 5) else
'0';

  op_out_data_0 <= op_in_data_0 when (current_phase = 0) else
"0000000000000000000000000000000000";
op_out_data_1 <= op_in_data_0 when (current_phase = 1) else
"0000000000000000000000000000000000";
op_out_data_2 <= op_in_data_0 when (current_phase = 2) else
"0000000000000000000000000000000000";
op_out_data_3 <= op_in_data_0 when (current_phase = 3) else
"0000000000000000000000000000000000";
op_out_data_4 <= op_in_data_0 when (current_phase = 4) else
"0000000000000000000000000000000000";
op_out_data_5 <= op_in_data_0 when (current_phase = 5) else
"0000000000000000000000000000000000";

  op_in_ready_0 <= op_out_ready_0 when (current_phase = 0) else
op_out_ready_1 when (current_phase = 1) else
op_out_ready_2 when (current_phase = 2) else
op_out_ready_3 when (current_phase = 3) else
op_out_ready_4 when (current_phase = 4) else
op_out_ready_5 when (current_phase = 5) else
'0';


end Behavioral;
