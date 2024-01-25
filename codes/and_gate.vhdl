
library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is
  Port (
    A, B : in std_logic;
    Y : out std_logic
  );
end entity;

architecture dataflow of and_gate is
begin
  Y <= A and B;
end dataflow;

