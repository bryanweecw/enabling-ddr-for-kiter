-- Takes in multiple inputs and routes them to the output port depending
-- on the phase of execution defined by 'current_phase'.
library ieee;
use ieee.std_logic_1164.all;

entity input_selector_56 is
generic (
    num_phases : integer
);
port (
    clk : in std_logic;
    op_in_data_0 : in std_logic_vector(33 downto 0);
    op_in_data_1 : in std_logic_vector(33 downto 0);
    op_in_data_10 : in std_logic_vector(33 downto 0);
    op_in_data_11 : in std_logic_vector(33 downto 0);
    op_in_data_12 : in std_logic_vector(33 downto 0);
    op_in_data_13 : in std_logic_vector(33 downto 0);
    op_in_data_14 : in std_logic_vector(33 downto 0);
    op_in_data_15 : in std_logic_vector(33 downto 0);
    op_in_data_16 : in std_logic_vector(33 downto 0);
    op_in_data_17 : in std_logic_vector(33 downto 0);
    op_in_data_18 : in std_logic_vector(33 downto 0);
    op_in_data_19 : in std_logic_vector(33 downto 0);
    op_in_data_2 : in std_logic_vector(33 downto 0);
    op_in_data_20 : in std_logic_vector(33 downto 0);
    op_in_data_21 : in std_logic_vector(33 downto 0);
    op_in_data_22 : in std_logic_vector(33 downto 0);
    op_in_data_23 : in std_logic_vector(33 downto 0);
    op_in_data_24 : in std_logic_vector(33 downto 0);
    op_in_data_25 : in std_logic_vector(33 downto 0);
    op_in_data_26 : in std_logic_vector(33 downto 0);
    op_in_data_27 : in std_logic_vector(33 downto 0);
    op_in_data_28 : in std_logic_vector(33 downto 0);
    op_in_data_29 : in std_logic_vector(33 downto 0);
    op_in_data_3 : in std_logic_vector(33 downto 0);
    op_in_data_30 : in std_logic_vector(33 downto 0);
    op_in_data_31 : in std_logic_vector(33 downto 0);
    op_in_data_32 : in std_logic_vector(33 downto 0);
    op_in_data_33 : in std_logic_vector(33 downto 0);
    op_in_data_34 : in std_logic_vector(33 downto 0);
    op_in_data_35 : in std_logic_vector(33 downto 0);
    op_in_data_36 : in std_logic_vector(33 downto 0);
    op_in_data_37 : in std_logic_vector(33 downto 0);
    op_in_data_38 : in std_logic_vector(33 downto 0);
    op_in_data_39 : in std_logic_vector(33 downto 0);
    op_in_data_4 : in std_logic_vector(33 downto 0);
    op_in_data_40 : in std_logic_vector(33 downto 0);
    op_in_data_41 : in std_logic_vector(33 downto 0);
    op_in_data_42 : in std_logic_vector(33 downto 0);
    op_in_data_43 : in std_logic_vector(33 downto 0);
    op_in_data_44 : in std_logic_vector(33 downto 0);
    op_in_data_45 : in std_logic_vector(33 downto 0);
    op_in_data_46 : in std_logic_vector(33 downto 0);
    op_in_data_47 : in std_logic_vector(33 downto 0);
    op_in_data_48 : in std_logic_vector(33 downto 0);
    op_in_data_49 : in std_logic_vector(33 downto 0);
    op_in_data_5 : in std_logic_vector(33 downto 0);
    op_in_data_50 : in std_logic_vector(33 downto 0);
    op_in_data_51 : in std_logic_vector(33 downto 0);
    op_in_data_52 : in std_logic_vector(33 downto 0);
    op_in_data_53 : in std_logic_vector(33 downto 0);
    op_in_data_54 : in std_logic_vector(33 downto 0);
    op_in_data_55 : in std_logic_vector(33 downto 0);
    op_in_data_6 : in std_logic_vector(33 downto 0);
    op_in_data_7 : in std_logic_vector(33 downto 0);
    op_in_data_8 : in std_logic_vector(33 downto 0);
    op_in_data_9 : in std_logic_vector(33 downto 0);
    op_in_ready_0 : out std_logic;
    op_in_ready_1 : out std_logic;
    op_in_ready_10 : out std_logic;
    op_in_ready_11 : out std_logic;
    op_in_ready_12 : out std_logic;
    op_in_ready_13 : out std_logic;
    op_in_ready_14 : out std_logic;
    op_in_ready_15 : out std_logic;
    op_in_ready_16 : out std_logic;
    op_in_ready_17 : out std_logic;
    op_in_ready_18 : out std_logic;
    op_in_ready_19 : out std_logic;
    op_in_ready_2 : out std_logic;
    op_in_ready_20 : out std_logic;
    op_in_ready_21 : out std_logic;
    op_in_ready_22 : out std_logic;
    op_in_ready_23 : out std_logic;
    op_in_ready_24 : out std_logic;
    op_in_ready_25 : out std_logic;
    op_in_ready_26 : out std_logic;
    op_in_ready_27 : out std_logic;
    op_in_ready_28 : out std_logic;
    op_in_ready_29 : out std_logic;
    op_in_ready_3 : out std_logic;
    op_in_ready_30 : out std_logic;
    op_in_ready_31 : out std_logic;
    op_in_ready_32 : out std_logic;
    op_in_ready_33 : out std_logic;
    op_in_ready_34 : out std_logic;
    op_in_ready_35 : out std_logic;
    op_in_ready_36 : out std_logic;
    op_in_ready_37 : out std_logic;
    op_in_ready_38 : out std_logic;
    op_in_ready_39 : out std_logic;
    op_in_ready_4 : out std_logic;
    op_in_ready_40 : out std_logic;
    op_in_ready_41 : out std_logic;
    op_in_ready_42 : out std_logic;
    op_in_ready_43 : out std_logic;
    op_in_ready_44 : out std_logic;
    op_in_ready_45 : out std_logic;
    op_in_ready_46 : out std_logic;
    op_in_ready_47 : out std_logic;
    op_in_ready_48 : out std_logic;
    op_in_ready_49 : out std_logic;
    op_in_ready_5 : out std_logic;
    op_in_ready_50 : out std_logic;
    op_in_ready_51 : out std_logic;
    op_in_ready_52 : out std_logic;
    op_in_ready_53 : out std_logic;
    op_in_ready_54 : out std_logic;
    op_in_ready_55 : out std_logic;
    op_in_ready_6 : out std_logic;
    op_in_ready_7 : out std_logic;
    op_in_ready_8 : out std_logic;
    op_in_ready_9 : out std_logic;
    op_in_valid_0 : in std_logic;
    op_in_valid_1 : in std_logic;
    op_in_valid_10 : in std_logic;
    op_in_valid_11 : in std_logic;
    op_in_valid_12 : in std_logic;
    op_in_valid_13 : in std_logic;
    op_in_valid_14 : in std_logic;
    op_in_valid_15 : in std_logic;
    op_in_valid_16 : in std_logic;
    op_in_valid_17 : in std_logic;
    op_in_valid_18 : in std_logic;
    op_in_valid_19 : in std_logic;
    op_in_valid_2 : in std_logic;
    op_in_valid_20 : in std_logic;
    op_in_valid_21 : in std_logic;
    op_in_valid_22 : in std_logic;
    op_in_valid_23 : in std_logic;
    op_in_valid_24 : in std_logic;
    op_in_valid_25 : in std_logic;
    op_in_valid_26 : in std_logic;
    op_in_valid_27 : in std_logic;
    op_in_valid_28 : in std_logic;
    op_in_valid_29 : in std_logic;
    op_in_valid_3 : in std_logic;
    op_in_valid_30 : in std_logic;
    op_in_valid_31 : in std_logic;
    op_in_valid_32 : in std_logic;
    op_in_valid_33 : in std_logic;
    op_in_valid_34 : in std_logic;
    op_in_valid_35 : in std_logic;
    op_in_valid_36 : in std_logic;
    op_in_valid_37 : in std_logic;
    op_in_valid_38 : in std_logic;
    op_in_valid_39 : in std_logic;
    op_in_valid_4 : in std_logic;
    op_in_valid_40 : in std_logic;
    op_in_valid_41 : in std_logic;
    op_in_valid_42 : in std_logic;
    op_in_valid_43 : in std_logic;
    op_in_valid_44 : in std_logic;
    op_in_valid_45 : in std_logic;
    op_in_valid_46 : in std_logic;
    op_in_valid_47 : in std_logic;
    op_in_valid_48 : in std_logic;
    op_in_valid_49 : in std_logic;
    op_in_valid_5 : in std_logic;
    op_in_valid_50 : in std_logic;
    op_in_valid_51 : in std_logic;
    op_in_valid_52 : in std_logic;
    op_in_valid_53 : in std_logic;
    op_in_valid_54 : in std_logic;
    op_in_valid_55 : in std_logic;
    op_in_valid_6 : in std_logic;
    op_in_valid_7 : in std_logic;
    op_in_valid_8 : in std_logic;
    op_in_valid_9 : in std_logic;
    op_out_data_0 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_valid_0 : out std_logic;
    rst : in std_logic
);
end input_selector_56;


