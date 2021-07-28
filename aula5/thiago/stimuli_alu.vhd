library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stimuli_module is
	generic
	(
	WIDTH	: natural := 8
	);
	
	port
	(
	one_op, rb_op	: 	out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	alu_ctrl	:	out STD_LOGIC
	);
end stimuli_module ;

architecture test of stimuli_module  is
-- "Time" that will elapse between test vectors we submit to the component.
constant TIME_DELTA : time := 100 ns;      -- choose any value
begin

simulation : process

procedure assign_alu_ctrl (constant a: in STD_LOGIC) is
begin
-- Assign values to estimuli_module´s outputs.
	alu_ctrl <= a;
	wait for TIME_DELTA;
end procedure ;


procedure assign_input_words(constant a, b: in integer) is
begin
-- Assign values to estimuli_module´s outputs.
	one_op <= std_logic_vector(to_unsigned(a,WIDTH));
	rb_op <= std_logic_vector(to_unsigned(b,WIDTH));
	wait for TIME_DELTA;
end procedure assign_input_words;




begin
-- test vectors application
	assign_input_words(233, 201);
	assign_alu_ctrl('0');
	wait;
	end process simulation;
end architecture test;
