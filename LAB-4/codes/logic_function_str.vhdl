library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_function is 
    port(x1, x2, x3 : in std_logic;
        f : out std_logic);
end logic_function;

architecture structural of logic_function is 
    component and_gate 
        port(i1, i2 : in std_logic;
            o : out std_logic);
    end component;

    component or_gate 
        port(i1, i2 : in std_logic;
            o : out std_logic);
    end component;

    component not_gate
        port(i : in std_logic;
            o : out std_logic);
    end component;

    signal x1c, x2c, x3c, temp1, temp2, temp3, temp4, xa, xb, xc : std_logic;  

begin
    label1 : not_gate port map (x1, x1c);
    label2 : not_gate port map (x2, x2c);
    label3 : not_gate port map (x3, x3c);

    label4 : and_gate port map (x1c, x2, temp1); 
    label5 : and_gate port map (temp1, x3, xa);
    label6 : and_gate port map (x1, x2c, temp2); 
    label7 : and_gate port map (temp2, x3, xb);
    label8 : and_gate port map (x1, x2, temp3); 
    label9 : and_gate port map (temp3, x3c, xc);
    label10 : or_gate port map (xa, xb, temp4); 
    label11 : or_gate port map (temp4, xc, f);

end structural;
