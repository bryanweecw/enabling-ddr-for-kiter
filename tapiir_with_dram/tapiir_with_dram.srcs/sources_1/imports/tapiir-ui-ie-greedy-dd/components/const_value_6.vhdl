library ieee;
use ieee.std_logic_1164.all;

entity const_value_6 is
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
end const_value_6;


architecture Behavioral of const_value_6 is
begin

op_out_valid_0 <= '1';
op_out_data_0 <= value;

op_out_valid_1 <= '1';
op_out_data_1 <= value;

op_out_valid_2 <= '1';
op_out_data_2 <= value;

op_out_valid_3 <= '1';
op_out_data_3 <= value;

op_out_valid_4 <= '1';
op_out_data_4 <= value;

op_out_valid_5 <= '1';
op_out_data_5 <= value;



end Behavioral;
