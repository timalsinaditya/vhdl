library ieee;
use ieee.std_logic_1164.all;

entity jkff is
  port(j, k, clk, rst : in std_logic;
       q, qbar : out std_logic);
end jkff;

architecture structural of jkff is
  component dff
    port(data, clk, rst : in std_logic;
         q, qbar : out std_logic);
  end component;

  signal t1, t2, t3, t4, t5, t6 : std_logic;

begin
  dff_inst : dff port map(t6, clk, rst, t2, t4);

  t1 <= not k;
  t3 <= t1 and t2;
  t5 <= j and t4;
  t6 <= t3 or t5;

  q <= t2;
  qbar <= t4;
end structural;
