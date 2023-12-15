library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Random_Number_Generator is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        button : in STD_LOGIC;
        random_number : out STD_LOGIC_VECTOR(3 downto 0)
    );
end Random_Number_Generator;

architecture Behavioral of Random_Number_Generator is
    signal counter : unsigned(3 downto 0) := (others => '0');
    signal start : boolean := false;
    signal button_debounced : STD_LOGIC := '0';
    signal reset_debounced : STD_LOGIC := '0';
begin
    debounce_button_inst : entity work.Debounce_Button
        generic map (
            max => 10000000  -- 10 milhões de clocks = 100 ms com clock de 100 MHz
        )
        port map (
            clk => clk,
            button => button,
            reset => reset,
            result => button_debounced  -- Alterando para button_debounced
        );

    process(clk)
    begin
        if rising_edge(clk) then
            reset_debounced <= reset;

            if reset_debounced = '1' then
                counter <= (others => '0');
                start <= false;
            else
                if button_debounced = '1' then
                    start <= true;
                end if;

                if start = true then
                    if counter = 15 then
                        counter <= (others => '0');
                    else
                        counter <= counter + 1;
                    end if;
                end if;

                if start = true and counter < 15 then
                    random_number <= std_logic_vector(to_unsigned(to_integer(counter), random_number'length));
                else
                    random_number <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end Behavioral;




