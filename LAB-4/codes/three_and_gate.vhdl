library ieee;
use ieee.std_logic_1164.all;

entity three_and_gate is
    port(i1, i2, i3 : in std_logic;
         o : out std_logic);
end entity three_and_gate;

architecture behavior of three_and_gate is
begin
    o <= i1 and i2 and i3;
end architecture behavior;
