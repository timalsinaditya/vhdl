library ieee;
use ieee.std_logic_1164.all;

entity siso is 
  port (Din, clock, rst: in std_logic;
          Dout : out std_logic);

end siso;

architecture structural of siso is   
  component dff  
    port (data, clk, rst : in std_logic;
        q, qbar : out std_logic);
  
  end component;
 
  signal q0, q1, q2 : std_logic;

begin

  dff1 : dff port map(Din, clock, rst, q0);
  dff2 : dff port map(q0, clock, rst, q1);
  dff3 : dff port map(q1, clock, rst, q2);
  dff4 : dff port map(q2, clock, rst, Dout);

end structural;


