library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debounce_Button is
    generic (
        max : integer := 10000000  -- Valor máximo para o contador
    );
    Port (
        clk : in STD_LOGIC;            -- Clock de entrada
        button : in STD_LOGIC;         -- Sinal do botão
        reset_button : in STD_LOGIC;   -- Sinal do botão de reset
        result : out STD_LOGIC;        -- Sinal de saída após debounce do botão principal
        reset_out : out STD_LOGIC      -- Sinal de saída após debounce do botão de reset
    );
end Debounce_Button;

architecture Behavioral of Debounce_Button is
    signal button_reg, button_d1, button_d2, reset_reg, reset_d1, reset_d2 : STD_LOGIC := '0';
    signal button_counter, reset_counter : integer range 0 to max := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Registrando o estado do botão e do botão de reset
            button_reg <= button;
            button_d1 <= button_reg;
            button_d2 <= button_d1;

            reset_reg <= reset_button;
            reset_d1 <= reset_reg;
            reset_d2 <= reset_d1;

            -- Lógica de debounce para o botão principal
            if button = button_d1 and button = button_d2 then
                if button_counter < max then
                    button_counter <= button_counter + 1;
                else
                    button_counter <= 0;
                    result <= button;  -- Saída do botão após debounce
                end if;
            else
                button_counter <= 0;
            end if;

            -- Lógica de debounce para o botão de reset
            if reset_button = reset_d1 and reset_button = reset_d2 then
                if reset_counter < max then
                    reset_counter <= reset_counter + 1;
                else
                    reset_counter <= 0;
                    reset_out <= reset_button;  -- Saída do botão de reset após debounce
                end if;
            else
                reset_counter <= 0;
            end if;
        end if;
    end process;
end Behavioral;

