library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mioca is
    Port ( clk : in  STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (3 downto 0);
           d : out  STD_LOGIC_VECTOR (6 downto 0));
end mioca;

architecture Behavioral of mioca is

begin
	process(clk)
	variable cont : integer range 0 to 300000000;
	variable cont2: integer range 0 to 2000000;
	begin
	if rising_edge(clk) then
		if cont < 300000000 then cont := cont + 1;
			else cont := 0;
		end if; -- cont < 300Mhz

		if cont < 300000000 * 1/16 then sel <= "0000";
			     			d   <= "0111111";

		elsif cont < 300000000 * 2/16 then if cont2 < 2000000 * 1/3
			then    sel <= "0111";
				d   <= "0111101";
																										  cont2 := cont2 + 1;
		elsif cont2 < 2000000 * 2/3
				then sel <= "1011";
				d   <= "0111111";
			
		cont2 := cont2 + 1;
			elsif cont2 < 2000000 * 3/3
				then sel <= "1101";
				d   <= "0111111";
		cont2 := cont2 + 1;
			else
				cont2 := 0;
		end if;

		elsif cont < 300000000 * 3/16
			then if cont2 < 2000000 * 1/2
				then sel <= "0111";
				     d   <= "0111001";
		cont2 := cont2 + 1;
		
		elsif cont2 < 2_000_000 * 2/2
			then sel <= "1011";
			     d   <= "0111111";

		cont2 := cont2 + 1;
			else cont2 := 0;

		end if;
		
		elsif cont < 300000000 * 4/16
			then sel <= "0111";
			     d   <= "0110001";

		elsif cont < 300000000 * 5/16
			then if cont2 < 2000000 * 1/2
				then sel <= "0111";
				     d   <= "1110001";
		
		cont2 := cont2 + 1;

		elsif cont2 < 2000000 * 2/2
			then sel <= "1011";
			     d   <= "1111011";

		cont2 := cont2 + 1;

		else cont2 := 0;
		end if;
		
		elsif cont < 300000000 * 6/16
			then if cont2 < 2000000 * 1/2
				then sel <= "0111";
				     d   <= "1110011";
		cont2 := cont2 + 1;
		
		elsif cont2 < 2000000 * 2/2
			then sel <= "1011";
			     d   <= "1111001";
		
		cont2 := cont2 + 1;
		else cont2 := 0;
		
		end if;
		elsif cont < 300000000 * 7/16
			then if cont2 < 2000000 * 1/2
				then sel <= "0111";
				     d   <= "1110111";
		cont2 := cont2 + 1;
		elsif cont2 < 2000000 * 2/2
			then sel <= "1011";
			     d   <= "0111001";
		cont2 := cont2 + 1;
		else cont2 := 0;
		end if;
		
		elsif cont < 300000000 * 8/16
			then if cont2 < 2000000 * 1/2
				then sel <= "1011";
				     d   <= "0111001";
		cont2 := cont2 + 1;
		elsif cont2 < 2000000 * 2/2
			then sel <= "1101";
			     d   <= "0111111";
		cont2 := cont2 + 1;else cont2 := 0;
		end if;

		elsif cont < 300000000 * 9/16
			then if cont2 < 2000000 * 1/2
				then sel <= "1011";
				     d   <= "0111101";
		cont2 := cont2 + 1;
		elsif cont2 < 2000000 * 2/2
			then sel <= "1101";
			     d   <= "0011111";
		cont2 := cont2 + 1;
		else cont2 := 0;
		end if;

		elsif cont < 300000000 * 10/16
			then if cont2 < 2000000 * 1/2
				then sel <= "1011";
				     d   <= "0111111";
		cont2 := cont2 + 1;
		elsif cont2 < 2000000 * 2/2
			then sel <= "1101";
			     d   <= "0001111";
		cont2 := cont2 + 1;
		else cont2 := 0;
		end if;

		elsif cont < 300000000 * 11/16
			then if cont2 < 2000000 * 1/2
				then sel <= "1101";
				     d   <= "0001111";
		cont2 := cont2 + 1;
		elsif cont2 < 2000000 * 2/2
			then sel <= "1110";
			     d   <= "1110111";
		cont2 := cont2 + 1;
		else 										  
        cont2 :=0;
		end if;
		elsif cont < 300_000_000 * 12/16 then  
			if cont2 < 2_000_000 * 1/2 then    sel <= "1101";
			d   <= "1001111";
			cont2 := cont2 + 1;
			elsif cont2 < 2_000_000 * 2/2 then sel <= "1110";
		    d   <= "1100111";
            cont2 := cont2 + 1;
	    else                              
            cont2 := 0;
		end if;
		elsif cont < 300_000_000 * 13/16 then 	
			if cont2 < 2_000_000 * 1/2 then    sel <= "1101";
			d   <= "1101111";
			cont2 := cont2 + 1;
		elsif cont2 < 2_000_000 * 2/2 then sel <= "1110";
			d   <= "1000111";
			cont2 := cont2 + 1;
		else	
            cont2 := 0;
		end if;
		elsif cont < 300_000_000 * 14/16 then  sel <= "1110";
			d   <= "0000111";
		elsif cont < 300_000_000 * 15/16 then  
		if cont2 < 2_000_000 * 1/2 then    sel <= "1101";
			d   <= "0111111";
			cont2 := cont2 + 1;
		elsif cont2 < 2_000_000 * 2/2 then sel <= "1110";
			d   <= "0001111";
			cont2 := cont2 + 1;
		else 	
            cont2 := 0;
		end if;
		else                                   
        if cont2 < 2_000_000 * 1/3 then    sel <= "1011";
			d   <= "0111111";
			cont2 := cont2 + 1;
		elsif cont2 < 2_000_000 * 2/3 then sel <= "1101";
			d   <= "0111111";
			cont2 := cont2 + 1;
		elsif cont2 < 2_000_000 * 3/3 then sel <= "1110";
			d   <= "0011111";
				cont2 := cont2 + 1;
		else
            cont2 := 0;
    end if;	
	end if;
	end if;
	end process;
		

end Behavioral;
