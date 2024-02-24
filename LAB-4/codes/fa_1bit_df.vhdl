---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity fa_1bit is
    port(a, b , cin : in std_logic;
        s, cout : out std_logic);
end fa_1bit;

architecture dataflow of fa_1bit is 
begin 
    s <= a xor b xor cin;
    cout <= (a and b) or (b and cin) or (a and cin);

end dataflow;
