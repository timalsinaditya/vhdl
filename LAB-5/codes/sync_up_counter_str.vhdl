library ieee;
use ieee.std_logic_1164.all;

entity sync_up_counter is
  port (input, clk, rst: in std_logic;
       q : out std_logic_vector(3 downto 0));
end sync_up_counter;

architecture structural of sync_up_counter is
  component tff is 
    port(T, clk, rst: in std_logic;
        q, qbar : out std_logic);
  end component;

  signal q_temp : std_logic_vector(3 downto 0);
  signal y : std_logic_vector (5 downto 1);

begin
  tff1 : tff port map(input, clk, rst, q_temp(0));
  y(3) <= q_temp(0);
  tff2 : tff port map(q_temp(0), clk, rst, q_temp(1));
  y(4) <= q_temp(1);
  y(1) <= y(3) and y(4);
  tff3 : tff port map(y(1), clk, rst, q_temp(2));
  y(5) <= q_temp(2);
  y(2) <= y(1) and y(5);
  tff4 : tff port map(y(2), clk, rst, q_temp(3));
  q <= q_temp;
end structural;
