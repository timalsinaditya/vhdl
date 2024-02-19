library ieee;
use ieee.std_logic_1164.all;

entity not_gate_using_nor is
    port(i : in std_logic;
         o : out std_logic);
end entity not_gate_using_nor;

architecture structural of not_gate_using_nor is
    component nor_gate is
        port(i1, i2 : in std_logic;
            o :out std_logic);
    end component;

begin
    nor1: nor_gate port map ( i, i, o);
end structural;
