library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ascii_converter is
    Port (
        clk         : in  std_logic;                        -- Clock signal
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
    signal inteiro : integer range 0 to 99 := 0;
    signal decimal : integer range 0 to 9 := 0;
    signal dezena  : integer range 0 to 9 := 0;
    signal unidade : integer range 0 to 9 := 0;

    signal ascii1_reg : std_logic_vector(7 downto 0) := x"20";  -- Default to space
    signal ascii2_reg : std_logic_vector(7 downto 0) := x"30";  -- ASCII '0'
    signal ascii3_reg : std_logic_vector(7 downto 0) := x"30";
    signal ascii4_reg : std_logic_vector(7 downto 0) := x"2E";  -- ASCII '.'
    signal ascii5_reg : std_logic_vector(7 downto 0) := x"30";

begin
    -- Assign internal registers to outputs
    ascii1 <= ascii1_reg;
    ascii2 <= ascii2_reg;
    ascii3 <= ascii3_reg;
    ascii4 <= ascii4_reg;
    ascii5 <= ascii5_reg;

    process(clk)
        variable i : integer := 0;
    begin
        if rising_edge(clk) then
            i := 0;
            while ((i + 1) * 10 <= valor) loop
                i := i + 1;
            end loop;
            inteiro <= i;
            decimal <= valor - (i * 10);

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

            -- Update ASCII output registers
            if negativo = '1' then
                ascii1_reg <= x"2D"; -- '-'
            else
                ascii1_reg <= x"20"; -- space
            end if;

            ascii2_reg <= std_logic_vector(to_unsigned(dezena + 48, 8));
            ascii3_reg <= std_logic_vector(to_unsigned(unidade + 48, 8));
            ascii4_reg <= x"2E"; -- '.'
            ascii5_reg <= std_logic_vector(to_unsigned(decimal + 48, 8));
        end if;
    end process;
end Behavioral;
