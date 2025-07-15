library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity final_lcd is
    Port ( 	ASCII_CHAR: std_logic_vector(7 downto 0);
				PRINT_CHAR: in std_logic;
				LED: out std_logic;
				LCD_DB: out std_logic_vector(7 downto 0);		--DB( 7 through 0)
           RS:out std_logic;  				--WE
           RW:out std_logic;				--ADR(0)
	   CLK:in std_logic;				--GCLK2
	   --ADR1:out std_logic;				--ADR(1)
	   --ADR2:out std_logic;				--ADR(2)
	   --CS:out std_logic;				--CSC
	   OE:out std_logic;				--OE
	   rst:in std_logic;	
		
		count_int:out integer;
		clk_count_out: out integer;
		stActWr_out: out std_logic
		);		--BTN
	   --rdone: out std_logic);			--WriteDone output to work with DI05 test
end final_lcd;

architecture Behavioral of final_lcd is

	--LCD control state machine
	type mstate is (					  
		stFunctionSet,		 			--Initialization states
		stDisplayCtrlSet,
		stDisplayClear,
		stPowerOn_Delay,  				--Delay states
		stFunctionSet_Delay,
		stDisplayCtrlSet_Delay, 	
		stDisplayClear_Delay,
		stInitDne,					--Display charachters and perform standard operations
		stActWr,
		stCharDelay					--Write delay for operations
		--stWait					--Idle state
	);

	--Write control state machine
	type wstate is (
		stRW,						--set up RS and RW
		stEnable,					--set up E
		stIdle						--Write data on DB(0)-DB(7)
	);
	

	signal clkCount : integer := 0;
	signal activateW:std_logic:= '0';		    			--Activate Write sequence
	signal count:std_logic_vector (16 downto 0):= "00000000000000000";	--15 bit count variable for timing delays
	signal delayOK:std_logic:= '0';						--High when count has reached the right delay time
	signal OneUSClk : std_logic := '0';					--Signal is treated as a 1 MHz clock	
	signal stCur:mstate:= stPowerOn_Delay;					--LCD control state machine
	signal stNext:mstate;			  	
	signal stCurW:wstate:= stIdle; 						--Write control state machine
	signal stNextW:wstate;
	signal writeDone:std_logic:= '0';					--Command set finish
	signal stActWr_sig: std_logic := '0';

	type LCD_CMDS_T is array(23 downto 0) of std_logic_vector(9 downto 0);
	signal LCD_CMDS : LCD_CMDS_T := ( 0 => "00"&X"3C",			--Function Set
					    1 => "00"&X"0C",			--Display ON, Cursor OFF, Blink OFF
					    2 => "00"&X"01",			--Clear Display
					    3 => "00"&X"02", 			--return home

					    4 => "10"&X"30", 			--0 
					    5 => "10"&X"65",  			--e
					    6 => "10"&X"6C",  			--l
					    7 => "10"&X"6C", 			--l
					    8 => "10"&X"6F", 			--o
					    9 => "10"&X"20",  			--space
					    10 => "10"&X"46", 			--F
					    11 => "10"&X"72", 			--r
					    12 => "10"&X"6F", 			--o
					    13 => "10"&X"6D", 			--m
													
					    14 => "10"&X"20",			--space
													
					    15 => "10"&X"44", 			--D
					    16 => "10"&X"69", 			--i
					    17 => "10"&X"67", 			--g
					    18 => "10"&X"69", 			--i
					    19 => "10"&X"6C", 			--l
					    20 => "10"&X"65", 			--e
					    21 => "10"&X"6E", 			--n
					    22 => "10"&X"74",			--t
					    23 => "00"&X"02");			-- Shifts left

													
	signal lcd_cmd_ptr : integer range 0 to LCD_CMDS'HIGH + 1 := 0;
	signal TRAVA: std_logic:='1';
