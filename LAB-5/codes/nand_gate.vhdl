library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is 
    port( i1, i2 : in std_logic;
        o : out std_logic);

end nand_gate;

architecture dataflow of nand_gate is 
begin 
    o <= i1 nand i2;

end dataflow;
