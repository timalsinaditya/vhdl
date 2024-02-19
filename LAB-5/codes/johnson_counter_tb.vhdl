library ieee;
use ieee.std_logic_1164.all;

entity johnson_counter_tb is
end johnson_counter_tb;

architecture testbench of johnson_counter_tb is
  component johnson_counter is
    port (clk, rst : in std_logic;
         qout : out std_logic_vector(3 downto 0));
  end component;

  signal rst : std_logic;
  signal clk :std_logic := '0';
   signal SimEnded : boolean := false;
  signal Period : time := 100 ns;
begin
  uut : johnson_counter port map(clk, rst);
  begin 
    for j in 1 to 20 loop 
      clk <= not clk;
      wait for Period/2;
    end loop;
    wait;
  end process;
  rst <= '1', '0' after Period;
end testbench;

