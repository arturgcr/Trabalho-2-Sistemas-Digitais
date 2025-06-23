library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lcd_controller is
    Port (
        clk         : in  std_logic;                        -- system clock
        reset       : in  std_logic;                        -- asynchronous reset
        start       : in  std_logic;                        -- trigger to send data
        data_in     : in  std_logic_vector(7 downto 0);     -- ASCII character to be displayed
        busy        : out std_logic;                        -- high while sending

        lcd_rs      : out std_logic;                        -- register select (0=cmd, 1=data)
        lcd_rw      : out std_logic;                        -- read/write (0=write)
        lcd_e       : out std_logic;                        -- enable pulse
        lcd_db      : out std_logic_vector(7 downto 0)      -- data bus
    );
end lcd_controller;

architecture Behavioral of lcd_controller is

    type state_type is (INIT, IDLE, SEND_DATA, HOLD_ENABLE, DONE);
    signal state : state_type := INIT;

    signal counter : integer range 0 to 100000 := 0; -- timing counter
    signal e_pulse : std_logic := '0';

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= INIT;
                counter <= 0;
                lcd_rs <= '0';
                lcd_rw <= '0';
                lcd_e <= '0';
                lcd_db <= (others => '0');
                e_pulse <= '0';
                busy <= '1';

            else
                case state is

                    when INIT =>
                        -- Wait some cycles to allow LCD power-on
                        if counter < 500000 then
                            counter <= counter + 1;
                            busy <= '1';
                        else
                            counter <= 0;
                            state <= IDLE;
                            busy <= '0';
                        end if;

                    when IDLE =>
                        -- Wait for start signal to send data
                        if start = '1' then
                            lcd_rs <= '1';            -- set to data mode
                            lcd_rw <= '0';            -- write mode
                            lcd_db <= data_in;        -- place data on bus
                            state <= SEND_DATA;
                            busy <= '1';
                        end if;

                    when SEND_DATA =>
                        -- Generate rising edge on E
                        lcd_e <= '1';
                        counter <= 0;
                        state <= HOLD_ENABLE;

                    when HOLD_ENABLE =>
                        -- Hold E high for a short time, then drop
                        if counter < 500 then
                            counter <= counter + 1;
                        else
                            lcd_e <= '0';
                            state <= DONE;
                        end if;

                    when DONE =>
                        -- Finish transmission
                        busy <= '0';
                        state <= IDLE;

                end case;
            end if;
        end if;
    end process;

end Behavioral;