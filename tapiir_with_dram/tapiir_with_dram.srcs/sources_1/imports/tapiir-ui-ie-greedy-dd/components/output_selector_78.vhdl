-- Takes in two inputs, sending to output at the
-- same time. Will store input if they don't arrive at the same time; will only
-- output once both inputs are provided.
library ieee;
use ieee.std_logic_1164.all;

entity output_selector_78 is
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
    op_out_data_10 : out std_logic_vector(33 downto 0);
    op_out_data_11 : out std_logic_vector(33 downto 0);
    op_out_data_12 : out std_logic_vector(33 downto 0);
    op_out_data_13 : out std_logic_vector(33 downto 0);
    op_out_data_14 : out std_logic_vector(33 downto 0);
    op_out_data_15 : out std_logic_vector(33 downto 0);
    op_out_data_16 : out std_logic_vector(33 downto 0);
    op_out_data_17 : out std_logic_vector(33 downto 0);
    op_out_data_18 : out std_logic_vector(33 downto 0);
    op_out_data_19 : out std_logic_vector(33 downto 0);
    op_out_data_2 : out std_logic_vector(33 downto 0);
    op_out_data_20 : out std_logic_vector(33 downto 0);
    op_out_data_21 : out std_logic_vector(33 downto 0);
    op_out_data_22 : out std_logic_vector(33 downto 0);
    op_out_data_23 : out std_logic_vector(33 downto 0);
    op_out_data_24 : out std_logic_vector(33 downto 0);
    op_out_data_25 : out std_logic_vector(33 downto 0);
    op_out_data_26 : out std_logic_vector(33 downto 0);
    op_out_data_27 : out std_logic_vector(33 downto 0);
    op_out_data_28 : out std_logic_vector(33 downto 0);
    op_out_data_29 : out std_logic_vector(33 downto 0);
    op_out_data_3 : out std_logic_vector(33 downto 0);
    op_out_data_30 : out std_logic_vector(33 downto 0);
    op_out_data_31 : out std_logic_vector(33 downto 0);
    op_out_data_32 : out std_logic_vector(33 downto 0);
    op_out_data_33 : out std_logic_vector(33 downto 0);
    op_out_data_34 : out std_logic_vector(33 downto 0);
    op_out_data_35 : out std_logic_vector(33 downto 0);
    op_out_data_36 : out std_logic_vector(33 downto 0);
    op_out_data_37 : out std_logic_vector(33 downto 0);
    op_out_data_38 : out std_logic_vector(33 downto 0);
    op_out_data_39 : out std_logic_vector(33 downto 0);
    op_out_data_4 : out std_logic_vector(33 downto 0);
    op_out_data_40 : out std_logic_vector(33 downto 0);
    op_out_data_41 : out std_logic_vector(33 downto 0);
    op_out_data_42 : out std_logic_vector(33 downto 0);
    op_out_data_43 : out std_logic_vector(33 downto 0);
    op_out_data_44 : out std_logic_vector(33 downto 0);
    op_out_data_45 : out std_logic_vector(33 downto 0);
    op_out_data_46 : out std_logic_vector(33 downto 0);
    op_out_data_47 : out std_logic_vector(33 downto 0);
    op_out_data_48 : out std_logic_vector(33 downto 0);
    op_out_data_49 : out std_logic_vector(33 downto 0);
    op_out_data_5 : out std_logic_vector(33 downto 0);
    op_out_data_50 : out std_logic_vector(33 downto 0);
    op_out_data_51 : out std_logic_vector(33 downto 0);
    op_out_data_52 : out std_logic_vector(33 downto 0);
    op_out_data_53 : out std_logic_vector(33 downto 0);
    op_out_data_54 : out std_logic_vector(33 downto 0);
    op_out_data_55 : out std_logic_vector(33 downto 0);
    op_out_data_56 : out std_logic_vector(33 downto 0);
    op_out_data_57 : out std_logic_vector(33 downto 0);
    op_out_data_58 : out std_logic_vector(33 downto 0);
    op_out_data_59 : out std_logic_vector(33 downto 0);
    op_out_data_6 : out std_logic_vector(33 downto 0);
    op_out_data_60 : out std_logic_vector(33 downto 0);
    op_out_data_61 : out std_logic_vector(33 downto 0);
    op_out_data_62 : out std_logic_vector(33 downto 0);
    op_out_data_63 : out std_logic_vector(33 downto 0);
    op_out_data_64 : out std_logic_vector(33 downto 0);
    op_out_data_65 : out std_logic_vector(33 downto 0);
    op_out_data_66 : out std_logic_vector(33 downto 0);
    op_out_data_67 : out std_logic_vector(33 downto 0);
    op_out_data_68 : out std_logic_vector(33 downto 0);
    op_out_data_69 : out std_logic_vector(33 downto 0);
    op_out_data_7 : out std_logic_vector(33 downto 0);
    op_out_data_70 : out std_logic_vector(33 downto 0);
    op_out_data_71 : out std_logic_vector(33 downto 0);
    op_out_data_72 : out std_logic_vector(33 downto 0);
    op_out_data_73 : out std_logic_vector(33 downto 0);
    op_out_data_74 : out std_logic_vector(33 downto 0);
    op_out_data_75 : out std_logic_vector(33 downto 0);
    op_out_data_76 : out std_logic_vector(33 downto 0);
    op_out_data_77 : out std_logic_vector(33 downto 0);
    op_out_data_8 : out std_logic_vector(33 downto 0);
    op_out_data_9 : out std_logic_vector(33 downto 0);
    op_out_ready_0 : in std_logic;
    op_out_ready_1 : in std_logic;
    op_out_ready_10 : in std_logic;
    op_out_ready_11 : in std_logic;
    op_out_ready_12 : in std_logic;
    op_out_ready_13 : in std_logic;
    op_out_ready_14 : in std_logic;
    op_out_ready_15 : in std_logic;
    op_out_ready_16 : in std_logic;
    op_out_ready_17 : in std_logic;
    op_out_ready_18 : in std_logic;
    op_out_ready_19 : in std_logic;
    op_out_ready_2 : in std_logic;
    op_out_ready_20 : in std_logic;
    op_out_ready_21 : in std_logic;
    op_out_ready_22 : in std_logic;
    op_out_ready_23 : in std_logic;
    op_out_ready_24 : in std_logic;
    op_out_ready_25 : in std_logic;
    op_out_ready_26 : in std_logic;
    op_out_ready_27 : in std_logic;
    op_out_ready_28 : in std_logic;
    op_out_ready_29 : in std_logic;
    op_out_ready_3 : in std_logic;
    op_out_ready_30 : in std_logic;
    op_out_ready_31 : in std_logic;
    op_out_ready_32 : in std_logic;
    op_out_ready_33 : in std_logic;
    op_out_ready_34 : in std_logic;
    op_out_ready_35 : in std_logic;
    op_out_ready_36 : in std_logic;
    op_out_ready_37 : in std_logic;
    op_out_ready_38 : in std_logic;
    op_out_ready_39 : in std_logic;
    op_out_ready_4 : in std_logic;
    op_out_ready_40 : in std_logic;
    op_out_ready_41 : in std_logic;
    op_out_ready_42 : in std_logic;
    op_out_ready_43 : in std_logic;
    op_out_ready_44 : in std_logic;
    op_out_ready_45 : in std_logic;
    op_out_ready_46 : in std_logic;
    op_out_ready_47 : in std_logic;
    op_out_ready_48 : in std_logic;
    op_out_ready_49 : in std_logic;
    op_out_ready_5 : in std_logic;
    op_out_ready_50 : in std_logic;
    op_out_ready_51 : in std_logic;
    op_out_ready_52 : in std_logic;
    op_out_ready_53 : in std_logic;
    op_out_ready_54 : in std_logic;
    op_out_ready_55 : in std_logic;
    op_out_ready_56 : in std_logic;
    op_out_ready_57 : in std_logic;
    op_out_ready_58 : in std_logic;
    op_out_ready_59 : in std_logic;
    op_out_ready_6 : in std_logic;
    op_out_ready_60 : in std_logic;
    op_out_ready_61 : in std_logic;
    op_out_ready_62 : in std_logic;
    op_out_ready_63 : in std_logic;
    op_out_ready_64 : in std_logic;
    op_out_ready_65 : in std_logic;
    op_out_ready_66 : in std_logic;
    op_out_ready_67 : in std_logic;
    op_out_ready_68 : in std_logic;
    op_out_ready_69 : in std_logic;
    op_out_ready_7 : in std_logic;
    op_out_ready_70 : in std_logic;
    op_out_ready_71 : in std_logic;
    op_out_ready_72 : in std_logic;
    op_out_ready_73 : in std_logic;
    op_out_ready_74 : in std_logic;
    op_out_ready_75 : in std_logic;
    op_out_ready_76 : in std_logic;
    op_out_ready_77 : in std_logic;
    op_out_ready_8 : in std_logic;
    op_out_ready_9 : in std_logic;
    op_out_valid_0 : out std_logic;
    op_out_valid_1 : out std_logic;
    op_out_valid_10 : out std_logic;
    op_out_valid_11 : out std_logic;
    op_out_valid_12 : out std_logic;
    op_out_valid_13 : out std_logic;
    op_out_valid_14 : out std_logic;
    op_out_valid_15 : out std_logic;
    op_out_valid_16 : out std_logic;
    op_out_valid_17 : out std_logic;
    op_out_valid_18 : out std_logic;
    op_out_valid_19 : out std_logic;
    op_out_valid_2 : out std_logic;
    op_out_valid_20 : out std_logic;
    op_out_valid_21 : out std_logic;
    op_out_valid_22 : out std_logic;
    op_out_valid_23 : out std_logic;
    op_out_valid_24 : out std_logic;
    op_out_valid_25 : out std_logic;
    op_out_valid_26 : out std_logic;
    op_out_valid_27 : out std_logic;
    op_out_valid_28 : out std_logic;
    op_out_valid_29 : out std_logic;
    op_out_valid_3 : out std_logic;
    op_out_valid_30 : out std_logic;
    op_out_valid_31 : out std_logic;
    op_out_valid_32 : out std_logic;
    op_out_valid_33 : out std_logic;
    op_out_valid_34 : out std_logic;
    op_out_valid_35 : out std_logic;
    op_out_valid_36 : out std_logic;
    op_out_valid_37 : out std_logic;
    op_out_valid_38 : out std_logic;
    op_out_valid_39 : out std_logic;
    op_out_valid_4 : out std_logic;
    op_out_valid_40 : out std_logic;
    op_out_valid_41 : out std_logic;
    op_out_valid_42 : out std_logic;
    op_out_valid_43 : out std_logic;
    op_out_valid_44 : out std_logic;
    op_out_valid_45 : out std_logic;
    op_out_valid_46 : out std_logic;
    op_out_valid_47 : out std_logic;
    op_out_valid_48 : out std_logic;
    op_out_valid_49 : out std_logic;
    op_out_valid_5 : out std_logic;
    op_out_valid_50 : out std_logic;
    op_out_valid_51 : out std_logic;
    op_out_valid_52 : out std_logic;
    op_out_valid_53 : out std_logic;
    op_out_valid_54 : out std_logic;
    op_out_valid_55 : out std_logic;
    op_out_valid_56 : out std_logic;
    op_out_valid_57 : out std_logic;
    op_out_valid_58 : out std_logic;
    op_out_valid_59 : out std_logic;
    op_out_valid_6 : out std_logic;
    op_out_valid_60 : out std_logic;
    op_out_valid_61 : out std_logic;
    op_out_valid_62 : out std_logic;
    op_out_valid_63 : out std_logic;
    op_out_valid_64 : out std_logic;
    op_out_valid_65 : out std_logic;
    op_out_valid_66 : out std_logic;
    op_out_valid_67 : out std_logic;
    op_out_valid_68 : out std_logic;
    op_out_valid_69 : out std_logic;
    op_out_valid_7 : out std_logic;
    op_out_valid_70 : out std_logic;
    op_out_valid_71 : out std_logic;
    op_out_valid_72 : out std_logic;
    op_out_valid_73 : out std_logic;
    op_out_valid_74 : out std_logic;
    op_out_valid_75 : out std_logic;
    op_out_valid_76 : out std_logic;
    op_out_valid_77 : out std_logic;
    op_out_valid_8 : out std_logic;
    op_out_valid_9 : out std_logic;
    rst : in std_logic
);
end output_selector_78;


