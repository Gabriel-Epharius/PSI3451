library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Use work.wisdom_package.all;

entity tb_base_control is

GENERIC (WIDTH: natural :=8);

end tb_base_control;

architecture test of tb_base_control is

	component base_control 

	port
	(
		clk				: in  STD_LOGIC;						--from system
		res				: in  STD_LOGIC;						--from system
		en_disc        : in  STD_LOGIC;
		cnt_guru_rdy	: in  STD_LOGIC;						--from counter
		dp_2_ctrl      : in  dp_2_ctrl_flags;
		disc_2_base    : in  disc_2_base_flags;
		ref_2_base     : in  ref_2_base_flags;				--from referee
		en_cnt_step    : out STD_LOGIC;
		start_step  	: out  STD_LOGIC;	
		ctrl_2_dp      : out ctrl_2_dp_flags;
		ctrl_2_mem     : out base_2_mem_flags
	);
end component;

	component stimuli_base_control
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
end component;

	
	signal clk_s, res_s, en_disc_s, cnt_guru_rdy_s, en_cnt_step_out, start_step_out:  STD_LOGIC ;
	signal dp_2_ctrl_s      :  dp_2_ctrl_flags;
	signal disc_2_base_s    :  disc_2_base_flags;
	signal ref_2_base_s     :  ref_2_base_flags;	
	signal ctrl_2_dp_s     		  : ctrl_2_dp_flags;
	signal ctrl_2_mem_s			  : base_2_mem_flags;


begin

	-- Instantiate mem_2port
	dut : base_control
		port map
		(
		clk					=> clk_s,
		res					=> res_s,
		en_disc          	=> en_disc_s,
		cnt_guru_rdy	    => cnt_guru_rdy_s,
		dp_2_ctrl	    	=> dp_2_ctrl_s,
		disc_2_base  		=> disc_2_base_s,
		ref_2_base		    => ref_2_base_s,
		en_cnt_step			=> en_cnt_step_out,
		start_step			=> start_step_out,
		ctrl_2_dp			=> ctrl_2_dp_s,
		ctrl_2_mem			=> ctrl_2_mem_s
		);

	-- Instantiate stimuli generation module
	stimuli : stimuli_base_control
		port map
		(
		clk					=> clk_s,
		res					=> res_s,
		en_disc         	=> en_disc_s,
		cnt_guru_rdy	    => cnt_guru_rdy_s,
		dp_2_ctrl	    	=> dp_2_ctrl_s,
		disc_2_base   		=> disc_2_base_s,
		ref_2_base		    => ref_2_base_s
			);

end architecture test;