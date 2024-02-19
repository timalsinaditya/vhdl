library ieee;
use ieee.std_logic_1164.all;

entity siso_tb is
end siso_tb;

architecture testbench of siso_tb is
  component siso is 
    port (Din, clock, rst: in std_logic;
           Dout : out std_logic);
  end component;
  
  signal din, clk, rst : std_logic := '0';
  signal SimEnded : boolean := false;
  signal Period : time := 100 ns;

begin
  uut : siso port map (din, clk, rst);

  clock_process : process 
  begin 
    while not SimEnded loop 
      clk <= not clk after Period/2;
      wait for Period/2;
    end loop;
    wait;
  end process;

  din <= '0', '1' after Period, '0' after Period*2, '1' after 3*Period, '0'after 4*Period, '1' after 5*Period, '0' after 6*Period, '1' after 7*Period;
  rst <= '1', '0' after Period;

  stimulus_process : process
  begin
    wait for 12*Period;
    simEnded <= True;
    wait;
  end process;
end testbench;

