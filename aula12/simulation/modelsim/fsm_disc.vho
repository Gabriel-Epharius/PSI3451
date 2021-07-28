-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/01/2021 11:15:47"

-- 
-- Device: Altera 5CSEMA6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fsm_disc IS
    PORT (
	clk : IN std_logic;
	res : IN std_logic;
	start_step : IN std_logic;
	end_of_disc : IN std_logic;
	guru_well_behind : IN std_logic;
	cnt_disc_rdy : IN std_logic;
	duo_formed : IN std_logic;
	go_disc : IN std_logic;
	\flags_2_dp.cg_sel.DUO\ : OUT std_logic;
	\flags_2_dp.cg_sel.DISC\ : OUT std_logic;
	\flags_2_dp.cg_sel.GURU\ : OUT std_logic;
	\flags_2_dp.cg_sel.BLANK\ : OUT std_logic;
	\flags_2_dp.rb_out_sel.REG_DISC_PREV_OUT\ : OUT std_logic;
	\flags_2_dp.rb_out_sel.REG_DISC_OUT\ : OUT std_logic;
	\flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT\ : OUT std_logic;
	\flags_2_dp.rb_out_sel.REG_GURU_OUT\ : OUT std_logic;
	\flags_2_dp.rb_out_sel.INIT_OUT\ : OUT std_logic;
	\flags_2_dp.rb_PRE_GURU_en\ : OUT std_logic;
	\flags_2_dp.rb_GURU_en\ : OUT std_logic;
	\flags_2_dp.rb_INIT_en\ : OUT std_logic;
	\flags_2_dp.alu_ctrl\ : OUT std_logic;
	\flags_2_dp.ng_rand_zero\ : OUT std_logic;
	\flags_2_dp.ng_cte_incr\ : OUT std_logic;
	\flags_2_mem.cg_sel.DUO\ : OUT std_logic;
	\flags_2_mem.cg_sel.DISC\ : OUT std_logic;
	\flags_2_mem.cg_sel.GURU\ : OUT std_logic;
	\flags_2_mem.cg_sel.BLANK\ : OUT std_logic;
	\flags_2_mem.data_b\ : OUT std_logic_vector(7 DOWNTO 0);
	\flags_2_mem.mem_wr_en\ : OUT std_logic;
	\flags_2_mem.mem_b_addr\ : OUT std_logic_vector(5 DOWNTO 0)
	);
END fsm_disc;

