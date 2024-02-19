library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1 is 
    port(x1, x2, x3, x4, s0, s1 : in std_logic;
        y : out std_logic);
end mux_4to1;

architecture structural of mux_4to1 is
    component mux_2to1  
        port(x1, x2, s : in std_logic;
            y: out std_logic);
    end component;
    
    signal out1, out2 : std_logic;
begin
    mux1instantiation : mux_2to1 port map(x1, x2, s0, out1);
    mux2instantiation : mux_2to1 port map(x3, x4, s0, out2);
    mux3instantiation : mux_2to1 port map(out1, out2, s1, y);

end structural;

