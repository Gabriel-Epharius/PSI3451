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

-- DATE "07/28/2021 09:23:10"

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

ENTITY 	disciple_circuit IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	cnt_disc_rdy : IN std_logic;
	start_step : IN std_logic;
	go_disc : IN std_logic;
	duo_formed : IN std_logic;
	guru_well_behind : IN std_logic;
	end_of_disciple : OUT std_logic;
	disc_wr_en : OUT std_logic;
	disc_data : OUT std_logic_vector(7 DOWNTO 0);
	disc_address_to_mem : OUT std_logic_vector(5 DOWNTO 0);
	disc_address : OUT std_logic_vector(5 DOWNTO 0);
	disc_address_prev : OUT std_logic_vector(5 DOWNTO 0)
	);
END disciple_circuit;

-- Design Ports Information
-- end_of_disciple	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_wr_en	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[0]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[3]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[5]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_data[7]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_to_mem[0]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_to_mem[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_to_mem[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_to_mem[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_to_mem[4]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_to_mem[5]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address[0]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address[3]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address[4]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address[5]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_prev[0]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_prev[1]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_prev[2]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_prev[3]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_prev[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_address_prev[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- guru_well_behind	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go_disc	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_disc_rdy	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_step	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duo_formed	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF disciple_circuit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cnt_disc_rdy : std_logic;
SIGNAL ww_start_step : std_logic;
SIGNAL ww_go_disc : std_logic;
SIGNAL ww_duo_formed : std_logic;
SIGNAL ww_guru_well_behind : std_logic;
SIGNAL ww_end_of_disciple : std_logic;
SIGNAL ww_disc_wr_en : std_logic;
SIGNAL ww_disc_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disc_address_to_mem : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_disc_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_disc_address_prev : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start_step~input_o\ : std_logic;
SIGNAL \go_disc~input_o\ : std_logic;
SIGNAL \cnt_disc_rdy~input_o\ : std_logic;
SIGNAL \fsm|Selector16~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.RAND_594~combout\ : std_logic;
SIGNAL \fsm|STATE~20_combout\ : std_logic;
SIGNAL \fsm|STATE.RAND~q\ : std_logic;
SIGNAL \fsm|NEXT_STATE.WRITE_RAND_575~combout\ : std_logic;
SIGNAL \fsm|STATE~23_combout\ : std_logic;
SIGNAL \fsm|STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \duo_formed~input_o\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ : std_logic;
SIGNAL \fsm|STATE~17_combout\ : std_logic;
SIGNAL \fsm|STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.WRITE_DUO_499~combout\ : std_logic;
SIGNAL \fsm|STATE~22_combout\ : std_logic;
SIGNAL \fsm|STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.WRITE_DISC_480~combout\ : std_logic;
SIGNAL \fsm|STATE~25_combout\ : std_logic;
SIGNAL \fsm|STATE.WRITE_DISC~q\ : std_logic;
SIGNAL \fsm|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.CLEAR_PREV_404~combout\ : std_logic;
SIGNAL \fsm|STATE~15_combout\ : std_logic;
SIGNAL \fsm|STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \fsm|Selector12~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\ : std_logic;
SIGNAL \fsm|STATE~21_combout\ : std_logic;
SIGNAL \fsm|STATE.WAIT_COUNT_DISC~q\ : std_logic;
SIGNAL \fsm|Selector11~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.INCR_537~combout\ : std_logic;
SIGNAL \fsm|STATE~16_combout\ : std_logic;
SIGNAL \fsm|STATE.INCR~q\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.CHECK_LAST_461~combout\ : std_logic;
SIGNAL \fsm|STATE~18_combout\ : std_logic;
SIGNAL \fsm|STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \fsm|Selector18~0_combout\ : std_logic;
SIGNAL \guru_well_behind~input_o\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ : std_logic;
SIGNAL \fsm|STATE~24_combout\ : std_logic;
SIGNAL \fsm|STATE.CHECK_BEHIND~q\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ : std_logic;
SIGNAL \fsm|STATE~14_combout\ : std_logic;
SIGNAL \fsm|STATE.CLEAR_BEHIND~q\ : std_logic;
SIGNAL \fsm|Selector17~0_combout\ : std_logic;
SIGNAL \fsm|NEXT_STATE.IDLE_613~combout\ : std_logic;
SIGNAL \fsm|STATE~19_combout\ : std_logic;
SIGNAL \fsm|STATE.IDLE~q\ : std_logic;
SIGNAL \fsm|WideOr6~combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s~5_combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s[5]~0_combout\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|q_s~4_combout\ : std_logic;
SIGNAL \dp|rb|rb_out~4_combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s~6_combout\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|q_s~5_combout\ : std_logic;
SIGNAL \dp|rb|rb_out~5_combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s~7_combout\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|q_s~6_combout\ : std_logic;
SIGNAL \dp|rb|rb_out~6_combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s~1_combout\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|q_s~0_combout\ : std_logic;
SIGNAL \dp|rb|rb_out~0_combout\ : std_logic;
SIGNAL \fsm|WideOr9~combout\ : std_logic;
SIGNAL \fsm|WideOr7~0_combout\ : std_logic;
SIGNAL \fsm|WideOr8~combout\ : std_logic;
SIGNAL \fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|q_s~1_combout\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:1:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:2:FF|q_s~feeder_combout\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:2:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:3:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:4:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:5:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:6:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:7:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:8:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:9:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:10:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:11:FF|q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:0:FF|q_s~q\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s~2_combout\ : std_logic;
SIGNAL \dp|rb|rb_out~1_combout\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|q_s~2_combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s~3_combout\ : std_logic;
SIGNAL \dp|rb|rb_out~2_combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|q_s~4_combout\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|q_s~3_combout\ : std_logic;
SIGNAL \dp|rb|rb_out~3_combout\ : std_logic;
SIGNAL \dp|n_g|LFSR|d_s\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \dp|rb|reg_PRE_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp|rb|reg_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.RAND~q\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.IDLE~q\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.INCR~q\ : std_logic;
SIGNAL \dp|rb|ALT_INV_rb_out~0_combout\ : std_logic;
SIGNAL \dp|rb|reg_GURU|ALT_INV_q_s\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fsm|ALT_INV_STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\ : std_logic;
SIGNAL \dp|rb|reg_PRE_GURU|ALT_INV_q_s\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_duo_formed~input_o\ : std_logic;
SIGNAL \ALT_INV_start_step~input_o\ : std_logic;
SIGNAL \ALT_INV_cnt_disc_rdy~input_o\ : std_logic;
SIGNAL \ALT_INV_go_disc~input_o\ : std_logic;
SIGNAL \ALT_INV_guru_well_behind~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.RAND_594~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.INCR_537~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\ : std_logic;
SIGNAL \dp|n_g|LFSR|ALT_INV_d_s\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \dp|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_NEXT_STATE~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.WRITE_DISC~q\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.CHECK_BEHIND~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \dp|rb|ALT_INV_rb_out~6_combout\ : std_logic;
SIGNAL \dp|rb|ALT_INV_rb_out~5_combout\ : std_logic;
SIGNAL \dp|rb|ALT_INV_rb_out~4_combout\ : std_logic;
SIGNAL \dp|rb|ALT_INV_rb_out~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \fsm|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_WideOr9~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_cnt_disc_rdy <= cnt_disc_rdy;
ww_start_step <= start_step;
ww_go_disc <= go_disc;
ww_duo_formed <= duo_formed;
ww_guru_well_behind <= guru_well_behind;
end_of_disciple <= ww_end_of_disciple;
disc_wr_en <= ww_disc_wr_en;
disc_data <= ww_disc_data;
disc_address_to_mem <= ww_disc_address_to_mem;
disc_address <= ww_disc_address;
disc_address_prev <= ww_disc_address_prev;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\ <= NOT \fsm|STATE.WAIT_COUNT_DISC~q\;
\fsm|ALT_INV_STATE.RAND~q\ <= NOT \fsm|STATE.RAND~q\;
\fsm|ALT_INV_STATE.IDLE~q\ <= NOT \fsm|STATE.IDLE~q\;
\fsm|ALT_INV_STATE.CHECK_LAST~q\ <= NOT \fsm|STATE.CHECK_LAST~q\;
\fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\ <= NOT \fsm|STATE.CHECK_SAME_ADDR~q\;
\fsm|ALT_INV_STATE.INCR~q\ <= NOT \fsm|STATE.INCR~q\;
\dp|rb|ALT_INV_rb_out~0_combout\ <= NOT \dp|rb|rb_out~0_combout\;
\dp|rb|reg_GURU|ALT_INV_q_s\(6) <= NOT \dp|rb|reg_GURU|q_s\(6);
\fsm|ALT_INV_STATE.CLEAR_PREV~q\ <= NOT \fsm|STATE.CLEAR_PREV~q\;
\fsm|ALT_INV_STATE.CLEAR_BEHIND~q\ <= NOT \fsm|STATE.CLEAR_BEHIND~q\;
\dp|rb|reg_PRE_GURU|ALT_INV_q_s\(6) <= NOT \dp|rb|reg_PRE_GURU|q_s\(6);
\dp|rb|reg_GURU|ALT_INV_q_s\(1) <= NOT \dp|rb|reg_GURU|q_s\(1);
\dp|rb|reg_GURU|ALT_INV_q_s\(0) <= NOT \dp|rb|reg_GURU|q_s\(0);
\ALT_INV_duo_formed~input_o\ <= NOT \duo_formed~input_o\;
\ALT_INV_start_step~input_o\ <= NOT \start_step~input_o\;
\ALT_INV_cnt_disc_rdy~input_o\ <= NOT \cnt_disc_rdy~input_o\;
\ALT_INV_go_disc~input_o\ <= NOT \go_disc~input_o\;
\ALT_INV_guru_well_behind~input_o\ <= NOT \guru_well_behind~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\ <= NOT \fsm|NEXT_STATE.WRITE_DISC_480~combout\;
\fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\ <= NOT \fsm|NEXT_STATE.CHECK_BEHIND_442~combout\;
\fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\ <= NOT \fsm|NEXT_STATE.WRITE_RAND_575~combout\;
\fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\ <= NOT \fsm|NEXT_STATE.WRITE_DUO_499~combout\;
\fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\ <= NOT \fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\;
\fsm|ALT_INV_NEXT_STATE.RAND_594~combout\ <= NOT \fsm|NEXT_STATE.RAND_594~combout\;
\fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\ <= NOT \fsm|NEXT_STATE.IDLE_613~combout\;
\fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\ <= NOT \fsm|NEXT_STATE.CHECK_LAST_461~combout\;
\fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\ <= NOT \fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\;
\fsm|ALT_INV_NEXT_STATE.INCR_537~combout\ <= NOT \fsm|NEXT_STATE.INCR_537~combout\;
\fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\ <= NOT \fsm|NEXT_STATE.CLEAR_PREV_404~combout\;
\fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\ <= NOT \fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\;
\dp|n_g|LFSR|ALT_INV_d_s\(2) <= NOT \dp|n_g|LFSR|d_s\(2);
\dp|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:2:FF|q_s~q\;
\dp|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:3:FF|q_s~q\;
\dp|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:4:FF|q_s~q\;
\dp|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:5:FF|q_s~q\;
\dp|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:6:FF|q_s~q\;
\dp|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:7:FF|q_s~q\;
\dp|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:8:FF|q_s~q\;
\dp|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:9:FF|q_s~q\;
\fsm|ALT_INV_Selector8~0_combout\ <= NOT \fsm|Selector8~0_combout\;
\fsm|ALT_INV_Selector0~0_combout\ <= NOT \fsm|Selector0~0_combout\;
\dp|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:10:FF|q_s~q\;
\dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:11:FF|q_s~q\;
\fsm|ALT_INV_Selector7~0_combout\ <= NOT \fsm|Selector7~0_combout\;
\fsm|ALT_INV_Selector12~0_combout\ <= NOT \fsm|Selector12~0_combout\;
\fsm|ALT_INV_Selector16~0_combout\ <= NOT \fsm|Selector16~0_combout\;
\fsm|ALT_INV_Selector17~0_combout\ <= NOT \fsm|Selector17~0_combout\;
\fsm|ALT_INV_Selector10~0_combout\ <= NOT \fsm|Selector10~0_combout\;
\fsm|ALT_INV_Selector5~0_combout\ <= NOT \fsm|Selector5~0_combout\;
\fsm|ALT_INV_Selector11~0_combout\ <= NOT \fsm|Selector11~0_combout\;
\fsm|ALT_INV_NEXT_STATE~0_combout\ <= NOT \fsm|NEXT_STATE~0_combout\;
\fsm|ALT_INV_STATE.WRITE_DISC~q\ <= NOT \fsm|STATE.WRITE_DISC~q\;
\fsm|ALT_INV_Selector18~0_combout\ <= NOT \fsm|Selector18~0_combout\;
\fsm|ALT_INV_Selector2~0_combout\ <= NOT \fsm|Selector2~0_combout\;
\fsm|ALT_INV_STATE.CHECK_BEHIND~q\ <= NOT \fsm|STATE.CHECK_BEHIND~q\;
\dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:1:FF|q_s~q\;
\dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\ <= NOT \dp|n_g|LFSR|g1:0:FF|q_s~q\;
\fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ <= NOT \fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\;
\fsm|ALT_INV_WideOr6~combout\ <= NOT \fsm|WideOr6~combout\;
\fsm|ALT_INV_STATE.WRITE_RAND~q\ <= NOT \fsm|STATE.WRITE_RAND~q\;
\dp|rb|ALT_INV_rb_out~6_combout\ <= NOT \dp|rb|rb_out~6_combout\;
\dp|rb|reg_GURU|ALT_INV_q_s\(5) <= NOT \dp|rb|reg_GURU|q_s\(5);
\dp|rb|reg_PRE_GURU|ALT_INV_q_s\(5) <= NOT \dp|rb|reg_PRE_GURU|q_s\(5);
\dp|rb|ALT_INV_rb_out~5_combout\ <= NOT \dp|rb|rb_out~5_combout\;
\dp|rb|reg_GURU|ALT_INV_q_s\(4) <= NOT \dp|rb|reg_GURU|q_s\(4);
\dp|rb|reg_PRE_GURU|ALT_INV_q_s\(4) <= NOT \dp|rb|reg_PRE_GURU|q_s\(4);
\dp|rb|ALT_INV_rb_out~4_combout\ <= NOT \dp|rb|rb_out~4_combout\;
\dp|rb|reg_GURU|ALT_INV_q_s\(3) <= NOT \dp|rb|reg_GURU|q_s\(3);
\dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3) <= NOT \dp|rb|reg_PRE_GURU|q_s\(3);
\dp|rb|ALT_INV_rb_out~3_combout\ <= NOT \dp|rb|rb_out~3_combout\;
\dp|rb|reg_GURU|ALT_INV_q_s\(2) <= NOT \dp|rb|reg_GURU|q_s\(2);
\dp|rb|reg_PRE_GURU|ALT_INV_q_s\(2) <= NOT \dp|rb|reg_PRE_GURU|q_s\(2);
\dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1) <= NOT \dp|rb|reg_PRE_GURU|q_s\(1);
\dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0) <= NOT \dp|rb|reg_PRE_GURU|q_s\(0);
\fsm|ALT_INV_WideOr8~combout\ <= NOT \fsm|WideOr8~combout\;
\fsm|ALT_INV_STATE.WRITE_DUO~q\ <= NOT \fsm|STATE.WRITE_DUO~q\;
\fsm|ALT_INV_WideOr7~0_combout\ <= NOT \fsm|WideOr7~0_combout\;
\fsm|ALT_INV_WideOr9~combout\ <= NOT \fsm|WideOr9~combout\;

-- Location: IOOBUF_X78_Y0_N53
\end_of_disciple~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|rb_out~0_combout\,
	devoe => ww_devoe,
	o => ww_end_of_disciple);

-- Location: IOOBUF_X72_Y0_N53
\disc_wr_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_WideOr9~combout\,
	devoe => ww_devoe,
	o => ww_disc_wr_en);

