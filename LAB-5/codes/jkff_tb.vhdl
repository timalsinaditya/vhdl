library ieee;
use ieee.std_logic_1164.all;

entity jkff_tb is
end jkff_tb;

architecture jkff_test of jkff_tb is
    component jkff
        port (
            j, k, clk : in std_logic;
            q, qbar : out std_logic
        );
    end component;

    constant period : time := 1000 fs;
    signal simEnded : boolean := false;
    signal j, k, clk, q, qbar : std_logic;
begin

    uut : jkff port map (j, k, clk, q, qbar);

process
begin
        clk <= '1';
        wait for period / 2;
        clk <= '0';
        wait for period / 2;
end process;

    j <= '0', '0' after 2*period, '0' after 4*period, '1' after 7*period,'0'after 9*period;
    k <= '0', '1' after 2*period, '0' after 3*period, '1' after 4*period, '1' after 6*period, '0' after 7*period, '1'
         after 8*period, '0' after 11*period;

end jkff_test;
