library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.wisdom_package.all;


entity FSM_REF is 
	port
	(
	clk				: in 	STD_LOGIC;			--from system
	res				: in 	STD_LOGIC;			--from system	
	fsm_r_i_guru   : in  STD_LOGIC;
	fsm_r_f_guru   : in  STD_LOGIC;
	fsm_r_i_disc   : in  STD_LOGIC;
	fsm_r_f_disc   : in  STD_LOGIC;
	duo_formed     : in  STD_LOGIC;
	check_guru     : out STD_LOGIC;
	check_disc     : out STD_LOGIC
	
	);
end FSM_REF;


architecture arch of FSM_REF is

-- SYMBOLIC ENCODED FSM STATES
type STATE_TYPE_MAIN is (
     IDLE ,  GURU_CYCLE, DISC_CYCLE, CHECK );

signal STATE, NEXT_STATE: STATE_TYPE_MAIN;

-- Declarations of pre-registered internal signals

begin

------------------------------------
-- Next State Logic (combinatorial)
------------------------------------

upd_next_state:	process (fsm_r_i_guru, fsm_r_f_guru, fsm_r_i_disc, fsm_r_f_disc , duo_formed,STATE)
				begin
					case STATE is
						when   IDLE 				=> 	if((fsm_r_i_guru  = '1' and  fsm_r_i_disc ='1') or duo_formed = '1') then
																	NEXT_STATE <= GURU_CYCLE;
																elsif(fsm_r_i_guru  = '1' or  fsm_r_i_disc ='1') then
																	NEXT_STATE <= CHECK;
																else 
																	NEXT_STATE <= IDLE;
																end if;
		
						when CHECK					=> 	NEXT_STATE <= IDLE;	
						
						when GURU_CYCLE			=> 	if(fsm_r_f_guru  = '1') then
																	NEXT_STATE <= DISC_CYCLE;
																else 
																	NEXT_STATE <= GURU_CYCLE;
																end if;
						
						when DISC_CYCLE			=> 	if(fsm_r_f_disc = '1') then
																	NEXT_STATE <= IDLE;
																else 
																	NEXT_STATE <= DISC_CYCLE;
																end if;
					
						
						when others		=> null;
				
					end case;
				end process;
------------------------------------
-- Current State Logic (sequential)
------------------------------------
upd_state:	process (clk, res)
				begin
					if clk'event and clk = '1' then
						if(res = '1')	then
							STATE <=  IDLE;
						else
							STATE <= NEXT_STATE;
						end if;
					end if;
				end process;


------------------------------------
-- OUTPUT Logic (combinatorial)
------------------------------------
upd_output:	process (STATE)
			begin
				case STATE is
					when IDLE				=> 	check_guru     <= '0';
														check_disc     <= '0';
														
					when CHECK         	=>  	check_guru     <= '1';
														check_disc     <= '1';
					
					when GURU_CYCLE    	=>  	check_guru     <= '1';
														check_disc     <= '0';
						
					when DISC_CYCLE      => 	check_guru     <= '0';
														check_disc     <= '1';
														
				

					when others				=> null;
			
				end case;
			end process;

					
				
end arch;