-- Design Ports Information
-- flags_2_dp.cg_sel.DUO	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.cg_sel.DISC	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.cg_sel.GURU	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.cg_sel.BLANK	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_out_sel.REG_DISC_PREV_OUT	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_out_sel.REG_DISC_OUT	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_out_sel.REG_GURU_OUT	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_out_sel.INIT_OUT	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_PRE_GURU_en	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_GURU_en	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.rb_INIT_en	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.alu_ctrl	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.ng_rand_zero	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_dp.ng_cte_incr	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.cg_sel.DUO	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.cg_sel.DISC	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.cg_sel.GURU	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.cg_sel.BLANK	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[3]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[4]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[5]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.data_b[7]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.mem_wr_en	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.mem_b_addr[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.mem_b_addr[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.mem_b_addr[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.mem_b_addr[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.mem_b_addr[4]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags_2_mem.mem_b_addr[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duo_formed	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go_disc	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_of_disc	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guru_well_behind	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_step	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_disc_rdy	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsm_disc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_start_step : std_logic;
SIGNAL ww_end_of_disc : std_logic;
SIGNAL ww_guru_well_behind : std_logic;
SIGNAL ww_cnt_disc_rdy : std_logic;
SIGNAL ww_duo_formed : std_logic;
SIGNAL ww_go_disc : std_logic;
SIGNAL \ww_flags_2_dp.cg_sel.DUO\ : std_logic;
SIGNAL \ww_flags_2_dp.cg_sel.DISC\ : std_logic;
SIGNAL \ww_flags_2_dp.cg_sel.GURU\ : std_logic;
SIGNAL \ww_flags_2_dp.cg_sel.BLANK\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_out_sel.REG_DISC_PREV_OUT\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_out_sel.REG_DISC_OUT\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_out_sel.REG_GURU_OUT\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_out_sel.INIT_OUT\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_PRE_GURU_en\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_GURU_en\ : std_logic;
SIGNAL \ww_flags_2_dp.rb_INIT_en\ : std_logic;
SIGNAL \ww_flags_2_dp.alu_ctrl\ : std_logic;
SIGNAL \ww_flags_2_dp.ng_rand_zero\ : std_logic;
SIGNAL \ww_flags_2_dp.ng_cte_incr\ : std_logic;
SIGNAL \ww_flags_2_mem.cg_sel.DUO\ : std_logic;
SIGNAL \ww_flags_2_mem.cg_sel.DISC\ : std_logic;
SIGNAL \ww_flags_2_mem.cg_sel.GURU\ : std_logic;
SIGNAL \ww_flags_2_mem.cg_sel.BLANK\ : std_logic;
SIGNAL \ww_flags_2_mem.data_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_flags_2_mem.mem_wr_en\ : std_logic;
SIGNAL \ww_flags_2_mem.mem_b_addr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \duo_formed~input_o\ : std_logic;
SIGNAL \go_disc~input_o\ : std_logic;
SIGNAL \cnt_disc_rdy~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.WRITE_DISC_480~combout\ : std_logic;
SIGNAL \STATE~25_combout\ : std_logic;
SIGNAL \STATE.WRITE_DISC~q\ : std_logic;
SIGNAL \NEXT_STATE~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.CLEAR_PREV_404~combout\ : std_logic;
SIGNAL \STATE~17_combout\ : std_logic;
SIGNAL \STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \start_step~input_o\ : std_logic;
SIGNAL \guru_well_behind~input_o\ : std_logic;
SIGNAL \end_of_disc~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.CHECK_BEHIND_442~combout\ : std_logic;
SIGNAL \STATE~24_combout\ : std_logic;
SIGNAL \STATE.CHECK_BEHIND~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.CLEAR_BEHIND_423~combout\ : std_logic;
SIGNAL \STATE~16_combout\ : std_logic;
SIGNAL \STATE.CLEAR_BEHIND~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.IDLE_613~combout\ : std_logic;
SIGNAL \STATE~15_combout\ : std_logic;
SIGNAL \STATE.IDLE~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.RAND_594~combout\ : std_logic;
SIGNAL \STATE~18_combout\ : std_logic;
SIGNAL \STATE.RAND~q\ : std_logic;
SIGNAL \NEXT_STATE.WRITE_RAND_575~combout\ : std_logic;
SIGNAL \STATE~20_combout\ : std_logic;
SIGNAL \STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.WAIT_COUNT_DISC_556~combout\ : std_logic;
SIGNAL \STATE~21_combout\ : std_logic;
SIGNAL \STATE.WAIT_COUNT_DISC~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.INCR_537~combout\ : std_logic;
SIGNAL \STATE~19_combout\ : std_logic;
SIGNAL \STATE.INCR~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.CHECK_LAST_461~combout\ : std_logic;
SIGNAL \STATE~23_combout\ : std_logic;
SIGNAL \STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.CHECK_SAME_ADDR_518~combout\ : std_logic;
SIGNAL \STATE~22_combout\ : std_logic;
SIGNAL \STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.WRITE_DUO_499~combout\ : std_logic;
SIGNAL \STATE~14_combout\ : std_logic;
SIGNAL \STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \flags_2_dp~0_combout\ : std_logic;
SIGNAL \flags_2_dp~1_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \ALT_INV_cnt_disc_rdy~input_o\ : std_logic;
SIGNAL \ALT_INV_start_step~input_o\ : std_logic;
SIGNAL \ALT_INV_guru_well_behind~input_o\ : std_logic;
SIGNAL \ALT_INV_end_of_disc~input_o\ : std_logic;
SIGNAL \ALT_INV_go_disc~input_o\ : std_logic;
SIGNAL \ALT_INV_duo_formed~input_o\ : std_logic;
SIGNAL \ALT_INV_res~input_o\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.INCR_537~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.RAND_594~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.IDLE_613~combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_NEXT_STATE~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.WRITE_DISC~q\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.CHECK_BEHIND~q\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \ALT_INV_STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \ALT_INV_STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \ALT_INV_STATE.WAIT_COUNT_DISC~q\ : std_logic;
SIGNAL \ALT_INV_STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \ALT_INV_STATE.INCR~q\ : std_logic;
SIGNAL \ALT_INV_STATE.RAND~q\ : std_logic;
SIGNAL \ALT_INV_flags_2_dp~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \ALT_INV_STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \ALT_INV_STATE.CLEAR_BEHIND~q\ : std_logic;
SIGNAL \ALT_INV_STATE.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_STATE.WRITE_DUO~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_res <= res;
ww_start_step <= start_step;
ww_end_of_disc <= end_of_disc;
ww_guru_well_behind <= guru_well_behind;
ww_cnt_disc_rdy <= cnt_disc_rdy;
ww_duo_formed <= duo_formed;
ww_go_disc <= go_disc;
\flags_2_dp.cg_sel.DUO\ <= \ww_flags_2_dp.cg_sel.DUO\;
\flags_2_dp.cg_sel.DISC\ <= \ww_flags_2_dp.cg_sel.DISC\;
\flags_2_dp.cg_sel.GURU\ <= \ww_flags_2_dp.cg_sel.GURU\;
\flags_2_dp.cg_sel.BLANK\ <= \ww_flags_2_dp.cg_sel.BLANK\;
\flags_2_dp.rb_out_sel.REG_DISC_PREV_OUT\ <= \ww_flags_2_dp.rb_out_sel.REG_DISC_PREV_OUT\;
\flags_2_dp.rb_out_sel.REG_DISC_OUT\ <= \ww_flags_2_dp.rb_out_sel.REG_DISC_OUT\;
\flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT\ <= \ww_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT\;
\flags_2_dp.rb_out_sel.REG_GURU_OUT\ <= \ww_flags_2_dp.rb_out_sel.REG_GURU_OUT\;
\flags_2_dp.rb_out_sel.INIT_OUT\ <= \ww_flags_2_dp.rb_out_sel.INIT_OUT\;
\flags_2_dp.rb_PRE_GURU_en\ <= \ww_flags_2_dp.rb_PRE_GURU_en\;
\flags_2_dp.rb_GURU_en\ <= \ww_flags_2_dp.rb_GURU_en\;
\flags_2_dp.rb_INIT_en\ <= \ww_flags_2_dp.rb_INIT_en\;
\flags_2_dp.alu_ctrl\ <= \ww_flags_2_dp.alu_ctrl\;
\flags_2_dp.ng_rand_zero\ <= \ww_flags_2_dp.ng_rand_zero\;
\flags_2_dp.ng_cte_incr\ <= \ww_flags_2_dp.ng_cte_incr\;
\flags_2_mem.cg_sel.DUO\ <= \ww_flags_2_mem.cg_sel.DUO\;
\flags_2_mem.cg_sel.DISC\ <= \ww_flags_2_mem.cg_sel.DISC\;
\flags_2_mem.cg_sel.GURU\ <= \ww_flags_2_mem.cg_sel.GURU\;
\flags_2_mem.cg_sel.BLANK\ <= \ww_flags_2_mem.cg_sel.BLANK\;
\flags_2_mem.data_b\ <= \ww_flags_2_mem.data_b\;
\flags_2_mem.mem_wr_en\ <= \ww_flags_2_mem.mem_wr_en\;
\flags_2_mem.mem_b_addr\ <= \ww_flags_2_mem.mem_b_addr\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cnt_disc_rdy~input_o\ <= NOT \cnt_disc_rdy~input_o\;
\ALT_INV_start_step~input_o\ <= NOT \start_step~input_o\;
\ALT_INV_guru_well_behind~input_o\ <= NOT \guru_well_behind~input_o\;
\ALT_INV_end_of_disc~input_o\ <= NOT \end_of_disc~input_o\;
\ALT_INV_go_disc~input_o\ <= NOT \go_disc~input_o\;
\ALT_INV_duo_formed~input_o\ <= NOT \duo_formed~input_o\;
\ALT_INV_res~input_o\ <= NOT \res~input_o\;
\ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\ <= NOT \NEXT_STATE.WRITE_DISC_480~combout\;
\ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\ <= NOT \NEXT_STATE.CHECK_BEHIND_442~combout\;
\ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\ <= NOT \NEXT_STATE.CHECK_LAST_461~combout\;
\ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\ <= NOT \NEXT_STATE.CHECK_SAME_ADDR_518~combout\;
\ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\ <= NOT \NEXT_STATE.WAIT_COUNT_DISC_556~combout\;
\ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\ <= NOT \NEXT_STATE.WRITE_RAND_575~combout\;
\ALT_INV_NEXT_STATE.INCR_537~combout\ <= NOT \NEXT_STATE.INCR_537~combout\;
\ALT_INV_NEXT_STATE.RAND_594~combout\ <= NOT \NEXT_STATE.RAND_594~combout\;
\ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\ <= NOT \NEXT_STATE.CLEAR_PREV_404~combout\;
\ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\ <= NOT \NEXT_STATE.CLEAR_BEHIND_423~combout\;
\ALT_INV_NEXT_STATE.IDLE_613~combout\ <= NOT \NEXT_STATE.IDLE_613~combout\;
\ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\ <= NOT \NEXT_STATE.WRITE_DUO_499~combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_NEXT_STATE~0_combout\ <= NOT \NEXT_STATE~0_combout\;
\ALT_INV_STATE.WRITE_DISC~q\ <= NOT \STATE.WRITE_DISC~q\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_STATE.CHECK_BEHIND~q\ <= NOT \STATE.CHECK_BEHIND~q\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_WideOr9~combout\ <= NOT \WideOr9~combout\;
\ALT_INV_STATE.CHECK_LAST~q\ <= NOT \STATE.CHECK_LAST~q\;
\ALT_INV_STATE.CHECK_SAME_ADDR~q\ <= NOT \STATE.CHECK_SAME_ADDR~q\;
\ALT_INV_WideOr6~combout\ <= NOT \WideOr6~combout\;
\ALT_INV_STATE.WAIT_COUNT_DISC~q\ <= NOT \STATE.WAIT_COUNT_DISC~q\;
\ALT_INV_STATE.WRITE_RAND~q\ <= NOT \STATE.WRITE_RAND~q\;
\ALT_INV_STATE.INCR~q\ <= NOT \STATE.INCR~q\;
\ALT_INV_STATE.RAND~q\ <= NOT \STATE.RAND~q\;
\ALT_INV_flags_2_dp~0_combout\ <= NOT \flags_2_dp~0_combout\;
\ALT_INV_WideOr7~0_combout\ <= NOT \WideOr7~0_combout\;
\ALT_INV_WideOr8~combout\ <= NOT \WideOr8~combout\;
\ALT_INV_STATE.CLEAR_PREV~q\ <= NOT \STATE.CLEAR_PREV~q\;
\ALT_INV_STATE.CLEAR_BEHIND~q\ <= NOT \STATE.CLEAR_BEHIND~q\;
\ALT_INV_STATE.IDLE~q\ <= NOT \STATE.IDLE~q\;
\ALT_INV_STATE.WRITE_DUO~q\ <= NOT \STATE.WRITE_DUO~q\;

-- Location: IOOBUF_X89_Y23_N39
\flags_2_dp.cg_sel.DUO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STATE.WRITE_DUO~q\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.cg_sel.DUO\);

-- Location: IOOBUF_X84_Y0_N2
\flags_2_dp.cg_sel.DISC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.cg_sel.DISC\);

-- Location: IOOBUF_X32_Y81_N36
\flags_2_dp.cg_sel.GURU~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.cg_sel.GURU\);

-- Location: IOOBUF_X89_Y20_N45
\flags_2_dp.cg_sel.BLANK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.cg_sel.BLANK\);

-- Location: IOOBUF_X36_Y0_N53
\flags_2_dp.rb_out_sel.REG_DISC_PREV_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_out_sel.REG_DISC_PREV_OUT\);

