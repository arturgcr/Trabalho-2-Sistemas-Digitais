library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_teclado_ps2 is
end tb_teclado_ps2;

architecture Behavioral of tb_teclado_ps2 is

    -- DUT Signals
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '1';
    signal ps2_clk   : std_logic := '1';
    signal ps2_data  : std_logic := '1';
    signal dado_ascii: std_logic_vector(7 downto 0);
    signal pronto    : std_logic;

    constant CLK_PERIOD : time := 20 ns;  -- 50 MHz

    component teclado_ps2
        Port (
            clk         : in  std_logic;
            reset       : in  std_logic;
            ps2_clk     : in  std_logic;
            ps2_data    : in  std_logic;
            dado_ascii  : out std_logic_vector(7 downto 0);
            pronto      : out std_logic
        );
    end component;

begin

    -- Instantiate DUT
    uut: teclado_ps2
        port map (
            clk => clk,
            reset => reset,
            ps2_clk => ps2_clk,
            ps2_data => ps2_data,
            dado_ascii => dado_ascii,
            pronto => pronto
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= not clk;
        wait for CLK_PERIOD / 2;
    end process;
	 
	 ps2_clk_process : process
	 begin
		 loop
			  ps2_clk <= '0';
			  wait for 40 us;
			  ps2_clk <= '1';
			  wait for 40 us;
		 end loop;
	 end process;

    -- Reset pulse
    reset <= '1', '0' after 100 ns;

    -- Simulate one key release (e.g., '1' => scan code 16h, break = F0 16h)
    process
        procedure send_frame(code : std_logic_vector(7 downto 0)) is
            variable parity : std_logic := '1';
        begin
            -- Start bit
            ps2_data <= '0';
				wait for 80 us;

            -- 8 data bits
            for i in 0 to 7 loop
               ps2_data <= code(i);
               parity := parity xor code(i);
					wait for 80 us;
            end loop;

            -- Parity bit
            ps2_data <= parity;
				wait for 80 us;

            -- Stop bit
            ps2_data <= '1';
				wait for 80 us;
        end procedure;

    begin
        wait for 200 ns;

        -- Send break code: F0 followed by 16 (key '1' release)
        send_frame(x"F0");

        send_frame(x"16");

        wait for 500 us;
        wait;
    end process;

end Behavioral;
