library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity first_circuit is 
    port(A, B, C, D : in std_logic;
        F : out std_logic);

end first_circuit;

architecture first_circuit_structural of first_circuit is 
    component and_gate 
        port(i1, i2 : in std_logic;
            o : out std_logic);

    end component;

    component or_gate 
        port(i1 , i2 : in std_logic;
            o :out std_logic);

    end component;

    component not_gate 
        port(i : in std_logic;
            o : out std_logic);

    end component;

    signal AB, Bcomp, BcompC, BCD, ABC : std_logic;

begin
    label1: and_gate port map(A, B, AB);
    label2: not_gate port map(B, Bcomp);
    label3: and_gate port map(Bcomp, C, BcompC);
    label4: and_gate port map(BcompC, D, BCD);
    label5: or_gate port map(AB, BcompC, ABC);
    label6: or_gate port map(BCD, ABC, F);

end first_circuit_structural;
