library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ascii_conv_tb is
end ascii_conv_tb;

architecture test of ascii_conv_tb is
    -- Component declaration with clk
    component ascii_converter
        Port (
            clk         : in  std_logic;
            valor       : in  integer range 0 to 999;
            negativo    : in  std_logic;
            ascii1      : out std_logic_vector(7 downto 0);
            ascii2      : out std_logic_vector(7 downto 0);
            ascii3      : out std_logic_vector(7 downto 0);
            ascii4      : out std_logic_vector(7 downto 0);
            ascii5      : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Test signals
    signal clk       : std_logic := '0';
    signal valor     : integer range 0 to 999 := 0;
    signal negativo  : std_logic := '0';

    signal ascii1    : std_logic_vector(7 downto 0);
    signal ascii2    : std_logic_vector(7 downto 0);
    signal ascii3    : std_logic_vector(7 downto 0);
    signal ascii4    : std_logic_vector(7 downto 0);
    signal ascii5    : std_logic_vector(7 downto 0);

begin
    -- Clock generation: 10 ns period
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 500 ns;
            clk <= '1';
            wait for 500 ns;
        end loop;
    end process;

    -- Instantiate the Unit Under Test (UUT)
    uut: ascii_converter
        port map (
            clk      => clk,
            valor    => valor,
            negativo => negativo,
            ascii1   => ascii1,
            ascii2   => ascii2,
            ascii3   => ascii3,
            ascii4   => ascii4,
            ascii5   => ascii5
        );

    -- Stimulus process synchronized with clock
    stim_proc: process
    begin
        wait for 2000 ns;  -- Initial delay

        -- Test 1: Positive value 87 (should show " 87.0")
        valor <= 870; negativo <= '0';
        wait for 2000 ns;

        -- Test 2: Negative value 49 (should show "-49.0")
        valor <= 490; negativo <= '1';
        wait for 2000 ns;

        -- Test 3: Edge case 0 (should show " 00.0")
        valor <= 0; negativo <= '0';
        wait for 2000 ns;

        -- Test 4: Maximum value 999 (should show "99.9")
        valor <= 999; negativo <= '0';
        wait for 2000 ns;

        wait;
    end process;
end test;
