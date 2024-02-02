library ieee;
use ieee.std_logic_1164.all;

entity dff is 
    port(data, clk : in std_logic;
        q, qbar : out std_logic);

end dff;

architecture structural of dff is 
    component nand_gate 
        port ( i1, i2 : in std_logic;
             o : out std_logic);

    end component;

    signal z1, z2, z3, z4, z5, z6, temp1, temp2 : std_logic;

begin
    nand1 : nand_gate port map (z4, z2, z1);
    nand2 : nand_gate port map (clk, z1, z2 );
    nand3 : nand_gate port map (z2, clk, temp1);
    nand4 : nand_gate port map (temp1, temp1, temp2);
    nand5 : nand_gate port map (temp2, z4, z3);
    nand6 : nand_gate port map (z3, data, z4);
    nand7 : nand_gate port map (z2, z6, z5);
    nand8 : nand_gate port map (z3, z5, z6);

    q <= z5;
    qbar <= z6;

end structural;
