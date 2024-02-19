library ieee;
use ieee.std_logic_1164.all;

entity mux_2to1 is 
    port(x1, x2, s : in std_logic;
        y: out std_logic);
end mux_2to1;

architecture behavioral of mux_2to1 is
begin
    process(x1, x2, s)
    begin
     y <= x1 when s = '0' else
             x2 when s = '1' else
             '0'; -- Default value 
    end process;
end behavioral;