-- Location: IOOBUF_X89_Y6_N5
\flags_2_dp.rb_out_sel.REG_DISC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_out_sel.REG_DISC_OUT\);

-- Location: IOOBUF_X89_Y20_N62
\flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_flags_2_dp~0_combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT\);

-- Location: IOOBUF_X89_Y20_N79
\flags_2_dp.rb_out_sel.REG_GURU_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flags_2_dp~0_combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_out_sel.REG_GURU_OUT\);

-- Location: IOOBUF_X36_Y81_N19
\flags_2_dp.rb_out_sel.INIT_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_out_sel.INIT_OUT\);

-- Location: IOOBUF_X40_Y81_N2
\flags_2_dp.rb_PRE_GURU_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flags_2_dp~1_combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_PRE_GURU_en\);

-- Location: IOOBUF_X40_Y81_N19
\flags_2_dp.rb_GURU_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flags_2_dp~1_combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_GURU_en\);

-- Location: IOOBUF_X16_Y0_N2
\flags_2_dp.rb_INIT_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.rb_INIT_en\);

-- Location: IOOBUF_X89_Y21_N56
\flags_2_dp.alu_ctrl~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.alu_ctrl\);

-- Location: IOOBUF_X34_Y0_N93
\flags_2_dp.ng_rand_zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.ng_rand_zero\);

