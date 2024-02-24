---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity one_digit_bcd_tb is
  
  end one_digit_bcd_tb;

architecture testbench of one_digit_bcd_tb is 
  component one_digit_bcd is 
    port (clk, en, ld, rst : in std_logic;
          d : in std_logic_vector(3 downto 0);
          q : out std_logic_vector(3 downto 0);
          z : out std_logic);
  
  end component;
  signal en, ld, z, rst : std_logic;
  signal d , q : std_logic_vector(3 downto 0) := "0000";
  signal clk :std_logic := '0';
  -- signal SimEnded : boolean := false;
  signal Period : time := 100 ns;
  signal SimEnded : boolean := false;
begin 
  uut : one_digit_bcd port map(clk, en, ld,rst, d, q, z);
  en <= '1';
  ld <= '1', '0' after 2* Period;
  rst <= '1', '0' after 1*Period;

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
    wait for 20*Period;
    simEnded <= True;
    wait;
  end process;

end testbench;

