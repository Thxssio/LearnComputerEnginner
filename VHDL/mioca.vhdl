library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mioca is
    Port (
        clk  : in  STD_LOGIC;
        sel  : out STD_LOGIC_VECTOR (3 downto 0);
        disp : out STD_LOGIC_VECTOR (3 downto 0)
    );
end mioca;

architecture Behavioral of mioca is
    constant tempo : integer := 18750000;

begin

process(clk)
    variable cont : integer range 0 to 300e6 := 0;
begin
    if rising_edge(clk) then
        if cont > 0 then
            cont := cont - 1;
        else
            cont := tempo * 4; -- Reinicia o contador
        end if;

        if cont >= tempo * 4 then
            disp <= "1000"; -- a
            sel <= "1110";     -- disp 1
        elsif cont >= tempo * 3 then
            disp <= "0100"; -- b
            sel <= "1110";     -- disp 1
        elsif cont >= tempo * 2 then
            disp <= "0010"; -- c
            sel <= "1110";     -- disp 1
        elsif cont >= tempo then
            disp <= "0001"; -- d
            sel <= "1110";     -- disp 1
        end if;
    end if;
end process;

end Behavioral;

