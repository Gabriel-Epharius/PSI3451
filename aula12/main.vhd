library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;


entity main is
    port(   
        clock, reset, enable: in std_logic;
        sys_speed: in std_logic_vector(3 downto 0)
    );
end entity;

architecture arquitetura of main is

    component base_circuit_extended is 
	port
	(
		    clk					: in  STD_LOGIC;						     --from system
		    res					: in  STD_LOGIC;						     --from system
		    enable				: in  STD_LOGIC;						      -- from player
		    sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
    
		    disc_2_base			: in  disc_2_base_flags;					--fom disciple circuit
		    disc_2_mem			: in  disc_2_mem_flags;					-- from disciple	
		    disc_2_ref			: in  disc_2_ref_flags;					-- from disciple	
		    print_rdy         : out STD_LOGIC;							-- for test only -monitor and VGA
		    cnt_disc_rdy      : out STD_LOGIC;
		    ref_2_disc			: out ref_2_disc_flags;
		    start_step  		: out STD_LOGIC;						--to disciple circuit
    
		    mem_a_data	: out STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
		    mem_a_addr	: in STD_LOGIC_VECTOR(5 downto 0)
	    );
    end  component;

    component disciple_circuit is 
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
end component;


begin

end arquitetura ; -- arquitetura