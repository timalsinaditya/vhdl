library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_function is 
    port(x1, x2, x3 : in std_logic;
        f : out std_logic);
    
end logic_function;

architecture behavioral of logic_function is 
begin 
    process(x1, x2, x3)
    begin
        if x1 = '1' and x2 = '1' and x3 = '0' then
            f <= '1';
        elsif x1 = '0' and x2 = '1' and x3 = '1' then
            f <= '1';
        elsif x1 = '1' and x2 = '0' and x3 = '1' then
            f <= '1';
        else
            f <= '0';
        end if;
    end process;
end behavioral;
