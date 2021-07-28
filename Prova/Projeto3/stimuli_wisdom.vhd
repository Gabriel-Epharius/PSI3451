library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.wisdom_package.all;

entity stimuli_wisdom is
	generic
	(
			WIDTH			: NATURAL := 8;
		CLK_PERIOD		: TIME	:=  10ns
	);

	port
		(
			clk					: out  STD_LOGIC;						     
			rst					: out  STD_LOGIC;						    
			enable				: out  STD_LOGIC;						     
			sys_speed    		: out  STD_LOGIC_VECTOR(3 downto 0);  
			start_step  		: in   STD_LOGIC			
		);

end stimuli_wisdom ;

architecture test of stimuli_wisdom is

	component clock_generator
		generic (
		CLK_PERIOD		: TIME	:= 10ns
		);

		port (	
		clk		: out STD_LOGIC
		);

    end component ;
	 
	
--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************	
	signal clk_s 	 		          : STD_LOGIC;
	signal rst_s 	 		          : STD_LOGIC;
	
	file l_file		: TEXT open append_mode is "wisdom_log.txt";
	
	
begin


	clk               <= clk_s;
	rst               <= rst_s;

	clock: clock_generator
		port map
		(
		clk		=> clk_s
		);
   
sim1 : process (start_step)
			variable f_status    : FILE_OPEN_STATUS;
		   variable msg   	   : line;
			begin
				if start_step = '1' then
					file_open (f_status, l_file, "wisdom_log.txt", append_mode);
					write(msg,LF & LF & "*********************" & LF & "*     NEW GAME     *" & LF & "*********************",right, 0);
					writeline(l_file, msg);
					file_close (l_file);

				end if;
		 end process sim1;
		 
		 
