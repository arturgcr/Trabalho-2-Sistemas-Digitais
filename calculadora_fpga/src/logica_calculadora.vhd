library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity logica_calculadora is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        start       : in  std_logic;

        op1         : in  integer range 0 to 99;
        op2         : in  integer range 0 to 99;
        operador    : in  std_logic_vector(7 downto 0);

        resultado   : out integer range 0 to 999;
        negativo    : out std_logic;
        erro        : out std_logic;
        pronto      : out std_logic
    );
end logica_calculadora;

architecture Behavioral of logica_calculadora is
    signal resultado_int : integer range -999 to 999 := 0;
    signal pronto_reg    : std_logic := '0';
    signal erro_reg      : std_logic := '0';
    signal negativo_reg  : std_logic := '0';
    signal resultado_abs : integer range 0 to 999 := 0;
begin

    process(clk)
        variable numerador   : integer;
        variable denominador : integer;
        variable quociente   : integer;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                resultado_int <= 0;
                resultado_abs <= 0;
                pronto_reg <= '0';
                erro_reg <= '0';
                negativo_reg <= '0';

            elsif start = '1' then
                pronto_reg <= '0';
                erro_reg <= '0';
                negativo_reg <= '0';

                case operador is
                    when x"2B" =>  -- '+'
                        resultado_int <= (op1 + op2) * 10;

                    when x"2D" =>  -- '-'
                        resultado_int <= (op1 - op2) * 10;

                    when x"2A" =>  -- '*'
                        resultado_int <= (op1 * op2) * 10;

                    when x"2F" =>  -- '/'
                        if op2 = 0 then
                            resultado_int <= 0;
                            erro_reg <= '1';
                        else
                            numerador   := op1 * 10;
                            denominador := op2;
                            quociente   := 0;

                            -- loop limitado para evitar erro de síntese
                            for i in 0 to 99 loop
                                exit when numerador < denominador;
                                numerador := numerador - denominador;
                                quociente := quociente + 1;
                            end loop;

                            resultado_int <= quociente;
                        end if;

                    when others =>
                        resultado_int <= 0;
                        erro_reg <= '1';
                end case;

                if resultado_int < 0 then
                    negativo_reg <= '1';
                    resultado_abs <= -resultado_int;
                else
                    negativo_reg <= '0';
                    resultado_abs <= resultado_int;
                end if;

                pronto_reg <= '1';
            end if;
        end if;
    end process;

    -- Saídas
    resultado <= resultado_abs;
    negativo  <= negativo_reg;
    erro      <= erro_reg;
    pronto    <= pronto_reg;

end Behavioral;
