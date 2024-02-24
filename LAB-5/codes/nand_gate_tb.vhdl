---------------Aditya Timalsina----------------
-------------077bei009----------------------

library ieee;
use ieee.std_logic_1164.all;

entity nand_gate_tb is
end entity nand_gate_tb;

architecture testbench of nand_gate_tb is
    signal i1, i2, o : std_logic := '0';
begin
    UUT: entity work.nand_gate
        port map (
            i1 => i1,
            i2 => i2,
            o  => o
        );

    stimulus_process: process
    begin
        -- Test case 1: i1 = '0', i2 = '0'
        i1 <= '0';
        i2 <= '0';
        wait for 10 ns;

        -- Test case 2: i1 = '0', i2 = '1'
        i1 <= '0';
        i2 <= '1';
        wait for 10 ns;

        -- Test case 3: i1 = '1', i2 = '0'
        i1 <= '1';
        i2 <= '0';
        wait for 10 ns;

        -- Test case 4: i1 = '1', i2 = '1'
        i1 <= '1';
        i2 <= '1';
        wait for 10 ns;

        -- You can add more test cases as needed

        wait;
    end process stimulus_process;

end architecture testbench;
