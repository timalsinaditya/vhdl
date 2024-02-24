---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity johnson_counter is
  port (clk, rst : in std_logic;
       qout : out std_logic_vector(3 downto 0));
end johnson_counter;

architecture structural of johnson_counter is 
  component dff is
    port (data, clk, rst: in std_logic;
          q, qbar : out std_logic);
  end component;

  signal y : std_logic;
  signal q : std_logic_vector(3 downto 0);

begin
  dff1 : dff port map (y, clk, rst, q(0));
  dff2 : dff port map (q(0), clk, rst, q(1));
  dff3 : dff port map (q(1), clk, rst, q(2));
  dff4 : dff port map (q(2), clk, rst, q(3), y);
  
  qout <= q;
end structural;
