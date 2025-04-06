library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
    Port (
        clk      : in  std_logic;
        reset    : in  std_logic;
        btn1     : in  std_logic;
        btn2     : in  std_logic;
        btn3     : in  std_logic;
        btn4     : in  std_logic;
        srca1     : in  std_logic;
        srca2     : in  std_logic;
        srca3     : in  std_logic;
        srca4     : in  std_logic;
        srcb1     : in  std_logic;
        srcb2     : in  std_logic;
        srcb3     : in  std_logic;
        srcb4     : in  std_logic;
        srcc1     : in  std_logic;
        srcc2     : in  std_logic;
        srcc3     : in  std_logic;
        srcc4     : in  std_logic;
        srcd1     : in  std_logic;
        srcd2     : in  std_logic;
        srcd3     : in  std_logic;
        srcd4     : in  std_logic;
        mux_out1  : out std_logic;
        mux_out2  : out std_logic;
        mux_out3  : out std_logic;
        mux_out4  : out std_logic
    );
end mux4to1;

architecture Behavioral of mux4to1 is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            -- Asynchronous reset: output set to '0'
            mux_out1 <= srca1;
            mux_out2 <= srca2;
            mux_out3 <= srca3;
            mux_out4 <= srca4;
        elsif rising_edge(clk) then
            -- Check buttons in order of priority:
            if btn1 = '1' then
                mux_out1 <= srca1;
                mux_out2 <= srca2;
                mux_out3 <= srca3;
                mux_out4 <= srca4;
            elsif btn2 = '1' then
                mux_out1 <= srcb1;
                mux_out2 <= srcb2;
                mux_out3 <= srcb3;
                mux_out4 <= srcb4;
            elsif btn3 = '1' then
                mux_out1 <= srcc1;
                mux_out2 <= srcc2;
                mux_out3 <= srcc3;
                mux_out4 <= srcc4;
            elsif btn4 = '1' then
                mux_out1 <= srcd1;
                mux_out2 <= srcd2;
                mux_out3 <= srcd3;
                mux_out4 <= srcd4;
            else
                -- Default condition if no button is pressed
                mux_out1 <= srca1;
                mux_out2 <= srca2;
                mux_out3 <= srca3;
                mux_out4 <= srca4;
            end if;
        end if;
    end process;
end Behavioral;
