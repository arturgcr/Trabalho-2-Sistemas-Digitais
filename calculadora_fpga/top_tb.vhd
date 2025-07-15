library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_top is
end tb_top;

architecture Behavioral of tb_top is

    -- Component declaration for the DUT (Device Under Test)
    component top
        Port (
            clk              : in  std_logic;
            reset            : in  std_logic;
            ps2_clk          : in  std_logic;
            ps2_data         : in  std_logic;
            LED              : out std_logic;
            LCD_DB           : out std_logic_vector(7 downto 0);
            RS               : out std_logic;
            RW               : out std_logic;
            OE               : out std_logic;
            resultado_pronto : out std_logic;
            erro_div_zero    : out std_logic;
				ascii_char_out   : out std_logic_vector(7 downto 0);
				resultado_out    : out integer;
				conv_1_out       : out std_logic_vector(7 downto 0);
			   conv_2_out       : out std_logic_vector(7 downto 0);
			   conv_3_out       : out std_logic_vector(7 downto 0);
			   conv_4_out       : out std_logic_vector(7 downto 0);
			   conv_5_out       : out std_logic_vector(7 downto 0);
				print_char_out   : out std_logic
        );
    end component;

    -- Signals to connect to DUT
    signal clk              : std_logic := '0';
    signal reset            : std_logic := '0';
    signal ps2_clk          : std_logic := '1';
    signal ps2_data         : std_logic := '1';
    signal LED              : std_logic;
    signal LCD_DB           : std_logic_vector(7 downto 0);
    signal RS               : std_logic;
    signal RW               : std_logic;
    signal OE               : std_logic;
    signal resultado_pronto : std_logic;
    signal erro_div_zero    : std_logic;
	 signal ascii_char_out   : std_logic_vector(7 downto 0);
	 signal resultado_out    : integer;
	 signal conv_1_out       : std_logic_vector(7 downto 0);
	 signal conv_2_out       : std_logic_vector(7 downto 0);
	 signal conv_3_out       : std_logic_vector(7 downto 0);
	 signal conv_4_out       : std_logic_vector(7 downto 0);
    signal conv_5_out       : std_logic_vector(7 downto 0);
	 signal print_char_out    : std_logic;

	 constant CLK_PERIOD : time := 20 ns;  -- 50 MHz
	 constant PS2_CLK_PERIOD : time := 80 us;  -- 12.5 kHz

begin

    -- Instantiate the DUT
    DUT: top
        port map (
            clk              => clk,
            reset            => reset,
            ps2_clk          => ps2_clk,
            ps2_data         => ps2_data,
            LED              => LED,
            LCD_DB           => LCD_DB,
            RS               => RS,
            RW               => RW,
            OE               => OE,
            resultado_pronto => resultado_pronto,
            erro_div_zero    => erro_div_zero,
				ascii_char_out   => ascii_char_out,
				resultado_out    => resultado_out,
				conv_1_out       => conv_1_out,
				conv_2_out       => conv_2_out,
				conv_3_out       => conv_3_out,
				conv_4_out       => conv_4_out,
				conv_5_out       => conv_5_out,
				print_char_out   => print_char_out
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;	 

    -- Stimulus process
    stimulus: process
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
        -- Apply reset
        wait for 160 ms;
		  --reset <= '0';
		  --wait for 100 ns;

        -- Send break code: F0 followed by 16 (key '1' release)
        send_frame(x"F0");

        send_frame(x"16");
        wait for 140 ms;
		  
		  send_frame(x"F0");
        send_frame(x"79");
        wait for 140 ms;
		  
		  send_frame(x"F0");
        send_frame(x"1E");
        wait for 140 ms;
		  
		  send_frame(x"F0");
        send_frame(x"5A");
        wait for 140 ms;
		  wait for 750 ms;
		  
        assert false report "Simulation complete." severity note;
        wait;
    end process;

end Behavioral;
