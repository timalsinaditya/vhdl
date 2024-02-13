library ieee;
use ieee.std_logic_1164.all;

entity jkff_tb is
end jkff_tb;

architecture tb of jkff_tb is
    component jkff
        port (j, k, clk : in std_logic;
              q, qbar : out std_logic);
    end component;

    signal clk, j, k,  q, qp : std_logic := '0';
    constant Period : time := 1000 ns;

begin
    dut : jkff port map (j, k, clk, q, qp);

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

     j <= '0', '1' after 4*Period, '0' after 8*Period, '1' after 10*Period;
     k <= '0', '0' after 4*Period, '1' after 8*Period, '1' after 10*Period, '0' after 10*Period;
    wait for 12*Period;
    wait;
  end process; 
end tb;
