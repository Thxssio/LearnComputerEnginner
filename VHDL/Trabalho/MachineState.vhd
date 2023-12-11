
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MachineState is
	Port ( clk : in  STD_LOGIC;
           btn_up, btn_down, btn_left, btn_right : in STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (3 downto 0);
           d : out  STD_LOGIC_VECTOR (6 downto 0));

end MachineState;

architecture Behavioral of MachineState is
	 type state_type is (INIT_STATE, MOVE_UP, MOVE_DOWN, MOVE_LEFT, MOVE_RIGHT);
    signal current_state, next_state : state_type;	
    signal cont : integer range 0 to 300000000;
    signal cont2: integer range 0 to 2000000;

begin
	process(clk)
    begin
        if rising_edge(clk) then
            -- Implementação da máquina de estados
            -- Lógica para os botões direcionais (podem ser diferentes dependendo do seu sistema)
            if btn_up = '1' then
                next_state <= MOVE_UP;
            elsif btn_down = '1' then
                next_state <= MOVE_DOWN;
            elsif btn_left = '1' then
                next_state <= MOVE_LEFT;
            elsif btn_right = '1' then
                next_state <= MOVE_RIGHT;
            else
                next_state <= current_state; -- Se nenhum botão pressionado, permanece no estado atual
            end if;

            -- Lógica de transição de estados
            case current_state is
                when INIT_STATE =>
                    -- Lógica para o estado inicial (defina aqui a lógica para sel e d inicial)
                    sel <= "0000";
                    d   <= "0111111";
                    next_state <= INIT_STATE; -- Permanece no estado inicial até um botão ser pressionado

                when MOVE_UP =>
                    -- Lógica para mover para cima
                    sel <= "1000";  -- Ativa o primeiro segmento para indicar movimento para cima
                    d <= "0000001"; -- Liga apenas o primeiro segmento
                    next_state <= INIT_STATE; -- Após o movimento, volta ao estado inicial

                when MOVE_DOWN =>
                    -- Lógica para mover para baixo
                    sel <= "0100";  -- Ativa o segundo segmento para indicar movimento para baixo
                    d <= "0000001"; -- Liga apenas o primeiro segmento
                    next_state <= INIT_STATE; -- Após o movimento, volta ao estado inicial

                when MOVE_LEFT =>
                    -- Lógica para mover para a esquerda
                    sel <= "0010";  -- Ativa o terceiro segmento para indicar movimento para esquerda
                    d <= "0000001"; -- Liga apenas o primeiro segmento
                    next_state <= INIT_STATE; -- Após o movimento, volta ao estado inicial

                when MOVE_RIGHT =>
                    -- Lógica para mover para a direita
                    sel <= "0001";  -- Ativa o quarto segmento para indicar movimento para direita
                    d <= "0000001"; -- Liga apenas o primeiro segmento
                    next_state <= INIT_STATE; -- Após o movimento, volta ao estado inicial

                when others =>
                    next_state <= INIT_STATE; -- Caso padrão, volta ao estado inicial
            end case;

            current_state <= next_state; -- Atualiza o estado atual para o próximo estado
        end if;
    end process;
end Behavioral;

