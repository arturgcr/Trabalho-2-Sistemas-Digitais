architecture Behavioral of lcd_controller is

    type estado_type is (
        INIT_0, INIT_1, INIT_2, INIT_3,
        SET_CURSOR,
        WRITE_PREP, WRITE_PULSE, WRITE_WAIT,
        HOLD
    );
    signal estado       : estado_type := INIT_0;
    signal contador     : integer range 0 to 65535 := 0;
    signal write_index  : integer range 0 to 4 := 0;

    signal enable_reg   : std_logic := '0';
    signal rs_reg       : std_logic := '0';
    signal data_reg     : std_logic_vector(7 downto 0) := (others => '0');

    type ascii_array is array(0 to 4) of std_logic_vector(7 downto 0);
    signal ascii_vec : ascii_array;

begin

    ascii_vec(0) <= ascii1;
    ascii_vec(1) <= ascii2;
    ascii_vec(2) <= ascii3;
    ascii_vec(3) <= ascii4;
    ascii_vec(4) <= ascii5;

    lcd_enable <= enable_reg;
    lcd_rs     <= rs_reg;
    lcd_rw     <= '0';
    lcd_data   <= data_reg;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                estado <= INIT_0;
                contador <= 0;
                enable_reg <= '0';
                data_reg <= (others => '0');
                write_index <= 0;

            elsif contador > 0 then
                contador <= contador - 1;
                enable_reg <= '0'; -- mantém enable desativado enquanto espera

            else
                case estado is
                    when INIT_0 =>
                        data_reg <= x"38";
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 2000;
                        estado <= INIT_1;

                    when INIT_1 =>
                        data_reg <= x"0C";
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 2000;
                        estado <= INIT_2;

                    when INIT_2 =>
                        data_reg <= x"01";
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 5000;
                        estado <= INIT_3;

                    when INIT_3 =>
                        if escrever = '1' then
                            estado <= SET_CURSOR;
                        end if;

                    when SET_CURSOR =>
                        data_reg <= x"80";
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 2000;
                        write_index <= 0;
                        estado <= WRITE_PREP;

                    when WRITE_PREP =>
                        data_reg <= ascii_vec(write_index);
                        rs_reg <= '1';
                        estado <= WRITE_PULSE;

                    when WRITE_PULSE =>
                        enable_reg <= '1';
                        contador <= 500;
                        estado <= WRITE_WAIT;

                    when WRITE_WAIT =>
                        enable_reg <= '0';
                        contador <= 2000;
                        if write_index < 4 then
                            write_index <= write_index + 1;
                            estado <= WRITE_PREP;
                        else
                            estado <= HOLD;
                        end if;

                    when HOLD =>
                        if escrever = '0' then
                            estado <= INIT_3;
                        end if;

                end case;
            end if;
        end if;
    end process;

end Behavioral;