-- Location: IOOBUF_X89_Y21_N39
\flags_2_dp.ng_cte_incr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_dp.ng_cte_incr\);

-- Location: IOOBUF_X89_Y23_N22
\flags_2_mem.cg_sel.DUO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STATE.WRITE_DUO~q\,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.cg_sel.DUO\);

-- Location: IOOBUF_X84_Y0_N36
\flags_2_mem.cg_sel.DISC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.cg_sel.DISC\);

-- Location: IOOBUF_X58_Y0_N76
\flags_2_mem.cg_sel.GURU~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.cg_sel.GURU\);

-- Location: IOOBUF_X89_Y20_N96
\flags_2_mem.cg_sel.BLANK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.cg_sel.BLANK\);

-- Location: IOOBUF_X36_Y81_N2
\flags_2_mem.data_b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(0));

-- Location: IOOBUF_X4_Y0_N19
\flags_2_mem.data_b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(1));

-- Location: IOOBUF_X66_Y0_N59
\flags_2_mem.data_b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(2));

-- Location: IOOBUF_X8_Y81_N53
\flags_2_mem.data_b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(3));

-- Location: IOOBUF_X62_Y0_N2
\flags_2_mem.data_b[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(4));

-- Location: IOOBUF_X86_Y0_N19
\flags_2_mem.data_b[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(5));

-- Location: IOOBUF_X2_Y81_N59
\flags_2_mem.data_b[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(6));

-- Location: IOOBUF_X76_Y0_N19
\flags_2_mem.data_b[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.data_b\(7));

