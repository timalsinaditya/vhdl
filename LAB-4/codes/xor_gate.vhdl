library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
    port (i1, i2 : in std_logic;
        o : out std_logic);
end entity xor_gate;

architecture behavioral of xor_gate is
begin
    o <= i1 xor i2;
end behavioral;
