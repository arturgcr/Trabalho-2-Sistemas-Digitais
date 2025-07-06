library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ascii_converter is
    Port (
        valor       : in  integer range 0 to 999;           -- Input value to be converted
        negativo    : in  std_logic;                        -- Signal for negative number

        ascii1      : out std_logic_vector(7 downto 0);     -- Sign character ('-' or space)
        ascii2      : out std_logic_vector(7 downto 0);     -- Tens digit ASCII
        ascii3      : out std_logic_vector(7 downto 0);     -- Units digit ASCII
        ascii4      : out std_logic_vector(7 downto 0);     -- Decimal point '.'
        ascii5      : out std_logic_vector(7 downto 0)      -- Decimal part ASCII
    );
end ascii_converter;

architecture Behavioral of ascii_converter is
    signal inteiro : integer range 0 to 99 := 0;            -- Whole number part
    signal decimal : integer range 0 to 9 := 0;             -- Decimal part (1 digit)
    signal dezena  : integer range 0 to 9 := 0;             -- Tens digit
    signal unidade : integer range 0 to 9 := 0;             -- Units digit
begin
    process(valor, negativo)
        variable i : integer := 0;
    begin
        -- Estimate valor / 10 using repeated subtractions
        i := 0;
        while ((i + 1) * 10 <= valor) loop
            i := i + 1;
        end loop;
        inteiro <= i;                        -- The full part, up to 99
        decimal <= valor - (i * 10);         -- Decimal digit is the remainr

        -- Extract tens and units from the whole part
        if i >= 90 then
            dezena <= 9; unidade <= i - 90;
        elsif i >= 80 then
            dezena <= 8; unidade <= i - 80;
        elsif i >= 70 then
            dezena <= 7; unidade <= i - 70;
        elsif i >= 60 then
            dezena <= 6; unidade <= i - 60;
        elsif i >= 50 then
            dezena <= 5; unidade <= i - 50;
        elsif i >= 40 then
            dezena <= 4; unidade <= i - 40;
        elsif i >= 30 then
            dezena <= 3; unidade <= i - 30;
        elsif i >= 20 then
            dezena <= 2; unidade <= i - 20;
        elsif i >= 10 then
            dezena <= 1; unidade <= i - 10;
        else
            dezena <= 0; unidade <= i;
        end if;

        -- ascii1 holds sign: '-' if negative, space otherwise
        if negativo = '1' then
            ascii1 <= x"2D"; -- '-'
        else
            ascii1 <= x"20"; -- whitespace
        end if;

        -- Convert tens and units to ASCII digits
        ascii2 <= std_logic_vector(to_unsigned(dezena + 48, 8));
        ascii3 <= std_logic_vector(to_unsigned(unidade + 48, 8));

        -- ascii4 is decimal point
        ascii4 <= x"2E";  -- '.'

        -- ascii5: last is de decimal digit
        ascii5 <= std_logic_vector(to_unsigned(decimal + 48, 8));
    end process;
end Behavioral;
