library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1_tb is
end mux_4to1_tb;

architecture mux_4to1_tb_df of mux_4to1_tb is
  component mux_4to1
    port (x1, x2, x3, x4, s0, s1 : in std_logic;
      y : out std_logic);
  end component;

  signal a, b, c, d, s0, s1 : std_logic;
  
  begin
    UUT : mux_4to1 port map(a, b, c, d, s0, s1);

    a <= '0', '1' after 400 ps;
    b <= '0', '1' after 200 ps, '0' after 400 ps, '1' after 600 ps;
    c <= '0', '1' after 100 ps, '0' after 200 ps, '1' after 300 ps, '0' after 400 ps, '1' after 500 ps, '0' after 600 ps, '1' after 700 ps;
    d <= '0', '1' after 50 ps, '0' after 100 ps, '1' after 150 ps, '0' after 200 ps, '1' after 250 ps, '0' after 300 ps, '1' after 350 ps, '0' after 400 ps, '1' after 450 ps, '0' after 500 ps, '1' after 550 ps, '0' after 600 ps, '1' after 650 ps, '0' after 700 ps, '1' after 750 ps, '1' after 800 ps;

    s1 <= '0', '1' after 400 ps;
    s0 <= '0', '1' after 200 ps, '0' after 400 ps, '1' after 600 ps;

end mux_4to1_tb_df;