-- Location: IOOBUF_X89_Y23_N56
\flags_2_mem.mem_wr_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr9~combout\,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.mem_wr_en\);

-- Location: IOOBUF_X10_Y0_N59
\flags_2_mem.mem_b_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.mem_b_addr\(0));

-- Location: IOOBUF_X22_Y0_N53
\flags_2_mem.mem_b_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.mem_b_addr\(1));

-- Location: IOOBUF_X6_Y81_N2
\flags_2_mem.mem_b_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.mem_b_addr\(2));

-- Location: IOOBUF_X2_Y81_N76
\flags_2_mem.mem_b_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.mem_b_addr\(3));

-- Location: IOOBUF_X50_Y0_N59
\flags_2_mem.mem_b_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.mem_b_addr\(4));

-- Location: IOOBUF_X22_Y81_N2
\flags_2_mem.mem_b_addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_flags_2_mem.mem_b_addr\(5));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y25_N55
\res~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\duo_formed~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duo_formed,
	o => \duo_formed~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\go_disc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go_disc,
	o => \go_disc~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\cnt_disc_rdy~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt_disc_rdy,
	o => \cnt_disc_rdy~input_o\);

-- Location: LABCELL_X88_Y30_N0
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \STATE.CHECK_SAME_ADDR~q\ & ( !\duo_formed~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_duo_formed~input_o\,
	dataf => \ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X88_Y30_N39
\NEXT_STATE.WRITE_DISC_480\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.WRITE_DISC_480~combout\ = ( \NEXT_STATE.WRITE_DISC_480~combout\ & ( \Selector8~0_combout\ ) ) # ( !\NEXT_STATE.WRITE_DISC_480~combout\ & ( \Selector8~0_combout\ & ( \Selector18~0_combout\ ) ) ) # ( \NEXT_STATE.WRITE_DISC_480~combout\ & ( 
-- !\Selector8~0_combout\ & ( !\Selector18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector18~0_combout\,
	datae => \ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \NEXT_STATE.WRITE_DISC_480~combout\);

-- Location: LABCELL_X88_Y30_N12
\STATE~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~25_combout\ = ( \NEXT_STATE.WRITE_DISC_480~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\,
	combout => \STATE~25_combout\);

-- Location: FF_X88_Y30_N14
\STATE.WRITE_DISC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.WRITE_DISC~q\);

-- Location: LABCELL_X88_Y30_N33
\NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE~0_combout\ = (\STATE.WRITE_DUO~q\) # (\STATE.WRITE_DISC~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.WRITE_DISC~q\,
	datab => \ALT_INV_STATE.WRITE_DUO~q\,
	combout => \NEXT_STATE~0_combout\);

-- Location: LABCELL_X88_Y30_N45
\NEXT_STATE.CLEAR_PREV_404\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.CLEAR_PREV_404~combout\ = ( \NEXT_STATE.CLEAR_PREV_404~combout\ & ( \NEXT_STATE~0_combout\ ) ) # ( !\NEXT_STATE.CLEAR_PREV_404~combout\ & ( \NEXT_STATE~0_combout\ & ( \Selector18~0_combout\ ) ) ) # ( \NEXT_STATE.CLEAR_PREV_404~combout\ & ( 
-- !\NEXT_STATE~0_combout\ & ( !\Selector18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector18~0_combout\,
	datae => \ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\,
	dataf => \ALT_INV_NEXT_STATE~0_combout\,
	combout => \NEXT_STATE.CLEAR_PREV_404~combout\);

-- Location: MLABCELL_X87_Y30_N18
\STATE~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~17_combout\ = ( \NEXT_STATE.CLEAR_PREV_404~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\,
	combout => \STATE~17_combout\);

-- Location: FF_X87_Y30_N20
\STATE.CLEAR_PREV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.CLEAR_PREV~q\);

-- Location: IOIBUF_X89_Y16_N55
\start_step~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_step,
	o => \start_step~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\guru_well_behind~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_guru_well_behind,
	o => \guru_well_behind~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\end_of_disc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_end_of_disc,
	o => \end_of_disc~input_o\);

