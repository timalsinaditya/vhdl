library ieee; 
use ieee.std_logic_1164.all;

entity addsub4 is 
    port (A, B : in std_logic_vector(3 downto 0);
         ctr_line : in std_logic;
         sum : out std_logic_vector(3 downto 0);
         carry : out std_logic);

end addsub4;

architecture structural of addsub4 is
    component fa_1bit is
        port(a, b , cin : in std_logic;
            s, cout : out std_logic);

    end component;

    signal couts : std_logic_vector(3 downto 0);
    signal xoredin : std_logic_vector(3 downto 0);
    signal ctr_line_in : std_logic_vector(3 downto 0);

begin
    ctr_line_in <= (others => ctr_line);
    xoredin <= B xor ctr_line_in;
    fa1 : fa_1bit port map(A(0), xoredin(0), ctr_line, sum(0), couts(0));
    
    remaining_fa: for i in 1 to 3 generate
      fa_inst: fa_1bit port map (A(i), xoredin(i), couts(i-1), sum(i), couts(i));
  end generate remaining_fa;

  carry <= couts(3);
  end structural;
