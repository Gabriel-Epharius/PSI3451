--library IEEE;
--use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
--use IEEE.std_logic_unsigned.all;
--use work.wisdom_package.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;

entity circuit_wisdom_aula_11 is 
	port
	(
		clk					: in  STD_LOGIC;						--from system
		res					: in  STD_LOGIC;						--from system

		disc_2_base			: in disc_2_base_flags;					--fom disciple circuit
		ref_2_base			: in ref_2_base_flags;					-- from referee				
		enable				: in  STD_LOGIC;						-- from player
		sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
		disc_2_mem			: in disc_2_mem_flags;					--from disciple circuit
		start_step  		: out  STD_LOGIC;	
		cnt_disc_rdy		: out  STD_LOGIC;						--to disciple circuit
		cnt_guru_rdy		: out  STD_LOGIC;						--to disciple circuit
		print_rdy         : out STD_LOGIC;								-- for test only -vga interface module
		mem_a_data	: out STD_LOGIC_VECTOR(7 downto 0);				-- monitor /vga interface module
		mem_a_addr	: in STD_LOGIC_VECTOR(5 downto 0);				-- monitor / vga interface module
		base_2_ref  		: out base_2_ref_flags
	);
end  circuit_wisdom_aula_11;



architecture arch of  circuit_wisdom_aula_11 is


	component step_counter
		generic
		(
		COUNT_MAX_V8_FAST	   : UNSIGNED	:= x"50";    -- 50 hexadecimal and 80 decimal
		COUNT_COUNT_WIDTH 	: NATURAL 	:= 16
		);
			port
		(
		clk		     		   : in  STD_LOGIC;
		res		     		   : in  STD_LOGIC;
		speed_sync		      : in  SPEED;
		enable      	   	: in STD_LOGIC;
		en_cnt      	   	: in  STD_LOGIC;
		cnt_guru_rdy		   : out STD_LOGIC;
		cnt_disc_rdy		   : out STD_LOGIC;
		cnt_value			   : out UNSIGNED(COUNT_COUNT_WIDTH-1 downto 0)    
			);
	end component;
	
	
	 component button_handler
		port
		(
		clk					: in  STD_LOGIC;
		res					: in  STD_LOGIC;
		enable				: in  STD_LOGIC;
		enable_bypass		: out STD_LOGIC;
		sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);
		speed_sync		   : out SPEED
		);
	end component;

	component mem_2port
	   PORT
	   (
		address_a		     : IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
		address_b			  : IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
		clock		      	  : IN  STD_LOGIC  := '1';
		data_a				  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		data_b				  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren_a				  : IN  STD_LOGIC  := '0';
		wren_b				  : IN  STD_LOGIC  := '0';
		q_a		  			  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		q_b					  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	   );
    END component;
	 
	component base_circuit
		port
		(
		clk					: in  STD_LOGIC;						--from system
		res					: in  STD_LOGIC;						--from system
		en_disc           : in  STD_LOGIC;
		cnt_guru_rdy		: in  STD_LOGIC;						--from counter
		ref_2_base        : in  ref_2_base_flags;				--from referee    		
		disc_2_base    	: in  disc_2_base_flags;
		start_step  		: out  STD_LOGIC;	
		en_cnt_step       : out STD_LOGIC;
		base_2_ref  		: out base_2_ref_flags;
		base_2_mem     	: out base_2_mem_flags
		);
	 end component;

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

   signal clk_s, res_s           : STD_LOGIC;
	signal en_cnt_s		         : STD_LOGIC;
	signal cnt_guru_rdy_s      	: STD_LOGIC;
	signal cnt_disc_rdy_s      	: STD_LOGIC;
	signal start_step_s 				: STD_LOGIC;	
	signal cnt_value_s         	: UNSIGNED(15 downto 0) ; 
	signal enable_s,en_bypass_s   : STD_LOGIC;
	signal speed_sync_s			   : SPEED;
	signal sys_speed_s    	  		: STD_LOGIC_VECTOR(3 downto 0);
	signal tb_init_guru_data_s 	: STD_LOGIC_VECTOR(7 downto 0);
	signal disc_data_s,mem_a_data_s  	   		: STD_LOGIC_VECTOR(7 downto 0);
	signal ref_2_base_s        	: ref_2_base_flags;
	signal base_2_ref_s 		   	: base_2_ref_flags;
	signal base_2_mem_s        	: base_2_mem_flags;
	signal disc_2_base_s       	: disc_2_base_flags;
	signal disc_2_mem_s		   	: disc_2_mem_flags;
   signal mem_a_addr_s           : STD_LOGIC_VECTOR(5 downto 0);
	
	
begin

	button : button_handler port map
									(
									clk					=>clk_s,
									res					=>res_s,
									enable				=>enable,
									enable_bypass     =>en_bypass_s,
									sys_speed    		=>sys_speed_s,
									speed_sync		   =>speed_sync_s
									);
									
	
	  mem   : mem_2port 
									port map
									(
									address_a		     =>mem_a_addr_s, -- base_2_mem_s.mem_a_addr,
									address_b			  =>disc_2_mem_s.mem_b_addr,
									clock		      	  =>clk_s,
									data_a				  =>base_2_mem_s.data_a,
									data_b				  =>disc_2_mem_s.data_b,
									wren_a				  =>base_2_mem_s.mem_wr_en,
									wren_b				  =>disc_2_mem_s.mem_wr_en,
									q_a		  			  =>mem_a_data_s,
									q_b					  =>disc_data_s
									);

	   base: base_circuit 
									port map
									(
									clk					   =>clk_s,
									res						=>res_s,
									en_disc              =>en_bypass_s,
									cnt_guru_rdy			=>cnt_guru_rdy_s,
									ref_2_base        	=>ref_2_base,    		
									disc_2_base    		=>disc_2_base,
									start_step  			=>start_step_s,
									en_cnt_step          =>en_cnt_s,
									base_2_ref  			=>base_2_ref_s,
									base_2_mem     		=>base_2_mem_s
									);
									
	 step  : step_counter  
			generic map(
									COUNT_MAX_V8_FAST	   => x"A0",    -- 80 decimal
									COUNT_COUNT_WIDTH 	=> 16     --for test , functional value = 50000000 -1X
									)
									port map
									(
									clk						=> clk_s,
									res						=> res_s,
									speed_sync				=> speed_sync_s,
									enable      			=> en_bypass_s,
									en_cnt      	   	=> en_cnt_s,
									cnt_guru_rdy 			=> cnt_guru_rdy_s,
									cnt_disc_rdy  			=> cnt_disc_rdy_s,
									cnt_value				=> cnt_value_s );
				
									
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	clk_s 						 <= clk;
	res_s 						 <= res;
	sys_speed_s              <= sys_speed;
	
	
	cnt_disc_rdy      		 <= cnt_disc_rdy_s;
	cnt_guru_rdy      		 <= cnt_guru_rdy_s;
	disc_2_mem_s 				 <= disc_2_mem;
	base_2_ref  				 <= base_2_ref_s;				
	start_step  				 <= start_step_s;							
	
	print_rdy                <= cnt_disc_rdy_s when en_bypass_s = '1' and (disc_2_base.end_of_disc ='0') else
										 cnt_guru_rdy_s ;     -- for test only
	
	mem_a_addr_s             <= base_2_mem_s.mem_a_addr  when (base_2_mem_s.mem_wr_en='1') else
										 mem_a_addr;
										 
	mem_a_data               <=mem_a_data_s;
end arch;
