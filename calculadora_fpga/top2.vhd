library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top2 is
    Port (
        clk              : in  std_logic;
        reset            : in  std_logic;
        ps2_clk          : in  std_logic;
        ps2_data         : in  std_logic;
        LED              : out std_logic;
        LCD_DB           : out std_logic_vector(7 downto 0);
        RS               : out std_logic;
        RW               : out std_logic;
        OE               : out std_logic;
        resultado_pronto : out std_logic;
        erro_div_zero    : out std_logic
    );
end top;

architecture Behavioral of top2 is

    type state_type is (
        IDLE, INPUT_CHAR, WAIT_CHAR,
        DIG1, OPERADOR, DIG2,
        CALCULA, PREP_RESULT, PRINT_RESULT
    );
    signal state : state_type := IDLE;

    signal ascii_tecla  : std_logic_vector(7 downto 0);
    signal tecla_pronta : std_logic;
    signal tecla_lida   : std_logic := '0';

    signal op1, op2 : integer range 0 to 99 := 0;
    signal operador_ascii : std_logic_vector(7 downto 0) := (others => '0');

    signal iniciar_calc : std_logic := '0';
    signal calc_pronto  : std_logic := '0';
    signal resultado    : integer range 0 to 999 := 0;
    signal sinal_neg    : std_logic := '0';
    signal erro         : std_logic := '0';

    type conv_array_t is array(1 to 5) of std_logic_vector(7 downto 0);
    signal conv : conv_array_t;

    signal ascii_char : std_logic_vector(7 downto 0);
    signal print_char : std_logic := '0';

    signal char_index   : integer range 1 to 5 := 1;
    signal input_pos    : integer range 0 to 15 := 0;
    signal wait_counter : integer := 0;
    constant WAIT_LIMIT : integer := 700000;

begin

    teclado_inst : entity work.teclado_ps2
        port map (
            clk        => clk,
            reset      => reset,
            ps2_clk    => ps2_clk,
            ps2_data   => ps2_data,
            dado_ascii => ascii_tecla,
            pronto     => tecla_pronta
        );

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

    ascii_conv_inst : entity work.ascii_converter
        port map (
            valor     => resultado,
            negativo  => sinal_neg,
            ascii1    => conv(1),
            ascii2    => conv(2),
            ascii3    => conv(3),
            ascii4    => conv(4),
            ascii5    => conv(5)
        );

    lcd_driver_inst : entity work.final_lcd
        port map (
            ASCII_CHAR  => ascii_char,
            PRINT_CHAR  => print_char,
            LED         => LED,
            LCD_DB      => LCD_DB,
            RS          => RS,
            RW          => RW,
            CLK         => clk,
            OE          => OE,
            rst         => reset
        );

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= IDLE;
                tecla_lida <= '0';
                op1 <= 0; op2 <= 0;
                operador_ascii <= (others => '0');
                iniciar_calc <= '0';
                print_char <= '0';
                char_index <= 1;
                input_pos <= 0;
                wait_counter <= 0;

            else
                if tecla_pronta = '1' and tecla_lida = '0' then
                    tecla_lida <= '1';
                    ascii_char <= ascii_tecla;
                    print_char <= '1';
                    state <= INPUT_CHAR;

                    if state = IDLE or state = DIG1 then
                        if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                            op1 <= op1 * 10 + (to_integer(unsigned(ascii_tecla)) - 48);
                            state <= DIG1;
                        elsif ascii_tecla = x"2B" or ascii_tecla = x"2D" or ascii_tecla = x"2A" or ascii_tecla = x"2F" then
                            operador_ascii <= ascii_tecla;
                            state <= OPERADOR;
                        end if;
                    elsif state = OPERADOR or state = DIG2 then
                        if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                            op2 <= op2 * 10 + (to_integer(unsigned(ascii_tecla)) - 48);
                            state <= DIG2;
                        elsif ascii_tecla = x"3D" then
                            iniciar_calc <= '1';
                            state <= CALCULA;
                        end if;
                    end if;

                    if input_pos < 15 then
                        input_pos <= input_pos + 1;
                    end if;

                elsif tecla_pronta = '0' then
                    tecla_lida <= '0';
                end if;

                case state is
                    when INPUT_CHAR =>
                        print_char <= '0';
                        state <= IDLE;

                    when CALCULA =>
                        iniciar_calc <= '0';
                        if calc_pronto = '1' then
                            char_index <= 1;
                            wait_counter <= 0;
                            state <= PREP_RESULT;
                        end if;

                    when PREP_RESULT =>
                        input_pos <= 0; -- reset to start second line
                        state <= PRINT_RESULT;

                    when PRINT_RESULT =>
                        if erro = '1' then
                            case char_index is
                                when 1 => ascii_char <= x"45"; -- 'E'
                                when 2 => ascii_char <= x"52"; -- 'R'
                                when 3 => ascii_char <= x"52"; -- 'R'
                                when 4 => ascii_char <= x"4F"; -- 'O'
                                when 5 => ascii_char <= x"20"; -- ' '
                                when others => ascii_char <= x"20";
                            end case;
                        else
                            ascii_char <= conv(char_index);
                        end if;
                        print_char <= '1';
                        state <= WAIT_CHAR;

                    when WAIT_CHAR =>
                        print_char <= '0';
                        if wait_counter < WAIT_LIMIT then
                            wait_counter <= wait_counter + 1;
                        else
                            wait_counter <= 0;
                            if char_index < 5 then
                                char_index <= char_index + 1;
                                state <= PRINT_RESULT;
                            else
                                state <= IDLE;
                            end if;
                        end if;

                    when others => null;
                end case;
            end if;
        end if;
    end process;

    resultado_pronto <= calc_pronto;
    erro_div_zero <= erro;

end Behavioral;
