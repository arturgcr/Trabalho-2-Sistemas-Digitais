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
    signal res_int   : signed(9 downto 0) := (others => '0');
    signal pronto_r  : std_logic := '0';
    signal erro_r    : std_logic := '0';
    signal neg_r     : std_logic := '0';
    signal res_abs   : unsigned(9 downto 0) := (others => '0');
begin

    process(clk)
        variable tmp : signed(9 downto 0);
    begin
        if rising_edge(clk) then
            if reset = '1' then
                res_int   <= (others => '0');
                res_abs   <= (others => '0');
                pronto_r  <= '0';
                erro_r    <= '0';
                neg_r     <= '0';

            elsif start = '1' then
                pronto_r <= '0';
                erro_r   <= '0';
                neg_r    <= '0';

                case operador is
                    when x"2B" =>  -- '+'
                        tmp := resize(to_signed(op1 + op2, 10) * 10, 10);

                    when x"2D" =>  -- '-'
                        tmp := resize(to_signed(op1 - op2, 10) * 10, 10);

                    when others =>
                        tmp := (others => '0');
                        erro_r <= '1';
                end case;

                res_int <= tmp;

                if tmp < 0 then
                    neg_r <= '1';
                    res_abs <= unsigned(-tmp);
                else
                    neg_r <= '0';
                    res_abs <= unsigned(tmp);
                end if;

                pronto_r <= '1';
            end if;
        end if;
    end process;

    -- Saídas
    resultado <= to_integer(res_abs);
    negativo  <= neg_r;
    erro      <= erro_r;
    pronto    <= pronto_r;

end Behavioral;
