library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity first_circuit is 
    port(A, B, C, D : in std_logic;
        F : out std_logic);

end first_circuit;

architecture behavioral of first_circuit is 
begin
    p1: process(A, B, C, D)
    begin
        --the provided combinational circuit is 2:1 Mux 
        --can be verified using truth table and K-map
        --B is the select lines
        if B = '0' then
            F <= C;
        else
            F <= A;
        end if;
    end process;
end behavioral;

