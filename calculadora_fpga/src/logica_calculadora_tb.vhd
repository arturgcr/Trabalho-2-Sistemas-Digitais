library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_logica_calculadora is
end tb_logica_calculadora;

architecture Behavioral of tb_logica_calculadora is

    -- Component Declaration
    component logica_calculadora is
        Port (
            clk       : in  std_logic;
            reset     : in  std_logic;
            start     : in  std_logic;
            op1       : in  integer range 0 to 99;
            op2       : in  integer range 0 to 99;
            operador  : in  std_logic_vector(7 downto 0);
            resultado : out integer range 0 to 999;
            negativo  : out std_logic;
            erro      : out std_logic;
            pronto    : out std_logic
        );
    end component;

    -- Signal declarations
    signal clk        : std_logic := '0';
    signal reset      : std_logic := '0';
    signal start      : std_logic := '0';
    signal op1        : integer range 0 to 99 := 0;
    signal op2        : integer range 0 to 99 := 0;
    signal operador   : std_logic_vector(7 downto 0) := (others => '0');
    signal resultado  : integer range 0 to 999;
    signal negativo   : std_logic;
    signal erro       : std_logic;
    signal pronto     : std_logic;

    -- Clock generation: 50 MHz => 20 ns period
    constant CLK_PERIOD : time := 20 ns;

begin

    -- Clock process
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- DUT instance
    uut: logica_calculadora
        port map (
            clk       => clk,
            reset     => reset,
            start     => start,
            op1       => op1,
            op2       => op2,
            operador  => operador,
            resultado => resultado,
            negativo  => negativo,
            erro      => erro,
            pronto    => pronto
        );

    -- Stimulus process
    stim_proc : process
    begin
        -- Initialization
        reset <= '1';
        wait for 50 ns;
        reset <= '0';

        -- Test 1: 20 + 30
        op1 <= 20; op2 <= 30;
        operador <= x"2B"; -- '+'
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 100 ns;
		  
		  reset <= '1';
        wait for 50 ns;
        reset <= '0';

        -- Test 2: 50 - 90 ? negative result
        op1 <= 50; op2 <= 90;
        operador <= x"2D"; -- '-'
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 100 ns;
		  
		  reset <= '1';
        wait for 50 ns;
        reset <= '0';

        -- Test 3: 6 * 7
        op1 <= 6; op2 <= 7;
        operador <= x"2A"; -- '*'
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 100 ns;

        -- Test 4: 90 / 0 ? division by zero
        op1 <= 90; op2 <= 0;
        operador <= x"2F"; -- '/'
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 100 ns;

        -- Test 5: Invalid operator
        op1 <= 10; op2 <= 5;
        operador <= x"3C"; -- '<'
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 100 ns;
		  
		  -- Test 4b: 80 / 20 ? should succeed
		  op1 <= 80; op2 <= 20;
		  operador <= x"2F"; -- '/'
		  start <= '1';
		  wait for CLK_PERIOD;
		  start <= '0';
		  wait for 100 ns;

        -- Finish simulation
        wait;
    end process;

end Behavioral;
