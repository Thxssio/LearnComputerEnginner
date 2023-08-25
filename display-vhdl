library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity project is
    Port ( valor : in integer range 0 to 15);
           sel : out  STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0));
end project;

architecture Behavioral of project is


begin
	sel <= "1110";
	with valor select
		display <= "0000001" when 0,
					  "1001111" when 1,
					  "0010010" when 2,
					  "0000110" when 3,
					  "1001100" when 4,
					  "0100101" when 5,
					  "0100000" when 6,
					  "0001111" when 7,
					  "0000000" when 8,
					  "0000100" when 9;
			


end Behavioral;

