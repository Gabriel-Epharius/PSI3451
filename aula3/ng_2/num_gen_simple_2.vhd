--***************************************************************
--*																*
--*	Title	:													*
--*	Design	:													*
--*	Author	:													*
--*	Email	:													*
--*																*
--***************************************************************
--*																*
--*	Description :												*
--*																*
--***************************************************************
package my_package is

	 type NG_SEL is	(
					RANDOM,
					ZERO,
					ALU
					);
					
end package;



library IEEE;
use IEEE.std_logic_1164.all;

use work.my_package.all;



entity num_gen_simple is 
  					
	generic
	(
	WIDTH		: NATURAL	:= 8
	);


	port
	(
	num_sel		: in NG_SEL;
	ng_2_rb		: out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
	);
	
end num_gen_simple;


architecture process_case of num_gen_simple is


--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal random_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0) 	:= "11111111";
signal zero_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0)	:= "00000000";
signal alu_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0)	:= "01010101";

begin


process (num_sel)
			begin
				case num_sel 	is
					when RANDOM	=> 	ng_2_rb	<= 	random_s;
												
					when ZERO 	=>  	ng_2_rb	<= 	zero_s;
												
					when ALU 	=>  ng_2_rb	<= 	alu_s;
									
					when others	=> null;
			
				end case;
			end process;

				

end process_case;
