library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ui_controller is
generic (
    numeric_input_count : integer;
    ram_width : integer
);
port (
    clk : in std_logic;
    in_numeric_addr : in std_logic_vector(77 downto 0);
    in_numeric_ctrl : out std_logic_vector(2651 downto 0);
    in_numeric_value : in std_logic_vector(33 downto 0);
    numeric_write_enable : in std_logic
);
end ui_controller;

architecture Behavioral of ui_controller is
    type in_numeric_mem is array (0 to 77) of std_logic_vector(33 downto 0);
    signal input_numeric_registers : in_numeric_mem := (others => (others => '0'));
    signal in_numeric_addr_int : integer range 0 to 77;
begin

    in_numeric_addr_int <= to_integer(unsigned(in_numeric_addr));
process(clk)
begin
if rising_edge(clk) then
    if numeric_write_enable = '1' then
        input_numeric_registers(in_numeric_addr_int) <= in_numeric_value;
    end if;
end if;
end process;

end Behavioral;
