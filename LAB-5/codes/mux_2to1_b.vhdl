---------------Aditya Timalsina----------------
-------------077bei009----------------------
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
        if s = '0' then
            y <= x1;
        elsif s = '1' then
            y <= x2;
        else
            y <= '0'; -- Defaul value
        end if;

    end process;
end behavioral;
