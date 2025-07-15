library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top2 is
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
        erro_div_zero    : out std_logic
    );
end top2;

architecture Behavioral of top2 is
    type state_type is (
		 IDLE, DISPLAY_NUMBER_0, WAIT_DISPLAY_NUMBER_0,
		 DIG1, DISPLAY_NUMBER_1, WAIT_DISPLAY_NUMBER_1,
		 DISPLAY_OPERATOR, WAIT_DISPLAY_OPERATOR, 
		 OPERADOR, DISPLAY_NUMBER_2, WAIT_DISPLAY_NUMBER_2, 
		 DIG2, DISPLAY_NUMBER_3, WAIT_DISPLAY_NUMBER_3, DISPLAY_EQUAL_SIGN, WAIT_DISPLAY_EQUAL_SIGN, 
		 START_CALC, WAIT_CALC, DISPLAY_RESULT, PRE_PRINT_CHAR_0, PRE_PRINT_CHAR_1, PRE_PRINT_CHAR_2, WAIT_PRINT_CHAR, WAIT_CHAR
	 );
	 
    signal state : state_type := IDLE;

    signal ascii_tecla  : std_logic_vector(7 downto 0);
    signal tecla_pronta : std_logic;
    signal tecla_lida   : std_logic := '0';

    signal op1, op2 : integer range 0 to 99 := 0;
    signal operador_ascii : std_logic_vector(7 downto 0) := (others => '0');

    signal iniciar_calc : std_logic := '0';
    signal calc_pronto  : std_logic := '0';
    signal resultado    : integer range 0 to 999 := 0;
    signal sinal_neg    : std_logic := '0';
    signal erro         : std_logic := '0';

	type conv_array_t is array(1 to 5) of std_logic_vector(7 downto 0);
	signal conv : conv_array_t;

    -- Updated to 8-bit for LCD driver
    signal ascii_char : std_logic_vector(7 downto 0) := (others => '0');
    signal print_char : std_logic := '0';

    signal char_index : integer range 1 to 5 := 1;
	 signal OneUSClk : std_logic := '0';
	 signal clkCount : integer := 0;
	 signal count:std_logic_vector (16 downto 0):= "00000000000000000";	--15 bit count variable for timing delays
	 signal delayOK:std_logic:= '0';						--High when count has reached the right delay time
	 
