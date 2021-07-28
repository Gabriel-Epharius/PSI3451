library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Use work.wisdom_package.all;

entity stimuli_base_control IS
	generic
	(
	WIDTH:         NATURAL := 8;
	CLK_PERIOD		: TIME	:=  10ns
	);
	
	port
	(
		clk				: out  STD_LOGIC;						--from system
		res				: out  STD_LOGIC;						--from system
		en_disc        : out   STD_LOGIC;
		cnt_guru_rdy	: out   STD_LOGIC;						--from counter
		dp_2_ctrl      : out   dp_2_ctrl_flags;
		disc_2_base    : out   disc_2_base_flags;
		ref_2_base     : out   ref_2_base_flags	
	);
end stimuli_base_control;

architecture test of stimuli_base_control is
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

	
	clk <=clk_s;

	clock_gen: clock_generator
		port map
		(
		clk		=> clk_s
		);


	sim : process
		
		begin
		
		res <= '0';
		en_disc <='0';
		cnt_guru_rdy <='0';
		dp_2_ctrl.end_of_guru <= '0';
		dp_2_ctrl.ovf_of_y <='0';
		disc_2_base.end_of_disc <= '0';
		ref_2_base.duo_formed <= '0';
		ref_2_base.go_guru <= '0';
		
		wait for CLK_PERIOD;
		
		en_disc <='1';
		
		wait for 5*CLK_PERIOD;
		
		cnt_guru_rdy <= '1';
		
		wait for 10*CLK_PERIOD;
		
		en_disc <= '0';
		
		wait for 10*CLK_PERIOD;
		
		dp_2_ctrl.end_of_guru 	<= '1';
		dp_2_ctrl.ovf_of_y 		<= '1';
		disc_2_base.end_of_disc <= '1';
		ref_2_base.duo_formed 	<= '1';
		ref_2_base.go_guru 		<= '1';
		
		cnt_guru_rdy <= '0';
		
		wait for 10*CLK_PERIOD;
		
		dp_2_ctrl.end_of_guru 	<= '1';
		dp_2_ctrl.ovf_of_y 		<= '0';
		disc_2_base.end_of_disc <= '1';
		ref_2_base.duo_formed 	<= '0';
		ref_2_base.go_guru 		<= '1';
		
		wait for 10*CLK_PERIOD;
		
		dp_2_ctrl.end_of_guru 	<= '0';
		dp_2_ctrl.ovf_of_y 		<= '1';
		disc_2_base.end_of_disc <= '0';
		ref_2_base.duo_formed 	<= '0';
		ref_2_base.go_guru 		<= '1';
		
		wait for 10*CLK_PERIOD;
		
		dp_2_ctrl.end_of_guru 	<= '0';
		dp_2_ctrl.ovf_of_y 		<= '0';
		disc_2_base.end_of_disc <= '0';
		ref_2_base.duo_formed 	<= '1';
		ref_2_base.go_guru 		<= '1';
		
		wait for 10*CLK_PERIOD;
		
		dp_2_ctrl.end_of_guru 	<= '0';
		dp_2_ctrl.ovf_of_y 		<= '0';
		disc_2_base.end_of_disc <= '1';
		ref_2_base.duo_formed 	<= '0';
		ref_2_base.go_guru 		<= '0';
		
		wait for 10*CLK_PERIOD;
		
		dp_2_ctrl.end_of_guru 	<= '0';
		dp_2_ctrl.ovf_of_y 		<= '0';
		disc_2_base.end_of_disc <= '0';
		ref_2_base.duo_formed 	<= '1';
		ref_2_base.go_guru 		<= '0';
		
		wait for 10*CLK_PERIOD;
		
		dp_2_ctrl.end_of_guru 	<= '0';
		dp_2_ctrl.ovf_of_y 		<= '0';
		disc_2_base.end_of_disc <= '1';
		ref_2_base.duo_formed 	<= '1';
		ref_2_base.go_guru 		<= '0';
		
		wait for 10*CLK_PERIOD;

		dp_2_ctrl.end_of_guru <= '0';
		dp_2_ctrl.ovf_of_y <='0';
		disc_2_base.end_of_disc <= '0';
		ref_2_base.duo_formed <= '0';
		ref_2_base.go_guru <= '0';
		
		wait for 10*CLK_PERIOD;
		
		res <= '1';
		
		wait for 1*CLK_PERIOD;
		
		res <= '0';
		
		wait for 10*CLK_PERIOD;

		
	end process sim;
end architecture test;