-- Location: IOOBUF_X72_Y0_N36
\disc_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => ww_disc_data(0));

-- Location: IOOBUF_X10_Y81_N93
\disc_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disc_data(1));

-- Location: IOOBUF_X68_Y0_N2
\disc_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_disc_data(2));

-- Location: IOOBUF_X68_Y0_N36
\disc_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|STATE.WRITE_DUO~q\,
	devoe => ww_devoe,
	o => ww_disc_data(3));

-- Location: IOOBUF_X58_Y0_N93
\disc_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disc_data(4));

-- Location: IOOBUF_X84_Y0_N53
\disc_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disc_data(5));

-- Location: IOOBUF_X60_Y0_N19
\disc_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disc_data(6));

-- Location: IOOBUF_X89_Y4_N45
\disc_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disc_data(7));

-- Location: IOOBUF_X82_Y0_N76
\disc_address_to_mem[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|rb_out~1_combout\,
	devoe => ww_devoe,
	o => ww_disc_address_to_mem(0));

-- Location: IOOBUF_X68_Y0_N19
\disc_address_to_mem[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|rb_out~2_combout\,
	devoe => ww_devoe,
	o => ww_disc_address_to_mem(1));

-- Location: IOOBUF_X74_Y0_N59
\disc_address_to_mem[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|rb_out~3_combout\,
	devoe => ww_devoe,
	o => ww_disc_address_to_mem(2));

