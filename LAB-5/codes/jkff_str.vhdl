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
    signal y1, y2, y3, y4, y5, y6, rst : std_logic;
begin 
   dff1 : dff port map (y5, clk, y2, y1);
    y3 <= y1 and j;
    y6 <= not K;
    y4 <= y2 and y6;
    y5 <= y3 or y4;
    q <= y2; 
    qbar <= y1;

end structural;

