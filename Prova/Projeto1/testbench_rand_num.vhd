LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;


ENTITY tb_rand_num IS
	GENERIC(
			WIDTH	   	: NATURAL := 8
	);
	
END tb_rand_num ;

ARCHITECTURE arch OF tb_rand_num IS
	 
	
	component rand_num is
	port(
		clk, res: in std_logic;
		q_out: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component stimuli is 
    generic( 
        width : natural := 12; 
        CLK_PERIOD : time := 10 ns 
    ); 
    port( 
        clk : out std_logic; 
        res : out std_logic; 
        rand : in std_logic_vector(1 downto 0) 
    ); 
	end component;
	

	SIGNAL clk_s, reset_s 		   	: STD_LOGIC;
	SIGNAL rand_number_s  	   		: STD_LOGIC_VECTOR(WIDTH-1 downto 0)  ;
	
	
	BEGIN

		
		rand : rand_num port map (clk_s, reset_s, rand_number_s);

		stimulo : stimuli port map(clk_s, reset_s, rand_number_s(1 downto 0));

				
end arch;