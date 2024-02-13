library ieee;
use ieee.std_logic_1164.all;

entity tff_tb is
end tff_tb;

architecture tb of tff_tb is
    component tff
        port (T, clk : in std_logic;
              q, qbar : out std_logic);
    end component;

    signal clk, t, q, qp : std_logic := '0';
    constant Period : time := 1000 ns;

begin
    dut : tff port map (t, clk, q, qp);

    clock_process: process
    begin
      for i in 1 to 20 loop
            clk <= not clk;
            wait for Period/2;
        end loop;
        wait;
    end process clock_process;
    process
    begin 

     t <= '0', '1' after 4*Period, '0' after 8*Period, '1' after 10*Period;
    wait for 12*Period;
    wait;
  end process; 
end tb;
