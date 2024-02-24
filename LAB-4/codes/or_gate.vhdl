---------------Aditya Timalsina----------------
-------------077bei009----------------------
library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
    port(i1, i2 : in std_logic;
         o : out std_logic);
end entity or_gate;

architecture behavior of or_gate is
begin
    o <= i1 or i2;
end architecture behavior;
