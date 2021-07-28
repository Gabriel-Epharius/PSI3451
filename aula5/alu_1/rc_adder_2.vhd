Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity full_adder_1 is
	port
	(
	a_in, b_in, c_in	:	in STD_LOGIC;
	z_out, c_out		:	out STD_LOGIC
	);
	
end full_adder_1;



architecture dataflow of full_adder_1 is

	signal aux_xor, aux_and_1, aux_and_2, aux_and_3	: STD_LOGIC;

	begin

		z_out <= aux_xor xor c_in AFTER 4 ns; --8
     		aux_xor <= a_in xor b_in AFTER 4 ns; -- 4
     		aux_and_1 <= a_in and b_in AFTER 3 ns;  -- 3
     		aux_and_2 <= a_in and c_in AFTER 3 ns;  -- 6
		c_out <= aux_and_1 or aux_and_2 or aux_and_3 AFTER 5 ns; --11 
		aux_and_3 <= b_in and c_in AFTER 3 ns; --6
	
end dataflow;

Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity rc_adder_2 is
	generic
	(
	WIDTH	: natural := 8
	);
	port
	(
	a_i, b_i		:	in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	z_out		:	out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	c_i			:	in STD_LOGIC;
	c_o			:	out STD_LOGIC
	);
	
end rc_adder_2;


architecture structural of rc_adder_2 is


	COMPONENT full_adder_1 
		port ( a_in, b_in, c_in		:	in STD_LOGIC;
				z_out, c_out		:	out STD_LOGIC);
	END COMPONENT;
	
  
  
signal carry	: STD_LOGIC_VECTOR (WIDTH-1 downto 0);  -- auxiliary signal carry(x) means carry_out of stage x

begin 
	fas: for i in WIDTH-1 downto 0 generate
  		lsb: if i=0 generate
      			hai: full_adder_1 port map(a_i(i), b_i(i), c_i, z_out(i), carry(i));
    			end generate;
    		msb: if i>0 generate 
      			fai: full_adder_1 port map(a_i(i), b_i(i), carry(i-1), z_out(i), carry(i));
    			end generate;
  		end generate fas;
  		
  c_o <= carry(WIDTH-1);

end structural;



