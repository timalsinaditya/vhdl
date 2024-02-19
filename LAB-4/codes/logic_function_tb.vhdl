library ieee;
use ieee.std_logic_1164.all;

entity logic_function_tb is 
end logic_function_tb;

architecture logic_function_test of logic_function_tb is
    component logic_function is 
        port(x1, x2, x3 : in std_logic;
            f : out std_logic);
    end component;

    signal a, b, c : std_logic;

begin
    UUT: logic_function port map (x1=>c, x2=>b, x3=>a);
     
    Stimulus_process : process
      begin
          a <= '0','1' after 400 ps;
          b <= '0','1' after 200 ps, '0' after 400 ps, '1' after 600 ps;
          c <= '0', '1' after 100 ps, '0' after 200 ps, '1' after 300 ps, '0' after 400 ps, '1' after 500 ps, '0' after 600 ps, '1' after 700 ps;

          wait for 800 ps;
wait;
    end process;
end logic_function_test;


