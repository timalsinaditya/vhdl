library ieee;
use ieee.std_logic_1164.all;

entity two_digit_bcd_tb is
end two_digit_bcd_tb;

architecture testbench of two_digit_bcd_tb is
  component two_digit_bcd is 
  port (clk , clear : in std_logic;
       qo : out std_logic_vector(7 downto 0));
  end component;

  signal clear : std_logic;
  signal clk :std_logic := '0';
  signal Period : time := 100 ns;
  signal SimEnded : boolean := false;

begin
  uut : two_digit_bcd port map(clk, clear);

  clear <= '1', '0' after 2*Period;

  clock_process : process 
  begin 
    while not SimEnded loop 
      clk <= not clk after Period/2;
      wait for Period/2;
    end loop;
    wait;
  end process;

  stimulus_process : process
  begin
    wait for 30*Period;
    simEnded <= True;
    wait;
  end process;
end testbench;