architecture Behavioral of input_selector_56 is
    signal current_phase, next_phase : integer := 0;

begin

  update_execution_phase : process(clk)
  begin
    if falling_edge(clk) then
        -- check out_ready_0 for both inputs as it corresponds to
        -- the input port for the AXI merger component
        -- check for valid signal on input port corresponding to execution phase

        if (current_phase = 0) then
        if (op_in_valid_0 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 1) then
        if (op_in_valid_1 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 2) then
        if (op_in_valid_2 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 3) then
        if (op_in_valid_3 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 4) then
        if (op_in_valid_4 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 5) then
        if (op_in_valid_5 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 6) then
        if (op_in_valid_6 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 7) then
        if (op_in_valid_7 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 8) then
        if (op_in_valid_8 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 9) then
        if (op_in_valid_9 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 10) then
        if (op_in_valid_10 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 11) then
        if (op_in_valid_11 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 12) then
        if (op_in_valid_12 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 13) then
        if (op_in_valid_13 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 14) then
        if (op_in_valid_14 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 15) then
        if (op_in_valid_15 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 16) then
        if (op_in_valid_16 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 17) then
        if (op_in_valid_17 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 18) then
        if (op_in_valid_18 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 19) then
        if (op_in_valid_19 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 20) then
        if (op_in_valid_20 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 21) then
        if (op_in_valid_21 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 22) then
        if (op_in_valid_22 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 23) then
        if (op_in_valid_23 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 24) then
        if (op_in_valid_24 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 25) then
        if (op_in_valid_25 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 26) then
        if (op_in_valid_26 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 27) then
        if (op_in_valid_27 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 28) then
        if (op_in_valid_28 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 29) then
        if (op_in_valid_29 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 30) then
        if (op_in_valid_30 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 31) then
        if (op_in_valid_31 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 32) then
        if (op_in_valid_32 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 33) then
        if (op_in_valid_33 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 34) then
        if (op_in_valid_34 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 35) then
        if (op_in_valid_35 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 36) then
        if (op_in_valid_36 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 37) then
        if (op_in_valid_37 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 38) then
        if (op_in_valid_38 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 39) then
        if (op_in_valid_39 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 40) then
        if (op_in_valid_40 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 41) then
        if (op_in_valid_41 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 42) then
        if (op_in_valid_42 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 43) then
        if (op_in_valid_43 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 44) then
        if (op_in_valid_44 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 45) then
        if (op_in_valid_45 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 46) then
        if (op_in_valid_46 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 47) then
        if (op_in_valid_47 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 48) then
        if (op_in_valid_48 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 49) then
        if (op_in_valid_49 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 50) then
        if (op_in_valid_50 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 51) then
        if (op_in_valid_51 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 52) then
        if (op_in_valid_52 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 53) then
        if (op_in_valid_53 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 54) then
        if (op_in_valid_54 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 55) then
        if (op_in_valid_55 = '1' and op_out_ready_0 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
    end if;


        -- reset behaviour
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
op_in_valid_1 when (current_phase = 1) else
op_in_valid_2 when (current_phase = 2) else
op_in_valid_3 when (current_phase = 3) else
op_in_valid_4 when (current_phase = 4) else
op_in_valid_5 when (current_phase = 5) else
op_in_valid_6 when (current_phase = 6) else
op_in_valid_7 when (current_phase = 7) else
op_in_valid_8 when (current_phase = 8) else
op_in_valid_9 when (current_phase = 9) else
op_in_valid_10 when (current_phase = 10) else
op_in_valid_11 when (current_phase = 11) else
op_in_valid_12 when (current_phase = 12) else
op_in_valid_13 when (current_phase = 13) else
op_in_valid_14 when (current_phase = 14) else
op_in_valid_15 when (current_phase = 15) else
op_in_valid_16 when (current_phase = 16) else
op_in_valid_17 when (current_phase = 17) else
op_in_valid_18 when (current_phase = 18) else
op_in_valid_19 when (current_phase = 19) else
op_in_valid_20 when (current_phase = 20) else
op_in_valid_21 when (current_phase = 21) else
op_in_valid_22 when (current_phase = 22) else
op_in_valid_23 when (current_phase = 23) else
op_in_valid_24 when (current_phase = 24) else
op_in_valid_25 when (current_phase = 25) else
op_in_valid_26 when (current_phase = 26) else
op_in_valid_27 when (current_phase = 27) else
op_in_valid_28 when (current_phase = 28) else
op_in_valid_29 when (current_phase = 29) else
op_in_valid_30 when (current_phase = 30) else
op_in_valid_31 when (current_phase = 31) else
op_in_valid_32 when (current_phase = 32) else
op_in_valid_33 when (current_phase = 33) else
op_in_valid_34 when (current_phase = 34) else
op_in_valid_35 when (current_phase = 35) else
op_in_valid_36 when (current_phase = 36) else
op_in_valid_37 when (current_phase = 37) else
op_in_valid_38 when (current_phase = 38) else
op_in_valid_39 when (current_phase = 39) else
op_in_valid_40 when (current_phase = 40) else
op_in_valid_41 when (current_phase = 41) else
op_in_valid_42 when (current_phase = 42) else
op_in_valid_43 when (current_phase = 43) else
op_in_valid_44 when (current_phase = 44) else
op_in_valid_45 when (current_phase = 45) else
op_in_valid_46 when (current_phase = 46) else
op_in_valid_47 when (current_phase = 47) else
op_in_valid_48 when (current_phase = 48) else
op_in_valid_49 when (current_phase = 49) else
op_in_valid_50 when (current_phase = 50) else
op_in_valid_51 when (current_phase = 51) else
op_in_valid_52 when (current_phase = 52) else
op_in_valid_53 when (current_phase = 53) else
op_in_valid_54 when (current_phase = 54) else
op_in_valid_55 when (current_phase = 55) else
'0';

  op_out_data_0 <= op_in_data_0 when (current_phase = 0) else
op_in_data_1 when (current_phase = 1) else
op_in_data_2 when (current_phase = 2) else
op_in_data_3 when (current_phase = 3) else
op_in_data_4 when (current_phase = 4) else
op_in_data_5 when (current_phase = 5) else
op_in_data_6 when (current_phase = 6) else
op_in_data_7 when (current_phase = 7) else
op_in_data_8 when (current_phase = 8) else
op_in_data_9 when (current_phase = 9) else
op_in_data_10 when (current_phase = 10) else
op_in_data_11 when (current_phase = 11) else
op_in_data_12 when (current_phase = 12) else
op_in_data_13 when (current_phase = 13) else
op_in_data_14 when (current_phase = 14) else
op_in_data_15 when (current_phase = 15) else
op_in_data_16 when (current_phase = 16) else
op_in_data_17 when (current_phase = 17) else
op_in_data_18 when (current_phase = 18) else
op_in_data_19 when (current_phase = 19) else
op_in_data_20 when (current_phase = 20) else
op_in_data_21 when (current_phase = 21) else
op_in_data_22 when (current_phase = 22) else
op_in_data_23 when (current_phase = 23) else
op_in_data_24 when (current_phase = 24) else
op_in_data_25 when (current_phase = 25) else
op_in_data_26 when (current_phase = 26) else
op_in_data_27 when (current_phase = 27) else
op_in_data_28 when (current_phase = 28) else
op_in_data_29 when (current_phase = 29) else
op_in_data_30 when (current_phase = 30) else
op_in_data_31 when (current_phase = 31) else
op_in_data_32 when (current_phase = 32) else
op_in_data_33 when (current_phase = 33) else
op_in_data_34 when (current_phase = 34) else
op_in_data_35 when (current_phase = 35) else
op_in_data_36 when (current_phase = 36) else
op_in_data_37 when (current_phase = 37) else
op_in_data_38 when (current_phase = 38) else
op_in_data_39 when (current_phase = 39) else
op_in_data_40 when (current_phase = 40) else
op_in_data_41 when (current_phase = 41) else
op_in_data_42 when (current_phase = 42) else
op_in_data_43 when (current_phase = 43) else
op_in_data_44 when (current_phase = 44) else
op_in_data_45 when (current_phase = 45) else
op_in_data_46 when (current_phase = 46) else
op_in_data_47 when (current_phase = 47) else
op_in_data_48 when (current_phase = 48) else
op_in_data_49 when (current_phase = 49) else
op_in_data_50 when (current_phase = 50) else
op_in_data_51 when (current_phase = 51) else
op_in_data_52 when (current_phase = 52) else
op_in_data_53 when (current_phase = 53) else
op_in_data_54 when (current_phase = 54) else
op_in_data_55 when (current_phase = 55) else
"0000000000000000000000000000000000";

  op_in_ready_0 <= op_out_ready_0 when (current_phase = 0) else
'0';
op_in_ready_1 <= op_out_ready_0 when (current_phase = 1) else
'0';
op_in_ready_2 <= op_out_ready_0 when (current_phase = 2) else
'0';
op_in_ready_3 <= op_out_ready_0 when (current_phase = 3) else
'0';
op_in_ready_4 <= op_out_ready_0 when (current_phase = 4) else
'0';
op_in_ready_5 <= op_out_ready_0 when (current_phase = 5) else
'0';
op_in_ready_6 <= op_out_ready_0 when (current_phase = 6) else
'0';
op_in_ready_7 <= op_out_ready_0 when (current_phase = 7) else
'0';
op_in_ready_8 <= op_out_ready_0 when (current_phase = 8) else
'0';
op_in_ready_9 <= op_out_ready_0 when (current_phase = 9) else
'0';
op_in_ready_10 <= op_out_ready_0 when (current_phase = 10) else
'0';
op_in_ready_11 <= op_out_ready_0 when (current_phase = 11) else
'0';
op_in_ready_12 <= op_out_ready_0 when (current_phase = 12) else
'0';
op_in_ready_13 <= op_out_ready_0 when (current_phase = 13) else
'0';
op_in_ready_14 <= op_out_ready_0 when (current_phase = 14) else
'0';
op_in_ready_15 <= op_out_ready_0 when (current_phase = 15) else
'0';
op_in_ready_16 <= op_out_ready_0 when (current_phase = 16) else
'0';
op_in_ready_17 <= op_out_ready_0 when (current_phase = 17) else
'0';
op_in_ready_18 <= op_out_ready_0 when (current_phase = 18) else
'0';
op_in_ready_19 <= op_out_ready_0 when (current_phase = 19) else
'0';
op_in_ready_20 <= op_out_ready_0 when (current_phase = 20) else
'0';
op_in_ready_21 <= op_out_ready_0 when (current_phase = 21) else
'0';
op_in_ready_22 <= op_out_ready_0 when (current_phase = 22) else
'0';
op_in_ready_23 <= op_out_ready_0 when (current_phase = 23) else
'0';
op_in_ready_24 <= op_out_ready_0 when (current_phase = 24) else
'0';
op_in_ready_25 <= op_out_ready_0 when (current_phase = 25) else
'0';
op_in_ready_26 <= op_out_ready_0 when (current_phase = 26) else
'0';
op_in_ready_27 <= op_out_ready_0 when (current_phase = 27) else
'0';
op_in_ready_28 <= op_out_ready_0 when (current_phase = 28) else
'0';
op_in_ready_29 <= op_out_ready_0 when (current_phase = 29) else
'0';
op_in_ready_30 <= op_out_ready_0 when (current_phase = 30) else
'0';
op_in_ready_31 <= op_out_ready_0 when (current_phase = 31) else
'0';
op_in_ready_32 <= op_out_ready_0 when (current_phase = 32) else
'0';
op_in_ready_33 <= op_out_ready_0 when (current_phase = 33) else
'0';
op_in_ready_34 <= op_out_ready_0 when (current_phase = 34) else
'0';
op_in_ready_35 <= op_out_ready_0 when (current_phase = 35) else
'0';
op_in_ready_36 <= op_out_ready_0 when (current_phase = 36) else
'0';
op_in_ready_37 <= op_out_ready_0 when (current_phase = 37) else
'0';
op_in_ready_38 <= op_out_ready_0 when (current_phase = 38) else
'0';
op_in_ready_39 <= op_out_ready_0 when (current_phase = 39) else
'0';
op_in_ready_40 <= op_out_ready_0 when (current_phase = 40) else
'0';
op_in_ready_41 <= op_out_ready_0 when (current_phase = 41) else
'0';
op_in_ready_42 <= op_out_ready_0 when (current_phase = 42) else
'0';
op_in_ready_43 <= op_out_ready_0 when (current_phase = 43) else
'0';
op_in_ready_44 <= op_out_ready_0 when (current_phase = 44) else
'0';
op_in_ready_45 <= op_out_ready_0 when (current_phase = 45) else
'0';
op_in_ready_46 <= op_out_ready_0 when (current_phase = 46) else
'0';
op_in_ready_47 <= op_out_ready_0 when (current_phase = 47) else
'0';
op_in_ready_48 <= op_out_ready_0 when (current_phase = 48) else
'0';
op_in_ready_49 <= op_out_ready_0 when (current_phase = 49) else
'0';
op_in_ready_50 <= op_out_ready_0 when (current_phase = 50) else
'0';
op_in_ready_51 <= op_out_ready_0 when (current_phase = 51) else
'0';
op_in_ready_52 <= op_out_ready_0 when (current_phase = 52) else
'0';
op_in_ready_53 <= op_out_ready_0 when (current_phase = 53) else
'0';
op_in_ready_54 <= op_out_ready_0 when (current_phase = 54) else
'0';
op_in_ready_55 <= op_out_ready_0 when (current_phase = 55) else
'0';


end Behavioral;
