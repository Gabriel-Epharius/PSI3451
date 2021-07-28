Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity rc_adder_2 is
	generic
	(
	WIDTH	: natural := 8
	);
	port
	(
	a_i, b_i	:in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
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
	adders : for j in WIDTH-1 downto 0 generate
		lsb : if j = 0 generate
			adlsb : full_adder_1 port map(a_i(j),b_i(j),c_i,z_out(j),carry(j));
		end generate;
		msb : if j > 0 generate
			admsb : full_adder_1 port map(a_i(j),b_i(j),carry(j-1),z_out(j),carry(j));
		end generate;
	end generate adders;
	c_o <= carry(width -1 );
end structural;



