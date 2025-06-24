library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity teclado_ps2 is
    Port (
        clk         : in  std_logic;                        -- system clock (e.g., 50 MHz)
        reset       : in  std_logic;                        -- asynchronous reset
        ps2_clk     : in  std_logic;                        -- PS/2 clock signal
        ps2_data    : in  std_logic;                        -- PS/2 data signal
        dado_ascii  : out std_logic_vector(7 downto 0);     -- decoded ASCII character
        pronto      : out std_logic                        -- high when a new character is received
    );
end teclado_ps2;

architecture Behavioral of teclado_ps2 is

    -- Internal signals for clock synchronization and edge detection
    signal ps2_clk_sync : std_logic_vector(2 downto 0) := (others => '1');
    signal falling_edge_ps2 : std_logic := '0';

    -- Bit counter and shift register to collect PS/2 frame (11 bits)
    signal bit_count    : integer range 0 to 10 := 0;
    signal shift_reg    : std_logic_vector(10 downto 0) := (others => '0');
    signal scan_code    : std_logic_vector(7 downto 0) := (others => '0');
    signal recebido     : std_logic := '0';
	 signal is_break     : std_logic := '0';
	 signal dado_reg     : std_logic_vector(7 downto 0) := (others => '0');
	 signal pronto_reg     : std_logic := '0';
	 
begin

    -- Synchronizes ps2_clk with system clk and detects falling edge
    process(clk)
    begin
        if rising_edge(clk) then
            ps2_clk_sync <= ps2_clk_sync(1 downto 0) & ps2_clk;
            falling_edge_ps2 <= ps2_clk_sync(2) and not ps2_clk_sync(1);
        end if;
    end process;

    -- Captures incoming PS/2 bits (11-bit frame: start, 8 data bits, parity, stop)
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                bit_count <= 0;
                shift_reg <= (others => '0');
                recebido <= '0';
            elsif falling_edge_ps2 = '1' then
                shift_reg(bit_count) <= ps2_data;

                if bit_count = 10 then
                    scan_code <= shift_reg(8 downto 1); -- discard start, parity, and stop bits
                    bit_count <= 0;
                    recebido <= '1';
                else
                    bit_count <= bit_count + 1;
                    recebido <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Maps scan codes to ASCII characters used by the calculator
    process(clk)
    begin
	 if rising_edge(clk) then
	 if recebido = '1' then
			  if scan_code = x"F0" then
				  pronto_reg <= '0';
				  is_break <= '1';
			  elsif is_break = '1' then
				  is_break <= '0';
            case scan_code is
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

                -- Arithmetic operators
                when x"79" => dado_reg <= x"2B"; -- '+'
                when x"7B" => dado_reg <= x"2D"; -- '-'
                when x"7C" => dado_reg <= x"2A"; -- '*'
                when x"4A" => dado_reg <= x"2F"; -- '/'
                when x"5A" => dado_reg <= x"3D"; -- '=' (Enter key)

                -- Special keys
                when x"66" => dado_reg <= x"08"; -- Backspace (ASCII 08)
                when x"76" => dado_reg <= x"0C"; -- Clear (ASCII 0C)

                -- Default: unknown scan code
                when others => dado_reg <= x"3F"; -- '?'
            end case;
				pronto_reg <= '1';
			end if;
        end if;
	 end if;
    end process;

    -- Output pulse indicating a new ASCII character is available
	 pronto <= pronto_reg;
	 dado_ascii <= dado_reg;

end Behavioral;
