library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port(i1, i2 : in std_logic;
         o : out std_logic);
end entity and_gate;

architecture behavior of and_gate is
begin
    o <= i1 and i2;
end architecture behavior;