sim2 : process
			variable f_status    : FILE_OPEN_STATUS;
		   variable msg   	   : line;
			
			procedure reset_activate is    -- reset activation procedure
				begin
					wait until falling_edge(CLK_s);
					rst_s <= '1';
					wait for CLK_PERIOD;
					rst_s <= '0';
					
					file_open (f_status, l_file, "wisdom_log.txt", append_mode);
					write(msg,LF & LF & "--------------------------" & LF & "*   reset activation     *" & LF & "--------------------------",right, 0);
					writeline(l_file, msg);
					file_close (l_file);

			end procedure reset_activate;
				
				
			
			procedure checkWC(enableI  : in std_logic; sys_speedI  : in INTEGER   ) is
				begin
					enable       <=   enableI;	
					sys_speed    <=   std_logic_vector(to_unsigned(sys_speedI,4)) ;
					wait until rising_edge (clk_s);
					-- Events at the rising edge of next clock cycle
			end procedure checkWC;

			

		begin
		------------------------------------------------------------------------------------------------------------------	
		-- SIM 1 : Iniciação do sistema
			
			reset_activate;                       -- forca o sistema para fase inicial: FSM_MAIN->INIT_ACTIVATION	
			                                      -- FSM_INIT->IDLE, FSM_GURU->START_ITERATION, FSM_GURU->START_WALKING
			
			-- Ciclo sem o botao ser pressionado. Deve-se observar apenas a movimentacao  do GURU
			checkWC('0',1);   
			file_open (f_status, l_file, "wisdom_log.txt", append_mode);
			write(msg,LF & LF & "--------------------------" & LF & "*   Velocidade N escolhida    *" & LF & "--------------------------",right, 0);
			writeline(l_file, msg);
			file_close (l_file);
			
			wait for 9000*CLK_PERIOD;               -- tempo suficiente para um ciclo 
			
			reset_activate;                        -- observe o sistema ser reiniciado. 
		----------------------------------------------------------------------------------------------------------	
		
		-- SIM 2 :  -- Produzir novos ciclos com novos cenarios
			reset_activate;                       -- forca o sistema para fase inicial: FSM_MAIN->INIT_ACTIVATION	
			                                      -- FSM_INIT->IDLE, FSM_GURU->START_ITERATION, FSM_GURU->START_WALKING
			
			-- Ciclo sem o botao ser pressionado. Deve-se observar apenas a movimentacao  do GURU
			checkWC('1',1);   
			file_open (f_status, l_file, "wisdom_log.txt", append_mode);
			write(msg,LF & LF & "--------------------------" & LF & "*   Velocidade N escolhida    *" & LF & "--------------------------",right, 0);
			writeline(l_file, msg);
			file_close (l_file);
			
			wait for 9000*CLK_PERIOD;               -- tempo suficiente para um ciclo 
			----------------------------------------------------------------------------------------------------------	
		
		-- SIM 3 :  -- Produzir novos ciclos com novos cenarios
			reset_activate;                       -- forca o sistema para fase inicial: FSM_MAIN->INIT_ACTIVATION	
			                                      -- FSM_INIT->IDLE, FSM_GURU->START_ITERATION, FSM_GURU->START_WALKING
			
			-- Ciclo sem o botao ser pressionado. Deve-se observar apenas a movimentacao  do GURU
			checkWC('1',4);   
			file_open (f_status, l_file, "wisdom_log.txt", append_mode);
			write(msg,LF & LF & "--------------------------" & LF & "*   Velocidade N escolhida    *" & LF & "--------------------------",right, 0);
			writeline(l_file, msg);
			file_close (l_file);
			
			wait for 9000*CLK_PERIOD;               -- tempo suficiente para um ciclo 
			----------------------------------------------------------------------------------------------------------	
		
		-- SIM 4 :  -- Produzir novos ciclos com novos cenarios
			reset_activate;                       -- forca o sistema para fase inicial: FSM_MAIN->INIT_ACTIVATION	
			                                      -- FSM_INIT->IDLE, FSM_GURU->START_ITERATION, FSM_GURU->START_WALKING
			
			-- Ciclo sem o botao ser pressionado. Deve-se observar apenas a movimentacao  do GURU
			checkWC('1',2);   
			file_open (f_status, l_file, "wisdom_log.txt", append_mode);
			write(msg,LF & LF & "--------------------------" & LF & "*   Velocidade N escolhida    *" & LF & "--------------------------",right, 0);
			writeline(l_file, msg);
			file_close (l_file);
			
			wait for 9000*CLK_PERIOD;               -- tempo suficiente para um ciclo 
			----------------------------------------------------------------------------------------------------------	
		
		-- SIM 5 :  -- Produzir novos ciclos com novos cenarios
			reset_activate;                       -- forca o sistema para fase inicial: FSM_MAIN->INIT_ACTIVATION	
			                                      -- FSM_INIT->IDLE, FSM_GURU->START_ITERATION, FSM_GURU->START_WALKING
			
			-- Ciclo sem o botao ser pressionado. Deve-se observar apenas a movimentacao  do GURU
			wait for 35*CLK_PERIOD;
			checkWC('1',4);   
			file_open (f_status, l_file, "wisdom_log.txt", append_mode);
			write(msg,LF & LF & "--------------------------" & LF & "*   Velocidade N escolhida    *" & LF & "--------------------------",right, 0);
			writeline(l_file, msg);
			file_close (l_file);
			
			wait for 9000*CLK_PERIOD;               -- tempo suficiente para um ciclo 
			----------------------------------------------------------------------------------------------------------	
		
		-- SIM 6 :  -- Produzir novos ciclos com novos cenarios

			checkWC('1',8);   
			file_open (f_status, l_file, "wisdom_log.txt", append_mode);
			write(msg,LF & LF & "--------------------------" & LF & "*   Velocidade N escolhida    *" & LF & "--------------------------",right, 0);
			writeline(l_file, msg);
			file_close (l_file);
			
			wait for 9000*CLK_PERIOD;               -- tempo suficiente para um ciclo 
			
			wait ;			

		end process sim2;
end architecture test;