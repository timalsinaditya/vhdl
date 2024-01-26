library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_to_gray is 
    port (
         BCD : in std_logic_vector(3 downto 0);
        Gray: out std_logic_vector(3 downto 0)
    );

end bcd_to_gray;

architecture structural of bcd_to_gray is 
component xor_gate
    port(i1, i2 : in std_logic;
        o: out std_logic);
end component;

begin
    label1: xor_gate port map(i1 => bcd(0), i2 => bcd(1), o => gray(0));
    label2: xor_gate port map(i1 => bcd(1), i2 => bcd(2), o => gray(1));
    label3: xor_gate port map(i1 => bcd(2), i2 => bcd(3), o => gray(2));
    label4: gray(3) <= bcd(3);

end structural;
