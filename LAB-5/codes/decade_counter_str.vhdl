---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity decade_counter is 
  port (input , clk, rst : in std_logic;
       q : out std_logic_vector(3 downto 0));

end decade_counter;

architecture structural of decade_counter is  
  component tff is 
    port(T, clk, rst: in std_logic;
        q, qbar : out std_logic);
    
  end component;

  signal q_temp, qbar_temp : std_logic_vector(3 downto 0);
  signal y : std_logic_vector(6 downto 1);
  signal rst_a, rst_tmp : std_logic;

begin
  rst_tmp <= rst or (q_temp(1) and q_temp(3));
  --rst_tmp <= '0' when rst_a /= '1' else '1';
  tff1 : tff port map('1', clk, rst_tmp, q_temp(0), qbar_temp(0));
  y(4) <=  qbar_temp(0);
  tff2 : tff port map('1', y(4), rst_tmp, q_temp(1), qbar_temp(1));
  y(1) <= q_temp(1);
  y(5) <= qbar_temp(1) ;
  --y(5) <= qbar_temp(1);
  tff3 : tff port map('1', y(5), rst_tmp, q_temp(2), qbar_temp(2));
 --- y(6) <= qbar_temp(2);
  y(6) <= qbar_temp(2) ;
  tff4 : tff port map('1', y(6), rst_tmp, q_temp(3), qbar_temp(3));
  y(2) <= q_temp(3);
  q <= q_temp;
end structural;


