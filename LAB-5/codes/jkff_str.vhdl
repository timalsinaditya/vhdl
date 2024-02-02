library ieee;
use ieee.std_logic_1164.all;

entity jkff is 
    port(j, k, clk : in std_logic;
        q, qbar : out std_logic);

end jkff;

architecture structural of jkff is 
component dff  
    port(data, clk : in std_logic;
        q, qbar : out std_logic);

end component;
    signal y1, y2, y3, y4, y5, y6 : std_logic;
begin 
    y3 <= y1 and j;
    y6 <= not K;
    y4 <= y2 and y6;
    y5 <= y3 or y4;

    dff1 : dff port map (y5, clk, y1, y2);

    q <= y1; 
    qbar <= y2;

end structural;