-- Location: IOOBUF_X78_Y0_N19
\disc_address_to_mem[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|rb_out~4_combout\,
	devoe => ww_devoe,
	o => ww_disc_address_to_mem(3));

-- Location: IOOBUF_X80_Y0_N36
\disc_address_to_mem[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|rb_out~5_combout\,
	devoe => ww_devoe,
	o => ww_disc_address_to_mem(4));

-- Location: IOOBUF_X74_Y0_N76
\disc_address_to_mem[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|rb_out~6_combout\,
	devoe => ww_devoe,
	o => ww_disc_address_to_mem(5));

-- Location: IOOBUF_X76_Y0_N36
\disc_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_GURU|q_s\(0),
	devoe => ww_devoe,
	o => ww_disc_address(0));

-- Location: IOOBUF_X72_Y0_N19
\disc_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_GURU|q_s\(1),
	devoe => ww_devoe,
	o => ww_disc_address(1));

-- Location: IOOBUF_X76_Y0_N19
\disc_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_GURU|q_s\(2),
	devoe => ww_devoe,
	o => ww_disc_address(2));

-- Location: IOOBUF_X70_Y0_N36
\disc_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_GURU|q_s\(3),
	devoe => ww_devoe,
	o => ww_disc_address(3));

-- Location: IOOBUF_X80_Y0_N53
\disc_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_GURU|q_s\(4),
	devoe => ww_devoe,
	o => ww_disc_address(4));

-- Location: IOOBUF_X74_Y0_N93
\disc_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_GURU|q_s\(5),
	devoe => ww_devoe,
	o => ww_disc_address(5));

-- Location: IOOBUF_X76_Y0_N53
\disc_address_prev[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_PRE_GURU|q_s\(0),
	devoe => ww_devoe,
	o => ww_disc_address_prev(0));

-- Location: IOOBUF_X70_Y0_N2
\disc_address_prev[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_PRE_GURU|q_s\(1),
	devoe => ww_devoe,
	o => ww_disc_address_prev(1));

-- Location: IOOBUF_X68_Y0_N53
\disc_address_prev[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_PRE_GURU|q_s\(2),
	devoe => ww_devoe,
	o => ww_disc_address_prev(2));

-- Location: IOOBUF_X76_Y0_N2
\disc_address_prev[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_PRE_GURU|q_s\(3),
	devoe => ww_devoe,
	o => ww_disc_address_prev(3));

-- Location: IOOBUF_X80_Y0_N19
\disc_address_prev[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_PRE_GURU|q_s\(4),
	devoe => ww_devoe,
	o => ww_disc_address_prev(4));

-- Location: IOOBUF_X80_Y0_N2
\disc_address_prev[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|rb|reg_PRE_GURU|q_s\(5),
	devoe => ww_devoe,
	o => ww_disc_address_prev(5));

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X72_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\start_step~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_step,
	o => \start_step~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\go_disc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go_disc,
	o => \go_disc~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\cnt_disc_rdy~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt_disc_rdy,
	o => \cnt_disc_rdy~input_o\);

-- Location: LABCELL_X75_Y2_N48
\fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector16~0_combout\ = ( !\fsm|STATE.IDLE~q\ & ( \start_step~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start_step~input_o\,
	dataf => \fsm|ALT_INV_STATE.IDLE~q\,
	combout => \fsm|Selector16~0_combout\);

-- Location: LABCELL_X75_Y2_N54
\fsm|NEXT_STATE.RAND_594\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.RAND_594~combout\ = ( \fsm|Selector16~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.RAND_594~combout\) ) ) # ( !\fsm|Selector16~0_combout\ & ( (\fsm|NEXT_STATE.RAND_594~combout\ & !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.RAND_594~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector16~0_combout\,
	combout => \fsm|NEXT_STATE.RAND_594~combout\);

-- Location: LABCELL_X73_Y2_N42
\fsm|STATE~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~20_combout\ = ( \fsm|NEXT_STATE.RAND_594~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.RAND_594~combout\,
	combout => \fsm|STATE~20_combout\);

-- Location: FF_X73_Y2_N44
\fsm|STATE.RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.RAND~q\);

-- Location: LABCELL_X73_Y2_N9
\fsm|NEXT_STATE.WRITE_RAND_575\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.WRITE_RAND_575~combout\ = ( \fsm|STATE.RAND~q\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.WRITE_RAND_575~combout\) ) ) # ( !\fsm|STATE.RAND~q\ & ( (\fsm|NEXT_STATE.WRITE_RAND_575~combout\ & !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_STATE.RAND~q\,
	combout => \fsm|NEXT_STATE.WRITE_RAND_575~combout\);

-- Location: LABCELL_X73_Y2_N12
\fsm|STATE~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~23_combout\ = ( \fsm|NEXT_STATE.WRITE_RAND_575~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\,
	combout => \fsm|STATE~23_combout\);

-- Location: FF_X74_Y2_N5
\fsm|STATE.WRITE_RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \fsm|STATE~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.WRITE_RAND~q\);

-- Location: IOIBUF_X70_Y0_N52
\duo_formed~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duo_formed,
	o => \duo_formed~input_o\);

-- Location: LABCELL_X74_Y2_N21
\fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = ( \fsm|STATE.CHECK_LAST~q\ & ( (!\dp|rb|reg_GURU|q_s\(6) & \go_disc~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp|rb|reg_GURU|ALT_INV_q_s\(6),
	datad => \ALT_INV_go_disc~input_o\,
	dataf => \fsm|ALT_INV_STATE.CHECK_LAST~q\,
	combout => \fsm|Selector5~0_combout\);

-- Location: LABCELL_X74_Y2_N39
\fsm|NEXT_STATE.CHECK_SAME_ADDR_518\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ = ( \fsm|Selector5~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\) ) ) # ( !\fsm|Selector5~0_combout\ & ( (\fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ & 
-- !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\,
	datac => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector5~0_combout\,
	combout => \fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\);

