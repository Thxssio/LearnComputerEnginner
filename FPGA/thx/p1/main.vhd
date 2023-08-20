
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           saida : out  STD_LOGIC);
end main;

architecture Behavioral of main is
begin
	saida <= ((b and c) xor (not a)) and a and b;
	
end Behavioral;