begin

    teclado_inst : entity work.teclado_ps2
        port map (
            clk        => clk,
            reset      => reset,
            ps2_clk    => ps2_clk,
            ps2_data   => ps2_data,
            dado_ascii => ascii_tecla,
            pronto     => tecla_pronta
        );

    calculadora_inst : entity work.logica_calculadora
        port map (
            clk       => clk,
            reset     => reset,
            start     => iniciar_calc,
            op1       => op1,
            op2       => op2,
            operador  => operador_ascii,
            resultado => resultado,
            negativo  => sinal_neg,
            erro      => erro,
            pronto    => calc_pronto
        );

    ascii_conv_inst : entity work.ascii_converter
        port map (
				clk => clk,
            valor     => resultado,
            negativo  => sinal_neg,
            ascii1    => conv(1),
            ascii2    => conv(2),
            ascii3    => conv(3),
            ascii4    => conv(4),
            ascii5    => conv(5)
        );

    lcd_driver_inst : entity work.final_lcd
        port map (
            ASCII_CHAR  => ascii_char,
            PRINT_CHAR  => print_char,
            LED         => LED,
            LCD_DB      => LCD_DB,
            RS          => RS,
            RW          => RW,
            CLK         => clk,
            OE          => OE,
            rst         => reset
        );
		
			--  Determines when count has gotten to the right number, depending on the state.
	delayOK <= '1' when (
						(state = DISPLAY_NUMBER_0 and count = "00000000000000101") or -- 5 us
						(state = WAIT_DISPLAY_NUMBER_0 and count = "11111111111111111") or -- 131071 us
						(state = DISPLAY_NUMBER_1 and count = "00000000000000101") or -- 5 us
						(state = WAIT_DISPLAY_NUMBER_1 and count = "11111111111111111") or -- 131071 us
						(state = DISPLAY_OPERATOR and count = "00000000000000101") or -- 5 us
						(state = WAIT_DISPLAY_OPERATOR and count = "11111111111111111") or -- 131071 us
						(state = DISPLAY_NUMBER_2 and count = "00000000000000101") or -- 5 us
						(state = WAIT_DISPLAY_NUMBER_2 and count = "11111111111111111") or -- 131071 us
						(state = DISPLAY_EQUAL_SIGN and count = "00000000000000101") or -- 5 us
						(state = WAIT_DISPLAY_EQUAL_SIGN and count = "11111111111111111") or -- 131071 us
						(state = START_CALC and count = "00000000000000101") or -- 5 us
						(state = WAIT_PRINT_CHAR and count = "00000000000001001") or -- 5 us
						(state = WAIT_CHAR and count = "11111111111111111") or -- 131071 us
						(state = WAIT_CALC and count = "00000000000000101") or -- 5 us
						--(state = DISPLAY_RESULT and count = "00000000000000101") or -- 5 us
						state = IDLE or state = DIG1 or state = OPERADOR or state = DIG2
						or state = DISPLAY_RESULT or state = PRE_PRINT_CHAR_0 or state = PRE_PRINT_CHAR_1
						or state = PRE_PRINT_CHAR_2
					)
		else	'0';
	
		--  This process incriments the count variable unless delayOK = 1.
	  process (oneUSClk, delayOK)
		begin
			if (oneUSClk = '1' and oneUSClk'event) then
				if delayOK = '1' then
					count <= "00000000000000000";
				else
					count <= std_logic_vector(unsigned(count) + 1);
				end if;
			end if;
		end process;
		  
    process(clk)
    begin
        if rising_edge(clk) then
		     --  This0 counts to 24, and then resets.  It is used to divide the clock signal time.
			  if clkCount = 24 then  -- After 50 clock cycles (0 to 49)
					clkCount <= 0;
					oneUSClk <= not oneUSClk;  -- Toggle the pulse
			  else
					clkCount <= clkCount + 1;
			  end if;
		  
            if reset = '1' then
                state <= IDLE;
                tecla_lida <= '0';
                op1 <= 0; op2 <= 0;
                operador_ascii <= (others => '0');
                iniciar_calc <= '0';
                print_char <= '0';
                char_index <= 1;

            else
                if tecla_pronta = '1' and tecla_lida = '0' then
                    tecla_lida <= '1';
                    case state is
                        when IDLE =>
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op1 <= (to_integer(unsigned(ascii_tecla)) - 48)*10;
                                state <= DISPLAY_NUMBER_0;
										  ascii_char <= ascii_tecla;
										  print_char <= '1';
                            end if;

                        when DIG1 =>
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op1 <= (op1 * 10 + (to_integer(unsigned(ascii_tecla)) - 48))*10;
										  state <= DISPLAY_NUMBER_1;
										  ascii_char <= ascii_tecla;
										  print_char <= '1';
                            elsif ascii_tecla = x"2B" or ascii_tecla = x"2D" or ascii_tecla = x"2A" or ascii_tecla = x"2F" then
                                operador_ascii <= ascii_tecla;
										  state <= DISPLAY_OPERATOR;
										  ascii_char <= ascii_tecla;
										  print_char <= '1';
                            end if;
									 
                        when OPERADOR =>
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op2 <= (to_integer(unsigned(ascii_tecla)) - 48)*10;
										  state <= DISPLAY_NUMBER_2;
										  ascii_char <= ascii_tecla;
										  print_char <= '1';
                            end if;

                        when DIG2 =>
                            if ascii_tecla >= x"30" and ascii_tecla <= x"39" then
                                op2 <= (op2 * 10 + (to_integer(unsigned(ascii_tecla)) - 48))*10;
										  ascii_char <= ascii_tecla;
										  print_char <= '1';
										  state <= DISPLAY_NUMBER_3;
                            elsif ascii_tecla = x"3D" then
										  ascii_char <= ascii_tecla;
										  print_char <= '1';
										  state <= DISPLAY_EQUAL_SIGN;
                            end if;
                        when others => null;
                    end case;

                elsif tecla_pronta = '0' then
                    tecla_lida <= '0';
                end if;

                case state is
						when DISPLAY_NUMBER_0 =>
								print_char <= '1';
								if delayOK = '1' then
									print_char <= '0';
									state <= WAIT_DISPLAY_NUMBER_0;
								else
									state <= DISPLAY_NUMBER_0;
								end if;
								
						when WAIT_DISPLAY_NUMBER_0 =>
							if delayOK = '1' then
								state <= DIG1;
							else
								state <= WAIT_DISPLAY_NUMBER_0;
							end if;

						when DISPLAY_NUMBER_1 =>
							print_char <= '1';
							if delayOK = '1' then
								print_char <= '0';
								state <= WAIT_DISPLAY_NUMBER_1;
							else
								state <= DISPLAY_NUMBER_1;
							end if;
							
						when WAIT_DISPLAY_NUMBER_1 =>
							if delayOK = '1' then
								state <= DIG1;
							else
								state <= WAIT_DISPLAY_NUMBER_1;
							end if;
							
						when DISPLAY_OPERATOR =>
							print_char <= '1';
							if delayOK = '1' then
								print_char <= '0';
								state <= WAIT_DISPLAY_OPERATOR;
							else
								state <= DISPLAY_OPERATOR;
							end if;
								
						when WAIT_DISPLAY_OPERATOR =>
							if delayOK = '1' then
								state <= OPERADOR;
							else
								state <= WAIT_DISPLAY_OPERATOR;
							end if;
							
						when DISPLAY_NUMBER_2 =>
							print_char <= '1';
							if delayOK = '1' then
								print_char <= '0';
								state <= WAIT_DISPLAY_NUMBER_2;
							else
								state <= DISPLAY_NUMBER_2;
							end if;
									
						when WAIT_DISPLAY_NUMBER_2 =>
							if delayOK = '1' then
								state <= DIG2;
							else
								state <= WAIT_DISPLAY_NUMBER_2;
							end if;

						when DISPLAY_EQUAL_SIGN =>
							print_char <= '1';
							if delayOK = '1' then
								print_char <= '0';
								state <= WAIT_DISPLAY_EQUAL_SIGN;
							else
								state <= DISPLAY_EQUAL_SIGN;
							end if;
									
						  when WAIT_DISPLAY_EQUAL_SIGN =>
							  if delayOK = '1' then
							    iniciar_calc <= '1';
							    state <= START_CALC;
							  else
								 state <= WAIT_DISPLAY_EQUAL_SIGN;
							  end if;

						  when START_CALC =>
							iniciar_calc <= '1';
								
							if delayOK = '1' then
								iniciar_calc <= '0';
								state <= WAIT_CALC;
							else
								state <= START_CALC;
							end if;
							
						when WAIT_CALC =>
								if delayOK = '1' and calc_pronto = '1' then
									 char_index <= 1;
									 state <= DISPLAY_RESULT;
								else
									state <= WAIT_CALC;
								end if;

						  when DISPLAY_RESULT =>
								if delayOK = '1' then
									 if erro = '1' then
											 case char_index is
												  when 1 => ascii_char <= x"45"; -- 'E'
												  when 2 => ascii_char <= x"52"; -- 'R'
												  when 3 => ascii_char <= x"52"; -- 'R'
												  when 4 => ascii_char <= x"4F"; -- 'O'
												  when 5 => ascii_char <= x"20"; -- ' '
												  when others => ascii_char <= x"20";
											 end case;
										else
											 ascii_char <= conv(char_index);
										end if;
										print_char <= '1';
										state <= PRE_PRINT_CHAR_0;
								else
									state <= DISPLAY_RESULT;
								end if;
								
							
							when PRE_PRINT_CHAR_0 =>
								print_char <= '1';
								state <= PRE_PRINT_CHAR_1;
								
							when PRE_PRINT_CHAR_1 =>
								print_char <= '1';
								state <= PRE_PRINT_CHAR_2;
								
							when PRE_PRINT_CHAR_2 =>
								print_char <= '1';
								state <= WAIT_PRINT_CHAR;
								
						  when WAIT_PRINT_CHAR =>
								print_char <= '1';
								if delayOK = '1' then
									print_char <= '0';
									state <= WAIT_CHAR;
								else
									state <= WAIT_PRINT_CHAR;
								end if;
								
						  when WAIT_CHAR =>
								if delayOK = '1' then
									if char_index < 5 then
									  char_index <= char_index + 1;
									  state <= DISPLAY_RESULT;

									 else
										  state <= IDLE;
									 end if;
								else
									state <= WAIT_CHAR;
								end if;		
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    resultado_pronto <= calc_pronto;
    erro_div_zero <= erro;

end Behavioral;