architecture Behavioral of output_selector_78 is
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
elsif (current_phase = 6) then
        if (op_in_valid_0 = '1' and op_out_ready_6 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 7) then
        if (op_in_valid_0 = '1' and op_out_ready_7 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 8) then
        if (op_in_valid_0 = '1' and op_out_ready_8 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 9) then
        if (op_in_valid_0 = '1' and op_out_ready_9 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 10) then
        if (op_in_valid_0 = '1' and op_out_ready_10 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 11) then
        if (op_in_valid_0 = '1' and op_out_ready_11 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 12) then
        if (op_in_valid_0 = '1' and op_out_ready_12 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 13) then
        if (op_in_valid_0 = '1' and op_out_ready_13 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 14) then
        if (op_in_valid_0 = '1' and op_out_ready_14 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 15) then
        if (op_in_valid_0 = '1' and op_out_ready_15 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 16) then
        if (op_in_valid_0 = '1' and op_out_ready_16 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 17) then
        if (op_in_valid_0 = '1' and op_out_ready_17 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 18) then
        if (op_in_valid_0 = '1' and op_out_ready_18 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 19) then
        if (op_in_valid_0 = '1' and op_out_ready_19 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 20) then
        if (op_in_valid_0 = '1' and op_out_ready_20 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 21) then
        if (op_in_valid_0 = '1' and op_out_ready_21 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 22) then
        if (op_in_valid_0 = '1' and op_out_ready_22 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 23) then
        if (op_in_valid_0 = '1' and op_out_ready_23 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 24) then
        if (op_in_valid_0 = '1' and op_out_ready_24 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 25) then
        if (op_in_valid_0 = '1' and op_out_ready_25 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 26) then
        if (op_in_valid_0 = '1' and op_out_ready_26 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 27) then
        if (op_in_valid_0 = '1' and op_out_ready_27 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 28) then
        if (op_in_valid_0 = '1' and op_out_ready_28 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 29) then
        if (op_in_valid_0 = '1' and op_out_ready_29 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 30) then
        if (op_in_valid_0 = '1' and op_out_ready_30 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 31) then
        if (op_in_valid_0 = '1' and op_out_ready_31 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 32) then
        if (op_in_valid_0 = '1' and op_out_ready_32 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 33) then
        if (op_in_valid_0 = '1' and op_out_ready_33 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 34) then
        if (op_in_valid_0 = '1' and op_out_ready_34 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 35) then
        if (op_in_valid_0 = '1' and op_out_ready_35 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 36) then
        if (op_in_valid_0 = '1' and op_out_ready_36 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 37) then
        if (op_in_valid_0 = '1' and op_out_ready_37 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 38) then
        if (op_in_valid_0 = '1' and op_out_ready_38 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 39) then
        if (op_in_valid_0 = '1' and op_out_ready_39 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 40) then
        if (op_in_valid_0 = '1' and op_out_ready_40 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 41) then
        if (op_in_valid_0 = '1' and op_out_ready_41 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 42) then
        if (op_in_valid_0 = '1' and op_out_ready_42 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 43) then
        if (op_in_valid_0 = '1' and op_out_ready_43 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 44) then
        if (op_in_valid_0 = '1' and op_out_ready_44 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 45) then
        if (op_in_valid_0 = '1' and op_out_ready_45 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 46) then
        if (op_in_valid_0 = '1' and op_out_ready_46 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 47) then
        if (op_in_valid_0 = '1' and op_out_ready_47 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 48) then
        if (op_in_valid_0 = '1' and op_out_ready_48 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 49) then
        if (op_in_valid_0 = '1' and op_out_ready_49 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 50) then
        if (op_in_valid_0 = '1' and op_out_ready_50 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 51) then
        if (op_in_valid_0 = '1' and op_out_ready_51 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 52) then
        if (op_in_valid_0 = '1' and op_out_ready_52 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 53) then
        if (op_in_valid_0 = '1' and op_out_ready_53 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 54) then
        if (op_in_valid_0 = '1' and op_out_ready_54 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 55) then
        if (op_in_valid_0 = '1' and op_out_ready_55 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 56) then
        if (op_in_valid_0 = '1' and op_out_ready_56 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 57) then
        if (op_in_valid_0 = '1' and op_out_ready_57 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 58) then
        if (op_in_valid_0 = '1' and op_out_ready_58 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 59) then
        if (op_in_valid_0 = '1' and op_out_ready_59 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 60) then
        if (op_in_valid_0 = '1' and op_out_ready_60 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 61) then
        if (op_in_valid_0 = '1' and op_out_ready_61 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 62) then
        if (op_in_valid_0 = '1' and op_out_ready_62 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 63) then
        if (op_in_valid_0 = '1' and op_out_ready_63 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 64) then
        if (op_in_valid_0 = '1' and op_out_ready_64 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 65) then
        if (op_in_valid_0 = '1' and op_out_ready_65 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 66) then
        if (op_in_valid_0 = '1' and op_out_ready_66 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 67) then
        if (op_in_valid_0 = '1' and op_out_ready_67 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 68) then
        if (op_in_valid_0 = '1' and op_out_ready_68 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 69) then
        if (op_in_valid_0 = '1' and op_out_ready_69 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 70) then
        if (op_in_valid_0 = '1' and op_out_ready_70 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 71) then
        if (op_in_valid_0 = '1' and op_out_ready_71 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 72) then
        if (op_in_valid_0 = '1' and op_out_ready_72 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 73) then
        if (op_in_valid_0 = '1' and op_out_ready_73 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 74) then
        if (op_in_valid_0 = '1' and op_out_ready_74 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 75) then
        if (op_in_valid_0 = '1' and op_out_ready_75 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 76) then
        if (op_in_valid_0 = '1' and op_out_ready_76 = '1') then
            next_phase <= (current_phase + 1) mod num_phases;
        end if;
