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
          x1 <= '0';
          x2 <= '0';
          x3 <= '0';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '0';
          x2 <= '0';
          x3 <= '0';
          x4 <= '1';
           wait for 200 ns;
          x1 <= '0';
          x2 <= '0';
          x3 <= '1';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '0';
          x2 <= '0';
          x3 <= '1';
          x4 <= '1';
           wait for 200 ns;
          x1 <= '0';
          x2 <= '1';
          x3 <= '0';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '0';
          x2 <= '1';
          x3 <= '0';
          x4 <= '1';
           wait for 200 ns;
          x1 <= '0';
          x2 <= '1';
          x3 <= '1';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '0';
          x2 <= '1';
          x3 <= '1';
          x4 <= '1';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '0';
          x3 <= '0';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '0';
          x3 <= '0';
          x4 <= '1';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '0';
          x3 <= '1';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '0';
          x3 <= '1';
          x4 <= '1';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '1';
          x3 <= '0';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '1';
          x3 <= '0';
          x4 <= '1';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '1';
          x3 <= '1';
          x4 <= '0';
           wait for 200 ns;
          x1 <= '1';
          x2 <= '1';
          x3 <= '1';
          x4 <= '1';
           wait for 200 ns;
   wait;
    end process;

end first_circuit_test;
