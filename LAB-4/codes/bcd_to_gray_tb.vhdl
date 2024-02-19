library ieee;
use ieee.std_logic_1164.all;

entity bcd_to_gray_tb is
end bcd_to_gray_tb;

architecture bcd_to_gray_test of bcd_to_gray_tb is  
    component bcd_to_gray is 
      port (BCD : in std_logic_vector(3 downto 0);
          Gray: out std_logic_vector(3 downto 0));
    end component;

    signal BCD_input , gray : std_logic_vector(3 downto 0);
    constant DELAY : time := 50 ps;

begin 
    UUT: bcd_to_gray port map(BCD => BCD_input, gray => Gray);

    Stimulus_process : process
    begin
        BCD_input <= "0000";
        wait for DELAY;
        BCD_input <= "0001";
        wait for DELAY;
        BCD_input <= "0010";
        wait for DELAY;
        BCD_input <= "0011";
        wait for DELAY;
        BCD_input <= "0100";
        wait for DELAY;
        BCD_input <= "0101";
        wait for DELAY;
        BCD_input <= "0110";
        wait for DELAY;
        BCD_input <= "0111";
        wait for DELAY;
        BCD_input <= "1000";
        wait for DELAY;
        BCD_input <= "1001";
        wait for DELAY;
        wait;
    end process;
end bcd_to_gray_test;
