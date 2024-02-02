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

    constant period : time := 1000 ps;
    signal simEnded : boolean := false;
    signal j, k, clk, q, qbar : std_logic;
begin

    uut : jkff port map (j, k, clk, q, qbar);

process
begin
    while not simEnded loop
        clk <= '1';
        wait for period / 2;
        clk <= '0';
        wait for period / 2;
    end loop;
    wait;
end process;

    j <= '0', '1' after 3*period, '0' after 4*period, '1' after 6*period;
    k <= '0', '1' after 1*period, '1' after 3*period, '1' after 6*period, '0' after 7*period;

process
begin
    wait for 8*period;
  simEnded <= true;
  wait;
end process;


end jkff_test;
