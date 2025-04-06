--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_ade2_wrapper.bd
--Design : bd_ade2_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_ade2_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
end bd_ade2_wrapper;

architecture STRUCTURE of bd_ade2_wrapper is
  component bd_ade2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component bd_ade2;
begin
bd_ade2_i: component bd_ade2
     port map (
      clk => clk,
      probe0(12 downto 0) => probe0(12 downto 0),
      probe1(12 downto 0) => probe1(12 downto 0),
      probe10(12 downto 0) => probe10(12 downto 0),
      probe11(12 downto 0) => probe11(12 downto 0),
      probe12(12 downto 0) => probe12(12 downto 0),
      probe13(12 downto 0) => probe13(12 downto 0),
      probe14(12 downto 0) => probe14(12 downto 0),
      probe15(12 downto 0) => probe15(12 downto 0),
      probe16(12 downto 0) => probe16(12 downto 0),
      probe17(12 downto 0) => probe17(12 downto 0),
      probe18(12 downto 0) => probe18(12 downto 0),
      probe19(12 downto 0) => probe19(12 downto 0),
      probe2(12 downto 0) => probe2(12 downto 0),
      probe20(12 downto 0) => probe20(12 downto 0),
      probe21(12 downto 0) => probe21(12 downto 0),
      probe22(12 downto 0) => probe22(12 downto 0),
      probe23(12 downto 0) => probe23(12 downto 0),
      probe24(12 downto 0) => probe24(12 downto 0),
      probe25(12 downto 0) => probe25(12 downto 0),
      probe26(12 downto 0) => probe26(12 downto 0),
      probe27(12 downto 0) => probe27(12 downto 0),
      probe28(12 downto 0) => probe28(12 downto 0),
      probe29(12 downto 0) => probe29(12 downto 0),
      probe3(12 downto 0) => probe3(12 downto 0),
      probe30(12 downto 0) => probe30(12 downto 0),
      probe31(12 downto 0) => probe31(12 downto 0),
      probe32(12 downto 0) => probe32(12 downto 0),
      probe33(12 downto 0) => probe33(12 downto 0),
      probe34(12 downto 0) => probe34(12 downto 0),
      probe35(12 downto 0) => probe35(12 downto 0),
      probe36(12 downto 0) => probe36(12 downto 0),
      probe37(12 downto 0) => probe37(12 downto 0),
      probe38(12 downto 0) => probe38(12 downto 0),
      probe39(12 downto 0) => probe39(12 downto 0),
      probe4(12 downto 0) => probe4(12 downto 0),
      probe40(12 downto 0) => probe40(12 downto 0),
      probe41(12 downto 0) => probe41(12 downto 0),
      probe42(12 downto 0) => probe42(12 downto 0),
      probe43(12 downto 0) => probe43(12 downto 0),
      probe44(12 downto 0) => probe44(12 downto 0),
      probe45(12 downto 0) => probe45(12 downto 0),
      probe46(12 downto 0) => probe46(12 downto 0),
      probe47(12 downto 0) => probe47(12 downto 0),
      probe5(12 downto 0) => probe5(12 downto 0),
      probe6(12 downto 0) => probe6(12 downto 0),
      probe7(12 downto 0) => probe7(12 downto 0),
      probe8(12 downto 0) => probe8(12 downto 0),
      probe9(12 downto 0) => probe9(12 downto 0)
    );
end STRUCTURE;
