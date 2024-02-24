---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee; 
use ieee.std_logic_1164.all;

entity addsub4_tb is
end addsub4_tb;

architecture addsub_test of addsub4_tb is
    component addsub4 is 
         port (A, B : in std_logic_vector(3 downto 0);
             ctr_line : in std_logic;
            sum : out std_logic_vector(3 downto 0);
            carry : out std_logic);
    end component;

    signal x1, x2 : std_logic_vector(3 downto 0);
    signal k : std_logic;

begin
    UUT: addsub4 port map (A => x1, B => x2, ctr_line =>k);
    stimulus_process : process
    begin
  x1 <= "0111", "0101" after 50 ps, "1011" after 100 ps, "0010" after 150 ps, "1111" after 200 ps, "0000" after 250 ps;
  x2 <= "0011", "0010" after 50 ps, "1001" after 100 ps, "1100" after 150 ps, "0100" after 200 ps, "1110" after 250 ps;
  k <= '0', '1' after 150 ps;
  wait for 300 ps;
  wait;
  end process;
end addsub_test;
