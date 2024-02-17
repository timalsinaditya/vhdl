
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

---  clock_process : process
---  begin 
---    while not SimEnded loop
---      clk <= not clk after Period/2;
---      wait for Period/2;
---    end loop;
---    wait;
---  end process;
  haina : process   
  begin 
    for j in 1 to 32 loop 
      clk <= not clk;
      wait for Period/2;
    end loop;
    wait;
  end process;
---  stimulus_process : process
---  begin
---    wait for 30*Period;
---    SimEnded <= True;
---    wait;
---  end process;
  rst <= '1', '0' after Period;
end testbench;

