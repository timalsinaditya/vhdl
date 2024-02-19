library ieee;
use ieee.std_logic_1164.all;

entity mux_2to1_tb is 
end mux_2to1_tb;

architecture mux_2to1_test of mux_2to1_tb is

component mux_2to1  
    port(x1, x2, s : in std_logic;
        y: out std_logic);
end component;

    signal a, b, c : std_logic;
begin
    UUT: mux_2to1 port map (x1=>a, x2=>b, s=>c);
     
    Stimulus_process : process
      begin
          a <= '0','1' after 400 ps;
          b <= '0','1' after 200 ps, '0' after 400 ps, '1' after 600 ps;
          c <= '0', '1' after 100 ps, '0' after 200 ps, '1' after 300 ps, '0' after 400 ps, '1' after 500 ps, '0' after 600 ps, '1' after 700 ps;

          wait for 800 ps;
wait;
    end process;
end mux_2to1_test;
