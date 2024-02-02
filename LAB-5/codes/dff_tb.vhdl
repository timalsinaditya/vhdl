library ieee;
use ieee.std_logic_1164.all;

entity dff_tb is
end entity dff_tb;

architecture testbench of dff_tb is
    signal clk, data : std_logic := '0';
    signal q, qbar : std_logic;

    component dff
        port (
            data, clk : in std_logic;
            q, qbar : out std_logic
        );
    end component;
    
    constant period : time := 1000 ps;
    signal simEnded : boolean;   

begin
    DUT: dff port map (data, clk, q, qbar);
    
process
begin
    while not simEnded loop
        clk <= '1';
        wait for period / 2;
        clk <= '0';
        wait for period / 2;
    end loop;

    data <= '0', '1' after period, '0' after 2*period;
        wait for 100*period;
         simEnded <= true;
         wait;
     end process;
end architecture testbench;
