--library IEEE;
--use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
--use IEEE.std_logic_unsigned.all;
--use work.wisdom_package.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;

entity wisdom_circuit_with_referee is 
	port
	(
		clk					: in  STD_LOGIC;						     --from system
		res					: in  STD_LOGIC;						     --from system
		enable				: in  STD_LOGIC;						      -- from player
		sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
		
		disc_2_base			: in  disc_2_base_flags;					--fom disciple circuit
		disc_2_mem			: in  disc_2_mem_flags;					-- from referee	
		disc_2_ref			: in  disc_2_ref_flags;					-- from referee	
		print_rdy         : out STD_LOGIC;							-- for test only -monitor and VGA
		cnt_disc_rdy      : out STD_LOGIC;
		ref_2_disc			: out ref_2_disc_flags;
		start_step  		: out STD_LOGIC;						--to disciple circuit
		
		mem_a_data	: out STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
		mem_a_addr	: in STD_LOGIC_VECTOR(5 downto 0)

		
	);
end  wisdom_circuit_with_referee;



architecture arch of  wisdom_circuit_with_referee is


	component circuit_wisdom_aula_11 is 
		port
		(
			clk					: in  STD_LOGIC;						--from system
			res					: in  STD_LOGIC;						--from system
			disc_2_base			: in  disc_2_base_flags;					--fom disciple circuit
			ref_2_base			: in  ref_2_base_flags;					-- from referee				
			enable				: in  STD_LOGIC;						-- from player
			sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
			disc_2_mem			: in  disc_2_mem_flags;					--from disciple circuit
			start_step  		: out STD_LOGIC;	
			cnt_disc_rdy		: out STD_LOGIC;						--to disciple circuit
		   cnt_guru_rdy		: out STD_LOGIC;						--to disciple circuit
			print_rdy         : out STD_LOGIC;						-- for test only 
			mem_a_data			: out STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
		   mem_a_addr			: in STD_LOGIC_VECTOR(5 downto 0);
			base_2_ref  		: out base_2_ref_flags
		);
	end  component;
	 	
	component referee
		generic
		( WIDTH		: NATURAL	:= 8 );
		
		port(
		 clk, reset: in std_logic;
		 cnt_disc_rdy, cnt_guru_rdy: in std_logic;
		 guru_addr,disc_addr, guru_prev_addr,disc_prev_addr: in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
		 go_guru, go_disc, guru_well_behind, duo_formed: out std_logic );
	end component;

	component holder is

		port
		(
		clk, reset     	: in std_logic;
		inSig, releaseS	: in std_logic;
		holdedOut         : out std_logic );
	end component;
	
		
	component Duohold_fit is 
		generic
		(
		COUNT_MAX	: positive	:= 2
		);

		port
		(
		clk				: in STD_LOGIC;
		res				: in STD_LOGIC;
		start_step     : in STD_LOGIC;
		cnt_disc_rdy   : in STD_LOGIC;
		disc_addr_in	: in STD_LOGIC_VECTOR(7 downto 0);
		disc_addr_out	: out STD_LOGIC_VECTOR(7 downto 0)
		
		);
	end component;

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

   signal clk_s, res_s,print_rdy_s ,ctrl_s ,guru_well_behind_s ,inSig_s     : STD_LOGIC;
	signal release3             	: STD_LOGIC := '0';
	signal cnt_guru_rdy_s      	: STD_LOGIC;
	signal cnt_disc_rdy_s      	: STD_LOGIC;
	signal duo_formed_s        	: STD_LOGIC;
	signal duo_formed_held_s     	: STD_LOGIC;
	signal start_step_s 				: STD_LOGIC;		
	signal tb_init_guru_data_s,disc_addr_s , a_data_s  ,disc_prev_s	: STD_LOGIC_VECTOR(7 downto 0);
	signal a_addr_s              	: STD_LOGIC_VECTOR(5 downto 0);
	signal ref_2_base_s        	: ref_2_base_flags;
	signal base_2_ref_s 		   	: base_2_ref_flags;
	signal base_2_mem_s        	: base_2_mem_flags;
	signal disc_2_base_s       	: disc_2_base_flags;
	signal disc_2_mem_s		   	: disc_2_mem_flags;
	signal disc_2_ref_s       	   : disc_2_ref_flags;	
	signal ref_2_disc_s       	   : ref_2_disc_flags;	
	
	
