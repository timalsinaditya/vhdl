library ieee;
use ieee.std_logic_1164.all;

entity pos is 
    port (x1, x2, x3, x4 : in std_logic;
         F : out std_logic);
end pos;
--F <= (x2 or x3) and (x3 or not x4) and (not x1 or not x2 or not x4)
architecture dataflow of pos is
begin
    F <= (x2 or x3) and (x3 or not x4) and (not x1 or not x2 or not x4);
end dataflow;

