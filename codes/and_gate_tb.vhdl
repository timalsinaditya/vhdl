
library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate_tb is
end entity;

architecture dataflow of and_gate_tb is
  component and_gate
    Port (
      A, B : in std_logic;
      Y : out std_logic
    );
  end component;

  signal A, B, Y : std_logic;
begin
  uut : and_gate port map (
    A => A,
    B => B,
    Y => Y
  );

  -- Stimulus process
  process
  begin
    A <= '0' after 80 ns, '1' after 160 ns;
    B <= '0' after 40 ns, '1' after 80 ns, '0' after 120 ns, '1' after 160 ns;

    wait for 200 ns;  -- Adjust simulation time as needed

    assert false report "Simulation complete" severity note;
    wait;
  end process;

end dataflow;