elsif (current_phase = 77) then
        if (op_in_valid_0 = '1' and op_out_ready_77 = '1') then
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
op_out_valid_6 <= op_in_valid_0 when (current_phase = 6) else
'0';
op_out_valid_7 <= op_in_valid_0 when (current_phase = 7) else
'0';
op_out_valid_8 <= op_in_valid_0 when (current_phase = 8) else
'0';
op_out_valid_9 <= op_in_valid_0 when (current_phase = 9) else
'0';
op_out_valid_10 <= op_in_valid_0 when (current_phase = 10) else
'0';
op_out_valid_11 <= op_in_valid_0 when (current_phase = 11) else
'0';
op_out_valid_12 <= op_in_valid_0 when (current_phase = 12) else
'0';
op_out_valid_13 <= op_in_valid_0 when (current_phase = 13) else
'0';
op_out_valid_14 <= op_in_valid_0 when (current_phase = 14) else
'0';
op_out_valid_15 <= op_in_valid_0 when (current_phase = 15) else
'0';
op_out_valid_16 <= op_in_valid_0 when (current_phase = 16) else
'0';
op_out_valid_17 <= op_in_valid_0 when (current_phase = 17) else
'0';
op_out_valid_18 <= op_in_valid_0 when (current_phase = 18) else
'0';
op_out_valid_19 <= op_in_valid_0 when (current_phase = 19) else
'0';
op_out_valid_20 <= op_in_valid_0 when (current_phase = 20) else
'0';
op_out_valid_21 <= op_in_valid_0 when (current_phase = 21) else
'0';
op_out_valid_22 <= op_in_valid_0 when (current_phase = 22) else
'0';
op_out_valid_23 <= op_in_valid_0 when (current_phase = 23) else
'0';
op_out_valid_24 <= op_in_valid_0 when (current_phase = 24) else
'0';
op_out_valid_25 <= op_in_valid_0 when (current_phase = 25) else
'0';
op_out_valid_26 <= op_in_valid_0 when (current_phase = 26) else
'0';
op_out_valid_27 <= op_in_valid_0 when (current_phase = 27) else
'0';
op_out_valid_28 <= op_in_valid_0 when (current_phase = 28) else
'0';
op_out_valid_29 <= op_in_valid_0 when (current_phase = 29) else
'0';
op_out_valid_30 <= op_in_valid_0 when (current_phase = 30) else
'0';
op_out_valid_31 <= op_in_valid_0 when (current_phase = 31) else
'0';
op_out_valid_32 <= op_in_valid_0 when (current_phase = 32) else
'0';
op_out_valid_33 <= op_in_valid_0 when (current_phase = 33) else
'0';
op_out_valid_34 <= op_in_valid_0 when (current_phase = 34) else
'0';
op_out_valid_35 <= op_in_valid_0 when (current_phase = 35) else
'0';
op_out_valid_36 <= op_in_valid_0 when (current_phase = 36) else
'0';
op_out_valid_37 <= op_in_valid_0 when (current_phase = 37) else
'0';
op_out_valid_38 <= op_in_valid_0 when (current_phase = 38) else
'0';
op_out_valid_39 <= op_in_valid_0 when (current_phase = 39) else
'0';
op_out_valid_40 <= op_in_valid_0 when (current_phase = 40) else
'0';
op_out_valid_41 <= op_in_valid_0 when (current_phase = 41) else
'0';
op_out_valid_42 <= op_in_valid_0 when (current_phase = 42) else
'0';
op_out_valid_43 <= op_in_valid_0 when (current_phase = 43) else
'0';
op_out_valid_44 <= op_in_valid_0 when (current_phase = 44) else
'0';
op_out_valid_45 <= op_in_valid_0 when (current_phase = 45) else
'0';
op_out_valid_46 <= op_in_valid_0 when (current_phase = 46) else
'0';
op_out_valid_47 <= op_in_valid_0 when (current_phase = 47) else
'0';
op_out_valid_48 <= op_in_valid_0 when (current_phase = 48) else
'0';
op_out_valid_49 <= op_in_valid_0 when (current_phase = 49) else
'0';
op_out_valid_50 <= op_in_valid_0 when (current_phase = 50) else
'0';
op_out_valid_51 <= op_in_valid_0 when (current_phase = 51) else
'0';
op_out_valid_52 <= op_in_valid_0 when (current_phase = 52) else
'0';
op_out_valid_53 <= op_in_valid_0 when (current_phase = 53) else
'0';
op_out_valid_54 <= op_in_valid_0 when (current_phase = 54) else
'0';
op_out_valid_55 <= op_in_valid_0 when (current_phase = 55) else
'0';
op_out_valid_56 <= op_in_valid_0 when (current_phase = 56) else
'0';
op_out_valid_57 <= op_in_valid_0 when (current_phase = 57) else
'0';
op_out_valid_58 <= op_in_valid_0 when (current_phase = 58) else
'0';
op_out_valid_59 <= op_in_valid_0 when (current_phase = 59) else
'0';
op_out_valid_60 <= op_in_valid_0 when (current_phase = 60) else
'0';
op_out_valid_61 <= op_in_valid_0 when (current_phase = 61) else
'0';
op_out_valid_62 <= op_in_valid_0 when (current_phase = 62) else
'0';
op_out_valid_63 <= op_in_valid_0 when (current_phase = 63) else
'0';
op_out_valid_64 <= op_in_valid_0 when (current_phase = 64) else
'0';
op_out_valid_65 <= op_in_valid_0 when (current_phase = 65) else
'0';
op_out_valid_66 <= op_in_valid_0 when (current_phase = 66) else
'0';
op_out_valid_67 <= op_in_valid_0 when (current_phase = 67) else
'0';
op_out_valid_68 <= op_in_valid_0 when (current_phase = 68) else
'0';
op_out_valid_69 <= op_in_valid_0 when (current_phase = 69) else
'0';
op_out_valid_70 <= op_in_valid_0 when (current_phase = 70) else
'0';
op_out_valid_71 <= op_in_valid_0 when (current_phase = 71) else
'0';
op_out_valid_72 <= op_in_valid_0 when (current_phase = 72) else
'0';
op_out_valid_73 <= op_in_valid_0 when (current_phase = 73) else
'0';
op_out_valid_74 <= op_in_valid_0 when (current_phase = 74) else
'0';
op_out_valid_75 <= op_in_valid_0 when (current_phase = 75) else
'0';
op_out_valid_76 <= op_in_valid_0 when (current_phase = 76) else
'0';
op_out_valid_77 <= op_in_valid_0 when (current_phase = 77) else
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
op_out_data_6 <= op_in_data_0 when (current_phase = 6) else
"0000000000000000000000000000000000";
op_out_data_7 <= op_in_data_0 when (current_phase = 7) else
"0000000000000000000000000000000000";
op_out_data_8 <= op_in_data_0 when (current_phase = 8) else
"0000000000000000000000000000000000";
op_out_data_9 <= op_in_data_0 when (current_phase = 9) else
"0000000000000000000000000000000000";
op_out_data_10 <= op_in_data_0 when (current_phase = 10) else
"0000000000000000000000000000000000";
op_out_data_11 <= op_in_data_0 when (current_phase = 11) else
"0000000000000000000000000000000000";
op_out_data_12 <= op_in_data_0 when (current_phase = 12) else
"0000000000000000000000000000000000";
op_out_data_13 <= op_in_data_0 when (current_phase = 13) else
"0000000000000000000000000000000000";
op_out_data_14 <= op_in_data_0 when (current_phase = 14) else
"0000000000000000000000000000000000";
op_out_data_15 <= op_in_data_0 when (current_phase = 15) else
"0000000000000000000000000000000000";
op_out_data_16 <= op_in_data_0 when (current_phase = 16) else
"0000000000000000000000000000000000";
op_out_data_17 <= op_in_data_0 when (current_phase = 17) else
"0000000000000000000000000000000000";
op_out_data_18 <= op_in_data_0 when (current_phase = 18) else
"0000000000000000000000000000000000";
op_out_data_19 <= op_in_data_0 when (current_phase = 19) else
"0000000000000000000000000000000000";
op_out_data_20 <= op_in_data_0 when (current_phase = 20) else
"0000000000000000000000000000000000";
op_out_data_21 <= op_in_data_0 when (current_phase = 21) else
"0000000000000000000000000000000000";
op_out_data_22 <= op_in_data_0 when (current_phase = 22) else
"0000000000000000000000000000000000";
op_out_data_23 <= op_in_data_0 when (current_phase = 23) else
"0000000000000000000000000000000000";
op_out_data_24 <= op_in_data_0 when (current_phase = 24) else
"0000000000000000000000000000000000";
op_out_data_25 <= op_in_data_0 when (current_phase = 25) else
"0000000000000000000000000000000000";
op_out_data_26 <= op_in_data_0 when (current_phase = 26) else
"0000000000000000000000000000000000";
op_out_data_27 <= op_in_data_0 when (current_phase = 27) else
"0000000000000000000000000000000000";
op_out_data_28 <= op_in_data_0 when (current_phase = 28) else
"0000000000000000000000000000000000";
op_out_data_29 <= op_in_data_0 when (current_phase = 29) else
"0000000000000000000000000000000000";
op_out_data_30 <= op_in_data_0 when (current_phase = 30) else
"0000000000000000000000000000000000";
op_out_data_31 <= op_in_data_0 when (current_phase = 31) else
"0000000000000000000000000000000000";
op_out_data_32 <= op_in_data_0 when (current_phase = 32) else
"0000000000000000000000000000000000";
op_out_data_33 <= op_in_data_0 when (current_phase = 33) else
"0000000000000000000000000000000000";
op_out_data_34 <= op_in_data_0 when (current_phase = 34) else
"0000000000000000000000000000000000";
op_out_data_35 <= op_in_data_0 when (current_phase = 35) else
"0000000000000000000000000000000000";
op_out_data_36 <= op_in_data_0 when (current_phase = 36) else
"0000000000000000000000000000000000";
op_out_data_37 <= op_in_data_0 when (current_phase = 37) else
"0000000000000000000000000000000000";
op_out_data_38 <= op_in_data_0 when (current_phase = 38) else
"0000000000000000000000000000000000";
op_out_data_39 <= op_in_data_0 when (current_phase = 39) else
"0000000000000000000000000000000000";
op_out_data_40 <= op_in_data_0 when (current_phase = 40) else
"0000000000000000000000000000000000";
op_out_data_41 <= op_in_data_0 when (current_phase = 41) else
"0000000000000000000000000000000000";
op_out_data_42 <= op_in_data_0 when (current_phase = 42) else
"0000000000000000000000000000000000";
op_out_data_43 <= op_in_data_0 when (current_phase = 43) else
"0000000000000000000000000000000000";
op_out_data_44 <= op_in_data_0 when (current_phase = 44) else
"0000000000000000000000000000000000";
op_out_data_45 <= op_in_data_0 when (current_phase = 45) else
"0000000000000000000000000000000000";
op_out_data_46 <= op_in_data_0 when (current_phase = 46) else
"0000000000000000000000000000000000";
op_out_data_47 <= op_in_data_0 when (current_phase = 47) else
"0000000000000000000000000000000000";
op_out_data_48 <= op_in_data_0 when (current_phase = 48) else
"0000000000000000000000000000000000";
op_out_data_49 <= op_in_data_0 when (current_phase = 49) else
"0000000000000000000000000000000000";
op_out_data_50 <= op_in_data_0 when (current_phase = 50) else
"0000000000000000000000000000000000";
op_out_data_51 <= op_in_data_0 when (current_phase = 51) else
"0000000000000000000000000000000000";
op_out_data_52 <= op_in_data_0 when (current_phase = 52) else
"0000000000000000000000000000000000";
op_out_data_53 <= op_in_data_0 when (current_phase = 53) else
"0000000000000000000000000000000000";
op_out_data_54 <= op_in_data_0 when (current_phase = 54) else
"0000000000000000000000000000000000";
op_out_data_55 <= op_in_data_0 when (current_phase = 55) else
"0000000000000000000000000000000000";
op_out_data_56 <= op_in_data_0 when (current_phase = 56) else
"0000000000000000000000000000000000";
op_out_data_57 <= op_in_data_0 when (current_phase = 57) else
"0000000000000000000000000000000000";
op_out_data_58 <= op_in_data_0 when (current_phase = 58) else
"0000000000000000000000000000000000";
op_out_data_59 <= op_in_data_0 when (current_phase = 59) else
"0000000000000000000000000000000000";
op_out_data_60 <= op_in_data_0 when (current_phase = 60) else
"0000000000000000000000000000000000";
op_out_data_61 <= op_in_data_0 when (current_phase = 61) else
"0000000000000000000000000000000000";
op_out_data_62 <= op_in_data_0 when (current_phase = 62) else
"0000000000000000000000000000000000";
op_out_data_63 <= op_in_data_0 when (current_phase = 63) else
"0000000000000000000000000000000000";
op_out_data_64 <= op_in_data_0 when (current_phase = 64) else
"0000000000000000000000000000000000";
op_out_data_65 <= op_in_data_0 when (current_phase = 65) else
"0000000000000000000000000000000000";
op_out_data_66 <= op_in_data_0 when (current_phase = 66) else
"0000000000000000000000000000000000";
op_out_data_67 <= op_in_data_0 when (current_phase = 67) else
"0000000000000000000000000000000000";
op_out_data_68 <= op_in_data_0 when (current_phase = 68) else
"0000000000000000000000000000000000";
op_out_data_69 <= op_in_data_0 when (current_phase = 69) else
"0000000000000000000000000000000000";
op_out_data_70 <= op_in_data_0 when (current_phase = 70) else
"0000000000000000000000000000000000";
op_out_data_71 <= op_in_data_0 when (current_phase = 71) else
"0000000000000000000000000000000000";
op_out_data_72 <= op_in_data_0 when (current_phase = 72) else
"0000000000000000000000000000000000";
op_out_data_73 <= op_in_data_0 when (current_phase = 73) else
"0000000000000000000000000000000000";
op_out_data_74 <= op_in_data_0 when (current_phase = 74) else
"0000000000000000000000000000000000";
op_out_data_75 <= op_in_data_0 when (current_phase = 75) else
"0000000000000000000000000000000000";
op_out_data_76 <= op_in_data_0 when (current_phase = 76) else
"0000000000000000000000000000000000";
op_out_data_77 <= op_in_data_0 when (current_phase = 77) else
"0000000000000000000000000000000000";

  op_in_ready_0 <= op_out_ready_0 when (current_phase = 0) else
