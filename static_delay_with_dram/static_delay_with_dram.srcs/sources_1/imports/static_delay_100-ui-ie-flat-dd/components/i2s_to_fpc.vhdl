library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity i2s_to_fpc is
  port ( clk : in std_logic;
         rst : in std_logic;

         op_in_ready_0 : out std_logic;
         op_in_valid_0 : in std_logic;
         op_in_data_0  : in std_logic_vector(23 downto 0) := (others => '0'); -- TODO make variable

         op_out_ready_0  : in std_logic;
         op_out_valid_0  : out std_logic;
         op_out_data_0   : out std_logic_vector(33 downto 0) := (others => '0') );
end i2s_to_fpc;

architecture Behavioral of i2s_to_fpc is
  constant operator_lifespan : integer := 2;
  constant fp_bit_width : integer := 34;
  constant i2s_bit_width : integer := 24;
    -- lower-level component declaration;
component hs_merger_one is
  generic (bit_width : integer);
  port ( clk        : in std_logic;
         reset      : in std_logic;
         in_ready_0 : out std_logic;
         in_valid_0 : in std_logic;
         in_data_0  : in std_logic_vector (bit_width-1 downto 0);
         out_ready  : in std_logic; -- output data is sent together so they share ready and valid signals
         out_valid  : out std_logic;
         out_data   : out std_logic_vector (bit_width-1 downto 0) );
end component;

  component countdown is
    generic ( operator_lifespan : integer := operator_lifespan);
    port ( clk           : in std_logic;
           reset         : in std_logic;
           in_ready      : out std_logic;
           in_valid      : in std_logic;
           can_store     : in std_logic;
           count         : out integer := operator_lifespan; -- just for debugging
           trigger_store : out std_logic := '0' );
  end component;

  component store_send is
    generic ( data_bit_width : integer);
    Port ( clk           : in std_logic;
           reset         : in std_logic;
           trigger_store : in std_logic;
           in_data       : in std_logic_vector (data_bit_width-1 downto 0);
           out_ready     : in std_logic;
           out_valid     : out std_logic;
           out_data      : out std_logic_vector (data_bit_width-1 downto 0);
           can_store     : out std_logic );
  end component;

  component fix2fp_and_scaledown is
    generic (
        i2s_bit_width : natural := 24;
        fp_bit_width : natural := 34;
        bit_depth : natural := 2;
        scale_factor : std_logic_vector(33 downto 0) := "0100110100000000000000000000000001"); -- 1 / (2^23 - 1)
    port (
        clk : in std_logic;
        rst : in std_logic;
        i2s_in : in std_logic_vector(i2s_bit_width - 1 downto 0) := (others => '0');
        fp_out : out std_logic_vector(fp_bit_width - 1 downto 0) := (others => '0'));
  end component;

    -- internal signals
  signal dly_in_ready, dly_in_valid, dly_trigger_store,
    ss_can_store : std_logic;
  signal hsm_out_data0 : std_logic_vector (i2s_bit_width-1 downto 0);
  signal flopoco_out_result : std_logic_vector (fp_bit_width-1 downto 0);

begin

  hsm: hs_merger_one
    generic map ( bit_width => i2s_bit_width )
    port map ( clk        => clk,
               reset      => rst,
               in_ready_0 => op_in_ready_0,
               in_valid_0 => op_in_valid_0,
               in_data_0  => op_in_data_0,
               out_ready  => dly_in_ready,
               out_valid  => dly_in_valid,
               out_data => hsm_out_data0);

  dly: countdown port map ( clk           => clk,
                        reset         => rst,
                        in_ready      => dly_in_ready,
                        in_valid      => dly_in_valid,
                        can_store     => ss_can_store,
                        trigger_store => dly_trigger_store );

  ss: store_send
    generic map ( data_bit_width => fp_bit_width )
    port map ( clk           => clk,
               trigger_store => dly_trigger_store,
               out_ready     => op_out_ready_0,
               in_data       => flopoco_out_result,
               out_valid     => op_out_valid_0,
               out_data      => op_out_data_0,
               can_store     => ss_can_store,
               reset         => rst );

  in_audio : fix2fp_and_scaledown
    port map ( clk => clk,
               rst => rst,
               i2s_in => hsm_out_data0,
               fp_out => flopoco_out_result );

end Behavioral;