-- Location: LABCELL_X73_Y2_N48
\fsm|STATE~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~17_combout\ = ( \fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\,
	combout => \fsm|STATE~17_combout\);

-- Location: FF_X73_Y2_N50
\fsm|STATE.CHECK_SAME_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.CHECK_SAME_ADDR~q\);

-- Location: LABCELL_X73_Y2_N45
\fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = ( \fsm|STATE.CHECK_SAME_ADDR~q\ & ( \duo_formed~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_duo_formed~input_o\,
	dataf => \fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \fsm|Selector7~0_combout\);

-- Location: LABCELL_X73_Y2_N30
\fsm|NEXT_STATE.WRITE_DUO_499\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.WRITE_DUO_499~combout\ = ( \fsm|NEXT_STATE.WRITE_DUO_499~combout\ & ( (!\fsm|Selector18~0_combout\) # (\fsm|Selector7~0_combout\) ) ) # ( !\fsm|NEXT_STATE.WRITE_DUO_499~combout\ & ( (\fsm|Selector18~0_combout\ & \fsm|Selector7~0_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector18~0_combout\,
	datad => \fsm|ALT_INV_Selector7~0_combout\,
	dataf => \fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\,
	combout => \fsm|NEXT_STATE.WRITE_DUO_499~combout\);

-- Location: MLABCELL_X72_Y2_N3
\fsm|STATE~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~22_combout\ = ( !\reset~input_o\ & ( \fsm|NEXT_STATE.WRITE_DUO_499~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\,
	combout => \fsm|STATE~22_combout\);

-- Location: FF_X72_Y2_N5
\fsm|STATE.WRITE_DUO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.WRITE_DUO~q\);

-- Location: LABCELL_X73_Y2_N33
\fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = ( \fsm|STATE.CHECK_SAME_ADDR~q\ & ( !\duo_formed~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_duo_formed~input_o\,
	dataf => \fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \fsm|Selector8~0_combout\);

-- Location: LABCELL_X73_Y2_N39
\fsm|NEXT_STATE.WRITE_DISC_480\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.WRITE_DISC_480~combout\ = ( \fsm|Selector8~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.WRITE_DISC_480~combout\) ) ) # ( !\fsm|Selector8~0_combout\ & ( (\fsm|NEXT_STATE.WRITE_DISC_480~combout\ & 
-- !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector8~0_combout\,
	combout => \fsm|NEXT_STATE.WRITE_DISC_480~combout\);

-- Location: MLABCELL_X72_Y2_N36
\fsm|STATE~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~25_combout\ = ( \fsm|NEXT_STATE.WRITE_DISC_480~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\,
	combout => \fsm|STATE~25_combout\);

-- Location: FF_X72_Y2_N37
\fsm|STATE.WRITE_DISC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.WRITE_DISC~q\);

-- Location: MLABCELL_X72_Y2_N51
\fsm|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE~0_combout\ = ( \fsm|STATE.WRITE_DUO~q\ & ( \fsm|STATE.WRITE_DISC~q\ ) ) # ( !\fsm|STATE.WRITE_DUO~q\ & ( \fsm|STATE.WRITE_DISC~q\ ) ) # ( \fsm|STATE.WRITE_DUO~q\ & ( !\fsm|STATE.WRITE_DISC~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fsm|ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \fsm|ALT_INV_STATE.WRITE_DISC~q\,
	combout => \fsm|NEXT_STATE~0_combout\);

-- Location: MLABCELL_X72_Y2_N24
\fsm|NEXT_STATE.CLEAR_PREV_404\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.CLEAR_PREV_404~combout\ = ( \fsm|Selector18~0_combout\ & ( \fsm|NEXT_STATE~0_combout\ ) ) # ( !\fsm|Selector18~0_combout\ & ( \fsm|NEXT_STATE~0_combout\ & ( \fsm|NEXT_STATE.CLEAR_PREV_404~combout\ ) ) ) # ( !\fsm|Selector18~0_combout\ & ( 
-- !\fsm|NEXT_STATE~0_combout\ & ( \fsm|NEXT_STATE.CLEAR_PREV_404~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\,
	datae => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_NEXT_STATE~0_combout\,
	combout => \fsm|NEXT_STATE.CLEAR_PREV_404~combout\);

-- Location: LABCELL_X73_Y2_N36
\fsm|STATE~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~15_combout\ = ( \fsm|NEXT_STATE.CLEAR_PREV_404~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\,
	combout => \fsm|STATE~15_combout\);

-- Location: FF_X74_Y2_N47
\fsm|STATE.CLEAR_PREV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \fsm|STATE~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.CLEAR_PREV~q\);

-- Location: LABCELL_X73_Y2_N21
\fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector12~0_combout\ = ( \fsm|STATE.CLEAR_PREV~q\ ) # ( !\fsm|STATE.CLEAR_PREV~q\ & ( ((!\cnt_disc_rdy~input_o\ & \fsm|STATE.WAIT_COUNT_DISC~q\)) # (\fsm|STATE.WRITE_RAND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111001000101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_disc_rdy~input_o\,
	datab => \fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	datad => \fsm|ALT_INV_STATE.WRITE_RAND~q\,
	dataf => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \fsm|Selector12~0_combout\);

-- Location: LABCELL_X73_Y2_N57
\fsm|NEXT_STATE.WAIT_COUNT_DISC_556\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\ = ( \fsm|Selector12~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\) ) ) # ( !\fsm|Selector12~0_combout\ & ( (\fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\ & 
-- !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector12~0_combout\,
	combout => \fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\);

-- Location: LABCELL_X73_Y2_N54
\fsm|STATE~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~21_combout\ = ( \fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\,
	combout => \fsm|STATE~21_combout\);

-- Location: FF_X73_Y2_N56
\fsm|STATE.WAIT_COUNT_DISC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.WAIT_COUNT_DISC~q\);

-- Location: LABCELL_X73_Y2_N18
\fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector11~0_combout\ = (\cnt_disc_rdy~input_o\ & \fsm|STATE.WAIT_COUNT_DISC~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_disc_rdy~input_o\,
	datad => \fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	combout => \fsm|Selector11~0_combout\);

-- Location: LABCELL_X74_Y2_N33
\fsm|NEXT_STATE.INCR_537\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.INCR_537~combout\ = ( \fsm|Selector11~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.INCR_537~combout\) ) ) # ( !\fsm|Selector11~0_combout\ & ( (\fsm|NEXT_STATE.INCR_537~combout\ & !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.INCR_537~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector11~0_combout\,
	combout => \fsm|NEXT_STATE.INCR_537~combout\);

-- Location: LABCELL_X73_Y2_N3
\fsm|STATE~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~16_combout\ = ( \fsm|NEXT_STATE.INCR_537~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.INCR_537~combout\,
	combout => \fsm|STATE~16_combout\);

-- Location: FF_X74_Y2_N44
\fsm|STATE.INCR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \fsm|STATE~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.INCR~q\);

-- Location: LABCELL_X75_Y2_N42
\fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = ( \go_disc~input_o\ & ( \fsm|STATE.INCR~q\ ) ) # ( !\go_disc~input_o\ & ( (\fsm|STATE.INCR~q\) # (\fsm|STATE.CHECK_LAST~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_STATE.CHECK_LAST~q\,
	datad => \fsm|ALT_INV_STATE.INCR~q\,
	dataf => \ALT_INV_go_disc~input_o\,
	combout => \fsm|Selector10~0_combout\);

