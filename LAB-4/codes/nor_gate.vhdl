library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
    port(i1, i2 : in std_logic;
         o : out std_logic);
end entity nor_gate;

architecture behavior of nor_gate is
begin
    o <= i1 nor i2;
end architecture behavior;
