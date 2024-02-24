---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity bcd_to_gray is 
    port (BCD : in std_logic_vector(3 downto 0);
        Gray: out std_logic_vector(3 downto 0));
end bcd_to_gray;

architecture dataflow of bcd_to_gray is 
begin 
    Gray(0) <= BCD(0) xor BCD(1);
    Gray(1) <= BCD(1) xor BCD(2);
    Gray(2) <= BCD(2) xor BCD(3);
    Gray(3) <= BCD(3);
end dataflow;
