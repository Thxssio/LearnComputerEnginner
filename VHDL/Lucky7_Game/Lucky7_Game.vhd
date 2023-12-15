library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Lucky7_Game is 
    Port (
        clk : in STD_LOGIC;            -- Clock input
        reset : in STD_LOGIC; 
        button : in STD_LOGIC; 
        seven_seg : out STD_LOGIC_VECTOR(6 downto 0);  -- Seven-segment display output
        win : out STD_LOGIC;           -- Win signal output
        led1 : out STD_LOGIC;          -- Output for LED 1
        led2 : out STD_LOGIC;          -- Output for LED 2
        led3 : out STD_LOGIC;          -- Output for LED 3
        led4 : out STD_LOGIC;          -- Output for LED 4
        led5 : out STD_LOGIC;          -- Output for LED 5
        led6 : out STD_LOGIC;          -- Output for LED 6
        led7 : out STD_LOGIC;          -- Output for LED 7
        led8 : out STD_LOGIC           -- Output for LED 8
    );
end Lucky7_Game;

architecture Behavioral of Lucky7_Game is 
    signal debounced_button : std_logic;  -- Sinal do botão após debounce
    signal display_value : integer range 0 to 15 := 0;
    signal seven_seg_output : STD_LOGIC_VECTOR(6 downto 0);
    signal led_enable : STD_LOGIC := '0';
    signal reset_debounced : std_logic := '0'; 
    signal rand_num : unsigned(3 downto 0) := (others => '0'); -- Random number signal
    
    component Debounce_Button
        generic (max : integer := 10000000);
        Port (clk : in STD_LOGIC;
              button : in STD_LOGIC;
              reset_button : in STD_LOGIC;
              result : out STD_LOGIC;
              reset_out : out STD_LOGIC -- Sinal de saída após debounce do botão de reset
        );
    end component;

begin
    -- Instanciando o módulo de debounce para tratar o botão e o botão de reset
    debounce_button_instance: Debounce_Button
        generic map (
            max => 10000000  -- Pode alterar o valor se necessário
        )
        port map (
            clk => clk,
            button => button,
            reset_button => reset,
            result => debounced_button,
            reset_out => reset_debounced
        );

    -- Random number generator process
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_debounced = '1' then
                rand_num <= (others => '0');
                led_enable <= '0';
            elsif debounced_button = '1' then
                rand_num <= rand_num + 1;
                if rand_num = "1001" then  -- Quando chega a 10 (1001 em binário), resetar para 0
                    rand_num <= (others => '0');
                end if;
            end if;
        end if;
    end process;

    -- Controle dos LEDs
    process(rand_num)
    begin
        case to_integer(rand_num) is
            when 7 =>
                -- Ligar todos os LEDs quando for 7
                led1 <= '1';
                led2 <= '1';
                led3 <= '1';
                led4 <= '1';
                led5 <= '1';
                led6 <= '1';
                led7 <= '1';
                led8 <= '1';
            when others =>
                led1 <= '0';
                led2 <= '0';
                led3 <= '0';
                led4 <= '0';
                led5 <= '0';
                led6 <= '0';
                led7 <= '0';
                led8 <= '0';
        end case;
    end process;

    -- Display the random number
    process(rand_num)
    begin
        case to_integer(rand_num) is
            when 0 => seven_seg_output <= "0000001";  -- Display 0
            when 1 => seven_seg_output <= "1001111";  -- Display 1
            when 2 => seven_seg_output <= "0010010";  -- Display 2
            when 3 => seven_seg_output <= "0000110";  -- Display 3
            when 4 => seven_seg_output <= "1001100";  -- Display 4
            when 5 => seven_seg_output <= "0100100";  -- Display 5
            when 6 => seven_seg_output <= "0100000";  -- Display 6
            when 7 => seven_seg_output <= "0001111";  -- Display 7
            when 8 => seven_seg_output <= "0000000";  -- Display 8
            when 9 => seven_seg_output <= "0000100";  -- Display 9
            when others =>
                seven_seg_output <= "1111111"; 
        end case;
    end process;

    seven_seg <= seven_seg_output;  -- Conexão da saída do display ao componente físico
    -- Saída de vitória (supondo que será definida em algum estado específico)
    win <= '0'; 
end Behavioral;
