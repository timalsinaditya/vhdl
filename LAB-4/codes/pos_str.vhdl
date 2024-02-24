---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity pos is 
    port (x1, x2, x3, x4 : in std_logic;
         F : out std_logic);
end pos;

--F <= (x2 or x3) and (x3 or not x4) and (not x1 or not x2 or not x4)

architecture structural of pos is
    component and_gate_using_nor is
        port(i1, i2 : in std_logic;
            o : out std_logic);
    end component;

    component or_gate_using_nor is
        port(i1, i2 : in std_logic;
            o : out std_logic);
    end component;
    
    component not_gate_using_nor is
        port(i : in std_logic;
            o : out std_logic);
    end component;

    signal x1c, x2c, x3c, x4c, xa, xb, xc, xtemp, temp2: std_logic ;

begin
    label1: not_gate_using_nor port map (x1, x1c);
    label2: not_gate_using_nor port map (x2, x2c);
    label3: not_gate_using_nor port map (x3, x3c);
    label4: not_gate_using_nor port map (x4, x4c);
    label5: or_gate_using_nor port map (x2, x3, xa);
    label6: or_gate_using_nor port map (x3, x4c, xb);
    label7: or_gate_using_nor port map (x1c, x2c, xtemp);
    label8: or_gate_using_nor port map (xtemp, x4c, xc);
    label10: and_gate_using_nor port map (xa, xb, temp2);
    label11: and_gate_using_nor port map (temp2, xc, F);
end structural;
