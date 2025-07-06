library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity logica_calculadora is
    Port (
        clk       : in  std_logic;                          -- System clock
        reset     : in  std_logic;                          -- Asynchronous reset
        start     : in  std_logic;                          -- Start calculation
        op1       : in  integer range 0 to 99;              -- First operand
        op2       : in  integer range 0 to 99;              -- Second operand
        operador  : in  std_logic_vector(7 downto 0);       -- Operator in ASCII
        resultado : out integer range 0 to 999;             -- Result (absolute)
        negativo  : out std_logic;                          -- High if result is negative
        erro      : out std_logic;                          -- High if error (e.g., divide by zero)
        pronto    : out std_logic                           -- High when result is ready
    );
end logica_calculadora;

architecture Behavioral of logica_calculadora is
    -- Internal signals for result and control flags
    signal res       : integer := 0;
    signal pronto_r  : std_logic := '0';
    signal erro_r    : std_logic := '0';
    signal neg_r     : std_logic := '0';
    signal abs_res   : integer := 0;

    -- Look-up table for approximated inverse values (1024/op2)
    type inverse_array is array (1 to 99) of integer;
    constant inverse_table : inverse_array := (
        1024, 512, 341, 256, 205, 170, 146, 128, 114,  -- 1 to 9
        102, 93, 85, 79, 73, 68, 64, 60, 57, 54,       -- 10 to 19
        51, 49, 46, 44, 42, 41, 39, 38, 36, 35,        -- 20 to 29
        34, 33, 32, 30, 29, 28, 27, 26, 25, 24,        -- 30 to 39
        23, 22, 22, 21, 20, 20, 19, 18, 18, 17,        -- 40 to 49
        17, 16, 16, 15, 15, 15, 14, 14, 13, 13,        -- 50 to 59
        13, 12, 12, 12, 11, 11, 11, 11, 10, 10,        -- 60 to 69
        10, 10,  9,  9,  9,  9,  9,  9,  8,  8,        -- 70 to 79
         8,  8,  8,  7,  7,  7,  7,  7,  7,  6,        -- 80 to 89
         6,  6,  6,  6,  6,  6,  6,  5,  5, 5          -- 90 to 99
    );
begin

    -- Main calculation process
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

                -- Evaluate operation based on input operator
                case operador is
                    when x"2B" =>  -- '+' addition
                        temp := op1 + op2;

                    when x"2D" =>  -- '-' subtraction
                        temp := op1 - op2;

                    when x"2A" =>  -- '*' multiplication
                        temp := op1 * op2;

                    when x"2F" =>  -- '/' division
                        if op2 = 0 then
                            temp := 0;
                            erro_r <= '1'; -- divison by zero
                        else
                            inv := inverse_table(op2);        -- approximates 1024 / op2
                            mult := op1 * 10 * inv;           -- scale by 10 before divide
                            temp := mult / 1024;              -- final resut with one decimal
                        end if;

                    when others =>
                        temp := 0;
                        erro_r <= '1';  -- invalid operator
                end case;

                res <= temp;

                -- Handle sign and calculate absolute value
                if temp < 0 then
                    neg_r <= '1';
                    abs_res <= -temp;
                else
                    neg_r <= '0';
                    abs_res <= temp;
                end if;

                pronto_r <= '1'; -- result is raddy
            end if;
        end if;
    end process;

    -- Output assignments
    resultado <= abs_res;
    negativo  <= neg_r;
    erro      <= erro_r;
    pronto    <= pronto_r;

end Behavioral;
