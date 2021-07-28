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

-- DATE "07/15/2021 09:08:50"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	wisdom_circuit IS
    PORT (
	clk : IN std_logic;
	res : IN std_logic;
	enable : IN std_logic;
	sys_speed : IN std_logic_vector(3 DOWNTO 0);
	print_rdy : OUT std_logic;
	start_step : OUT std_logic;
	mem_a_data : OUT std_logic_vector(7 DOWNTO 0);
	mem_a_addr : IN std_logic_vector(5 DOWNTO 0)
	);
END wisdom_circuit;

-- Design Ports Information
-- print_rdy	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_step	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[3]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF wisdom_circuit IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_sys_speed : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_print_rdy : std_logic;
SIGNAL ww_start_step : std_logic;
SIGNAL ww_mem_a_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_a_addr : std_logic_vector(5 DOWNTO 0);
SIGNAL \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~1_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|STATE~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~2\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~57_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~58\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~69_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~70\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~73_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~74\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~85_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~86\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~81_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~82\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~89_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~90\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~93_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~94\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~97_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~98\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~101_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~102\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~105_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~106\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~109_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~110\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~113_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~114\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~117_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~118\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~121_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~122\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~125_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~126\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~61_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~62\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~65_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~66\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~29_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~30\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~25_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~26\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~21_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~22\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~17_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~18\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~13_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~14\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~5_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~6\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~9_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~10\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~53_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~54\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~49_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~50\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~45_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~46\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~41_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~42\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~37_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~38\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~33_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Equal0~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Equal0~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Equal0~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Equal0~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~34\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Add0~77_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Equal0~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Equal0~5_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|Equal0~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector2~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE.CNT_START~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:2:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:3:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:4:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:5:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:6:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:7:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:8:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:9:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:10:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:0:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:1:FF|q_s~q\ : std_logic;
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s~5_combout\ : std_logic;
SIGNAL \cir2|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.RAND_594~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~16_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.RAND~q\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.WRITE_RAND_575~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~18_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \cir2|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~9_sumout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_s~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~10\ : std_logic;
SIGNAL \cir1|guru|step|Add0~45_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~58\ : std_logic;
SIGNAL \cir1|guru|step|Add0~61_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~62\ : std_logic;
SIGNAL \cir1|guru|step|Add0~13_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~14\ : std_logic;
SIGNAL \cir1|guru|step|Add0~17_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~18\ : std_logic;
SIGNAL \cir1|guru|step|Add0~25_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~26\ : std_logic;
SIGNAL \cir1|guru|step|Add0~29_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~30\ : std_logic;
SIGNAL \cir1|guru|step|Add0~33_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Equal0~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|Equal0~2_combout\ : std_logic;
SIGNAL \cir1|guru|step|Equal0~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_s[9]~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~46\ : std_logic;
SIGNAL \cir1|guru|step|Add0~21_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~22\ : std_logic;
SIGNAL \cir1|guru|step|Add0~41_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~42\ : std_logic;
SIGNAL \cir1|guru|step|Add0~37_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~38\ : std_logic;
SIGNAL \cir1|guru|step|Add0~5_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~6\ : std_logic;
SIGNAL \cir1|guru|step|Add0~53_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~54\ : std_logic;
SIGNAL \cir1|guru|step|Add0~49_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~50\ : std_logic;
SIGNAL \cir1|guru|step|Add0~1_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Add0~2\ : std_logic;
SIGNAL \cir1|guru|step|Add0~57_sumout\ : std_logic;
SIGNAL \cir1|guru|step|Equal1~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|process_0~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|Equal1~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|process_0~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v4_s~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v4_s~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v4_s~q\ : std_logic;
SIGNAL \sys_speed[2]~input_o\ : std_logic;
SIGNAL \sys_speed[3]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \sys_speed[1]~input_o\ : std_logic;
SIGNAL \sys_speed[0]~input_o\ : std_logic;
SIGNAL \cir1|guru|button|speed_sync_s~11_combout\ : std_logic;
SIGNAL \cir1|guru|button|speed_sync_s.TWO_X~q\ : std_logic;
SIGNAL \cir1|guru|step|process_0~2_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v8_s~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v8_s~q\ : std_logic;
SIGNAL \cir1|guru|button|speed_sync_s~12_combout\ : std_logic;
SIGNAL \cir1|guru|button|speed_sync_s.FOUR_X~q\ : std_logic;
SIGNAL \cir1|guru|button|Mux0~0_combout\ : std_logic;
SIGNAL \cir1|guru|button|speed_sync_s~10_combout\ : std_logic;
SIGNAL \cir1|guru|button|speed_sync_s.ONE_X~q\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v1_s~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v2_s~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v2_s~q\ : std_logic;
SIGNAL \cir1|guru|step|cnt_disc_rdy~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v1_s~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|cnt_v1_s~q\ : std_logic;
SIGNAL \cir1|guru|step|cnt_disc_rdy~1_combout\ : std_logic;
SIGNAL \cir2|fsm|Selector12~1_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~20_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.WAIT_COUNT_DISC~q\ : std_logic;
SIGNAL \cir2|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.INCR_537~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~17_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.INCR~q\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~14_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \cir1|guru|base|control|init|STATE~7_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|STATE.IDLE~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~19_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.INCR~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\ : std_logic;
SIGNAL \cir1|ref|Selector2~0_combout\ : std_logic;
SIGNAL \cir1|ref|stateG_reg.waitNClk~q\ : std_logic;
SIGNAL \cir1|ref|Add0~5_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector80~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~6\ : std_logic;
SIGNAL \cir1|ref|Add0~1_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector82~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~2\ : std_logic;
SIGNAL \cir1|ref|Add0~29_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector83~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~30\ : std_logic;
SIGNAL \cir1|ref|Add0~25_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector84~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~26\ : std_logic;
SIGNAL \cir1|ref|Add0~21_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector85~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~22\ : std_logic;
SIGNAL \cir1|ref|Add0~17_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector86~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~18\ : std_logic;
SIGNAL \cir1|ref|Add0~13_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector87~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~14\ : std_logic;
SIGNAL \cir1|ref|Add0~9_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector88~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~10\ : std_logic;
SIGNAL \cir1|ref|Add0~53_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector89~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~54\ : std_logic;
SIGNAL \cir1|ref|Add0~49_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector90~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~50\ : std_logic;
SIGNAL \cir1|ref|Add0~45_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector91~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~46\ : std_logic;
SIGNAL \cir1|ref|Add0~41_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector92~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~42\ : std_logic;
SIGNAL \cir1|ref|Add0~37_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector93~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~38\ : std_logic;
SIGNAL \cir1|ref|Add0~33_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector94~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~34\ : std_logic;
SIGNAL \cir1|ref|Add0~77_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector95~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~78\ : std_logic;
SIGNAL \cir1|ref|Add0~73_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector96~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~74\ : std_logic;
SIGNAL \cir1|ref|Add0~69_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector97~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~70\ : std_logic;
SIGNAL \cir1|ref|Add0~65_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector98~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~66\ : std_logic;
SIGNAL \cir1|ref|Add0~61_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector99~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~62\ : std_logic;
SIGNAL \cir1|ref|Add0~57_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector100~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~58\ : std_logic;
SIGNAL \cir1|ref|Add0~125_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector101~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~126\ : std_logic;
SIGNAL \cir1|ref|Add0~121_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector102~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~122\ : std_logic;
SIGNAL \cir1|ref|Add0~117_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector103~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~118\ : std_logic;
SIGNAL \cir1|ref|Add0~113_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector104~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~114\ : std_logic;
SIGNAL \cir1|ref|Add0~109_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector105~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~110\ : std_logic;
SIGNAL \cir1|ref|Add0~105_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector106~0_combout\ : std_logic;
SIGNAL \cir1|ref|Equal0~5_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~106\ : std_logic;
SIGNAL \cir1|ref|Add0~101_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector107~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~102\ : std_logic;
SIGNAL \cir1|ref|Add0~97_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector108~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~98\ : std_logic;
SIGNAL \cir1|ref|Add0~93_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector109~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~94\ : std_logic;
SIGNAL \cir1|ref|Add0~89_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector110~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~90\ : std_logic;
SIGNAL \cir1|ref|Add0~85_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector111~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add0~86\ : std_logic;
SIGNAL \cir1|ref|Add0~81_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector112~0_combout\ : std_logic;
SIGNAL \cir1|ref|Equal0~4_combout\ : std_logic;
SIGNAL \cir1|ref|Equal0~0_combout\ : std_logic;
SIGNAL \cir1|ref|Equal0~2_combout\ : std_logic;
SIGNAL \cir1|ref|Equal0~3_combout\ : std_logic;
SIGNAL \cir1|ref|Equal0~1_combout\ : std_logic;
SIGNAL \cir1|ref|Equal0~6_combout\ : std_logic;
SIGNAL \cir1|ref|Selector3~0_combout\ : std_logic;
SIGNAL \cir1|ref|stateG_reg.waitRdy0~q\ : std_logic;
SIGNAL \cir1|ref|Selector1~0_combout\ : std_logic;
SIGNAL \cir1|ref|stateG_reg.rdy0~q\ : std_logic;
SIGNAL \cir1|ref|stateG_next.rdy1~0_combout\ : std_logic;
SIGNAL \cir1|ref|stateG_reg.rdy1~q\ : std_logic;
SIGNAL \cir1|ref|tick_guru~combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add1~5_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector12~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~6\ : std_logic;
SIGNAL \cir1|ref|Add1~1_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector11~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~2\ : std_logic;
SIGNAL \cir1|ref|Add1~29_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector10~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~30\ : std_logic;
SIGNAL \cir1|ref|Add1~25_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector6~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~26\ : std_logic;
SIGNAL \cir1|ref|Add1~21_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector5~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~22\ : std_logic;
SIGNAL \cir1|ref|Add1~17_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector0~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~18\ : std_logic;
SIGNAL \cir1|ref|Add1~13_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector54~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~14\ : std_logic;
SIGNAL \cir1|ref|Add1~9_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector55~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~10\ : std_logic;
SIGNAL \cir1|ref|Add1~53_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector56~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~54\ : std_logic;
SIGNAL \cir1|ref|Add1~49_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector57~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~50\ : std_logic;
SIGNAL \cir1|ref|Add1~45_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector58~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~46\ : std_logic;
SIGNAL \cir1|ref|Add1~41_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector59~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~42\ : std_logic;
SIGNAL \cir1|ref|Add1~37_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector60~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~38\ : std_logic;
SIGNAL \cir1|ref|Add1~33_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector61~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~34\ : std_logic;
SIGNAL \cir1|ref|Add1~77_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector62~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~78\ : std_logic;
SIGNAL \cir1|ref|Add1~73_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector63~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~74\ : std_logic;
SIGNAL \cir1|ref|Add1~69_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector64~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~70\ : std_logic;
SIGNAL \cir1|ref|Add1~65_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector65~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~66\ : std_logic;
SIGNAL \cir1|ref|Add1~61_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector66~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~62\ : std_logic;
SIGNAL \cir1|ref|Add1~57_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector67~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~58\ : std_logic;
SIGNAL \cir1|ref|Add1~125_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector68~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~126\ : std_logic;
SIGNAL \cir1|ref|Add1~121_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector69~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~122\ : std_logic;
SIGNAL \cir1|ref|Add1~117_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector70~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~118\ : std_logic;
SIGNAL \cir1|ref|Add1~113_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector71~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~114\ : std_logic;
SIGNAL \cir1|ref|Add1~109_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector72~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~110\ : std_logic;
SIGNAL \cir1|ref|Add1~105_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector73~0_combout\ : std_logic;
SIGNAL \cir1|ref|Equal1~5_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~106\ : std_logic;
SIGNAL \cir1|ref|Add1~101_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector74~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~102\ : std_logic;
SIGNAL \cir1|ref|Add1~97_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector75~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~98\ : std_logic;
SIGNAL \cir1|ref|Add1~93_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector76~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~94\ : std_logic;
SIGNAL \cir1|ref|Add1~89_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector77~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~90\ : std_logic;
SIGNAL \cir1|ref|Add1~85_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector78~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add1~86\ : std_logic;
SIGNAL \cir1|ref|Add1~81_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector79~0_combout\ : std_logic;
SIGNAL \cir1|ref|Equal1~4_combout\ : std_logic;
SIGNAL \cir1|ref|Equal1~3_combout\ : std_logic;
SIGNAL \cir1|ref|Equal1~0_combout\ : std_logic;
SIGNAL \cir1|ref|Equal1~1_combout\ : std_logic;
SIGNAL \cir1|ref|Equal1~2_combout\ : std_logic;
SIGNAL \cir1|ref|Equal1~6_combout\ : std_logic;
SIGNAL \cir1|ref|Selector8~0_combout\ : std_logic;
SIGNAL \cir1|ref|stateD_reg.waitNClk~q\ : std_logic;
SIGNAL \cir1|ref|Selector9~0_combout\ : std_logic;
SIGNAL \cir1|ref|Selector9~1_combout\ : std_logic;
SIGNAL \cir1|ref|stateD_reg.waitRdy0~q\ : std_logic;
SIGNAL \cir1|ref|Selector7~0_combout\ : std_logic;
SIGNAL \cir1|ref|stateD_reg.rdy0~q\ : std_logic;
SIGNAL \cir1|ref|stateD_next.rdy1~0_combout\ : std_logic;
SIGNAL \cir1|ref|stateD_reg.rdy1~q\ : std_logic;
SIGNAL \cir1|ref|tick_disc~combout\ : std_logic;
SIGNAL \cir1|ref|Selector19~0_combout\ : std_logic;
SIGNAL \cir1|ref|Selector19~1_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.wait55~q\ : std_logic;
SIGNAL \cir1|ref|Selector21~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.unm_go_guru~q\ : std_logic;
SIGNAL \cir1|ref|Selector13~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.idle~q\ : std_logic;
SIGNAL \cir1|ref|mainCnt[5]~1_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~5_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector53~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~6\ : std_logic;
SIGNAL \cir1|ref|Add2~29_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector52~0_combout\ : std_logic;
SIGNAL \cir1|ref|Selector52~1_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~30\ : std_logic;
SIGNAL \cir1|ref|Add2~25_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector51~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[2]~8_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~26\ : std_logic;
SIGNAL \cir1|ref|Add2~21_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector50~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~22\ : std_logic;
SIGNAL \cir1|ref|Add2~17_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector49~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~18\ : std_logic;
SIGNAL \cir1|ref|Add2~13_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector48~0_combout\ : std_logic;
SIGNAL \cir1|ref|Selector48~1_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~14\ : std_logic;
SIGNAL \cir1|ref|Add2~9_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector47~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[6]~4_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~10\ : std_logic;
SIGNAL \cir1|ref|Add2~53_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector46~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~54\ : std_logic;
SIGNAL \cir1|ref|Add2~49_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector45~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~50\ : std_logic;
SIGNAL \cir1|ref|Add2~45_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector44~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~46\ : std_logic;
SIGNAL \cir1|ref|Add2~41_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector43~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~42\ : std_logic;
SIGNAL \cir1|ref|Add2~37_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector42~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~38\ : std_logic;
SIGNAL \cir1|ref|Add2~33_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector41~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~34\ : std_logic;
SIGNAL \cir1|ref|Add2~77_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector40~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~78\ : std_logic;
SIGNAL \cir1|ref|Add2~73_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector39~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~74\ : std_logic;
SIGNAL \cir1|ref|Add2~69_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector38~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~70\ : std_logic;
SIGNAL \cir1|ref|Add2~65_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector37~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~66\ : std_logic;
SIGNAL \cir1|ref|Add2~61_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector36~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~62\ : std_logic;
SIGNAL \cir1|ref|Add2~57_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector35~0_combout\ : std_logic;
SIGNAL \cir1|ref|LessThan0~2_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|mainCnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|LessThan0~1_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[19]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~58\ : std_logic;
SIGNAL \cir1|ref|Add2~125_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector34~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~126\ : std_logic;
SIGNAL \cir1|ref|Add2~121_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector33~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~122\ : std_logic;
SIGNAL \cir1|ref|Add2~117_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector32~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~118\ : std_logic;
SIGNAL \cir1|ref|Add2~113_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector31~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~114\ : std_logic;
SIGNAL \cir1|ref|Add2~109_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector30~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[23]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~110\ : std_logic;
SIGNAL \cir1|ref|Add2~105_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector29~0_combout\ : std_logic;
SIGNAL \cir1|ref|LessThan0~4_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~106\ : std_logic;
SIGNAL \cir1|ref|Add2~101_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector28~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~102\ : std_logic;
SIGNAL \cir1|ref|Add2~97_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector27~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~98\ : std_logic;
SIGNAL \cir1|ref|Add2~93_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector26~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~94\ : std_logic;
SIGNAL \cir1|ref|Add2~89_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector25~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~90\ : std_logic;
SIGNAL \cir1|ref|Add2~85_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector24~0_combout\ : std_logic;
SIGNAL \cir1|ref|mainCnt[30]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|Add2~86\ : std_logic;
SIGNAL \cir1|ref|Add2~81_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector23~0_combout\ : std_logic;
SIGNAL \cir1|ref|LessThan0~3_combout\ : std_logic;
SIGNAL \cir1|ref|LessThan0~0_combout\ : std_logic;
SIGNAL \cir1|ref|LessThan0~5_combout\ : std_logic;
SIGNAL \cir1|ref|Selector20~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.wait50l~q\ : std_logic;
SIGNAL \cir1|ref|Selector14~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.wait50~q\ : std_logic;
SIGNAL \cir1|ref|state_reg.wait50b~q\ : std_logic;
SIGNAL \cir1|ref|Selector16~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.wait50b~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|mainCnt[5]~0_combout\ : std_logic;
SIGNAL \cir1|ref|Selector22~0_combout\ : std_logic;
SIGNAL \cir1|ref|Add2~82\ : std_logic;
SIGNAL \cir1|ref|Add2~1_sumout\ : std_logic;
SIGNAL \cir1|ref|Selector22~1_combout\ : std_logic;
SIGNAL \cir1|ref|state_next.checkMiddle~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.checkMiddle~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[7]~9_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|STATE~8_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|STATE.ZERO~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:3:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:4:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:5:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:6:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:7:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:8:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:9:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:10:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:0:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[0]~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[0]~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[1]~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[1]~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[2]~5_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[2]~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[4]~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[4]~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[5]~7_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|alu_1|add|adder_6|aux_and_3~combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[7]~8_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s~4_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s~5_combout\ : std_logic;
SIGNAL \cir1|ref|Equal5~0_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s~3_combout\ : std_logic;
SIGNAL \cir2|dp|rb|rb_out~1_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s~2_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s~1_combout\ : std_logic;
SIGNAL \cir2|dp|rb|rb_out~5_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s~2_combout\ : std_logic;
SIGNAL \cir2|dp|rb|rb_out~6_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s~3_combout\ : std_logic;
SIGNAL \cir2|dp|alu_1|add|adder_5|c_out~0_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[3]~0_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s~6_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s~7_combout\ : std_logic;
SIGNAL \cir1|ref|Equal5~1_combout\ : std_logic;
SIGNAL \cir1|ref|Equal5~2_combout\ : std_logic;
SIGNAL \cir1|ref|Equal3~1_combout\ : std_logic;
SIGNAL \cir1|ref|Equal3~2_combout\ : std_logic;
SIGNAL \cir1|ref|state_next.go_guru_state~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.go_guru_state~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~20_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \cir1|ref|go_guru~combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~13_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.LAST~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[6]~8_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|Selector1~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|STATE.MEM_WALK~q\ : std_logic;
SIGNAL \cir1|guru|base|control|init|STATE~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|STATE.DONE~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE~9_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|rb_out[3]~5_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~21_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \cir1|ref|state_next.checkTop~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.checkTop~q\ : std_logic;
SIGNAL \cir1|ref|Equal2~6_combout\ : std_logic;
SIGNAL \cir1|ref|state_next.detect~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.detect~q\ : std_logic;
SIGNAL \cir1|hold2|state_next~0_combout\ : std_logic;
SIGNAL \cir1|hold2|state_next~1_combout\ : std_logic;
SIGNAL \cir1|hold2|state_next~combout\ : std_logic;
SIGNAL \cir1|hold2|state_reg~q\ : std_logic;
SIGNAL \cir1|ref|Equal2~3_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~1_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~2_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~4_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~5_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.conflict1~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.conflict1~q\ : std_logic;
SIGNAL \cir1|hold|state_next~0_combout\ : std_logic;
SIGNAL \cir1|hold|state_next~1_combout\ : std_logic;
SIGNAL \cir1|hold|state_next~combout\ : std_logic;
SIGNAL \cir1|hold|state_reg~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~16_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.WRITE_GURU~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~15_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|Selector1~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[6]~9_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~11_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~8_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~10_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~9_combout\ : std_logic;
SIGNAL \cir1|disc_prev_s[0]~0_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~12_combout\ : std_logic;
SIGNAL \cir1|ref|state_next.detect1~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.detect1~q\ : std_logic;
SIGNAL \cir1|hold2|holdedOut~combout\ : std_logic;
SIGNAL \cir2|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.CHECK_LAST_461~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~22_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \cir2|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~24_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.CHECK_BEHIND~q\ : std_logic;
SIGNAL \cir2|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~14_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.CLEAR_BEHIND~q\ : std_logic;
SIGNAL \cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s~6_combout\ : std_logic;
SIGNAL \cir1|ref|Equal3~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_next.conflict~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.conflict~q\ : std_logic;
SIGNAL \cir1|ref|Selector18~0_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.unm_godisc_BL~q\ : std_logic;
SIGNAL \cir2|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~21_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector1~0_combout\ : std_logic;
SIGNAL \cir2|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.WRITE_DUO_499~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~23_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \cir2|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.WRITE_DISC_480~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~25_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.WRITE_DISC~q\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.CLEAR_PREV_404~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~15_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \cir1|hold3|state_reg~q\ : std_logic;
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector0~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector0~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector0~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector0~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE.CHECK_END~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector1~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE~10_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE.HIT_POINT~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|Selector1~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE.CNT_PREPARE~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|STATE~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~9_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~10\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~53_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~54\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~49_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~50\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~45_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~46\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~41_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[4]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~42\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~37_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~38\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~33_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~34\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~117_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~118\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~105_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~106\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~125_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~126\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~61_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~62\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~65_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~66\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~73_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~74\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~69_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~70\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~57_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~58\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~121_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~122\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~113_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~114\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~5_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~6\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~13_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~14\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~17_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~18\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~21_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~22\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~25_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~26\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~29_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~30\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~77_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Equal0~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Equal0~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~78\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~1_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~2\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~85_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~86\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~89_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~90\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~93_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~94\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~97_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s[28]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~98\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~101_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~102\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~109_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~110\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Add0~81_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Equal0~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Equal0~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Equal0~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Equal0~5_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|Equal0~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE~8_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~17_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.START_WALKING~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE~18_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|STATE.RAND~q\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ng_2_RB[5]~7_combout\ : std_logic;
SIGNAL \cir1|ref|Equal2~7_combout\ : std_logic;
SIGNAL \cir1|ref|Selector17~0_combout\ : std_logic;
SIGNAL \cir1|ref|Selector17~1_combout\ : std_logic;
SIGNAL \cir1|ref|state_reg.unm_go_discB~q\ : std_logic;
SIGNAL \cir2|fsm|Selector18~0_combout\ : std_logic;
SIGNAL \cir2|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \cir2|fsm|NEXT_STATE.IDLE_613~combout\ : std_logic;
SIGNAL \cir2|fsm|STATE~19_combout\ : std_logic;
SIGNAL \cir2|fsm|STATE.IDLE~q\ : std_logic;
SIGNAL \cir2|fsm|WideOr6~combout\ : std_logic;
SIGNAL \cir2|dp|rb|rb_out~0_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|q_s~1_combout\ : std_logic;
SIGNAL \cir1|hold3|holdedOut~0_combout\ : std_logic;
SIGNAL \cir1|guru|print_rdy~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~0_combout\ : std_logic;
SIGNAL \cir2|fsm|WideOr9~combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ : std_logic;
SIGNAL \mem_a_addr[0]~input_o\ : std_logic;
SIGNAL \cir1|guru|mem_a_addr_s[0]~0_combout\ : std_logic;
SIGNAL \mem_a_addr[1]~input_o\ : std_logic;
SIGNAL \cir1|guru|mem_a_addr_s[1]~1_combout\ : std_logic;
SIGNAL \mem_a_addr[2]~input_o\ : std_logic;
SIGNAL \cir1|guru|mem_a_addr_s[2]~2_combout\ : std_logic;
SIGNAL \mem_a_addr[3]~input_o\ : std_logic;
SIGNAL \cir1|guru|mem_a_addr_s[3]~3_combout\ : std_logic;
SIGNAL \mem_a_addr[4]~input_o\ : std_logic;
SIGNAL \cir1|guru|mem_a_addr_s[4]~4_combout\ : std_logic;
SIGNAL \mem_a_addr[5]~input_o\ : std_logic;
SIGNAL \cir1|guru|mem_a_addr_s[5]~5_combout\ : std_logic;
SIGNAL \cir2|fsm|WideOr7~0_combout\ : std_logic;
SIGNAL \cir2|dp|rb|rb_out~2_combout\ : std_logic;
SIGNAL \cir2|dp|rb|rb_out~3_combout\ : std_logic;
SIGNAL \cir2|dp|rb|rb_out~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ctrl_2_dp.cg_sel.DUO~0_combout\ : std_logic;
SIGNAL \cir2|fsm|WideOr8~combout\ : std_logic;
SIGNAL \cir1|ref|waitNGCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|ref|waitNGCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir2|dp|n_g|LFSR|d_s\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \cir1|guru|base|control|cnt_strat|cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|guru|base|control|cnt_prep|cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|guru|base|data|rb|reg_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|ref|waitNDCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|guru|mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|guru|step|cnt_s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cir1|ref|waitNDCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|guru|base|data|rb|reg_INIT|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir2|dp|rb|reg_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|guru|base|data|n_g|LFSR|d_s\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \cir2|dp|rb|reg_PRE_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|ref|mainCnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|ref|ALT_INV_state_reg.wait50b~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[19]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[23]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[30]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[28]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[4]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_res~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_waitNDCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|ref|ALT_INV_waitNGCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\ : std_logic;
SIGNAL \cir1|hold2|ALT_INV_state_next~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\ : std_logic;
SIGNAL \cir1|hold|ALT_INV_state_next~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.INCR_537~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.RAND_594~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector68~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector69~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector70~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector71~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector72~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector73~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector74~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector75~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector76~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector77~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector78~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector79~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector62~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector63~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector64~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector65~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector66~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector67~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector56~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector57~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector58~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector59~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector60~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector61~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector54~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector55~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector101~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector102~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector103~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector104~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector105~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector106~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector107~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector108~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector109~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector110~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector111~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector112~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector95~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector96~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector97~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector98~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector99~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector100~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector89~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector90~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector91~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector92~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector93~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector94~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector83~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector84~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector85~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector86~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector87~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector88~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector80~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector82~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateD_reg.waitRdy0~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateG_reg.waitRdy0~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_waitNDCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|ref|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateD_reg.rdy0~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_waitNGCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|ref|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateG_reg.rdy0~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector52~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[5]~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_tick_disc~combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateD_reg.rdy1~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt[5]~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \cir1|hold2|ALT_INV_state_next~1_combout\ : std_logic;
SIGNAL \cir1|hold2|ALT_INV_state_next~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.wait50l~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.wait55~q\ : std_logic;
SIGNAL \cir1|guru|base|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[7]~9_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.wait50~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_tick_guru~combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_stateG_reg.rdy1~q\ : std_logic;
SIGNAL \cir1|hold|ALT_INV_state_next~1_combout\ : std_logic;
SIGNAL \cir1|hold|ALT_INV_state_next~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.wait50b~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_mainCnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|ref|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~12_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~11_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~10_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~9_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~8_combout\ : std_logic;
SIGNAL \cir1|ALT_INV_disc_prev_s[0]~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~7_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_disc_rdy~1_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir2|dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[6]~8_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_go_guru~combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.unm_go_guru~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.go_guru_state~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.INCR~q\ : std_logic;
SIGNAL \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|ALT_INV_STATE.ZERO~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.RAND~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.checkMiddle~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.checkTop~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_NEXT_STATE~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.WRITE_DISC~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.unm_go_discB~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.CHECK_BEHIND~q\ : std_logic;
SIGNAL \cir1|hold2|ALT_INV_holdedOut~combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.detect~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.detect1~q\ : std_logic;
SIGNAL \cir1|hold2|ALT_INV_state_reg~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_STATE.HIT_POINT~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \cir2|dp|rb|ALT_INV_rb_out~6_combout\ : std_logic;
SIGNAL \cir2|dp|rb|ALT_INV_rb_out~5_combout\ : std_logic;
SIGNAL \cir2|dp|rb|reg_GURU|ALT_INV_q_s\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cir2|fsm|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[5]~7_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[4]~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[2]~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_GURU~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\ : std_logic;
SIGNAL \cir1|guru|base|control|init|ALT_INV_STATE.DONE~q\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_v4_s~0_combout\ : std_logic;
SIGNAL \cir1|guru|button|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_v1_s~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cir1|guru|base|control|main|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.conflict~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_state_reg.conflict1~q\ : std_logic;
SIGNAL \cir1|hold|ALT_INV_state_reg~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.IDLE~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \cir2|dp|rb|ALT_INV_rb_out~1_combout\ : std_logic;
SIGNAL \cir2|dp|alu_1|add|adder_5|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ : std_logic;
SIGNAL \cir2|dp|rb|ALT_INV_rb_out~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.INCR~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.RAND~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_v8_s~q\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_v4_s~q\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_v2_s~q\ : std_logic;
SIGNAL \cir1|guru|button|ALT_INV_speed_sync_s.ONE_X~q\ : std_logic;
SIGNAL \cir1|guru|step|ALT_INV_cnt_v1_s~q\ : std_logic;
SIGNAL \cir1|hold3|ALT_INV_holdedOut~0_combout\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\ : std_logic;
SIGNAL \cir1|hold3|ALT_INV_state_reg~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector47~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Selector51~0_combout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \cir1|ref|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|guru|step|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\ : std_logic;
SIGNAL \cir1|guru|base|control|init|ALT_INV_STATE.MEM_WALK~q\ : std_logic;
SIGNAL \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_STATE~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_STATE~q\ : std_logic;
SIGNAL \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|guru|base|control|main|ALT_INV_STATE.CNT_START~q\ : std_logic;
SIGNAL \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cir1|guru|base|control|main|ALT_INV_STATE.CNT_PREPARE~q\ : std_logic;
SIGNAL \cir1|guru|button|ALT_INV_speed_sync_s.FOUR_X~q\ : std_logic;
SIGNAL \cir1|guru|button|ALT_INV_speed_sync_s.TWO_X~q\ : std_logic;
SIGNAL \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_res <= res;
ww_enable <= enable;
ww_sys_speed <= sys_speed;
print_rdy <= ww_print_rdy;
start_step <= ww_start_step;
mem_a_data <= ww_mem_a_data;
ww_mem_a_addr <= mem_a_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\cir1|guru|base|control|ctrl_2_dp.cg_sel.DUO~0_combout\ & \~GND~combout\ & \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~1_combout\ & \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~0_combout\);

\cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \cir2|fsm|STATE.WRITE_DUO~q\
& \cir2|fsm|WideOr8~combout\ & \~GND~combout\ & \cir2|fsm|WideOr7~0_combout\);

\cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cir1|guru|mem_a_addr_s[5]~5_combout\ & \cir1|guru|mem_a_addr_s[4]~4_combout\ & \cir1|guru|mem_a_addr_s[3]~3_combout\ & \cir1|guru|mem_a_addr_s[2]~2_combout\ & 
\cir1|guru|mem_a_addr_s[1]~1_combout\ & \cir1|guru|mem_a_addr_s[0]~0_combout\);

\cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\cir2|dp|rb|rb_out~1_combout\ & \cir2|dp|rb|rb_out~6_combout\ & \cir2|dp|rb|rb_out~5_combout\ & \cir2|dp|rb|rb_out~4_combout\ & \cir2|dp|rb|rb_out~3_combout\ & 
\cir2|dp|rb|rb_out~2_combout\);

\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(0) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(1) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(2) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(3) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(4) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(5) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(6) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\cir1|guru|mem|altsyncram_component|auto_generated|q_a\(7) <= \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\cir1|ref|ALT_INV_state_reg.wait50b~DUPLICATE_q\ <= NOT \cir1|ref|state_reg.wait50b~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[19]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[19]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[23]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[23]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[30]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[30]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[17]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[17]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[18]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[18]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[7]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[7]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[9]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[9]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[10]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[10]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[11]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[11]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[12]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[12]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[4]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[4]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[0]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[0]~DUPLICATE_q\;
\cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\ <= NOT \cir1|ref|mainCnt[31]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[13]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[11]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[11]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[10]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[10]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[8]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[8]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[6]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[6]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[3]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[3]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[16]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[16]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[18]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_strat|cnt_s[18]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[9]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[15]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[15]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[7]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[7]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[16]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[16]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[8]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[8]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[28]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[28]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[12]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[12]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[13]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[13]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[11]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[11]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[1]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[1]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[4]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[4]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[5]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[5]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[6]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[6]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[19]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[19]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[18]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[18]~DUPLICATE_q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[0]~DUPLICATE_q\ <= NOT \cir1|guru|base|control|cnt_prep|cnt_s[0]~DUPLICATE_q\;
\ALT_INV_mem_a_addr[5]~input_o\ <= NOT \mem_a_addr[5]~input_o\;
\ALT_INV_mem_a_addr[4]~input_o\ <= NOT \mem_a_addr[4]~input_o\;
\ALT_INV_mem_a_addr[3]~input_o\ <= NOT \mem_a_addr[3]~input_o\;
\ALT_INV_mem_a_addr[2]~input_o\ <= NOT \mem_a_addr[2]~input_o\;
\ALT_INV_mem_a_addr[1]~input_o\ <= NOT \mem_a_addr[1]~input_o\;
\ALT_INV_mem_a_addr[0]~input_o\ <= NOT \mem_a_addr[0]~input_o\;
\ALT_INV_sys_speed[3]~input_o\ <= NOT \sys_speed[3]~input_o\;
\ALT_INV_sys_speed[2]~input_o\ <= NOT \sys_speed[2]~input_o\;
\ALT_INV_sys_speed[1]~input_o\ <= NOT \sys_speed[1]~input_o\;
\ALT_INV_sys_speed[0]~input_o\ <= NOT \sys_speed[0]~input_o\;
\ALT_INV_res~input_o\ <= NOT \res~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\cir1|ref|ALT_INV_waitNDCountNext\(20) <= NOT \cir1|ref|waitNDCountNext\(20);
\cir1|ref|ALT_INV_waitNDCountNext\(21) <= NOT \cir1|ref|waitNDCountNext\(21);
\cir1|ref|ALT_INV_waitNDCountNext\(22) <= NOT \cir1|ref|waitNDCountNext\(22);
\cir1|ref|ALT_INV_waitNDCountNext\(23) <= NOT \cir1|ref|waitNDCountNext\(23);
\cir1|ref|ALT_INV_waitNDCountNext\(24) <= NOT \cir1|ref|waitNDCountNext\(24);
\cir1|ref|ALT_INV_waitNDCountNext\(25) <= NOT \cir1|ref|waitNDCountNext\(25);
\cir1|ref|ALT_INV_waitNDCountNext\(26) <= NOT \cir1|ref|waitNDCountNext\(26);
\cir1|ref|ALT_INV_waitNDCountNext\(27) <= NOT \cir1|ref|waitNDCountNext\(27);
\cir1|ref|ALT_INV_waitNDCountNext\(28) <= NOT \cir1|ref|waitNDCountNext\(28);
\cir1|ref|ALT_INV_waitNDCountNext\(29) <= NOT \cir1|ref|waitNDCountNext\(29);
\cir1|ref|ALT_INV_waitNDCountNext\(30) <= NOT \cir1|ref|waitNDCountNext\(30);
\cir1|ref|ALT_INV_waitNDCountNext\(31) <= NOT \cir1|ref|waitNDCountNext\(31);
\cir1|ref|ALT_INV_waitNDCountNext\(14) <= NOT \cir1|ref|waitNDCountNext\(14);
\cir1|ref|ALT_INV_waitNDCountNext\(15) <= NOT \cir1|ref|waitNDCountNext\(15);
\cir1|ref|ALT_INV_waitNDCountNext\(16) <= NOT \cir1|ref|waitNDCountNext\(16);
\cir1|ref|ALT_INV_waitNDCountNext\(17) <= NOT \cir1|ref|waitNDCountNext\(17);
\cir1|ref|ALT_INV_waitNDCountNext\(18) <= NOT \cir1|ref|waitNDCountNext\(18);
\cir1|ref|ALT_INV_waitNDCountNext\(19) <= NOT \cir1|ref|waitNDCountNext\(19);
\cir1|ref|ALT_INV_waitNDCountNext\(8) <= NOT \cir1|ref|waitNDCountNext\(8);
\cir1|ref|ALT_INV_waitNDCountNext\(9) <= NOT \cir1|ref|waitNDCountNext\(9);
\cir1|ref|ALT_INV_waitNDCountNext\(10) <= NOT \cir1|ref|waitNDCountNext\(10);
\cir1|ref|ALT_INV_waitNDCountNext\(11) <= NOT \cir1|ref|waitNDCountNext\(11);
\cir1|ref|ALT_INV_waitNDCountNext\(12) <= NOT \cir1|ref|waitNDCountNext\(12);
\cir1|ref|ALT_INV_waitNDCountNext\(13) <= NOT \cir1|ref|waitNDCountNext\(13);
\cir1|ref|ALT_INV_waitNDCountNext\(2) <= NOT \cir1|ref|waitNDCountNext\(2);
\cir1|ref|ALT_INV_waitNDCountNext\(3) <= NOT \cir1|ref|waitNDCountNext\(3);
\cir1|ref|ALT_INV_waitNDCountNext\(4) <= NOT \cir1|ref|waitNDCountNext\(4);
\cir1|ref|ALT_INV_waitNDCountNext\(5) <= NOT \cir1|ref|waitNDCountNext\(5);
\cir1|ref|ALT_INV_waitNDCountNext\(6) <= NOT \cir1|ref|waitNDCountNext\(6);
\cir1|ref|ALT_INV_waitNDCountNext\(7) <= NOT \cir1|ref|waitNDCountNext\(7);
\cir1|ref|ALT_INV_waitNDCountNext\(0) <= NOT \cir1|ref|waitNDCountNext\(0);
\cir1|ref|ALT_INV_waitNDCountNext\(1) <= NOT \cir1|ref|waitNDCountNext\(1);
\cir1|ref|ALT_INV_waitNGCountNext\(20) <= NOT \cir1|ref|waitNGCountNext\(20);
\cir1|ref|ALT_INV_waitNGCountNext\(21) <= NOT \cir1|ref|waitNGCountNext\(21);
\cir1|ref|ALT_INV_waitNGCountNext\(22) <= NOT \cir1|ref|waitNGCountNext\(22);
\cir1|ref|ALT_INV_waitNGCountNext\(23) <= NOT \cir1|ref|waitNGCountNext\(23);
\cir1|ref|ALT_INV_waitNGCountNext\(24) <= NOT \cir1|ref|waitNGCountNext\(24);
\cir1|ref|ALT_INV_waitNGCountNext\(25) <= NOT \cir1|ref|waitNGCountNext\(25);
\cir1|ref|ALT_INV_waitNGCountNext\(26) <= NOT \cir1|ref|waitNGCountNext\(26);
\cir1|ref|ALT_INV_waitNGCountNext\(27) <= NOT \cir1|ref|waitNGCountNext\(27);
\cir1|ref|ALT_INV_waitNGCountNext\(28) <= NOT \cir1|ref|waitNGCountNext\(28);
\cir1|ref|ALT_INV_waitNGCountNext\(29) <= NOT \cir1|ref|waitNGCountNext\(29);
\cir1|ref|ALT_INV_waitNGCountNext\(30) <= NOT \cir1|ref|waitNGCountNext\(30);
\cir1|ref|ALT_INV_waitNGCountNext\(31) <= NOT \cir1|ref|waitNGCountNext\(31);
\cir1|ref|ALT_INV_waitNGCountNext\(14) <= NOT \cir1|ref|waitNGCountNext\(14);
\cir1|ref|ALT_INV_waitNGCountNext\(15) <= NOT \cir1|ref|waitNGCountNext\(15);
\cir1|ref|ALT_INV_waitNGCountNext\(16) <= NOT \cir1|ref|waitNGCountNext\(16);
\cir1|ref|ALT_INV_waitNGCountNext\(17) <= NOT \cir1|ref|waitNGCountNext\(17);
\cir1|ref|ALT_INV_waitNGCountNext\(18) <= NOT \cir1|ref|waitNGCountNext\(18);
\cir1|ref|ALT_INV_waitNGCountNext\(19) <= NOT \cir1|ref|waitNGCountNext\(19);
\cir1|ref|ALT_INV_waitNGCountNext\(8) <= NOT \cir1|ref|waitNGCountNext\(8);
\cir1|ref|ALT_INV_waitNGCountNext\(9) <= NOT \cir1|ref|waitNGCountNext\(9);
\cir1|ref|ALT_INV_waitNGCountNext\(10) <= NOT \cir1|ref|waitNGCountNext\(10);
\cir1|ref|ALT_INV_waitNGCountNext\(11) <= NOT \cir1|ref|waitNGCountNext\(11);
\cir1|ref|ALT_INV_waitNGCountNext\(12) <= NOT \cir1|ref|waitNGCountNext\(12);
\cir1|ref|ALT_INV_waitNGCountNext\(13) <= NOT \cir1|ref|waitNGCountNext\(13);
\cir1|ref|ALT_INV_waitNGCountNext\(2) <= NOT \cir1|ref|waitNGCountNext\(2);
\cir1|ref|ALT_INV_waitNGCountNext\(3) <= NOT \cir1|ref|waitNGCountNext\(3);
\cir1|ref|ALT_INV_waitNGCountNext\(4) <= NOT \cir1|ref|waitNGCountNext\(4);
\cir1|ref|ALT_INV_waitNGCountNext\(5) <= NOT \cir1|ref|waitNGCountNext\(5);
\cir1|ref|ALT_INV_waitNGCountNext\(6) <= NOT \cir1|ref|waitNGCountNext\(6);
\cir1|ref|ALT_INV_waitNGCountNext\(7) <= NOT \cir1|ref|waitNGCountNext\(7);
\cir1|ref|ALT_INV_waitNGCountNext\(0) <= NOT \cir1|ref|waitNGCountNext\(0);
\cir1|ref|ALT_INV_waitNGCountNext\(1) <= NOT \cir1|ref|waitNGCountNext\(1);
\cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\ <= NOT \cir2|fsm|NEXT_STATE.WRITE_DISC_480~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\ <= NOT \cir2|fsm|NEXT_STATE.CHECK_BEHIND_442~combout\;
\cir1|hold2|ALT_INV_state_next~combout\ <= NOT \cir1|hold2|state_next~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\ <= NOT \cir2|fsm|NEXT_STATE.WRITE_DUO_499~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\ <= NOT \cir2|fsm|NEXT_STATE.CHECK_LAST_461~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\ <= NOT \cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\;
\cir1|hold|ALT_INV_state_next~combout\ <= NOT \cir1|hold|state_next~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\ <= NOT \cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\ <= NOT \cir2|fsm|NEXT_STATE.IDLE_613~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\ <= NOT \cir2|fsm|NEXT_STATE.WRITE_RAND_575~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.INCR_537~combout\ <= NOT \cir2|fsm|NEXT_STATE.INCR_537~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.RAND_594~combout\ <= NOT \cir2|fsm|NEXT_STATE.RAND_594~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\ <= NOT \cir2|fsm|NEXT_STATE.CLEAR_PREV_404~combout\;
\cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\ <= NOT \cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\;
\cir2|dp|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:2:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s~q\;
\cir2|dp|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:3:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:3:FF|q_s~q\;
\cir2|dp|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:4:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:4:FF|q_s~q\;
\cir2|dp|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:5:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:5:FF|q_s~q\;
\cir2|dp|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:6:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:6:FF|q_s~q\;
\cir2|dp|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:7:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:7:FF|q_s~q\;
\cir1|ref|ALT_INV_Selector68~0_combout\ <= NOT \cir1|ref|Selector68~0_combout\;
\cir1|ref|ALT_INV_Selector69~0_combout\ <= NOT \cir1|ref|Selector69~0_combout\;
\cir1|ref|ALT_INV_Selector70~0_combout\ <= NOT \cir1|ref|Selector70~0_combout\;
\cir1|ref|ALT_INV_Selector71~0_combout\ <= NOT \cir1|ref|Selector71~0_combout\;
\cir1|ref|ALT_INV_Selector72~0_combout\ <= NOT \cir1|ref|Selector72~0_combout\;
\cir1|ref|ALT_INV_Selector73~0_combout\ <= NOT \cir1|ref|Selector73~0_combout\;
\cir1|ref|ALT_INV_Selector74~0_combout\ <= NOT \cir1|ref|Selector74~0_combout\;
\cir1|ref|ALT_INV_Selector75~0_combout\ <= NOT \cir1|ref|Selector75~0_combout\;
\cir1|ref|ALT_INV_Selector76~0_combout\ <= NOT \cir1|ref|Selector76~0_combout\;
\cir1|ref|ALT_INV_Selector77~0_combout\ <= NOT \cir1|ref|Selector77~0_combout\;
\cir1|ref|ALT_INV_Selector78~0_combout\ <= NOT \cir1|ref|Selector78~0_combout\;
\cir1|ref|ALT_INV_Selector79~0_combout\ <= NOT \cir1|ref|Selector79~0_combout\;
\cir1|ref|ALT_INV_Selector62~0_combout\ <= NOT \cir1|ref|Selector62~0_combout\;
\cir1|ref|ALT_INV_Selector63~0_combout\ <= NOT \cir1|ref|Selector63~0_combout\;
\cir1|ref|ALT_INV_Selector64~0_combout\ <= NOT \cir1|ref|Selector64~0_combout\;
\cir1|ref|ALT_INV_Selector65~0_combout\ <= NOT \cir1|ref|Selector65~0_combout\;
\cir1|ref|ALT_INV_Selector66~0_combout\ <= NOT \cir1|ref|Selector66~0_combout\;
\cir1|ref|ALT_INV_Selector67~0_combout\ <= NOT \cir1|ref|Selector67~0_combout\;
\cir1|ref|ALT_INV_Selector56~0_combout\ <= NOT \cir1|ref|Selector56~0_combout\;
\cir1|ref|ALT_INV_Selector57~0_combout\ <= NOT \cir1|ref|Selector57~0_combout\;
\cir1|ref|ALT_INV_Selector58~0_combout\ <= NOT \cir1|ref|Selector58~0_combout\;
\cir1|ref|ALT_INV_Selector59~0_combout\ <= NOT \cir1|ref|Selector59~0_combout\;
\cir1|ref|ALT_INV_Selector60~0_combout\ <= NOT \cir1|ref|Selector60~0_combout\;
\cir1|ref|ALT_INV_Selector61~0_combout\ <= NOT \cir1|ref|Selector61~0_combout\;
\cir1|ref|ALT_INV_Selector10~0_combout\ <= NOT \cir1|ref|Selector10~0_combout\;
\cir1|ref|ALT_INV_Selector6~0_combout\ <= NOT \cir1|ref|Selector6~0_combout\;
\cir1|ref|ALT_INV_Selector5~0_combout\ <= NOT \cir1|ref|Selector5~0_combout\;
\cir1|ref|ALT_INV_Selector0~0_combout\ <= NOT \cir1|ref|Selector0~0_combout\;
\cir1|ref|ALT_INV_Selector54~0_combout\ <= NOT \cir1|ref|Selector54~0_combout\;
\cir1|ref|ALT_INV_Selector55~0_combout\ <= NOT \cir1|ref|Selector55~0_combout\;
\cir1|ref|ALT_INV_Selector12~0_combout\ <= NOT \cir1|ref|Selector12~0_combout\;
\cir1|ref|ALT_INV_Selector11~0_combout\ <= NOT \cir1|ref|Selector11~0_combout\;
\cir1|ref|ALT_INV_Selector9~0_combout\ <= NOT \cir1|ref|Selector9~0_combout\;
\cir2|dp|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:8:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:8:FF|q_s~q\;
\cir1|ref|ALT_INV_Selector101~0_combout\ <= NOT \cir1|ref|Selector101~0_combout\;
\cir1|ref|ALT_INV_Selector102~0_combout\ <= NOT \cir1|ref|Selector102~0_combout\;
\cir1|ref|ALT_INV_Selector103~0_combout\ <= NOT \cir1|ref|Selector103~0_combout\;
\cir1|ref|ALT_INV_Selector104~0_combout\ <= NOT \cir1|ref|Selector104~0_combout\;
\cir1|ref|ALT_INV_Selector105~0_combout\ <= NOT \cir1|ref|Selector105~0_combout\;
\cir1|ref|ALT_INV_Selector106~0_combout\ <= NOT \cir1|ref|Selector106~0_combout\;
\cir1|ref|ALT_INV_Selector107~0_combout\ <= NOT \cir1|ref|Selector107~0_combout\;
\cir1|ref|ALT_INV_Selector108~0_combout\ <= NOT \cir1|ref|Selector108~0_combout\;
\cir1|ref|ALT_INV_Selector109~0_combout\ <= NOT \cir1|ref|Selector109~0_combout\;
\cir1|ref|ALT_INV_Selector110~0_combout\ <= NOT \cir1|ref|Selector110~0_combout\;
\cir1|ref|ALT_INV_Selector111~0_combout\ <= NOT \cir1|ref|Selector111~0_combout\;
\cir1|ref|ALT_INV_Selector112~0_combout\ <= NOT \cir1|ref|Selector112~0_combout\;
\cir1|ref|ALT_INV_Selector95~0_combout\ <= NOT \cir1|ref|Selector95~0_combout\;
\cir1|ref|ALT_INV_Selector96~0_combout\ <= NOT \cir1|ref|Selector96~0_combout\;
\cir1|ref|ALT_INV_Selector97~0_combout\ <= NOT \cir1|ref|Selector97~0_combout\;
\cir1|ref|ALT_INV_Selector98~0_combout\ <= NOT \cir1|ref|Selector98~0_combout\;
\cir1|ref|ALT_INV_Selector99~0_combout\ <= NOT \cir1|ref|Selector99~0_combout\;
\cir1|ref|ALT_INV_Selector100~0_combout\ <= NOT \cir1|ref|Selector100~0_combout\;
\cir1|ref|ALT_INV_Selector89~0_combout\ <= NOT \cir1|ref|Selector89~0_combout\;
\cir1|ref|ALT_INV_Selector90~0_combout\ <= NOT \cir1|ref|Selector90~0_combout\;
\cir1|ref|ALT_INV_Selector91~0_combout\ <= NOT \cir1|ref|Selector91~0_combout\;
\cir1|ref|ALT_INV_Selector92~0_combout\ <= NOT \cir1|ref|Selector92~0_combout\;
\cir1|ref|ALT_INV_Selector93~0_combout\ <= NOT \cir1|ref|Selector93~0_combout\;
\cir1|ref|ALT_INV_Selector94~0_combout\ <= NOT \cir1|ref|Selector94~0_combout\;
\cir1|ref|ALT_INV_Selector83~0_combout\ <= NOT \cir1|ref|Selector83~0_combout\;
\cir1|ref|ALT_INV_Selector84~0_combout\ <= NOT \cir1|ref|Selector84~0_combout\;
\cir1|ref|ALT_INV_Selector85~0_combout\ <= NOT \cir1|ref|Selector85~0_combout\;
\cir1|ref|ALT_INV_Selector86~0_combout\ <= NOT \cir1|ref|Selector86~0_combout\;
\cir1|ref|ALT_INV_Selector87~0_combout\ <= NOT \cir1|ref|Selector87~0_combout\;
\cir1|ref|ALT_INV_Selector88~0_combout\ <= NOT \cir1|ref|Selector88~0_combout\;
\cir1|ref|ALT_INV_Selector80~0_combout\ <= NOT \cir1|ref|Selector80~0_combout\;
\cir1|ref|ALT_INV_Selector82~0_combout\ <= NOT \cir1|ref|Selector82~0_combout\;
\cir1|ref|ALT_INV_stateD_reg.waitRdy0~q\ <= NOT \cir1|ref|stateD_reg.waitRdy0~q\;
\cir2|dp|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:9:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:9:FF|q_s~q\;
\cir1|ref|ALT_INV_stateG_reg.waitRdy0~q\ <= NOT \cir1|ref|stateG_reg.waitRdy0~q\;
\cir1|ref|ALT_INV_Equal1~6_combout\ <= NOT \cir1|ref|Equal1~6_combout\;
\cir1|ref|ALT_INV_Equal1~5_combout\ <= NOT \cir1|ref|Equal1~5_combout\;
\cir1|ref|ALT_INV_waitNDCount\(20) <= NOT \cir1|ref|waitNDCount\(20);
\cir1|ref|ALT_INV_waitNDCount\(21) <= NOT \cir1|ref|waitNDCount\(21);
\cir1|ref|ALT_INV_waitNDCount\(22) <= NOT \cir1|ref|waitNDCount\(22);
\cir1|ref|ALT_INV_waitNDCount\(23) <= NOT \cir1|ref|waitNDCount\(23);
\cir1|ref|ALT_INV_waitNDCount\(24) <= NOT \cir1|ref|waitNDCount\(24);
\cir1|ref|ALT_INV_waitNDCount\(25) <= NOT \cir1|ref|waitNDCount\(25);
\cir1|ref|ALT_INV_Equal1~4_combout\ <= NOT \cir1|ref|Equal1~4_combout\;
\cir1|ref|ALT_INV_waitNDCount\(26) <= NOT \cir1|ref|waitNDCount\(26);
\cir1|ref|ALT_INV_waitNDCount\(27) <= NOT \cir1|ref|waitNDCount\(27);
\cir1|ref|ALT_INV_waitNDCount\(28) <= NOT \cir1|ref|waitNDCount\(28);
\cir1|ref|ALT_INV_waitNDCount\(29) <= NOT \cir1|ref|waitNDCount\(29);
\cir1|ref|ALT_INV_waitNDCount\(30) <= NOT \cir1|ref|waitNDCount\(30);
\cir1|ref|ALT_INV_waitNDCount\(31) <= NOT \cir1|ref|waitNDCount\(31);
\cir1|ref|ALT_INV_Equal1~3_combout\ <= NOT \cir1|ref|Equal1~3_combout\;
\cir1|ref|ALT_INV_waitNDCount\(14) <= NOT \cir1|ref|waitNDCount\(14);
\cir1|ref|ALT_INV_waitNDCount\(15) <= NOT \cir1|ref|waitNDCount\(15);
\cir1|ref|ALT_INV_waitNDCount\(16) <= NOT \cir1|ref|waitNDCount\(16);
\cir1|ref|ALT_INV_waitNDCount\(17) <= NOT \cir1|ref|waitNDCount\(17);
\cir1|ref|ALT_INV_waitNDCount\(18) <= NOT \cir1|ref|waitNDCount\(18);
\cir1|ref|ALT_INV_waitNDCount\(19) <= NOT \cir1|ref|waitNDCount\(19);
\cir1|ref|ALT_INV_Equal1~2_combout\ <= NOT \cir1|ref|Equal1~2_combout\;
\cir1|ref|ALT_INV_waitNDCount\(8) <= NOT \cir1|ref|waitNDCount\(8);
\cir1|ref|ALT_INV_waitNDCount\(9) <= NOT \cir1|ref|waitNDCount\(9);
\cir1|ref|ALT_INV_waitNDCount\(10) <= NOT \cir1|ref|waitNDCount\(10);
\cir1|ref|ALT_INV_waitNDCount\(11) <= NOT \cir1|ref|waitNDCount\(11);
\cir1|ref|ALT_INV_waitNDCount\(12) <= NOT \cir1|ref|waitNDCount\(12);
\cir1|ref|ALT_INV_waitNDCount\(13) <= NOT \cir1|ref|waitNDCount\(13);
\cir1|ref|ALT_INV_Equal1~1_combout\ <= NOT \cir1|ref|Equal1~1_combout\;
\cir1|ref|ALT_INV_waitNDCount\(2) <= NOT \cir1|ref|waitNDCount\(2);
\cir1|ref|ALT_INV_waitNDCount\(3) <= NOT \cir1|ref|waitNDCount\(3);
\cir1|ref|ALT_INV_waitNDCount\(4) <= NOT \cir1|ref|waitNDCount\(4);
\cir1|ref|ALT_INV_waitNDCount\(5) <= NOT \cir1|ref|waitNDCount\(5);
\cir1|ref|ALT_INV_waitNDCount\(6) <= NOT \cir1|ref|waitNDCount\(6);
\cir1|ref|ALT_INV_waitNDCount\(7) <= NOT \cir1|ref|waitNDCount\(7);
\cir1|ref|ALT_INV_Equal1~0_combout\ <= NOT \cir1|ref|Equal1~0_combout\;
\cir1|ref|ALT_INV_waitNDCount\(0) <= NOT \cir1|ref|waitNDCount\(0);
\cir1|ref|ALT_INV_waitNDCount\(1) <= NOT \cir1|ref|waitNDCount\(1);
\cir1|ref|ALT_INV_stateD_reg.rdy0~q\ <= NOT \cir1|ref|stateD_reg.rdy0~q\;
\cir2|dp|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:10:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:10:FF|q_s~q\;
\cir1|ref|ALT_INV_Equal0~6_combout\ <= NOT \cir1|ref|Equal0~6_combout\;
\cir1|ref|ALT_INV_Equal0~5_combout\ <= NOT \cir1|ref|Equal0~5_combout\;
\cir1|ref|ALT_INV_waitNGCount\(20) <= NOT \cir1|ref|waitNGCount\(20);
\cir1|ref|ALT_INV_waitNGCount\(21) <= NOT \cir1|ref|waitNGCount\(21);
\cir1|ref|ALT_INV_waitNGCount\(22) <= NOT \cir1|ref|waitNGCount\(22);
\cir1|ref|ALT_INV_waitNGCount\(23) <= NOT \cir1|ref|waitNGCount\(23);
\cir1|ref|ALT_INV_waitNGCount\(24) <= NOT \cir1|ref|waitNGCount\(24);
\cir1|ref|ALT_INV_waitNGCount\(25) <= NOT \cir1|ref|waitNGCount\(25);
\cir1|ref|ALT_INV_Equal0~4_combout\ <= NOT \cir1|ref|Equal0~4_combout\;
\cir1|ref|ALT_INV_waitNGCount\(26) <= NOT \cir1|ref|waitNGCount\(26);
\cir1|ref|ALT_INV_waitNGCount\(27) <= NOT \cir1|ref|waitNGCount\(27);
\cir1|ref|ALT_INV_waitNGCount\(28) <= NOT \cir1|ref|waitNGCount\(28);
\cir1|ref|ALT_INV_waitNGCount\(29) <= NOT \cir1|ref|waitNGCount\(29);
\cir1|ref|ALT_INV_waitNGCount\(30) <= NOT \cir1|ref|waitNGCount\(30);
\cir1|ref|ALT_INV_waitNGCount\(31) <= NOT \cir1|ref|waitNGCount\(31);
\cir1|ref|ALT_INV_Equal0~3_combout\ <= NOT \cir1|ref|Equal0~3_combout\;
\cir1|ref|ALT_INV_waitNGCount\(14) <= NOT \cir1|ref|waitNGCount\(14);
\cir1|ref|ALT_INV_waitNGCount\(15) <= NOT \cir1|ref|waitNGCount\(15);
\cir1|ref|ALT_INV_waitNGCount\(16) <= NOT \cir1|ref|waitNGCount\(16);
\cir1|ref|ALT_INV_waitNGCount\(17) <= NOT \cir1|ref|waitNGCount\(17);
\cir1|ref|ALT_INV_waitNGCount\(18) <= NOT \cir1|ref|waitNGCount\(18);
\cir1|ref|ALT_INV_waitNGCount\(19) <= NOT \cir1|ref|waitNGCount\(19);
\cir1|ref|ALT_INV_Equal0~2_combout\ <= NOT \cir1|ref|Equal0~2_combout\;
\cir1|ref|ALT_INV_waitNGCount\(8) <= NOT \cir1|ref|waitNGCount\(8);
\cir1|ref|ALT_INV_waitNGCount\(9) <= NOT \cir1|ref|waitNGCount\(9);
\cir1|ref|ALT_INV_waitNGCount\(10) <= NOT \cir1|ref|waitNGCount\(10);
\cir1|ref|ALT_INV_waitNGCount\(11) <= NOT \cir1|ref|waitNGCount\(11);
\cir1|ref|ALT_INV_waitNGCount\(12) <= NOT \cir1|ref|waitNGCount\(12);
\cir1|ref|ALT_INV_waitNGCount\(13) <= NOT \cir1|ref|waitNGCount\(13);
\cir1|ref|ALT_INV_Equal0~1_combout\ <= NOT \cir1|ref|Equal0~1_combout\;
\cir1|ref|ALT_INV_waitNGCount\(2) <= NOT \cir1|ref|waitNGCount\(2);
\cir1|ref|ALT_INV_waitNGCount\(3) <= NOT \cir1|ref|waitNGCount\(3);
\cir1|ref|ALT_INV_waitNGCount\(4) <= NOT \cir1|ref|waitNGCount\(4);
\cir1|ref|ALT_INV_waitNGCount\(5) <= NOT \cir1|ref|waitNGCount\(5);
\cir1|ref|ALT_INV_waitNGCount\(6) <= NOT \cir1|ref|waitNGCount\(6);
\cir1|ref|ALT_INV_waitNGCount\(7) <= NOT \cir1|ref|waitNGCount\(7);
\cir1|ref|ALT_INV_Equal0~0_combout\ <= NOT \cir1|ref|Equal0~0_combout\;
\cir1|ref|ALT_INV_waitNGCount\(0) <= NOT \cir1|ref|waitNGCount\(0);
\cir1|ref|ALT_INV_waitNGCount\(1) <= NOT \cir1|ref|waitNGCount\(1);
\cir1|ref|ALT_INV_stateG_reg.rdy0~q\ <= NOT \cir1|ref|stateG_reg.rdy0~q\;
\cir2|fsm|ALT_INV_Selector8~0_combout\ <= NOT \cir2|fsm|Selector8~0_combout\;
\cir1|ref|ALT_INV_Selector52~0_combout\ <= NOT \cir1|ref|Selector52~0_combout\;
\cir1|ref|ALT_INV_Selector19~0_combout\ <= NOT \cir1|ref|Selector19~0_combout\;
\cir1|ref|ALT_INV_Selector48~0_combout\ <= NOT \cir1|ref|Selector48~0_combout\;
\cir1|ref|ALT_INV_mainCnt[5]~1_combout\ <= NOT \cir1|ref|mainCnt[5]~1_combout\;
\cir1|ref|ALT_INV_tick_disc~combout\ <= NOT \cir1|ref|tick_disc~combout\;
\cir1|ref|ALT_INV_stateD_reg.waitNClk~q\ <= NOT \cir1|ref|stateD_reg.waitNClk~q\;
\cir1|ref|ALT_INV_stateD_reg.rdy1~q\ <= NOT \cir1|ref|stateD_reg.rdy1~q\;
\cir1|ref|ALT_INV_state_reg.idle~q\ <= NOT \cir1|ref|state_reg.idle~q\;
\cir1|ref|ALT_INV_Selector22~0_combout\ <= NOT \cir1|ref|Selector22~0_combout\;
\cir1|ref|ALT_INV_mainCnt[5]~0_combout\ <= NOT \cir1|ref|mainCnt[5]~0_combout\;
\cir2|fsm|ALT_INV_Selector0~0_combout\ <= NOT \cir2|fsm|Selector0~0_combout\;
\cir1|hold2|ALT_INV_state_next~1_combout\ <= NOT \cir1|hold2|state_next~1_combout\;
\cir1|hold2|ALT_INV_state_next~0_combout\ <= NOT \cir1|hold2|state_next~0_combout\;
\cir2|fsm|ALT_INV_Selector7~0_combout\ <= NOT \cir2|fsm|Selector7~0_combout\;
\cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\;
\cir2|fsm|ALT_INV_Selector10~0_combout\ <= NOT \cir2|fsm|Selector10~0_combout\;
\cir2|fsm|ALT_INV_Selector5~0_combout\ <= NOT \cir2|fsm|Selector5~0_combout\;
\cir1|ref|ALT_INV_state_reg.wait50l~q\ <= NOT \cir1|ref|state_reg.wait50l~q\;
\cir1|ref|ALT_INV_state_reg.wait55~q\ <= NOT \cir1|ref|state_reg.wait55~q\;
\cir1|guru|base|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\ <= NOT \cir1|guru|base|data|alu_1|add|adder_6|aux_and_3~combout\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[7]~9_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[7]~9_combout\;
\cir1|ref|ALT_INV_state_reg.wait50~q\ <= NOT \cir1|ref|state_reg.wait50~q\;
\cir1|ref|ALT_INV_tick_guru~combout\ <= NOT \cir1|ref|tick_guru~combout\;
\cir1|ref|ALT_INV_stateG_reg.waitNClk~q\ <= NOT \cir1|ref|stateG_reg.waitNClk~q\;
\cir1|ref|ALT_INV_stateG_reg.rdy1~q\ <= NOT \cir1|ref|stateG_reg.rdy1~q\;
\cir1|hold|ALT_INV_state_next~1_combout\ <= NOT \cir1|hold|state_next~1_combout\;
\cir1|hold|ALT_INV_state_next~0_combout\ <= NOT \cir1|hold|state_next~0_combout\;
\cir2|fsm|ALT_INV_Selector12~1_combout\ <= NOT \cir2|fsm|Selector12~1_combout\;
\cir2|fsm|ALT_INV_Selector12~0_combout\ <= NOT \cir2|fsm|Selector12~0_combout\;
\cir2|fsm|ALT_INV_Selector17~0_combout\ <= NOT \cir2|fsm|Selector17~0_combout\;
\cir1|ref|ALT_INV_Selector17~0_combout\ <= NOT \cir1|ref|Selector17~0_combout\;
\cir1|ref|ALT_INV_state_reg.wait50b~q\ <= NOT \cir1|ref|state_reg.wait50b~q\;
\cir1|ref|ALT_INV_LessThan0~5_combout\ <= NOT \cir1|ref|LessThan0~5_combout\;
\cir1|ref|ALT_INV_LessThan0~4_combout\ <= NOT \cir1|ref|LessThan0~4_combout\;
\cir1|ref|ALT_INV_mainCnt\(19) <= NOT \cir1|ref|mainCnt\(19);
\cir1|ref|ALT_INV_mainCnt\(20) <= NOT \cir1|ref|mainCnt\(20);
\cir1|ref|ALT_INV_mainCnt\(21) <= NOT \cir1|ref|mainCnt\(21);
\cir1|ref|ALT_INV_mainCnt\(22) <= NOT \cir1|ref|mainCnt\(22);
\cir1|ref|ALT_INV_mainCnt\(23) <= NOT \cir1|ref|mainCnt\(23);
\cir1|ref|ALT_INV_mainCnt\(24) <= NOT \cir1|ref|mainCnt\(24);
\cir1|ref|ALT_INV_LessThan0~3_combout\ <= NOT \cir1|ref|LessThan0~3_combout\;
\cir1|ref|ALT_INV_mainCnt\(25) <= NOT \cir1|ref|mainCnt\(25);
\cir1|ref|ALT_INV_mainCnt\(26) <= NOT \cir1|ref|mainCnt\(26);
\cir1|ref|ALT_INV_mainCnt\(27) <= NOT \cir1|ref|mainCnt\(27);
\cir1|ref|ALT_INV_mainCnt\(28) <= NOT \cir1|ref|mainCnt\(28);
\cir1|ref|ALT_INV_mainCnt\(29) <= NOT \cir1|ref|mainCnt\(29);
\cir1|ref|ALT_INV_mainCnt\(30) <= NOT \cir1|ref|mainCnt\(30);
\cir1|ref|ALT_INV_LessThan0~2_combout\ <= NOT \cir1|ref|LessThan0~2_combout\;
\cir1|ref|ALT_INV_mainCnt\(13) <= NOT \cir1|ref|mainCnt\(13);
\cir1|ref|ALT_INV_mainCnt\(14) <= NOT \cir1|ref|mainCnt\(14);
\cir1|ref|ALT_INV_mainCnt\(15) <= NOT \cir1|ref|mainCnt\(15);
\cir1|ref|ALT_INV_mainCnt\(16) <= NOT \cir1|ref|mainCnt\(16);
\cir1|ref|ALT_INV_mainCnt\(17) <= NOT \cir1|ref|mainCnt\(17);
\cir1|ref|ALT_INV_mainCnt\(18) <= NOT \cir1|ref|mainCnt\(18);
\cir1|ref|ALT_INV_LessThan0~1_combout\ <= NOT \cir1|ref|LessThan0~1_combout\;
\cir1|ref|ALT_INV_mainCnt\(7) <= NOT \cir1|ref|mainCnt\(7);
\cir1|ref|ALT_INV_mainCnt\(8) <= NOT \cir1|ref|mainCnt\(8);
\cir1|ref|ALT_INV_mainCnt\(9) <= NOT \cir1|ref|mainCnt\(9);
\cir1|ref|ALT_INV_mainCnt\(10) <= NOT \cir1|ref|mainCnt\(10);
\cir1|ref|ALT_INV_mainCnt\(11) <= NOT \cir1|ref|mainCnt\(11);
\cir1|ref|ALT_INV_mainCnt\(12) <= NOT \cir1|ref|mainCnt\(12);
\cir1|ref|ALT_INV_LessThan0~0_combout\ <= NOT \cir1|ref|LessThan0~0_combout\;
\cir1|ref|ALT_INV_mainCnt\(1) <= NOT \cir1|ref|mainCnt\(1);
\cir1|ref|ALT_INV_mainCnt\(2) <= NOT \cir1|ref|mainCnt\(2);
\cir1|ref|ALT_INV_mainCnt\(3) <= NOT \cir1|ref|mainCnt\(3);
\cir1|ref|ALT_INV_mainCnt\(4) <= NOT \cir1|ref|mainCnt\(4);
\cir1|ref|ALT_INV_mainCnt\(5) <= NOT \cir1|ref|mainCnt\(5);
\cir1|ref|ALT_INV_mainCnt\(6) <= NOT \cir1|ref|mainCnt\(6);
\cir1|ref|ALT_INV_mainCnt\(0) <= NOT \cir1|ref|mainCnt\(0);
\cir1|ref|ALT_INV_mainCnt\(31) <= NOT \cir1|ref|mainCnt\(31);
\cir1|ref|ALT_INV_Equal5~2_combout\ <= NOT \cir1|ref|Equal5~2_combout\;
\cir1|ref|ALT_INV_Equal5~1_combout\ <= NOT \cir1|ref|Equal5~1_combout\;
\cir1|ref|ALT_INV_Equal5~0_combout\ <= NOT \cir1|ref|Equal5~0_combout\;
\cir1|ref|ALT_INV_Equal2~12_combout\ <= NOT \cir1|ref|Equal2~12_combout\;
\cir1|ref|ALT_INV_Equal2~11_combout\ <= NOT \cir1|ref|Equal2~11_combout\;
\cir1|ref|ALT_INV_Equal2~10_combout\ <= NOT \cir1|ref|Equal2~10_combout\;
\cir1|ref|ALT_INV_Equal2~9_combout\ <= NOT \cir1|ref|Equal2~9_combout\;
\cir1|ref|ALT_INV_Equal2~8_combout\ <= NOT \cir1|ref|Equal2~8_combout\;
\cir1|ALT_INV_disc_prev_s[0]~0_combout\ <= NOT \cir1|disc_prev_s[0]~0_combout\;
\cir1|ref|ALT_INV_Equal2~7_combout\ <= NOT \cir1|ref|Equal2~7_combout\;
\cir1|ref|ALT_INV_Equal2~6_combout\ <= NOT \cir1|ref|Equal2~6_combout\;
\cir2|fsm|ALT_INV_Selector11~0_combout\ <= NOT \cir2|fsm|Selector11~0_combout\;
\cir1|guru|step|ALT_INV_cnt_disc_rdy~1_combout\ <= NOT \cir1|guru|step|cnt_disc_rdy~1_combout\;
\cir2|fsm|ALT_INV_Selector16~0_combout\ <= NOT \cir2|fsm|Selector16~0_combout\;
\cir2|dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:1:FF|q_s~q\;
\cir2|dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\ <= NOT \cir2|dp|n_g|LFSR|g1:0:FF|q_s~q\;
\cir1|guru|base|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\ <= NOT \cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\;
\cir1|guru|base|data|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\;
\cir1|guru|base|data|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\ <= NOT \cir1|guru|base|data|n_g|LFSR|g1:0:FF|q_s~q\;
\cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~2_combout\ <= NOT \cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\;
\cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\ <= NOT \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\;
\cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~1_combout\ <= NOT \cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\;
\cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\ <= NOT \cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR~q\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[6]~8_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[6]~8_combout\;
\cir1|ref|ALT_INV_go_guru~combout\ <= NOT \cir1|ref|go_guru~combout\;
\cir1|ref|ALT_INV_state_reg.unm_go_guru~q\ <= NOT \cir1|ref|state_reg.unm_go_guru~q\;
\cir1|ref|ALT_INV_state_reg.go_guru_state~q\ <= NOT \cir1|ref|state_reg.go_guru_state~q\;
\cir1|guru|base|control|guru|ALT_INV_STATE.INCR~q\ <= NOT \cir1|guru|base|control|guru|STATE.INCR~q\;
\cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\ <= NOT \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\;
\cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~0_combout\ <= NOT \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\;
\cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\ <= NOT \cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\;
\cir1|guru|base|control|init|ALT_INV_STATE.ZERO~q\ <= NOT \cir1|guru|base|control|init|STATE.ZERO~q\;
\cir1|guru|base|control|guru|ALT_INV_STATE.RAND~q\ <= NOT \cir1|guru|base|control|guru|STATE.RAND~q\;
\cir1|ref|ALT_INV_state_reg.checkMiddle~q\ <= NOT \cir1|ref|state_reg.checkMiddle~q\;
\cir1|ref|ALT_INV_Equal3~2_combout\ <= NOT \cir1|ref|Equal3~2_combout\;
\cir1|ref|ALT_INV_Equal3~1_combout\ <= NOT \cir1|ref|Equal3~1_combout\;
\cir1|ref|ALT_INV_Equal3~0_combout\ <= NOT \cir1|ref|Equal3~0_combout\;
\cir1|ref|ALT_INV_Equal2~5_combout\ <= NOT \cir1|ref|Equal2~5_combout\;
\cir1|ref|ALT_INV_Equal2~4_combout\ <= NOT \cir1|ref|Equal2~4_combout\;
\cir1|ref|ALT_INV_Equal2~3_combout\ <= NOT \cir1|ref|Equal2~3_combout\;
\cir1|ref|ALT_INV_Equal2~2_combout\ <= NOT \cir1|ref|Equal2~2_combout\;
\cir1|ref|ALT_INV_Equal2~1_combout\ <= NOT \cir1|ref|Equal2~1_combout\;
\cir1|ref|ALT_INV_state_reg.checkTop~q\ <= NOT \cir1|ref|state_reg.checkTop~q\;
\cir2|fsm|ALT_INV_NEXT_STATE~0_combout\ <= NOT \cir2|fsm|NEXT_STATE~0_combout\;
\cir2|fsm|ALT_INV_STATE.WRITE_DISC~q\ <= NOT \cir2|fsm|STATE.WRITE_DISC~q\;
\cir2|fsm|ALT_INV_Selector18~0_combout\ <= NOT \cir2|fsm|Selector18~0_combout\;
\cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\ <= NOT \cir1|ref|state_reg.unm_godisc_BL~q\;
\cir1|ref|ALT_INV_state_reg.unm_go_discB~q\ <= NOT \cir1|ref|state_reg.unm_go_discB~q\;
\cir2|fsm|ALT_INV_Selector2~0_combout\ <= NOT \cir2|fsm|Selector2~0_combout\;
\cir2|fsm|ALT_INV_STATE.CHECK_BEHIND~q\ <= NOT \cir2|fsm|STATE.CHECK_BEHIND~q\;
\cir1|hold2|ALT_INV_holdedOut~combout\ <= NOT \cir1|hold2|holdedOut~combout\;
\cir1|ref|ALT_INV_state_reg.detect~q\ <= NOT \cir1|ref|state_reg.detect~q\;
\cir1|ref|ALT_INV_state_reg.detect1~q\ <= NOT \cir1|ref|state_reg.detect1~q\;
\cir1|hold2|ALT_INV_state_reg~q\ <= NOT \cir1|hold2|state_reg~q\;
\cir1|guru|base|control|main|ALT_INV_Selector1~1_combout\ <= NOT \cir1|guru|base|control|main|Selector1~1_combout\;
\cir1|guru|base|control|main|ALT_INV_Selector1~0_combout\ <= NOT \cir1|guru|base|control|main|Selector1~0_combout\;
\cir1|guru|base|control|main|ALT_INV_STATE.HIT_POINT~q\ <= NOT \cir1|guru|base|control|main|STATE.HIT_POINT~q\;
\cir2|fsm|ALT_INV_STATE.WRITE_DUO~q\ <= NOT \cir2|fsm|STATE.WRITE_DUO~q\;
\cir2|dp|rb|ALT_INV_rb_out~6_combout\ <= NOT \cir2|dp|rb|rb_out~6_combout\;
\cir2|dp|rb|ALT_INV_rb_out~5_combout\ <= NOT \cir2|dp|rb|rb_out~5_combout\;
\cir2|dp|rb|reg_GURU|ALT_INV_q_s\(2) <= NOT \cir2|dp|rb|reg_GURU|q_s\(2);
\cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(2) <= NOT \cir2|dp|rb|reg_PRE_GURU|q_s\(2);
\cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1) <= NOT \cir2|dp|rb|reg_PRE_GURU|q_s\(1);
\cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0) <= NOT \cir2|dp|rb|reg_PRE_GURU|q_s\(0);
\cir2|fsm|ALT_INV_WideOr7~0_combout\ <= NOT \cir2|fsm|WideOr7~0_combout\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[5]~7_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[5]~7_combout\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[4]~6_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[4]~6_combout\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[3]~5_combout\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[2]~4_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[2]~4_combout\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[1]~3_combout\;
\cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\ <= NOT \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\;
\cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\ <= NOT \cir1|guru|base|control|guru|STATE.START_WALKING~q\;
\cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\ <= NOT \cir1|guru|base|data|rb|rb_out[0]~2_combout\;
\cir2|fsm|ALT_INV_STATE.CHECK_LAST~q\ <= NOT \cir2|fsm|STATE.CHECK_LAST~q\;
\cir2|fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\ <= NOT \cir2|fsm|STATE.CHECK_SAME_ADDR~q\;
\cir1|guru|base|control|guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\ <= NOT \cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\;
\cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_GURU~q\ <= NOT \cir1|guru|base|control|guru|STATE.WRITE_GURU~q\;
\cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_DUO~q\ <= NOT \cir1|guru|base|control|guru|STATE.WRITE_DUO~q\;
\cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\ <= NOT \cir1|guru|base|control|guru|STATE.WRITE_RAND~q\;
\cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\ <= NOT \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\;
\cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\ <= NOT \cir1|guru|base|control|init|STATE.IDLE~q\;
\cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\ <= NOT \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\;
\cir1|guru|base|control|init|ALT_INV_STATE.DONE~q\ <= NOT \cir1|guru|base|control|init|STATE.DONE~q\;
\cir1|guru|step|ALT_INV_process_0~2_combout\ <= NOT \cir1|guru|step|process_0~2_combout\;
\cir1|guru|step|ALT_INV_cnt_v4_s~0_combout\ <= NOT \cir1|guru|step|cnt_v4_s~0_combout\;
\cir1|guru|button|ALT_INV_Mux0~0_combout\ <= NOT \cir1|guru|button|Mux0~0_combout\;
\cir1|guru|step|ALT_INV_Equal0~2_combout\ <= NOT \cir1|guru|step|Equal0~2_combout\;
\cir1|guru|step|ALT_INV_Equal1~1_combout\ <= NOT \cir1|guru|step|Equal1~1_combout\;
\cir1|guru|step|ALT_INV_cnt_v1_s~0_combout\ <= NOT \cir1|guru|step|cnt_v1_s~0_combout\;
\cir1|guru|step|ALT_INV_process_0~1_combout\ <= NOT \cir1|guru|step|process_0~1_combout\;
\cir1|guru|step|ALT_INV_process_0~0_combout\ <= NOT \cir1|guru|step|process_0~0_combout\;
\cir1|guru|step|ALT_INV_Equal1~0_combout\ <= NOT \cir1|guru|step|Equal1~0_combout\;
\cir1|guru|step|ALT_INV_Equal0~1_combout\ <= NOT \cir1|guru|step|Equal0~1_combout\;
\cir1|guru|step|ALT_INV_Equal0~0_combout\ <= NOT \cir1|guru|step|Equal0~0_combout\;
\cir1|guru|step|ALT_INV_cnt_s\(0) <= NOT \cir1|guru|step|cnt_s\(0);
\cir1|guru|base|control|main|ALT_INV_Selector0~2_combout\ <= NOT \cir1|guru|base|control|main|Selector0~2_combout\;
\cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\ <= NOT \cir1|guru|base|control|guru|STATE.LAST~q\;
\cir1|guru|base|control|main|ALT_INV_Selector0~1_combout\ <= NOT \cir1|guru|base|control|main|Selector0~1_combout\;
\cir1|ref|ALT_INV_state_reg.conflict~q\ <= NOT \cir1|ref|state_reg.conflict~q\;
\cir1|ref|ALT_INV_state_reg.conflict1~q\ <= NOT \cir1|ref|state_reg.conflict1~q\;
\cir1|hold|ALT_INV_state_reg~q\ <= NOT \cir1|hold|state_reg~q\;
\cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~6_combout\ <= NOT \cir1|guru|base|control|cnt_strat|Equal0~6_combout\;
\cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~5_combout\ <= NOT \cir1|guru|base|control|cnt_strat|Equal0~5_combout\;
\cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~4_combout\ <= NOT \cir1|guru|base|control|cnt_strat|Equal0~4_combout\;
\cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~3_combout\ <= NOT \cir1|guru|base|control|cnt_strat|Equal0~3_combout\;
\cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~2_combout\ <= NOT \cir1|guru|base|control|cnt_strat|Equal0~2_combout\;
\cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~1_combout\ <= NOT \cir1|guru|base|control|cnt_strat|Equal0~1_combout\;
\cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~0_combout\ <= NOT \cir1|guru|base|control|cnt_strat|Equal0~0_combout\;
\cir1|guru|base|control|main|ALT_INV_Selector0~0_combout\ <= NOT \cir1|guru|base|control|main|Selector0~0_combout\;
\cir2|fsm|ALT_INV_WideOr6~combout\ <= NOT \cir2|fsm|WideOr6~combout\;
\cir2|fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\ <= NOT \cir2|fsm|STATE.WAIT_COUNT_DISC~q\;
\cir2|fsm|ALT_INV_STATE.IDLE~q\ <= NOT \cir2|fsm|STATE.IDLE~q\;
\cir2|fsm|ALT_INV_STATE.WRITE_RAND~q\ <= NOT \cir2|fsm|STATE.WRITE_RAND~q\;
\cir2|dp|rb|ALT_INV_rb_out~1_combout\ <= NOT \cir2|dp|rb|rb_out~1_combout\;
\cir2|dp|rb|reg_GURU|ALT_INV_q_s\(5) <= NOT \cir2|dp|rb|reg_GURU|q_s\(5);
\cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(5) <= NOT \cir2|dp|rb|reg_PRE_GURU|q_s\(5);
\cir2|dp|alu_1|add|adder_5|ALT_INV_c_out~0_combout\ <= NOT \cir2|dp|alu_1|add|adder_5|c_out~0_combout\;
\cir2|dp|rb|reg_GURU|ALT_INV_q_s\(4) <= NOT \cir2|dp|rb|reg_GURU|q_s\(4);
\cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(4) <= NOT \cir2|dp|rb|reg_PRE_GURU|q_s\(4);
\cir2|dp|rb|reg_GURU|ALT_INV_q_s\(3) <= NOT \cir2|dp|rb|reg_GURU|q_s\(3);
\cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3) <= NOT \cir2|dp|rb|reg_PRE_GURU|q_s\(3);
\cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ <= NOT \cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\;
\cir2|dp|rb|ALT_INV_rb_out~0_combout\ <= NOT \cir2|dp|rb|rb_out~0_combout\;
\cir2|fsm|ALT_INV_STATE.INCR~q\ <= NOT \cir2|fsm|STATE.INCR~q\;
\cir2|fsm|ALT_INV_STATE.RAND~q\ <= NOT \cir2|fsm|STATE.RAND~q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~6_combout\ <= NOT \cir1|guru|base|control|cnt_prep|Equal0~6_combout\;
\cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~5_combout\ <= NOT \cir1|guru|base|control|cnt_prep|Equal0~5_combout\;
\cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~4_combout\ <= NOT \cir1|guru|base|control|cnt_prep|Equal0~4_combout\;
\cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~3_combout\ <= NOT \cir1|guru|base|control|cnt_prep|Equal0~3_combout\;
\cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~2_combout\ <= NOT \cir1|guru|base|control|cnt_prep|Equal0~2_combout\;
\cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~1_combout\ <= NOT \cir1|guru|base|control|cnt_prep|Equal0~1_combout\;
\cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~0_combout\ <= NOT \cir1|guru|base|control|cnt_prep|Equal0~0_combout\;
\cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\ <= NOT \cir1|guru|step|cnt_disc_rdy~0_combout\;
\cir1|guru|step|ALT_INV_cnt_v8_s~q\ <= NOT \cir1|guru|step|cnt_v8_s~q\;
\cir1|guru|step|ALT_INV_cnt_v4_s~q\ <= NOT \cir1|guru|step|cnt_v4_s~q\;
\cir1|guru|step|ALT_INV_cnt_v2_s~q\ <= NOT \cir1|guru|step|cnt_v2_s~q\;
\cir1|guru|button|ALT_INV_speed_sync_s.ONE_X~q\ <= NOT \cir1|guru|button|speed_sync_s.ONE_X~q\;
\cir1|guru|step|ALT_INV_cnt_v1_s~q\ <= NOT \cir1|guru|step|cnt_v1_s~q\;
\cir1|hold3|ALT_INV_holdedOut~0_combout\ <= NOT \cir1|hold3|holdedOut~0_combout\;
\cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6) <= NOT \cir2|dp|rb|reg_GURU|q_s\(6);
\cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\ <= NOT \cir2|fsm|STATE.CLEAR_PREV~q\;
\cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\ <= NOT \cir2|fsm|STATE.CLEAR_BEHIND~q\;
\cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(6) <= NOT \cir2|dp|rb|reg_PRE_GURU|q_s\(6);
\cir1|hold3|ALT_INV_state_reg~q\ <= NOT \cir1|hold3|state_reg~q\;
\cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\ <= NOT \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\;
\cir1|ref|ALT_INV_Selector47~0_combout\ <= NOT \cir1|ref|Selector47~0_combout\;
\cir1|ref|ALT_INV_Selector51~0_combout\ <= NOT \cir1|ref|Selector51~0_combout\;
\cir1|ref|ALT_INV_Add1~125_sumout\ <= NOT \cir1|ref|Add1~125_sumout\;
\cir1|ref|ALT_INV_Add1~121_sumout\ <= NOT \cir1|ref|Add1~121_sumout\;
\cir1|ref|ALT_INV_Add1~117_sumout\ <= NOT \cir1|ref|Add1~117_sumout\;
\cir1|ref|ALT_INV_Add1~113_sumout\ <= NOT \cir1|ref|Add1~113_sumout\;
\cir1|ref|ALT_INV_Add1~109_sumout\ <= NOT \cir1|ref|Add1~109_sumout\;
\cir1|ref|ALT_INV_Add1~105_sumout\ <= NOT \cir1|ref|Add1~105_sumout\;
\cir1|ref|ALT_INV_Add1~101_sumout\ <= NOT \cir1|ref|Add1~101_sumout\;
\cir1|ref|ALT_INV_Add1~97_sumout\ <= NOT \cir1|ref|Add1~97_sumout\;
\cir1|ref|ALT_INV_Add1~93_sumout\ <= NOT \cir1|ref|Add1~93_sumout\;
\cir1|ref|ALT_INV_Add1~89_sumout\ <= NOT \cir1|ref|Add1~89_sumout\;
\cir1|ref|ALT_INV_Add1~85_sumout\ <= NOT \cir1|ref|Add1~85_sumout\;
\cir1|ref|ALT_INV_Add1~81_sumout\ <= NOT \cir1|ref|Add1~81_sumout\;
\cir1|ref|ALT_INV_Add1~77_sumout\ <= NOT \cir1|ref|Add1~77_sumout\;
\cir1|ref|ALT_INV_Add1~73_sumout\ <= NOT \cir1|ref|Add1~73_sumout\;
\cir1|ref|ALT_INV_Add1~69_sumout\ <= NOT \cir1|ref|Add1~69_sumout\;
\cir1|ref|ALT_INV_Add1~65_sumout\ <= NOT \cir1|ref|Add1~65_sumout\;
\cir1|ref|ALT_INV_Add1~61_sumout\ <= NOT \cir1|ref|Add1~61_sumout\;
\cir1|ref|ALT_INV_Add1~57_sumout\ <= NOT \cir1|ref|Add1~57_sumout\;
\cir1|ref|ALT_INV_Add1~53_sumout\ <= NOT \cir1|ref|Add1~53_sumout\;
\cir1|ref|ALT_INV_Add1~49_sumout\ <= NOT \cir1|ref|Add1~49_sumout\;
\cir1|ref|ALT_INV_Add1~45_sumout\ <= NOT \cir1|ref|Add1~45_sumout\;
\cir1|ref|ALT_INV_Add1~41_sumout\ <= NOT \cir1|ref|Add1~41_sumout\;
\cir1|ref|ALT_INV_Add1~37_sumout\ <= NOT \cir1|ref|Add1~37_sumout\;
\cir1|ref|ALT_INV_Add1~33_sumout\ <= NOT \cir1|ref|Add1~33_sumout\;
\cir1|ref|ALT_INV_Add1~29_sumout\ <= NOT \cir1|ref|Add1~29_sumout\;
\cir1|ref|ALT_INV_Add1~25_sumout\ <= NOT \cir1|ref|Add1~25_sumout\;
\cir1|ref|ALT_INV_Add1~21_sumout\ <= NOT \cir1|ref|Add1~21_sumout\;
\cir1|ref|ALT_INV_Add1~17_sumout\ <= NOT \cir1|ref|Add1~17_sumout\;
\cir1|ref|ALT_INV_Add1~13_sumout\ <= NOT \cir1|ref|Add1~13_sumout\;
\cir1|ref|ALT_INV_Add1~9_sumout\ <= NOT \cir1|ref|Add1~9_sumout\;
\cir1|ref|ALT_INV_Add1~5_sumout\ <= NOT \cir1|ref|Add1~5_sumout\;
\cir1|ref|ALT_INV_Add1~1_sumout\ <= NOT \cir1|ref|Add1~1_sumout\;
\cir1|ref|ALT_INV_Add0~125_sumout\ <= NOT \cir1|ref|Add0~125_sumout\;
\cir1|ref|ALT_INV_Add0~121_sumout\ <= NOT \cir1|ref|Add0~121_sumout\;
\cir1|ref|ALT_INV_Add0~117_sumout\ <= NOT \cir1|ref|Add0~117_sumout\;
\cir1|ref|ALT_INV_Add0~113_sumout\ <= NOT \cir1|ref|Add0~113_sumout\;
\cir1|ref|ALT_INV_Add0~109_sumout\ <= NOT \cir1|ref|Add0~109_sumout\;
\cir1|ref|ALT_INV_Add0~105_sumout\ <= NOT \cir1|ref|Add0~105_sumout\;
\cir1|ref|ALT_INV_Add0~101_sumout\ <= NOT \cir1|ref|Add0~101_sumout\;
\cir1|ref|ALT_INV_Add0~97_sumout\ <= NOT \cir1|ref|Add0~97_sumout\;
\cir1|ref|ALT_INV_Add0~93_sumout\ <= NOT \cir1|ref|Add0~93_sumout\;
\cir1|ref|ALT_INV_Add0~89_sumout\ <= NOT \cir1|ref|Add0~89_sumout\;
\cir1|ref|ALT_INV_Add0~85_sumout\ <= NOT \cir1|ref|Add0~85_sumout\;
\cir1|ref|ALT_INV_Add0~81_sumout\ <= NOT \cir1|ref|Add0~81_sumout\;
\cir1|ref|ALT_INV_Add0~77_sumout\ <= NOT \cir1|ref|Add0~77_sumout\;
\cir1|ref|ALT_INV_Add0~73_sumout\ <= NOT \cir1|ref|Add0~73_sumout\;
\cir1|ref|ALT_INV_Add0~69_sumout\ <= NOT \cir1|ref|Add0~69_sumout\;
\cir1|ref|ALT_INV_Add0~65_sumout\ <= NOT \cir1|ref|Add0~65_sumout\;
\cir1|ref|ALT_INV_Add0~61_sumout\ <= NOT \cir1|ref|Add0~61_sumout\;
\cir1|ref|ALT_INV_Add0~57_sumout\ <= NOT \cir1|ref|Add0~57_sumout\;
\cir1|ref|ALT_INV_Add0~53_sumout\ <= NOT \cir1|ref|Add0~53_sumout\;
\cir1|ref|ALT_INV_Add0~49_sumout\ <= NOT \cir1|ref|Add0~49_sumout\;
\cir1|ref|ALT_INV_Add0~45_sumout\ <= NOT \cir1|ref|Add0~45_sumout\;
\cir1|ref|ALT_INV_Add0~41_sumout\ <= NOT \cir1|ref|Add0~41_sumout\;
\cir1|ref|ALT_INV_Add0~37_sumout\ <= NOT \cir1|ref|Add0~37_sumout\;
\cir1|ref|ALT_INV_Add0~33_sumout\ <= NOT \cir1|ref|Add0~33_sumout\;
\cir1|ref|ALT_INV_Add0~29_sumout\ <= NOT \cir1|ref|Add0~29_sumout\;
\cir1|ref|ALT_INV_Add0~25_sumout\ <= NOT \cir1|ref|Add0~25_sumout\;
\cir1|ref|ALT_INV_Add0~21_sumout\ <= NOT \cir1|ref|Add0~21_sumout\;
\cir1|ref|ALT_INV_Add0~17_sumout\ <= NOT \cir1|ref|Add0~17_sumout\;
\cir1|ref|ALT_INV_Add0~13_sumout\ <= NOT \cir1|ref|Add0~13_sumout\;
\cir1|ref|ALT_INV_Add0~9_sumout\ <= NOT \cir1|ref|Add0~9_sumout\;
\cir1|ref|ALT_INV_Add0~5_sumout\ <= NOT \cir1|ref|Add0~5_sumout\;
\cir1|ref|ALT_INV_Add0~1_sumout\ <= NOT \cir1|ref|Add0~1_sumout\;
\cir1|ref|ALT_INV_Add2~125_sumout\ <= NOT \cir1|ref|Add2~125_sumout\;
\cir1|ref|ALT_INV_Add2~121_sumout\ <= NOT \cir1|ref|Add2~121_sumout\;
\cir1|ref|ALT_INV_Add2~117_sumout\ <= NOT \cir1|ref|Add2~117_sumout\;
\cir1|ref|ALT_INV_Add2~113_sumout\ <= NOT \cir1|ref|Add2~113_sumout\;
\cir1|ref|ALT_INV_Add2~109_sumout\ <= NOT \cir1|ref|Add2~109_sumout\;
\cir1|ref|ALT_INV_Add2~105_sumout\ <= NOT \cir1|ref|Add2~105_sumout\;
\cir1|ref|ALT_INV_Add2~101_sumout\ <= NOT \cir1|ref|Add2~101_sumout\;
\cir1|ref|ALT_INV_Add2~97_sumout\ <= NOT \cir1|ref|Add2~97_sumout\;
\cir1|ref|ALT_INV_Add2~93_sumout\ <= NOT \cir1|ref|Add2~93_sumout\;
\cir1|ref|ALT_INV_Add2~89_sumout\ <= NOT \cir1|ref|Add2~89_sumout\;
\cir1|ref|ALT_INV_Add2~85_sumout\ <= NOT \cir1|ref|Add2~85_sumout\;
\cir1|ref|ALT_INV_Add2~81_sumout\ <= NOT \cir1|ref|Add2~81_sumout\;
\cir1|ref|ALT_INV_Add2~77_sumout\ <= NOT \cir1|ref|Add2~77_sumout\;
\cir1|ref|ALT_INV_Add2~73_sumout\ <= NOT \cir1|ref|Add2~73_sumout\;
\cir1|ref|ALT_INV_Add2~69_sumout\ <= NOT \cir1|ref|Add2~69_sumout\;
\cir1|ref|ALT_INV_Add2~65_sumout\ <= NOT \cir1|ref|Add2~65_sumout\;
\cir1|ref|ALT_INV_Add2~61_sumout\ <= NOT \cir1|ref|Add2~61_sumout\;
\cir1|ref|ALT_INV_Add2~57_sumout\ <= NOT \cir1|ref|Add2~57_sumout\;
\cir1|ref|ALT_INV_Add2~53_sumout\ <= NOT \cir1|ref|Add2~53_sumout\;
\cir1|ref|ALT_INV_Add2~49_sumout\ <= NOT \cir1|ref|Add2~49_sumout\;
\cir1|ref|ALT_INV_Add2~45_sumout\ <= NOT \cir1|ref|Add2~45_sumout\;
\cir1|ref|ALT_INV_Add2~41_sumout\ <= NOT \cir1|ref|Add2~41_sumout\;
\cir1|ref|ALT_INV_Add2~37_sumout\ <= NOT \cir1|ref|Add2~37_sumout\;
\cir1|ref|ALT_INV_Add2~33_sumout\ <= NOT \cir1|ref|Add2~33_sumout\;
\cir1|ref|ALT_INV_Add2~29_sumout\ <= NOT \cir1|ref|Add2~29_sumout\;
\cir1|ref|ALT_INV_Add2~25_sumout\ <= NOT \cir1|ref|Add2~25_sumout\;
\cir1|ref|ALT_INV_Add2~21_sumout\ <= NOT \cir1|ref|Add2~21_sumout\;
\cir1|ref|ALT_INV_Add2~17_sumout\ <= NOT \cir1|ref|Add2~17_sumout\;
\cir1|ref|ALT_INV_Add2~13_sumout\ <= NOT \cir1|ref|Add2~13_sumout\;
\cir1|ref|ALT_INV_Add2~9_sumout\ <= NOT \cir1|ref|Add2~9_sumout\;
\cir1|ref|ALT_INV_Add2~5_sumout\ <= NOT \cir1|ref|Add2~5_sumout\;
\cir1|ref|ALT_INV_Add2~1_sumout\ <= NOT \cir1|ref|Add2~1_sumout\;
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(7) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(7);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(7) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(6) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6);
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(6) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(6);
\cir1|guru|step|ALT_INV_Add0~9_sumout\ <= NOT \cir1|guru|step|Add0~9_sumout\;
\cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_LAST~q\ <= NOT \cir1|guru|base|control|guru|STATE.CHECK_LAST~q\;
\cir1|guru|base|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\ <= NOT \cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\;
\cir1|guru|base|control|init|ALT_INV_STATE.MEM_WALK~q\ <= NOT \cir1|guru|base|control|init|STATE.MEM_WALK~q\;
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(6) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(6);
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(7) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(7);
\cir1|guru|base|control|cnt_strat|ALT_INV_STATE~q\ <= NOT \cir1|guru|base|control|cnt_strat|STATE~q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_STATE~q\ <= NOT \cir1|guru|base|control|cnt_prep|STATE~q\;
\cir2|dp|rb|reg_GURU|ALT_INV_q_s\(1) <= NOT \cir2|dp|rb|reg_GURU|q_s\(1);
\cir2|dp|rb|reg_GURU|ALT_INV_q_s\(0) <= NOT \cir2|dp|rb|reg_GURU|q_s\(0);
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(5) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(5);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(5) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5);
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(5) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(5);
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(4) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(4);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(4) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4);
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(4) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(4);
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(3) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(3);
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(2) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(2);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(2) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2);
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(2) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(2);
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(1) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(1);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(1) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1);
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(1) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(1);
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(0) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(0);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(0) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0);
\cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(0) <= NOT \cir1|guru|base|data|rb|reg_INIT|q_s\(0);
\cir1|guru|step|ALT_INV_cnt_s\(10) <= NOT \cir1|guru|step|cnt_s\(10);
\cir1|guru|step|ALT_INV_cnt_s\(9) <= NOT \cir1|guru|step|cnt_s\(9);
\cir1|guru|step|ALT_INV_cnt_s\(6) <= NOT \cir1|guru|step|cnt_s\(6);
\cir1|guru|step|ALT_INV_cnt_s\(7) <= NOT \cir1|guru|step|cnt_s\(7);
\cir1|guru|step|ALT_INV_cnt_s\(1) <= NOT \cir1|guru|step|cnt_s\(1);
\cir1|guru|step|ALT_INV_cnt_s\(3) <= NOT \cir1|guru|step|cnt_s\(3);
\cir1|guru|step|ALT_INV_cnt_s\(4) <= NOT \cir1|guru|step|cnt_s\(4);
\cir1|guru|step|ALT_INV_cnt_s\(15) <= NOT \cir1|guru|step|cnt_s\(15);
\cir1|guru|step|ALT_INV_cnt_s\(14) <= NOT \cir1|guru|step|cnt_s\(14);
\cir1|guru|step|ALT_INV_cnt_s\(13) <= NOT \cir1|guru|step|cnt_s\(13);
\cir1|guru|step|ALT_INV_cnt_s\(2) <= NOT \cir1|guru|step|cnt_s\(2);
\cir1|guru|step|ALT_INV_cnt_s\(12) <= NOT \cir1|guru|step|cnt_s\(12);
\cir1|guru|step|ALT_INV_cnt_s\(11) <= NOT \cir1|guru|step|cnt_s\(11);
\cir1|guru|step|ALT_INV_cnt_s\(5) <= NOT \cir1|guru|step|cnt_s\(5);
\cir1|guru|step|ALT_INV_cnt_s\(8) <= NOT \cir1|guru|step|cnt_s\(8);
\cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3) <= NOT \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3);
\cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\ <= NOT \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\;
\cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(3) <= NOT \cir1|guru|base|data|rb|reg_GURU|q_s\(3);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(15) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(15);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(14) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(14);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(13) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(13);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(12) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(12);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(11) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(11);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(10) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(10);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(9) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(9);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(8) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(8);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(7) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(7);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(6) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(6);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(4) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(4);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(5) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(5);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(31) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(31);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(3) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(3);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(2) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(2);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(17) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(17);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(16) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(16);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(1) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(1);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(25) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(25);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(26) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(26);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(27) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(27);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(28) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(28);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(29) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(29);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(30) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(30);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(18) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(18);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(19) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(19);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(20) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(20);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(21) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(21);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(22) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(22);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(24) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(24);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(23) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(23);
\cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(0) <= NOT \cir1|guru|base|control|cnt_strat|cnt_s\(0);
\cir1|guru|base|control|main|ALT_INV_STATE.CNT_START~q\ <= NOT \cir1|guru|base|control|main|STATE.CNT_START~q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(9) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(9);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(15) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(15);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(7) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(7);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(16) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(16);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(30) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(30);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(8) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(8);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(29) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(29);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(28) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(28);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(27) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(27);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(26) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(26);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(25) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(25);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(31) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(31);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(23) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(23);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(12) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(12);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(13) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(13);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(11) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(11);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(10) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(10);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(14) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(14);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(1) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(1);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(2) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(2);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(3) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(3);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(4) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(4);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(5) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(5);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(6) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(6);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(22) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(22);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(21) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(21);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(20) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(20);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(19) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(19);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(18) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(18);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(0) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(0);
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(17) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(17);
\cir1|guru|base|control|main|ALT_INV_STATE.CNT_PREPARE~q\ <= NOT \cir1|guru|base|control|main|STATE.CNT_PREPARE~q\;
\cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(24) <= NOT \cir1|guru|base|control|cnt_prep|cnt_s\(24);
\cir1|guru|button|ALT_INV_speed_sync_s.FOUR_X~q\ <= NOT \cir1|guru|button|speed_sync_s.FOUR_X~q\;
\cir1|guru|button|ALT_INV_speed_sync_s.TWO_X~q\ <= NOT \cir1|guru|button|speed_sync_s.TWO_X~q\;
\cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\ <= NOT \cir1|guru|base|control|main|STATE.CHECK_END~q\;

-- Location: IOOBUF_X80_Y81_N36
\print_rdy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|print_rdy~0_combout\,
	devoe => ww_devoe,
	o => ww_print_rdy);

-- Location: IOOBUF_X89_Y35_N79
\start_step~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\,
	devoe => ww_devoe,
	o => ww_start_step);

-- Location: IOOBUF_X72_Y0_N2
\mem_a_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_mem_a_data(0));

-- Location: IOOBUF_X89_Y38_N39
\mem_a_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_mem_a_data(1));

-- Location: IOOBUF_X72_Y0_N53
\mem_a_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_mem_a_data(2));

-- Location: IOOBUF_X76_Y81_N36
\mem_a_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_mem_a_data(3));

-- Location: IOOBUF_X72_Y0_N36
\mem_a_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_mem_a_data(4));

-- Location: IOOBUF_X89_Y38_N22
\mem_a_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_mem_a_data(5));

-- Location: IOOBUF_X89_Y38_N5
\mem_a_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_mem_a_data(6));

-- Location: IOOBUF_X72_Y0_N19
\mem_a_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cir1|guru|mem|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_mem_a_data(7));

-- Location: IOIBUF_X89_Y35_N61
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

-- Location: IOIBUF_X89_Y37_N38
\res~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: LABCELL_X83_Y32_N0
\cir1|guru|base|control|cnt_strat|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~1_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(0) ) + ( VCC ) + ( !VCC ))
-- \cir1|guru|base|control|cnt_strat|Add0~2\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(0),
	cin => GND,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~1_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~2\);

-- Location: MLABCELL_X82_Y31_N48
\cir1|guru|base|control|cnt_strat|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|NEXT_STATE~0_combout\ = ( \cir1|guru|base|control|cnt_strat|STATE~q\ & ( \cir1|guru|base|control|cnt_strat|Equal0~6_combout\ ) ) # ( !\cir1|guru|base|control|cnt_strat|STATE~q\ & ( 
-- \cir1|guru|base|control|cnt_strat|Equal0~6_combout\ & ( \cir1|guru|base|control|main|STATE.CNT_START~q\ ) ) ) # ( !\cir1|guru|base|control|cnt_strat|STATE~q\ & ( !\cir1|guru|base|control|cnt_strat|Equal0~6_combout\ & ( 
-- \cir1|guru|base|control|main|STATE.CNT_START~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.CNT_START~q\,
	datae => \cir1|guru|base|control|cnt_strat|ALT_INV_STATE~q\,
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cir1|guru|base|control|cnt_strat|NEXT_STATE~0_combout\);

-- Location: FF_X82_Y31_N49
\cir1|guru|base|control|cnt_strat|STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|NEXT_STATE~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|STATE~q\);

-- Location: LABCELL_X83_Y31_N36
\cir1|guru|base|control|cnt_strat|cnt_s[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\ = ( \cir1|guru|base|control|cnt_strat|Equal0~6_combout\ & ( !\cir1|guru|base|control|cnt_strat|STATE~q\ ) ) # ( !\cir1|guru|base|control|cnt_strat|Equal0~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_STATE~q\,
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\);

-- Location: FF_X83_Y32_N2
\cir1|guru|base|control|cnt_strat|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~1_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(0));

-- Location: LABCELL_X83_Y32_N3
\cir1|guru|base|control|cnt_strat|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~57_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(1) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~2\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~58\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(1) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(1),
	cin => \cir1|guru|base|control|cnt_strat|Add0~2\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~57_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~58\);

-- Location: FF_X83_Y32_N5
\cir1|guru|base|control|cnt_strat|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~57_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(1));

-- Location: LABCELL_X83_Y32_N6
\cir1|guru|base|control|cnt_strat|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~69_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(2) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~58\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~70\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(2) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(2),
	cin => \cir1|guru|base|control|cnt_strat|Add0~58\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~69_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~70\);

-- Location: FF_X83_Y32_N7
\cir1|guru|base|control|cnt_strat|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~69_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(2));

-- Location: LABCELL_X83_Y32_N9
\cir1|guru|base|control|cnt_strat|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~73_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s[3]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~70\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~74\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s[3]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[3]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_strat|Add0~70\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~73_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~74\);

-- Location: FF_X83_Y32_N11
\cir1|guru|base|control|cnt_strat|cnt_s[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~73_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[3]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y32_N12
\cir1|guru|base|control|cnt_strat|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~85_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(4) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~74\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~86\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(4) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(4),
	cin => \cir1|guru|base|control|cnt_strat|Add0~74\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~85_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~86\);

-- Location: FF_X83_Y32_N14
\cir1|guru|base|control|cnt_strat|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~85_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(4));

-- Location: LABCELL_X83_Y32_N15
\cir1|guru|base|control|cnt_strat|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~81_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(5) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~86\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~82\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(5) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(5),
	cin => \cir1|guru|base|control|cnt_strat|Add0~86\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~81_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~82\);

-- Location: FF_X83_Y32_N17
\cir1|guru|base|control|cnt_strat|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~81_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(5));

-- Location: LABCELL_X83_Y32_N18
\cir1|guru|base|control|cnt_strat|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~89_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~82\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~90\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[6]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_strat|Add0~82\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~89_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~90\);

-- Location: FF_X83_Y32_N20
\cir1|guru|base|control|cnt_strat|cnt_s[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~89_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[6]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y32_N21
\cir1|guru|base|control|cnt_strat|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~93_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(7) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~90\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~94\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(7) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(7),
	cin => \cir1|guru|base|control|cnt_strat|Add0~90\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~93_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~94\);

-- Location: FF_X83_Y32_N23
\cir1|guru|base|control|cnt_strat|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~93_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(7));

-- Location: LABCELL_X83_Y32_N24
\cir1|guru|base|control|cnt_strat|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~97_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~94\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~98\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[8]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_strat|Add0~94\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~97_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~98\);

-- Location: FF_X83_Y32_N26
\cir1|guru|base|control|cnt_strat|cnt_s[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~97_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[8]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y32_N27
\cir1|guru|base|control|cnt_strat|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~101_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(9) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~98\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~102\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(9) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(9),
	cin => \cir1|guru|base|control|cnt_strat|Add0~98\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~101_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~102\);

-- Location: FF_X83_Y32_N29
\cir1|guru|base|control|cnt_strat|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~101_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(9));

-- Location: LABCELL_X83_Y32_N30
\cir1|guru|base|control|cnt_strat|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~105_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~102\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~106\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[10]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_strat|Add0~102\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~105_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~106\);

-- Location: FF_X83_Y32_N31
\cir1|guru|base|control|cnt_strat|cnt_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~105_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[10]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y32_N33
\cir1|guru|base|control|cnt_strat|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~109_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~106\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~110\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[11]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_strat|Add0~106\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~109_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~110\);

-- Location: FF_X83_Y32_N35
\cir1|guru|base|control|cnt_strat|cnt_s[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~109_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[11]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y32_N36
\cir1|guru|base|control|cnt_strat|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~113_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(12) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~110\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~114\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(12) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(12),
	cin => \cir1|guru|base|control|cnt_strat|Add0~110\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~113_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~114\);

-- Location: FF_X83_Y32_N38
\cir1|guru|base|control|cnt_strat|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~113_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(12));

-- Location: LABCELL_X83_Y32_N39
\cir1|guru|base|control|cnt_strat|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~117_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~114\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~118\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_strat|Add0~114\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~117_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~118\);

-- Location: FF_X83_Y32_N41
\cir1|guru|base|control|cnt_strat|cnt_s[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~117_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[13]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y32_N42
\cir1|guru|base|control|cnt_strat|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~121_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(14) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~118\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~122\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(14) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(14),
	cin => \cir1|guru|base|control|cnt_strat|Add0~118\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~121_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~122\);

-- Location: FF_X83_Y32_N44
\cir1|guru|base|control|cnt_strat|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~121_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(14));

-- Location: LABCELL_X83_Y32_N45
\cir1|guru|base|control|cnt_strat|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~125_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(15) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~122\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~126\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(15) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(15),
	cin => \cir1|guru|base|control|cnt_strat|Add0~122\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~125_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~126\);

-- Location: FF_X83_Y32_N47
\cir1|guru|base|control|cnt_strat|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~125_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(15));

-- Location: LABCELL_X83_Y32_N48
\cir1|guru|base|control|cnt_strat|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~61_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(16) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~126\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~62\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(16) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(16),
	cin => \cir1|guru|base|control|cnt_strat|Add0~126\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~61_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~62\);

-- Location: FF_X83_Y32_N50
\cir1|guru|base|control|cnt_strat|cnt_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~61_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(16));

-- Location: LABCELL_X83_Y32_N51
\cir1|guru|base|control|cnt_strat|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~65_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(17) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~62\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~66\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(17) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(17),
	cin => \cir1|guru|base|control|cnt_strat|Add0~62\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~65_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~66\);

-- Location: FF_X83_Y32_N52
\cir1|guru|base|control|cnt_strat|cnt_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~65_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(17));

-- Location: LABCELL_X83_Y32_N54
\cir1|guru|base|control|cnt_strat|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~29_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(18) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~66\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~30\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(18) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(18),
	cin => \cir1|guru|base|control|cnt_strat|Add0~66\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~29_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~30\);

-- Location: FF_X83_Y32_N56
\cir1|guru|base|control|cnt_strat|cnt_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~29_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(18));

-- Location: LABCELL_X83_Y32_N57
\cir1|guru|base|control|cnt_strat|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~25_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(19) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~30\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~26\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(19) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(19),
	cin => \cir1|guru|base|control|cnt_strat|Add0~30\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~25_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~26\);

-- Location: FF_X83_Y32_N59
\cir1|guru|base|control|cnt_strat|cnt_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~25_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(19));

-- Location: LABCELL_X83_Y31_N0
\cir1|guru|base|control|cnt_strat|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~21_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(20) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~26\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~22\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(20) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(20),
	cin => \cir1|guru|base|control|cnt_strat|Add0~26\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~21_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~22\);

-- Location: FF_X83_Y31_N2
\cir1|guru|base|control|cnt_strat|cnt_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~21_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(20));

-- Location: LABCELL_X83_Y31_N3
\cir1|guru|base|control|cnt_strat|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~17_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(21) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~22\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~18\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(21) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(21),
	cin => \cir1|guru|base|control|cnt_strat|Add0~22\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~17_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~18\);

-- Location: FF_X83_Y31_N5
\cir1|guru|base|control|cnt_strat|cnt_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~17_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(21));

-- Location: LABCELL_X83_Y31_N6
\cir1|guru|base|control|cnt_strat|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~13_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(22) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~18\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~14\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(22) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(22),
	cin => \cir1|guru|base|control|cnt_strat|Add0~18\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~13_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~14\);

-- Location: FF_X83_Y31_N8
\cir1|guru|base|control|cnt_strat|cnt_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~13_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(22));

-- Location: LABCELL_X83_Y31_N9
\cir1|guru|base|control|cnt_strat|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~5_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(23) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~14\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~6\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(23) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(23),
	cin => \cir1|guru|base|control|cnt_strat|Add0~14\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~5_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~6\);

-- Location: FF_X83_Y31_N11
\cir1|guru|base|control|cnt_strat|cnt_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~5_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(23));

-- Location: LABCELL_X83_Y31_N12
\cir1|guru|base|control|cnt_strat|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~9_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(24) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~6\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~10\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(24) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(24),
	cin => \cir1|guru|base|control|cnt_strat|Add0~6\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~9_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~10\);

-- Location: FF_X83_Y31_N14
\cir1|guru|base|control|cnt_strat|cnt_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~9_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(24));

-- Location: LABCELL_X83_Y31_N15
\cir1|guru|base|control|cnt_strat|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~53_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(25) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~10\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~54\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(25) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(25),
	cin => \cir1|guru|base|control|cnt_strat|Add0~10\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~53_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~54\);

-- Location: FF_X83_Y31_N17
\cir1|guru|base|control|cnt_strat|cnt_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~53_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(25));

-- Location: LABCELL_X83_Y31_N18
\cir1|guru|base|control|cnt_strat|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~49_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(26) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~54\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~50\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(26) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(26),
	cin => \cir1|guru|base|control|cnt_strat|Add0~54\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~49_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~50\);

-- Location: FF_X83_Y31_N20
\cir1|guru|base|control|cnt_strat|cnt_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~49_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(26));

-- Location: LABCELL_X83_Y31_N21
\cir1|guru|base|control|cnt_strat|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~45_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(27) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~50\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~46\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(27) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(27),
	cin => \cir1|guru|base|control|cnt_strat|Add0~50\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~45_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~46\);

-- Location: FF_X83_Y31_N23
\cir1|guru|base|control|cnt_strat|cnt_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~45_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(27));

-- Location: LABCELL_X83_Y31_N24
\cir1|guru|base|control|cnt_strat|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~41_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(28) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~46\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~42\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(28) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(28),
	cin => \cir1|guru|base|control|cnt_strat|Add0~46\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~41_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~42\);

-- Location: FF_X83_Y31_N26
\cir1|guru|base|control|cnt_strat|cnt_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~41_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(28));

-- Location: LABCELL_X83_Y31_N27
\cir1|guru|base|control|cnt_strat|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~37_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(29) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~42\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~38\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(29) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(29),
	cin => \cir1|guru|base|control|cnt_strat|Add0~42\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~37_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~38\);

-- Location: FF_X83_Y31_N29
\cir1|guru|base|control|cnt_strat|cnt_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~37_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(29));

-- Location: LABCELL_X83_Y31_N30
\cir1|guru|base|control|cnt_strat|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~33_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(30) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~38\ ))
-- \cir1|guru|base|control|cnt_strat|Add0~34\ = CARRY(( \cir1|guru|base|control|cnt_strat|cnt_s\(30) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(30),
	cin => \cir1|guru|base|control|cnt_strat|Add0~38\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~33_sumout\,
	cout => \cir1|guru|base|control|cnt_strat|Add0~34\);

-- Location: FF_X83_Y31_N32
\cir1|guru|base|control|cnt_strat|cnt_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~33_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(30));

-- Location: MLABCELL_X82_Y31_N45
\cir1|guru|base|control|cnt_strat|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Equal0~2_combout\ = ( !\cir1|guru|base|control|cnt_strat|cnt_s\(25) & ( !\cir1|guru|base|control|cnt_strat|cnt_s\(30) & ( (!\cir1|guru|base|control|cnt_strat|cnt_s\(29) & (!\cir1|guru|base|control|cnt_strat|cnt_s\(28) & 
-- (!\cir1|guru|base|control|cnt_strat|cnt_s\(26) & !\cir1|guru|base|control|cnt_strat|cnt_s\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(29),
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(28),
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(26),
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(27),
	datae => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(25),
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(30),
	combout => \cir1|guru|base|control|cnt_strat|Equal0~2_combout\);

-- Location: LABCELL_X83_Y31_N39
\cir1|guru|base|control|cnt_strat|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Equal0~0_combout\ = ( !\cir1|guru|base|control|cnt_strat|cnt_s\(0) & ( !\cir1|guru|base|control|cnt_strat|cnt_s\(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(23),
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(0),
	combout => \cir1|guru|base|control|cnt_strat|Equal0~0_combout\);

-- Location: FF_X83_Y32_N25
\cir1|guru|base|control|cnt_strat|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~97_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(8));

-- Location: FF_X83_Y32_N19
\cir1|guru|base|control|cnt_strat|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~89_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(6));

-- Location: LABCELL_X83_Y31_N48
\cir1|guru|base|control|cnt_strat|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Equal0~4_combout\ = ( \cir1|guru|base|control|cnt_strat|cnt_s\(4) & ( !\cir1|guru|base|control|cnt_strat|cnt_s\(9) & ( (\cir1|guru|base|control|cnt_strat|cnt_s\(8) & (\cir1|guru|base|control|cnt_strat|cnt_s\(7) & 
-- (\cir1|guru|base|control|cnt_strat|cnt_s\(5) & \cir1|guru|base|control|cnt_strat|cnt_s\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(8),
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(7),
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(5),
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(6),
	datae => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(4),
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(9),
	combout => \cir1|guru|base|control|cnt_strat|Equal0~4_combout\);

-- Location: FF_X83_Y32_N55
\cir1|guru|base|control|cnt_strat|cnt_s[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~29_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[18]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y31_N24
\cir1|guru|base|control|cnt_strat|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Equal0~1_combout\ = ( !\cir1|guru|base|control|cnt_strat|cnt_s\(20) & ( !\cir1|guru|base|control|cnt_strat|cnt_s\(19) & ( (!\cir1|guru|base|control|cnt_strat|cnt_s\(22) & (!\cir1|guru|base|control|cnt_strat|cnt_s\(24) & 
-- (!\cir1|guru|base|control|cnt_strat|cnt_s\(21) & !\cir1|guru|base|control|cnt_strat|cnt_s[18]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(22),
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(24),
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(21),
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[18]~DUPLICATE_q\,
	datae => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(20),
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(19),
	combout => \cir1|guru|base|control|cnt_strat|Equal0~1_combout\);

-- Location: LABCELL_X83_Y31_N33
\cir1|guru|base|control|cnt_strat|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Add0~77_sumout\ = SUM(( \cir1|guru|base|control|cnt_strat|cnt_s\(31) ) + ( GND ) + ( \cir1|guru|base|control|cnt_strat|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(31),
	cin => \cir1|guru|base|control|cnt_strat|Add0~34\,
	sumout => \cir1|guru|base|control|cnt_strat|Add0~77_sumout\);

-- Location: FF_X83_Y31_N35
\cir1|guru|base|control|cnt_strat|cnt_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~77_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(31));

-- Location: FF_X83_Y32_N49
\cir1|guru|base|control|cnt_strat|cnt_s[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~61_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s[16]~DUPLICATE_q\);

-- Location: FF_X83_Y32_N10
\cir1|guru|base|control|cnt_strat|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~73_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(3));

-- Location: LABCELL_X83_Y31_N54
\cir1|guru|base|control|cnt_strat|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Equal0~3_combout\ = ( !\cir1|guru|base|control|cnt_strat|cnt_s[16]~DUPLICATE_q\ & ( !\cir1|guru|base|control|cnt_strat|cnt_s\(3) & ( (!\cir1|guru|base|control|cnt_strat|cnt_s\(31) & 
-- (!\cir1|guru|base|control|cnt_strat|cnt_s\(1) & (!\cir1|guru|base|control|cnt_strat|cnt_s\(17) & \cir1|guru|base|control|cnt_strat|cnt_s\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(31),
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(1),
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(17),
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(2),
	datae => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s[16]~DUPLICATE_q\,
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(3),
	combout => \cir1|guru|base|control|cnt_strat|Equal0~3_combout\);

-- Location: FF_X83_Y32_N40
\cir1|guru|base|control|cnt_strat|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~117_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(13));

-- Location: FF_X83_Y32_N34
\cir1|guru|base|control|cnt_strat|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~109_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(11));

-- Location: FF_X83_Y32_N32
\cir1|guru|base|control|cnt_strat|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_strat|Add0~105_sumout\,
	sclr => \cir1|guru|base|control|cnt_strat|cnt_s[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_strat|cnt_s\(10));

-- Location: MLABCELL_X82_Y32_N33
\cir1|guru|base|control|cnt_strat|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Equal0~5_combout\ = ( !\cir1|guru|base|control|cnt_strat|cnt_s\(11) & ( !\cir1|guru|base|control|cnt_strat|cnt_s\(10) & ( (!\cir1|guru|base|control|cnt_strat|cnt_s\(13) & (!\cir1|guru|base|control|cnt_strat|cnt_s\(12) & 
-- (!\cir1|guru|base|control|cnt_strat|cnt_s\(14) & !\cir1|guru|base|control|cnt_strat|cnt_s\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(13),
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(12),
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(14),
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(15),
	datae => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(11),
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_cnt_s\(10),
	combout => \cir1|guru|base|control|cnt_strat|Equal0~5_combout\);

-- Location: LABCELL_X83_Y31_N42
\cir1|guru|base|control|cnt_strat|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_strat|Equal0~6_combout\ = ( \cir1|guru|base|control|cnt_strat|Equal0~3_combout\ & ( \cir1|guru|base|control|cnt_strat|Equal0~5_combout\ & ( (!\cir1|guru|base|control|cnt_strat|Equal0~2_combout\) # 
-- ((!\cir1|guru|base|control|cnt_strat|Equal0~0_combout\) # ((!\cir1|guru|base|control|cnt_strat|Equal0~4_combout\) # (!\cir1|guru|base|control|cnt_strat|Equal0~1_combout\))) ) ) ) # ( !\cir1|guru|base|control|cnt_strat|Equal0~3_combout\ & ( 
-- \cir1|guru|base|control|cnt_strat|Equal0~5_combout\ ) ) # ( \cir1|guru|base|control|cnt_strat|Equal0~3_combout\ & ( !\cir1|guru|base|control|cnt_strat|Equal0~5_combout\ ) ) # ( !\cir1|guru|base|control|cnt_strat|Equal0~3_combout\ & ( 
-- !\cir1|guru|base|control|cnt_strat|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~2_combout\,
	datab => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~0_combout\,
	datac => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~4_combout\,
	datad => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~1_combout\,
	datae => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~3_combout\,
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~5_combout\,
	combout => \cir1|guru|base|control|cnt_strat|Equal0~6_combout\);

-- Location: MLABCELL_X82_Y31_N39
\cir1|guru|base|control|main|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector2~0_combout\ = ( \cir1|guru|base|control|main|STATE.CNT_START~q\ & ( \cir1|guru|base|control|cnt_strat|Equal0~6_combout\ ) ) # ( !\cir1|guru|base|control|main|STATE.CNT_START~q\ & ( 
-- \cir1|guru|base|control|cnt_strat|Equal0~6_combout\ & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( \cir1|guru|base|control|main|STATE.CNT_START~q\ & ( !\cir1|guru|base|control|cnt_strat|Equal0~6_combout\ & ( 
-- \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( !\cir1|guru|base|control|main|STATE.CNT_START~q\ & ( !\cir1|guru|base|control|cnt_strat|Equal0~6_combout\ & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datae => \cir1|guru|base|control|main|ALT_INV_STATE.CNT_START~q\,
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cir1|guru|base|control|main|Selector2~0_combout\);

-- Location: FF_X82_Y31_N41
\cir1|guru|base|control|main|STATE.CNT_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|main|Selector2~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|main|STATE.CNT_START~q\);

-- Location: MLABCELL_X84_Y32_N54
\cir2|dp|n_g|LFSR|d_s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(2) = (\cir2|dp|n_g|LFSR|g1:1:FF|q_s~q\) # (\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datac => \cir2|dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(2));

-- Location: FF_X84_Y32_N55
\cir2|dp|n_g|LFSR|g1:2:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:2:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N24
\cir2|dp|n_g|LFSR|d_s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(3) = ( \cir2|dp|n_g|LFSR|g1:2:FF|q_s~q\ & ( (!\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\cir2|dp|n_g|LFSR|g1:2:FF|q_s~q\ & ( (\res~input_o\) # (\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(3));

-- Location: FF_X84_Y32_N25
\cir2|dp|n_g|LFSR|g1:3:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:3:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N27
\cir2|dp|n_g|LFSR|d_s[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(4) = ( \cir2|dp|n_g|LFSR|g1:3:FF|q_s~q\ & ( (!\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\cir2|dp|n_g|LFSR|g1:3:FF|q_s~q\ & ( (\res~input_o\) # (\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(4));

-- Location: FF_X84_Y32_N28
\cir2|dp|n_g|LFSR|g1:4:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:4:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N57
\cir2|dp|n_g|LFSR|d_s[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(5) = ( \cir2|dp|n_g|LFSR|g1:4:FF|q_s~q\ ) # ( !\cir2|dp|n_g|LFSR|g1:4:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(5));

-- Location: FF_X84_Y32_N59
\cir2|dp|n_g|LFSR|g1:5:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:5:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N48
\cir2|dp|n_g|LFSR|d_s[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(6) = ( \cir2|dp|n_g|LFSR|g1:5:FF|q_s~q\ & ( (!\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\cir2|dp|n_g|LFSR|g1:5:FF|q_s~q\ & ( (\res~input_o\) # (\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(6));

-- Location: FF_X84_Y32_N49
\cir2|dp|n_g|LFSR|g1:6:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:6:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N51
\cir2|dp|n_g|LFSR|d_s[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(7) = ( \cir2|dp|n_g|LFSR|g1:6:FF|q_s~q\ ) # ( !\cir2|dp|n_g|LFSR|g1:6:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(7));

-- Location: FF_X84_Y32_N52
\cir2|dp|n_g|LFSR|g1:7:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:7:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N12
\cir2|dp|n_g|LFSR|d_s[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(8) = ( \cir2|dp|n_g|LFSR|g1:7:FF|q_s~q\ ) # ( !\cir2|dp|n_g|LFSR|g1:7:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(8));

-- Location: FF_X84_Y32_N14
\cir2|dp|n_g|LFSR|g1:8:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:8:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N33
\cir2|dp|n_g|LFSR|d_s[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(9) = ( \cir2|dp|n_g|LFSR|g1:8:FF|q_s~q\ & ( (!\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\cir2|dp|n_g|LFSR|g1:8:FF|q_s~q\ & ( (\res~input_o\) # (\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(9));

-- Location: FF_X84_Y32_N34
\cir2|dp|n_g|LFSR|g1:9:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:9:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N30
\cir2|dp|n_g|LFSR|d_s[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(10) = ( \cir2|dp|n_g|LFSR|g1:9:FF|q_s~q\ & ( (!\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\cir2|dp|n_g|LFSR|g1:9:FF|q_s~q\ & ( (\res~input_o\) # (\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(10));

-- Location: FF_X84_Y32_N32
\cir2|dp|n_g|LFSR|g1:10:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:10:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N15
\cir2|dp|n_g|LFSR|d_s[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(11) = (\cir2|dp|n_g|LFSR|g1:10:FF|q_s~q\) # (\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datac => \cir2|dp|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(11));

-- Location: FF_X84_Y32_N17
\cir2|dp|n_g|LFSR|g1:11:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N18
\cir2|dp|n_g|LFSR|d_s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(0) = (\res~input_o\) # (\cir2|dp|n_g|LFSR|g1:11:FF|q_s~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|dp|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	datad => \ALT_INV_res~input_o\,
	combout => \cir2|dp|n_g|LFSR|d_s\(0));

-- Location: FF_X84_Y32_N20
\cir2|dp|n_g|LFSR|g1:0:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:0:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N21
\cir2|dp|n_g|LFSR|d_s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|n_g|LFSR|d_s\(1) = ( \cir2|dp|n_g|LFSR|g1:0:FF|q_s~q\ ) # ( !\cir2|dp|n_g|LFSR|g1:0:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\,
	combout => \cir2|dp|n_g|LFSR|d_s\(1));

-- Location: FF_X84_Y32_N23
\cir2|dp|n_g|LFSR|g1:1:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|n_g|LFSR|d_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|n_g|LFSR|g1:1:FF|q_s~q\);

-- Location: LABCELL_X83_Y34_N45
\cir2|dp|rb|reg_PRE_GURU|q_s~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_PRE_GURU|q_s~5_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(1) & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(1),
	combout => \cir2|dp|rb|reg_PRE_GURU|q_s~5_combout\);

-- Location: LABCELL_X81_Y33_N39
\cir2|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector16~0_combout\ = ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( !\cir2|fsm|STATE.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_STATE.IDLE~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir2|fsm|Selector16~0_combout\);

-- Location: LABCELL_X81_Y33_N15
\cir2|fsm|NEXT_STATE.RAND_594\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.RAND_594~combout\ = ( \cir2|fsm|Selector16~0_combout\ & ( (\cir2|fsm|NEXT_STATE.RAND_594~combout\) # (\cir2|fsm|Selector18~0_combout\) ) ) # ( !\cir2|fsm|Selector16~0_combout\ & ( (!\cir2|fsm|Selector18~0_combout\ & 
-- \cir2|fsm|NEXT_STATE.RAND_594~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	datac => \cir2|fsm|ALT_INV_NEXT_STATE.RAND_594~combout\,
	dataf => \cir2|fsm|ALT_INV_Selector16~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.RAND_594~combout\);

-- Location: LABCELL_X81_Y33_N12
\cir2|fsm|STATE~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~16_combout\ = ( \cir2|fsm|NEXT_STATE.RAND_594~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.RAND_594~combout\,
	combout => \cir2|fsm|STATE~16_combout\);

-- Location: FF_X81_Y33_N14
\cir2|fsm|STATE.RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.RAND~q\);

-- Location: LABCELL_X81_Y33_N18
\cir2|fsm|NEXT_STATE.WRITE_RAND_575\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.WRITE_RAND_575~combout\ = ( \cir2|fsm|STATE.RAND~q\ & ( (\cir2|fsm|Selector18~0_combout\) # (\cir2|fsm|NEXT_STATE.WRITE_RAND_575~combout\) ) ) # ( !\cir2|fsm|STATE.RAND~q\ & ( (\cir2|fsm|NEXT_STATE.WRITE_RAND_575~combout\ & 
-- !\cir2|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\,
	datad => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \cir2|fsm|ALT_INV_STATE.RAND~q\,
	combout => \cir2|fsm|NEXT_STATE.WRITE_RAND_575~combout\);

-- Location: LABCELL_X80_Y33_N18
\cir2|fsm|STATE~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~18_combout\ = ( \cir2|fsm|NEXT_STATE.WRITE_RAND_575~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_RAND_575~combout\,
	combout => \cir2|fsm|STATE~18_combout\);

-- Location: FF_X80_Y33_N20
\cir2|fsm|STATE.WRITE_RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.WRITE_RAND~q\);

-- Location: LABCELL_X80_Y33_N3
\cir2|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector12~0_combout\ = ( !\cir2|fsm|STATE.WRITE_RAND~q\ & ( !\cir2|fsm|STATE.CLEAR_PREV~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \cir2|fsm|ALT_INV_STATE.WRITE_RAND~q\,
	combout => \cir2|fsm|Selector12~0_combout\);

-- Location: LABCELL_X85_Y33_N0
\cir1|guru|step|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~9_sumout\ = SUM(( !\cir1|guru|step|cnt_s\(0) ) + ( VCC ) + ( !VCC ))
-- \cir1|guru|step|Add0~10\ = CARRY(( !\cir1|guru|step|cnt_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(0),
	cin => GND,
	sumout => \cir1|guru|step|Add0~9_sumout\,
	cout => \cir1|guru|step|Add0~10\);

-- Location: LABCELL_X85_Y33_N51
\cir1|guru|step|cnt_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_s~1_combout\ = ( !\cir1|guru|step|Add0~9_sumout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|guru|step|ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_res~input_o\,
	combout => \cir1|guru|step|cnt_s~1_combout\);

-- Location: FF_X85_Y33_N53
\cir1|guru|step|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|cnt_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(0));

-- Location: LABCELL_X85_Y33_N3
\cir1|guru|step|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~45_sumout\ = SUM(( \cir1|guru|step|cnt_s\(1) ) + ( GND ) + ( \cir1|guru|step|Add0~10\ ))
-- \cir1|guru|step|Add0~46\ = CARRY(( \cir1|guru|step|cnt_s\(1) ) + ( GND ) + ( \cir1|guru|step|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|step|ALT_INV_cnt_s\(1),
	cin => \cir1|guru|step|Add0~10\,
	sumout => \cir1|guru|step|Add0~45_sumout\,
	cout => \cir1|guru|step|Add0~46\);

-- Location: LABCELL_X85_Y33_N27
\cir1|guru|step|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~57_sumout\ = SUM(( \cir1|guru|step|cnt_s\(9) ) + ( GND ) + ( \cir1|guru|step|Add0~2\ ))
-- \cir1|guru|step|Add0~58\ = CARRY(( \cir1|guru|step|cnt_s\(9) ) + ( GND ) + ( \cir1|guru|step|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|step|ALT_INV_cnt_s\(9),
	cin => \cir1|guru|step|Add0~2\,
	sumout => \cir1|guru|step|Add0~57_sumout\,
	cout => \cir1|guru|step|Add0~58\);

-- Location: LABCELL_X85_Y33_N30
\cir1|guru|step|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~61_sumout\ = SUM(( \cir1|guru|step|cnt_s\(10) ) + ( GND ) + ( \cir1|guru|step|Add0~58\ ))
-- \cir1|guru|step|Add0~62\ = CARRY(( \cir1|guru|step|cnt_s\(10) ) + ( GND ) + ( \cir1|guru|step|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|step|ALT_INV_cnt_s\(10),
	cin => \cir1|guru|step|Add0~58\,
	sumout => \cir1|guru|step|Add0~61_sumout\,
	cout => \cir1|guru|step|Add0~62\);

-- Location: FF_X85_Y33_N32
\cir1|guru|step|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~61_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(10));

-- Location: LABCELL_X85_Y33_N33
\cir1|guru|step|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~13_sumout\ = SUM(( \cir1|guru|step|cnt_s\(11) ) + ( GND ) + ( \cir1|guru|step|Add0~62\ ))
-- \cir1|guru|step|Add0~14\ = CARRY(( \cir1|guru|step|cnt_s\(11) ) + ( GND ) + ( \cir1|guru|step|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(11),
	cin => \cir1|guru|step|Add0~62\,
	sumout => \cir1|guru|step|Add0~13_sumout\,
	cout => \cir1|guru|step|Add0~14\);

-- Location: FF_X85_Y33_N35
\cir1|guru|step|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~13_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(11));

-- Location: LABCELL_X85_Y33_N36
\cir1|guru|step|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~17_sumout\ = SUM(( \cir1|guru|step|cnt_s\(12) ) + ( GND ) + ( \cir1|guru|step|Add0~14\ ))
-- \cir1|guru|step|Add0~18\ = CARRY(( \cir1|guru|step|cnt_s\(12) ) + ( GND ) + ( \cir1|guru|step|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(12),
	cin => \cir1|guru|step|Add0~14\,
	sumout => \cir1|guru|step|Add0~17_sumout\,
	cout => \cir1|guru|step|Add0~18\);

-- Location: FF_X85_Y33_N38
\cir1|guru|step|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~17_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(12));

-- Location: LABCELL_X85_Y33_N39
\cir1|guru|step|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~25_sumout\ = SUM(( \cir1|guru|step|cnt_s\(13) ) + ( GND ) + ( \cir1|guru|step|Add0~18\ ))
-- \cir1|guru|step|Add0~26\ = CARRY(( \cir1|guru|step|cnt_s\(13) ) + ( GND ) + ( \cir1|guru|step|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(13),
	cin => \cir1|guru|step|Add0~18\,
	sumout => \cir1|guru|step|Add0~25_sumout\,
	cout => \cir1|guru|step|Add0~26\);

-- Location: FF_X85_Y33_N41
\cir1|guru|step|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~25_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(13));

-- Location: LABCELL_X85_Y33_N42
\cir1|guru|step|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~29_sumout\ = SUM(( \cir1|guru|step|cnt_s\(14) ) + ( GND ) + ( \cir1|guru|step|Add0~26\ ))
-- \cir1|guru|step|Add0~30\ = CARRY(( \cir1|guru|step|cnt_s\(14) ) + ( GND ) + ( \cir1|guru|step|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|step|ALT_INV_cnt_s\(14),
	cin => \cir1|guru|step|Add0~26\,
	sumout => \cir1|guru|step|Add0~29_sumout\,
	cout => \cir1|guru|step|Add0~30\);

-- Location: FF_X85_Y33_N44
\cir1|guru|step|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~29_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(14));

-- Location: LABCELL_X85_Y33_N45
\cir1|guru|step|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~33_sumout\ = SUM(( \cir1|guru|step|cnt_s\(15) ) + ( GND ) + ( \cir1|guru|step|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(15),
	cin => \cir1|guru|step|Add0~30\,
	sumout => \cir1|guru|step|Add0~33_sumout\);

-- Location: FF_X85_Y33_N47
\cir1|guru|step|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~33_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(15));

-- Location: MLABCELL_X84_Y33_N51
\cir1|guru|step|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Equal0~1_combout\ = ( !\cir1|guru|step|cnt_s\(3) & ( !\cir1|guru|step|cnt_s\(15) & ( (!\cir1|guru|step|cnt_s\(1) & !\cir1|guru|step|cnt_s\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(1),
	datac => \cir1|guru|step|ALT_INV_cnt_s\(4),
	datae => \cir1|guru|step|ALT_INV_cnt_s\(3),
	dataf => \cir1|guru|step|ALT_INV_cnt_s\(15),
	combout => \cir1|guru|step|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y33_N36
\cir1|guru|step|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Equal0~2_combout\ = ( !\cir1|guru|step|cnt_s\(7) & ( !\cir1|guru|step|cnt_s\(6) & ( (\cir1|guru|step|cnt_s\(10) & !\cir1|guru|step|cnt_s\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(10),
	datac => \cir1|guru|step|ALT_INV_cnt_s\(9),
	datae => \cir1|guru|step|ALT_INV_cnt_s\(7),
	dataf => \cir1|guru|step|ALT_INV_cnt_s\(6),
	combout => \cir1|guru|step|Equal0~2_combout\);

-- Location: LABCELL_X85_Y33_N57
\cir1|guru|step|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Equal0~0_combout\ = ( !\cir1|guru|step|cnt_s\(12) & ( !\cir1|guru|step|cnt_s\(14) & ( (\cir1|guru|step|cnt_s\(0) & (!\cir1|guru|step|cnt_s\(13) & (!\cir1|guru|step|cnt_s\(2) & !\cir1|guru|step|cnt_s\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(0),
	datab => \cir1|guru|step|ALT_INV_cnt_s\(13),
	datac => \cir1|guru|step|ALT_INV_cnt_s\(2),
	datad => \cir1|guru|step|ALT_INV_cnt_s\(11),
	datae => \cir1|guru|step|ALT_INV_cnt_s\(12),
	dataf => \cir1|guru|step|ALT_INV_cnt_s\(14),
	combout => \cir1|guru|step|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y33_N18
\cir1|guru|step|cnt_s[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_s[9]~0_combout\ = ( \cir1|guru|step|Equal0~2_combout\ & ( \cir1|guru|step|Equal0~0_combout\ & ( ((!\cir1|guru|step|cnt_s\(5) & (\cir1|guru|step|cnt_s\(8) & \cir1|guru|step|Equal0~1_combout\))) # (\res~input_o\) ) ) ) # ( 
-- !\cir1|guru|step|Equal0~2_combout\ & ( \cir1|guru|step|Equal0~0_combout\ & ( \res~input_o\ ) ) ) # ( \cir1|guru|step|Equal0~2_combout\ & ( !\cir1|guru|step|Equal0~0_combout\ & ( \res~input_o\ ) ) ) # ( !\cir1|guru|step|Equal0~2_combout\ & ( 
-- !\cir1|guru|step|Equal0~0_combout\ & ( \res~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(5),
	datab => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datac => \cir1|guru|step|ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_res~input_o\,
	datae => \cir1|guru|step|ALT_INV_Equal0~2_combout\,
	dataf => \cir1|guru|step|ALT_INV_Equal0~0_combout\,
	combout => \cir1|guru|step|cnt_s[9]~0_combout\);

-- Location: FF_X85_Y33_N5
\cir1|guru|step|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~45_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(1));

-- Location: LABCELL_X85_Y33_N6
\cir1|guru|step|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~21_sumout\ = SUM(( \cir1|guru|step|cnt_s\(2) ) + ( GND ) + ( \cir1|guru|step|Add0~46\ ))
-- \cir1|guru|step|Add0~22\ = CARRY(( \cir1|guru|step|cnt_s\(2) ) + ( GND ) + ( \cir1|guru|step|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|step|ALT_INV_cnt_s\(2),
	cin => \cir1|guru|step|Add0~46\,
	sumout => \cir1|guru|step|Add0~21_sumout\,
	cout => \cir1|guru|step|Add0~22\);

-- Location: FF_X85_Y33_N8
\cir1|guru|step|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~21_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(2));

-- Location: LABCELL_X85_Y33_N9
\cir1|guru|step|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~41_sumout\ = SUM(( \cir1|guru|step|cnt_s\(3) ) + ( GND ) + ( \cir1|guru|step|Add0~22\ ))
-- \cir1|guru|step|Add0~42\ = CARRY(( \cir1|guru|step|cnt_s\(3) ) + ( GND ) + ( \cir1|guru|step|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(3),
	cin => \cir1|guru|step|Add0~22\,
	sumout => \cir1|guru|step|Add0~41_sumout\,
	cout => \cir1|guru|step|Add0~42\);

-- Location: FF_X85_Y33_N11
\cir1|guru|step|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~41_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(3));

-- Location: LABCELL_X85_Y33_N12
\cir1|guru|step|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~37_sumout\ = SUM(( \cir1|guru|step|cnt_s\(4) ) + ( GND ) + ( \cir1|guru|step|Add0~42\ ))
-- \cir1|guru|step|Add0~38\ = CARRY(( \cir1|guru|step|cnt_s\(4) ) + ( GND ) + ( \cir1|guru|step|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|step|ALT_INV_cnt_s\(4),
	cin => \cir1|guru|step|Add0~42\,
	sumout => \cir1|guru|step|Add0~37_sumout\,
	cout => \cir1|guru|step|Add0~38\);

-- Location: FF_X85_Y33_N14
\cir1|guru|step|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~37_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(4));

-- Location: LABCELL_X85_Y33_N15
\cir1|guru|step|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~5_sumout\ = SUM(( \cir1|guru|step|cnt_s\(5) ) + ( GND ) + ( \cir1|guru|step|Add0~38\ ))
-- \cir1|guru|step|Add0~6\ = CARRY(( \cir1|guru|step|cnt_s\(5) ) + ( GND ) + ( \cir1|guru|step|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(5),
	cin => \cir1|guru|step|Add0~38\,
	sumout => \cir1|guru|step|Add0~5_sumout\,
	cout => \cir1|guru|step|Add0~6\);

-- Location: FF_X85_Y33_N17
\cir1|guru|step|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~5_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(5));

-- Location: LABCELL_X85_Y33_N18
\cir1|guru|step|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~53_sumout\ = SUM(( \cir1|guru|step|cnt_s\(6) ) + ( GND ) + ( \cir1|guru|step|Add0~6\ ))
-- \cir1|guru|step|Add0~54\ = CARRY(( \cir1|guru|step|cnt_s\(6) ) + ( GND ) + ( \cir1|guru|step|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(6),
	cin => \cir1|guru|step|Add0~6\,
	sumout => \cir1|guru|step|Add0~53_sumout\,
	cout => \cir1|guru|step|Add0~54\);

-- Location: FF_X85_Y33_N20
\cir1|guru|step|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~53_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(6));

-- Location: LABCELL_X85_Y33_N21
\cir1|guru|step|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~49_sumout\ = SUM(( \cir1|guru|step|cnt_s\(7) ) + ( GND ) + ( \cir1|guru|step|Add0~54\ ))
-- \cir1|guru|step|Add0~50\ = CARRY(( \cir1|guru|step|cnt_s\(7) ) + ( GND ) + ( \cir1|guru|step|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|step|ALT_INV_cnt_s\(7),
	cin => \cir1|guru|step|Add0~54\,
	sumout => \cir1|guru|step|Add0~49_sumout\,
	cout => \cir1|guru|step|Add0~50\);

-- Location: FF_X85_Y33_N23
\cir1|guru|step|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~49_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(7));

-- Location: LABCELL_X85_Y33_N24
\cir1|guru|step|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Add0~1_sumout\ = SUM(( \cir1|guru|step|cnt_s\(8) ) + ( GND ) + ( \cir1|guru|step|Add0~50\ ))
-- \cir1|guru|step|Add0~2\ = CARRY(( \cir1|guru|step|cnt_s\(8) ) + ( GND ) + ( \cir1|guru|step|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|step|ALT_INV_cnt_s\(8),
	cin => \cir1|guru|step|Add0~50\,
	sumout => \cir1|guru|step|Add0~1_sumout\,
	cout => \cir1|guru|step|Add0~2\);

-- Location: FF_X85_Y33_N26
\cir1|guru|step|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~1_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(8));

-- Location: FF_X85_Y33_N29
\cir1|guru|step|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|Add0~57_sumout\,
	sclr => \cir1|guru|step|cnt_s[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_s\(9));

-- Location: MLABCELL_X84_Y33_N57
\cir1|guru|step|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Equal1~1_combout\ = ( \cir1|guru|step|cnt_s\(7) & ( !\cir1|guru|step|cnt_s\(6) & ( (\cir1|guru|step|cnt_s\(9) & (!\cir1|guru|step|cnt_s\(8) & !\cir1|guru|step|cnt_s\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(9),
	datac => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datad => \cir1|guru|step|ALT_INV_cnt_s\(10),
	datae => \cir1|guru|step|ALT_INV_cnt_s\(7),
	dataf => \cir1|guru|step|ALT_INV_cnt_s\(6),
	combout => \cir1|guru|step|Equal1~1_combout\);

-- Location: MLABCELL_X84_Y33_N24
\cir1|guru|step|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|process_0~1_combout\ = ( \cir1|guru|step|cnt_s\(7) & ( \cir1|guru|step|cnt_s\(6) & ( (!\cir1|guru|step|cnt_s\(10) & \cir1|guru|step|cnt_s\(9)) ) ) ) # ( !\cir1|guru|step|cnt_s\(7) & ( \cir1|guru|step|cnt_s\(6) & ( 
-- (!\cir1|guru|step|cnt_s\(10) & !\cir1|guru|step|cnt_s\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(10),
	datac => \cir1|guru|step|ALT_INV_cnt_s\(9),
	datae => \cir1|guru|step|ALT_INV_cnt_s\(7),
	dataf => \cir1|guru|step|ALT_INV_cnt_s\(6),
	combout => \cir1|guru|step|process_0~1_combout\);

-- Location: LABCELL_X83_Y33_N12
\cir1|guru|step|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|Equal1~0_combout\ = ( \cir1|guru|step|Equal0~0_combout\ & ( (!\cir1|guru|step|cnt_s\(5) & \cir1|guru|step|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|step|ALT_INV_cnt_s\(5),
	datac => \cir1|guru|step|ALT_INV_Equal0~1_combout\,
	dataf => \cir1|guru|step|ALT_INV_Equal0~0_combout\,
	combout => \cir1|guru|step|Equal1~0_combout\);

-- Location: MLABCELL_X84_Y33_N9
\cir1|guru|step|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|process_0~0_combout\ = ( \cir1|guru|step|cnt_s\(7) & ( \cir1|guru|step|cnt_s\(6) & ( (!\cir1|guru|step|cnt_s\(9) & (\cir1|guru|step|cnt_s\(8) & !\cir1|guru|step|cnt_s\(10))) ) ) ) # ( !\cir1|guru|step|cnt_s\(7) & ( 
-- \cir1|guru|step|cnt_s\(6) & ( (!\cir1|guru|step|cnt_s\(9) & (!\cir1|guru|step|cnt_s\(8) & \cir1|guru|step|cnt_s\(10))) ) ) ) # ( \cir1|guru|step|cnt_s\(7) & ( !\cir1|guru|step|cnt_s\(6) & ( (!\cir1|guru|step|cnt_s\(9) & (!\cir1|guru|step|cnt_s\(8) & 
-- !\cir1|guru|step|cnt_s\(10))) ) ) ) # ( !\cir1|guru|step|cnt_s\(7) & ( !\cir1|guru|step|cnt_s\(6) & ( (\cir1|guru|step|cnt_s\(9) & (\cir1|guru|step|cnt_s\(8) & !\cir1|guru|step|cnt_s\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000101000000000000000000000101000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_s\(9),
	datac => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datad => \cir1|guru|step|ALT_INV_cnt_s\(10),
	datae => \cir1|guru|step|ALT_INV_cnt_s\(7),
	dataf => \cir1|guru|step|ALT_INV_cnt_s\(6),
	combout => \cir1|guru|step|process_0~0_combout\);

-- Location: LABCELL_X83_Y33_N45
\cir1|guru|step|cnt_v4_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_v4_s~0_combout\ = ( \cir1|guru|step|process_0~0_combout\ & ( \cir1|guru|step|Equal0~0_combout\ & ( (\cir1|guru|step|Equal0~1_combout\ & (\cir1|guru|step|cnt_s\(5) & \cir1|guru|step|cnt_v4_s~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_Equal0~1_combout\,
	datab => \cir1|guru|step|ALT_INV_cnt_s\(5),
	datac => \cir1|guru|step|ALT_INV_cnt_v4_s~q\,
	datae => \cir1|guru|step|ALT_INV_process_0~0_combout\,
	dataf => \cir1|guru|step|ALT_INV_Equal0~0_combout\,
	combout => \cir1|guru|step|cnt_v4_s~0_combout\);

-- Location: MLABCELL_X82_Y33_N3
\cir1|guru|step|cnt_v4_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_v4_s~1_combout\ = ( \cir1|guru|step|Equal0~2_combout\ & ( \cir1|guru|step|cnt_v4_s~0_combout\ ) ) # ( !\cir1|guru|step|Equal0~2_combout\ & ( \cir1|guru|step|cnt_v4_s~0_combout\ ) ) # ( \cir1|guru|step|Equal0~2_combout\ & ( 
-- !\cir1|guru|step|cnt_v4_s~0_combout\ & ( (\cir1|guru|step|Equal1~0_combout\ & ((\cir1|guru|step|cnt_s\(8)) # (\cir1|guru|step|Equal1~1_combout\))) ) ) ) # ( !\cir1|guru|step|Equal0~2_combout\ & ( !\cir1|guru|step|cnt_v4_s~0_combout\ & ( 
-- (\cir1|guru|step|Equal1~0_combout\ & (((\cir1|guru|step|process_0~1_combout\ & \cir1|guru|step|cnt_s\(8))) # (\cir1|guru|step|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000111000001010000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_Equal1~1_combout\,
	datab => \cir1|guru|step|ALT_INV_process_0~1_combout\,
	datac => \cir1|guru|step|ALT_INV_Equal1~0_combout\,
	datad => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datae => \cir1|guru|step|ALT_INV_Equal0~2_combout\,
	dataf => \cir1|guru|step|ALT_INV_cnt_v4_s~0_combout\,
	combout => \cir1|guru|step|cnt_v4_s~1_combout\);

-- Location: FF_X82_Y33_N5
\cir1|guru|step|cnt_v4_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|cnt_v4_s~1_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_v4_s~q\);

-- Location: IOIBUF_X89_Y36_N55
\sys_speed[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(2),
	o => \sys_speed[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\sys_speed[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(3),
	o => \sys_speed[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\sys_speed[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(1),
	o => \sys_speed[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\sys_speed[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(0),
	o => \sys_speed[0]~input_o\);

-- Location: MLABCELL_X82_Y33_N6
\cir1|guru|button|speed_sync_s~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|button|speed_sync_s~11_combout\ = ( \cir1|guru|button|speed_sync_s.TWO_X~q\ & ( \sys_speed[0]~input_o\ & ( !\enable~input_o\ ) ) ) # ( \cir1|guru|button|speed_sync_s.TWO_X~q\ & ( !\sys_speed[0]~input_o\ & ( (!\enable~input_o\) # 
-- ((!\sys_speed[2]~input_o\ & (!\sys_speed[3]~input_o\ & \sys_speed[1]~input_o\))) ) ) ) # ( !\cir1|guru|button|speed_sync_s.TWO_X~q\ & ( !\sys_speed[0]~input_o\ & ( (!\sys_speed[2]~input_o\ & (!\sys_speed[3]~input_o\ & (\enable~input_o\ & 
-- \sys_speed[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111100001111100000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sys_speed[2]~input_o\,
	datab => \ALT_INV_sys_speed[3]~input_o\,
	datac => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_sys_speed[1]~input_o\,
	datae => \cir1|guru|button|ALT_INV_speed_sync_s.TWO_X~q\,
	dataf => \ALT_INV_sys_speed[0]~input_o\,
	combout => \cir1|guru|button|speed_sync_s~11_combout\);

-- Location: FF_X82_Y33_N8
\cir1|guru|button|speed_sync_s.TWO_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|button|speed_sync_s~11_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|button|speed_sync_s.TWO_X~q\);

-- Location: LABCELL_X83_Y33_N18
\cir1|guru|step|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|process_0~2_combout\ = ( \cir1|guru|step|process_0~0_combout\ & ( \cir1|guru|step|cnt_s\(5) & ( (\cir1|guru|step|Equal0~0_combout\ & \cir1|guru|step|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_Equal0~0_combout\,
	datac => \cir1|guru|step|ALT_INV_Equal0~1_combout\,
	datae => \cir1|guru|step|ALT_INV_process_0~0_combout\,
	dataf => \cir1|guru|step|ALT_INV_cnt_s\(5),
	combout => \cir1|guru|step|process_0~2_combout\);

-- Location: MLABCELL_X82_Y33_N0
\cir1|guru|step|cnt_v8_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_v8_s~0_combout\ = ( \cir1|guru|step|Equal0~2_combout\ & ( \cir1|guru|step|process_0~2_combout\ ) ) # ( !\cir1|guru|step|Equal0~2_combout\ & ( \cir1|guru|step|process_0~2_combout\ ) ) # ( \cir1|guru|step|Equal0~2_combout\ & ( 
-- !\cir1|guru|step|process_0~2_combout\ & ( (\cir1|guru|step|Equal1~0_combout\ & ((\cir1|guru|step|cnt_s\(8)) # (\cir1|guru|step|Equal1~1_combout\))) ) ) ) # ( !\cir1|guru|step|Equal0~2_combout\ & ( !\cir1|guru|step|process_0~2_combout\ & ( 
-- (\cir1|guru|step|Equal1~0_combout\ & (((\cir1|guru|step|process_0~1_combout\ & \cir1|guru|step|cnt_s\(8))) # (\cir1|guru|step|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_Equal1~1_combout\,
	datab => \cir1|guru|step|ALT_INV_process_0~1_combout\,
	datac => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datad => \cir1|guru|step|ALT_INV_Equal1~0_combout\,
	datae => \cir1|guru|step|ALT_INV_Equal0~2_combout\,
	dataf => \cir1|guru|step|ALT_INV_process_0~2_combout\,
	combout => \cir1|guru|step|cnt_v8_s~0_combout\);

-- Location: FF_X82_Y33_N2
\cir1|guru|step|cnt_v8_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|cnt_v8_s~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_v8_s~q\);

-- Location: MLABCELL_X82_Y33_N12
\cir1|guru|button|speed_sync_s~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|button|speed_sync_s~12_combout\ = ( \cir1|guru|button|speed_sync_s.FOUR_X~q\ & ( \sys_speed[0]~input_o\ & ( !\enable~input_o\ ) ) ) # ( \cir1|guru|button|speed_sync_s.FOUR_X~q\ & ( !\sys_speed[0]~input_o\ & ( (!\enable~input_o\) # 
-- ((\sys_speed[2]~input_o\ & (!\sys_speed[3]~input_o\ & !\sys_speed[1]~input_o\))) ) ) ) # ( !\cir1|guru|button|speed_sync_s.FOUR_X~q\ & ( !\sys_speed[0]~input_o\ & ( (\sys_speed[2]~input_o\ & (!\sys_speed[3]~input_o\ & (\enable~input_o\ & 
-- !\sys_speed[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111101001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sys_speed[2]~input_o\,
	datab => \ALT_INV_sys_speed[3]~input_o\,
	datac => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_sys_speed[1]~input_o\,
	datae => \cir1|guru|button|ALT_INV_speed_sync_s.FOUR_X~q\,
	dataf => \ALT_INV_sys_speed[0]~input_o\,
	combout => \cir1|guru|button|speed_sync_s~12_combout\);

-- Location: FF_X82_Y33_N14
\cir1|guru|button|speed_sync_s.FOUR_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|button|speed_sync_s~12_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|button|speed_sync_s.FOUR_X~q\);

-- Location: MLABCELL_X82_Y33_N42
\cir1|guru|button|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|button|Mux0~0_combout\ = ( \sys_speed[1]~input_o\ & ( (!\sys_speed[3]~input_o\ & (!\sys_speed[0]~input_o\ & !\sys_speed[2]~input_o\)) ) ) # ( !\sys_speed[1]~input_o\ & ( (!\sys_speed[0]~input_o\ & (!\sys_speed[3]~input_o\ $ 
-- (!\sys_speed[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sys_speed[3]~input_o\,
	datac => \ALT_INV_sys_speed[0]~input_o\,
	datad => \ALT_INV_sys_speed[2]~input_o\,
	dataf => \ALT_INV_sys_speed[1]~input_o\,
	combout => \cir1|guru|button|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y33_N54
\cir1|guru|button|speed_sync_s~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|button|speed_sync_s~10_combout\ = ( \cir1|guru|button|speed_sync_s.ONE_X~q\ & ( !\res~input_o\ & ( (!\enable~input_o\) # (\cir1|guru|button|Mux0~0_combout\) ) ) ) # ( !\cir1|guru|button|speed_sync_s.ONE_X~q\ & ( !\res~input_o\ & ( 
-- (\enable~input_o\ & \cir1|guru|button|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \cir1|guru|button|ALT_INV_Mux0~0_combout\,
	datae => \cir1|guru|button|ALT_INV_speed_sync_s.ONE_X~q\,
	dataf => \ALT_INV_res~input_o\,
	combout => \cir1|guru|button|speed_sync_s~10_combout\);

-- Location: FF_X82_Y33_N56
\cir1|guru|button|speed_sync_s.ONE_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|button|speed_sync_s~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|button|speed_sync_s.ONE_X~q\);

-- Location: LABCELL_X83_Y33_N51
\cir1|guru|step|cnt_v1_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_v1_s~0_combout\ = ( \cir1|guru|step|process_0~1_combout\ & ( \cir1|guru|step|Equal0~0_combout\ & ( (\cir1|guru|step|Equal0~1_combout\ & ((!\cir1|guru|step|cnt_s\(5) & (\cir1|guru|step|cnt_s\(8))) # (\cir1|guru|step|cnt_s\(5) & 
-- ((\cir1|guru|step|process_0~0_combout\))))) ) ) ) # ( !\cir1|guru|step|process_0~1_combout\ & ( \cir1|guru|step|Equal0~0_combout\ & ( (\cir1|guru|step|Equal0~1_combout\ & (\cir1|guru|step|cnt_s\(5) & \cir1|guru|step|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_Equal0~1_combout\,
	datab => \cir1|guru|step|ALT_INV_cnt_s\(5),
	datac => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datad => \cir1|guru|step|ALT_INV_process_0~0_combout\,
	datae => \cir1|guru|step|ALT_INV_process_0~1_combout\,
	dataf => \cir1|guru|step|ALT_INV_Equal0~0_combout\,
	combout => \cir1|guru|step|cnt_v1_s~0_combout\);

-- Location: LABCELL_X83_Y33_N24
\cir1|guru|step|cnt_v2_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_v2_s~0_combout\ = ( \cir1|guru|step|cnt_v2_s~q\ & ( \cir1|guru|step|Equal1~0_combout\ & ( (((\cir1|guru|step|Equal0~2_combout\ & \cir1|guru|step|cnt_s\(8))) # (\cir1|guru|step|cnt_v1_s~0_combout\)) # (\cir1|guru|step|Equal1~1_combout\) 
-- ) ) ) # ( !\cir1|guru|step|cnt_v2_s~q\ & ( \cir1|guru|step|Equal1~0_combout\ & ( ((\cir1|guru|step|Equal0~2_combout\ & \cir1|guru|step|cnt_s\(8))) # (\cir1|guru|step|Equal1~1_combout\) ) ) ) # ( \cir1|guru|step|cnt_v2_s~q\ & ( 
-- !\cir1|guru|step|Equal1~0_combout\ & ( \cir1|guru|step|cnt_v1_s~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101011101110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_Equal1~1_combout\,
	datab => \cir1|guru|step|ALT_INV_Equal0~2_combout\,
	datac => \cir1|guru|step|ALT_INV_cnt_v1_s~0_combout\,
	datad => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datae => \cir1|guru|step|ALT_INV_cnt_v2_s~q\,
	dataf => \cir1|guru|step|ALT_INV_Equal1~0_combout\,
	combout => \cir1|guru|step|cnt_v2_s~0_combout\);

-- Location: FF_X83_Y33_N26
\cir1|guru|step|cnt_v2_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|cnt_v2_s~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_v2_s~q\);

-- Location: MLABCELL_X82_Y33_N18
\cir1|guru|step|cnt_disc_rdy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_disc_rdy~0_combout\ = ( \cir1|guru|button|speed_sync_s.ONE_X~q\ & ( \cir1|guru|step|cnt_v2_s~q\ & ( ((!\cir1|guru|button|speed_sync_s.FOUR_X~q\ & ((\cir1|guru|step|cnt_v8_s~q\))) # (\cir1|guru|button|speed_sync_s.FOUR_X~q\ & 
-- (\cir1|guru|step|cnt_v4_s~q\))) # (\cir1|guru|button|speed_sync_s.TWO_X~q\) ) ) ) # ( \cir1|guru|button|speed_sync_s.ONE_X~q\ & ( !\cir1|guru|step|cnt_v2_s~q\ & ( (!\cir1|guru|button|speed_sync_s.TWO_X~q\ & ((!\cir1|guru|button|speed_sync_s.FOUR_X~q\ & 
-- ((\cir1|guru|step|cnt_v8_s~q\))) # (\cir1|guru|button|speed_sync_s.FOUR_X~q\ & (\cir1|guru|step|cnt_v4_s~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000100010000000000000000000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_v4_s~q\,
	datab => \cir1|guru|button|ALT_INV_speed_sync_s.TWO_X~q\,
	datac => \cir1|guru|step|ALT_INV_cnt_v8_s~q\,
	datad => \cir1|guru|button|ALT_INV_speed_sync_s.FOUR_X~q\,
	datae => \cir1|guru|button|ALT_INV_speed_sync_s.ONE_X~q\,
	dataf => \cir1|guru|step|ALT_INV_cnt_v2_s~q\,
	combout => \cir1|guru|step|cnt_disc_rdy~0_combout\);

-- Location: LABCELL_X83_Y33_N30
\cir1|guru|step|cnt_v1_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_v1_s~1_combout\ = ( \cir1|guru|step|cnt_v1_s~q\ & ( \cir1|guru|step|Equal1~0_combout\ & ( (((\cir1|guru|step|Equal0~2_combout\ & \cir1|guru|step|cnt_s\(8))) # (\cir1|guru|step|cnt_v1_s~0_combout\)) # (\cir1|guru|step|Equal1~1_combout\) 
-- ) ) ) # ( !\cir1|guru|step|cnt_v1_s~q\ & ( \cir1|guru|step|Equal1~0_combout\ & ( (\cir1|guru|step|Equal0~2_combout\ & \cir1|guru|step|cnt_s\(8)) ) ) ) # ( \cir1|guru|step|cnt_v1_s~q\ & ( !\cir1|guru|step|Equal1~0_combout\ & ( 
-- \cir1|guru|step|cnt_v1_s~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000001100110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_Equal1~1_combout\,
	datab => \cir1|guru|step|ALT_INV_Equal0~2_combout\,
	datac => \cir1|guru|step|ALT_INV_cnt_v1_s~0_combout\,
	datad => \cir1|guru|step|ALT_INV_cnt_s\(8),
	datae => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	dataf => \cir1|guru|step|ALT_INV_Equal1~0_combout\,
	combout => \cir1|guru|step|cnt_v1_s~1_combout\);

-- Location: FF_X83_Y33_N32
\cir1|guru|step|cnt_v1_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|step|cnt_v1_s~1_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|step|cnt_v1_s~q\);

-- Location: MLABCELL_X82_Y33_N51
\cir1|guru|step|cnt_disc_rdy~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|step|cnt_disc_rdy~1_combout\ = ( \cir1|guru|step|cnt_v1_s~q\ & ( !\cir1|guru|button|speed_sync_s.ONE_X~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|button|ALT_INV_speed_sync_s.ONE_X~q\,
	dataf => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	combout => \cir1|guru|step|cnt_disc_rdy~1_combout\);

-- Location: LABCELL_X81_Y33_N33
\cir2|fsm|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector12~1_combout\ = ( \cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( \cir1|guru|step|cnt_disc_rdy~1_combout\ & ( (!\cir2|fsm|Selector12~0_combout\) # ((\cir2|fsm|STATE.WAIT_COUNT_DISC~q\ & !\enable~input_o\)) ) ) ) # ( 
-- !\cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( \cir1|guru|step|cnt_disc_rdy~1_combout\ & ( (!\cir2|fsm|Selector12~0_combout\) # (\cir2|fsm|STATE.WAIT_COUNT_DISC~q\) ) ) ) # ( \cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( 
-- !\cir1|guru|step|cnt_disc_rdy~1_combout\ & ( (!\cir2|fsm|Selector12~0_combout\) # ((\cir2|fsm|STATE.WAIT_COUNT_DISC~q\ & ((!\cir1|guru|step|cnt_disc_rdy~0_combout\) # (!\enable~input_o\)))) ) ) ) # ( !\cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( 
-- !\cir1|guru|step|cnt_disc_rdy~1_combout\ & ( (!\cir2|fsm|Selector12~0_combout\) # (\cir2|fsm|STATE.WAIT_COUNT_DISC~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110011011101110111011101110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	datab => \cir2|fsm|ALT_INV_Selector12~0_combout\,
	datac => \cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\,
	datad => \ALT_INV_enable~input_o\,
	datae => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	dataf => \cir1|guru|step|ALT_INV_cnt_disc_rdy~1_combout\,
	combout => \cir2|fsm|Selector12~1_combout\);

-- Location: LABCELL_X81_Y33_N24
\cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\ = ( \cir2|fsm|Selector12~1_combout\ & ( (\cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\) # (\cir2|fsm|Selector18~0_combout\) ) ) # ( !\cir2|fsm|Selector12~1_combout\ & ( 
-- (!\cir2|fsm|Selector18~0_combout\ & \cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	datac => \cir2|fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\,
	dataf => \cir2|fsm|ALT_INV_Selector12~1_combout\,
	combout => \cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\);

-- Location: LABCELL_X81_Y33_N42
\cir2|fsm|STATE~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~20_combout\ = ( \cir2|fsm|NEXT_STATE.WAIT_COUNT_DISC_556~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.WAIT_COUNT_DISC_556~combout\,
	combout => \cir2|fsm|STATE~20_combout\);

-- Location: FF_X81_Y33_N44
\cir2|fsm|STATE.WAIT_COUNT_DISC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.WAIT_COUNT_DISC~q\);

-- Location: MLABCELL_X82_Y33_N33
\cir2|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector11~0_combout\ = ( \cir1|guru|step|cnt_disc_rdy~1_combout\ & ( \cir1|guru|step|cnt_disc_rdy~0_combout\ & ( (\cir2|fsm|STATE.WAIT_COUNT_DISC~q\ & (\enable~input_o\ & \cir1|guru|base|control|main|STATE.CHECK_END~q\)) ) ) ) # ( 
-- !\cir1|guru|step|cnt_disc_rdy~1_combout\ & ( \cir1|guru|step|cnt_disc_rdy~0_combout\ & ( (\cir2|fsm|STATE.WAIT_COUNT_DISC~q\ & (\enable~input_o\ & \cir1|guru|base|control|main|STATE.CHECK_END~q\)) ) ) ) # ( \cir1|guru|step|cnt_disc_rdy~1_combout\ & ( 
-- !\cir1|guru|step|cnt_disc_rdy~0_combout\ & ( (\cir2|fsm|STATE.WAIT_COUNT_DISC~q\ & (\enable~input_o\ & \cir1|guru|base|control|main|STATE.CHECK_END~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	datac => \ALT_INV_enable~input_o\,
	datad => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datae => \cir1|guru|step|ALT_INV_cnt_disc_rdy~1_combout\,
	dataf => \cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\,
	combout => \cir2|fsm|Selector11~0_combout\);

-- Location: MLABCELL_X82_Y33_N45
\cir2|fsm|NEXT_STATE.INCR_537\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.INCR_537~combout\ = ( \cir2|fsm|Selector11~0_combout\ & ( (\cir2|fsm|NEXT_STATE.INCR_537~combout\) # (\cir2|fsm|Selector18~0_combout\) ) ) # ( !\cir2|fsm|Selector11~0_combout\ & ( (!\cir2|fsm|Selector18~0_combout\ & 
-- \cir2|fsm|NEXT_STATE.INCR_537~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	datad => \cir2|fsm|ALT_INV_NEXT_STATE.INCR_537~combout\,
	dataf => \cir2|fsm|ALT_INV_Selector11~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.INCR_537~combout\);

-- Location: MLABCELL_X82_Y33_N24
\cir2|fsm|STATE~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~17_combout\ = ( \cir2|fsm|NEXT_STATE.INCR_537~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.INCR_537~combout\,
	combout => \cir2|fsm|STATE~17_combout\);

-- Location: FF_X81_Y33_N32
\cir2|fsm|STATE.INCR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir2|fsm|STATE~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.INCR~q\);

-- Location: MLABCELL_X82_Y33_N48
\cir2|dp|rb|reg_GURU|q_s[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\ = ((\cir2|fsm|STATE.INCR~q\) # (\cir2|fsm|STATE.RAND~q\)) # (\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datac => \cir2|fsm|ALT_INV_STATE.RAND~q\,
	datad => \cir2|fsm|ALT_INV_STATE.INCR~q\,
	combout => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\);

-- Location: FF_X83_Y34_N47
\cir2|dp|rb|reg_PRE_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_PRE_GURU|q_s~5_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_PRE_GURU|q_s\(1));

-- Location: LABCELL_X81_Y35_N54
\cir1|guru|base|control|guru|STATE~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~14_combout\ = ( \cir1|guru|base|control|guru|STATE.RAND~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.RAND~q\,
	combout => \cir1|guru|base|control|guru|STATE~14_combout\);

-- Location: FF_X81_Y35_N8
\cir1|guru|base|control|guru|STATE.WRITE_RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|control|guru|STATE~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.WRITE_RAND~q\);

-- Location: LABCELL_X81_Y35_N27
\cir1|guru|base|control|init|STATE~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|init|STATE~7_combout\ = ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\res~input_o\ & (!\cir1|guru|base|control|init|STATE.DONE~q\ & \cir1|guru|base|control|init|STATE.IDLE~q\)) ) ) # ( 
-- !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\res~input_o\ & !\cir1|guru|base|control|init|STATE.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.DONE~q\,
	datad => \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|control|init|STATE~7_combout\);

-- Location: FF_X81_Y35_N29
\cir1|guru|base|control|init|STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|init|STATE~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|init|STATE.IDLE~q\);

-- Location: LABCELL_X81_Y35_N36
\cir1|guru|base|data|rb|reg_INIT|q_s[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\ = ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \res~input_o\ ) ) # ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( ((\cir1|guru|base|control|init|STATE.IDLE~q\ & 
-- !\cir1|guru|base|control|init|STATE.DONE~q\)) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\,
	datad => \cir1|guru|base|control|init|ALT_INV_STATE.DONE~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\);

-- Location: FF_X82_Y34_N4
\cir1|guru|base|data|rb|reg_INIT|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[6]~9_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(6));

-- Location: LABCELL_X81_Y35_N39
\cir1|guru|base|control|guru|STATE~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~19_combout\ = (!\res~input_o\ & (\cir1|guru|step|cnt_v1_s~q\ & (\cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\ & \cir1|guru|base|control|main|STATE.CHECK_END~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datab => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	datad => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \cir1|guru|base|control|guru|STATE~19_combout\);

-- Location: FF_X81_Y35_N41
\cir1|guru|base|control|guru|STATE.INCR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|guru|STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.INCR~q\);

-- Location: LABCELL_X81_Y35_N45
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\ = ( \cir1|guru|base|control|guru|STATE.INCR~q\ & ( (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # (\res~input_o\) ) ) # ( !\cir1|guru|base|control|guru|STATE.INCR~q\ & ( 
-- ((\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & \cir1|guru|base|control|guru|STATE.RAND~q\)) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.RAND~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.INCR~q\,
	combout => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\);

-- Location: FF_X83_Y34_N59
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(6),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6));

-- Location: LABCELL_X81_Y36_N54
\cir1|ref|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector2~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( (!\cir1|ref|Equal0~6_combout\) # (\cir1|ref|stateG_reg.rdy1~q\) ) ) # ( !\cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|stateG_reg.rdy1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_stateG_reg.rdy1~q\,
	datad => \cir1|ref|ALT_INV_Equal0~6_combout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector2~0_combout\);

-- Location: FF_X80_Y36_N26
\cir1|ref|stateG_reg.waitNClk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|Selector2~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateG_reg.waitNClk~q\);

-- Location: LABCELL_X79_Y37_N0
\cir1|ref|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~5_sumout\ = SUM(( \cir1|ref|waitNGCount\(0) ) + ( VCC ) + ( !VCC ))
-- \cir1|ref|Add0~6\ = CARRY(( \cir1|ref|waitNGCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(0),
	cin => GND,
	sumout => \cir1|ref|Add0~5_sumout\,
	cout => \cir1|ref|Add0~6\);

-- Location: LABCELL_X81_Y36_N27
\cir1|ref|Selector80~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector80~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add0~5_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector80~0_combout\);

-- Location: LABCELL_X81_Y36_N48
\cir1|ref|waitNGCountNext[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(0) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|Selector80~0_combout\ ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|Selector80~0_combout\ & ( \cir1|ref|waitNGCountNext\(0) ) ) ) # ( !\cir1|ref|tick_guru~combout\ & ( 
-- !\cir1|ref|Selector80~0_combout\ & ( \cir1|ref|waitNGCountNext\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCountNext\(0),
	datae => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_Selector80~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(0));

-- Location: FF_X79_Y37_N2
\cir1|ref|waitNGCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(0),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(0));

-- Location: LABCELL_X79_Y37_N3
\cir1|ref|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~1_sumout\ = SUM(( \cir1|ref|waitNGCount\(1) ) + ( VCC ) + ( \cir1|ref|Add0~6\ ))
-- \cir1|ref|Add0~2\ = CARRY(( \cir1|ref|waitNGCount\(1) ) + ( VCC ) + ( \cir1|ref|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(1),
	cin => \cir1|ref|Add0~6\,
	sumout => \cir1|ref|Add0~1_sumout\,
	cout => \cir1|ref|Add0~2\);

-- Location: LABCELL_X80_Y36_N9
\cir1|ref|Selector82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector82~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add0~1_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector82~0_combout\);

-- Location: LABCELL_X80_Y36_N51
\cir1|ref|waitNGCountNext[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(1) = ( \cir1|ref|Selector82~0_combout\ & ( (\cir1|ref|tick_guru~combout\) # (\cir1|ref|waitNGCountNext\(1)) ) ) # ( !\cir1|ref|Selector82~0_combout\ & ( (\cir1|ref|waitNGCountNext\(1) & !\cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCountNext\(1),
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_Selector82~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(1));

-- Location: FF_X79_Y37_N5
\cir1|ref|waitNGCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(1),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(1));

-- Location: LABCELL_X79_Y37_N6
\cir1|ref|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~29_sumout\ = SUM(( \cir1|ref|waitNGCount\(2) ) + ( VCC ) + ( \cir1|ref|Add0~2\ ))
-- \cir1|ref|Add0~30\ = CARRY(( \cir1|ref|waitNGCount\(2) ) + ( VCC ) + ( \cir1|ref|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNGCount\(2),
	cin => \cir1|ref|Add0~2\,
	sumout => \cir1|ref|Add0~29_sumout\,
	cout => \cir1|ref|Add0~30\);

-- Location: LABCELL_X80_Y36_N48
\cir1|ref|Selector83~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector83~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~29_sumout\ ) ) # ( !\cir1|ref|stateG_reg.waitNClk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~29_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector83~0_combout\);

-- Location: LABCELL_X80_Y36_N36
\cir1|ref|waitNGCountNext[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(2) = ( \cir1|ref|Selector83~0_combout\ & ( (\cir1|ref|waitNGCountNext\(2)) # (\cir1|ref|tick_guru~combout\) ) ) # ( !\cir1|ref|Selector83~0_combout\ & ( (!\cir1|ref|tick_guru~combout\ & \cir1|ref|waitNGCountNext\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(2),
	dataf => \cir1|ref|ALT_INV_Selector83~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(2));

-- Location: FF_X79_Y37_N8
\cir1|ref|waitNGCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(2),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(2));

-- Location: LABCELL_X79_Y37_N9
\cir1|ref|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~25_sumout\ = SUM(( \cir1|ref|waitNGCount\(3) ) + ( VCC ) + ( \cir1|ref|Add0~30\ ))
-- \cir1|ref|Add0~26\ = CARRY(( \cir1|ref|waitNGCount\(3) ) + ( VCC ) + ( \cir1|ref|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(3),
	cin => \cir1|ref|Add0~30\,
	sumout => \cir1|ref|Add0~25_sumout\,
	cout => \cir1|ref|Add0~26\);

-- Location: MLABCELL_X78_Y36_N36
\cir1|ref|Selector84~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector84~0_combout\ = ( \cir1|ref|Add0~25_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add0~25_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector84~0_combout\);

-- Location: LABCELL_X79_Y36_N42
\cir1|ref|waitNGCountNext[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(3) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|Selector84~0_combout\ ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Selector84~0_combout\,
	datac => \cir1|ref|ALT_INV_waitNGCountNext\(3),
	dataf => \cir1|ref|ALT_INV_tick_guru~combout\,
	combout => \cir1|ref|waitNGCountNext\(3));

-- Location: FF_X79_Y37_N11
\cir1|ref|waitNGCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(3),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(3));

-- Location: LABCELL_X79_Y37_N12
\cir1|ref|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~21_sumout\ = SUM(( \cir1|ref|waitNGCount\(4) ) + ( VCC ) + ( \cir1|ref|Add0~26\ ))
-- \cir1|ref|Add0~22\ = CARRY(( \cir1|ref|waitNGCount\(4) ) + ( VCC ) + ( \cir1|ref|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNGCount\(4),
	cin => \cir1|ref|Add0~26\,
	sumout => \cir1|ref|Add0~21_sumout\,
	cout => \cir1|ref|Add0~22\);

-- Location: LABCELL_X80_Y36_N18
\cir1|ref|Selector85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector85~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~21_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector85~0_combout\);

-- Location: LABCELL_X80_Y36_N33
\cir1|ref|waitNGCountNext[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(4) = ( \cir1|ref|waitNGCountNext\(4) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector85~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(4) & ( (\cir1|ref|Selector85~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector85~0_combout\,
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(4),
	combout => \cir1|ref|waitNGCountNext\(4));

-- Location: FF_X79_Y37_N14
\cir1|ref|waitNGCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(4),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(4));

-- Location: LABCELL_X79_Y37_N15
\cir1|ref|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~17_sumout\ = SUM(( \cir1|ref|waitNGCount\(5) ) + ( VCC ) + ( \cir1|ref|Add0~22\ ))
-- \cir1|ref|Add0~18\ = CARRY(( \cir1|ref|waitNGCount\(5) ) + ( VCC ) + ( \cir1|ref|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(5),
	cin => \cir1|ref|Add0~22\,
	sumout => \cir1|ref|Add0~17_sumout\,
	cout => \cir1|ref|Add0~18\);

-- Location: MLABCELL_X78_Y36_N30
\cir1|ref|Selector86~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector86~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~17_sumout\ ) ) # ( !\cir1|ref|stateG_reg.waitNClk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add0~17_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector86~0_combout\);

-- Location: MLABCELL_X78_Y36_N0
\cir1|ref|waitNGCountNext[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(5) = ( \cir1|ref|waitNGCountNext\(5) & ( \cir1|ref|Selector86~0_combout\ ) ) # ( !\cir1|ref|waitNGCountNext\(5) & ( \cir1|ref|Selector86~0_combout\ & ( \cir1|ref|tick_guru~combout\ ) ) ) # ( \cir1|ref|waitNGCountNext\(5) & ( 
-- !\cir1|ref|Selector86~0_combout\ & ( !\cir1|ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	datae => \cir1|ref|ALT_INV_waitNGCountNext\(5),
	dataf => \cir1|ref|ALT_INV_Selector86~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(5));

-- Location: FF_X79_Y37_N17
\cir1|ref|waitNGCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(5),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(5));

-- Location: LABCELL_X79_Y37_N18
\cir1|ref|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~13_sumout\ = SUM(( \cir1|ref|waitNGCount\(6) ) + ( VCC ) + ( \cir1|ref|Add0~18\ ))
-- \cir1|ref|Add0~14\ = CARRY(( \cir1|ref|waitNGCount\(6) ) + ( VCC ) + ( \cir1|ref|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(6),
	cin => \cir1|ref|Add0~18\,
	sumout => \cir1|ref|Add0~13_sumout\,
	cout => \cir1|ref|Add0~14\);

-- Location: MLABCELL_X78_Y36_N24
\cir1|ref|Selector87~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector87~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~13_sumout\ ) ) # ( !\cir1|ref|stateG_reg.waitNClk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~13_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector87~0_combout\);

-- Location: MLABCELL_X78_Y36_N27
\cir1|ref|waitNGCountNext[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(6) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|Selector87~0_combout\ ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector87~0_combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(6),
	dataf => \cir1|ref|ALT_INV_tick_guru~combout\,
	combout => \cir1|ref|waitNGCountNext\(6));

-- Location: FF_X79_Y37_N20
\cir1|ref|waitNGCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(6),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(6));

-- Location: LABCELL_X79_Y37_N21
\cir1|ref|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~9_sumout\ = SUM(( \cir1|ref|waitNGCount\(7) ) + ( VCC ) + ( \cir1|ref|Add0~14\ ))
-- \cir1|ref|Add0~10\ = CARRY(( \cir1|ref|waitNGCount\(7) ) + ( VCC ) + ( \cir1|ref|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(7),
	cin => \cir1|ref|Add0~14\,
	sumout => \cir1|ref|Add0~9_sumout\,
	cout => \cir1|ref|Add0~10\);

-- Location: MLABCELL_X78_Y36_N18
\cir1|ref|Selector88~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector88~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~9_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector88~0_combout\);

-- Location: MLABCELL_X78_Y36_N21
\cir1|ref|waitNGCountNext[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(7) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|Selector88~0_combout\ ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector88~0_combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(7),
	dataf => \cir1|ref|ALT_INV_tick_guru~combout\,
	combout => \cir1|ref|waitNGCountNext\(7));

-- Location: FF_X79_Y37_N23
\cir1|ref|waitNGCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(7),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(7));

-- Location: LABCELL_X79_Y37_N24
\cir1|ref|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~53_sumout\ = SUM(( \cir1|ref|waitNGCount\(8) ) + ( VCC ) + ( \cir1|ref|Add0~10\ ))
-- \cir1|ref|Add0~54\ = CARRY(( \cir1|ref|waitNGCount\(8) ) + ( VCC ) + ( \cir1|ref|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(8),
	cin => \cir1|ref|Add0~10\,
	sumout => \cir1|ref|Add0~53_sumout\,
	cout => \cir1|ref|Add0~54\);

-- Location: LABCELL_X80_Y37_N9
\cir1|ref|Selector89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector89~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~53_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector89~0_combout\);

-- Location: LABCELL_X80_Y37_N24
\cir1|ref|waitNGCountNext[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(8) = ( \cir1|ref|waitNGCountNext\(8) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector89~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(8) & ( (\cir1|ref|Selector89~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector89~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(8),
	combout => \cir1|ref|waitNGCountNext\(8));

-- Location: FF_X79_Y37_N26
\cir1|ref|waitNGCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(8),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(8));

-- Location: LABCELL_X79_Y37_N27
\cir1|ref|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~49_sumout\ = SUM(( \cir1|ref|waitNGCount\(9) ) + ( VCC ) + ( \cir1|ref|Add0~54\ ))
-- \cir1|ref|Add0~50\ = CARRY(( \cir1|ref|waitNGCount\(9) ) + ( VCC ) + ( \cir1|ref|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(9),
	cin => \cir1|ref|Add0~54\,
	sumout => \cir1|ref|Add0~49_sumout\,
	cout => \cir1|ref|Add0~50\);

-- Location: MLABCELL_X78_Y37_N27
\cir1|ref|Selector90~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector90~0_combout\ = ( \cir1|ref|Add0~49_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add0~49_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector90~0_combout\);

-- Location: MLABCELL_X78_Y37_N30
\cir1|ref|waitNGCountNext[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(9) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(9) & ( \cir1|ref|Selector90~0_combout\ ) ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(9) ) ) # ( \cir1|ref|tick_guru~combout\ & ( 
-- !\cir1|ref|waitNGCountNext\(9) & ( \cir1|ref|Selector90~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector90~0_combout\,
	datae => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(9),
	combout => \cir1|ref|waitNGCountNext\(9));

-- Location: FF_X79_Y37_N47
\cir1|ref|waitNGCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(9),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(9));

-- Location: LABCELL_X79_Y37_N30
\cir1|ref|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~45_sumout\ = SUM(( \cir1|ref|waitNGCount\(10) ) + ( VCC ) + ( \cir1|ref|Add0~50\ ))
-- \cir1|ref|Add0~46\ = CARRY(( \cir1|ref|waitNGCount\(10) ) + ( VCC ) + ( \cir1|ref|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(10),
	cin => \cir1|ref|Add0~50\,
	sumout => \cir1|ref|Add0~45_sumout\,
	cout => \cir1|ref|Add0~46\);

-- Location: MLABCELL_X78_Y37_N15
\cir1|ref|Selector91~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector91~0_combout\ = ( \cir1|ref|Add0~45_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add0~45_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector91~0_combout\);

-- Location: MLABCELL_X78_Y37_N42
\cir1|ref|waitNGCountNext[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(10) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(10) & ( \cir1|ref|Selector91~0_combout\ ) ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(10) ) ) # ( \cir1|ref|tick_guru~combout\ & ( 
-- !\cir1|ref|waitNGCountNext\(10) & ( \cir1|ref|Selector91~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector91~0_combout\,
	datae => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(10),
	combout => \cir1|ref|waitNGCountNext\(10));

-- Location: FF_X78_Y37_N44
\cir1|ref|waitNGCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(10),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(10));

-- Location: LABCELL_X79_Y37_N33
\cir1|ref|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~41_sumout\ = SUM(( \cir1|ref|waitNGCount\(11) ) + ( VCC ) + ( \cir1|ref|Add0~46\ ))
-- \cir1|ref|Add0~42\ = CARRY(( \cir1|ref|waitNGCount\(11) ) + ( VCC ) + ( \cir1|ref|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(11),
	cin => \cir1|ref|Add0~46\,
	sumout => \cir1|ref|Add0~41_sumout\,
	cout => \cir1|ref|Add0~42\);

-- Location: MLABCELL_X78_Y37_N9
\cir1|ref|Selector92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector92~0_combout\ = ( \cir1|ref|Add0~41_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add0~41_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector92~0_combout\);

-- Location: MLABCELL_X78_Y37_N48
\cir1|ref|waitNGCountNext[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(11) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(11) & ( \cir1|ref|Selector92~0_combout\ ) ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(11) ) ) # ( \cir1|ref|tick_guru~combout\ & ( 
-- !\cir1|ref|waitNGCountNext\(11) & ( \cir1|ref|Selector92~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector92~0_combout\,
	datae => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(11),
	combout => \cir1|ref|waitNGCountNext\(11));

-- Location: FF_X79_Y37_N41
\cir1|ref|waitNGCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(11),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(11));

-- Location: LABCELL_X79_Y37_N36
\cir1|ref|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~37_sumout\ = SUM(( \cir1|ref|waitNGCount\(12) ) + ( VCC ) + ( \cir1|ref|Add0~42\ ))
-- \cir1|ref|Add0~38\ = CARRY(( \cir1|ref|waitNGCount\(12) ) + ( VCC ) + ( \cir1|ref|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(12),
	cin => \cir1|ref|Add0~42\,
	sumout => \cir1|ref|Add0~37_sumout\,
	cout => \cir1|ref|Add0~38\);

-- Location: MLABCELL_X78_Y37_N3
\cir1|ref|Selector93~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector93~0_combout\ = ( \cir1|ref|Add0~37_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add0~37_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector93~0_combout\);

-- Location: MLABCELL_X78_Y37_N54
\cir1|ref|waitNGCountNext[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(12) = ( \cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(12) & ( \cir1|ref|Selector93~0_combout\ ) ) ) # ( !\cir1|ref|tick_guru~combout\ & ( \cir1|ref|waitNGCountNext\(12) ) ) # ( \cir1|ref|tick_guru~combout\ & ( 
-- !\cir1|ref|waitNGCountNext\(12) & ( \cir1|ref|Selector93~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector93~0_combout\,
	datae => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(12),
	combout => \cir1|ref|waitNGCountNext\(12));

-- Location: FF_X78_Y37_N56
\cir1|ref|waitNGCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(12),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(12));

-- Location: LABCELL_X79_Y37_N39
\cir1|ref|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~33_sumout\ = SUM(( \cir1|ref|waitNGCount\(13) ) + ( VCC ) + ( \cir1|ref|Add0~38\ ))
-- \cir1|ref|Add0~34\ = CARRY(( \cir1|ref|waitNGCount\(13) ) + ( VCC ) + ( \cir1|ref|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(13),
	cin => \cir1|ref|Add0~38\,
	sumout => \cir1|ref|Add0~33_sumout\,
	cout => \cir1|ref|Add0~34\);

-- Location: LABCELL_X80_Y37_N21
\cir1|ref|Selector94~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector94~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Add0~33_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector94~0_combout\);

-- Location: LABCELL_X80_Y37_N18
\cir1|ref|waitNGCountNext[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(13) = ( \cir1|ref|waitNGCountNext\(13) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector94~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(13) & ( (\cir1|ref|Selector94~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector94~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(13),
	combout => \cir1|ref|waitNGCountNext\(13));

-- Location: FF_X79_Y37_N32
\cir1|ref|waitNGCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(13),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(13));

-- Location: LABCELL_X79_Y37_N42
\cir1|ref|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~77_sumout\ = SUM(( \cir1|ref|waitNGCount\(14) ) + ( VCC ) + ( \cir1|ref|Add0~34\ ))
-- \cir1|ref|Add0~78\ = CARRY(( \cir1|ref|waitNGCount\(14) ) + ( VCC ) + ( \cir1|ref|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(14),
	cin => \cir1|ref|Add0~34\,
	sumout => \cir1|ref|Add0~77_sumout\,
	cout => \cir1|ref|Add0~78\);

-- Location: LABCELL_X80_Y37_N45
\cir1|ref|Selector95~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector95~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~77_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector95~0_combout\);

-- Location: LABCELL_X80_Y37_N42
\cir1|ref|waitNGCountNext[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(14) = ( \cir1|ref|waitNGCountNext\(14) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector95~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(14) & ( (\cir1|ref|Selector95~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector95~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(14),
	combout => \cir1|ref|waitNGCountNext\(14));

-- Location: FF_X79_Y37_N59
\cir1|ref|waitNGCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(14),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(14));

-- Location: LABCELL_X79_Y37_N45
\cir1|ref|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~73_sumout\ = SUM(( \cir1|ref|waitNGCount\(15) ) + ( VCC ) + ( \cir1|ref|Add0~78\ ))
-- \cir1|ref|Add0~74\ = CARRY(( \cir1|ref|waitNGCount\(15) ) + ( VCC ) + ( \cir1|ref|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCount\(15),
	cin => \cir1|ref|Add0~78\,
	sumout => \cir1|ref|Add0~73_sumout\,
	cout => \cir1|ref|Add0~74\);

-- Location: LABCELL_X80_Y37_N27
\cir1|ref|Selector96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector96~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Add0~73_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector96~0_combout\);

-- Location: LABCELL_X80_Y37_N6
\cir1|ref|waitNGCountNext[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(15) = ( \cir1|ref|waitNGCountNext\(15) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector96~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(15) & ( (\cir1|ref|Selector96~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector96~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(15),
	combout => \cir1|ref|waitNGCountNext\(15));

-- Location: FF_X80_Y37_N8
\cir1|ref|waitNGCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(15),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(15));

-- Location: LABCELL_X79_Y37_N48
\cir1|ref|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~69_sumout\ = SUM(( \cir1|ref|waitNGCount\(16) ) + ( VCC ) + ( \cir1|ref|Add0~74\ ))
-- \cir1|ref|Add0~70\ = CARRY(( \cir1|ref|waitNGCount\(16) ) + ( VCC ) + ( \cir1|ref|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(16),
	cin => \cir1|ref|Add0~74\,
	sumout => \cir1|ref|Add0~69_sumout\,
	cout => \cir1|ref|Add0~70\);

-- Location: LABCELL_X80_Y37_N33
\cir1|ref|Selector97~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector97~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~69_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector97~0_combout\);

-- Location: LABCELL_X80_Y37_N30
\cir1|ref|waitNGCountNext[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(16) = ( \cir1|ref|waitNGCountNext\(16) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector97~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(16) & ( (\cir1|ref|Selector97~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Selector97~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(16),
	combout => \cir1|ref|waitNGCountNext\(16));

-- Location: FF_X79_Y37_N35
\cir1|ref|waitNGCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(16),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(16));

-- Location: LABCELL_X79_Y37_N51
\cir1|ref|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~65_sumout\ = SUM(( \cir1|ref|waitNGCount\(17) ) + ( VCC ) + ( \cir1|ref|Add0~70\ ))
-- \cir1|ref|Add0~66\ = CARRY(( \cir1|ref|waitNGCount\(17) ) + ( VCC ) + ( \cir1|ref|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(17),
	cin => \cir1|ref|Add0~70\,
	sumout => \cir1|ref|Add0~65_sumout\,
	cout => \cir1|ref|Add0~66\);

-- Location: LABCELL_X80_Y37_N15
\cir1|ref|Selector98~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector98~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Add0~65_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector98~0_combout\);

-- Location: LABCELL_X80_Y37_N12
\cir1|ref|waitNGCountNext[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(17) = ( \cir1|ref|waitNGCountNext\(17) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector98~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(17) & ( (\cir1|ref|Selector98~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector98~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(17),
	combout => \cir1|ref|waitNGCountNext\(17));

-- Location: FF_X79_Y37_N44
\cir1|ref|waitNGCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(17),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(17));

-- Location: LABCELL_X79_Y37_N54
\cir1|ref|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~61_sumout\ = SUM(( \cir1|ref|waitNGCount\(18) ) + ( VCC ) + ( \cir1|ref|Add0~66\ ))
-- \cir1|ref|Add0~62\ = CARRY(( \cir1|ref|waitNGCount\(18) ) + ( VCC ) + ( \cir1|ref|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(18),
	cin => \cir1|ref|Add0~66\,
	sumout => \cir1|ref|Add0~61_sumout\,
	cout => \cir1|ref|Add0~62\);

-- Location: LABCELL_X80_Y37_N51
\cir1|ref|Selector99~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector99~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Add0~61_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector99~0_combout\);

-- Location: LABCELL_X80_Y37_N48
\cir1|ref|waitNGCountNext[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(18) = ( \cir1|ref|waitNGCountNext\(18) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector99~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(18) & ( (\cir1|ref|Selector99~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector99~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(18),
	combout => \cir1|ref|waitNGCountNext\(18));

-- Location: FF_X80_Y37_N50
\cir1|ref|waitNGCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(18),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(18));

-- Location: LABCELL_X79_Y37_N57
\cir1|ref|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~57_sumout\ = SUM(( \cir1|ref|waitNGCount\(19) ) + ( VCC ) + ( \cir1|ref|Add0~62\ ))
-- \cir1|ref|Add0~58\ = CARRY(( \cir1|ref|waitNGCount\(19) ) + ( VCC ) + ( \cir1|ref|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(19),
	cin => \cir1|ref|Add0~62\,
	sumout => \cir1|ref|Add0~57_sumout\,
	cout => \cir1|ref|Add0~58\);

-- Location: LABCELL_X80_Y37_N57
\cir1|ref|Selector100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector100~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~57_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector100~0_combout\);

-- Location: LABCELL_X80_Y37_N54
\cir1|ref|waitNGCountNext[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(19) = ( \cir1|ref|waitNGCountNext\(19) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector100~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(19) & ( (\cir1|ref|Selector100~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector100~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(19),
	combout => \cir1|ref|waitNGCountNext\(19));

-- Location: FF_X80_Y37_N56
\cir1|ref|waitNGCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(19),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(19));

-- Location: LABCELL_X79_Y36_N0
\cir1|ref|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~125_sumout\ = SUM(( \cir1|ref|waitNGCount\(20) ) + ( VCC ) + ( \cir1|ref|Add0~58\ ))
-- \cir1|ref|Add0~126\ = CARRY(( \cir1|ref|waitNGCount\(20) ) + ( VCC ) + ( \cir1|ref|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(20),
	cin => \cir1|ref|Add0~58\,
	sumout => \cir1|ref|Add0~125_sumout\,
	cout => \cir1|ref|Add0~126\);

-- Location: MLABCELL_X78_Y36_N12
\cir1|ref|Selector101~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector101~0_combout\ = ( \cir1|ref|Add0~125_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add0~125_sumout\,
	combout => \cir1|ref|Selector101~0_combout\);

-- Location: MLABCELL_X78_Y36_N15
\cir1|ref|waitNGCountNext[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(20) = ( \cir1|ref|Selector101~0_combout\ & ( (\cir1|ref|tick_guru~combout\) # (\cir1|ref|waitNGCountNext\(20)) ) ) # ( !\cir1|ref|Selector101~0_combout\ & ( (\cir1|ref|waitNGCountNext\(20) & !\cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCountNext\(20),
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_Selector101~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(20));

-- Location: FF_X79_Y36_N38
\cir1|ref|waitNGCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(20),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(20));

-- Location: LABCELL_X79_Y36_N3
\cir1|ref|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~121_sumout\ = SUM(( \cir1|ref|waitNGCount\(21) ) + ( VCC ) + ( \cir1|ref|Add0~126\ ))
-- \cir1|ref|Add0~122\ = CARRY(( \cir1|ref|waitNGCount\(21) ) + ( VCC ) + ( \cir1|ref|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(21),
	cin => \cir1|ref|Add0~126\,
	sumout => \cir1|ref|Add0~121_sumout\,
	cout => \cir1|ref|Add0~122\);

-- Location: LABCELL_X80_Y36_N54
\cir1|ref|Selector102~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector102~0_combout\ = ( \cir1|ref|Add0~121_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add0~121_sumout\,
	combout => \cir1|ref|Selector102~0_combout\);

-- Location: LABCELL_X80_Y36_N42
\cir1|ref|waitNGCountNext[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(21) = ( \cir1|ref|Selector102~0_combout\ & ( (\cir1|ref|waitNGCountNext\(21)) # (\cir1|ref|tick_guru~combout\) ) ) # ( !\cir1|ref|Selector102~0_combout\ & ( (!\cir1|ref|tick_guru~combout\ & \cir1|ref|waitNGCountNext\(21)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(21),
	dataf => \cir1|ref|ALT_INV_Selector102~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(21));

-- Location: FF_X80_Y36_N44
\cir1|ref|waitNGCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(21),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(21));

-- Location: LABCELL_X79_Y36_N6
\cir1|ref|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~117_sumout\ = SUM(( \cir1|ref|waitNGCount\(22) ) + ( VCC ) + ( \cir1|ref|Add0~122\ ))
-- \cir1|ref|Add0~118\ = CARRY(( \cir1|ref|waitNGCount\(22) ) + ( VCC ) + ( \cir1|ref|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNGCount\(22),
	cin => \cir1|ref|Add0~122\,
	sumout => \cir1|ref|Add0~117_sumout\,
	cout => \cir1|ref|Add0~118\);

-- Location: MLABCELL_X78_Y36_N51
\cir1|ref|Selector103~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector103~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~117_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~117_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector103~0_combout\);

-- Location: MLABCELL_X78_Y36_N48
\cir1|ref|waitNGCountNext[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(22) = ( \cir1|ref|Selector103~0_combout\ & ( (\cir1|ref|tick_guru~combout\) # (\cir1|ref|waitNGCountNext\(22)) ) ) # ( !\cir1|ref|Selector103~0_combout\ & ( (\cir1|ref|waitNGCountNext\(22) & !\cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCountNext\(22),
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_Selector103~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(22));

-- Location: FF_X79_Y36_N44
\cir1|ref|waitNGCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(22),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(22));

-- Location: LABCELL_X79_Y36_N9
\cir1|ref|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~113_sumout\ = SUM(( \cir1|ref|waitNGCount\(23) ) + ( VCC ) + ( \cir1|ref|Add0~118\ ))
-- \cir1|ref|Add0~114\ = CARRY(( \cir1|ref|waitNGCount\(23) ) + ( VCC ) + ( \cir1|ref|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(23),
	cin => \cir1|ref|Add0~118\,
	sumout => \cir1|ref|Add0~113_sumout\,
	cout => \cir1|ref|Add0~114\);

-- Location: LABCELL_X79_Y36_N57
\cir1|ref|Selector104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector104~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add0~113_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector104~0_combout\);

-- Location: LABCELL_X79_Y36_N54
\cir1|ref|waitNGCountNext[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(23) = ( \cir1|ref|Selector104~0_combout\ & ( (\cir1|ref|waitNGCountNext\(23)) # (\cir1|ref|tick_guru~combout\) ) ) # ( !\cir1|ref|Selector104~0_combout\ & ( (!\cir1|ref|tick_guru~combout\ & \cir1|ref|waitNGCountNext\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(23),
	dataf => \cir1|ref|ALT_INV_Selector104~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(23));

-- Location: FF_X79_Y36_N56
\cir1|ref|waitNGCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(23),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(23));

-- Location: LABCELL_X79_Y36_N12
\cir1|ref|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~109_sumout\ = SUM(( \cir1|ref|waitNGCount\(24) ) + ( VCC ) + ( \cir1|ref|Add0~114\ ))
-- \cir1|ref|Add0~110\ = CARRY(( \cir1|ref|waitNGCount\(24) ) + ( VCC ) + ( \cir1|ref|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(24),
	cin => \cir1|ref|Add0~114\,
	sumout => \cir1|ref|Add0~109_sumout\,
	cout => \cir1|ref|Add0~110\);

-- Location: LABCELL_X80_Y36_N45
\cir1|ref|Selector105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector105~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~109_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector105~0_combout\);

-- Location: LABCELL_X80_Y36_N57
\cir1|ref|waitNGCountNext[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(24) = ( \cir1|ref|Selector105~0_combout\ & ( (\cir1|ref|waitNGCountNext\(24)) # (\cir1|ref|tick_guru~combout\) ) ) # ( !\cir1|ref|Selector105~0_combout\ & ( (!\cir1|ref|tick_guru~combout\ & \cir1|ref|waitNGCountNext\(24)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(24),
	dataf => \cir1|ref|ALT_INV_Selector105~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(24));

-- Location: FF_X80_Y36_N59
\cir1|ref|waitNGCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(24),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(24));

-- Location: LABCELL_X79_Y36_N15
\cir1|ref|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~105_sumout\ = SUM(( \cir1|ref|waitNGCount\(25) ) + ( VCC ) + ( \cir1|ref|Add0~110\ ))
-- \cir1|ref|Add0~106\ = CARRY(( \cir1|ref|waitNGCount\(25) ) + ( VCC ) + ( \cir1|ref|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(25),
	cin => \cir1|ref|Add0~110\,
	sumout => \cir1|ref|Add0~105_sumout\,
	cout => \cir1|ref|Add0~106\);

-- Location: MLABCELL_X78_Y36_N33
\cir1|ref|Selector106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector106~0_combout\ = (\cir1|ref|stateG_reg.waitNClk~q\ & \cir1|ref|Add0~105_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	datad => \cir1|ref|ALT_INV_Add0~105_sumout\,
	combout => \cir1|ref|Selector106~0_combout\);

-- Location: MLABCELL_X78_Y36_N6
\cir1|ref|waitNGCountNext[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(25) = ( \cir1|ref|waitNGCountNext\(25) & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|Selector106~0_combout\) ) ) # ( !\cir1|ref|waitNGCountNext\(25) & ( (\cir1|ref|Selector106~0_combout\ & \cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector106~0_combout\,
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_waitNGCountNext\(25),
	combout => \cir1|ref|waitNGCountNext\(25));

-- Location: FF_X80_Y36_N11
\cir1|ref|waitNGCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(25),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(25));

-- Location: LABCELL_X80_Y36_N12
\cir1|ref|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal0~5_combout\ = ( !\cir1|ref|waitNGCount\(24) & ( !\cir1|ref|waitNGCount\(21) & ( (!\cir1|ref|waitNGCount\(20) & (!\cir1|ref|waitNGCount\(25) & (!\cir1|ref|waitNGCount\(22) & !\cir1|ref|waitNGCount\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCount\(20),
	datab => \cir1|ref|ALT_INV_waitNGCount\(25),
	datac => \cir1|ref|ALT_INV_waitNGCount\(22),
	datad => \cir1|ref|ALT_INV_waitNGCount\(23),
	datae => \cir1|ref|ALT_INV_waitNGCount\(24),
	dataf => \cir1|ref|ALT_INV_waitNGCount\(21),
	combout => \cir1|ref|Equal0~5_combout\);

-- Location: LABCELL_X79_Y36_N18
\cir1|ref|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~101_sumout\ = SUM(( \cir1|ref|waitNGCount\(26) ) + ( VCC ) + ( \cir1|ref|Add0~106\ ))
-- \cir1|ref|Add0~102\ = CARRY(( \cir1|ref|waitNGCount\(26) ) + ( VCC ) + ( \cir1|ref|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(26),
	cin => \cir1|ref|Add0~106\,
	sumout => \cir1|ref|Add0~101_sumout\,
	cout => \cir1|ref|Add0~102\);

-- Location: LABCELL_X80_Y36_N21
\cir1|ref|Selector107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector107~0_combout\ = ( \cir1|ref|Add0~101_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add0~101_sumout\,
	combout => \cir1|ref|Selector107~0_combout\);

-- Location: LABCELL_X80_Y36_N6
\cir1|ref|waitNGCountNext[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(26) = ( \cir1|ref|Selector107~0_combout\ & ( (\cir1|ref|tick_guru~combout\) # (\cir1|ref|waitNGCountNext\(26)) ) ) # ( !\cir1|ref|Selector107~0_combout\ & ( (\cir1|ref|waitNGCountNext\(26) & !\cir1|ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNGCountNext\(26),
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	dataf => \cir1|ref|ALT_INV_Selector107~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(26));

-- Location: FF_X79_Y36_N50
\cir1|ref|waitNGCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(26),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(26));

-- Location: LABCELL_X79_Y36_N21
\cir1|ref|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~97_sumout\ = SUM(( \cir1|ref|waitNGCount\(27) ) + ( VCC ) + ( \cir1|ref|Add0~102\ ))
-- \cir1|ref|Add0~98\ = CARRY(( \cir1|ref|waitNGCount\(27) ) + ( VCC ) + ( \cir1|ref|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(27),
	cin => \cir1|ref|Add0~102\,
	sumout => \cir1|ref|Add0~97_sumout\,
	cout => \cir1|ref|Add0~98\);

-- Location: LABCELL_X80_Y36_N39
\cir1|ref|Selector108~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector108~0_combout\ = ( \cir1|ref|Add0~97_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add0~97_sumout\,
	combout => \cir1|ref|Selector108~0_combout\);

-- Location: LABCELL_X80_Y36_N27
\cir1|ref|waitNGCountNext[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(27) = ( \cir1|ref|waitNGCountNext\(27) & ( \cir1|ref|Selector108~0_combout\ ) ) # ( !\cir1|ref|waitNGCountNext\(27) & ( \cir1|ref|Selector108~0_combout\ & ( \cir1|ref|tick_guru~combout\ ) ) ) # ( \cir1|ref|waitNGCountNext\(27) & 
-- ( !\cir1|ref|Selector108~0_combout\ & ( !\cir1|ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_guru~combout\,
	datae => \cir1|ref|ALT_INV_waitNGCountNext\(27),
	dataf => \cir1|ref|ALT_INV_Selector108~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(27));

-- Location: FF_X80_Y36_N29
\cir1|ref|waitNGCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(27),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(27));

-- Location: LABCELL_X79_Y36_N24
\cir1|ref|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~93_sumout\ = SUM(( \cir1|ref|waitNGCount\(28) ) + ( VCC ) + ( \cir1|ref|Add0~98\ ))
-- \cir1|ref|Add0~94\ = CARRY(( \cir1|ref|waitNGCount\(28) ) + ( VCC ) + ( \cir1|ref|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(28),
	cin => \cir1|ref|Add0~98\,
	sumout => \cir1|ref|Add0~93_sumout\,
	cout => \cir1|ref|Add0~94\);

-- Location: MLABCELL_X78_Y36_N45
\cir1|ref|Selector109~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector109~0_combout\ = ( \cir1|ref|Add0~93_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add0~93_sumout\,
	combout => \cir1|ref|Selector109~0_combout\);

-- Location: MLABCELL_X78_Y36_N42
\cir1|ref|waitNGCountNext[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(28) = ( \cir1|ref|Selector109~0_combout\ & ( (\cir1|ref|waitNGCountNext\(28)) # (\cir1|ref|tick_guru~combout\) ) ) # ( !\cir1|ref|Selector109~0_combout\ & ( (!\cir1|ref|tick_guru~combout\ & \cir1|ref|waitNGCountNext\(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(28),
	dataf => \cir1|ref|ALT_INV_Selector109~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(28));

-- Location: FF_X78_Y36_N44
\cir1|ref|waitNGCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(28),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(28));

-- Location: LABCELL_X79_Y36_N27
\cir1|ref|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~89_sumout\ = SUM(( \cir1|ref|waitNGCount\(29) ) + ( VCC ) + ( \cir1|ref|Add0~94\ ))
-- \cir1|ref|Add0~90\ = CARRY(( \cir1|ref|waitNGCount\(29) ) + ( VCC ) + ( \cir1|ref|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNGCount\(29),
	cin => \cir1|ref|Add0~94\,
	sumout => \cir1|ref|Add0~89_sumout\,
	cout => \cir1|ref|Add0~90\);

-- Location: LABCELL_X79_Y36_N45
\cir1|ref|Selector110~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector110~0_combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|Add0~89_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add0~89_sumout\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector110~0_combout\);

-- Location: MLABCELL_X78_Y36_N57
\cir1|ref|waitNGCountNext[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(29) = ( \cir1|ref|waitNGCountNext\(29) & ( \cir1|ref|Selector110~0_combout\ ) ) # ( !\cir1|ref|waitNGCountNext\(29) & ( \cir1|ref|Selector110~0_combout\ & ( \cir1|ref|tick_guru~combout\ ) ) ) # ( \cir1|ref|waitNGCountNext\(29) & 
-- ( !\cir1|ref|Selector110~0_combout\ & ( !\cir1|ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_tick_guru~combout\,
	datae => \cir1|ref|ALT_INV_waitNGCountNext\(29),
	dataf => \cir1|ref|ALT_INV_Selector110~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(29));

-- Location: FF_X80_Y36_N17
\cir1|ref|waitNGCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNGCountNext\(29),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(29));

-- Location: LABCELL_X79_Y36_N30
\cir1|ref|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~85_sumout\ = SUM(( \cir1|ref|waitNGCount\(30) ) + ( VCC ) + ( \cir1|ref|Add0~90\ ))
-- \cir1|ref|Add0~86\ = CARRY(( \cir1|ref|waitNGCount\(30) ) + ( VCC ) + ( \cir1|ref|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNGCount\(30),
	cin => \cir1|ref|Add0~90\,
	sumout => \cir1|ref|Add0~85_sumout\,
	cout => \cir1|ref|Add0~86\);

-- Location: LABCELL_X79_Y36_N48
\cir1|ref|Selector111~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector111~0_combout\ = ( \cir1|ref|Add0~85_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add0~85_sumout\,
	combout => \cir1|ref|Selector111~0_combout\);

-- Location: LABCELL_X79_Y36_N51
\cir1|ref|waitNGCountNext[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(30) = ( \cir1|ref|Selector111~0_combout\ & ( (\cir1|ref|waitNGCountNext\(30)) # (\cir1|ref|tick_guru~combout\) ) ) # ( !\cir1|ref|Selector111~0_combout\ & ( (!\cir1|ref|tick_guru~combout\ & \cir1|ref|waitNGCountNext\(30)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_waitNGCountNext\(30),
	dataf => \cir1|ref|ALT_INV_Selector111~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(30));

-- Location: FF_X79_Y36_N53
\cir1|ref|waitNGCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(30),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(30));

-- Location: LABCELL_X79_Y36_N33
\cir1|ref|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add0~81_sumout\ = SUM(( \cir1|ref|waitNGCount\(31) ) + ( VCC ) + ( \cir1|ref|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCount\(31),
	cin => \cir1|ref|Add0~86\,
	sumout => \cir1|ref|Add0~81_sumout\);

-- Location: LABCELL_X79_Y36_N36
\cir1|ref|Selector112~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector112~0_combout\ = ( \cir1|ref|Add0~81_sumout\ & ( \cir1|ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add0~81_sumout\,
	combout => \cir1|ref|Selector112~0_combout\);

-- Location: LABCELL_X79_Y36_N39
\cir1|ref|waitNGCountNext[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNGCountNext\(31) = ( \cir1|ref|Selector112~0_combout\ & ( (\cir1|ref|waitNGCountNext\(31)) # (\cir1|ref|tick_guru~combout\) ) ) # ( !\cir1|ref|Selector112~0_combout\ & ( (!\cir1|ref|tick_guru~combout\ & \cir1|ref|waitNGCountNext\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_guru~combout\,
	datac => \cir1|ref|ALT_INV_waitNGCountNext\(31),
	dataf => \cir1|ref|ALT_INV_Selector112~0_combout\,
	combout => \cir1|ref|waitNGCountNext\(31));

-- Location: FF_X79_Y36_N41
\cir1|ref|waitNGCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNGCountNext\(31),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNGCount\(31));

-- Location: LABCELL_X80_Y36_N3
\cir1|ref|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal0~4_combout\ = ( !\cir1|ref|waitNGCount\(31) & ( !\cir1|ref|waitNGCount\(26) & ( (!\cir1|ref|waitNGCount\(28) & (!\cir1|ref|waitNGCount\(29) & (!\cir1|ref|waitNGCount\(27) & !\cir1|ref|waitNGCount\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCount\(28),
	datab => \cir1|ref|ALT_INV_waitNGCount\(29),
	datac => \cir1|ref|ALT_INV_waitNGCount\(27),
	datad => \cir1|ref|ALT_INV_waitNGCount\(30),
	datae => \cir1|ref|ALT_INV_waitNGCount\(31),
	dataf => \cir1|ref|ALT_INV_waitNGCount\(26),
	combout => \cir1|ref|Equal0~4_combout\);

-- Location: MLABCELL_X78_Y37_N18
\cir1|ref|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal0~0_combout\ = ( !\cir1|ref|waitNGCount\(1) & ( !\cir1|ref|waitNGCount\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_waitNGCount\(1),
	dataf => \cir1|ref|ALT_INV_waitNGCount\(0),
	combout => \cir1|ref|Equal0~0_combout\);

-- Location: MLABCELL_X78_Y37_N36
\cir1|ref|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal0~2_combout\ = ( !\cir1|ref|waitNGCount\(12) & ( !\cir1|ref|waitNGCount\(10) & ( (!\cir1|ref|waitNGCount\(13) & (!\cir1|ref|waitNGCount\(9) & (!\cir1|ref|waitNGCount\(11) & !\cir1|ref|waitNGCount\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCount\(13),
	datab => \cir1|ref|ALT_INV_waitNGCount\(9),
	datac => \cir1|ref|ALT_INV_waitNGCount\(11),
	datad => \cir1|ref|ALT_INV_waitNGCount\(8),
	datae => \cir1|ref|ALT_INV_waitNGCount\(12),
	dataf => \cir1|ref|ALT_INV_waitNGCount\(10),
	combout => \cir1|ref|Equal0~2_combout\);

-- Location: LABCELL_X80_Y37_N0
\cir1|ref|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal0~3_combout\ = ( !\cir1|ref|waitNGCount\(17) & ( !\cir1|ref|waitNGCount\(18) & ( (!\cir1|ref|waitNGCount\(19) & (!\cir1|ref|waitNGCount\(14) & (!\cir1|ref|waitNGCount\(16) & !\cir1|ref|waitNGCount\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCount\(19),
	datab => \cir1|ref|ALT_INV_waitNGCount\(14),
	datac => \cir1|ref|ALT_INV_waitNGCount\(16),
	datad => \cir1|ref|ALT_INV_waitNGCount\(15),
	datae => \cir1|ref|ALT_INV_waitNGCount\(17),
	dataf => \cir1|ref|ALT_INV_waitNGCount\(18),
	combout => \cir1|ref|Equal0~3_combout\);

-- Location: LABCELL_X80_Y37_N36
\cir1|ref|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal0~1_combout\ = ( !\cir1|ref|waitNGCount\(2) & ( !\cir1|ref|waitNGCount\(3) & ( (!\cir1|ref|waitNGCount\(5) & (!\cir1|ref|waitNGCount\(4) & (!\cir1|ref|waitNGCount\(6) & !\cir1|ref|waitNGCount\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNGCount\(5),
	datab => \cir1|ref|ALT_INV_waitNGCount\(4),
	datac => \cir1|ref|ALT_INV_waitNGCount\(6),
	datad => \cir1|ref|ALT_INV_waitNGCount\(7),
	datae => \cir1|ref|ALT_INV_waitNGCount\(2),
	dataf => \cir1|ref|ALT_INV_waitNGCount\(3),
	combout => \cir1|ref|Equal0~1_combout\);

-- Location: LABCELL_X81_Y36_N15
\cir1|ref|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal0~6_combout\ = ( \cir1|ref|Equal0~3_combout\ & ( \cir1|ref|Equal0~1_combout\ & ( (\cir1|ref|Equal0~5_combout\ & (\cir1|ref|Equal0~4_combout\ & (\cir1|ref|Equal0~0_combout\ & \cir1|ref|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal0~5_combout\,
	datab => \cir1|ref|ALT_INV_Equal0~4_combout\,
	datac => \cir1|ref|ALT_INV_Equal0~0_combout\,
	datad => \cir1|ref|ALT_INV_Equal0~2_combout\,
	datae => \cir1|ref|ALT_INV_Equal0~3_combout\,
	dataf => \cir1|ref|ALT_INV_Equal0~1_combout\,
	combout => \cir1|ref|Equal0~6_combout\);

-- Location: LABCELL_X81_Y36_N30
\cir1|ref|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector3~0_combout\ = ( \cir1|ref|stateG_reg.waitRdy0~q\ & ( \cir1|ref|stateG_reg.waitNClk~q\ & ( !\cir1|ref|Equal0~6_combout\ ) ) ) # ( !\cir1|ref|stateG_reg.waitRdy0~q\ & ( \cir1|ref|stateG_reg.waitNClk~q\ & ( (!\cir1|ref|Equal0~6_combout\ & 
-- ((!\cir1|guru|step|cnt_v1_s~q\) # (!\cir1|guru|base|control|main|STATE.CHECK_END~q\))) ) ) ) # ( \cir1|ref|stateG_reg.waitRdy0~q\ & ( !\cir1|ref|stateG_reg.waitNClk~q\ ) ) # ( !\cir1|ref|stateG_reg.waitRdy0~q\ & ( !\cir1|ref|stateG_reg.waitNClk~q\ & ( 
-- (!\cir1|guru|step|cnt_v1_s~q\) # (!\cir1|guru|base|control|main|STATE.CHECK_END~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111111111111111111100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datad => \cir1|ref|ALT_INV_Equal0~6_combout\,
	datae => \cir1|ref|ALT_INV_stateG_reg.waitRdy0~q\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|Selector3~0_combout\);

-- Location: FF_X81_Y36_N31
\cir1|ref|stateG_reg.waitRdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector3~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateG_reg.waitRdy0~q\);

-- Location: LABCELL_X81_Y36_N9
\cir1|ref|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector1~0_combout\ = ( \cir1|ref|stateG_reg.waitRdy0~q\ & ( (\cir1|ref|stateG_reg.rdy0~q\ & ((!\cir1|guru|base|control|main|STATE.CHECK_END~q\) # (!\cir1|guru|step|cnt_v1_s~q\))) ) ) # ( !\cir1|ref|stateG_reg.waitRdy0~q\ & ( 
-- (!\cir1|guru|base|control|main|STATE.CHECK_END~q\) # (!\cir1|guru|step|cnt_v1_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datac => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	datad => \cir1|ref|ALT_INV_stateG_reg.rdy0~q\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitRdy0~q\,
	combout => \cir1|ref|Selector1~0_combout\);

-- Location: FF_X81_Y36_N11
\cir1|ref|stateG_reg.rdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateG_reg.rdy0~q\);

-- Location: LABCELL_X81_Y36_N6
\cir1|ref|stateG_next.rdy1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|stateG_next.rdy1~0_combout\ = ( \cir1|ref|stateG_reg.rdy0~q\ & ( (\cir1|guru|base|control|main|STATE.CHECK_END~q\ & \cir1|guru|step|cnt_v1_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datad => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.rdy0~q\,
	combout => \cir1|ref|stateG_next.rdy1~0_combout\);

-- Location: FF_X80_Y36_N2
\cir1|ref|stateG_reg.rdy1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|stateG_next.rdy1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateG_reg.rdy1~q\);

-- Location: LABCELL_X80_Y36_N30
\cir1|ref|tick_guru\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|tick_guru~combout\ = ( \cir1|ref|stateG_reg.waitNClk~q\ ) # ( !\cir1|ref|stateG_reg.waitNClk~q\ & ( \cir1|ref|stateG_reg.rdy1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_stateG_reg.rdy1~q\,
	dataf => \cir1|ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \cir1|ref|tick_guru~combout\);

-- Location: FF_X88_Y32_N37
\cir1|ref|mainCnt[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector22~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[31]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y36_N0
\cir1|ref|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~5_sumout\ = SUM(( \cir1|ref|waitNDCount\(0) ) + ( VCC ) + ( !VCC ))
-- \cir1|ref|Add1~6\ = CARRY(( \cir1|ref|waitNDCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(0),
	cin => GND,
	sumout => \cir1|ref|Add1~5_sumout\,
	cout => \cir1|ref|Add1~6\);

-- Location: LABCELL_X83_Y36_N15
\cir1|ref|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector12~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~5_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector12~0_combout\);

-- Location: LABCELL_X83_Y36_N12
\cir1|ref|waitNDCountNext[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(0) = ( \cir1|ref|Selector12~0_combout\ & ( (\cir1|ref|tick_disc~combout\) # (\cir1|ref|waitNDCountNext\(0)) ) ) # ( !\cir1|ref|Selector12~0_combout\ & ( (\cir1|ref|waitNDCountNext\(0) & !\cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNDCountNext\(0),
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_Selector12~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(0));

-- Location: FF_X84_Y36_N2
\cir1|ref|waitNDCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(0),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(0));

-- Location: MLABCELL_X84_Y36_N3
\cir1|ref|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~1_sumout\ = SUM(( \cir1|ref|waitNDCount\(1) ) + ( VCC ) + ( \cir1|ref|Add1~6\ ))
-- \cir1|ref|Add1~2\ = CARRY(( \cir1|ref|waitNDCount\(1) ) + ( VCC ) + ( \cir1|ref|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(1),
	cin => \cir1|ref|Add1~6\,
	sumout => \cir1|ref|Add1~1_sumout\,
	cout => \cir1|ref|Add1~2\);

-- Location: MLABCELL_X82_Y36_N0
\cir1|ref|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector11~0_combout\ = ( \cir1|ref|Add1~1_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add1~1_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector11~0_combout\);

-- Location: LABCELL_X83_Y36_N9
\cir1|ref|waitNDCountNext[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(1) = ( \cir1|ref|waitNDCountNext\(1) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector11~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(1) & ( (\cir1|ref|tick_disc~combout\ & \cir1|ref|Selector11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datab => \cir1|ref|ALT_INV_Selector11~0_combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(1),
	combout => \cir1|ref|waitNDCountNext\(1));

-- Location: FF_X84_Y36_N5
\cir1|ref|waitNDCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(1),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(1));

-- Location: MLABCELL_X84_Y36_N6
\cir1|ref|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~29_sumout\ = SUM(( \cir1|ref|waitNDCount\(2) ) + ( VCC ) + ( \cir1|ref|Add1~2\ ))
-- \cir1|ref|Add1~30\ = CARRY(( \cir1|ref|waitNDCount\(2) ) + ( VCC ) + ( \cir1|ref|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNDCount\(2),
	cin => \cir1|ref|Add1~2\,
	sumout => \cir1|ref|Add1~29_sumout\,
	cout => \cir1|ref|Add1~30\);

-- Location: LABCELL_X83_Y35_N42
\cir1|ref|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector10~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~29_sumout\ ) ) # ( !\cir1|ref|stateD_reg.waitNClk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~29_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector10~0_combout\);

-- Location: LABCELL_X83_Y35_N3
\cir1|ref|waitNDCountNext[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(2) = ( \cir1|ref|Selector10~0_combout\ & ( (\cir1|ref|waitNDCountNext\(2)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector10~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(2),
	dataf => \cir1|ref|ALT_INV_Selector10~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(2));

-- Location: FF_X84_Y36_N8
\cir1|ref|waitNDCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(2),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(2));

-- Location: MLABCELL_X84_Y36_N9
\cir1|ref|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~25_sumout\ = SUM(( \cir1|ref|waitNDCount\(3) ) + ( VCC ) + ( \cir1|ref|Add1~30\ ))
-- \cir1|ref|Add1~26\ = CARRY(( \cir1|ref|waitNDCount\(3) ) + ( VCC ) + ( \cir1|ref|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(3),
	cin => \cir1|ref|Add1~30\,
	sumout => \cir1|ref|Add1~25_sumout\,
	cout => \cir1|ref|Add1~26\);

-- Location: LABCELL_X85_Y36_N51
\cir1|ref|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector6~0_combout\ = ( \cir1|ref|Add1~25_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add1~25_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector6~0_combout\);

-- Location: LABCELL_X85_Y36_N36
\cir1|ref|waitNDCountNext[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(3) = ( \cir1|ref|waitNDCountNext\(3) & ( \cir1|ref|Selector6~0_combout\ ) ) # ( !\cir1|ref|waitNDCountNext\(3) & ( \cir1|ref|Selector6~0_combout\ & ( \cir1|ref|tick_disc~combout\ ) ) ) # ( \cir1|ref|waitNDCountNext\(3) & ( 
-- !\cir1|ref|Selector6~0_combout\ & ( !\cir1|ref|tick_disc~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	datae => \cir1|ref|ALT_INV_waitNDCountNext\(3),
	dataf => \cir1|ref|ALT_INV_Selector6~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(3));

-- Location: FF_X84_Y36_N11
\cir1|ref|waitNDCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(3),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(3));

-- Location: MLABCELL_X84_Y36_N12
\cir1|ref|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~21_sumout\ = SUM(( \cir1|ref|waitNDCount\(4) ) + ( VCC ) + ( \cir1|ref|Add1~26\ ))
-- \cir1|ref|Add1~22\ = CARRY(( \cir1|ref|waitNDCount\(4) ) + ( VCC ) + ( \cir1|ref|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNDCount\(4),
	cin => \cir1|ref|Add1~26\,
	sumout => \cir1|ref|Add1~21_sumout\,
	cout => \cir1|ref|Add1~22\);

-- Location: LABCELL_X83_Y36_N21
\cir1|ref|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector5~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~21_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector5~0_combout\);

-- Location: LABCELL_X83_Y36_N18
\cir1|ref|waitNDCountNext[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(4) = ( \cir1|ref|waitNDCountNext\(4) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector5~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(4) & ( (\cir1|ref|Selector5~0_combout\ & \cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector5~0_combout\,
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(4),
	combout => \cir1|ref|waitNDCountNext\(4));

-- Location: FF_X84_Y36_N14
\cir1|ref|waitNDCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(4),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(4));

-- Location: MLABCELL_X84_Y36_N15
\cir1|ref|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~17_sumout\ = SUM(( \cir1|ref|waitNDCount\(5) ) + ( VCC ) + ( \cir1|ref|Add1~22\ ))
-- \cir1|ref|Add1~18\ = CARRY(( \cir1|ref|waitNDCount\(5) ) + ( VCC ) + ( \cir1|ref|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(5),
	cin => \cir1|ref|Add1~22\,
	sumout => \cir1|ref|Add1~17_sumout\,
	cout => \cir1|ref|Add1~18\);

-- Location: LABCELL_X83_Y36_N36
\cir1|ref|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector0~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~17_sumout\ ) ) # ( !\cir1|ref|stateD_reg.waitNClk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~17_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector0~0_combout\);

-- Location: LABCELL_X83_Y36_N39
\cir1|ref|waitNDCountNext[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(5) = ( \cir1|ref|Selector0~0_combout\ & ( (\cir1|ref|waitNDCountNext\(5)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector0~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datac => \cir1|ref|ALT_INV_waitNDCountNext\(5),
	dataf => \cir1|ref|ALT_INV_Selector0~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(5));

-- Location: FF_X84_Y36_N17
\cir1|ref|waitNDCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(5),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(5));

-- Location: MLABCELL_X84_Y36_N18
\cir1|ref|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~13_sumout\ = SUM(( \cir1|ref|waitNDCount\(6) ) + ( VCC ) + ( \cir1|ref|Add1~18\ ))
-- \cir1|ref|Add1~14\ = CARRY(( \cir1|ref|waitNDCount\(6) ) + ( VCC ) + ( \cir1|ref|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(6),
	cin => \cir1|ref|Add1~18\,
	sumout => \cir1|ref|Add1~13_sumout\,
	cout => \cir1|ref|Add1~14\);

-- Location: LABCELL_X83_Y36_N42
\cir1|ref|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector54~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~13_sumout\ ) ) # ( !\cir1|ref|stateD_reg.waitNClk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~13_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector54~0_combout\);

-- Location: LABCELL_X83_Y36_N45
\cir1|ref|waitNDCountNext[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(6) = (!\cir1|ref|tick_disc~combout\ & ((\cir1|ref|waitNDCountNext\(6)))) # (\cir1|ref|tick_disc~combout\ & (\cir1|ref|Selector54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datab => \cir1|ref|ALT_INV_Selector54~0_combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(6),
	combout => \cir1|ref|waitNDCountNext\(6));

-- Location: FF_X84_Y36_N20
\cir1|ref|waitNDCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(6),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(6));

-- Location: MLABCELL_X84_Y36_N21
\cir1|ref|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~9_sumout\ = SUM(( \cir1|ref|waitNDCount\(7) ) + ( VCC ) + ( \cir1|ref|Add1~14\ ))
-- \cir1|ref|Add1~10\ = CARRY(( \cir1|ref|waitNDCount\(7) ) + ( VCC ) + ( \cir1|ref|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(7),
	cin => \cir1|ref|Add1~14\,
	sumout => \cir1|ref|Add1~9_sumout\,
	cout => \cir1|ref|Add1~10\);

-- Location: LABCELL_X83_Y36_N6
\cir1|ref|Selector55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector55~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~9_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector55~0_combout\);

-- Location: LABCELL_X83_Y36_N3
\cir1|ref|waitNDCountNext[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(7) = ( \cir1|ref|waitNDCountNext\(7) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector55~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(7) & ( (\cir1|ref|Selector55~0_combout\ & \cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector55~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	datae => \cir1|ref|ALT_INV_waitNDCountNext\(7),
	combout => \cir1|ref|waitNDCountNext\(7));

-- Location: FF_X84_Y36_N23
\cir1|ref|waitNDCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(7),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(7));

-- Location: MLABCELL_X84_Y36_N24
\cir1|ref|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~53_sumout\ = SUM(( \cir1|ref|waitNDCount\(8) ) + ( VCC ) + ( \cir1|ref|Add1~10\ ))
-- \cir1|ref|Add1~54\ = CARRY(( \cir1|ref|waitNDCount\(8) ) + ( VCC ) + ( \cir1|ref|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(8),
	cin => \cir1|ref|Add1~10\,
	sumout => \cir1|ref|Add1~53_sumout\,
	cout => \cir1|ref|Add1~54\);

-- Location: LABCELL_X83_Y36_N27
\cir1|ref|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector56~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add1~53_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector56~0_combout\);

-- Location: LABCELL_X83_Y36_N24
\cir1|ref|waitNDCountNext[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(8) = ( \cir1|ref|waitNDCountNext\(8) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector56~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(8) & ( (\cir1|ref|Selector56~0_combout\ & \cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Selector56~0_combout\,
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(8),
	combout => \cir1|ref|waitNDCountNext\(8));

-- Location: FF_X84_Y36_N26
\cir1|ref|waitNDCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(8),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(8));

-- Location: MLABCELL_X84_Y36_N27
\cir1|ref|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~49_sumout\ = SUM(( \cir1|ref|waitNDCount\(9) ) + ( VCC ) + ( \cir1|ref|Add1~54\ ))
-- \cir1|ref|Add1~50\ = CARRY(( \cir1|ref|waitNDCount\(9) ) + ( VCC ) + ( \cir1|ref|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNDCount\(9),
	cin => \cir1|ref|Add1~54\,
	sumout => \cir1|ref|Add1~49_sumout\,
	cout => \cir1|ref|Add1~50\);

-- Location: LABCELL_X83_Y35_N9
\cir1|ref|Selector57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector57~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add1~49_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector57~0_combout\);

-- Location: LABCELL_X83_Y35_N36
\cir1|ref|waitNDCountNext[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(9) = ( \cir1|ref|Selector57~0_combout\ & ( (\cir1|ref|waitNDCountNext\(9)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector57~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(9),
	dataf => \cir1|ref|ALT_INV_Selector57~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(9));

-- Location: FF_X84_Y36_N50
\cir1|ref|waitNDCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(9),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(9));

-- Location: MLABCELL_X84_Y36_N30
\cir1|ref|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~45_sumout\ = SUM(( \cir1|ref|waitNDCount\(10) ) + ( VCC ) + ( \cir1|ref|Add1~50\ ))
-- \cir1|ref|Add1~46\ = CARRY(( \cir1|ref|waitNDCount\(10) ) + ( VCC ) + ( \cir1|ref|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(10),
	cin => \cir1|ref|Add1~50\,
	sumout => \cir1|ref|Add1~45_sumout\,
	cout => \cir1|ref|Add1~46\);

-- Location: MLABCELL_X82_Y36_N39
\cir1|ref|Selector58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector58~0_combout\ = ( \cir1|ref|Add1~45_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	datae => \cir1|ref|ALT_INV_Add1~45_sumout\,
	combout => \cir1|ref|Selector58~0_combout\);

-- Location: MLABCELL_X82_Y36_N27
\cir1|ref|waitNDCountNext[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(10) = ( \cir1|ref|waitNDCountNext\(10) & ( \cir1|ref|Selector58~0_combout\ ) ) # ( !\cir1|ref|waitNDCountNext\(10) & ( \cir1|ref|Selector58~0_combout\ & ( \cir1|ref|tick_disc~combout\ ) ) ) # ( \cir1|ref|waitNDCountNext\(10) & ( 
-- !\cir1|ref|Selector58~0_combout\ & ( !\cir1|ref|tick_disc~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	datae => \cir1|ref|ALT_INV_waitNDCountNext\(10),
	dataf => \cir1|ref|ALT_INV_Selector58~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(10));

-- Location: FF_X84_Y36_N56
\cir1|ref|waitNDCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(10),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(10));

-- Location: MLABCELL_X84_Y36_N33
\cir1|ref|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~41_sumout\ = SUM(( \cir1|ref|waitNDCount\(11) ) + ( VCC ) + ( \cir1|ref|Add1~46\ ))
-- \cir1|ref|Add1~42\ = CARRY(( \cir1|ref|waitNDCount\(11) ) + ( VCC ) + ( \cir1|ref|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(11),
	cin => \cir1|ref|Add1~46\,
	sumout => \cir1|ref|Add1~41_sumout\,
	cout => \cir1|ref|Add1~42\);

-- Location: LABCELL_X83_Y35_N54
\cir1|ref|Selector59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector59~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add1~41_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector59~0_combout\);

-- Location: LABCELL_X83_Y35_N48
\cir1|ref|waitNDCountNext[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(11) = ( \cir1|ref|Selector59~0_combout\ & ( (\cir1|ref|tick_disc~combout\) # (\cir1|ref|waitNDCountNext\(11)) ) ) # ( !\cir1|ref|Selector59~0_combout\ & ( (\cir1|ref|waitNDCountNext\(11) & !\cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCountNext\(11),
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_Selector59~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(11));

-- Location: FF_X85_Y36_N50
\cir1|ref|waitNDCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(11),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(11));

-- Location: MLABCELL_X84_Y36_N36
\cir1|ref|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~37_sumout\ = SUM(( \cir1|ref|waitNDCount\(12) ) + ( VCC ) + ( \cir1|ref|Add1~42\ ))
-- \cir1|ref|Add1~38\ = CARRY(( \cir1|ref|waitNDCount\(12) ) + ( VCC ) + ( \cir1|ref|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(12),
	cin => \cir1|ref|Add1~42\,
	sumout => \cir1|ref|Add1~37_sumout\,
	cout => \cir1|ref|Add1~38\);

-- Location: MLABCELL_X84_Y34_N27
\cir1|ref|Selector60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector60~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~37_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector60~0_combout\);

-- Location: MLABCELL_X84_Y34_N9
\cir1|ref|waitNDCountNext[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(12) = ( \cir1|ref|Selector60~0_combout\ & ( (\cir1|ref|tick_disc~combout\) # (\cir1|ref|waitNDCountNext\(12)) ) ) # ( !\cir1|ref|Selector60~0_combout\ & ( (\cir1|ref|waitNDCountNext\(12) & !\cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCountNext\(12),
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_Selector60~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(12));

-- Location: FF_X84_Y34_N11
\cir1|ref|waitNDCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(12),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(12));

-- Location: MLABCELL_X84_Y36_N39
\cir1|ref|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~33_sumout\ = SUM(( \cir1|ref|waitNDCount\(13) ) + ( VCC ) + ( \cir1|ref|Add1~38\ ))
-- \cir1|ref|Add1~34\ = CARRY(( \cir1|ref|waitNDCount\(13) ) + ( VCC ) + ( \cir1|ref|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(13),
	cin => \cir1|ref|Add1~38\,
	sumout => \cir1|ref|Add1~33_sumout\,
	cout => \cir1|ref|Add1~34\);

-- Location: LABCELL_X83_Y35_N18
\cir1|ref|Selector61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector61~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add1~33_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector61~0_combout\);

-- Location: LABCELL_X83_Y35_N21
\cir1|ref|waitNDCountNext[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(13) = ( \cir1|ref|Selector61~0_combout\ & ( (\cir1|ref|waitNDCountNext\(13)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector61~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(13),
	dataf => \cir1|ref|ALT_INV_Selector61~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(13));

-- Location: FF_X84_Y36_N29
\cir1|ref|waitNDCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(13),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(13));

-- Location: MLABCELL_X84_Y36_N42
\cir1|ref|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~77_sumout\ = SUM(( \cir1|ref|waitNDCount\(14) ) + ( VCC ) + ( \cir1|ref|Add1~34\ ))
-- \cir1|ref|Add1~78\ = CARRY(( \cir1|ref|waitNDCount\(14) ) + ( VCC ) + ( \cir1|ref|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(14),
	cin => \cir1|ref|Add1~34\,
	sumout => \cir1|ref|Add1~77_sumout\,
	cout => \cir1|ref|Add1~78\);

-- Location: LABCELL_X83_Y36_N30
\cir1|ref|Selector62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector62~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~77_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector62~0_combout\);

-- Location: LABCELL_X83_Y36_N33
\cir1|ref|waitNDCountNext[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(14) = ( \cir1|ref|waitNDCountNext\(14) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector62~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(14) & ( (\cir1|ref|tick_disc~combout\ & \cir1|ref|Selector62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datab => \cir1|ref|ALT_INV_Selector62~0_combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(14),
	combout => \cir1|ref|waitNDCountNext\(14));

-- Location: FF_X83_Y36_N35
\cir1|ref|waitNDCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(14),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(14));

-- Location: MLABCELL_X84_Y36_N45
\cir1|ref|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~73_sumout\ = SUM(( \cir1|ref|waitNDCount\(15) ) + ( VCC ) + ( \cir1|ref|Add1~78\ ))
-- \cir1|ref|Add1~74\ = CARRY(( \cir1|ref|waitNDCount\(15) ) + ( VCC ) + ( \cir1|ref|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(15),
	cin => \cir1|ref|Add1~78\,
	sumout => \cir1|ref|Add1~73_sumout\,
	cout => \cir1|ref|Add1~74\);

-- Location: LABCELL_X83_Y36_N48
\cir1|ref|Selector63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector63~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add1~73_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector63~0_combout\);

-- Location: LABCELL_X83_Y36_N51
\cir1|ref|waitNDCountNext[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(15) = ( \cir1|ref|waitNDCountNext\(15) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector63~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(15) & ( (\cir1|ref|tick_disc~combout\ & \cir1|ref|Selector63~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datab => \cir1|ref|ALT_INV_Selector63~0_combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(15),
	combout => \cir1|ref|waitNDCountNext\(15));

-- Location: FF_X83_Y36_N53
\cir1|ref|waitNDCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(15),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(15));

-- Location: MLABCELL_X84_Y36_N48
\cir1|ref|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~69_sumout\ = SUM(( \cir1|ref|waitNDCount\(16) ) + ( VCC ) + ( \cir1|ref|Add1~74\ ))
-- \cir1|ref|Add1~70\ = CARRY(( \cir1|ref|waitNDCount\(16) ) + ( VCC ) + ( \cir1|ref|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNDCount\(16),
	cin => \cir1|ref|Add1~74\,
	sumout => \cir1|ref|Add1~69_sumout\,
	cout => \cir1|ref|Add1~70\);

-- Location: LABCELL_X85_Y36_N30
\cir1|ref|Selector64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector64~0_combout\ = ( \cir1|ref|Add1~69_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_Add1~69_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector64~0_combout\);

-- Location: LABCELL_X85_Y36_N57
\cir1|ref|waitNDCountNext[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(16) = ( \cir1|ref|waitNDCountNext\(16) & ( \cir1|ref|tick_disc~combout\ & ( \cir1|ref|Selector64~0_combout\ ) ) ) # ( !\cir1|ref|waitNDCountNext\(16) & ( \cir1|ref|tick_disc~combout\ & ( \cir1|ref|Selector64~0_combout\ ) ) ) # ( 
-- \cir1|ref|waitNDCountNext\(16) & ( !\cir1|ref|tick_disc~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector64~0_combout\,
	datae => \cir1|ref|ALT_INV_waitNDCountNext\(16),
	dataf => \cir1|ref|ALT_INV_tick_disc~combout\,
	combout => \cir1|ref|waitNDCountNext\(16));

-- Location: FF_X84_Y36_N32
\cir1|ref|waitNDCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(16),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(16));

-- Location: MLABCELL_X84_Y36_N51
\cir1|ref|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~65_sumout\ = SUM(( \cir1|ref|waitNDCount\(17) ) + ( VCC ) + ( \cir1|ref|Add1~70\ ))
-- \cir1|ref|Add1~66\ = CARRY(( \cir1|ref|waitNDCount\(17) ) + ( VCC ) + ( \cir1|ref|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(17),
	cin => \cir1|ref|Add1~70\,
	sumout => \cir1|ref|Add1~65_sumout\,
	cout => \cir1|ref|Add1~66\);

-- Location: LABCELL_X85_Y35_N48
\cir1|ref|Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector65~0_combout\ = ( \cir1|ref|Add1~65_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~65_sumout\,
	combout => \cir1|ref|Selector65~0_combout\);

-- Location: LABCELL_X85_Y35_N33
\cir1|ref|waitNDCountNext[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(17) = ( \cir1|ref|waitNDCountNext\(17) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector65~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(17) & ( (\cir1|ref|Selector65~0_combout\ & \cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector65~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(17),
	combout => \cir1|ref|waitNDCountNext\(17));

-- Location: FF_X84_Y36_N59
\cir1|ref|waitNDCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(17),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(17));

-- Location: MLABCELL_X84_Y36_N54
\cir1|ref|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~61_sumout\ = SUM(( \cir1|ref|waitNDCount\(18) ) + ( VCC ) + ( \cir1|ref|Add1~66\ ))
-- \cir1|ref|Add1~62\ = CARRY(( \cir1|ref|waitNDCount\(18) ) + ( VCC ) + ( \cir1|ref|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNDCount\(18),
	cin => \cir1|ref|Add1~66\,
	sumout => \cir1|ref|Add1~61_sumout\,
	cout => \cir1|ref|Add1~62\);

-- Location: LABCELL_X85_Y36_N42
\cir1|ref|Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector66~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add1~61_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector66~0_combout\);

-- Location: LABCELL_X85_Y36_N9
\cir1|ref|waitNDCountNext[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(18) = ( \cir1|ref|waitNDCountNext\(18) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector66~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(18) & ( (\cir1|ref|Selector66~0_combout\ & \cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector66~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(18),
	combout => \cir1|ref|waitNDCountNext\(18));

-- Location: FF_X84_Y36_N41
\cir1|ref|waitNDCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(18),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(18));

-- Location: MLABCELL_X84_Y36_N57
\cir1|ref|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~57_sumout\ = SUM(( \cir1|ref|waitNDCount\(19) ) + ( VCC ) + ( \cir1|ref|Add1~62\ ))
-- \cir1|ref|Add1~58\ = CARRY(( \cir1|ref|waitNDCount\(19) ) + ( VCC ) + ( \cir1|ref|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(19),
	cin => \cir1|ref|Add1~62\,
	sumout => \cir1|ref|Add1~57_sumout\,
	cout => \cir1|ref|Add1~58\);

-- Location: LABCELL_X83_Y36_N57
\cir1|ref|Selector67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector67~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add1~57_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector67~0_combout\);

-- Location: LABCELL_X83_Y36_N54
\cir1|ref|waitNDCountNext[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(19) = (!\cir1|ref|tick_disc~combout\ & ((\cir1|ref|waitNDCountNext\(19)))) # (\cir1|ref|tick_disc~combout\ & (\cir1|ref|Selector67~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector67~0_combout\,
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(19),
	combout => \cir1|ref|waitNDCountNext\(19));

-- Location: FF_X83_Y36_N56
\cir1|ref|waitNDCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(19),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(19));

-- Location: MLABCELL_X84_Y35_N0
\cir1|ref|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~125_sumout\ = SUM(( \cir1|ref|waitNDCount\(20) ) + ( VCC ) + ( \cir1|ref|Add1~58\ ))
-- \cir1|ref|Add1~126\ = CARRY(( \cir1|ref|waitNDCount\(20) ) + ( VCC ) + ( \cir1|ref|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(20),
	cin => \cir1|ref|Add1~58\,
	sumout => \cir1|ref|Add1~125_sumout\,
	cout => \cir1|ref|Add1~126\);

-- Location: LABCELL_X85_Y35_N0
\cir1|ref|Selector68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector68~0_combout\ = ( \cir1|ref|Add1~125_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~125_sumout\,
	combout => \cir1|ref|Selector68~0_combout\);

-- Location: LABCELL_X85_Y35_N3
\cir1|ref|waitNDCountNext[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(20) = ( \cir1|ref|Selector68~0_combout\ & ( (\cir1|ref|waitNDCountNext\(20)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector68~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(20),
	dataf => \cir1|ref|ALT_INV_Selector68~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(20));

-- Location: FF_X85_Y35_N5
\cir1|ref|waitNDCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(20),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(20));

-- Location: MLABCELL_X84_Y35_N3
\cir1|ref|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~121_sumout\ = SUM(( \cir1|ref|waitNDCount\(21) ) + ( VCC ) + ( \cir1|ref|Add1~126\ ))
-- \cir1|ref|Add1~122\ = CARRY(( \cir1|ref|waitNDCount\(21) ) + ( VCC ) + ( \cir1|ref|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(21),
	cin => \cir1|ref|Add1~126\,
	sumout => \cir1|ref|Add1~121_sumout\,
	cout => \cir1|ref|Add1~122\);

-- Location: LABCELL_X83_Y35_N27
\cir1|ref|Selector69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector69~0_combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|Add1~121_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add1~121_sumout\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|Selector69~0_combout\);

-- Location: LABCELL_X83_Y35_N24
\cir1|ref|waitNDCountNext[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(21) = ( \cir1|ref|Selector69~0_combout\ & ( (\cir1|ref|waitNDCountNext\(21)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector69~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(21)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datac => \cir1|ref|ALT_INV_waitNDCountNext\(21),
	dataf => \cir1|ref|ALT_INV_Selector69~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(21));

-- Location: FF_X83_Y35_N26
\cir1|ref|waitNDCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(21),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(21));

-- Location: MLABCELL_X84_Y35_N6
\cir1|ref|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~117_sumout\ = SUM(( \cir1|ref|waitNDCount\(22) ) + ( VCC ) + ( \cir1|ref|Add1~122\ ))
-- \cir1|ref|Add1~118\ = CARRY(( \cir1|ref|waitNDCount\(22) ) + ( VCC ) + ( \cir1|ref|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(22),
	cin => \cir1|ref|Add1~122\,
	sumout => \cir1|ref|Add1~117_sumout\,
	cout => \cir1|ref|Add1~118\);

-- Location: LABCELL_X85_Y36_N15
\cir1|ref|Selector70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector70~0_combout\ = ( \cir1|ref|Add1~117_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~117_sumout\,
	combout => \cir1|ref|Selector70~0_combout\);

-- Location: LABCELL_X85_Y36_N12
\cir1|ref|waitNDCountNext[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(22) = ( \cir1|ref|waitNDCountNext\(22) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector70~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(22) & ( (\cir1|ref|Selector70~0_combout\ & \cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector70~0_combout\,
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(22),
	combout => \cir1|ref|waitNDCountNext\(22));

-- Location: FF_X85_Y36_N14
\cir1|ref|waitNDCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(22),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(22));

-- Location: MLABCELL_X84_Y35_N9
\cir1|ref|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~113_sumout\ = SUM(( \cir1|ref|waitNDCount\(23) ) + ( VCC ) + ( \cir1|ref|Add1~118\ ))
-- \cir1|ref|Add1~114\ = CARRY(( \cir1|ref|waitNDCount\(23) ) + ( VCC ) + ( \cir1|ref|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(23),
	cin => \cir1|ref|Add1~118\,
	sumout => \cir1|ref|Add1~113_sumout\,
	cout => \cir1|ref|Add1~114\);

-- Location: LABCELL_X85_Y35_N45
\cir1|ref|Selector71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector71~0_combout\ = (\cir1|ref|stateD_reg.waitNClk~q\ & \cir1|ref|Add1~113_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	datac => \cir1|ref|ALT_INV_Add1~113_sumout\,
	combout => \cir1|ref|Selector71~0_combout\);

-- Location: LABCELL_X85_Y35_N42
\cir1|ref|waitNDCountNext[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(23) = ( \cir1|ref|Selector71~0_combout\ & ( (\cir1|ref|tick_disc~combout\) # (\cir1|ref|waitNDCountNext\(23)) ) ) # ( !\cir1|ref|Selector71~0_combout\ & ( (\cir1|ref|waitNDCountNext\(23) & !\cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_waitNDCountNext\(23),
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_Selector71~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(23));

-- Location: FF_X85_Y35_N44
\cir1|ref|waitNDCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(23),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(23));

-- Location: MLABCELL_X84_Y35_N12
\cir1|ref|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~109_sumout\ = SUM(( \cir1|ref|waitNDCount\(24) ) + ( VCC ) + ( \cir1|ref|Add1~114\ ))
-- \cir1|ref|Add1~110\ = CARRY(( \cir1|ref|waitNDCount\(24) ) + ( VCC ) + ( \cir1|ref|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(24),
	cin => \cir1|ref|Add1~114\,
	sumout => \cir1|ref|Add1~109_sumout\,
	cout => \cir1|ref|Add1~110\);

-- Location: LABCELL_X83_Y35_N30
\cir1|ref|Selector72~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector72~0_combout\ = ( \cir1|ref|Add1~109_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~109_sumout\,
	combout => \cir1|ref|Selector72~0_combout\);

-- Location: LABCELL_X83_Y35_N57
\cir1|ref|waitNDCountNext[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(24) = ( \cir1|ref|Selector72~0_combout\ & ( (\cir1|ref|waitNDCountNext\(24)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector72~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(24)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(24),
	dataf => \cir1|ref|ALT_INV_Selector72~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(24));

-- Location: FF_X84_Y35_N53
\cir1|ref|waitNDCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(24),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(24));

-- Location: MLABCELL_X84_Y35_N15
\cir1|ref|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~105_sumout\ = SUM(( \cir1|ref|waitNDCount\(25) ) + ( VCC ) + ( \cir1|ref|Add1~110\ ))
-- \cir1|ref|Add1~106\ = CARRY(( \cir1|ref|waitNDCount\(25) ) + ( VCC ) + ( \cir1|ref|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(25),
	cin => \cir1|ref|Add1~110\,
	sumout => \cir1|ref|Add1~105_sumout\,
	cout => \cir1|ref|Add1~106\);

-- Location: MLABCELL_X84_Y35_N39
\cir1|ref|Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector73~0_combout\ = ( \cir1|ref|Add1~105_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~105_sumout\,
	combout => \cir1|ref|Selector73~0_combout\);

-- Location: MLABCELL_X84_Y35_N36
\cir1|ref|waitNDCountNext[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(25) = ( \cir1|ref|Selector73~0_combout\ & ( (\cir1|ref|waitNDCountNext\(25)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector73~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(25),
	dataf => \cir1|ref|ALT_INV_Selector73~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(25));

-- Location: FF_X84_Y35_N38
\cir1|ref|waitNDCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(25),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(25));

-- Location: LABCELL_X85_Y35_N54
\cir1|ref|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal1~5_combout\ = ( !\cir1|ref|waitNDCount\(22) & ( !\cir1|ref|waitNDCount\(25) & ( (!\cir1|ref|waitNDCount\(20) & (!\cir1|ref|waitNDCount\(23) & (!\cir1|ref|waitNDCount\(24) & !\cir1|ref|waitNDCount\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNDCount\(20),
	datab => \cir1|ref|ALT_INV_waitNDCount\(23),
	datac => \cir1|ref|ALT_INV_waitNDCount\(24),
	datad => \cir1|ref|ALT_INV_waitNDCount\(21),
	datae => \cir1|ref|ALT_INV_waitNDCount\(22),
	dataf => \cir1|ref|ALT_INV_waitNDCount\(25),
	combout => \cir1|ref|Equal1~5_combout\);

-- Location: MLABCELL_X84_Y35_N18
\cir1|ref|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~101_sumout\ = SUM(( \cir1|ref|waitNDCount\(26) ) + ( VCC ) + ( \cir1|ref|Add1~106\ ))
-- \cir1|ref|Add1~102\ = CARRY(( \cir1|ref|waitNDCount\(26) ) + ( VCC ) + ( \cir1|ref|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(26),
	cin => \cir1|ref|Add1~106\,
	sumout => \cir1|ref|Add1~101_sumout\,
	cout => \cir1|ref|Add1~102\);

-- Location: LABCELL_X85_Y35_N12
\cir1|ref|Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector74~0_combout\ = ( \cir1|ref|Add1~101_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~101_sumout\,
	combout => \cir1|ref|Selector74~0_combout\);

-- Location: LABCELL_X85_Y35_N6
\cir1|ref|waitNDCountNext[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(26) = ( \cir1|ref|waitNDCountNext\(26) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector74~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(26) & ( (\cir1|ref|Selector74~0_combout\ & \cir1|ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector74~0_combout\,
	datad => \cir1|ref|ALT_INV_tick_disc~combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(26),
	combout => \cir1|ref|waitNDCountNext\(26));

-- Location: FF_X85_Y35_N8
\cir1|ref|waitNDCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(26),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(26));

-- Location: MLABCELL_X84_Y35_N21
\cir1|ref|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~97_sumout\ = SUM(( \cir1|ref|waitNDCount\(27) ) + ( VCC ) + ( \cir1|ref|Add1~102\ ))
-- \cir1|ref|Add1~98\ = CARRY(( \cir1|ref|waitNDCount\(27) ) + ( VCC ) + ( \cir1|ref|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(27),
	cin => \cir1|ref|Add1~102\,
	sumout => \cir1|ref|Add1~97_sumout\,
	cout => \cir1|ref|Add1~98\);

-- Location: MLABCELL_X84_Y35_N42
\cir1|ref|Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector75~0_combout\ = ( \cir1|ref|Add1~97_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~97_sumout\,
	combout => \cir1|ref|Selector75~0_combout\);

-- Location: MLABCELL_X84_Y35_N57
\cir1|ref|waitNDCountNext[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(27) = ( \cir1|ref|Selector75~0_combout\ & ( (\cir1|ref|waitNDCountNext\(27)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector75~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(27),
	dataf => \cir1|ref|ALT_INV_Selector75~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(27));

-- Location: FF_X84_Y35_N59
\cir1|ref|waitNDCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(27),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(27));

-- Location: MLABCELL_X84_Y35_N24
\cir1|ref|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~93_sumout\ = SUM(( \cir1|ref|waitNDCount\(28) ) + ( VCC ) + ( \cir1|ref|Add1~98\ ))
-- \cir1|ref|Add1~94\ = CARRY(( \cir1|ref|waitNDCount\(28) ) + ( VCC ) + ( \cir1|ref|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(28),
	cin => \cir1|ref|Add1~98\,
	sumout => \cir1|ref|Add1~93_sumout\,
	cout => \cir1|ref|Add1~94\);

-- Location: MLABCELL_X84_Y35_N54
\cir1|ref|Selector76~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector76~0_combout\ = ( \cir1|ref|Add1~93_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~93_sumout\,
	combout => \cir1|ref|Selector76~0_combout\);

-- Location: MLABCELL_X84_Y35_N51
\cir1|ref|waitNDCountNext[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(28) = ( \cir1|ref|Selector76~0_combout\ & ( (\cir1|ref|waitNDCountNext\(28)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector76~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_disc~combout\,
	datac => \cir1|ref|ALT_INV_waitNDCountNext\(28),
	dataf => \cir1|ref|ALT_INV_Selector76~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(28));

-- Location: FF_X85_Y35_N53
\cir1|ref|waitNDCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(28),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(28));

-- Location: MLABCELL_X84_Y35_N27
\cir1|ref|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~89_sumout\ = SUM(( \cir1|ref|waitNDCount\(29) ) + ( VCC ) + ( \cir1|ref|Add1~94\ ))
-- \cir1|ref|Add1~90\ = CARRY(( \cir1|ref|waitNDCount\(29) ) + ( VCC ) + ( \cir1|ref|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNDCount\(29),
	cin => \cir1|ref|Add1~94\,
	sumout => \cir1|ref|Add1~89_sumout\,
	cout => \cir1|ref|Add1~90\);

-- Location: MLABCELL_X84_Y35_N48
\cir1|ref|Selector77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector77~0_combout\ = ( \cir1|ref|Add1~89_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~89_sumout\,
	combout => \cir1|ref|Selector77~0_combout\);

-- Location: MLABCELL_X84_Y35_N45
\cir1|ref|waitNDCountNext[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(29) = ( \cir1|ref|Selector77~0_combout\ & ( (\cir1|ref|waitNDCountNext\(29)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector77~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(29)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(29),
	dataf => \cir1|ref|ALT_INV_Selector77~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(29));

-- Location: FF_X84_Y35_N47
\cir1|ref|waitNDCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|waitNDCountNext\(29),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(29));

-- Location: MLABCELL_X84_Y35_N30
\cir1|ref|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~85_sumout\ = SUM(( \cir1|ref|waitNDCount\(30) ) + ( VCC ) + ( \cir1|ref|Add1~90\ ))
-- \cir1|ref|Add1~86\ = CARRY(( \cir1|ref|waitNDCount\(30) ) + ( VCC ) + ( \cir1|ref|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_waitNDCount\(30),
	cin => \cir1|ref|Add1~90\,
	sumout => \cir1|ref|Add1~85_sumout\,
	cout => \cir1|ref|Add1~86\);

-- Location: LABCELL_X83_Y35_N51
\cir1|ref|Selector78~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector78~0_combout\ = ( \cir1|ref|Add1~85_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~85_sumout\,
	combout => \cir1|ref|Selector78~0_combout\);

-- Location: LABCELL_X83_Y35_N6
\cir1|ref|waitNDCountNext[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(30) = ( \cir1|ref|waitNDCountNext\(30) & ( (!\cir1|ref|tick_disc~combout\) # (\cir1|ref|Selector78~0_combout\) ) ) # ( !\cir1|ref|waitNDCountNext\(30) & ( (\cir1|ref|tick_disc~combout\ & \cir1|ref|Selector78~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datab => \cir1|ref|ALT_INV_Selector78~0_combout\,
	dataf => \cir1|ref|ALT_INV_waitNDCountNext\(30),
	combout => \cir1|ref|waitNDCountNext\(30));

-- Location: FF_X85_Y35_N23
\cir1|ref|waitNDCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(30),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(30));

-- Location: MLABCELL_X84_Y35_N33
\cir1|ref|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add1~81_sumout\ = SUM(( \cir1|ref|waitNDCount\(31) ) + ( VCC ) + ( \cir1|ref|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(31),
	cin => \cir1|ref|Add1~86\,
	sumout => \cir1|ref|Add1~81_sumout\);

-- Location: LABCELL_X83_Y35_N39
\cir1|ref|Selector79~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector79~0_combout\ = ( \cir1|ref|Add1~81_sumout\ & ( \cir1|ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \cir1|ref|ALT_INV_Add1~81_sumout\,
	combout => \cir1|ref|Selector79~0_combout\);

-- Location: LABCELL_X83_Y35_N33
\cir1|ref|waitNDCountNext[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|waitNDCountNext\(31) = ( \cir1|ref|Selector79~0_combout\ & ( (\cir1|ref|waitNDCountNext\(31)) # (\cir1|ref|tick_disc~combout\) ) ) # ( !\cir1|ref|Selector79~0_combout\ & ( (!\cir1|ref|tick_disc~combout\ & \cir1|ref|waitNDCountNext\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_waitNDCountNext\(31),
	dataf => \cir1|ref|ALT_INV_Selector79~0_combout\,
	combout => \cir1|ref|waitNDCountNext\(31));

-- Location: FF_X84_Y35_N56
\cir1|ref|waitNDCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|waitNDCountNext\(31),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|waitNDCount\(31));

-- Location: LABCELL_X85_Y35_N36
\cir1|ref|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal1~4_combout\ = ( !\cir1|ref|waitNDCount\(26) & ( !\cir1|ref|waitNDCount\(27) & ( (!\cir1|ref|waitNDCount\(29) & (!\cir1|ref|waitNDCount\(31) & (!\cir1|ref|waitNDCount\(28) & !\cir1|ref|waitNDCount\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNDCount\(29),
	datab => \cir1|ref|ALT_INV_waitNDCount\(31),
	datac => \cir1|ref|ALT_INV_waitNDCount\(28),
	datad => \cir1|ref|ALT_INV_waitNDCount\(30),
	datae => \cir1|ref|ALT_INV_waitNDCount\(26),
	dataf => \cir1|ref|ALT_INV_waitNDCount\(27),
	combout => \cir1|ref|Equal1~4_combout\);

-- Location: LABCELL_X85_Y36_N24
\cir1|ref|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal1~3_combout\ = ( !\cir1|ref|waitNDCount\(17) & ( !\cir1|ref|waitNDCount\(19) & ( (!\cir1|ref|waitNDCount\(15) & (!\cir1|ref|waitNDCount\(14) & (!\cir1|ref|waitNDCount\(18) & !\cir1|ref|waitNDCount\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNDCount\(15),
	datab => \cir1|ref|ALT_INV_waitNDCount\(14),
	datac => \cir1|ref|ALT_INV_waitNDCount\(18),
	datad => \cir1|ref|ALT_INV_waitNDCount\(16),
	datae => \cir1|ref|ALT_INV_waitNDCount\(17),
	dataf => \cir1|ref|ALT_INV_waitNDCount\(19),
	combout => \cir1|ref|Equal1~3_combout\);

-- Location: LABCELL_X85_Y35_N15
\cir1|ref|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal1~0_combout\ = ( !\cir1|ref|waitNDCount\(0) & ( !\cir1|ref|waitNDCount\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_waitNDCount\(1),
	dataf => \cir1|ref|ALT_INV_waitNDCount\(0),
	combout => \cir1|ref|Equal1~0_combout\);

-- Location: LABCELL_X85_Y36_N18
\cir1|ref|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal1~1_combout\ = ( !\cir1|ref|waitNDCount\(6) & ( !\cir1|ref|waitNDCount\(2) & ( (!\cir1|ref|waitNDCount\(4) & (!\cir1|ref|waitNDCount\(5) & (!\cir1|ref|waitNDCount\(7) & !\cir1|ref|waitNDCount\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNDCount\(4),
	datab => \cir1|ref|ALT_INV_waitNDCount\(5),
	datac => \cir1|ref|ALT_INV_waitNDCount\(7),
	datad => \cir1|ref|ALT_INV_waitNDCount\(3),
	datae => \cir1|ref|ALT_INV_waitNDCount\(6),
	dataf => \cir1|ref|ALT_INV_waitNDCount\(2),
	combout => \cir1|ref|Equal1~1_combout\);

-- Location: LABCELL_X85_Y36_N3
\cir1|ref|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal1~2_combout\ = ( !\cir1|ref|waitNDCount\(13) & ( !\cir1|ref|waitNDCount\(9) & ( (!\cir1|ref|waitNDCount\(11) & (!\cir1|ref|waitNDCount\(8) & (!\cir1|ref|waitNDCount\(12) & !\cir1|ref|waitNDCount\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_waitNDCount\(11),
	datab => \cir1|ref|ALT_INV_waitNDCount\(8),
	datac => \cir1|ref|ALT_INV_waitNDCount\(12),
	datad => \cir1|ref|ALT_INV_waitNDCount\(10),
	datae => \cir1|ref|ALT_INV_waitNDCount\(13),
	dataf => \cir1|ref|ALT_INV_waitNDCount\(9),
	combout => \cir1|ref|Equal1~2_combout\);

-- Location: LABCELL_X85_Y35_N24
\cir1|ref|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal1~6_combout\ = ( \cir1|ref|Equal1~1_combout\ & ( \cir1|ref|Equal1~2_combout\ & ( (\cir1|ref|Equal1~5_combout\ & (\cir1|ref|Equal1~4_combout\ & (\cir1|ref|Equal1~3_combout\ & \cir1|ref|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal1~5_combout\,
	datab => \cir1|ref|ALT_INV_Equal1~4_combout\,
	datac => \cir1|ref|ALT_INV_Equal1~3_combout\,
	datad => \cir1|ref|ALT_INV_Equal1~0_combout\,
	datae => \cir1|ref|ALT_INV_Equal1~1_combout\,
	dataf => \cir1|ref|ALT_INV_Equal1~2_combout\,
	combout => \cir1|ref|Equal1~6_combout\);

-- Location: LABCELL_X85_Y35_N9
\cir1|ref|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector8~0_combout\ = ( \cir1|ref|Equal1~6_combout\ & ( \cir1|ref|stateD_reg.rdy1~q\ ) ) # ( !\cir1|ref|Equal1~6_combout\ & ( (\cir1|ref|stateD_reg.rdy1~q\) # (\cir1|ref|stateD_reg.waitNClk~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \cir1|ref|ALT_INV_stateD_reg.rdy1~q\,
	dataf => \cir1|ref|ALT_INV_Equal1~6_combout\,
	combout => \cir1|ref|Selector8~0_combout\);

-- Location: FF_X83_Y35_N14
\cir1|ref|stateD_reg.waitNClk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|ref|Selector8~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateD_reg.waitNClk~q\);

-- Location: LABCELL_X85_Y35_N30
\cir1|ref|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector9~0_combout\ = (\cir1|ref|stateD_reg.waitNClk~q\ & \cir1|ref|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	datac => \cir1|ref|ALT_INV_Equal1~6_combout\,
	combout => \cir1|ref|Selector9~0_combout\);

-- Location: LABCELL_X85_Y35_N18
\cir1|ref|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector9~1_combout\ = ( \cir1|ref|stateD_reg.waitRdy0~q\ & ( !\cir1|ref|Selector9~0_combout\ ) ) # ( !\cir1|ref|stateD_reg.waitRdy0~q\ & ( !\cir1|ref|Selector9~0_combout\ & ( (!\enable~input_o\) # 
-- ((!\cir1|guru|base|control|main|STATE.CHECK_END~q\) # ((!\cir1|guru|step|cnt_disc_rdy~1_combout\ & !\cir1|guru|step|cnt_disc_rdy~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_disc_rdy~1_combout\,
	datab => \ALT_INV_enable~input_o\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datad => \cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\,
	datae => \cir1|ref|ALT_INV_stateD_reg.waitRdy0~q\,
	dataf => \cir1|ref|ALT_INV_Selector9~0_combout\,
	combout => \cir1|ref|Selector9~1_combout\);

-- Location: FF_X85_Y35_N19
\cir1|ref|stateD_reg.waitRdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector9~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateD_reg.waitRdy0~q\);

-- Location: LABCELL_X83_Y35_N15
\cir1|ref|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector7~0_combout\ = ( \cir1|ref|stateD_reg.rdy0~q\ & ( \cir1|ref|stateD_reg.waitRdy0~q\ & ( (!\enable~input_o\) # ((!\cir1|guru|base|control|main|STATE.CHECK_END~q\) # ((!\cir1|guru|step|cnt_disc_rdy~0_combout\ & 
-- !\cir1|guru|step|cnt_disc_rdy~1_combout\))) ) ) ) # ( \cir1|ref|stateD_reg.rdy0~q\ & ( !\cir1|ref|stateD_reg.waitRdy0~q\ & ( (!\enable~input_o\) # ((!\cir1|guru|base|control|main|STATE.CHECK_END~q\) # ((!\cir1|guru|step|cnt_disc_rdy~0_combout\ & 
-- !\cir1|guru|step|cnt_disc_rdy~1_combout\))) ) ) ) # ( !\cir1|ref|stateD_reg.rdy0~q\ & ( !\cir1|ref|stateD_reg.waitRdy0~q\ & ( (!\enable~input_o\) # ((!\cir1|guru|base|control|main|STATE.CHECK_END~q\) # ((!\cir1|guru|step|cnt_disc_rdy~0_combout\ & 
-- !\cir1|guru|step|cnt_disc_rdy~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101110111111101110111000000000000000001111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datac => \cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\,
	datad => \cir1|guru|step|ALT_INV_cnt_disc_rdy~1_combout\,
	datae => \cir1|ref|ALT_INV_stateD_reg.rdy0~q\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitRdy0~q\,
	combout => \cir1|ref|Selector7~0_combout\);

-- Location: FF_X83_Y35_N17
\cir1|ref|stateD_reg.rdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector7~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateD_reg.rdy0~q\);

-- Location: LABCELL_X83_Y35_N45
\cir1|ref|stateD_next.rdy1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|stateD_next.rdy1~0_combout\ = ( \cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( (\cir1|ref|stateD_reg.rdy0~q\ & (\enable~input_o\ & ((\cir1|guru|step|cnt_disc_rdy~0_combout\) # (\cir1|guru|step|cnt_disc_rdy~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|step|ALT_INV_cnt_disc_rdy~1_combout\,
	datab => \cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\,
	datac => \cir1|ref|ALT_INV_stateD_reg.rdy0~q\,
	datad => \ALT_INV_enable~input_o\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \cir1|ref|stateD_next.rdy1~0_combout\);

-- Location: FF_X83_Y35_N47
\cir1|ref|stateD_reg.rdy1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|stateD_next.rdy1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|stateD_reg.rdy1~q\);

-- Location: LABCELL_X83_Y35_N0
\cir1|ref|tick_disc\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|tick_disc~combout\ = ( \cir1|ref|stateD_reg.waitNClk~q\ ) # ( !\cir1|ref|stateD_reg.waitNClk~q\ & ( \cir1|ref|stateD_reg.rdy1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_stateD_reg.rdy1~q\,
	dataf => \cir1|ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \cir1|ref|tick_disc~combout\);

-- Location: LABCELL_X85_Y34_N18
\cir1|ref|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector19~0_combout\ = ( !\cir1|ref|tick_disc~combout\ & ( (\cir1|ref|tick_guru~combout\ & !\cir1|ref|state_reg.idle~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_state_reg.idle~q\,
	dataf => \cir1|ref|ALT_INV_tick_disc~combout\,
	combout => \cir1|ref|Selector19~0_combout\);

-- Location: LABCELL_X85_Y34_N39
\cir1|ref|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector19~1_combout\ = ( \cir1|ref|state_reg.wait55~q\ & ( \cir1|ref|Selector19~0_combout\ ) ) # ( !\cir1|ref|state_reg.wait55~q\ & ( \cir1|ref|Selector19~0_combout\ ) ) # ( \cir1|ref|state_reg.wait55~q\ & ( !\cir1|ref|Selector19~0_combout\ & ( 
-- (!\cir1|ref|LessThan0~5_combout\ & \cir1|ref|mainCnt\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	datac => \cir1|ref|ALT_INV_mainCnt\(31),
	datae => \cir1|ref|ALT_INV_state_reg.wait55~q\,
	dataf => \cir1|ref|ALT_INV_Selector19~0_combout\,
	combout => \cir1|ref|Selector19~1_combout\);

-- Location: FF_X85_Y34_N41
\cir1|ref|state_reg.wait55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector19~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.wait55~q\);

-- Location: LABCELL_X85_Y34_N12
\cir1|ref|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector21~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|state_reg.wait50l~q\ ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|state_reg.wait50l~q\ & ( !\cir1|ref|mainCnt\(31) ) ) ) # ( \cir1|ref|LessThan0~5_combout\ & ( 
-- !\cir1|ref|state_reg.wait50l~q\ & ( \cir1|ref|state_reg.wait55~q\ ) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( !\cir1|ref|state_reg.wait50l~q\ & ( (!\cir1|ref|mainCnt\(31) & \cir1|ref|state_reg.wait55~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001111111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_mainCnt\(31),
	datad => \cir1|ref|ALT_INV_state_reg.wait55~q\,
	datae => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_state_reg.wait50l~q\,
	combout => \cir1|ref|Selector21~0_combout\);

-- Location: FF_X85_Y34_N13
\cir1|ref|state_reg.unm_go_guru\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector21~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.unm_go_guru~q\);

-- Location: LABCELL_X85_Y34_N42
\cir1|ref|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector13~0_combout\ = ( !\cir1|ref|state_reg.unm_go_guru~q\ & ( (!\cir1|ref|state_reg.unm_go_discB~q\ & (((\cir1|ref|tick_guru~combout\) # (\cir1|ref|state_reg.idle~q\)) # (\cir1|ref|tick_disc~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000011111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datab => \cir1|ref|ALT_INV_state_reg.idle~q\,
	datac => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_state_reg.unm_go_discB~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.unm_go_guru~q\,
	combout => \cir1|ref|Selector13~0_combout\);

-- Location: FF_X85_Y34_N44
\cir1|ref|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector13~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.idle~q\);

-- Location: LABCELL_X85_Y34_N48
\cir1|ref|mainCnt[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|mainCnt[5]~1_combout\ = ( !\cir1|ref|state_reg.unm_godisc_BL~q\ & ( !\cir1|ref|state_reg.go_guru_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.go_guru_state~q\,
	combout => \cir1|ref|mainCnt[5]~1_combout\);

-- Location: LABCELL_X88_Y33_N0
\cir1|ref|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~5_sumout\ = SUM(( !\cir1|ref|mainCnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \cir1|ref|Add2~6\ = CARRY(( !\cir1|ref|mainCnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \cir1|ref|Add2~5_sumout\,
	cout => \cir1|ref|Add2~6\);

-- Location: LABCELL_X88_Y34_N45
\cir1|ref|Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector53~0_combout\ = ( \cir1|ref|Add2~5_sumout\ & ( \cir1|ref|LessThan0~5_combout\ ) ) # ( !\cir1|ref|Add2~5_sumout\ & ( \cir1|ref|LessThan0~5_combout\ ) ) # ( \cir1|ref|Add2~5_sumout\ & ( !\cir1|ref|LessThan0~5_combout\ & ( 
-- (!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) ) # ( !\cir1|ref|Add2~5_sumout\ & ( !\cir1|ref|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datae => \cir1|ref|ALT_INV_Add2~5_sumout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector53~0_combout\);

-- Location: FF_X88_Y34_N47
\cir1|ref|mainCnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector53~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N3
\cir1|ref|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~29_sumout\ = SUM(( !\cir1|ref|mainCnt\(1) ) + ( VCC ) + ( \cir1|ref|Add2~6\ ))
-- \cir1|ref|Add2~30\ = CARRY(( !\cir1|ref|mainCnt\(1) ) + ( VCC ) + ( \cir1|ref|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(1),
	cin => \cir1|ref|Add2~6\,
	sumout => \cir1|ref|Add2~29_sumout\,
	cout => \cir1|ref|Add2~30\);

-- Location: MLABCELL_X87_Y33_N30
\cir1|ref|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector52~0_combout\ = ( \cir1|ref|Add2~29_sumout\ & ( ((\cir1|ref|tick_guru~combout\ & !\cir1|ref|tick_disc~combout\)) # (\cir1|ref|state_reg.idle~q\) ) ) # ( !\cir1|ref|Add2~29_sumout\ & ( (\cir1|ref|tick_guru~combout\ & 
-- (!\cir1|ref|tick_disc~combout\ & !\cir1|ref|state_reg.idle~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_guru~combout\,
	datac => \cir1|ref|ALT_INV_tick_disc~combout\,
	datad => \cir1|ref|ALT_INV_state_reg.idle~q\,
	dataf => \cir1|ref|ALT_INV_Add2~29_sumout\,
	combout => \cir1|ref|Selector52~0_combout\);

-- Location: MLABCELL_X87_Y33_N12
\cir1|ref|Selector52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector52~1_combout\ = ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|Selector52~0_combout\ & ( (\cir1|ref|mainCnt[5]~1_combout\ & \cir1|ref|state_reg.idle~q\) ) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|Selector52~0_combout\ & ( 
-- (\cir1|ref|mainCnt[5]~1_combout\ & (\cir1|ref|state_reg.idle~q\ & ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|mainCnt[5]~0_combout\)))) ) ) ) # ( \cir1|ref|LessThan0~5_combout\ & ( !\cir1|ref|Selector52~0_combout\ & ( 
-- \cir1|ref|mainCnt[5]~1_combout\ ) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( !\cir1|ref|Selector52~0_combout\ & ( \cir1|ref|mainCnt[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011010000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~1_combout\,
	datad => \cir1|ref|ALT_INV_state_reg.idle~q\,
	datae => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Selector52~0_combout\,
	combout => \cir1|ref|Selector52~1_combout\);

-- Location: FF_X87_Y33_N14
\cir1|ref|mainCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector52~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(1));

-- Location: LABCELL_X88_Y33_N6
\cir1|ref|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~25_sumout\ = SUM(( !\cir1|ref|mainCnt\(2) ) + ( VCC ) + ( \cir1|ref|Add2~30\ ))
-- \cir1|ref|Add2~26\ = CARRY(( !\cir1|ref|mainCnt\(2) ) + ( VCC ) + ( \cir1|ref|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt\(2),
	cin => \cir1|ref|Add2~30\,
	sumout => \cir1|ref|Add2~25_sumout\,
	cout => \cir1|ref|Add2~26\);

-- Location: MLABCELL_X87_Y33_N6
\cir1|ref|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector51~0_combout\ = ( !\cir1|ref|state_reg.idle~q\ & ( (((\cir1|ref|tick_disc~combout\)) # (\cir1|ref|tick_guru~combout\)) ) ) # ( \cir1|ref|state_reg.idle~q\ & ( (\cir1|ref|mainCnt\(31) & (((!\cir1|ref|mainCnt[5]~0_combout\ & 
-- (!\cir1|ref|LessThan0~5_combout\ & \cir1|ref|Add2~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100111111000000000000000000111111001111110101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(31),
	datab => \cir1|ref|ALT_INV_tick_guru~combout\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	datae => \cir1|ref|ALT_INV_state_reg.idle~q\,
	dataf => \cir1|ref|ALT_INV_Add2~25_sumout\,
	datag => \cir1|ref|ALT_INV_tick_disc~combout\,
	combout => \cir1|ref|Selector51~0_combout\);

-- Location: MLABCELL_X87_Y33_N33
\cir1|ref|mainCnt[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|mainCnt[2]~8_combout\ = !\cir1|ref|Selector51~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector51~0_combout\,
	combout => \cir1|ref|mainCnt[2]~8_combout\);

-- Location: FF_X87_Y33_N35
\cir1|ref|mainCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|mainCnt[2]~8_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(2));

-- Location: LABCELL_X88_Y33_N9
\cir1|ref|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~21_sumout\ = SUM(( !\cir1|ref|mainCnt\(3) ) + ( VCC ) + ( \cir1|ref|Add2~26\ ))
-- \cir1|ref|Add2~22\ = CARRY(( !\cir1|ref|mainCnt\(3) ) + ( VCC ) + ( \cir1|ref|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(3),
	cin => \cir1|ref|Add2~26\,
	sumout => \cir1|ref|Add2~21_sumout\,
	cout => \cir1|ref|Add2~22\);

-- Location: MLABCELL_X87_Y33_N18
\cir1|ref|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector50~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|Add2~21_sumout\ & ( (!\cir1|ref|Selector19~0_combout\) # (\cir1|ref|state_reg.idle~q\) ) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|Add2~21_sumout\ & ( 
-- (!\cir1|ref|state_reg.idle~q\ & (!\cir1|ref|Selector19~0_combout\)) # (\cir1|ref|state_reg.idle~q\ & (((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|mainCnt[5]~0_combout\)))) ) ) ) # ( \cir1|ref|LessThan0~5_combout\ & ( !\cir1|ref|Add2~21_sumout\ & ( 
-- (!\cir1|ref|Selector19~0_combout\) # (\cir1|ref|state_reg.idle~q\) ) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( !\cir1|ref|Add2~21_sumout\ & ( (!\cir1|ref|Selector19~0_combout\) # ((\cir1|ref|state_reg.idle~q\ & ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # 
-- (\cir1|ref|mainCnt[5]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101111101010101111111110101010110011111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Selector19~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \cir1|ref|ALT_INV_state_reg.idle~q\,
	datae => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~21_sumout\,
	combout => \cir1|ref|Selector50~0_combout\);

-- Location: FF_X87_Y33_N20
\cir1|ref|mainCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector50~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(3));

-- Location: LABCELL_X88_Y33_N12
\cir1|ref|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~17_sumout\ = SUM(( !\cir1|ref|mainCnt[4]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~22\ ))
-- \cir1|ref|Add2~18\ = CARRY(( !\cir1|ref|mainCnt[4]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt[4]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~22\,
	sumout => \cir1|ref|Add2~17_sumout\,
	cout => \cir1|ref|Add2~18\);

-- Location: LABCELL_X88_Y34_N12
\cir1|ref|Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector49~0_combout\ = ( \cir1|ref|Add2~17_sumout\ & ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|mainCnt[5]~1_combout\ ) ) ) # ( !\cir1|ref|Add2~17_sumout\ & ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|mainCnt[5]~1_combout\ ) ) ) # ( 
-- \cir1|ref|Add2~17_sumout\ & ( !\cir1|ref|LessThan0~5_combout\ & ( (\cir1|ref|mainCnt[5]~1_combout\ & ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|mainCnt[5]~0_combout\))) ) ) ) # ( !\cir1|ref|Add2~17_sumout\ & ( !\cir1|ref|LessThan0~5_combout\ & ( 
-- \cir1|ref|mainCnt[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010001010100010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~1_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datae => \cir1|ref|ALT_INV_Add2~17_sumout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector49~0_combout\);

-- Location: FF_X88_Y34_N14
\cir1|ref|mainCnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector49~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[4]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N15
\cir1|ref|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~13_sumout\ = SUM(( !\cir1|ref|mainCnt\(5) ) + ( VCC ) + ( \cir1|ref|Add2~18\ ))
-- \cir1|ref|Add2~14\ = CARRY(( !\cir1|ref|mainCnt\(5) ) + ( VCC ) + ( \cir1|ref|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(5),
	cin => \cir1|ref|Add2~18\,
	sumout => \cir1|ref|Add2~13_sumout\,
	cout => \cir1|ref|Add2~14\);

-- Location: LABCELL_X88_Y34_N33
\cir1|ref|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector48~0_combout\ = ( !\cir1|ref|Add2~13_sumout\ & ( \cir1|ref|tick_disc~combout\ & ( \cir1|ref|state_reg.idle~q\ ) ) ) # ( \cir1|ref|Add2~13_sumout\ & ( !\cir1|ref|tick_disc~combout\ & ( (!\cir1|ref|tick_guru~combout\ & 
-- !\cir1|ref|state_reg.idle~q\) ) ) ) # ( !\cir1|ref|Add2~13_sumout\ & ( !\cir1|ref|tick_disc~combout\ & ( (!\cir1|ref|tick_guru~combout\) # (\cir1|ref|state_reg.idle~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_guru~combout\,
	datad => \cir1|ref|ALT_INV_state_reg.idle~q\,
	datae => \cir1|ref|ALT_INV_Add2~13_sumout\,
	dataf => \cir1|ref|ALT_INV_tick_disc~combout\,
	combout => \cir1|ref|Selector48~0_combout\);

-- Location: LABCELL_X88_Y34_N39
\cir1|ref|Selector48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector48~1_combout\ = ( \cir1|ref|Selector48~0_combout\ & ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|mainCnt[5]~1_combout\ ) ) ) # ( !\cir1|ref|Selector48~0_combout\ & ( \cir1|ref|LessThan0~5_combout\ & ( (\cir1|ref|state_reg.idle~q\ & 
-- \cir1|ref|mainCnt[5]~1_combout\) ) ) ) # ( \cir1|ref|Selector48~0_combout\ & ( !\cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|mainCnt[5]~1_combout\ ) ) ) # ( !\cir1|ref|Selector48~0_combout\ & ( !\cir1|ref|LessThan0~5_combout\ & ( 
-- (\cir1|ref|state_reg.idle~q\ & (\cir1|ref|mainCnt[5]~1_combout\ & ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|mainCnt[5]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000101000011110000111100000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_state_reg.idle~q\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~1_combout\,
	datad => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datae => \cir1|ref|ALT_INV_Selector48~0_combout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector48~1_combout\);

-- Location: FF_X88_Y34_N41
\cir1|ref|mainCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector48~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(5));

-- Location: LABCELL_X88_Y33_N18
\cir1|ref|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~9_sumout\ = SUM(( !\cir1|ref|mainCnt\(6) ) + ( VCC ) + ( \cir1|ref|Add2~14\ ))
-- \cir1|ref|Add2~10\ = CARRY(( !\cir1|ref|mainCnt\(6) ) + ( VCC ) + ( \cir1|ref|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(6),
	cin => \cir1|ref|Add2~14\,
	sumout => \cir1|ref|Add2~9_sumout\,
	cout => \cir1|ref|Add2~10\);

-- Location: MLABCELL_X87_Y33_N24
\cir1|ref|Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector47~0_combout\ = ( !\cir1|ref|state_reg.idle~q\ & ( (((\cir1|ref|tick_disc~combout\)) # (\cir1|ref|tick_guru~combout\)) ) ) # ( \cir1|ref|state_reg.idle~q\ & ( (\cir1|ref|mainCnt\(31) & (((!\cir1|ref|mainCnt[5]~0_combout\ & 
-- (!\cir1|ref|LessThan0~5_combout\ & \cir1|ref|Add2~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100111111000000000000000000111111001111110101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(31),
	datab => \cir1|ref|ALT_INV_tick_guru~combout\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	datae => \cir1|ref|ALT_INV_state_reg.idle~q\,
	dataf => \cir1|ref|ALT_INV_Add2~9_sumout\,
	datag => \cir1|ref|ALT_INV_tick_disc~combout\,
	combout => \cir1|ref|Selector47~0_combout\);

-- Location: MLABCELL_X87_Y33_N0
\cir1|ref|mainCnt[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|mainCnt[6]~4_combout\ = ( !\cir1|ref|Selector47~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \cir1|ref|ALT_INV_Selector47~0_combout\,
	combout => \cir1|ref|mainCnt[6]~4_combout\);

-- Location: FF_X87_Y33_N2
\cir1|ref|mainCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|mainCnt[6]~4_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(6));

-- Location: LABCELL_X88_Y33_N21
\cir1|ref|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~53_sumout\ = SUM(( !\cir1|ref|mainCnt\(7) ) + ( VCC ) + ( \cir1|ref|Add2~10\ ))
-- \cir1|ref|Add2~54\ = CARRY(( !\cir1|ref|mainCnt\(7) ) + ( VCC ) + ( \cir1|ref|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(7),
	cin => \cir1|ref|Add2~10\,
	sumout => \cir1|ref|Add2~53_sumout\,
	cout => \cir1|ref|Add2~54\);

-- Location: MLABCELL_X87_Y33_N51
\cir1|ref|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector46~0_combout\ = ( \cir1|ref|Add2~53_sumout\ & ( ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|LessThan0~5_combout\)) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) # ( !\cir1|ref|Add2~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~53_sumout\,
	combout => \cir1|ref|Selector46~0_combout\);

-- Location: FF_X87_Y33_N52
\cir1|ref|mainCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector46~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(7));

-- Location: LABCELL_X88_Y33_N24
\cir1|ref|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~49_sumout\ = SUM(( !\cir1|ref|mainCnt\(8) ) + ( VCC ) + ( \cir1|ref|Add2~54\ ))
-- \cir1|ref|Add2~50\ = CARRY(( !\cir1|ref|mainCnt\(8) ) + ( VCC ) + ( \cir1|ref|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(8),
	cin => \cir1|ref|Add2~54\,
	sumout => \cir1|ref|Add2~49_sumout\,
	cout => \cir1|ref|Add2~50\);

-- Location: MLABCELL_X87_Y33_N42
\cir1|ref|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector45~0_combout\ = ( \cir1|ref|Add2~49_sumout\ & ( ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|LessThan0~5_combout\)) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) # ( !\cir1|ref|Add2~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~49_sumout\,
	combout => \cir1|ref|Selector45~0_combout\);

-- Location: FF_X87_Y33_N43
\cir1|ref|mainCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector45~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(8));

-- Location: LABCELL_X88_Y33_N27
\cir1|ref|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~45_sumout\ = SUM(( !\cir1|ref|mainCnt[9]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~50\ ))
-- \cir1|ref|Add2~46\ = CARRY(( !\cir1|ref|mainCnt[9]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[9]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~50\,
	sumout => \cir1|ref|Add2~45_sumout\,
	cout => \cir1|ref|Add2~46\);

-- Location: MLABCELL_X87_Y33_N45
\cir1|ref|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector44~0_combout\ = ( \cir1|ref|Add2~45_sumout\ & ( ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|LessThan0~5_combout\)) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) # ( !\cir1|ref|Add2~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~45_sumout\,
	combout => \cir1|ref|Selector44~0_combout\);

-- Location: FF_X87_Y33_N46
\cir1|ref|mainCnt[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector44~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[9]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N30
\cir1|ref|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~41_sumout\ = SUM(( !\cir1|ref|mainCnt\(10) ) + ( VCC ) + ( \cir1|ref|Add2~46\ ))
-- \cir1|ref|Add2~42\ = CARRY(( !\cir1|ref|mainCnt\(10) ) + ( VCC ) + ( \cir1|ref|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(10),
	cin => \cir1|ref|Add2~46\,
	sumout => \cir1|ref|Add2~41_sumout\,
	cout => \cir1|ref|Add2~42\);

-- Location: MLABCELL_X87_Y33_N48
\cir1|ref|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector43~0_combout\ = ( \cir1|ref|Add2~41_sumout\ & ( ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|LessThan0~5_combout\)) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) # ( !\cir1|ref|Add2~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~41_sumout\,
	combout => \cir1|ref|Selector43~0_combout\);

-- Location: FF_X87_Y33_N49
\cir1|ref|mainCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector43~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(10));

-- Location: LABCELL_X88_Y33_N33
\cir1|ref|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~37_sumout\ = SUM(( !\cir1|ref|mainCnt[11]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~42\ ))
-- \cir1|ref|Add2~38\ = CARRY(( !\cir1|ref|mainCnt[11]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[11]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~42\,
	sumout => \cir1|ref|Add2~37_sumout\,
	cout => \cir1|ref|Add2~38\);

-- Location: MLABCELL_X87_Y33_N57
\cir1|ref|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector42~0_combout\ = ( \cir1|ref|Add2~37_sumout\ & ( ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|LessThan0~5_combout\)) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) # ( !\cir1|ref|Add2~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~37_sumout\,
	combout => \cir1|ref|Selector42~0_combout\);

-- Location: FF_X87_Y33_N58
\cir1|ref|mainCnt[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector42~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[11]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N36
\cir1|ref|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~33_sumout\ = SUM(( !\cir1|ref|mainCnt[12]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~38\ ))
-- \cir1|ref|Add2~34\ = CARRY(( !\cir1|ref|mainCnt[12]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt[12]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~38\,
	sumout => \cir1|ref|Add2~33_sumout\,
	cout => \cir1|ref|Add2~34\);

-- Location: MLABCELL_X87_Y33_N54
\cir1|ref|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector41~0_combout\ = ( \cir1|ref|Add2~33_sumout\ & ( ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|LessThan0~5_combout\)) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) # ( !\cir1|ref|Add2~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~33_sumout\,
	combout => \cir1|ref|Selector41~0_combout\);

-- Location: FF_X87_Y33_N55
\cir1|ref|mainCnt[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector41~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[12]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N39
\cir1|ref|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~77_sumout\ = SUM(( !\cir1|ref|mainCnt\(13) ) + ( VCC ) + ( \cir1|ref|Add2~34\ ))
-- \cir1|ref|Add2~78\ = CARRY(( !\cir1|ref|mainCnt\(13) ) + ( VCC ) + ( \cir1|ref|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(13),
	cin => \cir1|ref|Add2~34\,
	sumout => \cir1|ref|Add2~77_sumout\,
	cout => \cir1|ref|Add2~78\);

-- Location: LABCELL_X88_Y34_N51
\cir1|ref|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector40~0_combout\ = ( \cir1|ref|Add2~77_sumout\ & ( \cir1|ref|LessThan0~5_combout\ ) ) # ( !\cir1|ref|Add2~77_sumout\ & ( \cir1|ref|LessThan0~5_combout\ ) ) # ( \cir1|ref|Add2~77_sumout\ & ( !\cir1|ref|LessThan0~5_combout\ & ( 
-- (!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|mainCnt[5]~0_combout\) ) ) ) # ( !\cir1|ref|Add2~77_sumout\ & ( !\cir1|ref|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datae => \cir1|ref|ALT_INV_Add2~77_sumout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector40~0_combout\);

-- Location: FF_X88_Y34_N52
\cir1|ref|mainCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector40~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(13));

-- Location: LABCELL_X88_Y33_N42
\cir1|ref|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~73_sumout\ = SUM(( !\cir1|ref|mainCnt\(14) ) + ( VCC ) + ( \cir1|ref|Add2~78\ ))
-- \cir1|ref|Add2~74\ = CARRY(( !\cir1|ref|mainCnt\(14) ) + ( VCC ) + ( \cir1|ref|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(14),
	cin => \cir1|ref|Add2~78\,
	sumout => \cir1|ref|Add2~73_sumout\,
	cout => \cir1|ref|Add2~74\);

-- Location: MLABCELL_X87_Y34_N57
\cir1|ref|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector39~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ ) # ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # ((!\cir1|ref|Add2~73_sumout\) # (\cir1|ref|mainCnt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \cir1|ref|ALT_INV_Add2~73_sumout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector39~0_combout\);

-- Location: FF_X87_Y34_N59
\cir1|ref|mainCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector39~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(14));

-- Location: LABCELL_X88_Y33_N45
\cir1|ref|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~69_sumout\ = SUM(( !\cir1|ref|mainCnt\(15) ) + ( VCC ) + ( \cir1|ref|Add2~74\ ))
-- \cir1|ref|Add2~70\ = CARRY(( !\cir1|ref|mainCnt\(15) ) + ( VCC ) + ( \cir1|ref|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt\(15),
	cin => \cir1|ref|Add2~74\,
	sumout => \cir1|ref|Add2~69_sumout\,
	cout => \cir1|ref|Add2~70\);

-- Location: MLABCELL_X87_Y34_N51
\cir1|ref|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector38~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ ) # ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # ((!\cir1|ref|Add2~69_sumout\) # (\cir1|ref|mainCnt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_Add2~69_sumout\,
	datad => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector38~0_combout\);

-- Location: FF_X87_Y34_N52
\cir1|ref|mainCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector38~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(15));

-- Location: LABCELL_X88_Y33_N48
\cir1|ref|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~65_sumout\ = SUM(( !\cir1|ref|mainCnt\(16) ) + ( VCC ) + ( \cir1|ref|Add2~70\ ))
-- \cir1|ref|Add2~66\ = CARRY(( !\cir1|ref|mainCnt\(16) ) + ( VCC ) + ( \cir1|ref|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt\(16),
	cin => \cir1|ref|Add2~70\,
	sumout => \cir1|ref|Add2~65_sumout\,
	cout => \cir1|ref|Add2~66\);

-- Location: MLABCELL_X87_Y34_N18
\cir1|ref|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector37~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ ) # ( !\cir1|ref|LessThan0~5_combout\ & ( ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (!\cir1|ref|Add2~65_sumout\)) # (\cir1|ref|mainCnt[5]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \cir1|ref|ALT_INV_Add2~65_sumout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector37~0_combout\);

-- Location: FF_X87_Y34_N20
\cir1|ref|mainCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector37~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(16));

-- Location: FF_X87_Y34_N4
\cir1|ref|mainCnt[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector36~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[17]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N51
\cir1|ref|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~61_sumout\ = SUM(( !\cir1|ref|mainCnt[17]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~66\ ))
-- \cir1|ref|Add2~62\ = CARRY(( !\cir1|ref|mainCnt[17]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[17]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~66\,
	sumout => \cir1|ref|Add2~61_sumout\,
	cout => \cir1|ref|Add2~62\);

-- Location: MLABCELL_X87_Y34_N3
\cir1|ref|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector36~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ ) # ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # ((!\cir1|ref|Add2~61_sumout\) # (\cir1|ref|mainCnt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \cir1|ref|ALT_INV_Add2~61_sumout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector36~0_combout\);

-- Location: FF_X87_Y34_N5
\cir1|ref|mainCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector36~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(17));

-- Location: FF_X87_Y34_N34
\cir1|ref|mainCnt[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector35~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[18]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N54
\cir1|ref|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~57_sumout\ = SUM(( !\cir1|ref|mainCnt[18]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~62\ ))
-- \cir1|ref|Add2~58\ = CARRY(( !\cir1|ref|mainCnt[18]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[18]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~62\,
	sumout => \cir1|ref|Add2~57_sumout\,
	cout => \cir1|ref|Add2~58\);

-- Location: MLABCELL_X87_Y34_N33
\cir1|ref|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector35~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ ) # ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # ((!\cir1|ref|Add2~57_sumout\) # (\cir1|ref|mainCnt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \cir1|ref|ALT_INV_Add2~57_sumout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector35~0_combout\);

-- Location: FF_X87_Y34_N35
\cir1|ref|mainCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector35~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(18));

-- Location: MLABCELL_X87_Y34_N36
\cir1|ref|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|LessThan0~2_combout\ = ( \cir1|ref|mainCnt\(13) & ( \cir1|ref|mainCnt\(18) & ( (\cir1|ref|mainCnt\(16) & (\cir1|ref|mainCnt\(15) & (\cir1|ref|mainCnt\(17) & \cir1|ref|mainCnt\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(16),
	datab => \cir1|ref|ALT_INV_mainCnt\(15),
	datac => \cir1|ref|ALT_INV_mainCnt\(17),
	datad => \cir1|ref|ALT_INV_mainCnt\(14),
	datae => \cir1|ref|ALT_INV_mainCnt\(13),
	dataf => \cir1|ref|ALT_INV_mainCnt\(18),
	combout => \cir1|ref|LessThan0~2_combout\);

-- Location: FF_X87_Y33_N50
\cir1|ref|mainCnt[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector43~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[10]~DUPLICATE_q\);

-- Location: FF_X87_Y33_N56
\cir1|ref|mainCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector41~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(12));

-- Location: FF_X87_Y33_N47
\cir1|ref|mainCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector44~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(9));

-- Location: FF_X87_Y33_N59
\cir1|ref|mainCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector42~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(11));

-- Location: FF_X87_Y33_N53
\cir1|ref|mainCnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector46~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[7]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y33_N36
\cir1|ref|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|LessThan0~1_combout\ = ( \cir1|ref|mainCnt\(11) & ( \cir1|ref|mainCnt[7]~DUPLICATE_q\ & ( (\cir1|ref|mainCnt[10]~DUPLICATE_q\ & (\cir1|ref|mainCnt\(8) & (\cir1|ref|mainCnt\(12) & \cir1|ref|mainCnt\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[10]~DUPLICATE_q\,
	datab => \cir1|ref|ALT_INV_mainCnt\(8),
	datac => \cir1|ref|ALT_INV_mainCnt\(12),
	datad => \cir1|ref|ALT_INV_mainCnt\(9),
	datae => \cir1|ref|ALT_INV_mainCnt\(11),
	dataf => \cir1|ref|ALT_INV_mainCnt[7]~DUPLICATE_q\,
	combout => \cir1|ref|LessThan0~1_combout\);

-- Location: FF_X88_Y34_N46
\cir1|ref|mainCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector53~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(0));

-- Location: FF_X87_Y34_N55
\cir1|ref|mainCnt[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector34~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[19]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y33_N57
\cir1|ref|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~125_sumout\ = SUM(( !\cir1|ref|mainCnt[19]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~58\ ))
-- \cir1|ref|Add2~126\ = CARRY(( !\cir1|ref|mainCnt[19]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[19]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~58\,
	sumout => \cir1|ref|Add2~125_sumout\,
	cout => \cir1|ref|Add2~126\);

-- Location: MLABCELL_X87_Y34_N54
\cir1|ref|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector34~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ ) # ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|Add2~125_sumout\) # ((!\cir1|ref|mainCnt[31]~DUPLICATE_q\) # (\cir1|ref|mainCnt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111111111111001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Add2~125_sumout\,
	datac => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector34~0_combout\);

-- Location: FF_X87_Y34_N56
\cir1|ref|mainCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector34~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(19));

-- Location: LABCELL_X88_Y32_N0
\cir1|ref|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~121_sumout\ = SUM(( !\cir1|ref|mainCnt\(20) ) + ( VCC ) + ( \cir1|ref|Add2~126\ ))
-- \cir1|ref|Add2~122\ = CARRY(( !\cir1|ref|mainCnt\(20) ) + ( VCC ) + ( \cir1|ref|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt\(20),
	cin => \cir1|ref|Add2~126\,
	sumout => \cir1|ref|Add2~121_sumout\,
	cout => \cir1|ref|Add2~122\);

-- Location: MLABCELL_X87_Y34_N45
\cir1|ref|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector33~0_combout\ = ( \cir1|ref|Selector22~0_combout\ & ( !\cir1|ref|Add2~121_sumout\ ) ) # ( !\cir1|ref|Selector22~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Add2~121_sumout\,
	dataf => \cir1|ref|ALT_INV_Selector22~0_combout\,
	combout => \cir1|ref|Selector33~0_combout\);

-- Location: FF_X87_Y34_N47
\cir1|ref|mainCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector33~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(20));

-- Location: LABCELL_X88_Y32_N3
\cir1|ref|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~117_sumout\ = SUM(( !\cir1|ref|mainCnt\(21) ) + ( VCC ) + ( \cir1|ref|Add2~122\ ))
-- \cir1|ref|Add2~118\ = CARRY(( !\cir1|ref|mainCnt\(21) ) + ( VCC ) + ( \cir1|ref|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt\(21),
	cin => \cir1|ref|Add2~122\,
	sumout => \cir1|ref|Add2~117_sumout\,
	cout => \cir1|ref|Add2~118\);

-- Location: LABCELL_X88_Y32_N51
\cir1|ref|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector32~0_combout\ = ( \cir1|ref|Add2~117_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~117_sumout\,
	combout => \cir1|ref|Selector32~0_combout\);

-- Location: FF_X88_Y32_N52
\cir1|ref|mainCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector32~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(21));

-- Location: LABCELL_X88_Y32_N6
\cir1|ref|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~113_sumout\ = SUM(( !\cir1|ref|mainCnt\(22) ) + ( VCC ) + ( \cir1|ref|Add2~118\ ))
-- \cir1|ref|Add2~114\ = CARRY(( !\cir1|ref|mainCnt\(22) ) + ( VCC ) + ( \cir1|ref|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(22),
	cin => \cir1|ref|Add2~118\,
	sumout => \cir1|ref|Add2~113_sumout\,
	cout => \cir1|ref|Add2~114\);

-- Location: MLABCELL_X87_Y34_N0
\cir1|ref|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector31~0_combout\ = ( \cir1|ref|Selector22~0_combout\ & ( !\cir1|ref|Add2~113_sumout\ ) ) # ( !\cir1|ref|Selector22~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Add2~113_sumout\,
	dataf => \cir1|ref|ALT_INV_Selector22~0_combout\,
	combout => \cir1|ref|Selector31~0_combout\);

-- Location: FF_X87_Y34_N1
\cir1|ref|mainCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector31~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(22));

-- Location: LABCELL_X88_Y32_N9
\cir1|ref|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~109_sumout\ = SUM(( !\cir1|ref|mainCnt[23]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~114\ ))
-- \cir1|ref|Add2~110\ = CARRY(( !\cir1|ref|mainCnt[23]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[23]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~114\,
	sumout => \cir1|ref|Add2~109_sumout\,
	cout => \cir1|ref|Add2~110\);

-- Location: MLABCELL_X87_Y34_N21
\cir1|ref|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector30~0_combout\ = ( \cir1|ref|Add2~109_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~109_sumout\,
	combout => \cir1|ref|Selector30~0_combout\);

-- Location: FF_X87_Y34_N22
\cir1|ref|mainCnt[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector30~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[23]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y32_N12
\cir1|ref|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~105_sumout\ = SUM(( !\cir1|ref|mainCnt\(24) ) + ( VCC ) + ( \cir1|ref|Add2~110\ ))
-- \cir1|ref|Add2~106\ = CARRY(( !\cir1|ref|mainCnt\(24) ) + ( VCC ) + ( \cir1|ref|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(24),
	cin => \cir1|ref|Add2~110\,
	sumout => \cir1|ref|Add2~105_sumout\,
	cout => \cir1|ref|Add2~106\);

-- Location: MLABCELL_X87_Y34_N48
\cir1|ref|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector29~0_combout\ = ( \cir1|ref|Add2~105_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~105_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~105_sumout\,
	combout => \cir1|ref|Selector29~0_combout\);

-- Location: FF_X87_Y34_N49
\cir1|ref|mainCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector29~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(24));

-- Location: FF_X87_Y34_N23
\cir1|ref|mainCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector30~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(23));

-- Location: MLABCELL_X87_Y34_N12
\cir1|ref|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|LessThan0~4_combout\ = ( \cir1|ref|mainCnt\(22) & ( \cir1|ref|mainCnt\(21) & ( (\cir1|ref|mainCnt\(19) & (\cir1|ref|mainCnt\(24) & (\cir1|ref|mainCnt\(23) & \cir1|ref|mainCnt\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(19),
	datab => \cir1|ref|ALT_INV_mainCnt\(24),
	datac => \cir1|ref|ALT_INV_mainCnt\(23),
	datad => \cir1|ref|ALT_INV_mainCnt\(20),
	datae => \cir1|ref|ALT_INV_mainCnt\(22),
	dataf => \cir1|ref|ALT_INV_mainCnt\(21),
	combout => \cir1|ref|LessThan0~4_combout\);

-- Location: LABCELL_X88_Y32_N15
\cir1|ref|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~101_sumout\ = SUM(( !\cir1|ref|mainCnt\(25) ) + ( VCC ) + ( \cir1|ref|Add2~106\ ))
-- \cir1|ref|Add2~102\ = CARRY(( !\cir1|ref|mainCnt\(25) ) + ( VCC ) + ( \cir1|ref|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_mainCnt\(25),
	cin => \cir1|ref|Add2~106\,
	sumout => \cir1|ref|Add2~101_sumout\,
	cout => \cir1|ref|Add2~102\);

-- Location: LABCELL_X88_Y32_N39
\cir1|ref|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector28~0_combout\ = ( \cir1|ref|Add2~101_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~101_sumout\,
	combout => \cir1|ref|Selector28~0_combout\);

-- Location: FF_X88_Y32_N41
\cir1|ref|mainCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector28~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(25));

-- Location: LABCELL_X88_Y32_N18
\cir1|ref|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~97_sumout\ = SUM(( !\cir1|ref|mainCnt\(26) ) + ( VCC ) + ( \cir1|ref|Add2~102\ ))
-- \cir1|ref|Add2~98\ = CARRY(( !\cir1|ref|mainCnt\(26) ) + ( VCC ) + ( \cir1|ref|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_mainCnt\(26),
	cin => \cir1|ref|Add2~102\,
	sumout => \cir1|ref|Add2~97_sumout\,
	cout => \cir1|ref|Add2~98\);

-- Location: LABCELL_X88_Y32_N42
\cir1|ref|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector27~0_combout\ = ( \cir1|ref|Add2~97_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~97_sumout\,
	combout => \cir1|ref|Selector27~0_combout\);

-- Location: FF_X88_Y32_N44
\cir1|ref|mainCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector27~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(26));

-- Location: LABCELL_X88_Y32_N21
\cir1|ref|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~93_sumout\ = SUM(( !\cir1|ref|mainCnt\(27) ) + ( VCC ) + ( \cir1|ref|Add2~98\ ))
-- \cir1|ref|Add2~94\ = CARRY(( !\cir1|ref|mainCnt\(27) ) + ( VCC ) + ( \cir1|ref|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(27),
	cin => \cir1|ref|Add2~98\,
	sumout => \cir1|ref|Add2~93_sumout\,
	cout => \cir1|ref|Add2~94\);

-- Location: LABCELL_X88_Y32_N54
\cir1|ref|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector26~0_combout\ = ( \cir1|ref|Add2~93_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~93_sumout\,
	combout => \cir1|ref|Selector26~0_combout\);

-- Location: FF_X88_Y32_N56
\cir1|ref|mainCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector26~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(27));

-- Location: LABCELL_X88_Y32_N24
\cir1|ref|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~89_sumout\ = SUM(( !\cir1|ref|mainCnt\(28) ) + ( VCC ) + ( \cir1|ref|Add2~94\ ))
-- \cir1|ref|Add2~90\ = CARRY(( !\cir1|ref|mainCnt\(28) ) + ( VCC ) + ( \cir1|ref|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(28),
	cin => \cir1|ref|Add2~94\,
	sumout => \cir1|ref|Add2~89_sumout\,
	cout => \cir1|ref|Add2~90\);

-- Location: LABCELL_X88_Y32_N45
\cir1|ref|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector25~0_combout\ = ( \cir1|ref|Add2~89_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~89_sumout\,
	combout => \cir1|ref|Selector25~0_combout\);

-- Location: FF_X88_Y32_N47
\cir1|ref|mainCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector25~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(28));

-- Location: LABCELL_X88_Y32_N27
\cir1|ref|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~85_sumout\ = SUM(( !\cir1|ref|mainCnt\(29) ) + ( VCC ) + ( \cir1|ref|Add2~90\ ))
-- \cir1|ref|Add2~86\ = CARRY(( !\cir1|ref|mainCnt\(29) ) + ( VCC ) + ( \cir1|ref|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(29),
	cin => \cir1|ref|Add2~90\,
	sumout => \cir1|ref|Add2~85_sumout\,
	cout => \cir1|ref|Add2~86\);

-- Location: LABCELL_X88_Y32_N48
\cir1|ref|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector24~0_combout\ = ( \cir1|ref|Add2~85_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~85_sumout\,
	combout => \cir1|ref|Selector24~0_combout\);

-- Location: FF_X88_Y32_N50
\cir1|ref|mainCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector24~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(29));

-- Location: FF_X88_Y32_N59
\cir1|ref|mainCnt[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector23~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt[30]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y32_N30
\cir1|ref|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~81_sumout\ = SUM(( !\cir1|ref|mainCnt[30]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~86\ ))
-- \cir1|ref|Add2~82\ = CARRY(( !\cir1|ref|mainCnt[30]~DUPLICATE_q\ ) + ( VCC ) + ( \cir1|ref|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt[30]~DUPLICATE_q\,
	cin => \cir1|ref|Add2~86\,
	sumout => \cir1|ref|Add2~81_sumout\,
	cout => \cir1|ref|Add2~82\);

-- Location: LABCELL_X88_Y32_N57
\cir1|ref|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector23~0_combout\ = ( \cir1|ref|Add2~81_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~81_sumout\,
	combout => \cir1|ref|Selector23~0_combout\);

-- Location: FF_X88_Y32_N58
\cir1|ref|mainCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector23~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(30));

-- Location: MLABCELL_X87_Y32_N3
\cir1|ref|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|LessThan0~3_combout\ = ( \cir1|ref|mainCnt\(27) & ( \cir1|ref|mainCnt\(30) & ( (\cir1|ref|mainCnt\(25) & (\cir1|ref|mainCnt\(29) & (\cir1|ref|mainCnt\(26) & \cir1|ref|mainCnt\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(25),
	datab => \cir1|ref|ALT_INV_mainCnt\(29),
	datac => \cir1|ref|ALT_INV_mainCnt\(26),
	datad => \cir1|ref|ALT_INV_mainCnt\(28),
	datae => \cir1|ref|ALT_INV_mainCnt\(27),
	dataf => \cir1|ref|ALT_INV_mainCnt\(30),
	combout => \cir1|ref|LessThan0~3_combout\);

-- Location: FF_X88_Y34_N13
\cir1|ref|mainCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector49~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(4));

-- Location: MLABCELL_X87_Y34_N24
\cir1|ref|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|LessThan0~0_combout\ = ( \cir1|ref|mainCnt\(6) & ( \cir1|ref|mainCnt\(3) & ( (\cir1|ref|mainCnt\(2) & (\cir1|ref|mainCnt\(4) & (\cir1|ref|mainCnt\(5) & \cir1|ref|mainCnt\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt\(2),
	datab => \cir1|ref|ALT_INV_mainCnt\(4),
	datac => \cir1|ref|ALT_INV_mainCnt\(5),
	datad => \cir1|ref|ALT_INV_mainCnt\(1),
	datae => \cir1|ref|ALT_INV_mainCnt\(6),
	dataf => \cir1|ref|ALT_INV_mainCnt\(3),
	combout => \cir1|ref|LessThan0~0_combout\);

-- Location: MLABCELL_X87_Y34_N6
\cir1|ref|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|LessThan0~5_combout\ = ( \cir1|ref|LessThan0~3_combout\ & ( \cir1|ref|LessThan0~0_combout\ & ( (\cir1|ref|LessThan0~2_combout\ & (\cir1|ref|LessThan0~1_combout\ & (\cir1|ref|mainCnt\(0) & \cir1|ref|LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_LessThan0~2_combout\,
	datab => \cir1|ref|ALT_INV_LessThan0~1_combout\,
	datac => \cir1|ref|ALT_INV_mainCnt\(0),
	datad => \cir1|ref|ALT_INV_LessThan0~4_combout\,
	datae => \cir1|ref|ALT_INV_LessThan0~3_combout\,
	dataf => \cir1|ref|ALT_INV_LessThan0~0_combout\,
	combout => \cir1|ref|LessThan0~5_combout\);

-- Location: LABCELL_X85_Y34_N30
\cir1|ref|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector20~0_combout\ = ( \cir1|ref|state_reg.wait50l~q\ & ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|state_reg.unm_godisc_BL~q\ ) ) ) # ( !\cir1|ref|state_reg.wait50l~q\ & ( \cir1|ref|LessThan0~5_combout\ & ( 
-- \cir1|ref|state_reg.unm_godisc_BL~q\ ) ) ) # ( \cir1|ref|state_reg.wait50l~q\ & ( !\cir1|ref|LessThan0~5_combout\ & ( (\cir1|ref|state_reg.unm_godisc_BL~q\) # (\cir1|ref|mainCnt\(31)) ) ) ) # ( !\cir1|ref|state_reg.wait50l~q\ & ( 
-- !\cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|state_reg.unm_godisc_BL~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_mainCnt\(31),
	datac => \cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	datae => \cir1|ref|ALT_INV_state_reg.wait50l~q\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector20~0_combout\);

-- Location: FF_X85_Y34_N31
\cir1|ref|state_reg.wait50l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector20~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.wait50l~q\);

-- Location: LABCELL_X85_Y34_N45
\cir1|ref|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector14~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ & ( (\cir1|ref|tick_disc~combout\ & !\cir1|ref|state_reg.idle~q\) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|tick_disc~combout\ & (((\cir1|ref|mainCnt\(31) & 
-- \cir1|ref|state_reg.wait50~q\)))) # (\cir1|ref|tick_disc~combout\ & ((!\cir1|ref|state_reg.idle~q\) # ((\cir1|ref|mainCnt\(31) & \cir1|ref|state_reg.wait50~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001111010001000100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_tick_disc~combout\,
	datab => \cir1|ref|ALT_INV_state_reg.idle~q\,
	datac => \cir1|ref|ALT_INV_mainCnt\(31),
	datad => \cir1|ref|ALT_INV_state_reg.wait50~q\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector14~0_combout\);

-- Location: FF_X85_Y34_N47
\cir1|ref|state_reg.wait50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector14~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.wait50~q\);

-- Location: FF_X85_Y34_N25
\cir1|ref|state_reg.wait50b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector16~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.wait50b~q\);

-- Location: LABCELL_X85_Y34_N24
\cir1|ref|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector16~0_combout\ = ( \cir1|ref|state_reg.wait50b~q\ & ( \cir1|ref|state_reg.go_guru_state~q\ ) ) # ( !\cir1|ref|state_reg.wait50b~q\ & ( \cir1|ref|state_reg.go_guru_state~q\ ) ) # ( \cir1|ref|state_reg.wait50b~q\ & ( 
-- !\cir1|ref|state_reg.go_guru_state~q\ & ( (\cir1|ref|mainCnt\(31) & !\cir1|ref|LessThan0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_mainCnt\(31),
	datac => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	datae => \cir1|ref|ALT_INV_state_reg.wait50b~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.go_guru_state~q\,
	combout => \cir1|ref|Selector16~0_combout\);

-- Location: FF_X85_Y34_N26
\cir1|ref|state_reg.wait50b~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector16~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.wait50b~DUPLICATE_q\);

-- Location: LABCELL_X85_Y34_N3
\cir1|ref|mainCnt[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|mainCnt[5]~0_combout\ = ( !\cir1|ref|state_reg.wait50b~DUPLICATE_q\ & ( (!\cir1|ref|state_reg.wait50l~q\ & (!\cir1|ref|state_reg.wait55~q\ & !\cir1|ref|state_reg.wait50~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_state_reg.wait50l~q\,
	datac => \cir1|ref|ALT_INV_state_reg.wait55~q\,
	datad => \cir1|ref|ALT_INV_state_reg.wait50~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.wait50b~DUPLICATE_q\,
	combout => \cir1|ref|mainCnt[5]~0_combout\);

-- Location: MLABCELL_X87_Y34_N30
\cir1|ref|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector22~0_combout\ = ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|mainCnt[5]~0_combout\ & \cir1|ref|mainCnt[31]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector22~0_combout\);

-- Location: LABCELL_X88_Y32_N33
\cir1|ref|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Add2~1_sumout\ = SUM(( !\cir1|ref|mainCnt\(31) ) + ( VCC ) + ( \cir1|ref|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_mainCnt\(31),
	cin => \cir1|ref|Add2~82\,
	sumout => \cir1|ref|Add2~1_sumout\);

-- Location: LABCELL_X88_Y32_N36
\cir1|ref|Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector22~1_combout\ = ( \cir1|ref|Add2~1_sumout\ & ( !\cir1|ref|Selector22~0_combout\ ) ) # ( !\cir1|ref|Add2~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|ref|ALT_INV_Selector22~0_combout\,
	dataf => \cir1|ref|ALT_INV_Add2~1_sumout\,
	combout => \cir1|ref|Selector22~1_combout\);

-- Location: FF_X88_Y32_N38
\cir1|ref|mainCnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector22~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|mainCnt\(31));

-- Location: LABCELL_X85_Y34_N9
\cir1|ref|state_next.checkMiddle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|state_next.checkMiddle~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|state_reg.wait50~q\ & ( \cir1|ref|tick_guru~combout\ ) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( \cir1|ref|state_reg.wait50~q\ & ( (\cir1|ref|tick_guru~combout\ 
-- & !\cir1|ref|mainCnt\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_tick_guru~combout\,
	datac => \cir1|ref|ALT_INV_mainCnt\(31),
	datae => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	dataf => \cir1|ref|ALT_INV_state_reg.wait50~q\,
	combout => \cir1|ref|state_next.checkMiddle~0_combout\);

-- Location: FF_X85_Y34_N11
\cir1|ref|state_reg.checkMiddle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|state_next.checkMiddle~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.checkMiddle~q\);

-- Location: FF_X82_Y34_N2
\cir1|guru|base|data|rb|reg_INIT|q_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|ng_2_RB[7]~8_combout\,
	sclr => \res~input_o\,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(7));

-- Location: MLABCELL_X82_Y34_N24
\cir1|guru|base|data|rb|rb_out[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[7]~9_combout\ = ( \cir1|guru|base|data|rb|reg_INIT|q_s\(7) & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7)) ) ) ) # 
-- ( !\cir1|guru|base|data|rb|reg_INIT|q_s\(7) & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7)) ) ) ) # ( \cir1|guru|base|data|rb|reg_INIT|q_s\(7) & ( 
-- !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # ((!\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(7))) # 
-- (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ((\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7))))) ) ) ) # ( !\cir1|guru|base|data|rb|reg_INIT|q_s\(7) & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((!\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(7))) # (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & 
-- ((\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111011100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(7),
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(7),
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(7),
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	combout => \cir1|guru|base|data|rb|rb_out[7]~9_combout\);

-- Location: MLABCELL_X82_Y35_N33
\cir1|guru|base|data|n_g|ng_2_RB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ = ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\cir1|guru|base|control|init|STATE.MEM_WALK~q\ & \cir1|guru|base|control|init|STATE.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|init|ALT_INV_STATE.MEM_WALK~q\,
	datad => \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\);

-- Location: MLABCELL_X82_Y35_N18
\cir1|guru|base|control|init|STATE~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|init|STATE~8_combout\ = ( !\res~input_o\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & !\cir1|guru|base|control|init|STATE.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\,
	dataf => \ALT_INV_res~input_o\,
	combout => \cir1|guru|base|control|init|STATE~8_combout\);

-- Location: FF_X82_Y35_N20
\cir1|guru|base|control|init|STATE.ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|init|STATE~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|init|STATE.ZERO~q\);

-- Location: MLABCELL_X82_Y35_N30
\cir1|guru|base|data|n_g|ng_2_RB[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ = ( \cir1|guru|base|control|init|STATE.ZERO~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & \cir1|guru|base|control|init|STATE.IDLE~q\) ) ) # ( !\cir1|guru|base|control|init|STATE.ZERO~q\ & ( 
-- (\cir1|guru|base|control|init|STATE.MEM_WALK~q\ & (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & \cir1|guru|base|control|init|STATE.IDLE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|init|ALT_INV_STATE.MEM_WALK~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\,
	dataf => \cir1|guru|base|control|init|ALT_INV_STATE.ZERO~q\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\);

-- Location: MLABCELL_X84_Y32_N6
\cir1|guru|base|data|n_g|LFSR|d_s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(2) = ( \res~input_o\ & ( \cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\ ) ) # ( !\res~input_o\ & ( \cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\ ) ) # ( !\res~input_o\ & ( !\cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(2));

-- Location: FF_X84_Y32_N7
\cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N51
\cir1|guru|base|data|n_g|LFSR|d_s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(3) = ( \cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s~q\ & ( \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ & ( !\res~input_o\ ) ) ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s~q\ & ( 
-- \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ ) ) # ( \cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s~q\ & ( !\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ ) ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:2:FF|q_s~q\ & ( !\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ 
-- & ( !\res~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111111111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datae => \cir1|guru|base|data|n_g|LFSR|g1:2:FF|ALT_INV_q_s~q\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(3));

-- Location: FF_X85_Y32_N52
\cir1|guru|base|data|n_g|LFSR|g1:3:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:3:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N45
\cir1|guru|base|data|n_g|LFSR|d_s[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(4) = ( \cir1|guru|base|data|n_g|LFSR|g1:3:FF|q_s~q\ & ( (!\res~input_o\) # (!\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\) ) ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:3:FF|q_s~q\ & ( (!\res~input_o\) # 
-- (\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:3:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(4));

-- Location: FF_X85_Y32_N46
\cir1|guru|base|data|n_g|LFSR|g1:4:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:4:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N42
\cir1|guru|base|data|n_g|LFSR|d_s[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(5) = ( \cir1|guru|base|data|n_g|LFSR|g1:4:FF|q_s~q\ ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:4:FF|q_s~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:4:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(5));

-- Location: FF_X85_Y32_N44
\cir1|guru|base|data|n_g|LFSR|g1:5:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:5:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N27
\cir1|guru|base|data|n_g|LFSR|d_s[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(6) = ( \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ & ( (!\res~input_o\) # (!\cir1|guru|base|data|n_g|LFSR|g1:5:FF|q_s~q\) ) ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ & ( (!\res~input_o\) # 
-- (\cir1|guru|base|data|n_g|LFSR|g1:5:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \cir1|guru|base|data|n_g|LFSR|g1:5:FF|ALT_INV_q_s~q\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(6));

-- Location: FF_X85_Y32_N28
\cir1|guru|base|data|n_g|LFSR|g1:6:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:6:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N54
\cir1|guru|base|data|n_g|LFSR|d_s[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(7) = ( \cir1|guru|base|data|n_g|LFSR|g1:6:FF|q_s~q\ ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:6:FF|q_s~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:6:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(7));

-- Location: FF_X85_Y32_N56
\cir1|guru|base|data|n_g|LFSR|g1:7:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:7:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N24
\cir1|guru|base|data|n_g|LFSR|d_s[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(8) = ( \cir1|guru|base|data|n_g|LFSR|g1:7:FF|q_s~q\ ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:7:FF|q_s~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:7:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(8));

-- Location: FF_X85_Y32_N25
\cir1|guru|base|data|n_g|LFSR|g1:8:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:8:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N15
\cir1|guru|base|data|n_g|LFSR|d_s[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(9) = ( \cir1|guru|base|data|n_g|LFSR|g1:8:FF|q_s~q\ & ( (!\res~input_o\) # (!\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\) ) ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:8:FF|q_s~q\ & ( (!\res~input_o\) # 
-- (\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:8:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(9));

-- Location: FF_X85_Y32_N17
\cir1|guru|base|data|n_g|LFSR|g1:9:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:9:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N57
\cir1|guru|base|data|n_g|LFSR|d_s[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(10) = ( \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ & ( (!\res~input_o\) # (!\cir1|guru|base|data|n_g|LFSR|g1:9:FF|q_s~q\) ) ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ & ( (!\res~input_o\) # 
-- (\cir1|guru|base|data|n_g|LFSR|g1:9:FF|q_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \cir1|guru|base|data|n_g|LFSR|g1:9:FF|ALT_INV_q_s~q\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(10));

-- Location: FF_X85_Y32_N58
\cir1|guru|base|data|n_g|LFSR|g1:10:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:10:FF|q_s~q\);

-- Location: LABCELL_X85_Y32_N12
\cir1|guru|base|data|n_g|LFSR|d_s[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(11) = ( \cir1|guru|base|data|n_g|LFSR|g1:10:FF|q_s~q\ ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:10:FF|q_s~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:10:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(11));

-- Location: FF_X85_Y32_N14
\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N36
\cir1|guru|base|data|n_g|LFSR|d_s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(0) = ( \cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:11:FF|q_s~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:11:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(0));

-- Location: FF_X84_Y32_N38
\cir1|guru|base|data|n_g|LFSR|g1:0:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:0:FF|q_s~q\);

-- Location: MLABCELL_X84_Y32_N39
\cir1|guru|base|data|n_g|LFSR|d_s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|LFSR|d_s\(1) = ( \cir1|guru|base|data|n_g|LFSR|g1:0:FF|q_s~q\ ) # ( !\cir1|guru|base|data|n_g|LFSR|g1:0:FF|q_s~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|data|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\,
	combout => \cir1|guru|base|data|n_g|LFSR|d_s\(1));

-- Location: FF_X84_Y32_N41
\cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|LFSR|d_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\);

-- Location: MLABCELL_X82_Y35_N57
\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ = ( !\cir1|guru|base|control|guru|STATE.WRITE_RAND~q\ & ( (!\cir1|guru|base|control|guru|STATE.RAND~q\ & (\cir1|guru|base|control|guru|STATE.START_WALKING~q\ & 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & !\cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|guru|ALT_INV_STATE.RAND~q\,
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	combout => \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\);

-- Location: MLABCELL_X82_Y35_N0
\cir1|guru|base|data|n_g|ng_2_RB[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[0]~3_combout\ = ( \cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ & ( (!\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ & !\cir1|guru|base|data|rb|rb_out[0]~2_combout\) ) ) # ( !\cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ 
-- & ( (!\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ & ((!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & (\cir1|guru|base|data|n_g|LFSR|g1:0:FF|q_s~q\)) # (\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & 
-- ((!\cir1|guru|base|data|rb|rb_out[0]~2_combout\))))) # (\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ & (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ((\cir1|guru|base|data|rb|rb_out[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001001100001010100100110010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~1_combout\,
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\,
	datac => \cir1|guru|base|data|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\,
	dataf => \cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~2_combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[0]~3_combout\);

-- Location: FF_X82_Y35_N53
\cir1|guru|base|data|rb|reg_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[0]~3_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(0));

-- Location: FF_X82_Y35_N11
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(0),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0));

-- Location: FF_X82_Y35_N26
\cir1|guru|base|data|rb|reg_INIT|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[0]~3_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(0));

-- Location: MLABCELL_X82_Y35_N27
\cir1|guru|base|data|rb|rb_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[0]~2_combout\ = ( \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(0)))) # 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0))) ) ) ) # ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(0)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0))) ) ) ) # ( 
-- \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(0)))) # 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0))) ) ) ) # ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(0)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(0),
	datab => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(0),
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	combout => \cir1|guru|base|data|rb|rb_out[0]~2_combout\);

-- Location: MLABCELL_X82_Y35_N9
\cir1|guru|base|data|n_g|ng_2_RB[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[1]~4_combout\ = ( \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( \cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( (!\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ & 
-- !\cir1|guru|base|data|rb|rb_out[0]~2_combout\) ) ) ) # ( !\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( \cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( (!\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ & 
-- ((!\cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ & (\cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\)) # (\cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ & ((!\cir1|guru|base|data|rb|rb_out[0]~2_combout\))))) # (\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ 
-- & (!\cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\)) ) ) ) # ( \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( !\cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( (!\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ & 
-- \cir1|guru|base|data|rb|rb_out[0]~2_combout\) ) ) ) # ( !\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( !\cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( (!\cir1|guru|base|data|n_g|ng_2_RB[1]~1_combout\ & 
-- ((!\cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ & (\cir1|guru|base|data|n_g|LFSR|g1:1:FF|q_s~q\)) # (\cir1|guru|base|data|n_g|ng_2_RB[1]~2_combout\ & ((\cir1|guru|base|data|rb|rb_out[0]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000001010101001101110010011001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~1_combout\,
	datab => \cir1|guru|base|data|n_g|ALT_INV_ng_2_RB[1]~2_combout\,
	datac => \cir1|guru|base|data|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datae => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[1]~4_combout\);

-- Location: FF_X82_Y35_N8
\cir1|guru|base|data|rb|reg_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[1]~4_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(1));

-- Location: FF_X82_Y34_N23
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(1),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1));

-- Location: FF_X82_Y34_N52
\cir1|guru|base|data|rb|reg_INIT|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[1]~4_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(1));

-- Location: MLABCELL_X82_Y34_N18
\cir1|guru|base|data|rb|rb_out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[1]~3_combout\ = ( \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( \cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(1)))) # 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1))) ) ) ) # ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( \cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( 
-- (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((\cir1|guru|base|data|rb|reg_INIT|q_s\(1))))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((!\cir1|guru|base|control|guru|STATE.LAST~q\)) # 
-- (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1)))) ) ) ) # ( \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & 
-- ((\cir1|guru|base|data|rb|reg_INIT|q_s\(1)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1))) ) ) ) # ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( 
-- !\cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((\cir1|guru|base|data|rb|reg_INIT|q_s\(1))))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1) & ((\cir1|guru|base|control|guru|STATE.LAST~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110101010100110011111101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	datab => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(1),
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(1),
	combout => \cir1|guru|base|data|rb|rb_out[1]~3_combout\);

-- Location: MLABCELL_X82_Y35_N39
\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\ = ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\cir1|guru|base|control|init|STATE.ZERO~q\ & \cir1|guru|base|control|init|STATE.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.ZERO~q\,
	datad => \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\);

-- Location: MLABCELL_X82_Y35_N48
\cir1|guru|base|data|n_g|ng_2_RB[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[2]~5_combout\ = ( \cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ & ( \cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\ & 
-- (\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\ & (!\cir1|guru|base|data|rb|rb_out[0]~2_combout\ $ (!\cir1|guru|base|data|rb|rb_out[2]~4_combout\)))) # (\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\ & 
-- (!\cir1|guru|base|data|rb|rb_out[0]~2_combout\ $ ((!\cir1|guru|base|data|rb|rb_out[2]~4_combout\)))) ) ) ) # ( !\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ & ( \cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( 
-- (\cir1|guru|base|data|rb|rb_out[2]~4_combout\ & ((\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\) # (\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\))) ) ) ) # ( \cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ & ( 
-- !\cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( (\cir1|guru|base|data|rb|rb_out[2]~4_combout\ & ((\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\) # (\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\))) ) ) ) # ( 
-- !\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ & ( !\cir1|guru|base|data|rb|rb_out[1]~3_combout\ & ( (\cir1|guru|base|data|rb|rb_out[2]~4_combout\ & ((\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~2_combout\) # 
-- (\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000011110001001001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~0_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datad => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\,
	datae => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[2]~5_combout\);

-- Location: FF_X81_Y35_N56
\cir1|guru|base|data|rb|reg_INIT|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[2]~5_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(2));

-- Location: FF_X82_Y35_N44
\cir1|guru|base|data|rb|reg_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[2]~5_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(2));

-- Location: FF_X82_Y35_N50
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(2),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2));

-- Location: LABCELL_X81_Y35_N9
\cir1|guru|base|data|rb|rb_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[2]~4_combout\ = ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2) & ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( ((\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\) # (\cir1|guru|base|control|guru|STATE.LAST~q\)) 
-- # (\cir1|guru|base|data|rb|reg_GURU|q_s\(2)) ) ) ) # ( !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2) & ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(2) & (!\cir1|guru|base|control|guru|STATE.LAST~q\ & 
-- !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\)) ) ) ) # ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2) & ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \cir1|guru|base|data|rb|reg_INIT|q_s\(2) ) ) ) # ( 
-- !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2) & ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \cir1|guru|base|data|rb|reg_INIT|q_s\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110000000000000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(2),
	datab => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(2),
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|data|rb|rb_out[2]~4_combout\);

-- Location: MLABCELL_X82_Y34_N30
\cir1|guru|base|data|alu_1|add|adder_4|aux_and_3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\ = ( \cir1|guru|base|data|rb|rb_out[0]~2_combout\ & ( (\cir1|guru|base|data|rb|rb_out[1]~3_combout\ & (\cir1|guru|base|data|rb|rb_out[2]~4_combout\ & \cir1|guru|base|data|rb|rb_out[3]~5_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\,
	combout => \cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\);

-- Location: MLABCELL_X82_Y34_N3
\cir1|guru|base|data|n_g|ng_2_RB[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[4]~6_combout\ = ( \cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & (!\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ $ 
-- (!\cir1|guru|base|data|rb|rb_out[4]~6_combout\))) ) ) # ( !\cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & \cir1|guru|base|data|rb|rb_out[4]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\,
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[4]~6_combout\,
	dataf => \cir1|guru|base|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[4]~6_combout\);

-- Location: FF_X82_Y34_N29
\cir1|guru|base|data|rb|reg_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[4]~6_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(4));

-- Location: FF_X81_Y34_N35
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(4),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4));

-- Location: FF_X82_Y34_N59
\cir1|guru|base|data|rb|reg_INIT|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[4]~6_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(4));

-- Location: LABCELL_X81_Y34_N18
\cir1|guru|base|data|rb|rb_out[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[4]~6_combout\ = ( \cir1|guru|base|data|rb|reg_GURU|q_s\(4) & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(4)))) # 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4))) ) ) ) # ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(4)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4))) ) ) ) # ( 
-- \cir1|guru|base|data|rb|reg_GURU|q_s\(4) & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((\cir1|guru|base|data|rb|reg_INIT|q_s\(4))))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ 
-- & (((!\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\)) # (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4)))) ) ) ) # ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((\cir1|guru|base|data|rb|reg_INIT|q_s\(4))))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4) & 
-- ((\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100111111010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	datab => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(4),
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datad => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datae => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(4),
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	combout => \cir1|guru|base|data|rb|rb_out[4]~6_combout\);

-- Location: FF_X83_Y34_N29
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(5),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5));

-- Location: FF_X82_Y34_N14
\cir1|guru|base|data|rb|reg_INIT|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[5]~7_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(5));

-- Location: MLABCELL_X82_Y34_N12
\cir1|guru|base|data|rb|rb_out[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[5]~7_combout\ = ( \cir1|guru|base|data|rb|reg_INIT|q_s\(5) & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5)) ) ) ) # 
-- ( !\cir1|guru|base|data|rb|reg_INIT|q_s\(5) & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5)) ) ) ) # ( \cir1|guru|base|data|rb|reg_INIT|q_s\(5) & ( 
-- !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # ((!\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(5))) # 
-- (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ((\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5))))) ) ) ) # ( !\cir1|guru|base|data|rb|reg_INIT|q_s\(5) & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((!\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(5))) # (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & 
-- ((\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111011100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(5),
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(5),
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	combout => \cir1|guru|base|data|rb|rb_out[5]~7_combout\);

-- Location: MLABCELL_X82_Y34_N48
\cir1|guru|base|data|alu_1|add|adder_6|aux_and_3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|alu_1|add|adder_6|aux_and_3~combout\ = ( \cir1|guru|base|data|rb|rb_out[2]~4_combout\ & ( \cir1|guru|base|data|rb|rb_out[0]~2_combout\ & ( (\cir1|guru|base|data|rb|rb_out[1]~3_combout\ & (\cir1|guru|base|data|rb|rb_out[4]~6_combout\ & 
-- (\cir1|guru|base|data|rb|rb_out[3]~5_combout\ & \cir1|guru|base|data|rb|rb_out[5]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datab => \cir1|guru|base|data|rb|ALT_INV_rb_out[4]~6_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[5]~7_combout\,
	datae => \cir1|guru|base|data|rb|ALT_INV_rb_out[2]~4_combout\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\,
	combout => \cir1|guru|base|data|alu_1|add|adder_6|aux_and_3~combout\);

-- Location: MLABCELL_X82_Y34_N0
\cir1|guru|base|data|n_g|ng_2_RB[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[7]~8_combout\ = ( \cir1|guru|base|data|alu_1|add|adder_6|aux_and_3~combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & (!\cir1|guru|base|data|rb|rb_out[7]~9_combout\ $ 
-- (((!\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\) # (!\cir1|guru|base|data|rb|rb_out[6]~8_combout\))))) ) ) # ( !\cir1|guru|base|data|alu_1|add|adder_6|aux_and_3~combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & 
-- \cir1|guru|base|data|rb|rb_out[7]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010001010000000101000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\,
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[7]~9_combout\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[6]~8_combout\,
	dataf => \cir1|guru|base|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[7]~8_combout\);

-- Location: FF_X82_Y34_N44
\cir1|guru|base|data|rb|reg_GURU|q_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[7]~8_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(7));

-- Location: FF_X83_Y34_N53
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(7),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7));

-- Location: MLABCELL_X84_Y34_N24
\cir2|dp|rb|reg_PRE_GURU|q_s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_PRE_GURU|q_s~4_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(0) & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(0),
	combout => \cir2|dp|rb|reg_PRE_GURU|q_s~4_combout\);

-- Location: FF_X84_Y34_N26
\cir2|dp|rb|reg_PRE_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_PRE_GURU|q_s~4_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_PRE_GURU|q_s\(0));

-- Location: MLABCELL_X84_Y34_N3
\cir2|dp|rb|reg_GURU|q_s~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s~5_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(0) & ( (!\cir2|fsm|WideOr6~combout\ & (((\cir2|dp|n_g|LFSR|g1:0:FF|q_s~q\)))) # (\cir2|fsm|WideOr6~combout\ & ((!\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\) # 
-- ((\cir2|dp|rb|reg_GURU|q_s\(0))))) ) ) # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(0) & ( (!\cir2|fsm|WideOr6~combout\ & (((\cir2|dp|n_g|LFSR|g1:0:FF|q_s~q\)))) # (\cir2|fsm|WideOr6~combout\ & (\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & 
-- ((\cir2|dp|rb|reg_GURU|q_s\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datab => \cir2|fsm|ALT_INV_WideOr6~combout\,
	datac => \cir2|dp|n_g|LFSR|g1:0:FF|ALT_INV_q_s~q\,
	datad => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(0),
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	combout => \cir2|dp|rb|reg_GURU|q_s~5_combout\);

-- Location: FF_X84_Y34_N5
\cir2|dp|rb|reg_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_GURU|q_s~5_combout\,
	sclr => \res~input_o\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_GURU|q_s\(0));

-- Location: LABCELL_X83_Y34_N24
\cir1|ref|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal5~0_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(0) & ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1) & ( (\cir2|dp|rb|reg_GURU|q_s\(1) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7) & 
-- \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0)))) ) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(0) & ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1) & ( (\cir2|dp|rb|reg_GURU|q_s\(1) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6) & 
-- (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7) & !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0)))) ) ) ) # ( \cir2|dp|rb|reg_GURU|q_s\(0) & ( !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1) & ( (!\cir2|dp|rb|reg_GURU|q_s\(1) & 
-- (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7) & \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0)))) ) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(0) & ( !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(1) & ( 
-- (!\cir2|dp|rb|reg_GURU|q_s\(1) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(7) & !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000001000000001000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(1),
	datab => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	datac => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(7),
	datad => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	datae => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(0),
	dataf => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	combout => \cir1|ref|Equal5~0_combout\);

-- Location: MLABCELL_X84_Y34_N36
\cir2|dp|rb|reg_PRE_GURU|q_s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_PRE_GURU|q_s~3_combout\ = ( !\res~input_o\ & ( \cir2|dp|rb|reg_GURU|q_s\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(5),
	combout => \cir2|dp|rb|reg_PRE_GURU|q_s~3_combout\);

-- Location: FF_X84_Y34_N38
\cir2|dp|rb|reg_PRE_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_PRE_GURU|q_s~3_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_PRE_GURU|q_s\(5));

-- Location: LABCELL_X80_Y34_N30
\cir2|dp|rb|rb_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|rb_out~1_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(5) & ( (!\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\) # (\cir2|dp|rb|reg_GURU|q_s\(5)) ) ) # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(5) & ( 
-- (\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & \cir2|dp|rb|reg_GURU|q_s\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datac => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(5),
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	combout => \cir2|dp|rb|rb_out~1_combout\);

-- Location: LABCELL_X83_Y34_N0
\cir2|dp|rb|reg_GURU|q_s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s~2_combout\ = ( !\res~input_o\ & ( (!\cir2|fsm|WideOr6~combout\) # ((!\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (!\cir2|dp|rb|reg_PRE_GURU|q_s\(3))) # 
-- (\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & ((!\cir2|dp|rb|reg_GURU|q_s\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111000111110111111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	datab => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datac => \cir2|fsm|ALT_INV_WideOr6~combout\,
	datad => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(3),
	dataf => \ALT_INV_res~input_o\,
	combout => \cir2|dp|rb|reg_GURU|q_s~2_combout\);

-- Location: FF_X83_Y34_N2
\cir2|dp|rb|reg_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_GURU|q_s~2_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_GURU|q_s\(3));

-- Location: LABCELL_X83_Y34_N21
\cir2|dp|rb|reg_PRE_GURU|q_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_PRE_GURU|q_s~1_combout\ = (\cir2|dp|rb|reg_GURU|q_s\(3) & !\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(3),
	datab => \ALT_INV_res~input_o\,
	combout => \cir2|dp|rb|reg_PRE_GURU|q_s~1_combout\);

-- Location: FF_X83_Y34_N23
\cir2|dp|rb|reg_PRE_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_PRE_GURU|q_s~1_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_PRE_GURU|q_s\(3));

-- Location: LABCELL_X77_Y34_N9
\cir2|dp|rb|rb_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|rb_out~5_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(3) & ( (\cir2|dp|rb|reg_PRE_GURU|q_s\(3)) # (\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(3) & ( 
-- (!\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & \cir2|dp|rb|reg_PRE_GURU|q_s\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datac => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	datae => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \cir2|dp|rb|rb_out~5_combout\);

-- Location: MLABCELL_X84_Y34_N0
\cir2|dp|rb|reg_PRE_GURU|q_s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_PRE_GURU|q_s~2_combout\ = (\cir2|dp|rb|reg_GURU|q_s\(4) & !\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(4),
	datad => \ALT_INV_res~input_o\,
	combout => \cir2|dp|rb|reg_PRE_GURU|q_s~2_combout\);

-- Location: FF_X83_Y34_N11
\cir2|dp|rb|reg_PRE_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir2|dp|rb|reg_PRE_GURU|q_s~2_combout\,
	sload => VCC,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_PRE_GURU|q_s\(4));

-- Location: LABCELL_X77_Y34_N48
\cir2|dp|rb|rb_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|rb_out~6_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(4) & ( \cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & ( \cir2|dp|rb|reg_GURU|q_s\(4) ) ) ) # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(4) & ( 
-- \cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & ( \cir2|dp|rb|reg_GURU|q_s\(4) ) ) ) # ( \cir2|dp|rb|reg_PRE_GURU|q_s\(4) & ( !\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(4),
	datae => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	dataf => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	combout => \cir2|dp|rb|rb_out~6_combout\);

-- Location: LABCELL_X83_Y34_N12
\cir2|dp|rb|reg_GURU|q_s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s~3_combout\ = ( \cir2|dp|rb|rb_out~6_combout\ & ( (!\res~input_o\ & ((!\cir2|fsm|WideOr6~combout\) # (\cir2|dp|rb|rb_out~5_combout\))) ) ) # ( !\cir2|dp|rb|rb_out~6_combout\ & ( (!\res~input_o\ & ((!\cir2|dp|rb|rb_out~5_combout\) # 
-- (!\cir2|fsm|WideOr6~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datac => \cir2|dp|rb|ALT_INV_rb_out~5_combout\,
	datad => \cir2|fsm|ALT_INV_WideOr6~combout\,
	dataf => \cir2|dp|rb|ALT_INV_rb_out~6_combout\,
	combout => \cir2|dp|rb|reg_GURU|q_s~3_combout\);

-- Location: FF_X83_Y34_N14
\cir2|dp|rb|reg_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_GURU|q_s~3_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_GURU|q_s\(4));

-- Location: LABCELL_X83_Y34_N3
\cir2|dp|alu_1|add|adder_5|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|alu_1|add|adder_5|c_out~0_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(4) & ( (\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (!\cir2|dp|rb|reg_GURU|q_s\(4) & !\cir2|dp|rb|reg_GURU|q_s\(3))) ) ) # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(4) 
-- & ( (!\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (!\cir2|dp|rb|reg_PRE_GURU|q_s\(3))) # (\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & (((!\cir2|dp|rb|reg_GURU|q_s\(4) & !\cir2|dp|rb|reg_GURU|q_s\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010001000101110001000100000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	datab => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datac => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(4),
	datad => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(3),
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	combout => \cir2|dp|alu_1|add|adder_5|c_out~0_combout\);

-- Location: LABCELL_X83_Y34_N18
\cir2|dp|rb|reg_GURU|q_s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s~4_combout\ = ( \cir2|dp|alu_1|add|adder_5|c_out~0_combout\ & ( (!\res~input_o\ & ((!\cir2|dp|rb|rb_out~1_combout\) # (!\cir2|fsm|WideOr6~combout\))) ) ) # ( !\cir2|dp|alu_1|add|adder_5|c_out~0_combout\ & ( (!\res~input_o\ & 
-- ((!\cir2|fsm|WideOr6~combout\) # (\cir2|dp|rb|rb_out~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100110011000000110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datac => \cir2|dp|rb|ALT_INV_rb_out~1_combout\,
	datad => \cir2|fsm|ALT_INV_WideOr6~combout\,
	dataf => \cir2|dp|alu_1|add|adder_5|ALT_INV_c_out~0_combout\,
	combout => \cir2|dp|rb|reg_GURU|q_s~4_combout\);

-- Location: FF_X83_Y34_N20
\cir2|dp|rb|reg_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_GURU|q_s~4_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_GURU|q_s\(5));

-- Location: MLABCELL_X82_Y34_N54
\cir1|guru|base|data|n_g|ng_2_RB[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[3]~0_combout\ = ( \cir1|guru|base|data|rb|rb_out[3]~5_combout\ & ( !\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & ( (!\cir1|guru|base|data|rb|rb_out[0]~2_combout\) # 
-- ((!\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\) # ((!\cir1|guru|base|data|rb|rb_out[2]~4_combout\) # (!\cir1|guru|base|data|rb|rb_out[1]~3_combout\))) ) ) ) # ( !\cir1|guru|base|data|rb|rb_out[3]~5_combout\ & ( 
-- !\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & ( (\cir1|guru|base|data|rb|rb_out[0]~2_combout\ & (\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ & (\cir1|guru|base|data|rb|rb_out[2]~4_combout\ & 
-- \cir1|guru|base|data|rb|rb_out[1]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datae => \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\,
	dataf => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[3]~0_combout\);

-- Location: FF_X82_Y34_N41
\cir1|guru|base|data|rb|reg_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[3]~0_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(3));

-- Location: FF_X82_Y34_N11
\cir1|guru|base|data|rb|reg_PRE_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|rb|reg_GURU|q_s\(3),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3));

-- Location: LABCELL_X83_Y34_N36
\cir2|dp|rb|reg_PRE_GURU|q_s~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_PRE_GURU|q_s~6_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(2) & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(2),
	combout => \cir2|dp|rb|reg_PRE_GURU|q_s~6_combout\);

-- Location: FF_X83_Y34_N38
\cir2|dp|rb|reg_PRE_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_PRE_GURU|q_s~6_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_PRE_GURU|q_s\(2));

-- Location: LABCELL_X83_Y34_N15
\cir2|dp|rb|reg_GURU|q_s~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s~7_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(2) & ( (!\res~input_o\ & ((!\cir2|fsm|WideOr6~combout\) # ((!\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\) # (\cir2|dp|rb|reg_GURU|q_s\(2))))) ) ) # ( 
-- !\cir2|dp|rb|reg_PRE_GURU|q_s\(2) & ( (!\res~input_o\ & ((!\cir2|fsm|WideOr6~combout\) # ((\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ & \cir2|dp|rb|reg_GURU|q_s\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001100100010001000110011001000110011001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_WideOr6~combout\,
	datab => \ALT_INV_res~input_o\,
	datac => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datad => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(2),
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	combout => \cir2|dp|rb|reg_GURU|q_s~7_combout\);

-- Location: FF_X83_Y34_N17
\cir2|dp|rb|reg_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_GURU|q_s~7_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_GURU|q_s\(2));

-- Location: LABCELL_X83_Y34_N39
\cir1|ref|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal5~1_combout\ = ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2) & ( (\cir2|dp|rb|reg_GURU|q_s\(2) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3) $ (\cir2|dp|rb|reg_GURU|q_s\(3)))) ) ) # ( !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(2) & ( 
-- (!\cir2|dp|rb|reg_GURU|q_s\(2) & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3) $ (\cir2|dp|rb|reg_GURU|q_s\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000100100010000100010000100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	datab => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(2),
	datad => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(3),
	dataf => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	combout => \cir1|ref|Equal5~1_combout\);

-- Location: LABCELL_X83_Y34_N6
\cir1|ref|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal5~2_combout\ = ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5) & ( \cir2|dp|rb|reg_GURU|q_s\(4) & ( (\cir1|ref|Equal5~0_combout\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4) & (\cir2|dp|rb|reg_GURU|q_s\(5) & \cir1|ref|Equal5~1_combout\))) 
-- ) ) ) # ( !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5) & ( \cir2|dp|rb|reg_GURU|q_s\(4) & ( (\cir1|ref|Equal5~0_combout\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4) & (!\cir2|dp|rb|reg_GURU|q_s\(5) & \cir1|ref|Equal5~1_combout\))) ) ) ) # ( 
-- \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5) & ( !\cir2|dp|rb|reg_GURU|q_s\(4) & ( (\cir1|ref|Equal5~0_combout\ & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4) & (\cir2|dp|rb|reg_GURU|q_s\(5) & \cir1|ref|Equal5~1_combout\))) ) ) ) # ( 
-- !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(5) & ( !\cir2|dp|rb|reg_GURU|q_s\(4) & ( (\cir1|ref|Equal5~0_combout\ & (!\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(4) & (!\cir2|dp|rb|reg_GURU|q_s\(5) & \cir1|ref|Equal5~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000010000000000000100000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal5~0_combout\,
	datab => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	datac => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(5),
	datad => \cir1|ref|ALT_INV_Equal5~1_combout\,
	datae => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(4),
	combout => \cir1|ref|Equal5~2_combout\);

-- Location: LABCELL_X83_Y34_N54
\cir1|ref|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal3~1_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(3) & ( \cir2|dp|rb|reg_GURU|q_s\(4) & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & (\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ 
-- (\cir2|dp|rb|reg_GURU|q_s\(2))))) ) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(3) & ( \cir2|dp|rb|reg_GURU|q_s\(4) & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ 
-- (\cir2|dp|rb|reg_GURU|q_s\(2))))) ) ) ) # ( \cir2|dp|rb|reg_GURU|q_s\(3) & ( !\cir2|dp|rb|reg_GURU|q_s\(4) & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & (\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ 
-- (\cir2|dp|rb|reg_GURU|q_s\(2))))) ) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(3) & ( !\cir2|dp|rb|reg_GURU|q_s\(4) & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ 
-- (\cir2|dp|rb|reg_GURU|q_s\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(2),
	datab => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(4),
	datac => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(2),
	datad => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(3),
	datae => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(3),
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(4),
	combout => \cir1|ref|Equal3~1_combout\);

-- Location: LABCELL_X83_Y34_N42
\cir1|ref|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal3~2_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(5) & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(5) & (\cir1|ref|Equal3~0_combout\ & \cir1|ref|Equal3~1_combout\)) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(5) & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(5) 
-- & (\cir1|ref|Equal3~0_combout\ & \cir1|ref|Equal3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(5),
	datac => \cir1|ref|ALT_INV_Equal3~0_combout\,
	datad => \cir1|ref|ALT_INV_Equal3~1_combout\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(5),
	combout => \cir1|ref|Equal3~2_combout\);

-- Location: MLABCELL_X84_Y34_N57
\cir1|ref|state_next.go_guru_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|state_next.go_guru_state~0_combout\ = ( !\cir1|ref|Equal3~2_combout\ & ( (\cir1|ref|state_reg.checkMiddle~q\ & \cir1|ref|Equal5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_state_reg.checkMiddle~q\,
	datad => \cir1|ref|ALT_INV_Equal5~2_combout\,
	dataf => \cir1|ref|ALT_INV_Equal3~2_combout\,
	combout => \cir1|ref|state_next.go_guru_state~0_combout\);

-- Location: FF_X84_Y34_N58
\cir1|ref|state_reg.go_guru_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|state_next.go_guru_state~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.go_guru_state~q\);

-- Location: LABCELL_X80_Y35_N12
\cir1|guru|base|control|guru|STATE~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~20_combout\ = ( \cir1|guru|base|control|guru|STATE.CHECK_LAST~q\ & ( \cir1|guru|base|control|guru|STATE.INCR~q\ ) ) # ( !\cir1|guru|base|control|guru|STATE.CHECK_LAST~q\ & ( \cir1|guru|base|control|guru|STATE.INCR~q\ ) ) 
-- # ( \cir1|guru|base|control|guru|STATE.CHECK_LAST~q\ & ( !\cir1|guru|base|control|guru|STATE.INCR~q\ & ( (!\cir1|ref|state_reg.go_guru_state~q\ & !\cir1|ref|state_reg.unm_go_guru~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_state_reg.go_guru_state~q\,
	datac => \cir1|ref|ALT_INV_state_reg.unm_go_guru~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_LAST~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.INCR~q\,
	combout => \cir1|guru|base|control|guru|STATE~20_combout\);

-- Location: FF_X80_Y35_N14
\cir1|guru|base|control|guru|STATE.CHECK_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|guru|STATE~20_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.CHECK_LAST~q\);

-- Location: FF_X82_Y34_N17
\cir1|guru|base|data|rb|reg_INIT|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[3]~0_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_INIT|q_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_INIT|q_s\(3));

-- Location: LABCELL_X80_Y35_N42
\cir1|ref|go_guru\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|go_guru~combout\ = ( !\cir1|ref|state_reg.go_guru_state~q\ & ( !\cir1|ref|state_reg.unm_go_guru~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|ref|ALT_INV_state_reg.unm_go_guru~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.go_guru_state~q\,
	combout => \cir1|ref|go_guru~combout\);

-- Location: LABCELL_X81_Y35_N30
\cir1|guru|base|control|guru|STATE~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~13_combout\ = ( !\cir1|ref|go_guru~combout\ & ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\res~input_o\ & (\cir1|guru|base|control|guru|STATE.CHECK_LAST~q\ & \cir1|guru|base|data|rb|reg_GURU|q_s\(3))) ) 
-- ) ) # ( !\cir1|ref|go_guru~combout\ & ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\res~input_o\ & (\cir1|guru|base|control|guru|STATE.CHECK_LAST~q\ & \cir1|guru|base|data|rb|reg_INIT|q_s\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_LAST~q\,
	datac => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(3),
	datad => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(3),
	datae => \cir1|ref|ALT_INV_go_guru~combout\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|control|guru|STATE~13_combout\);

-- Location: FF_X81_Y35_N32
\cir1|guru|base|control|guru|STATE.LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|guru|STATE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.LAST~q\);

-- Location: LABCELL_X83_Y34_N30
\cir1|guru|base|data|rb|rb_out[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[6]~8_combout\ = ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6) ) ) ) # ( 
-- !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( \cir1|guru|base|data|rb|reg_INIT|q_s\(6) ) ) ) # ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( 
-- !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(6))) # (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ((\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(6)))) ) ) ) 
-- # ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( \cir1|guru|base|data|rb|reg_INIT|q_s\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000010100101111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datab => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(6),
	datac => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(6),
	datad => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	datae => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	combout => \cir1|guru|base|data|rb|rb_out[6]~8_combout\);

-- Location: MLABCELL_X82_Y35_N21
\cir1|guru|base|control|init|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|init|Selector1~0_combout\ = ( \cir1|guru|base|control|init|STATE.ZERO~q\ ) # ( !\cir1|guru|base|control|init|STATE.ZERO~q\ & ( (!\cir1|guru|base|data|rb|rb_out[6]~8_combout\ & \cir1|guru|base|control|init|STATE.MEM_WALK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[6]~8_combout\,
	datad => \cir1|guru|base|control|init|ALT_INV_STATE.MEM_WALK~q\,
	dataf => \cir1|guru|base|control|init|ALT_INV_STATE.ZERO~q\,
	combout => \cir1|guru|base|control|init|Selector1~0_combout\);

-- Location: FF_X82_Y35_N23
\cir1|guru|base|control|init|STATE.MEM_WALK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|init|Selector1~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|init|STATE.MEM_WALK~q\);

-- Location: MLABCELL_X82_Y35_N3
\cir1|guru|base|control|init|STATE~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|init|STATE~6_combout\ = ( \cir1|guru|base|data|rb|rb_out[6]~8_combout\ & ( (!\res~input_o\ & \cir1|guru|base|control|init|STATE.MEM_WALK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	datad => \cir1|guru|base|control|init|ALT_INV_STATE.MEM_WALK~q\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[6]~8_combout\,
	combout => \cir1|guru|base|control|init|STATE~6_combout\);

-- Location: FF_X81_Y35_N47
\cir1|guru|base|control|init|STATE.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|control|init|STATE~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|init|STATE.DONE~q\);

-- Location: LABCELL_X81_Y35_N21
\cir1|guru|base|control|main|STATE~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|STATE~9_combout\ = ( !\res~input_o\ & ( (\cir1|guru|base|control|init|STATE.DONE~q\) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.DONE~q\,
	dataf => \ALT_INV_res~input_o\,
	combout => \cir1|guru|base|control|main|STATE~9_combout\);

-- Location: FF_X81_Y35_N14
\cir1|guru|base|control|main|STATE.INIT_ACTIVATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|control|main|STATE~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\);

-- Location: MLABCELL_X82_Y34_N6
\cir1|guru|base|data|rb|rb_out[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|rb|rb_out[3]~5_combout\ = ( \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( \cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((\cir1|guru|base|data|rb|reg_INIT|q_s\(3)))) # 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3))) ) ) ) # ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( \cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( 
-- (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((\cir1|guru|base|data|rb|reg_INIT|q_s\(3))))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((!\cir1|guru|base|control|guru|STATE.LAST~q\)) # 
-- (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3)))) ) ) ) # ( \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & 
-- ((\cir1|guru|base|data|rb|reg_INIT|q_s\(3)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3))) ) ) ) # ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( 
-- !\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (((\cir1|guru|base|data|rb|reg_INIT|q_s\(3))))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3) & (\cir1|guru|base|control|guru|STATE.LAST~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000100011011101101010001111110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datab => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \cir1|guru|base|data|rb|reg_INIT|ALT_INV_q_s\(3),
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \cir1|guru|base|data|rb|rb_out[3]~5_combout\);

-- Location: LABCELL_X80_Y35_N45
\cir1|guru|base|control|guru|STATE~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~21_combout\ = ( \cir1|guru|base|control|guru|STATE.CHECK_LAST~q\ & ( (!\cir1|guru|base|data|rb|rb_out[3]~5_combout\ & (!\res~input_o\ & !\cir1|ref|go_guru~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\,
	datab => \ALT_INV_res~input_o\,
	datac => \cir1|ref|ALT_INV_go_guru~combout\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_LAST~q\,
	combout => \cir1|guru|base|control|guru|STATE~21_combout\);

-- Location: FF_X80_Y35_N47
\cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|guru|STATE~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR~q\);

-- Location: LABCELL_X85_Y34_N0
\cir1|ref|state_next.checkTop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|state_next.checkTop~0_combout\ = ( !\cir1|ref|tick_guru~combout\ & ( (\cir1|ref|state_reg.wait50~q\ & ((!\cir1|ref|mainCnt\(31)) # (\cir1|ref|LessThan0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_mainCnt\(31),
	datac => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	datad => \cir1|ref|ALT_INV_state_reg.wait50~q\,
	dataf => \cir1|ref|ALT_INV_tick_guru~combout\,
	combout => \cir1|ref|state_next.checkTop~0_combout\);

-- Location: FF_X85_Y34_N2
\cir1|ref|state_reg.checkTop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|state_next.checkTop~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.checkTop~q\);

-- Location: LABCELL_X81_Y34_N24
\cir1|ref|Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~6_combout\ = ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & ( \cir2|dp|rb|reg_PRE_GURU|q_s\(4) ) ) # ( \cir1|guru|base|data|rb|reg_GURU|q_s\(4) & ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(4) & ( (!\cir1|ref|state_reg.detect~q\ & 
-- (!\cir1|ref|state_reg.detect1~q\ & ((!\cir1|hold2|state_reg~q\) # (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(4) & ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(4) & ( (((\cir1|hold2|state_reg~q\ & 
-- !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\)) # (\cir1|ref|state_reg.detect1~q\)) # (\cir1|ref|state_reg.detect~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111111111111101100000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|hold2|ALT_INV_state_reg~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|ref|ALT_INV_state_reg.detect~q\,
	datad => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datae => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(4),
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	combout => \cir1|ref|Equal2~6_combout\);

-- Location: LABCELL_X81_Y34_N3
\cir1|ref|state_next.detect~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|state_next.detect~0_combout\ = ( !\cir1|ref|Equal3~2_combout\ & ( !\cir1|ref|Equal2~6_combout\ & ( (!\cir1|ref|Equal2~7_combout\ & (\cir1|ref|Equal2~12_combout\ & (!\cir1|ref|Equal5~2_combout\ & \cir1|ref|state_reg.checkMiddle~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal2~7_combout\,
	datab => \cir1|ref|ALT_INV_Equal2~12_combout\,
	datac => \cir1|ref|ALT_INV_Equal5~2_combout\,
	datad => \cir1|ref|ALT_INV_state_reg.checkMiddle~q\,
	datae => \cir1|ref|ALT_INV_Equal3~2_combout\,
	dataf => \cir1|ref|ALT_INV_Equal2~6_combout\,
	combout => \cir1|ref|state_next.detect~0_combout\);

-- Location: FF_X81_Y34_N5
\cir1|ref|state_reg.detect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|state_next.detect~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.detect~q\);

-- Location: LABCELL_X81_Y34_N51
\cir1|hold2|state_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold2|state_next~0_combout\ = ( \cir1|ref|state_reg.detect~q\ & ( \cir1|hold2|state_reg~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( !\cir1|ref|state_reg.detect~q\ & ( \cir1|hold2|state_reg~q\ & ( 
-- !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( \cir1|ref|state_reg.detect~q\ & ( !\cir1|hold2|state_reg~q\ ) ) # ( !\cir1|ref|state_reg.detect~q\ & ( !\cir1|hold2|state_reg~q\ & ( \cir1|ref|state_reg.detect1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datae => \cir1|ref|ALT_INV_state_reg.detect~q\,
	dataf => \cir1|hold2|ALT_INV_state_reg~q\,
	combout => \cir1|hold2|state_next~0_combout\);

-- Location: LABCELL_X81_Y34_N9
\cir1|hold2|state_next~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold2|state_next~1_combout\ = ( \cir1|hold2|state_reg~q\ ) # ( !\cir1|hold2|state_reg~q\ & ( (!\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\) # ((!\cir1|ref|state_reg.detect~q\ & !\cir1|ref|state_reg.detect1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_state_reg.detect~q\,
	datac => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datad => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	dataf => \cir1|hold2|ALT_INV_state_reg~q\,
	combout => \cir1|hold2|state_next~1_combout\);

-- Location: LABCELL_X81_Y34_N39
\cir1|hold2|state_next\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold2|state_next~combout\ = ( \cir1|hold2|state_next~1_combout\ & ( \cir1|hold2|state_next~0_combout\ ) ) # ( !\cir1|hold2|state_next~1_combout\ & ( \cir1|hold2|state_next~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|hold2|ALT_INV_state_next~0_combout\,
	datad => \cir1|hold2|ALT_INV_state_next~combout\,
	dataf => \cir1|hold2|ALT_INV_state_next~1_combout\,
	combout => \cir1|hold2|state_next~combout\);

-- Location: FF_X81_Y33_N50
\cir1|hold2|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|hold2|state_next~combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|hold2|state_reg~q\);

-- Location: MLABCELL_X84_Y34_N48
\cir1|ref|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~3_combout\ = ( \cir1|hold2|state_reg~q\ & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(7) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(0) $ 
-- (\cir2|dp|rb|reg_PRE_GURU|q_s\(0))))) ) ) ) # ( !\cir1|hold2|state_reg~q\ & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(7) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & 
-- (!\cir1|guru|base|data|rb|reg_GURU|q_s\(0) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(0))))) ) ) ) # ( \cir1|hold2|state_reg~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(0) & 
-- (\cir1|guru|base|data|rb|reg_GURU|q_s\(7) & \cir1|guru|base|data|rb|reg_GURU|q_s\(6))) ) ) ) # ( !\cir1|hold2|state_reg~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(7) & 
-- (!\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(0) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000000000010110010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(0),
	datab => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	datac => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(7),
	datad => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(6),
	datae => \cir1|hold2|ALT_INV_state_reg~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir1|ref|Equal2~3_combout\);

-- Location: MLABCELL_X84_Y34_N6
\cir1|ref|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~1_combout\ = ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(5) $ (!\cir2|dp|rb|reg_PRE_GURU|q_s\(5)) ) ) # ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( 
-- !\cir1|guru|base|data|rb|reg_GURU|q_s\(5) $ (((!\cir1|hold2|state_reg~q\ & !\cir2|dp|rb|reg_PRE_GURU|q_s\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(5),
	datab => \cir1|hold2|ALT_INV_state_reg~q\,
	datac => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir1|ref|Equal2~1_combout\);

-- Location: MLABCELL_X84_Y34_N12
\cir1|ref|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~2_combout\ = ( \cir1|hold2|state_reg~q\ & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (!\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) $ 
-- (\cir2|dp|rb|reg_PRE_GURU|q_s\(4))))) # (\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(4))))) ) ) ) # ( !\cir1|hold2|state_reg~q\ & ( 
-- \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (!\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(4))))) # 
-- (\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(4))))) ) ) ) # ( \cir1|hold2|state_reg~q\ & ( 
-- !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & \cir1|guru|base|data|rb|reg_GURU|q_s\(4)) ) ) ) # ( !\cir1|hold2|state_reg~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( 
-- (!\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (!\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(4))))) # (\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & (\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & 
-- (!\cir1|guru|base|data|rb|reg_GURU|q_s\(4) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000100010001000110000010010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(3),
	datab => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(4),
	datac => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	datad => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	datae => \cir1|hold2|ALT_INV_state_reg~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir1|ref|Equal2~2_combout\);

-- Location: MLABCELL_X84_Y34_N18
\cir1|ref|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~4_combout\ = ( \cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(2)))) ) 
-- ) ) # ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(2)))) ) ) ) # ( 
-- \cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|hold2|state_reg~q\ & (\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(2))))) # 
-- (\cir1|hold2|state_reg~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(2))) ) ) ) # ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|hold2|state_reg~q\ & (!\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & 
-- (!\cir1|guru|base|data|rb|reg_GURU|q_s\(2) $ (\cir2|dp|rb|reg_PRE_GURU|q_s\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000100011001010110100101000000000000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(2),
	datab => \cir1|hold2|ALT_INV_state_reg~q\,
	datac => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	datad => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	datae => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(1),
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir1|ref|Equal2~4_combout\);

-- Location: MLABCELL_X84_Y34_N54
\cir1|ref|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~5_combout\ = ( \cir1|ref|Equal2~4_combout\ & ( (\cir1|ref|Equal2~3_combout\ & (!\cir1|ref|Equal2~1_combout\ & \cir1|ref|Equal2~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal2~3_combout\,
	datab => \cir1|ref|ALT_INV_Equal2~1_combout\,
	datac => \cir1|ref|ALT_INV_Equal2~2_combout\,
	dataf => \cir1|ref|ALT_INV_Equal2~4_combout\,
	combout => \cir1|ref|Equal2~5_combout\);

-- Location: LABCELL_X80_Y34_N6
\cir1|ref|state_reg.conflict1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|state_reg.conflict1~0_combout\ = ( \cir1|ref|Equal2~5_combout\ & ( \cir1|ref|state_reg.conflict1~q\ ) ) # ( !\cir1|ref|Equal2~5_combout\ & ( ((\cir1|ref|Equal3~2_combout\ & \cir1|ref|state_reg.checkTop~q\)) # (\cir1|ref|state_reg.conflict1~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal3~2_combout\,
	datac => \cir1|ref|ALT_INV_state_reg.checkTop~q\,
	datad => \cir1|ref|ALT_INV_state_reg.conflict1~q\,
	dataf => \cir1|ref|ALT_INV_Equal2~5_combout\,
	combout => \cir1|ref|state_reg.conflict1~0_combout\);

-- Location: FF_X80_Y34_N8
\cir1|ref|state_reg.conflict1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|state_reg.conflict1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.conflict1~q\);

-- Location: LABCELL_X80_Y34_N33
\cir1|hold|state_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold|state_next~0_combout\ = ( \cir1|hold|state_reg~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ ) ) # ( !\cir1|hold|state_reg~q\ & ( (\cir1|ref|state_reg.conflict~q\) # (\cir1|ref|state_reg.conflict1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|ref|ALT_INV_state_reg.conflict1~q\,
	datad => \cir1|ref|ALT_INV_state_reg.conflict~q\,
	dataf => \cir1|hold|ALT_INV_state_reg~q\,
	combout => \cir1|hold|state_next~0_combout\);

-- Location: LABCELL_X80_Y34_N21
\cir1|hold|state_next~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold|state_next~1_combout\ = ( \cir1|hold|state_reg~q\ ) # ( !\cir1|hold|state_reg~q\ & ( (!\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\) # ((!\cir1|ref|state_reg.conflict1~q\ & !\cir1|ref|state_reg.conflict~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|ref|ALT_INV_state_reg.conflict1~q\,
	datad => \cir1|ref|ALT_INV_state_reg.conflict~q\,
	dataf => \cir1|hold|ALT_INV_state_reg~q\,
	combout => \cir1|hold|state_next~1_combout\);

-- Location: LABCELL_X80_Y34_N18
\cir1|hold|state_next\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold|state_next~combout\ = (!\cir1|hold|state_next~1_combout\ & ((\cir1|hold|state_next~combout\))) # (\cir1|hold|state_next~1_combout\ & (\cir1|hold|state_next~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|hold|ALT_INV_state_next~0_combout\,
	datac => \cir1|hold|ALT_INV_state_next~1_combout\,
	datad => \cir1|hold|ALT_INV_state_next~combout\,
	combout => \cir1|hold|state_next~combout\);

-- Location: FF_X80_Y34_N20
\cir1|hold|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|hold|state_next~combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|hold|state_reg~q\);

-- Location: LABCELL_X80_Y35_N54
\cir1|guru|base|control|guru|STATE~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~16_combout\ = ( !\cir1|ref|state_reg.conflict1~q\ & ( \cir1|hold|state_reg~q\ & ( (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & (\cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR~q\ & (!\res~input_o\ & 
-- !\cir1|ref|state_reg.conflict~q\))) ) ) ) # ( !\cir1|ref|state_reg.conflict1~q\ & ( !\cir1|hold|state_reg~q\ & ( (\cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR~q\ & (!\res~input_o\ & !\cir1|ref|state_reg.conflict~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	datac => \ALT_INV_res~input_o\,
	datad => \cir1|ref|ALT_INV_state_reg.conflict~q\,
	datae => \cir1|ref|ALT_INV_state_reg.conflict1~q\,
	dataf => \cir1|hold|ALT_INV_state_reg~q\,
	combout => \cir1|guru|base|control|guru|STATE~16_combout\);

-- Location: FF_X81_Y35_N38
\cir1|guru|base|control|guru|STATE.WRITE_GURU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|control|guru|STATE~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.WRITE_GURU~q\);

-- Location: LABCELL_X80_Y35_N24
\cir1|guru|base|control|guru|STATE~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~15_combout\ = ( \cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR~q\ & ( \cir1|ref|state_reg.conflict~q\ & ( !\res~input_o\ ) ) ) # ( \cir1|guru|base|control|guru|STATE.CHECK_SAME_ADDR~q\ & ( 
-- !\cir1|ref|state_reg.conflict~q\ & ( (!\res~input_o\ & (((!\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & \cir1|hold|state_reg~q\)) # (\cir1|ref|state_reg.conflict1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datab => \cir1|hold|ALT_INV_state_reg~q\,
	datac => \cir1|ref|ALT_INV_state_reg.conflict1~q\,
	datad => \ALT_INV_res~input_o\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.conflict~q\,
	combout => \cir1|guru|base|control|guru|STATE~15_combout\);

-- Location: FF_X81_Y35_N53
\cir1|guru|base|control|guru|STATE.WRITE_DUO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|control|guru|STATE~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.WRITE_DUO~q\);

-- Location: LABCELL_X81_Y35_N42
\cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ = ( \cir1|guru|base|control|guru|STATE.WRITE_DUO~q\ ) # ( !\cir1|guru|base|control|guru|STATE.WRITE_DUO~q\ & ( \cir1|guru|base|control|guru|STATE.WRITE_GURU~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_GURU~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	combout => \cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\);

-- Location: FF_X81_Y35_N5
\cir1|guru|base|control|guru|STATE.CLEAR_PREV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\);

-- Location: MLABCELL_X82_Y35_N36
\cir1|guru|base|control|guru|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|Selector1~0_combout\ = ( \cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( (((!\cir1|guru|step|cnt_v1_s~q\ & \cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\)) # (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\)) # 
-- (\cir1|guru|base|control|guru|STATE.WRITE_RAND~q\) ) ) # ( !\cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( ((\cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\) # (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\)) # 
-- (\cir1|guru|base|control|guru|STATE.WRITE_RAND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111110111110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datab => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \cir1|guru|base|control|guru|Selector1~0_combout\);

-- Location: FF_X82_Y35_N38
\cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|guru|Selector1~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\);

-- Location: MLABCELL_X82_Y35_N45
\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ = ( \cir1|guru|base|control|guru|STATE.RAND~q\ & ( \cir1|guru|base|control|guru|STATE.START_WALKING~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & 
-- \cir1|guru|base|control|init|STATE.MEM_WALK~q\) ) ) ) # ( !\cir1|guru|base|control|guru|STATE.RAND~q\ & ( \cir1|guru|base|control|guru|STATE.START_WALKING~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (((\cir1|guru|base|control|init|STATE.MEM_WALK~q\)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (!\cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\ & (!\cir1|guru|base|control|guru|STATE.WRITE_RAND~q\))) ) ) ) # ( 
-- \cir1|guru|base|control|guru|STATE.RAND~q\ & ( !\cir1|guru|base|control|guru|STATE.START_WALKING~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & \cir1|guru|base|control|init|STATE.MEM_WALK~q\) ) ) ) # ( 
-- !\cir1|guru|base|control|guru|STATE.RAND~q\ & ( !\cir1|guru|base|control|guru|STATE.START_WALKING~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & \cir1|guru|base|control|init|STATE.MEM_WALK~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000100000111011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datad => \cir1|guru|base|control|init|ALT_INV_STATE.MEM_WALK~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.RAND~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\,
	combout => \cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\);

-- Location: MLABCELL_X82_Y34_N45
\cir1|guru|base|data|n_g|ng_2_RB[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[6]~9_combout\ = (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & (!\cir1|guru|base|data|rb|rb_out[6]~8_combout\ $ (((!\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\) # 
-- (!\cir1|guru|base|data|alu_1|add|adder_6|aux_and_3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101000000010100010100000001010001010000000101000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\,
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[6]~8_combout\,
	datad => \cir1|guru|base|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[6]~9_combout\);

-- Location: FF_X82_Y34_N47
\cir1|guru|base|data|rb|reg_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|data|n_g|ng_2_RB[6]~9_combout\,
	sclr => \res~input_o\,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(6));

-- Location: LABCELL_X81_Y34_N30
\cir1|ref|Equal2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~11_combout\ = ( \cir1|ref|state_reg.detect~q\ & ( \cir1|hold2|state_reg~q\ & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & \cir1|guru|base|data|rb|reg_GURU|q_s\(7)) ) ) ) # ( !\cir1|ref|state_reg.detect~q\ & ( \cir1|hold2|state_reg~q\ & ( 
-- (!\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & (!\cir1|ref|state_reg.detect1~q\ & !\cir1|guru|base|data|rb|reg_GURU|q_s\(7)))) # (\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & 
-- (\cir1|guru|base|data|rb|reg_GURU|q_s\(7) & ((!\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\) # (\cir1|ref|state_reg.detect1~q\)))) ) ) ) # ( \cir1|ref|state_reg.detect~q\ & ( !\cir1|hold2|state_reg~q\ & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(6) 
-- & \cir1|guru|base|data|rb|reg_GURU|q_s\(7)) ) ) ) # ( !\cir1|ref|state_reg.detect~q\ & ( !\cir1|hold2|state_reg~q\ & ( (!\cir1|ref|state_reg.detect1~q\ & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & !\cir1|guru|base|data|rb|reg_GURU|q_s\(7))) # 
-- (\cir1|ref|state_reg.detect1~q\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & \cir1|guru|base|data|rb|reg_GURU|q_s\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000011000000000000111101000000000010110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datab => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datac => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(6),
	datad => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(7),
	datae => \cir1|ref|ALT_INV_state_reg.detect~q\,
	dataf => \cir1|hold2|ALT_INV_state_reg~q\,
	combout => \cir1|ref|Equal2~11_combout\);

-- Location: LABCELL_X80_Y34_N45
\cir1|ref|Equal2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~8_combout\ = ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & ( \cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( (!\cir1|ref|state_reg.detect1~q\ & (!\cir1|ref|state_reg.detect~q\ & ((!\cir1|hold2|state_reg~q\) # 
-- (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( \cir2|dp|rb|reg_PRE_GURU|q_s\(1) & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(1) ) ) # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(1) & ( 
-- (((!\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & \cir1|hold2|state_reg~q\)) # (\cir1|ref|state_reg.detect~q\)) # (\cir1|ref|state_reg.detect1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111111111111111111111111110100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|hold2|ALT_INV_state_reg~q\,
	datad => \cir1|ref|ALT_INV_state_reg.detect~q\,
	datae => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	dataf => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(1),
	combout => \cir1|ref|Equal2~8_combout\);

-- Location: LABCELL_X81_Y34_N27
\cir1|ref|Equal2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~10_combout\ = ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( \cir2|dp|rb|reg_PRE_GURU|q_s\(3) ) ) # ( \cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & ( (!\cir1|ref|state_reg.detect1~q\ & 
-- (!\cir1|ref|state_reg.detect~q\ & ((!\cir1|hold2|state_reg~q\) # (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(3) & ( (((\cir1|hold2|state_reg~q\ & 
-- !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\)) # (\cir1|ref|state_reg.detect~q\)) # (\cir1|ref|state_reg.detect1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111111111111101100000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|hold2|ALT_INV_state_reg~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datad => \cir1|ref|ALT_INV_state_reg.detect~q\,
	datae => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(3),
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	combout => \cir1|ref|Equal2~10_combout\);

-- Location: LABCELL_X80_Y34_N42
\cir1|ref|Equal2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~9_combout\ = ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(2) & ( \cir1|guru|base|data|rb|reg_GURU|q_s\(2) & ( (!\cir1|ref|state_reg.detect1~q\ & (!\cir1|ref|state_reg.detect~q\ & ((!\cir1|hold2|state_reg~q\) # 
-- (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( \cir2|dp|rb|reg_PRE_GURU|q_s\(2) & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(2) ) ) # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(2) & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(2) & ( 
-- (((!\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & \cir1|hold2|state_reg~q\)) # (\cir1|ref|state_reg.detect~q\)) # (\cir1|ref|state_reg.detect1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111111111111111111110100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|ref|ALT_INV_state_reg.detect~q\,
	datad => \cir1|hold2|ALT_INV_state_reg~q\,
	datae => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	dataf => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(2),
	combout => \cir1|ref|Equal2~9_combout\);

-- Location: LABCELL_X81_Y34_N36
\cir1|disc_prev_s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|disc_prev_s[0]~0_combout\ = ( \cir1|hold2|state_reg~q\ & ( (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & (!\cir1|ref|state_reg.detect1~q\ & (!\cir1|ref|state_reg.detect~q\ & !\cir2|dp|rb|reg_PRE_GURU|q_s\(0)))) ) ) # ( 
-- !\cir1|hold2|state_reg~q\ & ( (!\cir1|ref|state_reg.detect1~q\ & (!\cir1|ref|state_reg.detect~q\ & !\cir2|dp|rb|reg_PRE_GURU|q_s\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datab => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datac => \cir1|ref|ALT_INV_state_reg.detect~q\,
	datad => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	dataf => \cir1|hold2|ALT_INV_state_reg~q\,
	combout => \cir1|disc_prev_s[0]~0_combout\);

-- Location: LABCELL_X81_Y34_N45
\cir1|ref|Equal2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~12_combout\ = ( !\cir1|ref|Equal2~9_combout\ & ( \cir1|disc_prev_s[0]~0_combout\ & ( (\cir1|ref|Equal2~11_combout\ & (!\cir1|ref|Equal2~8_combout\ & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(0) & !\cir1|ref|Equal2~10_combout\))) ) ) ) # ( 
-- !\cir1|ref|Equal2~9_combout\ & ( !\cir1|disc_prev_s[0]~0_combout\ & ( (\cir1|ref|Equal2~11_combout\ & (!\cir1|ref|Equal2~8_combout\ & (\cir1|guru|base|data|rb|reg_GURU|q_s\(0) & !\cir1|ref|Equal2~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal2~11_combout\,
	datab => \cir1|ref|ALT_INV_Equal2~8_combout\,
	datac => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(0),
	datad => \cir1|ref|ALT_INV_Equal2~10_combout\,
	datae => \cir1|ref|ALT_INV_Equal2~9_combout\,
	dataf => \cir1|ALT_INV_disc_prev_s[0]~0_combout\,
	combout => \cir1|ref|Equal2~12_combout\);

-- Location: LABCELL_X81_Y34_N6
\cir1|ref|state_next.detect1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|state_next.detect1~0_combout\ = ( !\cir1|ref|Equal2~6_combout\ & ( (\cir1|ref|Equal2~12_combout\ & (\cir1|ref|state_reg.checkTop~q\ & !\cir1|ref|Equal2~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_Equal2~12_combout\,
	datac => \cir1|ref|ALT_INV_state_reg.checkTop~q\,
	datad => \cir1|ref|ALT_INV_Equal2~7_combout\,
	dataf => \cir1|ref|ALT_INV_Equal2~6_combout\,
	combout => \cir1|ref|state_next.detect1~0_combout\);

-- Location: FF_X81_Y34_N8
\cir1|ref|state_reg.detect1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|state_next.detect1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.detect1~q\);

-- Location: LABCELL_X81_Y33_N21
\cir1|hold2|holdedOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold2|holdedOut~combout\ = ( !\cir1|ref|state_reg.detect~q\ & ( (!\cir1|ref|state_reg.detect1~q\ & ((!\cir1|hold2|state_reg~q\) # (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010101010100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datad => \cir1|hold2|ALT_INV_state_reg~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.detect~q\,
	combout => \cir1|hold2|holdedOut~combout\);

-- Location: LABCELL_X81_Y33_N27
\cir2|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector10~0_combout\ = ( \cir1|ref|state_reg.unm_go_discB~q\ & ( \cir2|fsm|STATE.INCR~q\ ) ) # ( !\cir1|ref|state_reg.unm_go_discB~q\ & ( ((\cir2|fsm|STATE.CHECK_LAST~q\ & !\cir1|ref|state_reg.unm_godisc_BL~q\)) # (\cir2|fsm|STATE.INCR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_STATE.CHECK_LAST~q\,
	datac => \cir2|fsm|ALT_INV_STATE.INCR~q\,
	datad => \cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.unm_go_discB~q\,
	combout => \cir2|fsm|Selector10~0_combout\);

-- Location: LABCELL_X81_Y33_N36
\cir2|fsm|NEXT_STATE.CHECK_LAST_461\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.CHECK_LAST_461~combout\ = ( \cir2|fsm|Selector10~0_combout\ & ( (\cir2|fsm|NEXT_STATE.CHECK_LAST_461~combout\) # (\cir2|fsm|Selector18~0_combout\) ) ) # ( !\cir2|fsm|Selector10~0_combout\ & ( (!\cir2|fsm|Selector18~0_combout\ & 
-- \cir2|fsm|NEXT_STATE.CHECK_LAST_461~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	datad => \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\,
	dataf => \cir2|fsm|ALT_INV_Selector10~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.CHECK_LAST_461~combout\);

-- Location: LABCELL_X81_Y33_N48
\cir2|fsm|STATE~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~22_combout\ = ( \cir2|fsm|NEXT_STATE.CHECK_LAST_461~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_LAST_461~combout\,
	combout => \cir2|fsm|STATE~22_combout\);

-- Location: FF_X81_Y33_N5
\cir2|fsm|STATE.CHECK_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir2|fsm|STATE~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.CHECK_LAST~q\);

-- Location: LABCELL_X80_Y34_N15
\cir2|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector0~0_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(6) & ( (\cir2|fsm|STATE.CHECK_LAST~q\ & ((\cir1|ref|state_reg.unm_godisc_BL~q\) # (\cir1|ref|state_reg.unm_go_discB~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_state_reg.unm_go_discB~q\,
	datac => \cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	datad => \cir2|fsm|ALT_INV_STATE.CHECK_LAST~q\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6),
	combout => \cir2|fsm|Selector0~0_combout\);

-- Location: LABCELL_X80_Y34_N51
\cir2|fsm|NEXT_STATE.CHECK_BEHIND_442\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ = ( \cir2|fsm|Selector0~0_combout\ & ( (\cir2|fsm|Selector18~0_combout\) # (\cir2|fsm|NEXT_STATE.CHECK_BEHIND_442~combout\) ) ) # ( !\cir2|fsm|Selector0~0_combout\ & ( 
-- (\cir2|fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ & !\cir2|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\,
	datad => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \cir2|fsm|ALT_INV_Selector0~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.CHECK_BEHIND_442~combout\);

-- Location: LABCELL_X80_Y34_N24
\cir2|fsm|STATE~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~24_combout\ = ( \cir2|fsm|NEXT_STATE.CHECK_BEHIND_442~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_BEHIND_442~combout\,
	combout => \cir2|fsm|STATE~24_combout\);

-- Location: FF_X81_Y33_N41
\cir2|fsm|STATE.CHECK_BEHIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir2|fsm|STATE~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.CHECK_BEHIND~q\);

-- Location: LABCELL_X81_Y33_N45
\cir2|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector2~0_combout\ = ( \cir2|fsm|STATE.CHECK_BEHIND~q\ & ( \cir1|hold2|holdedOut~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|hold2|ALT_INV_holdedOut~combout\,
	dataf => \cir2|fsm|ALT_INV_STATE.CHECK_BEHIND~q\,
	combout => \cir2|fsm|Selector2~0_combout\);

-- Location: LABCELL_X81_Y33_N6
\cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ = ( \cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ & ( (!\cir2|fsm|Selector18~0_combout\) # (\cir2|fsm|Selector2~0_combout\) ) ) # ( !\cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ & ( 
-- (\cir2|fsm|Selector2~0_combout\ & \cir2|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_Selector2~0_combout\,
	datab => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\,
	combout => \cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\);

-- Location: LABCELL_X80_Y33_N42
\cir2|fsm|STATE~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~14_combout\ = ( \cir2|fsm|NEXT_STATE.CLEAR_BEHIND_423~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_BEHIND_423~combout\,
	combout => \cir2|fsm|STATE~14_combout\);

-- Location: FF_X80_Y33_N29
\cir2|fsm|STATE.CLEAR_BEHIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir2|fsm|STATE~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.CLEAR_BEHIND~q\);

-- Location: LABCELL_X80_Y33_N6
\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ = (!\cir2|fsm|STATE.CLEAR_BEHIND~q\ & !\cir2|fsm|STATE.CLEAR_PREV~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datad => \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\);

-- Location: MLABCELL_X84_Y34_N30
\cir2|dp|rb|reg_GURU|q_s~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s~6_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(1) & ( (!\cir2|fsm|WideOr6~combout\ & (\cir2|dp|n_g|LFSR|g1:1:FF|q_s~q\)) # (\cir2|fsm|WideOr6~combout\ & (((\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\) # 
-- (\cir2|dp|rb|reg_PRE_GURU|q_s\(1))))) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(1) & ( (!\cir2|fsm|WideOr6~combout\ & (\cir2|dp|n_g|LFSR|g1:1:FF|q_s~q\)) # (\cir2|fsm|WideOr6~combout\ & (((\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & 
-- !\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110000010101010011111101010101001100000101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|n_g|LFSR|g1:1:FF|ALT_INV_q_s~q\,
	datab => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	datac => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datad => \cir2|fsm|ALT_INV_WideOr6~combout\,
	datae => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(1),
	combout => \cir2|dp|rb|reg_GURU|q_s~6_combout\);

-- Location: FF_X84_Y34_N32
\cir2|dp|rb|reg_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_GURU|q_s~6_combout\,
	sclr => \res~input_o\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_GURU|q_s\(1));

-- Location: LABCELL_X83_Y34_N48
\cir1|ref|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal3~0_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(0) & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(7) & ( (\cir1|guru|base|data|rb|reg_GURU|q_s\(0) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & (!\cir2|dp|rb|reg_GURU|q_s\(1) $ 
-- (\cir1|guru|base|data|rb|reg_GURU|q_s\(1))))) ) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(0) & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(7) & ( (!\cir1|guru|base|data|rb|reg_GURU|q_s\(0) & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(6) & 
-- (!\cir2|dp|rb|reg_GURU|q_s\(1) $ (\cir1|guru|base|data|rb|reg_GURU|q_s\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(1),
	datab => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(0),
	datac => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(6),
	datad => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(1),
	datae => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(0),
	dataf => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(7),
	combout => \cir1|ref|Equal3~0_combout\);

-- Location: LABCELL_X80_Y34_N27
\cir1|ref|state_next.conflict~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|state_next.conflict~0_combout\ = ( \cir1|ref|Equal3~1_combout\ & ( (\cir1|ref|Equal3~0_combout\ & (\cir1|ref|state_reg.checkMiddle~q\ & (!\cir1|guru|base|data|rb|reg_GURU|q_s\(5) $ (\cir2|dp|rb|reg_GURU|q_s\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(5),
	datab => \cir1|ref|ALT_INV_Equal3~0_combout\,
	datac => \cir1|ref|ALT_INV_state_reg.checkMiddle~q\,
	datad => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(5),
	dataf => \cir1|ref|ALT_INV_Equal3~1_combout\,
	combout => \cir1|ref|state_next.conflict~0_combout\);

-- Location: FF_X80_Y34_N29
\cir1|ref|state_reg.conflict\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|state_next.conflict~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.conflict~q\);

-- Location: LABCELL_X81_Y34_N54
\cir1|ref|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector18~0_combout\ = ( \cir1|ref|Equal3~2_combout\ & ( \cir1|ref|Equal2~5_combout\ & ( \cir1|ref|state_reg.conflict~q\ ) ) ) # ( !\cir1|ref|Equal3~2_combout\ & ( \cir1|ref|Equal2~5_combout\ & ( \cir1|ref|state_reg.conflict~q\ ) ) ) # ( 
-- \cir1|ref|Equal3~2_combout\ & ( !\cir1|ref|Equal2~5_combout\ & ( \cir1|ref|state_reg.conflict~q\ ) ) ) # ( !\cir1|ref|Equal3~2_combout\ & ( !\cir1|ref|Equal2~5_combout\ & ( ((\cir1|ref|state_reg.checkMiddle~q\ & !\cir1|ref|Equal5~2_combout\)) # 
-- (\cir1|ref|state_reg.conflict~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_state_reg.conflict~q\,
	datac => \cir1|ref|ALT_INV_state_reg.checkMiddle~q\,
	datad => \cir1|ref|ALT_INV_Equal5~2_combout\,
	datae => \cir1|ref|ALT_INV_Equal3~2_combout\,
	dataf => \cir1|ref|ALT_INV_Equal2~5_combout\,
	combout => \cir1|ref|Selector18~0_combout\);

-- Location: FF_X81_Y34_N56
\cir1|ref|state_reg.unm_godisc_BL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector18~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.unm_godisc_BL~q\);

-- Location: LABCELL_X80_Y34_N36
\cir2|fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector5~0_combout\ = ( !\cir2|dp|rb|reg_GURU|q_s\(6) & ( (\cir2|fsm|STATE.CHECK_LAST~q\ & ((\cir1|ref|state_reg.unm_go_discB~q\) # (\cir1|ref|state_reg.unm_godisc_BL~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	datac => \cir2|fsm|ALT_INV_STATE.CHECK_LAST~q\,
	datad => \cir1|ref|ALT_INV_state_reg.unm_go_discB~q\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6),
	combout => \cir2|fsm|Selector5~0_combout\);

-- Location: LABCELL_X80_Y34_N9
\cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ = ( \cir2|fsm|Selector5~0_combout\ & ( (\cir2|fsm|Selector18~0_combout\) # (\cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\) ) ) # ( !\cir2|fsm|Selector5~0_combout\ & ( 
-- (\cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ & !\cir2|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\,
	datad => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \cir2|fsm|ALT_INV_Selector5~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\);

-- Location: LABCELL_X80_Y33_N21
\cir2|fsm|STATE~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~21_combout\ = ( \cir2|fsm|NEXT_STATE.CHECK_SAME_ADDR_518~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.CHECK_SAME_ADDR_518~combout\,
	combout => \cir2|fsm|STATE~21_combout\);

-- Location: FF_X80_Y33_N23
\cir2|fsm|STATE.CHECK_SAME_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.CHECK_SAME_ADDR~q\);

-- Location: LABCELL_X80_Y34_N12
\cir1|guru|base|control|main|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector1~0_combout\ = ( !\cir1|ref|state_reg.conflict1~q\ & ( (!\cir1|ref|state_reg.conflict~q\ & ((!\cir1|hold|state_reg~q\) # (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|hold|ALT_INV_state_reg~q\,
	datad => \cir1|ref|ALT_INV_state_reg.conflict~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.conflict1~q\,
	combout => \cir1|guru|base|control|main|Selector1~0_combout\);

-- Location: LABCELL_X80_Y34_N57
\cir2|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector7~0_combout\ = ( !\cir1|guru|base|control|main|Selector1~0_combout\ & ( \cir2|fsm|STATE.CHECK_SAME_ADDR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir2|fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_Selector1~0_combout\,
	combout => \cir2|fsm|Selector7~0_combout\);

-- Location: LABCELL_X80_Y34_N39
\cir2|fsm|NEXT_STATE.WRITE_DUO_499\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.WRITE_DUO_499~combout\ = ( \cir2|fsm|Selector7~0_combout\ & ( (\cir2|fsm|Selector18~0_combout\) # (\cir2|fsm|NEXT_STATE.WRITE_DUO_499~combout\) ) ) # ( !\cir2|fsm|Selector7~0_combout\ & ( (\cir2|fsm|NEXT_STATE.WRITE_DUO_499~combout\ & 
-- !\cir2|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\,
	datad => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \cir2|fsm|ALT_INV_Selector7~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.WRITE_DUO_499~combout\);

-- Location: LABCELL_X80_Y33_N54
\cir2|fsm|STATE~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~23_combout\ = ( \cir2|fsm|NEXT_STATE.WRITE_DUO_499~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DUO_499~combout\,
	combout => \cir2|fsm|STATE~23_combout\);

-- Location: FF_X80_Y33_N56
\cir2|fsm|STATE.WRITE_DUO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.WRITE_DUO~q\);

-- Location: LABCELL_X80_Y33_N12
\cir2|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector8~0_combout\ = ( \cir1|guru|base|control|main|Selector1~0_combout\ & ( \cir2|fsm|STATE.CHECK_SAME_ADDR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_Selector1~0_combout\,
	combout => \cir2|fsm|Selector8~0_combout\);

-- Location: LABCELL_X80_Y33_N36
\cir2|fsm|NEXT_STATE.WRITE_DISC_480\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.WRITE_DISC_480~combout\ = (!\cir2|fsm|Selector18~0_combout\ & ((\cir2|fsm|NEXT_STATE.WRITE_DISC_480~combout\))) # (\cir2|fsm|Selector18~0_combout\ & (\cir2|fsm|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|fsm|ALT_INV_Selector8~0_combout\,
	datac => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	datad => \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\,
	combout => \cir2|fsm|NEXT_STATE.WRITE_DISC_480~combout\);

-- Location: LABCELL_X80_Y33_N9
\cir2|fsm|STATE~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~25_combout\ = ( \cir2|fsm|NEXT_STATE.WRITE_DISC_480~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.WRITE_DISC_480~combout\,
	combout => \cir2|fsm|STATE~25_combout\);

-- Location: FF_X80_Y33_N11
\cir2|fsm|STATE.WRITE_DISC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.WRITE_DISC~q\);

-- Location: LABCELL_X80_Y33_N33
\cir2|fsm|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE~0_combout\ = ( \cir2|fsm|STATE.WRITE_DISC~q\ ) # ( !\cir2|fsm|STATE.WRITE_DISC~q\ & ( \cir2|fsm|STATE.WRITE_DUO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir2|fsm|ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \cir2|fsm|ALT_INV_STATE.WRITE_DISC~q\,
	combout => \cir2|fsm|NEXT_STATE~0_combout\);

-- Location: LABCELL_X80_Y33_N57
\cir2|fsm|NEXT_STATE.CLEAR_PREV_404\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.CLEAR_PREV_404~combout\ = ( \cir2|fsm|NEXT_STATE~0_combout\ & ( (\cir2|fsm|NEXT_STATE.CLEAR_PREV_404~combout\) # (\cir2|fsm|Selector18~0_combout\) ) ) # ( !\cir2|fsm|NEXT_STATE~0_combout\ & ( (!\cir2|fsm|Selector18~0_combout\ & 
-- \cir2|fsm|NEXT_STATE.CLEAR_PREV_404~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	datad => \cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.CLEAR_PREV_404~combout\);

-- Location: LABCELL_X80_Y33_N45
\cir2|fsm|STATE~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~15_combout\ = ( \cir2|fsm|NEXT_STATE.CLEAR_PREV_404~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.CLEAR_PREV_404~combout\,
	combout => \cir2|fsm|STATE~15_combout\);

-- Location: FF_X80_Y33_N47
\cir2|fsm|STATE.CLEAR_PREV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.CLEAR_PREV~q\);

-- Location: FF_X80_Y33_N2
\cir1|hold3|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|hold3|holdedOut~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|hold3|state_reg~q\);

-- Location: LABCELL_X80_Y33_N30
\cir2|dp|rb|reg_PRE_GURU|q_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_PRE_GURU|q_s~0_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(6) & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6),
	combout => \cir2|dp|rb|reg_PRE_GURU|q_s~0_combout\);

-- Location: FF_X80_Y33_N32
\cir2|dp|rb|reg_PRE_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_PRE_GURU|q_s~0_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_PRE_GURU|q_s\(6));

-- Location: LABCELL_X80_Y33_N0
\cir1|guru|base|control|main|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector0~0_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(6) & ( (!\cir2|dp|rb|reg_GURU|q_s\(6) & (!\cir2|fsm|STATE.CLEAR_PREV~q\ & (!\cir2|fsm|STATE.CLEAR_BEHIND~q\ & !\cir1|hold3|state_reg~q\))) ) ) # ( 
-- !\cir2|dp|rb|reg_PRE_GURU|q_s\(6) & ( (!\cir1|hold3|state_reg~q\ & ((!\cir2|dp|rb|reg_GURU|q_s\(6)) # ((\cir2|fsm|STATE.CLEAR_BEHIND~q\) # (\cir2|fsm|STATE.CLEAR_PREV~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100000000101111110000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6),
	datab => \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datad => \cir1|hold3|ALT_INV_state_reg~q\,
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	combout => \cir1|guru|base|control|main|Selector0~0_combout\);

-- Location: LABCELL_X83_Y33_N39
\cir1|guru|base|control|main|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector0~2_combout\ = ( !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3) & ( \cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( (\cir1|guru|base|control|guru|STATE.LAST~q\) # (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\) ) ) ) # 
-- ( \cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3) & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(3) & ( (!\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & !\cir1|guru|base|control|guru|STATE.LAST~q\) ) ) ) # ( !\cir1|guru|base|data|rb|reg_PRE_GURU|q_s\(3) & ( 
-- !\cir1|guru|base|data|rb|reg_GURU|q_s\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001100000000111111001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	datae => \cir1|guru|base|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	dataf => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \cir1|guru|base|control|main|Selector0~2_combout\);

-- Location: LABCELL_X80_Y34_N0
\cir1|guru|base|control|main|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector0~1_combout\ = ( \cir1|ref|state_reg.conflict1~q\ ) # ( !\cir1|ref|state_reg.conflict1~q\ & ( (\cir1|ref|state_reg.conflict~q\) # (\cir1|hold|state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|hold|ALT_INV_state_reg~q\,
	datad => \cir1|ref|ALT_INV_state_reg.conflict~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.conflict1~q\,
	combout => \cir1|guru|base|control|main|Selector0~1_combout\);

-- Location: MLABCELL_X82_Y31_N57
\cir1|guru|base|control|main|Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector0~3_combout\ = ( !\enable~input_o\ & ( (!\cir1|guru|base|control|main|STATE.CHECK_END~q\ & (\cir1|guru|base|control|main|STATE.CNT_START~q\ & (((!\cir1|guru|base|control|cnt_strat|Equal0~6_combout\))))) # 
-- (\cir1|guru|base|control|main|STATE.CHECK_END~q\ & ((((\cir1|guru|base|control|main|STATE.CNT_START~q\ & !\cir1|guru|base|control|cnt_strat|Equal0~6_combout\)) # (\cir1|guru|base|control|main|Selector0~2_combout\)) # 
-- (\cir1|guru|base|control|main|Selector0~1_combout\))) ) ) # ( \enable~input_o\ & ( (!\cir1|guru|base|control|main|STATE.CHECK_END~q\ & (\cir1|guru|base|control|main|STATE.CNT_START~q\ & (((!\cir1|guru|base|control|cnt_strat|Equal0~6_combout\))))) # 
-- (\cir1|guru|base|control|main|STATE.CHECK_END~q\ & ((((\cir1|guru|base|control|main|STATE.CNT_START~q\ & !\cir1|guru|base|control|cnt_strat|Equal0~6_combout\)) # (\cir1|guru|base|control|main|Selector0~2_combout\)) # 
-- (\cir1|guru|base|control|main|Selector0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011101110111001101110111011100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.CNT_START~q\,
	datac => \cir1|guru|base|control|main|ALT_INV_Selector0~0_combout\,
	datad => \cir1|guru|base|control|main|ALT_INV_Selector0~2_combout\,
	datae => \ALT_INV_enable~input_o\,
	dataf => \cir1|guru|base|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	datag => \cir1|guru|base|control|main|ALT_INV_Selector0~1_combout\,
	combout => \cir1|guru|base|control|main|Selector0~3_combout\);

-- Location: FF_X82_Y31_N59
\cir1|guru|base|control|main|STATE.CHECK_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|main|Selector0~3_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|main|STATE.CHECK_END~q\);

-- Location: LABCELL_X80_Y33_N15
\cir1|guru|base|control|main|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector1~1_combout\ = ( \cir1|hold3|holdedOut~0_combout\ & ( (\cir1|guru|base|control|main|STATE.CHECK_END~q\ & (\cir1|guru|base|control|main|Selector1~0_combout\ & \cir1|guru|base|data|rb|rb_out[3]~5_combout\)) ) ) # ( 
-- !\cir1|hold3|holdedOut~0_combout\ & ( (\cir1|guru|base|control|main|STATE.CHECK_END~q\ & (\cir1|guru|base|control|main|Selector1~0_combout\ & (\cir1|guru|base|data|rb|rb_out[3]~5_combout\ & !\enable~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_Selector1~0_combout\,
	datac => \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\,
	datad => \ALT_INV_enable~input_o\,
	dataf => \cir1|hold3|ALT_INV_holdedOut~0_combout\,
	combout => \cir1|guru|base|control|main|Selector1~1_combout\);

-- Location: LABCELL_X80_Y33_N24
\cir1|guru|base|control|main|STATE~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|STATE~10_combout\ = ( !\res~input_o\ & ( \cir1|hold3|holdedOut~0_combout\ & ( (!\cir1|guru|base|control|main|Selector1~0_combout\ & (\cir1|guru|base|control|main|STATE.CHECK_END~q\ & (\enable~input_o\ & 
-- \cir1|guru|base|data|rb|rb_out[3]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_Selector1~0_combout\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	datac => \ALT_INV_enable~input_o\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\,
	datae => \ALT_INV_res~input_o\,
	dataf => \cir1|hold3|ALT_INV_holdedOut~0_combout\,
	combout => \cir1|guru|base|control|main|STATE~10_combout\);

-- Location: FF_X80_Y33_N25
\cir1|guru|base|control|main|STATE.HIT_POINT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|main|STATE~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|main|STATE.HIT_POINT~q\);

-- Location: LABCELL_X81_Y33_N0
\cir1|guru|base|control|main|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|Selector1~2_combout\ = ( \cir1|guru|base|control|main|STATE.CNT_PREPARE~q\ & ( \cir1|guru|base|control|cnt_prep|Equal0~6_combout\ & ( (((\cir1|guru|base|control|init|STATE.DONE~q\ & 
-- !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\)) # (\cir1|guru|base|control|main|STATE.HIT_POINT~q\)) # (\cir1|guru|base|control|main|Selector1~1_combout\) ) ) ) # ( !\cir1|guru|base|control|main|STATE.CNT_PREPARE~q\ & ( 
-- \cir1|guru|base|control|cnt_prep|Equal0~6_combout\ & ( (((\cir1|guru|base|control|init|STATE.DONE~q\ & !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\)) # (\cir1|guru|base|control|main|STATE.HIT_POINT~q\)) # 
-- (\cir1|guru|base|control|main|Selector1~1_combout\) ) ) ) # ( \cir1|guru|base|control|main|STATE.CNT_PREPARE~q\ & ( !\cir1|guru|base|control|cnt_prep|Equal0~6_combout\ ) ) # ( !\cir1|guru|base|control|main|STATE.CNT_PREPARE~q\ & ( 
-- !\cir1|guru|base|control|cnt_prep|Equal0~6_combout\ & ( (((\cir1|guru|base|control|init|STATE.DONE~q\ & !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\)) # (\cir1|guru|base|control|main|STATE.HIT_POINT~q\)) # 
-- (\cir1|guru|base|control|main|Selector1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111111111111111111101111111011101110111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_Selector1~1_combout\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.HIT_POINT~q\,
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.DONE~q\,
	datad => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datae => \cir1|guru|base|control|main|ALT_INV_STATE.CNT_PREPARE~q\,
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \cir1|guru|base|control|main|Selector1~2_combout\);

-- Location: FF_X81_Y33_N2
\cir1|guru|base|control|main|STATE.CNT_PREPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|main|Selector1~2_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|main|STATE.CNT_PREPARE~q\);

-- Location: MLABCELL_X82_Y32_N39
\cir1|guru|base|control|cnt_prep|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|NEXT_STATE~0_combout\ = ( \cir1|guru|base|control|cnt_prep|Equal0~6_combout\ & ( (\cir1|guru|base|control|main|STATE.CNT_PREPARE~q\ & !\cir1|guru|base|control|cnt_prep|STATE~q\) ) ) # ( 
-- !\cir1|guru|base|control|cnt_prep|Equal0~6_combout\ & ( (\cir1|guru|base|control|cnt_prep|STATE~q\) # (\cir1|guru|base|control|main|STATE.CNT_PREPARE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.CNT_PREPARE~q\,
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_STATE~q\,
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \cir1|guru|base|control|cnt_prep|NEXT_STATE~0_combout\);

-- Location: FF_X82_Y32_N41
\cir1|guru|base|control|cnt_prep|STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|NEXT_STATE~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|STATE~q\);

-- Location: MLABCELL_X82_Y32_N36
\cir1|guru|base|control|cnt_prep|cnt_s[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\ = ( \cir1|guru|base|control|cnt_prep|Equal0~6_combout\ ) # ( !\cir1|guru|base|control|cnt_prep|Equal0~6_combout\ & ( !\cir1|guru|base|control|cnt_prep|STATE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_STATE~q\,
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\);

-- Location: FF_X81_Y32_N38
\cir1|guru|base|control|cnt_prep|cnt_s[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~73_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[12]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N0
\cir1|guru|base|control|cnt_prep|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~9_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \cir1|guru|base|control|cnt_prep|Add0~10\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~9_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~10\);

-- Location: FF_X81_Y32_N2
\cir1|guru|base|control|cnt_prep|cnt_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~9_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N3
\cir1|guru|base|control|cnt_prep|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~53_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~10\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~54\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[1]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~10\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~53_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~54\);

-- Location: FF_X81_Y32_N5
\cir1|guru|base|control|cnt_prep|cnt_s[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~53_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N6
\cir1|guru|base|control|cnt_prep|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~49_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(2) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~54\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~50\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(2) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(2),
	cin => \cir1|guru|base|control|cnt_prep|Add0~54\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~49_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~50\);

-- Location: FF_X81_Y32_N7
\cir1|guru|base|control|cnt_prep|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~49_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(2));

-- Location: LABCELL_X81_Y32_N9
\cir1|guru|base|control|cnt_prep|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~45_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(3) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~50\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~46\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(3) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(3),
	cin => \cir1|guru|base|control|cnt_prep|Add0~50\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~45_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~46\);

-- Location: FF_X81_Y32_N11
\cir1|guru|base|control|cnt_prep|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~45_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(3));

-- Location: LABCELL_X81_Y32_N12
\cir1|guru|base|control|cnt_prep|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~41_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[4]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~46\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~42\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[4]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[4]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~46\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~41_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~42\);

-- Location: FF_X81_Y32_N14
\cir1|guru|base|control|cnt_prep|cnt_s[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~41_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[4]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N15
\cir1|guru|base|control|cnt_prep|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~37_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~42\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~38\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[5]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~42\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~37_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~38\);

-- Location: FF_X81_Y32_N17
\cir1|guru|base|control|cnt_prep|cnt_s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~37_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[5]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N18
\cir1|guru|base|control|cnt_prep|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~33_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~38\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~34\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[6]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~38\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~33_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~34\);

-- Location: FF_X81_Y32_N20
\cir1|guru|base|control|cnt_prep|cnt_s[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~33_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[6]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N21
\cir1|guru|base|control|cnt_prep|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~117_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~34\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~118\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[7]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~34\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~117_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~118\);

-- Location: FF_X81_Y32_N23
\cir1|guru|base|control|cnt_prep|cnt_s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~117_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[7]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N24
\cir1|guru|base|control|cnt_prep|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~105_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~118\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~106\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[8]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~118\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~105_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~106\);

-- Location: FF_X81_Y32_N26
\cir1|guru|base|control|cnt_prep|cnt_s[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~105_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[8]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N27
\cir1|guru|base|control|cnt_prep|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~125_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~106\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~126\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~106\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~125_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~126\);

-- Location: FF_X81_Y32_N29
\cir1|guru|base|control|cnt_prep|cnt_s[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~125_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[9]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N30
\cir1|guru|base|control|cnt_prep|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~61_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(10) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~126\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~62\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(10) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(10),
	cin => \cir1|guru|base|control|cnt_prep|Add0~126\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~61_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~62\);

-- Location: FF_X81_Y32_N31
\cir1|guru|base|control|cnt_prep|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~61_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(10));

-- Location: LABCELL_X81_Y32_N33
\cir1|guru|base|control|cnt_prep|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~65_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~62\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~66\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[11]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~62\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~65_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~66\);

-- Location: FF_X81_Y32_N35
\cir1|guru|base|control|cnt_prep|cnt_s[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~65_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[11]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N36
\cir1|guru|base|control|cnt_prep|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~73_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~66\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~74\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[12]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~66\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~73_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~74\);

-- Location: FF_X81_Y32_N37
\cir1|guru|base|control|cnt_prep|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~73_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(12));

-- Location: FF_X81_Y32_N34
\cir1|guru|base|control|cnt_prep|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~65_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(11));

-- Location: FF_X81_Y32_N41
\cir1|guru|base|control|cnt_prep|cnt_s[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~69_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[13]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N39
\cir1|guru|base|control|cnt_prep|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~69_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~74\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~70\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[13]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~74\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~69_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~70\);

-- Location: FF_X81_Y32_N40
\cir1|guru|base|control|cnt_prep|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~69_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(13));

-- Location: LABCELL_X81_Y32_N42
\cir1|guru|base|control|cnt_prep|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~57_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(14) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~70\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~58\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(14) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(14),
	cin => \cir1|guru|base|control|cnt_prep|Add0~70\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~57_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~58\);

-- Location: FF_X81_Y32_N43
\cir1|guru|base|control|cnt_prep|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~57_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(14));

-- Location: LABCELL_X81_Y32_N45
\cir1|guru|base|control|cnt_prep|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~121_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[15]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~58\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~122\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[15]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[15]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~58\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~121_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~122\);

-- Location: FF_X81_Y32_N47
\cir1|guru|base|control|cnt_prep|cnt_s[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~121_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[15]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N48
\cir1|guru|base|control|cnt_prep|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~113_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~122\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~114\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[16]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~122\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~113_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~114\);

-- Location: FF_X81_Y32_N50
\cir1|guru|base|control|cnt_prep|cnt_s[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~113_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[16]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N51
\cir1|guru|base|control|cnt_prep|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~5_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(17) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~114\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~6\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(17) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(17),
	cin => \cir1|guru|base|control|cnt_prep|Add0~114\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~5_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~6\);

-- Location: FF_X81_Y32_N52
\cir1|guru|base|control|cnt_prep|cnt_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~5_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(17));

-- Location: LABCELL_X81_Y32_N54
\cir1|guru|base|control|cnt_prep|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~13_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~6\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~14\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[18]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~6\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~13_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~14\);

-- Location: FF_X81_Y32_N56
\cir1|guru|base|control|cnt_prep|cnt_s[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~13_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[18]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y32_N57
\cir1|guru|base|control|cnt_prep|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~17_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~14\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~18\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[19]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~14\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~17_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~18\);

-- Location: FF_X81_Y32_N59
\cir1|guru|base|control|cnt_prep|cnt_s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~17_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[19]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y31_N0
\cir1|guru|base|control|cnt_prep|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~21_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(20) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~18\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~22\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(20) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(20),
	cin => \cir1|guru|base|control|cnt_prep|Add0~18\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~21_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~22\);

-- Location: FF_X81_Y31_N1
\cir1|guru|base|control|cnt_prep|cnt_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~21_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(20));

-- Location: LABCELL_X81_Y31_N3
\cir1|guru|base|control|cnt_prep|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~25_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(21) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~22\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~26\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(21) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(21),
	cin => \cir1|guru|base|control|cnt_prep|Add0~22\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~25_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~26\);

-- Location: FF_X81_Y31_N5
\cir1|guru|base|control|cnt_prep|cnt_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~25_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(21));

-- Location: LABCELL_X81_Y31_N6
\cir1|guru|base|control|cnt_prep|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~29_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(22) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~26\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~30\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(22) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(22),
	cin => \cir1|guru|base|control|cnt_prep|Add0~26\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~29_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~30\);

-- Location: FF_X81_Y31_N7
\cir1|guru|base|control|cnt_prep|cnt_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~29_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(22));

-- Location: LABCELL_X81_Y31_N9
\cir1|guru|base|control|cnt_prep|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~77_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(23) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~30\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~78\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(23) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(23),
	cin => \cir1|guru|base|control|cnt_prep|Add0~30\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~77_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~78\);

-- Location: FF_X81_Y31_N11
\cir1|guru|base|control|cnt_prep|cnt_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~77_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(23));

-- Location: MLABCELL_X82_Y32_N48
\cir1|guru|base|control|cnt_prep|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Equal0~3_combout\ = ( !\cir1|guru|base|control|cnt_prep|cnt_s\(23) & ( !\cir1|guru|base|control|cnt_prep|cnt_s\(10) & ( (!\cir1|guru|base|control|cnt_prep|cnt_s\(12) & (!\cir1|guru|base|control|cnt_prep|cnt_s\(11) & 
-- (!\cir1|guru|base|control|cnt_prep|cnt_s\(13) & !\cir1|guru|base|control|cnt_prep|cnt_s\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(12),
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(11),
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(13),
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(14),
	datae => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(23),
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(10),
	combout => \cir1|guru|base|control|cnt_prep|Equal0~3_combout\);

-- Location: FF_X81_Y32_N16
\cir1|guru|base|control|cnt_prep|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~37_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(5));

-- Location: FF_X81_Y32_N19
\cir1|guru|base|control|cnt_prep|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~33_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(6));

-- Location: FF_X81_Y32_N13
\cir1|guru|base|control|cnt_prep|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~41_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(4));

-- Location: FF_X81_Y32_N4
\cir1|guru|base|control|cnt_prep|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~53_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(1));

-- Location: MLABCELL_X82_Y32_N6
\cir1|guru|base|control|cnt_prep|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Equal0~2_combout\ = ( \cir1|guru|base|control|cnt_prep|cnt_s\(4) & ( !\cir1|guru|base|control|cnt_prep|cnt_s\(1) & ( (!\cir1|guru|base|control|cnt_prep|cnt_s\(3) & (\cir1|guru|base|control|cnt_prep|cnt_s\(5) & 
-- (\cir1|guru|base|control|cnt_prep|cnt_s\(2) & \cir1|guru|base|control|cnt_prep|cnt_s\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(3),
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(5),
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(2),
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(6),
	datae => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(4),
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(1),
	combout => \cir1|guru|base|control|cnt_prep|Equal0~2_combout\);

-- Location: LABCELL_X81_Y31_N12
\cir1|guru|base|control|cnt_prep|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~1_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(24) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~78\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~2\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(24) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(24),
	cin => \cir1|guru|base|control|cnt_prep|Add0~78\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~1_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~2\);

-- Location: FF_X81_Y31_N13
\cir1|guru|base|control|cnt_prep|cnt_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~1_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(24));

-- Location: LABCELL_X81_Y31_N15
\cir1|guru|base|control|cnt_prep|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~85_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(25) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~2\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~86\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(25) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(25),
	cin => \cir1|guru|base|control|cnt_prep|Add0~2\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~85_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~86\);

-- Location: FF_X81_Y31_N17
\cir1|guru|base|control|cnt_prep|cnt_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~85_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(25));

-- Location: LABCELL_X81_Y31_N18
\cir1|guru|base|control|cnt_prep|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~89_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(26) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~86\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~90\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(26) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(26),
	cin => \cir1|guru|base|control|cnt_prep|Add0~86\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~89_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~90\);

-- Location: FF_X81_Y31_N20
\cir1|guru|base|control|cnt_prep|cnt_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~89_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(26));

-- Location: LABCELL_X81_Y31_N21
\cir1|guru|base|control|cnt_prep|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~93_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(27) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~90\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~94\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(27) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(27),
	cin => \cir1|guru|base|control|cnt_prep|Add0~90\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~93_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~94\);

-- Location: FF_X81_Y31_N23
\cir1|guru|base|control|cnt_prep|cnt_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~93_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(27));

-- Location: LABCELL_X81_Y31_N24
\cir1|guru|base|control|cnt_prep|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~97_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s[28]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~94\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~98\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s[28]~DUPLICATE_q\ ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s[28]~DUPLICATE_q\,
	cin => \cir1|guru|base|control|cnt_prep|Add0~94\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~97_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~98\);

-- Location: FF_X81_Y31_N26
\cir1|guru|base|control|cnt_prep|cnt_s[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~97_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s[28]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y31_N27
\cir1|guru|base|control|cnt_prep|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~101_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(29) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~98\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~102\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(29) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(29),
	cin => \cir1|guru|base|control|cnt_prep|Add0~98\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~101_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~102\);

-- Location: FF_X81_Y31_N29
\cir1|guru|base|control|cnt_prep|cnt_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~101_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(29));

-- Location: FF_X81_Y31_N25
\cir1|guru|base|control|cnt_prep|cnt_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~97_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(28));

-- Location: LABCELL_X81_Y31_N30
\cir1|guru|base|control|cnt_prep|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~109_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(30) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~102\ ))
-- \cir1|guru|base|control|cnt_prep|Add0~110\ = CARRY(( \cir1|guru|base|control|cnt_prep|cnt_s\(30) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(30),
	cin => \cir1|guru|base|control|cnt_prep|Add0~102\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~109_sumout\,
	cout => \cir1|guru|base|control|cnt_prep|Add0~110\);

-- Location: FF_X81_Y31_N31
\cir1|guru|base|control|cnt_prep|cnt_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~109_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(30));

-- Location: LABCELL_X81_Y31_N33
\cir1|guru|base|control|cnt_prep|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Add0~81_sumout\ = SUM(( \cir1|guru|base|control|cnt_prep|cnt_s\(31) ) + ( GND ) + ( \cir1|guru|base|control|cnt_prep|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(31),
	cin => \cir1|guru|base|control|cnt_prep|Add0~110\,
	sumout => \cir1|guru|base|control|cnt_prep|Add0~81_sumout\);

-- Location: FF_X81_Y31_N35
\cir1|guru|base|control|cnt_prep|cnt_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~81_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(31));

-- Location: LABCELL_X81_Y31_N36
\cir1|guru|base|control|cnt_prep|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Equal0~4_combout\ = ( !\cir1|guru|base|control|cnt_prep|cnt_s\(27) & ( !\cir1|guru|base|control|cnt_prep|cnt_s\(31) & ( (!\cir1|guru|base|control|cnt_prep|cnt_s\(29) & (!\cir1|guru|base|control|cnt_prep|cnt_s\(25) & 
-- (!\cir1|guru|base|control|cnt_prep|cnt_s\(26) & !\cir1|guru|base|control|cnt_prep|cnt_s\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(29),
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(25),
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(26),
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(28),
	datae => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(27),
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(31),
	combout => \cir1|guru|base|control|cnt_prep|Equal0~4_combout\);

-- Location: FF_X81_Y32_N55
\cir1|guru|base|control|cnt_prep|cnt_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~13_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(18));

-- Location: FF_X81_Y32_N1
\cir1|guru|base|control|cnt_prep|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~9_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(0));

-- Location: FF_X81_Y32_N58
\cir1|guru|base|control|cnt_prep|cnt_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~17_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(19));

-- Location: MLABCELL_X82_Y32_N12
\cir1|guru|base|control|cnt_prep|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Equal0~1_combout\ = ( !\cir1|guru|base|control|cnt_prep|cnt_s\(21) & ( !\cir1|guru|base|control|cnt_prep|cnt_s\(22) & ( (!\cir1|guru|base|control|cnt_prep|cnt_s\(18) & (!\cir1|guru|base|control|cnt_prep|cnt_s\(0) & 
-- (!\cir1|guru|base|control|cnt_prep|cnt_s\(20) & !\cir1|guru|base|control|cnt_prep|cnt_s\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(18),
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(0),
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(20),
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(19),
	datae => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(21),
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(22),
	combout => \cir1|guru|base|control|cnt_prep|Equal0~1_combout\);

-- Location: MLABCELL_X82_Y32_N54
\cir1|guru|base|control|cnt_prep|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Equal0~0_combout\ = ( !\cir1|guru|base|control|cnt_prep|cnt_s\(24) & ( !\cir1|guru|base|control|cnt_prep|cnt_s\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(17),
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(24),
	combout => \cir1|guru|base|control|cnt_prep|Equal0~0_combout\);

-- Location: FF_X81_Y32_N46
\cir1|guru|base|control|cnt_prep|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~121_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(15));

-- Location: FF_X81_Y32_N49
\cir1|guru|base|control|cnt_prep|cnt_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~113_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(16));

-- Location: FF_X81_Y32_N28
\cir1|guru|base|control|cnt_prep|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~125_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(9));

-- Location: FF_X81_Y32_N25
\cir1|guru|base|control|cnt_prep|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~105_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(8));

-- Location: FF_X81_Y32_N22
\cir1|guru|base|control|cnt_prep|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|cnt_prep|Add0~117_sumout\,
	sclr => \cir1|guru|base|control|cnt_prep|cnt_s[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|cnt_prep|cnt_s\(7));

-- Location: MLABCELL_X82_Y32_N18
\cir1|guru|base|control|cnt_prep|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Equal0~5_combout\ = ( \cir1|guru|base|control|cnt_prep|cnt_s\(7) & ( !\cir1|guru|base|control|cnt_prep|cnt_s\(30) & ( (!\cir1|guru|base|control|cnt_prep|cnt_s\(15) & (!\cir1|guru|base|control|cnt_prep|cnt_s\(16) & 
-- (!\cir1|guru|base|control|cnt_prep|cnt_s\(9) & \cir1|guru|base|control|cnt_prep|cnt_s\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(15),
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(16),
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(9),
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(8),
	datae => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(7),
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_cnt_s\(30),
	combout => \cir1|guru|base|control|cnt_prep|Equal0~5_combout\);

-- Location: MLABCELL_X82_Y32_N24
\cir1|guru|base|control|cnt_prep|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|cnt_prep|Equal0~6_combout\ = ( \cir1|guru|base|control|cnt_prep|Equal0~0_combout\ & ( \cir1|guru|base|control|cnt_prep|Equal0~5_combout\ & ( (\cir1|guru|base|control|cnt_prep|Equal0~3_combout\ & 
-- (\cir1|guru|base|control|cnt_prep|Equal0~2_combout\ & (\cir1|guru|base|control|cnt_prep|Equal0~4_combout\ & \cir1|guru|base|control|cnt_prep|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~3_combout\,
	datab => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~2_combout\,
	datac => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~4_combout\,
	datad => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~1_combout\,
	datae => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~0_combout\,
	dataf => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~5_combout\,
	combout => \cir1|guru|base|control|cnt_prep|Equal0~6_combout\);

-- Location: LABCELL_X80_Y34_N54
\cir1|guru|base|control|main|STATE~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|main|STATE~8_combout\ = ( !\res~input_o\ & ( (\cir1|guru|base|control|cnt_prep|Equal0~6_combout\ & \cir1|guru|base|control|main|STATE.CNT_PREPARE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.CNT_PREPARE~q\,
	dataf => \ALT_INV_res~input_o\,
	combout => \cir1|guru|base|control|main|STATE~8_combout\);

-- Location: FF_X80_Y34_N56
\cir1|guru|base|control|main|STATE.STEP_ACTIVATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|main|STATE~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\);

-- Location: LABCELL_X85_Y34_N54
\cir1|guru|base|control|guru|STATE~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~17_combout\ = ( !\res~input_o\ & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( (\cir1|guru|base|control|guru|STATE.START_WALKING~q\) # (\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\,
	datae => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	combout => \cir1|guru|base|control|guru|STATE~17_combout\);

-- Location: FF_X82_Y35_N17
\cir1|guru|base|control|guru|STATE.START_WALKING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|control|guru|STATE~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.START_WALKING~q\);

-- Location: MLABCELL_X82_Y35_N54
\cir1|guru|base|control|guru|STATE~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|guru|STATE~18_combout\ = ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir1|guru|base|control|guru|STATE.START_WALKING~q\ & !\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\,
	datad => \ALT_INV_res~input_o\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir1|guru|base|control|guru|STATE~18_combout\);

-- Location: FF_X82_Y35_N56
\cir1|guru|base|control|guru|STATE.RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|guru|base|control|guru|STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|control|guru|STATE.RAND~q\);

-- Location: MLABCELL_X82_Y35_N12
\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ = ( \cir1|guru|base|control|guru|STATE.WRITE_RAND~q\ & ( !\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\ ) ) # ( !\cir1|guru|base|control|guru|STATE.WRITE_RAND~q\ & ( 
-- !\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~0_combout\ & ( ((!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # ((!\cir1|guru|base|control|guru|STATE.START_WALKING~q\) # (\cir1|guru|base|control|guru|STATE.WAIT_COUNT_GURU~q\))) # 
-- (\cir1|guru|base|control|guru|STATE.RAND~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|guru|ALT_INV_STATE.RAND~q\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	dataf => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~0_combout\,
	combout => \cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\);

-- Location: MLABCELL_X82_Y34_N42
\cir1|guru|base|data|n_g|ng_2_RB[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|data|n_g|ng_2_RB[5]~7_combout\ = ( \cir1|guru|base|data|rb|rb_out[5]~7_combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & ((!\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\) # 
-- ((!\cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\) # (!\cir1|guru|base|data|rb|rb_out[4]~6_combout\)))) ) ) # ( !\cir1|guru|base|data|rb|rb_out[5]~7_combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.ng_cte_incr~1_combout\ & 
-- (\cir1|guru|base|control|ctrl_2_dp.alu_ctrl~0_combout\ & (\cir1|guru|base|data|alu_1|add|adder_4|aux_and_3~combout\ & \cir1|guru|base|data|rb|rb_out[4]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\,
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datac => \cir1|guru|base|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[4]~6_combout\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[5]~7_combout\,
	combout => \cir1|guru|base|data|n_g|ng_2_RB[5]~7_combout\);

-- Location: FF_X82_Y34_N26
\cir1|guru|base|data|rb|reg_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cir1|guru|base|data|n_g|ng_2_RB[5]~7_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \cir1|guru|base|data|rb|reg_PRE_GURU|q_s[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|guru|base|data|rb|reg_GURU|q_s\(5));

-- Location: MLABCELL_X84_Y34_N42
\cir1|ref|Equal2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Equal2~7_combout\ = ( \cir1|ref|state_reg.detect~q\ & ( \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(5) ) ) ) # ( !\cir1|ref|state_reg.detect~q\ & ( 
-- \cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(5) $ (((!\cir2|dp|rb|reg_PRE_GURU|q_s\(5) & !\cir1|ref|state_reg.detect1~q\))) ) ) ) # ( \cir1|ref|state_reg.detect~q\ & ( 
-- !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(5) ) ) ) # ( !\cir1|ref|state_reg.detect~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( !\cir1|guru|base|data|rb|reg_GURU|q_s\(5) $ 
-- (((!\cir1|hold2|state_reg~q\ & (!\cir2|dp|rb|reg_PRE_GURU|q_s\(5) & !\cir1|ref|state_reg.detect1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010101010101010101010101001011010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|reg_GURU|ALT_INV_q_s\(5),
	datab => \cir1|hold2|ALT_INV_state_reg~q\,
	datac => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	datad => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datae => \cir1|ref|ALT_INV_state_reg.detect~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir1|ref|Equal2~7_combout\);

-- Location: MLABCELL_X87_Y34_N42
\cir1|ref|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector17~0_combout\ = ( \cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|state_reg.detect1~q\ & (!\cir1|ref|state_reg.wait50b~q\ & !\cir1|ref|state_reg.detect~q\)) ) ) # ( !\cir1|ref|LessThan0~5_combout\ & ( (!\cir1|ref|state_reg.detect1~q\ & 
-- (!\cir1|ref|state_reg.detect~q\ & ((!\cir1|ref|state_reg.wait50b~q\) # (\cir1|ref|mainCnt[31]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000000000110001000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \cir1|ref|ALT_INV_state_reg.detect1~q\,
	datac => \cir1|ref|ALT_INV_state_reg.wait50b~q\,
	datad => \cir1|ref|ALT_INV_state_reg.detect~q\,
	dataf => \cir1|ref|ALT_INV_LessThan0~5_combout\,
	combout => \cir1|ref|Selector17~0_combout\);

-- Location: LABCELL_X81_Y34_N12
\cir1|ref|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|ref|Selector17~1_combout\ = ( \cir1|ref|Selector17~0_combout\ & ( \cir1|ref|Equal2~6_combout\ & ( (\cir1|ref|state_reg.checkTop~q\ & !\cir1|ref|Equal3~2_combout\) ) ) ) # ( !\cir1|ref|Selector17~0_combout\ & ( \cir1|ref|Equal2~6_combout\ ) ) # ( 
-- \cir1|ref|Selector17~0_combout\ & ( !\cir1|ref|Equal2~6_combout\ & ( (\cir1|ref|state_reg.checkTop~q\ & (!\cir1|ref|Equal3~2_combout\ & ((!\cir1|ref|Equal2~12_combout\) # (\cir1|ref|Equal2~7_combout\)))) ) ) ) # ( !\cir1|ref|Selector17~0_combout\ & ( 
-- !\cir1|ref|Equal2~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011010000000011111111111111110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|ref|ALT_INV_Equal2~7_combout\,
	datab => \cir1|ref|ALT_INV_Equal2~12_combout\,
	datac => \cir1|ref|ALT_INV_state_reg.checkTop~q\,
	datad => \cir1|ref|ALT_INV_Equal3~2_combout\,
	datae => \cir1|ref|ALT_INV_Selector17~0_combout\,
	dataf => \cir1|ref|ALT_INV_Equal2~6_combout\,
	combout => \cir1|ref|Selector17~1_combout\);

-- Location: FF_X81_Y34_N14
\cir1|ref|state_reg.unm_go_discB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir1|ref|Selector17~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir1|ref|state_reg.unm_go_discB~q\);

-- Location: LABCELL_X81_Y33_N51
\cir2|fsm|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector18~0_combout\ = ( \cir1|ref|state_reg.unm_godisc_BL~q\ ) # ( !\cir1|ref|state_reg.unm_godisc_BL~q\ & ( (!\cir2|dp|rb|reg_GURU|q_s\(6)) # ((!\cir2|fsm|STATE.CHECK_LAST~q\) # (\cir1|ref|state_reg.unm_go_discB~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6),
	datac => \cir1|ref|ALT_INV_state_reg.unm_go_discB~q\,
	datad => \cir2|fsm|ALT_INV_STATE.CHECK_LAST~q\,
	dataf => \cir1|ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	combout => \cir2|fsm|Selector18~0_combout\);

-- Location: LABCELL_X81_Y33_N54
\cir2|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|Selector17~0_combout\ = ( \cir2|fsm|STATE.IDLE~q\ & ( ((!\cir1|hold2|holdedOut~combout\ & \cir2|fsm|STATE.CHECK_BEHIND~q\)) # (\cir2|fsm|STATE.CLEAR_BEHIND~q\) ) ) # ( !\cir2|fsm|STATE.IDLE~q\ & ( 
-- (!\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\) # (((!\cir1|hold2|holdedOut~combout\ & \cir2|fsm|STATE.CHECK_BEHIND~q\)) # (\cir2|fsm|STATE.CLEAR_BEHIND~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011111111111100101111111100100010111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|hold2|ALT_INV_holdedOut~combout\,
	datab => \cir2|fsm|ALT_INV_STATE.CHECK_BEHIND~q\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datad => \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	dataf => \cir2|fsm|ALT_INV_STATE.IDLE~q\,
	combout => \cir2|fsm|Selector17~0_combout\);

-- Location: LABCELL_X81_Y33_N57
\cir2|fsm|NEXT_STATE.IDLE_613\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|NEXT_STATE.IDLE_613~combout\ = ( \cir2|fsm|Selector17~0_combout\ & ( (\cir2|fsm|NEXT_STATE.IDLE_613~combout\) # (\cir2|fsm|Selector18~0_combout\) ) ) # ( !\cir2|fsm|Selector17~0_combout\ & ( (!\cir2|fsm|Selector18~0_combout\ & 
-- \cir2|fsm|NEXT_STATE.IDLE_613~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_Selector18~0_combout\,
	datad => \cir2|fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\,
	dataf => \cir2|fsm|ALT_INV_Selector17~0_combout\,
	combout => \cir2|fsm|NEXT_STATE.IDLE_613~combout\);

-- Location: LABCELL_X81_Y33_N9
\cir2|fsm|STATE~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|STATE~19_combout\ = ( !\cir2|fsm|NEXT_STATE.IDLE_613~combout\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \cir2|fsm|ALT_INV_NEXT_STATE.IDLE_613~combout\,
	combout => \cir2|fsm|STATE~19_combout\);

-- Location: FF_X81_Y33_N11
\cir2|fsm|STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|fsm|STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|fsm|STATE.IDLE~q\);

-- Location: LABCELL_X79_Y33_N36
\cir2|fsm|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|WideOr6~combout\ = ( !\cir2|fsm|STATE.WAIT_COUNT_DISC~q\ & ( (\cir2|fsm|STATE.IDLE~q\ & (!\cir2|fsm|STATE.WRITE_RAND~q\ & !\cir2|fsm|STATE.RAND~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_STATE.IDLE~q\,
	datab => \cir2|fsm|ALT_INV_STATE.WRITE_RAND~q\,
	datac => \cir2|fsm|ALT_INV_STATE.RAND~q\,
	datae => \cir2|fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	combout => \cir2|fsm|WideOr6~combout\);

-- Location: LABCELL_X80_Y33_N39
\cir2|dp|rb|rb_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|rb_out~0_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(6) & ( ((!\cir2|fsm|STATE.CLEAR_BEHIND~q\ & !\cir2|fsm|STATE.CLEAR_PREV~q\)) # (\cir2|dp|rb|reg_PRE_GURU|q_s\(6)) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(6) & ( (\cir2|dp|rb|reg_PRE_GURU|q_s\(6) & 
-- ((\cir2|fsm|STATE.CLEAR_PREV~q\) # (\cir2|fsm|STATE.CLEAR_BEHIND~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datac => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	datad => \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6),
	combout => \cir2|dp|rb|rb_out~0_combout\);

-- Location: LABCELL_X80_Y34_N48
\cir2|dp|rb|reg_GURU|q_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|reg_GURU|q_s~1_combout\ = ( \cir2|dp|rb|rb_out~0_combout\ & ( (\cir2|fsm|WideOr6~combout\ & (!\res~input_o\ & ((!\cir2|dp|alu_1|add|adder_5|c_out~0_combout\) # (\cir2|dp|rb|rb_out~1_combout\)))) ) ) # ( !\cir2|dp|rb|rb_out~0_combout\ & ( 
-- (\cir2|fsm|WideOr6~combout\ & (!\cir2|dp|rb|rb_out~1_combout\ & (!\res~input_o\ & \cir2|dp|alu_1|add|adder_5|c_out~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000001010000000100000101000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_WideOr6~combout\,
	datab => \cir2|dp|rb|ALT_INV_rb_out~1_combout\,
	datac => \ALT_INV_res~input_o\,
	datad => \cir2|dp|alu_1|add|adder_5|ALT_INV_c_out~0_combout\,
	dataf => \cir2|dp|rb|ALT_INV_rb_out~0_combout\,
	combout => \cir2|dp|rb|reg_GURU|q_s~1_combout\);

-- Location: FF_X80_Y34_N50
\cir2|dp|rb|reg_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cir2|dp|rb|reg_GURU|q_s~1_combout\,
	ena => \cir2|dp|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cir2|dp|rb|reg_GURU|q_s\(6));

-- Location: LABCELL_X80_Y33_N51
\cir1|hold3|holdedOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|hold3|holdedOut~0_combout\ = ( \cir1|hold3|state_reg~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ ) ) # ( !\cir1|hold3|state_reg~q\ & ( !\cir1|guru|base|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\cir2|fsm|STATE.CLEAR_PREV~q\ & 
-- ((!\cir2|fsm|STATE.CLEAR_BEHIND~q\ & (\cir2|dp|rb|reg_GURU|q_s\(6))) # (\cir2|fsm|STATE.CLEAR_BEHIND~q\ & ((\cir2|dp|rb|reg_PRE_GURU|q_s\(6)))))) # (\cir2|fsm|STATE.CLEAR_PREV~q\ & (((\cir2|dp|rb|reg_PRE_GURU|q_s\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100001111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(6),
	datab => \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	datad => \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	datae => \cir1|hold3|ALT_INV_state_reg~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \cir1|hold3|holdedOut~0_combout\);

-- Location: LABCELL_X81_Y35_N48
\cir1|guru|print_rdy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|print_rdy~0_combout\ = ( \cir1|guru|step|cnt_disc_rdy~0_combout\ & ( \cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( ((!\cir1|hold3|holdedOut~0_combout\ & \enable~input_o\)) # (\cir1|guru|step|cnt_v1_s~q\) ) ) ) # ( 
-- !\cir1|guru|step|cnt_disc_rdy~0_combout\ & ( \cir1|guru|base|control|main|STATE.CHECK_END~q\ & ( (\cir1|guru|step|cnt_v1_s~q\ & (((!\enable~input_o\) # (!\cir1|guru|button|speed_sync_s.ONE_X~q\)) # (\cir1|hold3|holdedOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111010010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|hold3|ALT_INV_holdedOut~0_combout\,
	datab => \ALT_INV_enable~input_o\,
	datac => \cir1|guru|button|ALT_INV_speed_sync_s.ONE_X~q\,
	datad => \cir1|guru|step|ALT_INV_cnt_v1_s~q\,
	datae => \cir1|guru|step|ALT_INV_cnt_disc_rdy~0_combout\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \cir1|guru|print_rdy~0_combout\);

-- Location: LABCELL_X81_Y35_N24
\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ = ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\cir1|guru|base|control|init|STATE.DONE~q\ & \cir1|guru|base|control|init|STATE.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|init|ALT_INV_STATE.DONE~q\,
	datac => \cir1|guru|base|control|init|ALT_INV_STATE.IDLE~q\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\);

-- Location: LABCELL_X81_Y35_N15
\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~0_combout\ = ( \cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ & ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ ) ) # ( !\cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ & ( 
-- \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( (((\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\) # (\cir1|guru|base|control|guru|STATE.LAST~q\)) # (\cir1|guru|base|control|guru|STATE.WRITE_RAND~q\)) # 
-- (\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\) ) ) ) # ( \cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ & ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ ) ) ) 
-- # ( !\cir1|guru|base|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ & ( !\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\,
	dataf => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~0_combout\);

-- Location: MLABCELL_X82_Y33_N36
\cir2|fsm|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|WideOr9~combout\ = ( !\cir2|fsm|STATE.CHECK_SAME_ADDR~q\ & ( \cir2|fsm|STATE.IDLE~q\ & ( (!\cir2|fsm|STATE.RAND~q\ & (!\cir2|fsm|STATE.INCR~q\ & (!\cir2|fsm|STATE.WAIT_COUNT_DISC~q\ & !\cir2|fsm|STATE.CHECK_LAST~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|fsm|ALT_INV_STATE.RAND~q\,
	datab => \cir2|fsm|ALT_INV_STATE.INCR~q\,
	datac => \cir2|fsm|ALT_INV_STATE.WAIT_COUNT_DISC~q\,
	datad => \cir2|fsm|ALT_INV_STATE.CHECK_LAST~q\,
	datae => \cir2|fsm|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	dataf => \cir2|fsm|ALT_INV_STATE.IDLE~q\,
	combout => \cir2|fsm|WideOr9~combout\);

-- Location: LABCELL_X79_Y35_N3
\cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~0_combout\ = ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( \cir1|guru|base|control|guru|STATE.START_WALKING~q\ ) ) # ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- \cir1|guru|base|control|guru|STATE.START_WALKING~q\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # (\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\) ) ) ) # ( \cir1|guru|base|control|guru|STATE.LAST~q\ & ( 
-- !\cir1|guru|base|control|guru|STATE.START_WALKING~q\ ) ) # ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( !\cir1|guru|base|control|guru|STATE.START_WALKING~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\,
	combout => \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~0_combout\);

-- Location: LABCELL_X81_Y35_N0
\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ = ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( !\cir1|guru|base|control|guru|STATE.LAST~q\ & ( (!\cir1|guru|base|control|guru|STATE.WRITE_DUO~q\ & 
-- (!\cir1|guru|base|control|guru|STATE.WRITE_RAND~q\ & !\cir1|guru|base|control|guru|STATE.WRITE_GURU~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datac => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_GURU~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	combout => \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\);

-- Location: IOIBUF_X89_Y35_N95
\mem_a_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(0),
	o => \mem_a_addr[0]~input_o\);

-- Location: LABCELL_X81_Y35_N57
\cir1|guru|mem_a_addr_s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|mem_a_addr_s[0]~0_combout\ = ( \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( \cir1|guru|base|data|rb|rb_out[0]~2_combout\ ) ) # ( !\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( 
-- (!\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ & ((!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\mem_a_addr[0]~input_o\)) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & 
-- ((\cir1|guru|base|data|rb|rb_out[0]~2_combout\))))) # (\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ & (\mem_a_addr[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100111011001100010011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	datab => \ALT_INV_mem_a_addr[0]~input_o\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \cir1|guru|base|data|rb|ALT_INV_rb_out[0]~2_combout\,
	dataf => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	combout => \cir1|guru|mem_a_addr_s[0]~0_combout\);

-- Location: IOIBUF_X78_Y81_N1
\mem_a_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(1),
	o => \mem_a_addr[1]~input_o\);

-- Location: MLABCELL_X82_Y34_N33
\cir1|guru|mem_a_addr_s[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|mem_a_addr_s[1]~1_combout\ = ( \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ((\mem_a_addr[1]~input_o\))) # (\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & 
-- (\cir1|guru|base|data|rb|rb_out[1]~3_combout\)) ) ) # ( !\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((!\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & 
-- ((\mem_a_addr[1]~input_o\))) # (\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & (\cir1|guru|base|data|rb|rb_out[1]~3_combout\)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|rb_out[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010101010101001101010101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datab => \ALT_INV_mem_a_addr[1]~input_o\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	dataf => \cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	combout => \cir1|guru|mem_a_addr_s[1]~1_combout\);

-- Location: IOIBUF_X89_Y38_N55
\mem_a_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(2),
	o => \mem_a_addr[2]~input_o\);

-- Location: LABCELL_X81_Y35_N18
\cir1|guru|mem_a_addr_s[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|mem_a_addr_s[2]~2_combout\ = ( \mem_a_addr[2]~input_o\ & ( ((!\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ((!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # (\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\)))) # 
-- (\cir1|guru|base|data|rb|rb_out[2]~4_combout\) ) ) # ( !\mem_a_addr[2]~input_o\ & ( (\cir1|guru|base|data|rb|rb_out[2]~4_combout\ & (((\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & !\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\)) # 
-- (\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000101000101010000010111010101111101011101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	datad => \cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	dataf => \ALT_INV_mem_a_addr[2]~input_o\,
	combout => \cir1|guru|mem_a_addr_s[2]~2_combout\);

-- Location: IOIBUF_X89_Y36_N4
\mem_a_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(3),
	o => \mem_a_addr[3]~input_o\);

-- Location: LABCELL_X77_Y34_N15
\cir1|guru|mem_a_addr_s[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|mem_a_addr_s[3]~3_combout\ = ( \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( \cir1|guru|base|data|rb|rb_out[3]~5_combout\ ) ) # ( !\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( 
-- \cir1|guru|base|data|rb|rb_out[3]~5_combout\ & ( ((!\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ & \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\)) # (\mem_a_addr[3]~input_o\) ) ) ) # ( 
-- !\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( !\cir1|guru|base|data|rb|rb_out[3]~5_combout\ & ( (\mem_a_addr[3]~input_o\ & ((!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # 
-- (\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000000000000000000001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	datac => \ALT_INV_mem_a_addr[3]~input_o\,
	datad => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datae => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[3]~5_combout\,
	combout => \cir1|guru|mem_a_addr_s[3]~3_combout\);

-- Location: IOIBUF_X89_Y36_N38
\mem_a_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(4),
	o => \mem_a_addr[4]~input_o\);

-- Location: LABCELL_X80_Y34_N3
\cir1|guru|mem_a_addr_s[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|mem_a_addr_s[4]~4_combout\ = ( \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ((\mem_a_addr[4]~input_o\))) # (\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & 
-- (\cir1|guru|base|data|rb|rb_out[4]~6_combout\)) ) ) # ( !\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ((!\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & 
-- ((\mem_a_addr[4]~input_o\))) # (\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & (\cir1|guru|base|data|rb|rb_out[4]~6_combout\)))) # (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & (\cir1|guru|base|data|rb|rb_out[4]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100110011000110110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datab => \cir1|guru|base|data|rb|ALT_INV_rb_out[4]~6_combout\,
	datac => \ALT_INV_mem_a_addr[4]~input_o\,
	datad => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	dataf => \cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	combout => \cir1|guru|mem_a_addr_s[4]~4_combout\);

-- Location: IOIBUF_X89_Y37_N21
\mem_a_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(5),
	o => \mem_a_addr[5]~input_o\);

-- Location: MLABCELL_X82_Y34_N36
\cir1|guru|mem_a_addr_s[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|mem_a_addr_s[5]~5_combout\ = ( \cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( \cir1|guru|base|data|rb|rb_out[5]~7_combout\ ) ) # ( !\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( 
-- \cir1|guru|base|data|rb|rb_out[5]~7_combout\ & ( ((\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & !\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\)) # (\mem_a_addr[5]~input_o\) ) ) ) # ( 
-- !\cir1|guru|base|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( !\cir1|guru|base|data|rb|rb_out[5]~7_combout\ & ( (\mem_a_addr[5]~input_o\ & ((!\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\) # 
-- (\cir1|guru|base|control|ctrl_2_mem.mem_wr_en~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111000000000000000000111111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \ALT_INV_mem_a_addr[5]~input_o\,
	datad => \cir1|guru|base|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	datae => \cir1|guru|base|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	dataf => \cir1|guru|base|data|rb|ALT_INV_rb_out[5]~7_combout\,
	combout => \cir1|guru|mem_a_addr_s[5]~5_combout\);

-- Location: LABCELL_X77_Y34_N42
\cir2|fsm|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|WideOr7~0_combout\ = ( \cir2|fsm|STATE.IDLE~q\ & ( !\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ ) ) # ( !\cir2|fsm|STATE.IDLE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	dataf => \cir2|fsm|ALT_INV_STATE.IDLE~q\,
	combout => \cir2|fsm|WideOr7~0_combout\);

-- Location: LABCELL_X77_Y34_N24
\cir2|dp|rb|rb_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|rb_out~2_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(0) & ( \cir2|fsm|STATE.CLEAR_BEHIND~q\ ) ) # ( \cir2|dp|rb|reg_PRE_GURU|q_s\(0) & ( !\cir2|fsm|STATE.CLEAR_BEHIND~q\ & ( (\cir2|fsm|STATE.CLEAR_PREV~q\) # (\cir2|dp|rb|reg_GURU|q_s\(0)) ) ) ) 
-- # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(0) & ( !\cir2|fsm|STATE.CLEAR_BEHIND~q\ & ( (\cir2|dp|rb|reg_GURU|q_s\(0) & !\cir2|fsm|STATE.CLEAR_PREV~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(0),
	datac => \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	dataf => \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	combout => \cir2|dp|rb|rb_out~2_combout\);

-- Location: LABCELL_X77_Y34_N57
\cir2|dp|rb|rb_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|rb_out~3_combout\ = ( \cir2|dp|rb|reg_PRE_GURU|q_s\(1) & ( \cir2|fsm|STATE.CLEAR_BEHIND~q\ ) ) # ( \cir2|dp|rb|reg_PRE_GURU|q_s\(1) & ( !\cir2|fsm|STATE.CLEAR_BEHIND~q\ & ( (\cir2|fsm|STATE.CLEAR_PREV~q\) # (\cir2|dp|rb|reg_GURU|q_s\(1)) ) ) ) 
-- # ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(1) & ( !\cir2|fsm|STATE.CLEAR_BEHIND~q\ & ( (\cir2|dp|rb|reg_GURU|q_s\(1) & !\cir2|fsm|STATE.CLEAR_PREV~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(1),
	datad => \cir2|fsm|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	dataf => \cir2|fsm|ALT_INV_STATE.CLEAR_BEHIND~q\,
	combout => \cir2|dp|rb|rb_out~3_combout\);

-- Location: LABCELL_X77_Y34_N39
\cir2|dp|rb|rb_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|dp|rb|rb_out~4_combout\ = ( \cir2|dp|rb|reg_GURU|q_s\(2) & ( \cir2|dp|rb|reg_PRE_GURU|q_s\(2) ) ) # ( !\cir2|dp|rb|reg_GURU|q_s\(2) & ( \cir2|dp|rb|reg_PRE_GURU|q_s\(2) & ( !\cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ ) ) ) # ( 
-- \cir2|dp|rb|reg_GURU|q_s\(2) & ( !\cir2|dp|rb|reg_PRE_GURU|q_s\(2) & ( \cir2|fsm|flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cir2|fsm|ALT_INV_flags_2_dp.rb_out_sel.REG_GURU_PREV_OUT~0_combout\,
	datae => \cir2|dp|rb|reg_GURU|ALT_INV_q_s\(2),
	dataf => \cir2|dp|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	combout => \cir2|dp|rb|rb_out~4_combout\);

-- Location: LABCELL_X79_Y35_N6
\cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~1_combout\ = ( !\cir1|guru|base|control|guru|STATE.CLEAR_PREV~q\ & ( !\cir1|guru|base|control|guru|STATE.WRITE_DUO~q\ & ( (\cir1|guru|base|control|guru|STATE.START_WALKING~q\ & 
-- (\cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & !\cir1|guru|base|control|guru|STATE.LAST~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cir1|guru|base|control|guru|ALT_INV_STATE.START_WALKING~q\,
	datac => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \cir1|guru|base|control|guru|ALT_INV_STATE.LAST~q\,
	datae => \cir1|guru|base|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	combout => \cir1|guru|base|control|ctrl_2_dp.cg_sel.GURU~1_combout\);

-- Location: LABCELL_X75_Y34_N27
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X79_Y35_N15
\cir1|guru|base|control|ctrl_2_dp.cg_sel.DUO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir1|guru|base|control|ctrl_2_dp.cg_sel.DUO~0_combout\ = ( \cir1|guru|base|control|main|STATE.INIT_ACTIVATION~q\ & ( \cir1|guru|base|control|guru|STATE.WRITE_DUO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir1|guru|base|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \cir1|guru|base|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	combout => \cir1|guru|base|control|ctrl_2_dp.cg_sel.DUO~0_combout\);

-- Location: LABCELL_X77_Y34_N21
\cir2|fsm|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cir2|fsm|WideOr8~combout\ = ( !\cir2|fsm|STATE.WRITE_DUO~q\ & ( !\cir2|fsm|WideOr7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cir2|fsm|ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \cir2|fsm|ALT_INV_WideOr7~0_combout\,
	combout => \cir2|fsm|WideOr8~combout\);

-- Location: M10K_X76_Y34_N0
\cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "wisdom_circuit_with_referee:cir1|circuit_wisdom_aula_11:guru|mem_2port:mem|altsyncram:altsyncram_component|altsyncram_a1d2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \cir1|guru|base|control|ctrl_2_mem.mem_wr_en~0_combout\,
	portare => VCC,
	portbwe => \cir2|fsm|WideOr9~combout\,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \cir1|guru|mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);
END structure;


