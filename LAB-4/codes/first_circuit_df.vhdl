---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity first_circuit is 
    port(A, B, C, D : in std_logic;
        F : out std_logic);
end first_circuit;

architecture dataflow of first_circuit is 
begin  
    F <= ((A and B) or (not B and C)) or ((not B and C) and D);
end dataflow;
