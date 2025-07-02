library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity logica_calculadora is
    Port (
        clk       : in  std_logic;
        reset     : in  std_logic;
        start     : in  std_logic;
        op1       : in  integer range 0 to 99;
        op2       : in  integer range 0 to 99;
        operador  : in  std_logic_vector(7 downto 0);
        resultado : out integer range 0 to 999;
        negativo  : out std_logic;
        erro      : out std_logic;
        pronto    : out std_logic
    );
end logica_calculadora;

architecture Behavioral of logica_calculadora is
    signal res       : integer := 0;
    signal pronto_r  : std_logic := '0';
    signal erro_r    : std_logic := '0';
    signal neg_r     : std_logic := '0';
    signal abs_res   : integer := 0;

    type inverse_array is array (1 to 99) of integer;
    constant inverse_table : inverse_array := (
        1024, 512, 341, 256, 205, 170, 146, 128, 114,  -- 1 a 9
        102, 93, 85, 79, 73, 68, 64, 60, 57, 54,       -- 10 a 19
        51, 49, 46, 44, 42, 41, 39, 38, 36, 35,        -- 20 a 29
        34, 33, 32, 30, 29, 28, 27, 26, 25, 24,        -- 30 a 39
        23, 22, 22, 21, 20, 20, 19, 18, 18, 17,        -- 40 a 49
        17, 16, 16, 15, 15, 15, 14, 14, 13, 13,        -- 50 a 59
        13, 12, 12, 12, 11, 11, 11, 11, 10, 10,        -- 60 a 69
        10, 10,  9,  9,  9,  9,  9,  9,  8,  8,        -- 70 a 79
         8,  8,  8,  7,  7,  7,  7,  7,  7,  6,        -- 80 a 89
         6,  6,  6,  6,  6,  6,  6,  5,  5, 5             -- 90 a 99
    );
begin

    process(clk)
        variable temp : integer := 0;
        variable mult : integer := 0;
        variable inv  : integer := 0;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                res       <= 0;
                pronto_r  <= '0';
                erro_r    <= '0';
                neg_r     <= '0';
                abs_res   <= 0;

            elsif start = '1' then
                pronto_r  <= '0';
                erro_r    <= '0';
                neg_r     <= '0';
                res       <= 0;
                temp := 0;

                case operador is
                    when x"2B" =>  -- '+'
                        temp := op1 + op2;

                    when x"2D" =>  -- '-'
                        temp := op1 - op2;

                    when x"2A" =>  -- '*'
                        temp := op1 * op2;

                    when x"2F" =>  -- '/'
                        if op2 = 0 then
                            temp := 0;
                            erro_r <= '1';
                        else
                            inv := inverse_table(op2);  -- aproximação de 1024 / op2
                            mult := op1 * 10 * inv;
                            temp := mult / 1024;         -- simula divisão com 1 casa decimal
                        end if;

                    when others =>
                        temp := 0;
                        erro_r <= '1';
                end case;

                res <= temp;

                if temp < 0 then
                    neg_r <= '1';
                    abs_res <= -temp;
                else
                    neg_r <= '0';
                    abs_res <= temp;
                end if;

                pronto_r <= '1';
            end if;
        end if;
    end process;

    resultado <= abs_res;
    negativo  <= neg_r;
    erro      <= erro_r;
    pronto    <= pronto_r;

end Behavioral;
