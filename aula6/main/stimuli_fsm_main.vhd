library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity stimuli_fsm_main is
	generic
	(
	WIDTH					: NATURAL := 8;
	CLK_PERIOD		: TIME	:=  10ns
	);

	port
	(
	clk							: out STD_LOGIC;			--system generatiom
	res							: out STD_LOGIC;			--system generatiom
	en_disc        	: out STD_LOGIC;			--emulatimg user/player
	fsm_i_done			: out STD_LOGIC;			--emulatimg fsm_init
	end_of_guru			: out STD_LOGIC;			--emulatimg datapath	
	end_of_disc			: out STD_LOGIC;			--emulatimg disciple circuit
	duo_formed			: out STD_LOGIC;			--emulatimg datapath
	cnt_prepare_f		: out STD_LOGIC;			--emulatinh timer timer; signaling
	cnt_start_f	    : out STD_LOGIC;  			--emulating timer; signaling
	
	con_sel					: in CONTROL_SELECT;		--emulating the mux selector
	en_cnt_step    	: in STD_LOGIC;				--emulating cnt_rdy trigger in stepcounter
	cnt_prepare_i		: in STD_LOGIC;				--emualting wait in timer
	cnt_start_i	    : in STD_LOGIC;  			--emualting wait in timer
	fsm_i_start			: in STD_LOGIC;				--emulating fsm_init
	fsm_s_start			: in STD_LOGIC				--emulating fsm_init guru or disciple step machines 
	);

end stimuli_fsm_main ;

architecture test of stimuli_fsm_main is
	signal clk_s : STD_LOGIC;

	component clock_generator
		generic (
		CLK_PERIOD		: TIME	:= 10ns
		);

		port (	
		clk		: out STD_LOGIC
		);

end component ;

begin


	clk <=clk_s;

	clock: clock_generator
		port map
		(
		clk		=> clk_s
		);


	sim : process
	
-- procedure to check fsm protocol

procedure check_fsm(fsm_i_done_value, prepare_f_value, start_f_value	: in STD_LOGIC)	is
		begin
			-- Assign values to estimuli_module´s outputs.
			fsm_i_done <= fsm_i_done_value; 
			cnt_prepare_f <= prepare_f_value;
			cnt_start_f <= start_f_value;

			wait until rising_edge (clk_s);
			-- Events at the rising edge of next clock cycle
			end procedure check_fsm;
			
-- procedure to evaluate options/decisions
			
procedure check_option(en_disc_value, end_of_guru_value, end_of_disc_value, duo_formed_value	: in STD_LOGIC)	is
		begin
			-- Assign values to estimuli_module´s outputs.
			en_disc <= en_disc_value; 
			end_of_guru <= end_of_guru_value;
			end_of_disc <= end_of_disc_value;
			duo_formed <= duo_formed_value; 

			end procedure check_option;
			
			
		procedure reset_activate is    -- reset activation procedure
		begin
			wait until falling_edge(CLK_s);
			res <= '1';
			wait for CLK_PERIOD;
			res <= '0';
		end procedure reset_activate;


	begin
		-- Apply test vectors
		
		check_fsm('0','0','0');    -- analyze state transitions
		reset_activate;

--==============================
	-- **initialization state** protocol
		
		while (fsm_i_start /= '1') 
			loop
			check_fsm('0','0','0');    -- guaranteeing fsm_i_done='0'		
		end loop;
		
		-- emulate some action in fsm_init - it lasts for 50 cicles...
		
		wait for 50*CLK_PERIOD;		

		-- forcing fsm_i_done='1'
		
		while (fsm_i_start /= '0') 
			loop
			check_fsm('1','0','0');    -- verifying fsm_i_start returned to '0' and guaranteeing fsm_i_done='0'		
		end loop;

		check_fsm('1','0','0');     -- forcing fsm_i_done='1' -> end of fsm_init and forcing fsm_main to go to PREPARATION PHASE 		