begin
	stActWr_out <= stActWr_sig;
	clk_count_out <= clkCount;
	count_int <= to_integer(unsigned(count));
	LED <= TRAVA;
 	
	--  This process counts to 24, and then resets.  It is used to divide the clock signal time.
	process (CLK)
	begin
		 if rising_edge(CLK) then
			  if clkCount = 24 then  -- After 50 clock cycles (0 to 49)
					clkCount <= 0;
					oneUSClk <= not oneUSClk;  -- Toggle the pulse
			  else
					clkCount <= clkCount + 1;
			  end if;
		 end if;
	end process;
	--  This makes oneUSClock peak once every 1 microsecond

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

	--This goes high when all commands have been run
	writeDone <= '1' when (lcd_cmd_ptr = LCD_CMDS'HIGH) 
		else '0';
	--rdone <= '1' when stCur = stWait else '0';
	--Increments the pointer so the statemachine goes through the commands
	process (lcd_cmd_ptr, oneUSClk, PRINT_CHAR)
   		begin
			if (oneUSClk = '1' and oneUSClk'event) then
				if ((stNext = stInitDne or stNext = stDisplayCtrlSet or stNext = stDisplayClear) and writeDone = '0') then				
					-- PATCH --
					if (lcd_cmd_ptr <=3) then
							lcd_cmd_ptr <= lcd_cmd_ptr + 1;	
							TRAVA <='0';
					elsif(PRINT_CHAR='1') then
							TRAVA <='0';
							LCD_CMDS(lcd_cmd_ptr)(7 downto 0) <= ASCII_CHAR;					
					else
							TRAVA <='1';
					end if;
					--
				elsif stCur = stPowerOn_Delay or stNext = stPowerOn_Delay then
					lcd_cmd_ptr <= 0;
					-- PATCH --
					TRAVA<='0';
				else
					lcd_cmd_ptr <= lcd_cmd_ptr;
					-- PATCH --
					if (lcd_cmd_ptr <=3) then
							TRAVA <='0';
					elsif(PRINT_CHAR='1') then
							TRAVA <='0';
							LCD_CMDS(lcd_cmd_ptr)(7 downto 0) <= ASCII_CHAR;					
					else
							TRAVA <='1';
					end if;
					-- --
				end if;
			end if;
		end process;
		
	--  Determines when count has gotten to the right number, depending on the state.
	delayOK <= '1' when ((stCur = stPowerOn_Delay and count = "00100111001010010") or 			--20050  
					(stCur = stFunctionSet_Delay and count = "00000000000110010") or	--50
					(stCur = stDisplayCtrlSet_Delay and count = "00000000000110010") or	--50
					(stCur = stDisplayClear_Delay and count = "00000011001000000") or	--1600
					(stCur = stCharDelay and count = "11111111111111111") or
					(stCur = stActWr and TRAVA = '0')
					)			--Max Delay for character writes and shifts
--					(stCur = stCharDelay and count = "00000000000100101"))		--37  This is proper delay between writes to ram.
					
		else	'0';
  	
	-- This process runs the LCD status state machine
	process (oneUSClk, rst)
		begin
			if oneUSClk = '1' and oneUSClk'Event then
				if rst = '1' then
					stCur <= stPowerOn_Delay;
				else
					stCur <= stNext;
				end if;
			end if;
		end process;

	
	--  This process generates the sequence of outputs needed to initialize and write to the LCD screen
	process (stCur, delayOK, writeDone, lcd_cmd_ptr, TRAVA)
		begin   
			case stCur is
				when stPowerOn_Delay =>
					if delayOK = '1' then
						stNext <= stFunctionSet;
					else
						stNext <= stPowerOn_Delay;
					end if;
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '0';

				when stFunctionSet =>
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '1';	
					stNext <= stFunctionSet_Delay;

				when stFunctionSet_Delay =>
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '0';
					if delayOK = '1' then
						stNext <= stDisplayCtrlSet;
					else
						stNext <= stFunctionSet_Delay;
					end if;
				
				when stDisplayCtrlSet =>
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '1';
					stNext <= stDisplayCtrlSet_Delay;

				when stDisplayCtrlSet_Delay =>
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '0';
					if delayOK = '1' then
						stNext <= stDisplayClear;
					else
						stNext <= stDisplayCtrlSet_Delay;
					end if;

				when stDisplayClear	=>
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '1';
					stNext <= stDisplayClear_Delay;

				--Gives the proper delay of 1.52ms between the clear command
				--and the state where you are clear to do normal operations.
				when stDisplayClear_Delay =>
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '0';
					if delayOK = '1' then
						stNext <= stInitDne;
					else
						stNext <= stDisplayClear_Delay;
					end if;
				
				when stInitDne =>		
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '0';
					stNext <= stActWr;
					
				when stActWr =>		
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					if (TRAVA='0') THEN
						activateW <= '1';
						stNext <= stCharDelay;
						stActWr_sig <= '0';
					else
						stActWr_sig <= '1';
						activateW <= '0';
						stNext <= stActWr;
					end if;
					
				--Provides a max delay between instructions.
				when stCharDelay =>
					RS <= LCD_CMDS(lcd_cmd_ptr)(9);
					RW <= LCD_CMDS(lcd_cmd_ptr)(8);
					LCD_DB <= LCD_CMDS(lcd_cmd_ptr)(7 downto 0);
					activateW <= '0';					
					if delayOK = '1' then
						stNext <= stInitDne;
					else
						stNext <= stCharDelay;
					end if;
			end case;
		
		end process;					
								   
 	--This process runs the write state machine
	process (oneUSClk, rst)
		begin
			if oneUSClk = '1' and oneUSClk'Event then
				if rst = '1' then
					stCurW <= stIdle;
				else
					stCurW <= stNextW;
				end if;
			end if;
		end process;

	--This genearates the sequence of outputs needed to write to the LCD screen
	process (stCurW, activateW)
		begin   
		
			case stCurW is
				when stRw =>
					OE <= '0';
					stNextW <= stEnable;
				
				when stEnable => 
					OE <= '0';
					stNextW <= stIdle;
				
				when stIdle =>
					OE <= '1';
					if activateW = '1' then
						stNextW <= stRw;
					else
						stNextW <= stIdle;
					end if;
				end case;
		end process;
				
end Behavioral;