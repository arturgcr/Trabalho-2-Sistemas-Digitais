library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        ps2_clk     : in  std_logic;
        ps2_data    : in  std_logic;
        lcd_rs      : out std_logic;
        lcd_rw      : out std_logic;
        lcd_enable  : out std_logic;
        lcd_data    : out std_logic_vector(7 downto 0);
        resultado_pronto : out std_logic;
        erro_div_zero    : out std_logic
    );
end top;

architecture Behavioral of top is

    -- State machine definition
    type state_type is (IDLE, DIG1, OPERADOR, DIG2, CALCULA, ESCREVE_LCD);
    signal state : state_type := IDLE;

    -- Signals for keyboard input and ASCII decoding
    signal ascii_tecla  : std_logic_vector(7 downto 0);
    signal tecla_pronta : std_logic;
    signal tecla_lida   : std_logic := '0';

    -- Operands and operator
    signal op1, op2 : integer range 0 to 99 := 0;
    signal operador_ascii : std_logic_vector(7 downto 0) := (others => '0');

    -- Calculation control
    signal iniciar_calc : std_logic := '0';
    signal calc_pronto  : std_logic := '0';
    signal resultado    : integer range 0 to 999 := 0;
    signal sinal_neg    : std_logic := '0';
    signal erro         : std_logic := '0';

    -- ASCII representation of result
    signal conv1, conv2, conv3, conv4, conv5 : std_logic_vector(7 downto 0);
    signal a1, a2, a3, a4, a5 : std_logic_vector(7 downto 0);

    -- LCD writing logic
    signal escrever_lcd : std_logic := '0';
    signal lcd_wait_counter : integer range 0 to 500000 := 0;
    constant LCD_WAIT_TIME  : integer := 250000;

    -- Individual digits for operands
    signal op1_ascii1, op1_ascii2 : std_logic_vector(7 downto 0);
    signal op2_ascii1, op2_ascii2 : std_logic_vector(7 downto 0);
    signal op1_dig_count, op2_dig_count : integer range 0 to 2 := 0;

begin

    -- Keyboard input module instance
    teclado_inst : entity work.teclado_ps2
        port map (
            clk        => clk,
            reset      => reset,
            ps2_clk    => ps2_clk,
            ps2_data   => ps2_data,
            dado_ascii => ascii_tecla,
            pronto     => tecla_pronta
        );

    -- Calculator logic instance
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

    -- Result to ASCII converter
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

    -- LCD controller instance
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

    -- Main FSM process
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                -- Reset all states and variables
                state <= IDLE;
                op1 <= 0; op2 <= 0;
                operador_ascii <= (others => '0');
                iniciar_calc <= '0';
                escrever_lcd <= '0';
                lcd_wait_counter <= 0;
                tecla_lida <= '0';

                -- Clear LCD output buffer
                a1 <= (others => '0'); a2 <= (others => '0');
                a3 <= (others => '0'); a4 <= (others => '0');
                a5 <= (others => '0');

                op1_dig_count <= 0; op2_dig_count <= 0;

            else
                if tecla_pronta = '1' and tecla_lida = '0' then
                    tecla_lida <= '1';

                    case state is
                        when IDLE =>
                            -- Wait for first digit of op1
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op1 <= to_integer(unsigned(ascii_tecla)) - 48;
                                op1_ascii1 <= ascii_tecla;
                                op1_dig_count <= 1;
                                a1 <= ascii_tecla;
                                a2 <= x"20"; a3 <= x"20"; a4 <= x"20"; a5 <= x"20";
                                escrever_lcd <= '1';
                                lcd_wait_counter <= LCD_WAIT_TIME;
                                state <= DIG1;
                            end if;

                        when DIG1 =>
                            -- Append second digit or get operator
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op1 <= op1 * 10 + (to_integer(unsigned(ascii_tecla)) - 48);
                                op1_ascii2 <= ascii_tecla;
                                op1_dig_count <= 2;
                                a1 <= op1_ascii1;
                                a2 <= ascii_tecla;
                                escrever_lcd <= '1';
                                lcd_wait_counter <= LCD_WAIT_TIME;
                            elsif ascii_tecla = x"2B" or ascii_tecla = x"2D" or ascii_tecla = x"2A" or ascii_tecla = x"2F" then
                                operador_ascii <= ascii_tecla;
                                a3 <= ascii_tecla;
                                escrever_lcd <= '1';
                                lcd_wait_counter <= LCD_WAIT_TIME;
                                state <= OPERADOR;
                            end if;

                        when OPERADOR =>
                            -- Wait for first digit of second operand
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op2 <= to_integer(unsigned(ascii_tecla)) - 48;
                                op2_ascii1 <= ascii_tecla;
                                op2_dig_count <= 1;
                                a4 <= ascii_tecla;
                                escrever_lcd <= '1';
                                lcd_wait_counter <= LCD_WAIT_TIME;
                                state <= DIG2;
                            end if;

                        when DIG2 =>
                            -- Receiv da second digit or '='
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op2 <= op2 * 10 + (to_integer(unsigned(ascii_tecla)) - 48);
                                op2_ascii2 <= ascii_tecla;
                                op2_dig_count <= 2;
                                a4 <= op2_ascii1;
                                a5 <= ascii_tecla;
                                escrever_lcd <= '1';
                                lcd_wait_counter <= LCD_WAIT_TIME;
                            elsif ascii_tecla = x"3D" then
                                iniciar_calc <= '1';
                                state <= CALCULA;
                            end if;

                        when others => null;
                    end case;

                elsif tecla_pronta = '0' then
                    -- Reset read flag when key released
                    tecla_lida <= '0';
                end if;

                case state is
                    when CALCULA =>
                        -- Start calculation
                        if iniciar_calc = '1' then
                            iniciar_calc <= '0';
                        end if;

                        -- Wait for calc done
                        if calc_pronto = '1' then
                            if erro = '1' then
                                -- Show "ERROR" on LCD
                                a1 <= x"45"; a2 <= x"52"; a3 <= x"52";
                                a4 <= x"4F"; a5 <= x"20";
                            else
                                -- Show the result ascii
                                a1 <= conv1; a2 <= conv2;
                                a3 <= conv3; a4 <= conv4; a5 <= conv5;
                            end if;
                            escrever_lcd <= '1';
                            lcd_wait_counter <= LCD_WAIT_TIME;
                            state <= ESCREVE_LCD;
                        end if;

                    when ESCREVE_LCD =>
                        escrever_lcd <= '0';
                        if lcd_wait_counter > 0 then
                            -- Wait until LCD delay is over
                            lcd_wait_counter <= lcd_wait_counter - 1;
                        else
                            -- Go bak to IDLE
                            state <= IDLE;
                        end if;

                    when others => null;
                end case;
            end if;
        end if;
    end process;

    -- Output status signals
    resultado_pronto <= calc_pronto;
    erro_div_zero <= erro;

end Behavioral;
