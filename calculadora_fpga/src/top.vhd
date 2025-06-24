library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        clk               : in  std_logic;                        -- system clock
        reset             : in  std_logic;                        -- asynchronous reset
        dado_ascii        : in  std_logic_vector(7 downto 0);     -- ASCII character from keyboard
        pronto            : in  std_logic;                        -- high when a new character is available

        ascii_result1     : out std_logic_vector(7 downto 0);     -- sign or digit
        ascii_result2     : out std_logic_vector(7 downto 0);     -- digit
        ascii_result3     : out std_logic_vector(7 downto 0);     -- '.' or digit
        ascii_result4     : out std_logic_vector(7 downto 0);     -- digit or operator
        ascii_result5     : out std_logic_vector(7 downto 0);     -- operator (if not used in 4)

        resultado_pronto  : out std_logic;                        -- high when result is ready
        erro_div_zero     : out std_logic                         -- high if division by zero occurs
    );
end top;

architecture Behavioral of top is

    -- Define FSM states
    type state_type is (IDLE, DIG1, OPERADOR, DIG2, CALCULA, MOSTRA);
    signal state : state_type := IDLE;

    -- Operands and operator
    signal op1, op2 : integer range 0 to 99 := 0;
    signal s_operador : std_logic_vector(7 downto 0) := (others => '0');  -- renamed to avoid conflict

    -- Result as integer with fixed-point precision (multiplied by 10)
    signal resultado : integer range -999 to 999 := 0;
    signal negativo  : std_logic := '0';

    -- Parts of the result
    signal inteiro : integer range 0 to 99;
    signal decimal : integer range 0 to 9;

begin

    -- FSM process: handles input parsing, calculation, and output formatting
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                -- Reset all values and return to IDLE state
                state <= IDLE;
                op1 <= 0;
                op2 <= 0;
                resultado <= 0;
                s_operador <= (others => '0');
                ascii_result1 <= x"20"; -- space
                ascii_result2 <= x"20";
                ascii_result3 <= x"20";
                ascii_result4 <= x"20";
                ascii_result5 <= x"20";
                resultado_pronto <= '0';
                erro_div_zero <= '0';
                negativo <= '0';

            elsif pronto = '1' then
                case state is

                    when IDLE =>
                        -- Start receiving first operand
                        if dado_ascii >= x"30" and dado_ascii <= x"39" then
                            op1 <= to_integer(unsigned(dado_ascii)) - 48;
                            state <= DIG1;
                        end if;

                    when DIG1 =>
                        -- Continue reading digits of first operand
                        if dado_ascii >= x"30" and dado_ascii <= x"39" then
                            op1 <= op1 * 10 + (to_integer(unsigned(dado_ascii)) - 48);
                        elsif dado_ascii = x"2B" or dado_ascii = x"2D" or dado_ascii = x"2A" or dado_ascii = x"2F" then
                            s_operador <= dado_ascii;
                            state <= OPERADOR;
                        end if;

                    when OPERADOR =>
                        -- Start receiving second operand
                        if dado_ascii >= x"30" and dado_ascii <= x"39" then
                            op2 <= to_integer(unsigned(dado_ascii)) - 48;
                            state <= DIG2;
                        end if;

                    when DIG2 =>
                        -- Continue reading digits of second operand
                        if dado_ascii >= x"30" and dado_ascii <= x"39" then
                            op2 <= op2 * 10 + (to_integer(unsigned(dado_ascii)) - 48);
                        elsif dado_ascii = x"3D" then  -- '='
                            state <= CALCULA;
                        end if;

                    when CALCULA =>
                        -- Perform the selected operation (fixed point: multiply result by 10)
                        erro_div_zero <= '0';
                        negativo <= '0';
                        case s_operador is
                            when x"2B" => resultado <= (op1 + op2) * 10;      -- '+'
                            when x"2D" => resultado <= (op1 - op2) * 10;      -- '-'
                            when x"2A" => resultado <= (op1 * op2) * 10;      -- '*'
                            when x"2F" =>
                                if op2 = 0 then
                                    erro_div_zero <= '1';
                                    resultado <= 0;
                                else
                                    resultado <= (op1 * 10) / op2;           -- '/' fixed point
                                end if;
                            when others => resultado <= 0;
                        end case;

                        if resultado < 0 then
                            negativo <= '1';
                            resultado <= -resultado;
                        end if;
                        state <= MOSTRA;

                    when MOSTRA =>
                        -- Convert fixed-point result to ASCII characters
                        inteiro <= resultado / 10;
                        decimal <= resultado mod 10;

                        if negativo = '1' then
                            ascii_result1 <= x"2D"; -- '-'
                        else
                            ascii_result1 <= x"20"; -- space
                        end if;

                        ascii_result2 <= std_logic_vector(to_unsigned((inteiro / 10) + 48, 8));
                        ascii_result3 <= std_logic_vector(to_unsigned((inteiro mod 10) + 48, 8));
                        ascii_result4 <= x"2E"; -- '.'
                        ascii_result5 <= std_logic_vector(to_unsigned(decimal + 48, 8));

                        resultado_pronto <= '1';
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;

end Behavioral;