---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity tff_tb is
end tff_tb;

architecture tb of tff_tb is
    component tff
        port (T, clk, rst: in std_logic;
              q, qbar : out std_logic);
    end component;

    signal clk, t, q, rst, qp : std_logic := '0';
    constant Period : time := 1000 ns;
    signal SimEnded : boolean := false;

begin
    dut : tff port map (t, clk, rst, q, qp);

    clock_process: process
    begin
      while not SimEnded loop
            clk <= not clk after Period/2;
            wait for Period/2;
        end loop;
        wait;
    end process clock_process;
     
    t <= '0', '1' after 4*Period, '0' after 8*Period, '1' after 10*Period;
    rst <= '1', '0' after Period;

    stimulus_process : process
    begin 
      wait for 10*Period;
      SimEnded <= True;
      wait;
  end process; 
end tb;