-- Location: MLABCELL_X87_Y30_N45
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \end_of_disc~input_o\ & ( (\STATE.CHECK_LAST~q\ & \go_disc~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STATE.CHECK_LAST~q\,
	datad => \ALT_INV_go_disc~input_o\,
	dataf => \ALT_INV_end_of_disc~input_o\,
	combout => \Selector0~0_combout\);

-- Location: MLABCELL_X87_Y30_N12
\NEXT_STATE.CHECK_BEHIND_442\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.CHECK_BEHIND_442~combout\ = ( \NEXT_STATE.CHECK_BEHIND_442~combout\ & ( (!\Selector18~0_combout\) # (\Selector0~0_combout\) ) ) # ( !\NEXT_STATE.CHECK_BEHIND_442~combout\ & ( (\Selector0~0_combout\ & \Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\,
	combout => \NEXT_STATE.CHECK_BEHIND_442~combout\);

-- Location: LABCELL_X85_Y30_N27
\STATE~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~24_combout\ = ( \NEXT_STATE.CHECK_BEHIND_442~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\,
	combout => \STATE~24_combout\);

-- Location: FF_X85_Y30_N29
\STATE.CHECK_BEHIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.CHECK_BEHIND~q\);

-- Location: LABCELL_X85_Y30_N30
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \STATE.CHECK_BEHIND~q\ & ( !\guru_well_behind~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_guru_well_behind~input_o\,
	dataf => \ALT_INV_STATE.CHECK_BEHIND~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X85_Y30_N33
\NEXT_STATE.CLEAR_BEHIND_423\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.CLEAR_BEHIND_423~combout\ = ( \NEXT_STATE.CLEAR_BEHIND_423~combout\ & ( (!\Selector18~0_combout\) # (\Selector2~0_combout\) ) ) # ( !\NEXT_STATE.CLEAR_BEHIND_423~combout\ & ( (\Selector2~0_combout\ & \Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~0_combout\,
	datac => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\,
	combout => \NEXT_STATE.CLEAR_BEHIND_423~combout\);

-- Location: LABCELL_X85_Y30_N9
\STATE~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~16_combout\ = (\NEXT_STATE.CLEAR_BEHIND_423~combout\ & !\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\,
	datac => \ALT_INV_res~input_o\,
	combout => \STATE~16_combout\);

-- Location: FF_X85_Y30_N11
\STATE.CLEAR_BEHIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.CLEAR_BEHIND~q\);

-- Location: LABCELL_X85_Y30_N24
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \STATE.IDLE~q\ & ( ((\guru_well_behind~input_o\ & \STATE.CHECK_BEHIND~q\)) # (\STATE.CLEAR_BEHIND~q\) ) ) # ( !\STATE.IDLE~q\ & ( ((!\start_step~input_o\) # ((\guru_well_behind~input_o\ & \STATE.CHECK_BEHIND~q\))) # 
-- (\STATE.CLEAR_BEHIND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110111111111110011011100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_guru_well_behind~input_o\,
	datab => \ALT_INV_STATE.CLEAR_BEHIND~q\,
	datac => \ALT_INV_STATE.CHECK_BEHIND~q\,
	datad => \ALT_INV_start_step~input_o\,
	dataf => \ALT_INV_STATE.IDLE~q\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X85_Y30_N51
\NEXT_STATE.IDLE_613\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.IDLE_613~combout\ = ( \Selector18~0_combout\ & ( \Selector17~0_combout\ ) ) # ( !\Selector18~0_combout\ & ( \NEXT_STATE.IDLE_613~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~0_combout\,
	datad => \ALT_INV_NEXT_STATE.IDLE_613~combout\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \NEXT_STATE.IDLE_613~combout\);

-- Location: LABCELL_X85_Y30_N42
\STATE~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~15_combout\ = ( !\NEXT_STATE.IDLE_613~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.IDLE_613~combout\,
	combout => \STATE~15_combout\);

-- Location: FF_X85_Y30_N44
\STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.IDLE~q\);

-- Location: LABCELL_X85_Y30_N39
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \start_step~input_o\ & ( !\STATE.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_start_step~input_o\,
	dataf => \ALT_INV_STATE.IDLE~q\,
	combout => \Selector16~0_combout\);

-- Location: MLABCELL_X87_Y30_N27
\NEXT_STATE.RAND_594\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.RAND_594~combout\ = (!\Selector18~0_combout\ & ((\NEXT_STATE.RAND_594~combout\))) # (\Selector18~0_combout\ & (\Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector18~0_combout\,
	datac => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_NEXT_STATE.RAND_594~combout\,
	combout => \NEXT_STATE.RAND_594~combout\);

-- Location: MLABCELL_X87_Y30_N15
\STATE~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~18_combout\ = (\NEXT_STATE.RAND_594~combout\ & !\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_NEXT_STATE.RAND_594~combout\,
	datad => \ALT_INV_res~input_o\,
	combout => \STATE~18_combout\);

-- Location: FF_X87_Y30_N17
\STATE.RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.RAND~q\);

-- Location: MLABCELL_X87_Y30_N9
\NEXT_STATE.WRITE_RAND_575\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.WRITE_RAND_575~combout\ = ( \STATE.RAND~q\ & ( (\Selector18~0_combout\) # (\NEXT_STATE.WRITE_RAND_575~combout\) ) ) # ( !\STATE.RAND~q\ & ( (\NEXT_STATE.WRITE_RAND_575~combout\ & !\Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\,
	datad => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_STATE.RAND~q\,
	combout => \NEXT_STATE.WRITE_RAND_575~combout\);

-- Location: MLABCELL_X87_Y30_N21
\STATE~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~20_combout\ = ( \NEXT_STATE.WRITE_RAND_575~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\,
	combout => \STATE~20_combout\);

-- Location: FF_X87_Y30_N23
\STATE.WRITE_RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.WRITE_RAND~q\);