-- Location: LABCELL_X75_Y2_N33
\fsm|NEXT_STATE.CHECK_LAST_461\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.CHECK_LAST_461~combout\ = ( \fsm|Selector10~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.CHECK_LAST_461~combout\) ) ) # ( !\fsm|Selector10~0_combout\ & ( (\fsm|NEXT_STATE.CHECK_LAST_461~combout\ & 
-- !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector10~0_combout\,
	combout => \fsm|NEXT_STATE.CHECK_LAST_461~combout\);

-- Location: LABCELL_X75_Y2_N18
\fsm|STATE~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~18_combout\ = ( \fsm|NEXT_STATE.CHECK_LAST_461~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\,
	combout => \fsm|STATE~18_combout\);

-- Location: FF_X75_Y2_N20
\fsm|STATE.CHECK_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.CHECK_LAST~q\);

-- Location: LABCELL_X75_Y2_N57
\fsm|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector18~0_combout\ = ( \fsm|STATE.CHECK_LAST~q\ & ( (!\dp|rb|reg_GURU|q_s\(6)) # (\go_disc~input_o\) ) ) # ( !\fsm|STATE.CHECK_LAST~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rb|reg_GURU|ALT_INV_q_s\(6),
	datac => \ALT_INV_go_disc~input_o\,
	dataf => \fsm|ALT_INV_STATE.CHECK_LAST~q\,
	combout => \fsm|Selector18~0_combout\);

-- Location: IOIBUF_X78_Y0_N1
\guru_well_behind~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_guru_well_behind,
	o => \guru_well_behind~input_o\);

-- Location: LABCELL_X75_Y2_N12
\fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = ( \dp|rb|reg_GURU|q_s\(6) & ( (\fsm|STATE.CHECK_LAST~q\ & \go_disc~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_STATE.CHECK_LAST~q\,
	datac => \ALT_INV_go_disc~input_o\,
	dataf => \dp|rb|reg_GURU|ALT_INV_q_s\(6),
	combout => \fsm|Selector0~0_combout\);

-- Location: LABCELL_X75_Y2_N15
\fsm|NEXT_STATE.CHECK_BEHIND_442\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ = ( \fsm|Selector0~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.CHECK_BEHIND_442~combout\) ) ) # ( !\fsm|Selector0~0_combout\ & ( (\fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ & 
-- !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector0~0_combout\,
	combout => \fsm|NEXT_STATE.CHECK_BEHIND_442~combout\);

-- Location: LABCELL_X75_Y2_N21
\fsm|STATE~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~24_combout\ = ( \fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\,
	combout => \fsm|STATE~24_combout\);

-- Location: FF_X75_Y2_N23
\fsm|STATE.CHECK_BEHIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.CHECK_BEHIND~q\);

-- Location: LABCELL_X75_Y2_N27
\fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = (!\guru_well_behind~input_o\ & \fsm|STATE.CHECK_BEHIND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_guru_well_behind~input_o\,
	datad => \fsm|ALT_INV_STATE.CHECK_BEHIND~q\,
	combout => \fsm|Selector2~0_combout\);

-- Location: LABCELL_X75_Y2_N39
\fsm|NEXT_STATE.CLEAR_BEHIND_423\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ = ( \fsm|Selector2~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\) ) ) # ( !\fsm|Selector2~0_combout\ & ( (\fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ & 
-- !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\);

-- Location: LABCELL_X75_Y2_N6
\fsm|STATE~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~14_combout\ = ( !\reset~input_o\ & ( \fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\,
	combout => \fsm|STATE~14_combout\);

-- Location: FF_X75_Y2_N8
\fsm|STATE.CLEAR_BEHIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.CLEAR_BEHIND~q\);

-- Location: LABCELL_X75_Y2_N0
\fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector17~0_combout\ = ( \fsm|STATE.IDLE~q\ & ( ((\guru_well_behind~input_o\ & \fsm|STATE.CHECK_BEHIND~q\)) # (\fsm|STATE.CLEAR_BEHIND~q\) ) ) # ( !\fsm|STATE.IDLE~q\ & ( (!\start_step~input_o\) # (((\guru_well_behind~input_o\ & 
-- \fsm|STATE.CHECK_BEHIND~q\)) # (\fsm|STATE.CLEAR_BEHIND~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111111101110111011111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_step~input_o\,
	datab => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datac => \ALT_INV_guru_well_behind~input_o\,
	datad => \fsm|ALT_INV_STATE.CHECK_BEHIND~q\,
	dataf => \fsm|ALT_INV_STATE.IDLE~q\,
	combout => \fsm|Selector17~0_combout\);

-- Location: LABCELL_X75_Y2_N51
\fsm|NEXT_STATE.IDLE_613\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|NEXT_STATE.IDLE_613~combout\ = ( \fsm|Selector18~0_combout\ & ( \fsm|Selector17~0_combout\ ) ) # ( !\fsm|Selector18~0_combout\ & ( \fsm|NEXT_STATE.IDLE_613~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\,
	datad => \fsm|ALT_INV_Selector17~0_combout\,
	dataf => \fsm|ALT_INV_Selector18~0_combout\,
	combout => \fsm|NEXT_STATE.IDLE_613~combout\);

-- Location: LABCELL_X75_Y2_N24
\fsm|STATE~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|STATE~19_combout\ = ( !\fsm|NEXT_STATE.IDLE_613~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\,
	combout => \fsm|STATE~19_combout\);

-- Location: FF_X75_Y2_N26
\fsm|STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \fsm|STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|STATE.IDLE~q\);

-- Location: LABCELL_X74_Y2_N3
\fsm|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|WideOr6~combout\ = ( !\fsm|STATE.WAIT_COUNT_DISC~q\ & ( (\fsm|STATE.IDLE~q\ & (!\fsm|STATE.RAND~q\ & !\fsm|STATE.WRITE_RAND~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_STATE.IDLE~q\,
	datac => \fsm|ALT_INV_STATE.RAND~q\,
	datad => \fsm|ALT_INV_STATE.WRITE_RAND~q\,
	dataf => \fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	combout => \fsm|WideOr6~combout\);

-- Location: LABCELL_X74_Y2_N12
\dp|rb|reg_GURU|q_s~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s~5_combout\ = ( \dp|rb|rb_out~4_combout\ & ( (!\reset~input_o\ & !\fsm|WideOr6~combout\) ) ) # ( !\dp|rb|rb_out~4_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \fsm|ALT_INV_WideOr6~combout\,
	dataf => \dp|rb|ALT_INV_rb_out~4_combout\,
	combout => \dp|rb|reg_GURU|q_s~5_combout\);

-- Location: LABCELL_X74_Y2_N57
\dp|rb|reg_GURU|q_s[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s[5]~0_combout\ = ( \fsm|STATE.RAND~q\ ) # ( !\fsm|STATE.RAND~q\ & ( (\fsm|STATE.INCR~q\) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \fsm|ALT_INV_STATE.INCR~q\,
	dataf => \fsm|ALT_INV_STATE.RAND~q\,
	combout => \dp|rb|reg_GURU|q_s[5]~0_combout\);

-- Location: FF_X74_Y2_N14
\dp|rb|reg_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_GURU|q_s~5_combout\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_GURU|q_s\(3));

-- Location: LABCELL_X75_Y2_N45
\dp|rb|reg_PRE_GURU|q_s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_PRE_GURU|q_s~4_combout\ = ( \dp|rb|reg_GURU|q_s\(3) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset~input_o\,
	dataf => \dp|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \dp|rb|reg_PRE_GURU|q_s~4_combout\);

-- Location: FF_X74_Y2_N59
\dp|rb|reg_PRE_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dp|rb|reg_PRE_GURU|q_s~4_combout\,
	sload => VCC,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_PRE_GURU|q_s\(3));

