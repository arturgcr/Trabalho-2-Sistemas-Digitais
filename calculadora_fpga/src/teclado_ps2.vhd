library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity teclado_ps2 is
    Port (
        clk         : in  std_logic;                        -- System clock (e.g., 50 MHz)
        reset       : in  std_logic;                        -- Asynchronous reset
        ps2_clk     : in  std_logic;                        -- PS/2 clock signal
        ps2_data    : in  std_logic;                        -- PS/2 data line
        dado_ascii  : out std_logic_vector(7 downto 0);     -- Decoded ASCII output
        pronto      : out std_logic                         -- High pulse when new char is received
    );
end teclado_ps2;

architecture Behavioral of teclado_ps2 is

    -- Synchronize ps2_clk to system clock domain
    signal ps2_clk_sync : std_logic_vector(2 downto 0) := (others => '1');
    signal ps2_falling_edge : std_logic := '0';

    -- Capture PS/2 serial frame
    signal bit_count    : integer range 0 to 10 := 0;
    signal shift_reg    : std_logic_vector(10 downto 0) := (others => '0');
    signal scan_code    : std_logic_vector(7 downto 0) := (others => '0');
    signal previous_scan_code : std_logic_vector(7 downto 0) := (others => '0');

    -- Internal status
    signal dado_reg     : std_logic_vector(7 downto 0) := (others => '0');
    signal pronto_reg   : std_logic := '0';
    signal recebido     : std_logic := '0';

begin

    -- Detect faling edge of ps2_clk
    process(clk)
    begin
        if rising_edge(clk) then
            ps2_clk_sync <= ps2_clk_sync(1 downto 0) & ps2_clk;
            ps2_falling_edge <= ps2_clk_sync(2) and not ps2_clk_sync(1);
        end if;
    end process;

    -- Serial reception of PS/2 data bits
    process(clk)
    begin
        if rising_edge(clk) then
            if recebido = '1' then
                recebido <= '0';
            end if;

            if reset = '1' then
                bit_count <= 0;
                shift_reg <= (others => '0');
                scan_code <= (others => '0');
                previous_scan_code <= (others => '0');
            elsif ps2_falling_edge = '1' then
                shift_reg(bit_count) <= ps2_data;
                if bit_count = 10 then
                    previous_scan_code <= scan_code;
                    scan_code <= shift_reg(8 downto 1);  -- Bits 1 to 8 are actual data
                    bit_count <= 0;
                    recebido <= '1';
                else
                    bit_count <= bit_count + 1;
                end if;
            end if;
        end if;
    end process;

    -- Decode scan codes: ignore BREAK; convert MAKE codes
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                dado_reg <= (others => '0');
            elsif recebido = '1' and previous_scan_code = x"F0" then
                case scan_code is  -- Key pressed: decode scan code
                    when x"45" => dado_reg <= x"30"; -- '0'
                    when x"16" => dado_reg <= x"31"; -- '1'
                    when x"1E" => dado_reg <= x"32"; -- '2'
                    when x"26" => dado_reg <= x"33"; -- '3'
                    when x"25" => dado_reg <= x"34"; -- '4'
                    when x"2E" => dado_reg <= x"35"; -- '5'
                    when x"36" => dado_reg <= x"36"; -- '6'
                    when x"3D" => dado_reg <= x"37"; -- '7'
                    when x"3E" => dado_reg <= x"38"; -- '8'
                    when x"46" => dado_reg <= x"39"; -- '9'

                    -- Operators
                    when x"79" => dado_reg <= x"2B"; -- '+'
                    when x"7B" => dado_reg <= x"2D"; -- '-'
                    when x"7C" => dado_reg <= x"2A"; -- '*'
                    when x"4A" => dado_reg <= x"2F"; -- '/'
                    when x"5A" => dado_reg <= x"3D"; -- 'Enter (numpad)'

                    -- Special keys
                    when x"66" => dado_reg <= x"08"; -- Backspace
                    when x"76" => dado_reg <= x"0C"; -- ESC mapped to Clear

                    -- Future: decimal point
                    -- when x"49" => dado_reg <= x"2E"; -- '.'

                    when others => dado_reg <= x"3F"; -- '?' unknown key
                end case;
                pronto_reg <= '1';
            else
                pronto_reg <= '0'; -- no char recived
            end if;
        end if;
    end process;

    -- Output assignments
    dado_ascii <= dado_reg;
    pronto     <= pronto_reg;

end Behavioral;
