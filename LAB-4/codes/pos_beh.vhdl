---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity pos is 
    port (x1, x2, x3, x4 : in std_logic;
         F : out std_logic);
end pos;

--F <= (x2 or x3) and (x3 or not x4) and (not x1 or not x2 or not x4)

architecture behavioral of pos is
begin 
    process(x1, x2, x3, x4)
        variable  a, b, c : std_logic := '0';
    begin
        a := x2 or x3;
        b := x3 or not x4;
        c := not x1 or not x2 or not x4;

        if(a = '1' and b = '1' and c = '1') then 
            F <= '1';
        else
            F <= '0';
        end if;
    end process;
end behavioral;


