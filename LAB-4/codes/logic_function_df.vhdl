library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_function is 
    port(x1, x2, x3 : in std_logic;
        f : out std_logic);
    
end logic_function;

architecture dataflow of logic_function is 
begin 
    f <= (not x1 and x2 and x3) or (x1 and (not x2) and x3) or (x1 and x2 and (not x3));
end dataflow;

