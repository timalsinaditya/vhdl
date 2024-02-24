---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity pos_tb is 
end pos_tb;

architecture pos_test of pos_tb is
    component pos is 
        port (x1, x2, x3, x4 : in std_logic;
             F : out std_logic);
    end component;

    signal a, b, c, d : std_logic;
begin
    UUT : pos port map (
        x1 => a,
        x2 => b,
        x3 => c,
        x4 => d,
        F => open 
    );
    
    Stimulus_process: process
begin
   a <= '0', '1' after 400 ps;
   b <= '0', '1' after 200 ps, '0' after 400 ps, '1' after 600 ps;
   c <= '0', '1' after 100 ps, '0' after 200 ps, '1' after 300 ps, '0' after 400 ps, '1' after 500 ps, '0' after 600 ps, '1' after 700 ps;
   d <= '0', '1' after 50 ps, '0' after 100 ps, '1' after 150 ps, '0' after 200 ps, '1' after 250 ps, '0' after 300 ps, '1' after 350 ps, '0' after 400 ps, '1' after 450 ps, '0' after 500 ps, '1' after 550 ps, '0' after 600 ps, '1' after 650 ps, '0' after 700 ps, '1' after 750 ps;
   wait for 800 ps; 
   wait;
    end process;
 end pos_test;