--==============================================
	-- prepare wait protocol
	
		while (cnt_prepare_i /= '1') 
			loop
			check_fsm('1','0','0');    -- guaranteeing cnt_prepare_f='0' and maintaining fsm_i_done='1'	
		end loop;
		
		
	-- emulate delay  - it lasts for 80 cicles...
		
		wait for 80*CLK_PERIOD;		
		
		check_fsm('0','1','0');         ---- cnt_prepare_f='1' -> end of delay

		-- forcing cnt_prepare_f='1'
		
		while (cnt_prepare_i /= '0') 
			loop
			check_fsm('0','1','0');    -- verifying cnt_prepare_i returned to '0' and maintaining cnt_prepare_f='1'	
		end loop;
				

		check_fsm('0','1','0');     -- cnt_prepare_f='1' -> end of delay and forcing fsm_main to go to STEP_ACTIVATION 		

--==============================	
	-- **step** protocol
		
		while (fsm_s_start /= '1') 
			loop
			check_fsm('0','0','0');  --  it goes to START wait STATE if true		
		end loop;
		
		-- emulate some action in guru and disciple step- 50 cicles
		
		wait for 50*CLK_PERIOD;
		

--========================================
		
	-- start wait protocol
	
		while (cnt_start_i /= '1') 
			loop
			check_fsm('0','0','0');    -- guaranteeing cnt_start_f='0' 	
		end loop;
		

	-- emulate delay  - it lasts for 30 cicles...
		
		wait for 30*CLK_PERIOD;		

		-- forcing cnt_start_f='1'
		
		check_fsm('0','0','1');   -- cnt_start_f='1' -> end of delay
		
		while (cnt_start_i /= '0') 
			loop
			check_fsm('0','0','1');    -- verifying cnt_start_i returned to '0' and maintaining cnt_start_f='1'	
		end loop;
				
		check_option('0','0','0','0');   -- any at this time
		---   check_optionrefers to en_disc, end_of_guru, end_of_disc, duo_formed
		
		check_fsm('0','0','1');     -- cnt_start_f='1' -> end of delay and forcing fsm_main to go to CHECK_END 	


--========================================

	-- CHECK_END options
		
		check_option ('0','0','0','0');    -- forcing end_of_guru=end_of_disc='0' forcing fsm_main to stay in CHECK_END
	
		wait for 3*CLK_PERIOD;
		
		check_option('0','1','0','0');    -- forcing end_of_guru='1' and end_of_disc='0' forcing fsm_main to stay in CHECK_END
		
		wait for 3*CLK_PERIOD;		
		
		check_option('0','0','1','0');    -- forcing end_of_guru='0' and end_of_disc='1' forcing fsm_main to stay in CHECK_END 
		
		wait for 3*CLK_PERIOD;			
		
		check_option('1','1','1','0');    -- forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' plus duo_formed='0', forcing fsm_main to return to PREPARATION PHASE
		
		check_fsm('0','0','0');     -- initial conditions
		
		wait for 1*CLK_PERIOD;	
	