begin

	guru: circuit_wisdom_aula_11 port map
											(
												clk					=>clk_s,
												res					=>res_s,
												disc_2_base			=>disc_2_base_s,
												ref_2_base			=>ref_2_base_s,				
												enable				=>enable,
												sys_speed    		=>sys_speed,
												disc_2_mem			=>disc_2_mem_s,
												start_step        =>start_step_s,
												cnt_disc_rdy		=>cnt_disc_rdy_s,
												cnt_guru_rdy		=>cnt_guru_rdy_s,
												print_rdy         =>print_rdy_s,
												mem_a_data			=>a_data_s,
												mem_a_addr			=>a_addr_s,
												base_2_ref  		=>base_2_ref_s
											);
	
	ref:  referee                port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												cnt_disc_rdy		=>cnt_disc_rdy_s,
												cnt_guru_rdy		=>cnt_guru_rdy_s,
												guru_addr			=>base_2_ref_s.guru_addr, 
												disc_addr			=>disc_2_ref_s.disc_addr, --disc_addr_s,--
												guru_prev_addr		=>base_2_ref_s.guru_prev_addr,
												disc_prev_addr		=>disc_prev_s, --disc_2_ref_s.disc_prev_addr,
												go_guru				=>ref_2_base_s.go_guru,
												go_disc				=>ref_2_disc_s.go_disc,
												guru_well_behind	=>guru_well_behind_s, --ref_2_disc_s.guru_well_behind,
												duo_formed        =>duo_formed_s
											);
											
	hold:   holder 					port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												inSig					=>duo_formed_s,
												releaseS				=>start_step_s,
												holdedOut         =>duo_formed_held_s
											);
	
	
	--duohold: Duohold_fit 
	--										generic map
	--										(
	--											COUNT_MAX	       => 2
	--										)
	--										port map
	--										(
	--											clk					=>clk_s,
	--											res					=>res_s,
	--											start_step     	=>start_step_s,
	--											cnt_disc_rdy   	=>cnt_disc_rdy_s,
	--											disc_addr_in		=>disc_2_ref_s.disc_addr,
	--											disc_addr_out		=>disc_addr_s
	--										);
										
								
										
	hold2:   holder 					port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												inSig					=>guru_well_behind_s,
												releaseS				=>start_step_s,
												holdedOut         =>ref_2_disc_s.guru_well_behind 
											);	
			
	hold3:   holder 					port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												inSig					=>inSig_s , 
												releaseS				=>release3 , --start_step_s,
												holdedOut         =>disc_2_base_s.end_of_disc
											);									
	

					
				
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	disc_prev_s       <= disc_2_ref_s.disc_prev_addr when ref_2_disc_s.guru_well_behind  ='0'else "11111111";
   release3          <=  transport start_step_s after 20 ns ;
	inSig_s           <= '1' when disc_2_base.end_of_disc = '1' and start_step_s = '0' and release3 = '0' else '0';
	
	clk_s 						 <= clk;
	res_s 						 <= res;
   cnt_disc_rdy      		 <= cnt_disc_rdy_s;
   disc_2_mem_s 				 <= disc_2_mem;
	start_step               <= start_step_s;
	--disc_2_base_s				 <= disc_2_base;
	disc_2_ref_s		       <= disc_2_ref;				
	ref_2_disc					 <= ref_2_disc_s;
	
	print_rdy         			<=print_rdy_s;
	
	ref_2_disc_s.duo_formed  <= duo_formed_held_s;
	ref_2_base_s.duo_formed  <= duo_formed_held_s;								
			
	mem_a_data					 <= a_data_s;
	a_addr_s					    <= mem_a_addr ;
	--mem_b_data					 <= disc_data_s;
			
end arch;
