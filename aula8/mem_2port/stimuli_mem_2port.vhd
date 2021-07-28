library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity stimuli_mem_2port is
	generic
	(
	WIDTH:         NATURAL := 8;
	CLK_PERIOD		: TIME	:=  10ns
	);

	PORT
	(
		address_a		: OUT STD_LOGIC_VECTOR (WIDTH-3 DOWNTO 0);
		address_b		: OUT STD_LOGIC_VECTOR (WIDTH-3 DOWNTO 0);
		clock		: OUT STD_LOGIC  ;
		data_a		: OUT STD_LOGIC_VECTOR (WIDTH-1 DOWNTO 0);
		data_b		: OUT STD_LOGIC_VECTOR (WIDTH-1 DOWNTO 0);
		wren_a		: OUT STD_LOGIC  ;
		wren_b		: OUT STD_LOGIC 
	);

end stimuli_mem_2port ;



architecture test of stimuli_mem_2port  is
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


	clock <=clk_s;

	clock_gen: clock_generator
		port map
		(
		clk		=> clk_s
		);


	sim : process
		
		procedure check_mem(address_a_value, address_b_value: in STD_LOGIC_VECTOR (5 DOWNTO 0); wren_a_value, wren_b_value: in STD_LOGIC; data_a_value, data_b_value: in STD_LOGIC_VECTOR (7 DOWNTO 0)) is
		
			begin
			-- Assign values to estimuli_module´s outputs.
			address_a <= address_a_value; 
			address_b <= address_b_value;
			wren_a <= wren_a_value;
			wren_b <= wren_b_value; 
			data_a <=  data_a_value;
			data_b <=  data_b_value;

			wait until rising_edge (clk_s);
			-- Events at the rising edge of next clock cycle
			end procedure check_mem;

		begin   -- process
			
		-- Apply test vectors
		
		for i in 0 to 63 loop
			check_mem(std_logic_vector(to_unsigned(i, 6)), std_logic_vector(to_unsigned(i, 6)),'0','1',std_logic_vector(to_unsigned(4*i+3, 8)),std_logic_vector(to_unsigned(255-4*i, 8)));    -- fill in and check memory 
		end loop;
	
		
		wait;
	end process sim;
end architecture test;