--   ==============================
-- 	===============================

		-- **step** protocol 2nd time
		
			-- prepare wait protocol
	
			while (cnt_prepare_i /= '1') 
				loop
				check_fsm('0','0','0');    -- guaranteeing cnt_prepare_f='0' 	
			end loop;
		
		
		-- emulate delay  - it lasts for 80 cicles...
		
			wait for 80*CLK_PERIOD;		
		
				check_fsm('0','1','0');         ---- cnt_prepare_f='1' -> end of delay

			-- forcing cnt_prepare_f='1'
		
			while (cnt_prepare_i /= '0') 
				loop
				check_fsm('0','1','0');    -- verifying cnt_prepare_i returned to '0' and maintaining cnt_prepare_f='1'	
			end loop;
				

			check_fsm('0','1','0');     -- cnt_prepare_f='1' -> end of delay and forcing fsm_main to go to STEP_ACTIVATION 		

	--==============================	
		-- **step** protocol
		
			while (fsm_s_start /= '1') 
				loop
				check_fsm('0','0','0');  --  it goes to START wait STATE if true		
			end loop;
		
		-- emulate some action in guru and disciple step
		
			wait for 50*CLK_PERIOD;
		
	--========================================
		
		-- start wait protocol
	
			while (cnt_start_i /= '1') 
				loop
				check_fsm('0','0','0');    -- guaranteeing cnt_start_f='0' 	
			end loop;
		
		
		-- emulate delay  - it lasts for 30 cicles...
		
			wait for 30*CLK_PERIOD;		

		-- forcing cnt_start_f='1'
		
			check_fsm('0','0','1');   -- cnt_start_f='1' -> end of delay
			
			check_option('0','1','0','0');   -- forcing en_disc='0' and end_of_guru='1' and end_of_disc='0'  preparing the decision on CHECK_END state to return to PREPARATION PHASE
		
			while (cnt_start_i /= '0') 
				loop
				check_fsm('0','0','1');    -- verifying cnt_start_i returned to '0' and maintaining cnt_start_f='1'	
			end loop;
				
			
			---   check_optionrefers to en_disc, end_of_guru, end_of_disc, duo_formed
		
			check_fsm('0','0','1');     -- cnt_start_f='1' -> end of delay and forcing fsm_main to go to CHECK_END 	


	--========================================

			-- CHECK_END options
		
			-- emulate some action in guru and disciple step
			
			check_option('0','1','0','0');    -- forcing en_disc='0' and end_of_guru='1' and end_of_disc='0'  forcing fsm_main to return to PREPARATION PHASE 
		
			wait for 3*CLK_PERIOD;			
			
			check_fsm('0','0','0');     -- initial conditions
		
			wait for 1*CLK_PERIOD;	
	
--   ==============================
-- 	===============================
--	================================

			-- **step** protocol 3rd time
			
				-- prepare wait protocol
	
				while (cnt_prepare_i /= '1') 
					loop
					check_fsm('0','0','0');    -- guaranteeing cnt_prepare_f='0' 	
				end loop;
		
		
			-- emulate delay  - it lasts for 80 cicles...
		
				wait for 80*CLK_PERIOD;		
		
					check_fsm('0','1','0');         ---- cnt_prepare_f='1' -> end of delay

				-- forcing cnt_prepare_f='1'
		
				while (cnt_prepare_i /= '0') 
					loop
					check_fsm('0','1','0');    -- verifying cnt_prepare_i returned to '0' and maintaining cnt_prepare_f='1'	
				end loop;
				

				check_fsm('0','1','0');     -- cnt_prepare_f='1' -> end of delay and forcing fsm_main to go to STEP_ACTIVATION 		

		--==============================	
			-- **step** protocol
		
				while (fsm_s_start /= '1') 
					loop
					check_fsm('0','0','0');  --  it goes to START wait STATE if true		
				end loop;
		
			-- emulate some action in guru and disciple step- 50 cicles
		
				wait for 50*CLK_PERIOD;
		
		--========================================
		
			-- start wait protocol
	
				while (cnt_start_i /= '1') 
					loop
					check_fsm('0','0','0');    -- guaranteeing cnt_start_f='0' 	
				end loop;
		
		
			-- emulate delay  - it lasts for 30 cicles...
		
				wait for 30*CLK_PERIOD;		

			-- forcing cnt_start_f='1'
		
				check_fsm('0','0','1');   -- cnt_start_f='1' -> end of delay
				
				check_option('1','1','1','1');   -- forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' and duo_formed='1'  preparing the decision on CHECK_END state to go to HIT POINT
		
				while (cnt_start_i /= '0') 
					loop
					check_fsm('0','0','1');    -- verifying cnt_start_i returned to '0' and maintaining cnt_start_f='1'	
				end loop;
				
				
				---   check_optionrefers to en_disc, end_of_guru, end_of_disc, duo_formed
		
				check_fsm('0','0','1');     -- cnt_start_f='1' -> end of delay and forcing fsm_main to go to CHECK_END 	


		--========================================

				-- CHECK_END options
		
				-- emulate some action in guru and disciple step
			
				check_option('1','1','1','1');    -- forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' and duo_formed='1'  forcing fsm_main to go to HIT POINT 
		
				wait for 10*CLK_PERIOD;			
			
	
				-- it should return to PREPARATION PHASE.
				
		

		wait;
	end process sim;
end architecture test;
