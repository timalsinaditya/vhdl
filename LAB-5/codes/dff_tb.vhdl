library ieee;
use ieee.std_logic_1164.all;

entity dff_tb is
end entity dff_tb;

architecture testbench of dff_tb is
    component dff
        port (
            data, clk,rst : in std_logic;
            q, qbar : out std_logic
        );
    end component;
    
    signal clk, data : std_logic := '0';
    constant period : time := 1000 ps;
    signal q, qbar,rst : std_logic := '0';
begin
    DUT: dff port map (data,clk,rst);
    
process
begin
        clk <= '1';
        wait for period / 2;
        clk <= '0';
        wait for period / 2;
end process;

    data <= '1', '1' after period, '0' after 2*period;
end architecture testbench;
