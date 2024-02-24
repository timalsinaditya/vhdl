---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity sop is 
    port (x1, x2, x3, x4 : in std_logic;
         F : out std_logic);
end sop;

architecture behavioral of sop is
begin 
    process(x1, x2, x3)
    begin 
        if x1 = '0' and x3 = '0' then
            F<='1';

        elsif x2 = '0' and x3 = '0' then
            F <= '1';

        elsif x1 = '1' and x2 = '1' and x3 = '1' then
            F <= '1';

        else 
            F <= '0';
        end if ;
        end process;
end behavioral;

