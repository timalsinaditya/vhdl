library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_function is 
    port(x1, x2, x3 : in std_logic;
        f : out std_logic);
end logic_function;

architecture structural of logic_function is 
    component three_and_gate 
        port(i1, i2, i3 : in std_logic;
            o : out std_logic);
    end component;

    component three_or_gate 
        port(i1, i2, i3 : in std_logic;
            o : out std_logic);
    end component;

    component not_gate 
        port(i : in std_logic;
            o : out std_logic);
    end component;

    signal x1c, x2c, x3c, xa, xb, xc : std_logic;  

begin
    label1 : not_gate port map (x1, x1c);
    label2 : not_gate port map (x2, x2c);
    label3 : not_gate port map (x3, x3c);
    label4 : three_and_gate port map (x1c, x2, x3, xa);
    label5 : three_and_gate port map (x1, x2c, x3, xb);
    label6 : three_and_gate port map (x1, x2, x3c, xc);
    label7 : three_or_gate port map (xa, xb, xc, f);
end structural;