-- Location: MLABCELL_X87_Y30_N54
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \STATE.WRITE_RAND~q\ ) # ( !\STATE.WRITE_RAND~q\ & ( ((!\cnt_disc_rdy~input_o\ & \STATE.WAIT_COUNT_DISC~q\)) # (\STATE.CLEAR_PREV~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \ALT_INV_cnt_disc_rdy~input_o\,
	datad => \ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	dataf => \ALT_INV_STATE.WRITE_RAND~q\,
	combout => \Selector12~0_combout\);

-- Location: MLABCELL_X87_Y30_N57
\NEXT_STATE.WAIT_COUNT_DISC_556\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.WAIT_COUNT_DISC_556~combout\ = ( \Selector12~0_combout\ & ( (\Selector18~0_combout\) # (\NEXT_STATE.WAIT_COUNT_DISC_556~combout\) ) ) # ( !\Selector12~0_combout\ & ( (\NEXT_STATE.WAIT_COUNT_DISC_556~combout\ & !\Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\,
	datad => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => \NEXT_STATE.WAIT_COUNT_DISC_556~combout\);

-- Location: MLABCELL_X87_Y30_N48
\STATE~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~21_combout\ = ( \NEXT_STATE.WAIT_COUNT_DISC_556~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\,
	combout => \STATE~21_combout\);

-- Location: FF_X87_Y30_N50
\STATE.WAIT_COUNT_DISC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.WAIT_COUNT_DISC~q\);

-- Location: MLABCELL_X87_Y30_N51
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\cnt_disc_rdy~input_o\ & \STATE.WAIT_COUNT_DISC~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_disc_rdy~input_o\,
	datad => \ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	combout => \Selector11~0_combout\);

-- Location: MLABCELL_X87_Y30_N42
\NEXT_STATE.INCR_537\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.INCR_537~combout\ = ( \Selector11~0_combout\ & ( (\Selector18~0_combout\) # (\NEXT_STATE.INCR_537~combout\) ) ) # ( !\Selector11~0_combout\ & ( (\NEXT_STATE.INCR_537~combout\ & !\Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_NEXT_STATE.INCR_537~combout\,
	datac => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \NEXT_STATE.INCR_537~combout\);

-- Location: MLABCELL_X87_Y30_N3
\STATE~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~19_combout\ = ( \NEXT_STATE.INCR_537~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.INCR_537~combout\,
	combout => \STATE~19_combout\);

-- Location: FF_X87_Y30_N5
\STATE.INCR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.INCR~q\);

-- Location: MLABCELL_X87_Y30_N6
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ((!\go_disc~input_o\ & \STATE.CHECK_LAST~q\)) # (\STATE.INCR~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go_disc~input_o\,
	datab => \ALT_INV_STATE.INCR~q\,
	datac => \ALT_INV_STATE.CHECK_LAST~q\,
	combout => \Selector10~0_combout\);

-- Location: MLABCELL_X87_Y30_N39
\NEXT_STATE.CHECK_LAST_461\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.CHECK_LAST_461~combout\ = ( \NEXT_STATE.CHECK_LAST_461~combout\ & ( (!\Selector18~0_combout\) # (\Selector10~0_combout\) ) ) # ( !\NEXT_STATE.CHECK_LAST_461~combout\ & ( (\Selector10~0_combout\ & \Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector10~0_combout\,
	datad => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\,
	combout => \NEXT_STATE.CHECK_LAST_461~combout\);

-- Location: MLABCELL_X87_Y30_N36
\STATE~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~23_combout\ = ( \NEXT_STATE.CHECK_LAST_461~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\,
	combout => \STATE~23_combout\);

-- Location: FF_X87_Y30_N38
\STATE.CHECK_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.CHECK_LAST~q\);

