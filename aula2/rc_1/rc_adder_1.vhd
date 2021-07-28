Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity full_adder_2 is
	port
	(
	a_in, b_in, c_in		:	in STD_LOGIC;
	z_out, c_out			:	out STD_LOGIC
	);
	
end full_adder_2;


architecture structural of full_adder_2 is

	COMPONENT and2 
		GENERIC (t_and: time := 3 ns);
		PORT (x, y: IN STD_LOGIC;
			    z   : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT xor2
		GENERIC (t_xor: time := 4 ns);
		PORT (x, y: IN STD_LOGIC;
			    z: OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT or3
		GENERIC (t_or: time := 5 ns);
		PORT (w, x, y: IN STD_LOGIC;
			    z: OUT STD_LOGIC);
	END COMPONENT;  
  
signal aux_xor, aux_and_1, aux_and_2, aux_and_3	: STD_LOGIC;

begin

	XOR_2: xor2 PORT MAP (x=>c_in ,y=>aux_xor ,z=>z_out ); 
     	XOR_1: xor2 PORT MAP (y=>b_in, z=>aux_xor, x=>a_in); 
     	AND_1: and2 PORT MAP (y=>b_in, z=>aux_and_1, x=>a_in); 
     	AND_2: and2 PORT MAP (a_in ,c_in, aux_and_2 ); 
	OR_3: or3 PORT MAP (aux_and_1, aux_and_2 ,y=>aux_and_3, z=>c_out ); 
	AND_3: and2 PORT MAP (x=>b_in ,y=>c_in ,z=>aux_and_3 ); 


end structural;

Library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY and2 IS
	GENERIC(t_and : time := 2 ns);
	PORT( x, y: IN STD_LOGIC;
		    z: OUT STD_LOGIC);
END and2;

ARCHITECTURE dataflow OF and2 IS

BEGIN 
	z <= x AND y AFTER t_and;
END dataflow;

Library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY xor2 IS
	GENERIC(t_xor : time := 4 ns);
	PORT( x, y: IN STD_LOGIC;
		    z: OUT STD_LOGIC);
END xor2;

ARCHITECTURE dataflow OF xor2 IS

BEGIN 
	z <= x XOR y AFTER t_xor;
END dataflow;

Library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY or3 IS
	GENERIC(t_or : time := 4 ns);
	PORT( w, x, y: IN STD_LOGIC;
		    z: OUT STD_LOGIC);
END or3;

ARCHITECTURE dataflow OF or3 IS

BEGIN 
	z <= w OR x OR y AFTER t_or;
END dataflow;

Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity rc_adder_1 is
	generic
	(
	WIDTH	: natural := 4
	);
	port
	(
	a_i, b_i		:	in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	z_out			:	out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	c_i			:	in STD_LOGIC;
	c_o			:	out STD_LOGIC
	);
	
end rc_adder_1;


architecture structural of rc_adder_1 is

	component full_adder_2 is
	port
	(
	a_in, b_in, c_in		:	in STD_LOGIC;
	z_out, c_out			:	out STD_LOGIC
	);
	
	end component;
	
	signal cots: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	
	begin
		  fas: for i in WIDTH-1 downto 0 generate
    			lsb: if i=0 generate
      			hai: full_adder_2 port map(a_i(i), b_i(i), c_i, z_out(i), cots(i));
    			end generate;
    		  msb: if i>0 generate 
      			fai: full_adder_2 port map(a_i(i), b_i(i), cots(i-1), z_out(i), cots(i));
    			end generate;
  		end generate fas;
  		
  c_o <= cots(WIDTH-1);

	


end structural;