op_out_ready_1 when (current_phase = 1) else
op_out_ready_2 when (current_phase = 2) else
op_out_ready_3 when (current_phase = 3) else
op_out_ready_4 when (current_phase = 4) else
op_out_ready_5 when (current_phase = 5) else
op_out_ready_6 when (current_phase = 6) else
op_out_ready_7 when (current_phase = 7) else
op_out_ready_8 when (current_phase = 8) else
op_out_ready_9 when (current_phase = 9) else
op_out_ready_10 when (current_phase = 10) else
op_out_ready_11 when (current_phase = 11) else
op_out_ready_12 when (current_phase = 12) else
op_out_ready_13 when (current_phase = 13) else
op_out_ready_14 when (current_phase = 14) else
op_out_ready_15 when (current_phase = 15) else
op_out_ready_16 when (current_phase = 16) else
op_out_ready_17 when (current_phase = 17) else
op_out_ready_18 when (current_phase = 18) else
op_out_ready_19 when (current_phase = 19) else
op_out_ready_20 when (current_phase = 20) else
op_out_ready_21 when (current_phase = 21) else
op_out_ready_22 when (current_phase = 22) else
op_out_ready_23 when (current_phase = 23) else
op_out_ready_24 when (current_phase = 24) else
op_out_ready_25 when (current_phase = 25) else
op_out_ready_26 when (current_phase = 26) else
op_out_ready_27 when (current_phase = 27) else
op_out_ready_28 when (current_phase = 28) else
op_out_ready_29 when (current_phase = 29) else
op_out_ready_30 when (current_phase = 30) else
op_out_ready_31 when (current_phase = 31) else
op_out_ready_32 when (current_phase = 32) else
op_out_ready_33 when (current_phase = 33) else
op_out_ready_34 when (current_phase = 34) else
op_out_ready_35 when (current_phase = 35) else
op_out_ready_36 when (current_phase = 36) else
op_out_ready_37 when (current_phase = 37) else
op_out_ready_38 when (current_phase = 38) else
op_out_ready_39 when (current_phase = 39) else
op_out_ready_40 when (current_phase = 40) else
op_out_ready_41 when (current_phase = 41) else
op_out_ready_42 when (current_phase = 42) else
op_out_ready_43 when (current_phase = 43) else
op_out_ready_44 when (current_phase = 44) else
op_out_ready_45 when (current_phase = 45) else
op_out_ready_46 when (current_phase = 46) else
op_out_ready_47 when (current_phase = 47) else
op_out_ready_48 when (current_phase = 48) else
op_out_ready_49 when (current_phase = 49) else
op_out_ready_50 when (current_phase = 50) else
op_out_ready_51 when (current_phase = 51) else
op_out_ready_52 when (current_phase = 52) else
op_out_ready_53 when (current_phase = 53) else
op_out_ready_54 when (current_phase = 54) else
op_out_ready_55 when (current_phase = 55) else
op_out_ready_56 when (current_phase = 56) else
op_out_ready_57 when (current_phase = 57) else
op_out_ready_58 when (current_phase = 58) else
op_out_ready_59 when (current_phase = 59) else
op_out_ready_60 when (current_phase = 60) else
op_out_ready_61 when (current_phase = 61) else
op_out_ready_62 when (current_phase = 62) else
op_out_ready_63 when (current_phase = 63) else
op_out_ready_64 when (current_phase = 64) else
op_out_ready_65 when (current_phase = 65) else
op_out_ready_66 when (current_phase = 66) else
op_out_ready_67 when (current_phase = 67) else
op_out_ready_68 when (current_phase = 68) else
op_out_ready_69 when (current_phase = 69) else
op_out_ready_70 when (current_phase = 70) else
op_out_ready_71 when (current_phase = 71) else
op_out_ready_72 when (current_phase = 72) else
op_out_ready_73 when (current_phase = 73) else
op_out_ready_74 when (current_phase = 74) else
op_out_ready_75 when (current_phase = 75) else
op_out_ready_76 when (current_phase = 76) else
op_out_ready_77 when (current_phase = 77) else
'0';


end Behavioral;
