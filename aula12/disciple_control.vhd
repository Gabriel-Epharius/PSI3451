library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.wisdom_package.all;


entity fsm_disc is 
	port
	(
	clk				 : in STD_LOGIC;		--from system
	res				 : in STD_LOGIC;		--from system
	start_step  	 : in STD_LOGIC;		--from fsm internal
	end_of_disc		 : in STD_LOGIC;		--from datapath
	guru_well_behind : in STD_LOGIC;		--from system	
	cnt_disc_rdy	 : in STD_LOGIC;	    --from system
	duo_formed		 : in STD_LOGIC;		--from system
	go_disc        	 : in STD_LOGIC;	    --from system
	flags_2_dp		 : out ctrl_2_dp_flags;	--to datapath
	flags_2_mem		 : out disc_2_mem_flags	--to memory
	
	);
end fsm_disc;


architecture arch of fsm_disc is

-- SYMBOLIC ENCODED FSM STATES
type STATE_TYPE_MAIN is (
     IDLE,  RAND,WRITE_RAND, WAIT_COUNT_DISC ,  INCR,  CHECK_SAME_ADDR,  WRITE_DUO, WRITE_DISC ,CHECK_LAST, CHECK_BEHIND,CLEAR_BEHIND , CLEAR_PREV );

signal STATE, NEXT_STATE: STATE_TYPE_MAIN;

-- Declarations of pre-registered internal signals

begin

------------------------------------
-- Next State Logic (combinatorial)
------------------------------------

upd_next_state:	process (start_step ,cnt_disc_rdy, end_of_disc,go_disc , duo_formed, STATE)
	begin
		case STATE is
			when  IDLE				=> 	if(start_step = '1') then
											NEXT_STATE <= RAND;
										elsif(start_step = '0') then
											NEXT_STATE <= IDLE;
										end if;
		
			when RAND				=> 	NEXT_STATE <= WRITE_RAND;	
			
			when WRITE_RAND			=> 	NEXT_STATE <= WAIT_COUNT_DISC;	
						
			when WAIT_COUNT_DISC	=> 	if(cnt_disc_rdy = '1') then
											NEXT_STATE <= INCR;
										elsif(cnt_disc_rdy = '0') then
											NEXT_STATE <= WAIT_COUNT_DISC;
										end if;
						
			when INCR				=> 	NEXT_STATE <= CHECK_LAST;
						
			when CHECK_LAST	   		=> 	if (end_of_disc = '0' and go_disc = '1')  then 
											NEXT_STATE <= CHECK_SAME_ADDR;
										elsif (end_of_disc = '1' and go_disc = '1') then   
											NEXT_STATE <= CHECK_BEHIND;
										elsif (end_of_disc = '0' and go_disc = '0')  then
											NEXT_STATE <= CHECK_LAST;
										end if;
											
			when CHECK_SAME_ADDR 	=> 	if (duo_formed = '0')  then 
											NEXT_STATE <= WRITE_DISC;
										elsif (duo_formed = '1')  then      
											NEXT_STATE <= WRITE_DUO;
										end if;
																
			when WRITE_DISC	   		=> 	NEXT_STATE <= CLEAR_PREV ;

			when WRITE_DUO 	   		=> 	NEXT_STATE <= CLEAR_PREV;		
					
			when CLEAR_PREV 		=> 	NEXT_STATE <= WAIT_COUNT_DISC;
					
			when CHECK_BEHIND   	=> 	if(guru_well_behind = '0') then
											NEXT_STATE <= CLEAR_BEHIND;
										elsif(guru_well_behind = '1') then
											NEXT_STATE <= IDLE;
										end if;
			when CLEAR_BEHIND		=>	NEXT_STATE <= IDLE;										
						
			when others				=> 	null;
				
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
					when IDLE	            => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '0';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '0';
												flags_2_dp.cg_sel		    <= BLANK;
												flags_2_mem.mem_wr_en		<= '0';
												flags_2_mem.cg_sel			<= BLANK;
														
			
					when RAND         	    =>  flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '0';
												flags_2_dp.rb_GURU_en		<= '1';
												flags_2_dp.rb_PRE_GURU_en	<= '1';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '0';
												flags_2_dp.cg_sel		    <= DISC;
												flags_2_mem.mem_wr_en		<= '0';
												flags_2_mem.cg_sel			<= DISC;
													
					
					when WRITE_RAND         =>	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '0';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '0';
												flags_2_dp.cg_sel			<= DISC;
												flags_2_mem.mem_wr_en		<= '1';
												flags_2_mem.cg_sel			<= DISC;
												
						
					when  WAIT_COUNT_DISC   => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '0';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '0';
												flags_2_dp.cg_sel			<= DISC;
												flags_2_mem.mem_wr_en		<= '0';
												flags_2_mem.cg_sel			<= DISC;
													
														
					when  INCR			    => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '1';
												flags_2_dp.rb_PRE_GURU_en	<= '1';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= DISC;
												flags_2_mem.mem_wr_en		<= '0';
												flags_2_mem.cg_sel			<= DISC;		
														
														
														
					when  CHECK_LAST	    => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= DISC;
												flags_2_mem.mem_wr_en		<= '0';
												flags_2_mem.cg_sel			<= DISC;		
																						
														
							
					when  CHECK_SAME_ADDR   => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= DISC;
												flags_2_mem.mem_wr_en		<= '0';
												flags_2_mem.cg_sel			<= DISC;		
																
			
					when  WRITE_DISC        => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= DISC;
												flags_2_mem.mem_wr_en		<= '1';
												flags_2_mem.cg_sel			<= DISC;
														
					when  WRITE_DUO         => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= DUO;
												flags_2_mem.mem_wr_en		<= '1';
												flags_2_mem.cg_sel			<= DUO;	
															
							
					when  CLEAR_PREV        => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_PREV_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= BLANK;
												flags_2_mem.mem_wr_en		<= '1';
												flags_2_mem.cg_sel			<= BLANK;
																
									
				   	when  CLEAR_BEHIND	    => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_PREV_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= BLANK;
												flags_2_mem.mem_wr_en		<= '1';
												flags_2_mem.cg_sel			<= BLANK;
														
					when  CHECK_BEHIND	    => 	flags_2_dp.ng_rand_zero		<= '0';
												flags_2_dp.ng_cte_incr		<= '1';
												flags_2_dp.rb_GURU_en		<= '0';
												flags_2_dp.rb_PRE_GURU_en	<= '0';
												flags_2_dp.rb_out_sel		<= REG_GURU_OUT;
												flags_2_dp.alu_ctrl    	 	<= '1';
												flags_2_dp.cg_sel			<= DISC;
												flags_2_mem.mem_wr_en		<= '1';
												flags_2_mem.cg_sel			<= DISC;
																				
					when others				=> null;	
				end case;
			end process;	
end arch;
