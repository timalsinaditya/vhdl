library ieee;
use ieee.std_logic_1164.all;

entity or_gate_using_nor is
    port(i1, i2 : in std_logic;
         o : out std_logic);
end entity or_gate_using_nor;

architecture structural of or_gate_using_nor is
    component nor_gate is
        port(i1, i2: in std_logic;
            o: out std_logic);
        
    end component;

    signal temp : std_logic;

begin
    nor1: nor_gate port map (i1, i2, temp);
    nor2: nor_gate port map (temp, temp, o);
end structural;
