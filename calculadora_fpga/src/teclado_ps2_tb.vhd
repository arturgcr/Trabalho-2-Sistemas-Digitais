library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity teclado_ps2_tb is
end teclado_ps2_tb;

architecture Behavioral of teclado_ps2_tb is

    -- DUT Signals
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '0';
    signal ps2_clk   : std_logic := '1';
    signal ps2_data  : std_logic := '1';
    signal dado_ascii: std_logic_vector(7 downto 0);
    signal pronto    : std_logic;

    constant CLK_PERIOD : time := 20 ns;  -- 50 MHz
	 constant PS2_CLK_PERIOD : time := 80 us;  -- 50 MHz

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
	 
    -- Simulate one key release (e.g., '1' => scan code 16h, break = F0 16h)
    process
        procedure send_frame(code : std_logic_vector(7 downto 0)) is
            variable parity : std_logic := '1';
        begin
            -- Start bit
            ps2_data <= '0';
				wait for PS2_CLK_PERIOD / 2;
				ps2_clk <= '0';
				wait for PS2_CLK_PERIOD / 2;
				ps2_clk <= '1';

            -- 8 data bits
            for i in 0 to 7 loop
               ps2_data <= code(i);
               parity := parity xor code(i);
					wait for PS2_CLK_PERIOD / 2;
					ps2_clk <= '0';
					wait for PS2_CLK_PERIOD / 2;
					ps2_clk <= '1';
            end loop;

            -- Parity bit
            ps2_data <= parity;
				wait for PS2_CLK_PERIOD / 2;
				ps2_clk <= '0';
				wait for PS2_CLK_PERIOD / 2;
				ps2_clk <= '1';

            -- Stop bit
            ps2_data <= '1';
				wait for PS2_CLK_PERIOD / 2;
				ps2_clk <= '0';
				wait for PS2_CLK_PERIOD / 2;
				ps2_clk <= '1';
        end procedure;

    begin
		  --reset <= '1';
        wait for 100 ns;
		  reset <= '0';
		  wait for 100 ns;

        -- Send break code: F0 followed by 16 (key '1' release)
        send_frame(x"F0");

        send_frame(x"16");

		  wait for 200 us;
        
		  reset <= '1';
		  wait for 40 ns;
		  reset <= '0';
		  wait for 40 ns;
		  
		  send_frame(x"26");
		  wait for 200 us;
		  
		  reset <= '1';
		  wait for 40 ns;
		  reset <= '0';
		  wait for 40 ns;
		  
		  send_frame(x"F0");
		  send_frame(x"36");
		  
		  wait for 200 us;
		  
		  reset <= '1';
		  wait for 40 ns;
		  reset <= '0';
		  wait for 40 ns;
		  
		  send_frame(x"F0");
		  send_frame(x"4C");
		  wait for 200 us;
		  
		  reset <= '1';
		  wait for 40 ns;
		  reset <= '0';
		  wait for 40 ns;
		  
        wait;
    end process;

end Behavioral;
