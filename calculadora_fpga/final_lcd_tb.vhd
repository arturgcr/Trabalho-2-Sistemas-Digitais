library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity final_lcd_tb is
end final_lcd_tb;

architecture sim of final_lcd_tb is
    -- Component Declaration
    component final_lcd
        Port (
            ASCII_CHAR : in  std_logic_vector(7 downto 0);
            PRINT_CHAR : in  std_logic;
            LED        : out std_logic;
            LCD_DB     : out std_logic_vector(7 downto 0);
            RS         : out std_logic;
            RW         : out std_logic;
            CLK        : in  std_logic;
            OE         : out std_logic;
            rst        : in  std_logic;
				count_int : out integer;
				clk_count_out: out integer;
				stActWr_out    : out std_logic
        );
    end component;

    -- Signal Declarations
    signal ASCII_CHAR : std_logic_vector(7 downto 0) := x"41";  -- ASCII 'A'
    signal PRINT_CHAR : std_logic := '0';
    signal LED        : std_logic;
    signal LCD_DB     : std_logic_vector(7 downto 0);
    signal RS         : std_logic;
    signal RW         : std_logic;
    signal CLK        : std_logic := '0';
    signal OE         : std_logic;
    signal rst        : std_logic := '0';
	 signal count_int_sig: integer;
	 signal clk_count_sig: integer;
	 signal stActWr_sig    : std_logic;

    -- Clock generation: 20 ns period
    constant clk_period : time := 20 ns;

begin
    -- Instantiate DUT
    uut: final_lcd
        port map (
            ASCII_CHAR => ASCII_CHAR,
            PRINT_CHAR => PRINT_CHAR,
            LED        => LED,
            LCD_DB     => LCD_DB,
            RS         => RS,
            RW         => RW,
            CLK        => CLK,
            OE         => OE,
            rst        => rst,
				count_int => count_int_sig,
				clk_count_out => clk_count_sig,
				stActWr_out => stActWr_sig
        );

    -- Clock generation
    clk_gen: process
    begin
        while true loop
            CLK <= '0';
            wait for clk_period / 2;
            CLK <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the system
        --rst <= '1';
        --wait for 100 ns;
        --rst <= '0';

        -- Wait for LCD to initialize (simulate ~16 ms)
        wait for 160 ms;

        -- Send character 'B'
        ASCII_CHAR <= x"42";  -- ASCII for 'B'
        PRINT_CHAR <= '1';
        wait for 1 us;
        PRINT_CHAR <= '0';
		  
		  wait for 140 ms;

        -- Wait and send another character 'C'
        wait for 5 ms;
        ASCII_CHAR <= x"43";
        PRINT_CHAR <= '1';
        wait for 1 us;
        PRINT_CHAR <= '0';
        wait for 140 ms;

        -- Finish simulation after some delay
        wait for 5 ms;
        assert false report "End of simulation." severity note;
        wait;
    end process;

end sim;
