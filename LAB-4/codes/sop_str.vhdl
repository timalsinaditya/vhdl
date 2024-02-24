---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity sop is 
    port (x1, x2, x3, x4 : in std_logic;
         F : out std_logic);
end sop;

architecture structural of sop is
    component nor_gate
        port(i1, i2 : in std_logic;
            o: out std_logic);
    end component;

    component and_gate_using_nor
        port(i1, i2 : in std_logic;
            o :out std_logic);
    end component;

    component or_gate_using_nor
        port(i1, i2 : in std_logic;
            o :out std_logic);
    end component;

    signal a, b, c, temp1, temp2 : std_logic;

begin
     labe1 : nor_gate port map (x1, x3, a);
     labe2 : nor_gate port map (x2, x3, b);
     labe3 : and_gate_using_nor port map (x1, x2, temp1);
     labe4 : and_gate_using_nor port map (temp1, x3, c);
     labe5 : or_gate_using_nor port map (a, b, temp2);
     labe6 : or_gate_using_nor port map (temp2, c, F);
 end structural;
 
