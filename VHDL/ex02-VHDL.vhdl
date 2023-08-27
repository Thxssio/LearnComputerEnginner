library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity test is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           saida : out  STD_LOGIC_VECTOR (8 downto 0));
end test;


architecture Behavioral of test is
	 signal c1 :  STD_LOGIC_VECTOR (8 downto 0);
    signal c2 :  STD_LOGIC_VECTOR (8 downto 0);
    signal c3 :  STD_LOGIC_VECTOR (8 downto 0);
	 signal c4 :  STD_LOGIC_VECTOR (8 downto 0);
	 
begin
	c1 <= ('0' & a)+b;
	c2 <= ('0' & a) and b;
	c3 <= ('0' & a) or b;
	c4 <= not ('0' & a);
	
	with op select
		saida <= c1 when "00",
					c2 when "01",
					c3 when "10",
					c4 when others;
	
end Behavioral;

