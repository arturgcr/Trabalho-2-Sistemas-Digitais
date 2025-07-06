library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lcd_controller is
    Port (
        clk      : in  std_logic;                         -- System clock
        reset    : in  std_logic;                         -- Async reset
        escrever : in  std_logic;                         -- Trigger signal to write to LCD
        ascii1   : in  std_logic_vector(7 downto 0);      -- 1st ASCII character
        ascii2   : in  std_logic_vector(7 downto 0);      -- 2nd ASCII character
        ascii3   : in  std_logic_vector(7 downto 0);      -- 3rd ASCII character
        ascii4   : in  std_logic_vector(7 downto 0);      -- 4th ASCII character
        ascii5   : in  std_logic_vector(7 downto 0);      -- 5th ASCII character
        lcd_rs   : out std_logic;                         -- Register select (0 = command, 1 = data)
        lcd_rw   : out std_logic;                         -- Read/Write (always 0 = write)
        lcd_enable : out std_logic;                       -- LCD enable pulse
        lcd_data   : out std_logic_vector(7 downto 0)     -- LCD data bus
    );
end lcd_controller;

architecture Behavioral of lcd_controller is

    -- State machine states
    type estado_type is (
        INIT_0, INIT_1, INIT_2, INIT_3,    -- Initialization steps
        SET_CURSOR,                        -- Set cursor to beginning
        WRITE_PREP, WRITE_PULSE, WRITE_WAIT, -- Write sequence
        HOLD                               -- Wait for escrever = '0'
    );
    signal estado       : estado_type := INIT_0;
    signal contador     : integer range 0 to 65535 := 0;
    signal write_index  : integer range 0 to 4 := 0;

    signal enable_reg   : std_logic := '0';
    signal rs_reg       : std_logic := '0';
    signal data_reg     : std_logic_vector(7 downto 0) := (others => '0');

    -- Array to store incoming ASCII characters
    type ascii_array is array(0 to 4) of std_logic_vector(7 downto 0);
    signal ascii_vec : ascii_array;

begin

    -- Copy input ASCII characters into internal array
    ascii_vec(0) <= ascii1;
    ascii_vec(1) <= ascii2;
    ascii_vec(2) <= ascii3;
    ascii_vec(3) <= ascii4;
    ascii_vec(4) <= ascii5;

    -- Drive LCD output ports
    lcd_enable <= enable_reg;
    lcd_rs     <= rs_reg;
    lcd_rw     <= '0';  -- We only write to LCD
    lcd_data   <= data_reg;

    -- Main state machine to control LCD sequence
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                estado <= INIT_0;           -- reset stat
                contador <= 0;
                enable_reg <= '0';
                data_reg <= (others => '0');
                write_index <= 0;

            elsif contador > 0 then
                contador <= contador - 1;
                enable_reg <= '0';          -- keep enable low while waiting

            else
                case estado is
                    when INIT_0 =>
                        data_reg <= x"38";  -- Function Set (8-bit mode, 2 lines)
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 2000;
                        estado <= INIT_1;

                    when INIT_1 =>
                        data_reg <= x"0C";  -- Display ON, Cursor OFF
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 2000;
                        estado <= INIT_2;

                    when INIT_2 =>
                        data_reg <= x"01";  -- Clear Display
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 5000;   -- wait longuer
                        estado <= INIT_3;

                    when INIT_3 =>
                        if escrever = '1' then
                            estado <= SET_CURSOR;
                        end if;

                    when SET_CURSOR =>
                        data_reg <= x"80";  -- Set DDRAM address to 0
                        rs_reg <= '0';
                        enable_reg <= '1';
                        contador <= 2000;
                        write_index <= 0;
                        estado <= WRITE_PREP;

                    when WRITE_PREP =>
                        data_reg <= ascii_vec(write_index);  -- Load char to data bus
                        rs_reg <= '1';                        -- Set to data mode
                        estado <= WRITE_PULSE;

                    when WRITE_PULSE =>
                        enable_reg <= '1';        -- Start write pulse
                        contador <= 500;          -- pulse duration

                        estado <= WRITE_WAIT;

                    when WRITE_WAIT =>
                        enable_reg <= '0';        -- end pulse
                        contador <= 2000;
                        if write_index < 4 then
                            write_index <= write_index + 1;
                            estado <= WRITE_PREP;
                        else
                            estado <= HOLD;       -- done write
                        end if;

                    when HOLD =>
                        if escrever = '0' then
                            estado <= INIT_3;     -- wait next comand
                        end if;

                end case;
            end if;
        end if;
    end process;

end Behavioral;
