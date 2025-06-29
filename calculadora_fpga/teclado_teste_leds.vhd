library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity teclado_teste_leds is
    Port (
        clk               : in  std_logic;                        -- system clock
        reset             : in  std_logic;                        -- asynchronous reset
        ps2_clk           : in  std_logic;                        -- PS/2 clock signal
        ps2_data          : in  std_logic;                        -- PS/2 data signal
		  dado_ascii_out		: out std_logic_vector(7 downto 0)
    );
end teclado_teste_leds;

architecture Behavioral of teclado_teste_leds is

    -- Define FSM states
    type state_type is (IDLE, DIG1, OPERADOR, DIG2, CALCULA, MOSTRA);
    signal state : state_type := IDLE;

    -- Operands and operator
    signal op1, op2 : integer range 0 to 99 := 0;
    signal s_operador : std_logic_vector(7 downto 0) := (others => '0');

    -- Result as integer with fixed-point precision (multiplied by 10)
    signal resultado : integer range -999 to 999 := 0;
    signal negativo  : std_logic := '0';

    -- Parts of the result
    signal inteiro : integer range 0 to 99;
    signal decimal : integer range 0 to 9;
    signal tmp     : integer;

    -- Sinais do teclado
    signal ps2_dado_ascii : std_logic_vector(7 downto 0);
    signal ps2_pronto     : std_logic;

begin

    -- Instância do teclado PS/2
    teclado_inst : entity work.teclado_ps2
        port map (
            clk         => clk,
            reset       => reset,
            ps2_clk     => ps2_clk,
            ps2_data    => ps2_data,
            dado_ascii  => ps2_dado_ascii,
            pronto      => ps2_pronto
        );

    -- FSM principal
    process(clk)
    begin
		if rising_edge(clk) then
			dado_ascii_out <= ps2_dado_ascii;
		end if;
	end process;
end Behavioral;