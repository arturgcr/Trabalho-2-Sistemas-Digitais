library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lcd_controller is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        escrever    : in  std_logic;
        ascii1      : in  std_logic_vector(7 downto 0);
        ascii2      : in  std_logic_vector(7 downto 0);
        ascii3      : in  std_logic_vector(7 downto 0);
        ascii4      : in  std_logic_vector(7 downto 0);
        ascii5      : in  std_logic_vector(7 downto 0);

        lcd_rs      : out std_logic;
        lcd_rw      : out std_logic;
        lcd_enable  : out std_logic;
        lcd_data    : out std_logic_vector(7 downto 0)
    );
end lcd_controller;

architecture Behavioral of lcd_controller is

    type estado_type is (
        INIT_0, INIT_1, INIT_2, INIT_3,
        SET_CURSOR,
        WRITE_1, WRITE_2, WRITE_3, WRITE_4, WRITE_5,
        HOLD
    );
    signal estado     : estado_type := INIT_0;
    signal contador   : integer range 0 to 50000 := 0;  -- delay interno
    signal enable_reg : std_logic := '0';
    signal rs_reg     : std_logic := '0';
    signal data_reg   : std_logic_vector(7 downto 0) := (others => '0');

begin

    lcd_enable <= enable_reg;
    lcd_rs <= rs_reg;
    lcd_rw <= '0';  -- sempre escrita
    lcd_data <= data_reg;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                estado <= INIT_0;
                contador <= 0;
                enable_reg <= '0';
                data_reg <= (others => '0');

            elsif contador > 0 then
                contador <= contador - 1;
                enable_reg <= '0';

            else
                case estado is

                    when INIT_0 =>
                        data_reg <= x"38";  -- 2 linhas, 5x8
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 10000;
                        estado <= INIT_1;

                    when INIT_1 =>
                        data_reg <= x"0C";  -- display ON, cursor OFF
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 10000;
                        estado <= INIT_2;

                    when INIT_2 =>
                        data_reg <= x"01";  -- clear display
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 20000;
                        estado <= INIT_3;

                    when INIT_3 =>
                        if escrever = '1' then
                            estado <= SET_CURSOR;
                        end if;

                    when SET_CURSOR =>
                        data_reg <= x"80";  -- cursor posição 0
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 10000;
                        estado <= WRITE_1;

                    when WRITE_1 =>
                        data_reg <= ascii1;
                        rs_reg <= '1';
                        enable_reg <= '1';
                        contador <= 5000;
                        estado <= WRITE_2;

                    when WRITE_2 =>
                        data_reg <= ascii2;
                        rs_reg <= '1';
                        enable_reg <= '1';
                        contador <= 5000;
                        estado <= WRITE_3;

                    when WRITE_3 =>
                        data_reg <= ascii3;
                        rs_reg <= '1';
                        enable_reg <= '1';
                        contador <= 5000;
                        estado <= WRITE_4;

                    when WRITE_4 =>
                        data_reg <= ascii4;
                        rs_reg <= '1';
                        enable_reg <= '1';
                        contador <= 5000;
                        estado <= WRITE_5;

                    when WRITE_5 =>
                        data_reg <= ascii5;
                        rs_reg <= '1';
                        enable_reg <= '1';
                        contador <= 5000;
                        estado <= HOLD;

                    when HOLD =>
                        if escrever = '0' then
                            estado <= INIT_3;
                        end if;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
