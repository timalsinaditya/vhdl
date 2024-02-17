library ieee;
use ieee.std_logic_1164.all;

entity tff is 
  port(T, clk, rst: in std_logic;
      q, qbar : out std_logic);
end tff;

architecture structural of tff is  
  component  dff 
    port (data, clk, rst: in std_logic;
          q, qbar : out std_logic);
  end component;
  
  signal y1, y2, y3, y4, y5, y6 : std_logic;
  begin
    y1 <= y5 xor T;
    dfta : dff port map(y1, clk, rst, y5, y6);
   ---   y1 <= not T;
   ---   y2 <= y1 and y5;
   ---   y3 <= T and y6;
   ---   y4 <= y2 or y3;
   ---   
    q <= y5;
    qbar <= y6;

end structural;
