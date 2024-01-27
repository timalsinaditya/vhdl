library ieee;
use ieee.std_logic_1164.all;

entity and_gate_using_nor is
    port(i1, i2 : in std_logic;
         o : out std_logic);
end entity and_gate_using_nor;

architecture structural of and_gate_using_nor is
    component nor_gate is
        port(i1, i2: in std_logic;
            o: out std_logic);
        
    end component;
    signal temp1, temp2 : std_logic;
begin

    nor1: nor_gate port map (i1, i1, temp1);
    nor2: nor_gate port map (i2, i2, temp2);
    nor3: nor_gate port map (temp1, temp2, o);

end structural;
