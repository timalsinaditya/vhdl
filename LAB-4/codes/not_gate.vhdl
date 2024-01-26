library ieee;
use ieee.std_logic_1164.all;

entity not_gate is
    port(i : in std_logic;
         o : out std_logic);
end entity not_gate;

architecture behavior of not_gate is
begin
    o <= not i;
end architecture behavior;
