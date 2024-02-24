---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity dff is
  port (data, clk, rst: in std_logic;
        q, qbar : out std_logic);
end dff;

architecture dff_struct of dff is
  component nand_gate
    port(i1, i2 : in std_logic;
         o : out std_logic);
  end component;

  signal a1, a2, a3, a4, a5, a6, temp1, temp2, temp3, temp4, not_rst : std_logic ;

begin
  not_rst <= not rst;
  nand1 : nand_gate port map (a1, clk, a2);
  nand2 : nand_gate port map (clk, a2, temp1);
  nand3 : nand_gate port map (temp1, temp1, temp2);
  nand4 : nand_gate port map (data, a3, a4);
  nand5 : nand_gate port map (temp2, a4, a3);
  nand6 : nand_gate port map (a4, a2, a1);
  nand7 : nand_gate port map (a2, a6, a5);
  nand8 : nand_gate port map (a3, a5, temp3);
  nand9 : nand_gate port map (temp3, temp3, temp4);
  nand10 : nand_gate port map (temp4, not_rst, a6);

  q <= '0' when rst = '1' else a5;
  qbar <= a6;

end dff_struct;
