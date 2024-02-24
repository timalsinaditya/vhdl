---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity sop is 
    port (x1, x2, x3, x4 : in std_logic;
         F : out std_logic);
end sop;

architecture dataflow of sop is
begin
    --equivalent ( x1 nor x3) or (x2 nor x3) or (x1 and x2 and x3)
    F <= (not x1 and not x3) or (not x2 and not x3) or (x1 and x2 and x3);
end dataflow;
