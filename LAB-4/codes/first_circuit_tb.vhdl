library ieee; 
use ieee.std_logic_1164.all;

entity first_circuit_tb is 
end first_circuit_tb;

architecture first_circuit_test of first_circuit_tb is 
    component first_circuit 
        port (
            A, B, C, D : in std_logic;
            F : out std_logic
        );
    end component;

    signal x1, x2, x3, x4 : std_logic;

begin 
    UUT : first_circuit port map (
        A => x1,
        B => x2,
        C => x3,
        D => x4,
        F => open 
    );
    
    Stimulus_process: process
begin
   x1 <= '0', '1' after 400 ps;
   x2 <= '0', '1' after 200 ps, '0' after 400 ps, '1' after 600 ps;
   x3 <= '0', '1' after 100 ps, '0' after 200 ps, '1' after 300 ps, '0' after 400 ps, '1' after 500 ps, '0' after 600 ps, '1' after 700 ps;
   x4 <= '0', '1' after 50 ps, '0' after 100 ps, '1' after 150 ps, '0' after 200 ps, '1' after 250 ps, '0' after 300 ps, '1' after 350 ps, '0' after 400 ps, '1' after 450 ps, '0' after 500 ps, '1' after 550 ps, '0' after 600 ps, '1' after 650 ps, '0' after 700 ps, '1' after 750 ps;
    wait for 800 ps;
   wait;
    end process;

end first_circuit_test;
