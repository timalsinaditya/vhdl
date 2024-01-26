library ieee;
use ieee.std_logic_1164.all;

entity three_or_gate is
    port(i1, i2, i3 : in std_logic;
         o : out std_logic);
end entity three_or_gate;

architecture behavior of three_or_gate is
begin
    o <= i1 or i2 or i3;
end  behavior;
