library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.wisdom_package.all;


entity disciple_circuit is 
	generic
	(
	WIDTH: NATURAL	:= 8
	);
	
	port
	(
			clock					: in  STD_LOGIC;						
			reset					: in  STD_LOGIC;						
			cnt_disc_rdy			: in  STD_LOGIC;	
			start_step     			: in  STD_LOGIC;	
			go_disc           		: in  STD_LOGIC;
			duo_formed        		: in  STD_LOGIC;
			guru_well_behind  		: in  STD_LOGIC;
			end_of_disciple			: out STD_LOGIC;
			disc_wr_en 		 		: out STD_LOGIC;
			disc_data       		: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
			disc_address_to_mem     : out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
			disc_address       		: out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
			disc_address_prev  		: out STD_LOGIC_VECTOR(WIDTH-3 downto 0)
	
	);
end disciple_circuit;

architecture arch of disciple_circuit is

component disc_datapath is 
	generic
	(
	WIDTH: NATURAL	:= 8
	);

	port
	(
	clk	       : in STD_LOGIC;		    --from system
	res		   : in  STD_LOGIC;		    --from system
	ctrl_ctrl  : in  ctrl_2_dp_flags;	--from fsm_disc
	disc_2_ref : out base_2_ref_flags;	--to system	
	mem_data   : out disc_2_mem_flags;  --to system      
	ctrl_flags : out dp_2_ctrl_flags    --to fsm_disc
	);
end component;

component fsm_disc is 
	port
	(
	clk				 : in STD_LOGIC;			--from system
	res				 : in STD_LOGIC;			--from system
	start_step  	 : in STD_LOGIC;			--from fsm internal
	end_of_disc		 : in STD_LOGIC;			--from datapath
	guru_well_behind : in STD_LOGIC;			--from system	
	cnt_disc_rdy	 : in STD_LOGIC;	        --from system
	duo_formed		 : in STD_LOGIC;			--from system
	go_disc        	 : in STD_LOGIC;			--from system
	flags_2_dp		 : out ctrl_2_dp_flags;	    --to datapath
	flags_2_mem		 : out disc_2_mem_flags	    --to memory
	);
end component;

signal ctrl_flags_s	 : dp_2_ctrl_flags;
signal flags_2_dp_s	 : ctrl_2_dp_flags;
signal disc_2_ref_s  : base_2_ref_flags;		
signal flags_2_mem_s,flags_2_mem_ss : disc_2_mem_flags;


begin
	-- component Port Mapping
	dp: disc_datapath 
						generic map(WIDTH=>WIDTH)
						port map
						(
						clk	       => clock,
						res		   => reset,
						ctrl_ctrl  => flags_2_dp_s,
						disc_2_ref => disc_2_ref_s,
						mem_data   => flags_2_mem_s,  
						ctrl_flags => ctrl_flags_s
						);

	fsm: fsm_disc 
						port map
						(
						clk				 => clock, 
						res				 => reset,
						start_step  	 => start_step,
						end_of_disc		 => ctrl_flags_s.ovf_of_y,
						guru_well_behind => guru_well_behind,
						cnt_disc_rdy	 => cnt_disc_rdy,
						duo_formed		 => duo_formed,
						go_disc        	 => go_disc,
						flags_2_dp		 => flags_2_dp_s,
						flags_2_mem		 => flags_2_mem_ss
						);


	-- Signal Assignment
	
	disc_address 		<= 	disc_2_ref_s.guru_addr(WIDTH-3 downto 0);
	disc_address_prev 	<= disc_2_ref_s.guru_prev_addr(WIDTH-3 downto 0);
	disc_wr_en			<=	flags_2_mem_ss.mem_wr_en;
	disc_address_to_mem	<=	flags_2_mem_s.mem_b_addr(WIDTH-3 downto 0);
	disc_data			<=	flags_2_mem_s.data_b;
	end_of_disciple		<= ctrl_flags_s.ovf_of_y;
	
end arch;