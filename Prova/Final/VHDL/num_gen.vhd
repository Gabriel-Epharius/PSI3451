LIBRARY IEEE;
USE work.wisdom_package.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;


ENTITY num_gen IS
	GENERIC(
			WIDTH	   	: NATURAL := 8;
			SEED_i   	: NATURAL := 4095;   -- semente  bINaria 111111111111      --   
			TAP_i    	: NATURAL := 1380;  -- n_usp 9837924 => mod(n_usp , 2048) --
			FFBIT    	: NATURAL := 1
	);
	
	PORT(
			clk			: IN  STD_LOGIC;
			reset 		: IN  STD_LOGIC;
			alu_2_ng	   : IN  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
			canal    	: IN  ctrl_2_dp_flags; --datapath_ctrl_flags;
			ng_2_RB		: OUT STD_LOGIC_VECTOR (WIDTH-1 downto 0)
	);
END num_gen ;

ARCHITECTURE arch OF num_gen IS
	 
	 COMPONENT num_gen_rand IS
		GENERIC(
			  WIDTH			   : NATURAL := 8
		);
		
		port(
				ng_rand_zero	: in STD_LOGIC;
				rand_num       : in  STD_LOGIC_VECTOR (1 downto 0); 
				number			: out STD_LOGIC_VECTOR (WIDTH-1 downto 0)
		);
	end   COMPONENT ;
	
	component flsr is
		port (
			clk : in std_logic;
			res : in std_logic;
			qi  : out  std_logic_vector(11 downto 0); 
			qout : out std_logic_vector(1 downto 0)
		);
	end component;

	
	SIGNAL rand_num_s   	   : STD_LOGIC_VECTOR(1 downto 0);  
	SIGNAL number_s         : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL ng_2_RB_s        : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL alu_2_ng_s       : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL reset_s 		   : STD_LOGIC;
	
	
	BEGIN
		reset_s 	    <= NOT reset;
		alu_2_ng_s   <= alu_2_ng;
		
		LFSR : flsr 
						PORT MAP(
								clk,
								reset_s,
								open,
								rand_num_s);
							 
		num_gen1 : num_gen_rand 
						GENERIC MAP(WIDTH)
						PORT MAP( 
							ng_rand_zero	=> canal.ng_rand_zero,
							rand_num       => rand_num_s, 
							number			=> number_s
						);					 
							 
							 
		ng_2_RB_s	<=	number_s	      when (canal.ng_cte_incr = '0') else
							alu_2_ng_s     when (canal.ng_cte_incr = '1') else
							(others => 'X' );						 

		ng_2_RB      <= ng_2_RB_s;
		
end arch;