-- Location: LABCELL_X74_Y2_N27
\dp|rb|rb_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|rb_out~4_combout\ = ( \dp|rb|reg_GURU|q_s\(3) & ( ((!\fsm|STATE.CLEAR_BEHIND~q\ & !\fsm|STATE.CLEAR_PREV~q\)) # (\dp|rb|reg_PRE_GURU|q_s\(3)) ) ) # ( !\dp|rb|reg_GURU|q_s\(3) & ( (\dp|rb|reg_PRE_GURU|q_s\(3) & ((\fsm|STATE.CLEAR_PREV~q\) # 
-- (\fsm|STATE.CLEAR_BEHIND~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datab => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	dataf => \dp|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \dp|rb|rb_out~4_combout\);

-- Location: LABCELL_X74_Y2_N36
\dp|rb|reg_GURU|q_s~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s~6_combout\ = ( \dp|rb|rb_out~4_combout\ & ( (!\reset~input_o\ & ((!\fsm|WideOr6~combout\) # (\dp|rb|rb_out~5_combout\))) ) ) # ( !\dp|rb|rb_out~4_combout\ & ( (!\reset~input_o\ & ((!\fsm|WideOr6~combout\) # 
-- (!\dp|rb|rb_out~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \fsm|ALT_INV_WideOr6~combout\,
	datad => \dp|rb|ALT_INV_rb_out~5_combout\,
	dataf => \dp|rb|ALT_INV_rb_out~4_combout\,
	combout => \dp|rb|reg_GURU|q_s~6_combout\);

-- Location: FF_X74_Y2_N38
\dp|rb|reg_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_GURU|q_s~6_combout\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_GURU|q_s\(4));

-- Location: LABCELL_X74_Y2_N9
\dp|rb|reg_PRE_GURU|q_s~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_PRE_GURU|q_s~5_combout\ = ( !\reset~input_o\ & ( \dp|rb|reg_GURU|q_s\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dp|rb|reg_GURU|ALT_INV_q_s\(4),
	dataf => \ALT_INV_reset~input_o\,
	combout => \dp|rb|reg_PRE_GURU|q_s~5_combout\);

-- Location: FF_X74_Y2_N11
\dp|rb|reg_PRE_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_PRE_GURU|q_s~5_combout\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_PRE_GURU|q_s\(4));

-- Location: LABCELL_X74_Y2_N0
\dp|rb|rb_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|rb_out~5_combout\ = ( \dp|rb|reg_PRE_GURU|q_s\(4) & ( ((\fsm|STATE.CLEAR_PREV~q\) # (\fsm|STATE.CLEAR_BEHIND~q\)) # (\dp|rb|reg_GURU|q_s\(4)) ) ) # ( !\dp|rb|reg_PRE_GURU|q_s\(4) & ( (\dp|rb|reg_GURU|q_s\(4) & (!\fsm|STATE.CLEAR_BEHIND~q\ & 
-- !\fsm|STATE.CLEAR_PREV~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rb|reg_GURU|ALT_INV_q_s\(4),
	datac => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datad => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	combout => \dp|rb|rb_out~5_combout\);

-- Location: LABCELL_X74_Y2_N18
\dp|rb|reg_GURU|q_s~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s~7_combout\ = ( \dp|rb|rb_out~4_combout\ & ( (!\reset~input_o\ & ((!\fsm|WideOr6~combout\) # (\dp|rb|rb_out~6_combout\))) ) ) # ( !\dp|rb|rb_out~4_combout\ & ( (!\reset~input_o\ & ((!\fsm|WideOr6~combout\) # (!\dp|rb|rb_out~6_combout\ $ 
-- (\dp|rb|rb_out~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000010101010101000001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \dp|rb|ALT_INV_rb_out~6_combout\,
	datac => \dp|rb|ALT_INV_rb_out~5_combout\,
	datad => \fsm|ALT_INV_WideOr6~combout\,
	dataf => \dp|rb|ALT_INV_rb_out~4_combout\,
	combout => \dp|rb|reg_GURU|q_s~7_combout\);

-- Location: FF_X74_Y2_N20
\dp|rb|reg_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_GURU|q_s~7_combout\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_GURU|q_s\(5));

-- Location: LABCELL_X74_Y2_N42
\dp|rb|reg_PRE_GURU|q_s~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_PRE_GURU|q_s~6_combout\ = (\dp|rb|reg_GURU|q_s\(5) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp|rb|reg_GURU|ALT_INV_q_s\(5),
	datad => \ALT_INV_reset~input_o\,
	combout => \dp|rb|reg_PRE_GURU|q_s~6_combout\);

-- Location: FF_X74_Y2_N53
\dp|rb|reg_PRE_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dp|rb|reg_PRE_GURU|q_s~6_combout\,
	sload => VCC,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_PRE_GURU|q_s\(5));

-- Location: LABCELL_X74_Y2_N15
\dp|rb|rb_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|rb_out~6_combout\ = ( \dp|rb|reg_PRE_GURU|q_s\(5) & ( ((\fsm|STATE.CLEAR_PREV~q\) # (\fsm|STATE.CLEAR_BEHIND~q\)) # (\dp|rb|reg_GURU|q_s\(5)) ) ) # ( !\dp|rb|reg_PRE_GURU|q_s\(5) & ( (\dp|rb|reg_GURU|q_s\(5) & (!\fsm|STATE.CLEAR_BEHIND~q\ & 
-- !\fsm|STATE.CLEAR_PREV~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rb|reg_GURU|ALT_INV_q_s\(5),
	datab => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datac => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	combout => \dp|rb|rb_out~6_combout\);

-- Location: LABCELL_X74_Y2_N48
\dp|rb|reg_GURU|q_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s~1_combout\ = ( \dp|rb|rb_out~0_combout\ & ( \dp|rb|rb_out~4_combout\ & ( (!\reset~input_o\ & \fsm|WideOr6~combout\) ) ) ) # ( \dp|rb|rb_out~0_combout\ & ( !\dp|rb|rb_out~4_combout\ & ( (!\reset~input_o\ & (\fsm|WideOr6~combout\ & 
-- ((\dp|rb|rb_out~6_combout\) # (\dp|rb|rb_out~5_combout\)))) ) ) ) # ( !\dp|rb|rb_out~0_combout\ & ( !\dp|rb|rb_out~4_combout\ & ( (!\dp|rb|rb_out~5_combout\ & (!\reset~input_o\ & (\fsm|WideOr6~combout\ & !\dp|rb|rb_out~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000001000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rb|ALT_INV_rb_out~5_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \fsm|ALT_INV_WideOr6~combout\,
	datad => \dp|rb|ALT_INV_rb_out~6_combout\,
	datae => \dp|rb|ALT_INV_rb_out~0_combout\,
	dataf => \dp|rb|ALT_INV_rb_out~4_combout\,
	combout => \dp|rb|reg_GURU|q_s~1_combout\);

-- Location: FF_X74_Y2_N50
\dp|rb|reg_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_GURU|q_s~1_combout\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_GURU|q_s\(6));

-- Location: LABCELL_X75_Y2_N36
\dp|rb|reg_PRE_GURU|q_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_PRE_GURU|q_s~0_combout\ = ( \dp|rb|reg_GURU|q_s\(6) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \dp|rb|reg_GURU|ALT_INV_q_s\(6),
	combout => \dp|rb|reg_PRE_GURU|q_s~0_combout\);

-- Location: FF_X74_Y2_N29
\dp|rb|reg_PRE_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dp|rb|reg_PRE_GURU|q_s~0_combout\,
	sload => VCC,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_PRE_GURU|q_s\(6));

-- Location: LABCELL_X74_Y2_N45
\dp|rb|rb_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|rb_out~0_combout\ = (!\fsm|STATE.CLEAR_BEHIND~q\ & ((!\fsm|STATE.CLEAR_PREV~q\ & ((\dp|rb|reg_GURU|q_s\(6)))) # (\fsm|STATE.CLEAR_PREV~q\ & (\dp|rb|reg_PRE_GURU|q_s\(6))))) # (\fsm|STATE.CLEAR_BEHIND~q\ & (\dp|rb|reg_PRE_GURU|q_s\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010101010101001101010101010100110101010101010011010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	datab => \dp|rb|reg_GURU|ALT_INV_q_s\(6),
	datac => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datad => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \dp|rb|rb_out~0_combout\);

-- Location: LABCELL_X73_Y2_N27
\fsm|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|WideOr9~combout\ = ( \fsm|STATE.IDLE~q\ & ( \fsm|STATE.RAND~q\ ) ) # ( !\fsm|STATE.IDLE~q\ & ( \fsm|STATE.RAND~q\ ) ) # ( \fsm|STATE.IDLE~q\ & ( !\fsm|STATE.RAND~q\ & ( (((\fsm|STATE.WAIT_COUNT_DISC~q\) # (\fsm|STATE.INCR~q\)) # 
-- (\fsm|STATE.CHECK_LAST~q\)) # (\fsm|STATE.CHECK_SAME_ADDR~q\) ) ) ) # ( !\fsm|STATE.IDLE~q\ & ( !\fsm|STATE.RAND~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	datab => \fsm|ALT_INV_STATE.CHECK_LAST~q\,
	datac => \fsm|ALT_INV_STATE.INCR~q\,
	datad => \fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	datae => \fsm|ALT_INV_STATE.IDLE~q\,
	dataf => \fsm|ALT_INV_STATE.RAND~q\,
	combout => \fsm|WideOr9~combout\);

-- Location: MLABCELL_X72_Y2_N30
\fsm|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|WideOr7~0_combout\ = ( !\fsm|STATE.CLEAR_BEHIND~q\ & ( (!\fsm|STATE.CLEAR_PREV~q\ & \fsm|STATE.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datad => \fsm|ALT_INV_STATE.IDLE~q\,
	datae => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	combout => \fsm|WideOr7~0_combout\);

-- Location: MLABCELL_X72_Y2_N39
\fsm|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|WideOr8~combout\ = ((!\fsm|STATE.IDLE~q\) # ((\fsm|STATE.WRITE_DUO~q\) # (\fsm|STATE.CLEAR_PREV~q\))) # (\fsm|STATE.CLEAR_BEHIND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datab => \fsm|ALT_INV_STATE.IDLE~q\,
	datac => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datad => \fsm|ALT_INV_STATE.WRITE_DUO~q\,
	combout => \fsm|WideOr8~combout\);

-- Location: LABCELL_X74_Y2_N54
\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ = (!\fsm|STATE.CLEAR_PREV~q\ & !\fsm|STATE.CLEAR_BEHIND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datad => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	combout => \fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\);

-- Location: LABCELL_X73_Y2_N0
\dp|rb|reg_PRE_GURU|q_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_PRE_GURU|q_s~1_combout\ = (!\reset~input_o\ & \dp|rb|reg_GURU|q_s\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \dp|rb|reg_GURU|ALT_INV_q_s\(0),
	combout => \dp|rb|reg_PRE_GURU|q_s~1_combout\);

-- Location: FF_X74_Y2_N17
\dp|rb|reg_PRE_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dp|rb|reg_PRE_GURU|q_s~1_combout\,
	sload => VCC,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_PRE_GURU|q_s\(0));

-- Location: MLABCELL_X72_Y2_N57
\dp|n_g|LFSR|d_s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(1) = (\dp|n_g|LFSR|g1:0:FF|q_s~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(1));

-- Location: FF_X72_Y2_N59
\dp|n_g|LFSR|g1:1:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:1:FF|q_s~q\);

-- Location: LABCELL_X73_Y2_N51
\dp|n_g|LFSR|d_s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(2) = ( \dp|n_g|LFSR|g1:1:FF|q_s~q\ ) # ( !\dp|n_g|LFSR|g1:1:FF|q_s~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(2));

-- Location: MLABCELL_X72_Y2_N42
\dp|n_g|LFSR|g1:2:FF|q_s~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|g1:2:FF|q_s~feeder_combout\ = ( \dp|n_g|LFSR|d_s\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp|n_g|LFSR|ALT_INV_d_s\(2),
	combout => \dp|n_g|LFSR|g1:2:FF|q_s~feeder_combout\);

-- Location: FF_X72_Y2_N44
\dp|n_g|LFSR|g1:2:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|g1:2:FF|q_s~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:2:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N27
\dp|n_g|LFSR|d_s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(3) = (!\dp|n_g|LFSR|g1:11:FF|q_s~q\ $ (!\dp|n_g|LFSR|g1:2:FF|q_s~q\)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011111010111110101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datac => \dp|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(3));

-- Location: FF_X71_Y2_N28
\dp|n_g|LFSR|g1:3:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:3:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N24
\dp|n_g|LFSR|d_s[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(4) = ( \dp|n_g|LFSR|g1:3:FF|q_s~q\ & ( (!\dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\reset~input_o\) ) ) # ( !\dp|n_g|LFSR|g1:3:FF|q_s~q\ & ( (\dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	dataf => \dp|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(4));

-- Location: FF_X71_Y2_N25
\dp|n_g|LFSR|g1:4:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:4:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N33
\dp|n_g|LFSR|d_s[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(5) = ( \dp|n_g|LFSR|g1:4:FF|q_s~q\ ) # ( !\dp|n_g|LFSR|g1:4:FF|q_s~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \dp|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(5));

-- Location: FF_X71_Y2_N35
\dp|n_g|LFSR|g1:5:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:5:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N30
\dp|n_g|LFSR|d_s[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(6) = (!\dp|n_g|LFSR|g1:11:FF|q_s~q\ $ (!\dp|n_g|LFSR|g1:5:FF|q_s~q\)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011111010111110101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datac => \dp|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(6));

-- Location: FF_X71_Y2_N31
\dp|n_g|LFSR|g1:6:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:6:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N3
\dp|n_g|LFSR|d_s[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(7) = ( \reset~input_o\ & ( \dp|n_g|LFSR|g1:6:FF|q_s~q\ ) ) # ( !\reset~input_o\ & ( \dp|n_g|LFSR|g1:6:FF|q_s~q\ ) ) # ( \reset~input_o\ & ( !\dp|n_g|LFSR|g1:6:FF|q_s~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \dp|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(7));

-- Location: FF_X71_Y2_N5
\dp|n_g|LFSR|g1:7:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:7:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N21
\dp|n_g|LFSR|d_s[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(8) = (\dp|n_g|LFSR|g1:7:FF|q_s~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \dp|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(8));

-- Location: FF_X71_Y2_N23
\dp|n_g|LFSR|g1:8:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:8:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N18
\dp|n_g|LFSR|d_s[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(9) = (!\dp|n_g|LFSR|g1:11:FF|q_s~q\ $ (!\dp|n_g|LFSR|g1:8:FF|q_s~q\)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111011101011101111101110101110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datad => \dp|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(9));

-- Location: FF_X71_Y2_N19
\dp|n_g|LFSR|g1:9:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:9:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N15
\dp|n_g|LFSR|d_s[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(10) = ( \dp|n_g|LFSR|g1:9:FF|q_s~q\ & ( (!\dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\reset~input_o\) ) ) # ( !\dp|n_g|LFSR|g1:9:FF|q_s~q\ & ( (\dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	dataf => \dp|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(10));

-- Location: FF_X71_Y2_N16
\dp|n_g|LFSR|g1:10:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:10:FF|q_s~q\);

-- Location: LABCELL_X71_Y2_N12
\dp|n_g|LFSR|d_s[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(11) = ( \dp|n_g|LFSR|g1:10:FF|q_s~q\ ) # ( !\dp|n_g|LFSR|g1:10:FF|q_s~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \dp|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(11));

-- Location: FF_X71_Y2_N14
\dp|n_g|LFSR|g1:11:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:11:FF|q_s~q\);

-- Location: MLABCELL_X72_Y2_N54
\dp|n_g|LFSR|d_s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|n_g|LFSR|d_s\(0) = ( \dp|n_g|LFSR|g1:11:FF|q_s~q\ ) # ( !\dp|n_g|LFSR|g1:11:FF|q_s~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	combout => \dp|n_g|LFSR|d_s\(0));

-- Location: FF_X72_Y2_N56
\dp|n_g|LFSR|g1:0:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|n_g|LFSR|d_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|n_g|LFSR|g1:0:FF|q_s~q\);

-- Location: LABCELL_X74_Y2_N6
\dp|rb|reg_GURU|q_s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s~2_combout\ = ( \dp|n_g|LFSR|g1:0:FF|q_s~q\ & ( (!\fsm|WideOr6~combout\) # ((!\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (\dp|rb|reg_PRE_GURU|q_s\(0))) # (\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & 
-- ((\dp|rb|reg_GURU|q_s\(0))))) ) ) # ( !\dp|n_g|LFSR|g1:0:FF|q_s~q\ & ( (\fsm|WideOr6~combout\ & ((!\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (\dp|rb|reg_PRE_GURU|q_s\(0))) # (\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & 
-- ((\dp|rb|reg_GURU|q_s\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datab => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	datac => \fsm|ALT_INV_WideOr6~combout\,
	datad => \dp|rb|reg_GURU|ALT_INV_q_s\(0),
	dataf => \dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\,
	combout => \dp|rb|reg_GURU|q_s~2_combout\);

-- Location: FF_X74_Y2_N8
\dp|rb|reg_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_GURU|q_s~2_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_GURU|q_s\(0));

-- Location: LABCELL_X75_Y2_N30
\dp|rb|rb_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|rb_out~1_combout\ = ( \fsm|STATE.CLEAR_BEHIND~q\ & ( \dp|rb|reg_PRE_GURU|q_s\(0) ) ) # ( !\fsm|STATE.CLEAR_BEHIND~q\ & ( (!\fsm|STATE.CLEAR_PREV~q\ & (\dp|rb|reg_GURU|q_s\(0))) # (\fsm|STATE.CLEAR_PREV~q\ & ((\dp|rb|reg_PRE_GURU|q_s\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \dp|rb|reg_GURU|ALT_INV_q_s\(0),
	datad => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	dataf => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	combout => \dp|rb|rb_out~1_combout\);

-- Location: LABCELL_X75_Y2_N3
\dp|rb|reg_PRE_GURU|q_s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_PRE_GURU|q_s~2_combout\ = ( \dp|rb|reg_GURU|q_s\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset~input_o\,
	dataf => \dp|rb|reg_GURU|ALT_INV_q_s\(1),
	combout => \dp|rb|reg_PRE_GURU|q_s~2_combout\);

-- Location: FF_X74_Y2_N41
\dp|rb|reg_PRE_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dp|rb|reg_PRE_GURU|q_s~2_combout\,
	sload => VCC,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_PRE_GURU|q_s\(1));

-- Location: LABCELL_X74_Y2_N30
\dp|rb|reg_GURU|q_s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s~3_combout\ = ( \dp|n_g|LFSR|g1:1:FF|q_s~q\ & ( (!\fsm|WideOr6~combout\) # ((!\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (\dp|rb|reg_PRE_GURU|q_s\(1))) # (\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & 
-- ((\dp|rb|reg_GURU|q_s\(1))))) ) ) # ( !\dp|n_g|LFSR|g1:1:FF|q_s~q\ & ( (\fsm|WideOr6~combout\ & ((!\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (\dp|rb|reg_PRE_GURU|q_s\(1))) # (\fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & 
-- ((\dp|rb|reg_GURU|q_s\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datab => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	datac => \fsm|ALT_INV_WideOr6~combout\,
	datad => \dp|rb|reg_GURU|ALT_INV_q_s\(1),
	dataf => \dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\,
	combout => \dp|rb|reg_GURU|q_s~3_combout\);

-- Location: FF_X74_Y2_N32
\dp|rb|reg_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_GURU|q_s~3_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_GURU|q_s\(1));

-- Location: MLABCELL_X72_Y2_N9
\dp|rb|rb_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|rb_out~2_combout\ = ( \fsm|STATE.CLEAR_BEHIND~q\ & ( \dp|rb|reg_PRE_GURU|q_s\(1) ) ) # ( !\fsm|STATE.CLEAR_BEHIND~q\ & ( \dp|rb|reg_PRE_GURU|q_s\(1) & ( (\fsm|STATE.CLEAR_PREV~q\) # (\dp|rb|reg_GURU|q_s\(1)) ) ) ) # ( !\fsm|STATE.CLEAR_BEHIND~q\ & 
-- ( !\dp|rb|reg_PRE_GURU|q_s\(1) & ( (\dp|rb|reg_GURU|q_s\(1) & !\fsm|STATE.CLEAR_PREV~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp|rb|reg_GURU|ALT_INV_q_s\(1),
	datac => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	dataf => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	combout => \dp|rb|rb_out~2_combout\);

-- Location: LABCELL_X74_Y2_N24
\dp|rb|reg_GURU|q_s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_GURU|q_s~4_combout\ = ( \dp|rb|rb_out~3_combout\ & ( !\reset~input_o\ ) ) # ( !\dp|rb|rb_out~3_combout\ & ( (!\reset~input_o\ & !\fsm|WideOr6~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \fsm|ALT_INV_WideOr6~combout\,
	dataf => \dp|rb|ALT_INV_rb_out~3_combout\,
	combout => \dp|rb|reg_GURU|q_s~4_combout\);

-- Location: FF_X74_Y2_N26
\dp|rb|reg_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_GURU|q_s~4_combout\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_GURU|q_s\(2));

-- Location: LABCELL_X73_Y2_N6
\dp|rb|reg_PRE_GURU|q_s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|reg_PRE_GURU|q_s~3_combout\ = ( \dp|rb|reg_GURU|q_s\(2) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \dp|rb|reg_GURU|ALT_INV_q_s\(2),
	combout => \dp|rb|reg_PRE_GURU|q_s~3_combout\);

-- Location: FF_X73_Y2_N8
\dp|rb|reg_PRE_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dp|rb|reg_PRE_GURU|q_s~3_combout\,
	ena => \dp|rb|reg_GURU|q_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rb|reg_PRE_GURU|q_s\(2));

-- Location: LABCELL_X73_Y2_N15
\dp|rb|rb_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp|rb|rb_out~3_combout\ = ( \dp|rb|reg_PRE_GURU|q_s\(2) & ( ((\dp|rb|reg_GURU|q_s\(2)) # (\fsm|STATE.CLEAR_BEHIND~q\)) # (\fsm|STATE.CLEAR_PREV~q\) ) ) # ( !\dp|rb|reg_PRE_GURU|q_s\(2) & ( (!\fsm|STATE.CLEAR_PREV~q\ & (!\fsm|STATE.CLEAR_BEHIND~q\ & 
-- \dp|rb|reg_GURU|q_s\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datad => \dp|rb|reg_GURU|ALT_INV_q_s\(2),
	dataf => \dp|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	combout => \dp|rb|rb_out~3_combout\);

-- Location: LABCELL_X50_Y25_N3
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


