library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fumiga is
    Port (
        clk  : in  STD_LOGIC;
        sel  : out STD_LOGIC_VECTOR (3 downto 0);
        disp : out STD_LOGIC_VECTOR (6 downto 0)
    );
end fumiga;

architecture Behavioral of fumiga is
    constant tempo : integer := 18750000;

begin

process(clk)
    variable cont : integer range 0 to 300e6 := 0;
begin
    if rising_edge(clk) then
        if cont > 0 then
            cont := cont - 1;
        else
            cont := tempo * 16; -- Reinicia o contador
        end if;

        if cont >= tempo * 16 then
            disp <= "1111110"; -- a
            sel <= "1101";     -- disp 2
        elsif cont >= tempo * 15 then
            disp <= "1011111"; -- f
            sel <= "1101";     -- disp 2
        elsif cont >= tempo * 14 then
            disp <= "1101111"; -- e
            sel <= "1101";     -- disp 2
        elsif cont >= tempo * 13 then
            disp <= "1111011"; -- c
            sel <= "1011";     -- disp 3
        elsif cont >= tempo * 12 then
            disp <= "1111101"; -- b
            sel <= "1011";     -- disp 3
        elsif cont >= tempo * 11 then
            disp <= "1111110"; -- a
            sel <= "1011";     -- disp 3
        elsif cont >= tempo * 10 then
            disp <= "1111110"; -- a
            sel <= "0111";     -- disp 4
        elsif cont >= tempo * 9 then
            disp <= "1011111"; -- f
            sel <= "0111";     -- disp 4
        elsif cont >= tempo * 8 then
            disp <= "1101111"; -- e
            sel <= "0111";     -- disp 4
        elsif cont >= tempo * 7 then
            disp <= "1110111"; -- d
            sel <= "0111";     -- disp 4
        elsif cont >= tempo * 6 then
            disp <= "1110111"; -- d
            sel <= "1011";     -- disp 3
        elsif cont >= tempo * 5 then
            disp <= "1110111"; -- d
            sel <= "1101";     -- disp 2
        elsif cont >= tempo * 4 then
            disp <= "1110111"; -- d
            sel <= "1110";     -- disp 1
        elsif cont >= tempo * 3 then
            disp <= "1111011"; -- c
            sel <= "1110";     -- disp 1
        elsif cont >= tempo * 2 then
            disp <= "1111101"; -- b
            sel <= "1110";     -- disp 1
        elsif cont >= tempo then
            disp <= "1111110"; -- a
            sel <= "1110";     -- disp 1
        end if;
    end if;
end process;

end Behavioral;
