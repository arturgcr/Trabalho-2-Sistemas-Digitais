library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        clk              : in  std_logic;
        reset            : in  std_logic;

        -- PS/2 interface
        ps2_clk          : in  std_logic;
        ps2_data         : in  std_logic;

        -- LCD interface
        lcd_rs           : out std_logic;
        lcd_rw           : out std_logic;
        lcd_enable       : out std_logic;
        lcd_data         : out std_logic_vector(7 downto 0);

        -- Debug/output
        erro_div_zero    : out std_logic;
        resultado_pronto : out std_logic
    );
end top;

architecture Behavioral of top is

    -- FSM States
    type state_type is (IDLE, DIG1, OPERADOR, DIG2, CALCULA, ESCREVE_LCD);
    signal state : state_type := IDLE;

    -- Teclado
    signal ascii_tecla  : std_logic_vector(7 downto 0);
    signal tecla_pronta : std_logic;

    -- Operandos
    signal op1, op2 : integer range 0 to 99 := 0;
    signal operador_ascii : std_logic_vector(7 downto 0) := (others => '0');

    -- Controle cálculo
    signal iniciar_calc : std_logic := '0';
    signal calc_pronto  : std_logic := '0';
    signal resultado    : integer range 0 to 999 := 0;
    signal sinal_neg    : std_logic := '0';
    signal erro         : std_logic := '0';

    -- ASCII resultado (intermediários do conversor)
    signal conv1, conv2, conv3, conv4, conv5 : std_logic_vector(7 downto 0);
    signal a1, a2, a3, a4, a5 : std_logic_vector(7 downto 0);

    -- Sinal para acionar LCD
    signal escrever_lcd : std_logic := '0';

begin

    -- Teclado PS/2
    teclado_inst : entity work.teclado_ps2
        port map (
            clk        => clk,
            reset      => reset,
            ps2_clk    => ps2_clk,
            ps2_data   => ps2_data,
            dado_ascii => ascii_tecla,
            pronto     => tecla_pronta
        );

    -- Lógica da calculadora
    calculadora_inst : entity work.logica_calculadora
        port map (
            clk       => clk,
            reset     => reset,
            start     => iniciar_calc,
            op1       => op1,
            op2       => op2,
            operador  => operador_ascii,
            resultado => resultado,
            negativo  => sinal_neg,
            erro      => erro,
            pronto    => calc_pronto
        );

    -- Conversor ASCII
    ascii_conv_inst : entity work.ascii_converter
        port map (
            valor     => resultado,
            negativo  => sinal_neg,
            ascii1    => conv1,
            ascii2    => conv2,
            ascii3    => conv3,
            ascii4    => conv4,
            ascii5    => conv5
        );

    -- LCD Controller
    lcd_ctrl_inst : entity work.lcd_controller
        port map (
            clk         => clk,
            reset       => reset,
            escrever    => escrever_lcd,
            ascii1      => a1,
            ascii2      => a2,
            ascii3      => a3,
            ascii4      => a4,
            ascii5      => a5,
            lcd_rs      => lcd_rs,
            lcd_rw      => lcd_rw,
            lcd_enable  => lcd_enable,
            lcd_data    => lcd_data
        );

    -- FSM Principal
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= IDLE;
                op1 <= 0;
                op2 <= 0;
                operador_ascii <= (others => '0');
                iniciar_calc <= '0';
                escrever_lcd <= '0';
                a1 <= (others => '0');
                a2 <= (others => '0');
                a3 <= (others => '0');
                a4 <= (others => '0');
                a5 <= (others => '0');

            elsif tecla_pronta = '1' then
                case state is
                    when IDLE =>
                        if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                            op1 <= to_integer(unsigned(ascii_tecla)) - 48;
                            state <= DIG1;
                        end if;

                    when DIG1 =>
                        if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                            op1 <= op1 * 10 + (to_integer(unsigned(ascii_tecla)) - 48);
                        elsif ascii_tecla = x"2B" or ascii_tecla = x"2D" or
                              ascii_tecla = x"2A" or ascii_tecla = x"2F" then
                            operador_ascii <= ascii_tecla;
                            state <= OPERADOR;
                        end if;

                    when OPERADOR =>
                        if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                            op2 <= to_integer(unsigned(ascii_tecla)) - 48;
                            state <= DIG2;
                        end if;

                    when DIG2 =>
                        if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                            op2 <= op2 * 10 + (to_integer(unsigned(ascii_tecla)) - 48);
                        elsif ascii_tecla = x"3D" then  -- '='
                            iniciar_calc <= '1';
                            state <= CALCULA;
                        end if;

                    when others =>
                        null;
                end case;

            elsif state = CALCULA then
                iniciar_calc <= '0';
                if calc_pronto = '1' then
                    if erro = '1' then
                        -- ERRO → mostrar mensagem fixa no LCD
                        a1 <= x"45"; -- 'E'
                        a2 <= x"52"; -- 'R'
                        a3 <= x"52"; -- 'R'
                        a4 <= x"4F"; -- 'O'
                        a5 <= x"20"; -- espaço
                    else
                        -- Resultado convertido
                        a1 <= conv1;
                        a2 <= conv2;
                        a3 <= conv3;
                        a4 <= conv4;
                        a5 <= conv5;
                    end if;
                    escrever_lcd <= '1';
                    state <= ESCREVE_LCD;
                end if;

            elsif state = ESCREVE_LCD then
                escrever_lcd <= '0';
                state <= IDLE;
            end if;
        end if;
    end process;

    resultado_pronto <= calc_pronto;
    erro_div_zero <= erro;

end Behavioral;
