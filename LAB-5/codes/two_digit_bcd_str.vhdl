library ieee;
use ieee.std_logic_1164.all;

entity two_digit_bcd is 
  port (clk , clear : in std_logic;
       qo : out std_logic_vector(7 downto 0));
end two_digit_bcd;

architecture structural of two_digit_bcd is
  component one_digit_bcd is 
    port (clk, en, ld, rst: in std_logic;
          d : in std_logic_vector(3 downto 0);
          q : out std_logic_vector(3 downto 0);
          z : out std_logic);
  end component;
  
  signal load1, load2, and1, and2: std_logic;
  signal qtemp : std_logic_vector(7 downto 0);
  signal qtemp1, qtemp2 : std_logic_vector(3 downto 0);

begin
  and1 <= qtemp(0) and qtemp(3); 
  and2 <= qtemp(4) and qtemp(7) and and1;
  load1 <= clear or and1;
  load2 <= clear or and2;
  qtemp <= qtemp2 & qtemp1;
   
  first : one_digit_bcd port map(clk, '1', load1, clear, "0000", qtemp1);

  second : one_digit_bcd port map(clk, and1 , load2, clear, "0000", qtemp2);
  qo <= qtemp;
end structural;
