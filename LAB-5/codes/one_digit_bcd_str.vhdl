---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity one_digit_bcd is 
  port (clk, en, ld, rst: in std_logic;
        d : in std_logic_vector(3 downto 0);
        q : out std_logic_vector(3 downto 0);
        z : out std_logic);
end one_digit_bcd;

architecture structural of one_digit_bcd is
  component dff is
    port (data, clk, rst: in std_logic;
          q, qbar : out std_logic);
  end component;

  component mux_2to1 is 
      port(x1, x2, s : in std_logic;
          y: out std_logic);
  end component;

  signal q_temp, xored, mux_out : std_logic_vector(3 downto 0);
  signal anded : std_logic_vector(4 downto 0); --enable also done so

begin
  anded(0) <= en;
  loop1 :  for i in 0 to 3 generate
    xored(i) <= q_temp(i) xor anded(i);
    anded(i+1) <= anded(i) and q_temp(i);
    instmux: mux_2to1 port map(xored(i), d(i), ld, mux_out(i));
    dffinst : dff port map(mux_out(i), clk, rst, q_temp(i));
  end generate;
  q <= q_temp;
  z <= anded(4);
end structural;
  
  



