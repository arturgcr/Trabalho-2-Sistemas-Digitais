library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_top is
end tb_top;

architecture sim of tb_top is

    -- Component under test
    component top
        Port (
            clk        : in  std_logic;
            reset      : in  std_logic;
            ps2_clk    : in  std_logic;
            ps2_data   : in  std_logic;
            lcd_rs     : out std_logic;
            lcd_rw     : out std_logic;
            lcd_e      : out std_logic;
            lcd_db     : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signals for test
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '1';
    signal ps2_clk   : std_logic := '1';  -- not used
    signal ps2_data  : std_logic := '1';  -- not used
    signal lcd_rs    : std_logic;
    signal lcd_rw    : std_logic;
    signal lcd_e     : std_logic;
    signal lcd_db    : std_logic_vector(7 downto 0);

    -- Clock period
    constant clk_period : time := 20 ns;

begin

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Instantiate UUT
    uut: top
        port map (
            clk       => clk,
            reset     => reset,
            ps2_clk   => ps2_clk,
            ps2_data  => ps2_data,
            lcd_rs    => lcd_rs,
            lcd_rw    => lcd_rw,
            lcd_e     => lcd_e,
            lcd_db    => lcd_db
        );

    -- Stimulus
    stimulus : process
        procedure send_ascii(ascii : std_logic_vector(7 downto 0)) is
        begin
            uut.dado_ascii <= ascii;
            uut.pronto <= '1';
            wait for clk_period;
            uut.pronto <= '0';
            wait for clk_period * 2;
        end procedure;
    begin
        -- Reset
        wait for 40 ns;
        reset <= '0';

        -- Enter sequence: 1, 2, +, 5, =
        send_ascii(x"31"); -- '1'
        send_ascii(x"32"); -- '2'
        send_ascii(x"2B"); -- '+'
        send_ascii(x"35"); -- '5'
        send_ascii(x"3D"); -- '='

        -- Wait for result to be shown
        wait for 500 ns;

        -- End simulation
        wait;
    end process;

end sim;