-- Location: MLABCELL_X87_Y30_N0
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \end_of_disc~input_o\ & ( (!\STATE.CHECK_LAST~q\) # (\go_disc~input_o\) ) ) # ( !\end_of_disc~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STATE.CHECK_LAST~q\,
	datad => \ALT_INV_go_disc~input_o\,
	dataf => \ALT_INV_end_of_disc~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X88_Y30_N9
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \go_disc~input_o\ & ( !\end_of_disc~input_o\ & ( \STATE.CHECK_LAST~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STATE.CHECK_LAST~q\,
	datae => \ALT_INV_go_disc~input_o\,
	dataf => \ALT_INV_end_of_disc~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X88_Y30_N24
\NEXT_STATE.CHECK_SAME_ADDR_518\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.CHECK_SAME_ADDR_518~combout\ = ( \Selector5~0_combout\ & ( (\Selector18~0_combout\) # (\NEXT_STATE.CHECK_SAME_ADDR_518~combout\) ) ) # ( !\Selector5~0_combout\ & ( (\NEXT_STATE.CHECK_SAME_ADDR_518~combout\ & !\Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\,
	datad => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \NEXT_STATE.CHECK_SAME_ADDR_518~combout\);

-- Location: LABCELL_X88_Y30_N21
\STATE~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~22_combout\ = ( !\res~input_o\ & ( \NEXT_STATE.CHECK_SAME_ADDR_518~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\,
	combout => \STATE~22_combout\);

-- Location: FF_X88_Y30_N23
\STATE.CHECK_SAME_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.CHECK_SAME_ADDR~q\);

-- Location: LABCELL_X88_Y30_N54
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \STATE.CHECK_SAME_ADDR~q\ & ( \duo_formed~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_duo_formed~input_o\,
	dataf => \ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X88_Y30_N15
\NEXT_STATE.WRITE_DUO_499\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.WRITE_DUO_499~combout\ = ( \Selector18~0_combout\ & ( \Selector7~0_combout\ ) ) # ( !\Selector18~0_combout\ & ( \NEXT_STATE.WRITE_DUO_499~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector7~0_combout\,
	datac => \ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \NEXT_STATE.WRITE_DUO_499~combout\);

-- Location: LABCELL_X88_Y30_N48
\STATE~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE~14_combout\ = ( !\res~input_o\ & ( \NEXT_STATE.WRITE_DUO_499~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_res~input_o\,
	dataf => \ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\,
	combout => \STATE~14_combout\);

-- Location: FF_X88_Y30_N50
\STATE.WRITE_DUO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.WRITE_DUO~q\);

-- Location: LABCELL_X85_Y30_N45
WideOr8 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = ( \STATE.CLEAR_PREV~q\ ) # ( !\STATE.CLEAR_PREV~q\ & ( (!\STATE.IDLE~q\) # ((\STATE.WRITE_DUO~q\) # (\STATE.CLEAR_BEHIND~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.IDLE~q\,
	datab => \ALT_INV_STATE.CLEAR_BEHIND~q\,
	datac => \ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \WideOr8~combout\);

-- Location: LABCELL_X85_Y30_N21
\WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = ( \STATE.IDLE~q\ & ( (!\STATE.CLEAR_PREV~q\ & !\STATE.CLEAR_BEHIND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \ALT_INV_STATE.CLEAR_BEHIND~q\,
	dataf => \ALT_INV_STATE.IDLE~q\,
	combout => \WideOr7~0_combout\);

-- Location: LABCELL_X85_Y30_N54
\flags_2_dp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flags_2_dp~0_combout\ = ( !\STATE.CLEAR_PREV~q\ & ( !\STATE.CLEAR_BEHIND~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STATE.CLEAR_BEHIND~q\,
	dataf => \ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \flags_2_dp~0_combout\);

-- Location: LABCELL_X85_Y30_N48
\flags_2_dp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \flags_2_dp~1_combout\ = (\STATE.INCR~q\) # (\STATE.RAND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STATE.RAND~q\,
	datac => \ALT_INV_STATE.INCR~q\,
	combout => \flags_2_dp~1_combout\);

-- Location: MLABCELL_X87_Y30_N24
WideOr6 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = ( \STATE.WAIT_COUNT_DISC~q\ ) # ( !\STATE.WAIT_COUNT_DISC~q\ & ( ((!\STATE.IDLE~q\) # (\STATE.WRITE_RAND~q\)) # (\STATE.RAND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STATE.RAND~q\,
	datac => \ALT_INV_STATE.WRITE_RAND~q\,
	datad => \ALT_INV_STATE.IDLE~q\,
	dataf => \ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	combout => \WideOr6~combout\);

-- Location: MLABCELL_X87_Y30_N30
WideOr9 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = ( \STATE.INCR~q\ & ( \STATE.RAND~q\ ) ) # ( !\STATE.INCR~q\ & ( \STATE.RAND~q\ ) ) # ( \STATE.INCR~q\ & ( !\STATE.RAND~q\ ) ) # ( !\STATE.INCR~q\ & ( !\STATE.RAND~q\ & ( (((!\STATE.IDLE~q\) # (\STATE.CHECK_SAME_ADDR~q\)) # 
-- (\STATE.CHECK_LAST~q\)) # (\STATE.WAIT_COUNT_DISC~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	datab => \ALT_INV_STATE.CHECK_LAST~q\,
	datac => \ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	datad => \ALT_INV_STATE.IDLE~q\,
	datae => \ALT_INV_STATE.INCR~q\,
	dataf => \ALT_INV_STATE.RAND~q\,
	combout => \WideOr9~combout\);

-- Location: LABCELL_X33_Y16_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


