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

-- DATE "07/01/2021 11:03:57"

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

ENTITY 	base_circuit_extended IS
    PORT (
	clk : IN std_logic;
	res : IN std_logic;
	enable : IN std_logic;
	sys_speed : IN std_logic_vector(3 DOWNTO 0);
	\disc_2_base.end_of_disc\ : IN std_logic;
	\disc_2_mem.cg_sel.DUO\ : IN std_logic;
	\disc_2_mem.cg_sel.DISC\ : IN std_logic;
	\disc_2_mem.cg_sel.GURU\ : IN std_logic;
	\disc_2_mem.cg_sel.BLANK\ : IN std_logic;
	\disc_2_mem.data_b\ : IN std_logic_vector(7 DOWNTO 0);
	\disc_2_mem.mem_wr_en\ : IN std_logic;
	\disc_2_mem.mem_b_addr\ : IN std_logic_vector(5 DOWNTO 0);
	\disc_2_ref.disc_prev_addr\ : IN std_logic_vector(7 DOWNTO 0);
	\disc_2_ref.disc_addr\ : IN std_logic_vector(7 DOWNTO 0);
	\disc_2_ref.end_of_disc\ : IN std_logic;
	print_rdy : BUFFER std_logic;
	cnt_disc_rdy : BUFFER std_logic;
	\ref_2_disc.guru_right_behind\ : BUFFER std_logic;
	\ref_2_disc.duo_formed\ : BUFFER std_logic;
	\ref_2_disc.go_disc\ : BUFFER std_logic;
	start_step : BUFFER std_logic;
	mem_a_data : BUFFER std_logic_vector(7 DOWNTO 0);
	mem_a_addr : IN std_logic_vector(5 DOWNTO 0)
	);
END base_circuit_extended;

-- Design Ports Information
-- disc_2_mem.cg_sel.DUO	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.cg_sel.DISC	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.cg_sel.GURU	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.cg_sel.BLANK	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.end_of_disc	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- print_rdy	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_disc_rdy	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_2_disc.guru_right_behind	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_2_disc.duo_formed	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_2_disc.go_disc	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_step	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[2]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[3]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[4]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[5]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[6]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_data[7]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_base.end_of_disc	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[1]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[2]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_speed[3]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[3]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[4]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[5]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[1]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[2]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_prev_addr[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[6]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[7]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[0]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[3]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_ref.disc_addr[4]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.mem_wr_en	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[1]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[4]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_addr[5]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[0]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.mem_b_addr[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.mem_b_addr[1]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.mem_b_addr[2]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.mem_b_addr[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.mem_b_addr[4]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.mem_b_addr[5]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[1]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[2]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[3]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[4]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[5]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_mem.data_b[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF base_circuit_extended IS
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
SIGNAL \ww_disc_2_base.end_of_disc\ : std_logic;
SIGNAL \ww_disc_2_mem.cg_sel.DUO\ : std_logic;
SIGNAL \ww_disc_2_mem.cg_sel.DISC\ : std_logic;
SIGNAL \ww_disc_2_mem.cg_sel.GURU\ : std_logic;
SIGNAL \ww_disc_2_mem.cg_sel.BLANK\ : std_logic;
SIGNAL \ww_disc_2_mem.data_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_disc_2_mem.mem_wr_en\ : std_logic;
SIGNAL \ww_disc_2_mem.mem_b_addr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ww_disc_2_ref.disc_prev_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_disc_2_ref.disc_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_disc_2_ref.end_of_disc\ : std_logic;
SIGNAL ww_print_rdy : std_logic;
SIGNAL ww_cnt_disc_rdy : std_logic;
SIGNAL \ww_ref_2_disc.guru_right_behind\ : std_logic;
SIGNAL \ww_ref_2_disc.duo_formed\ : std_logic;
SIGNAL \ww_ref_2_disc.go_disc\ : std_logic;
SIGNAL ww_start_step : std_logic;
SIGNAL ww_mem_a_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_a_addr : std_logic_vector(5 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \disc_2_mem.cg_sel.DUO~input_o\ : std_logic;
SIGNAL \disc_2_mem.cg_sel.DISC~input_o\ : std_logic;
SIGNAL \disc_2_mem.cg_sel.GURU~input_o\ : std_logic;
SIGNAL \disc_2_mem.cg_sel.BLANK~input_o\ : std_logic;
SIGNAL \disc_2_ref.end_of_disc~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \step|Add0~9_sumout\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \step|cnt_s~1_combout\ : std_logic;
SIGNAL \step|Add0~10\ : std_logic;
SIGNAL \step|Add0~45_sumout\ : std_logic;
SIGNAL \step|Equal0~1_combout\ : std_logic;
SIGNAL \step|Add0~2\ : std_logic;
SIGNAL \step|Add0~61_sumout\ : std_logic;
SIGNAL \step|Add0~62\ : std_logic;
SIGNAL \step|Add0~57_sumout\ : std_logic;
SIGNAL \step|Equal0~2_combout\ : std_logic;
SIGNAL \step|Add0~58\ : std_logic;
SIGNAL \step|Add0~29_sumout\ : std_logic;
SIGNAL \step|Add0~30\ : std_logic;
SIGNAL \step|Add0~25_sumout\ : std_logic;
SIGNAL \step|Add0~26\ : std_logic;
SIGNAL \step|Add0~13_sumout\ : std_logic;
SIGNAL \step|Add0~14\ : std_logic;
SIGNAL \step|Add0~17_sumout\ : std_logic;
SIGNAL \step|Add0~18\ : std_logic;
SIGNAL \step|Add0~21_sumout\ : std_logic;
SIGNAL \step|Equal0~0_combout\ : std_logic;
SIGNAL \step|cnt_s[13]~0_combout\ : std_logic;
SIGNAL \step|Add0~46\ : std_logic;
SIGNAL \step|Add0~41_sumout\ : std_logic;
SIGNAL \step|Add0~42\ : std_logic;
SIGNAL \step|Add0~37_sumout\ : std_logic;
SIGNAL \step|Add0~38\ : std_logic;
SIGNAL \step|Add0~33_sumout\ : std_logic;
SIGNAL \step|Add0~34\ : std_logic;
SIGNAL \step|Add0~5_sumout\ : std_logic;
SIGNAL \step|Add0~6\ : std_logic;
SIGNAL \step|Add0~53_sumout\ : std_logic;
SIGNAL \step|Add0~54\ : std_logic;
SIGNAL \step|Add0~49_sumout\ : std_logic;
SIGNAL \step|Add0~50\ : std_logic;
SIGNAL \step|Add0~1_sumout\ : std_logic;
SIGNAL \step|process_0~1_combout\ : std_logic;
SIGNAL \step|process_0~0_combout\ : std_logic;
SIGNAL \step|rdy_v1_s~0_combout\ : std_logic;
SIGNAL \step|Equal1~1_combout\ : std_logic;
SIGNAL \step|Equal1~0_combout\ : std_logic;
SIGNAL \step|rdy_v1_s~1_combout\ : std_logic;
SIGNAL \step|rdy_v1_s~q\ : std_logic;
SIGNAL \ref|Add0~5_sumout\ : std_logic;
SIGNAL \ref|Selector80~0_combout\ : std_logic;
SIGNAL \ref|Add0~6\ : std_logic;
SIGNAL \ref|Add0~1_sumout\ : std_logic;
SIGNAL \ref|Selector82~0_combout\ : std_logic;
SIGNAL \ref|Add0~2\ : std_logic;
SIGNAL \ref|Add0~29_sumout\ : std_logic;
SIGNAL \ref|Selector83~0_combout\ : std_logic;
SIGNAL \ref|Add0~30\ : std_logic;
SIGNAL \ref|Add0~25_sumout\ : std_logic;
SIGNAL \ref|Selector84~0_combout\ : std_logic;
SIGNAL \ref|Add0~26\ : std_logic;
SIGNAL \ref|Add0~21_sumout\ : std_logic;
SIGNAL \ref|Selector85~0_combout\ : std_logic;
SIGNAL \ref|Add0~22\ : std_logic;
SIGNAL \ref|Add0~17_sumout\ : std_logic;
SIGNAL \ref|Selector86~0_combout\ : std_logic;
SIGNAL \ref|Add0~18\ : std_logic;
SIGNAL \ref|Add0~13_sumout\ : std_logic;
SIGNAL \ref|Selector87~0_combout\ : std_logic;
SIGNAL \ref|Add0~14\ : std_logic;
SIGNAL \ref|Add0~9_sumout\ : std_logic;
SIGNAL \ref|Selector88~0_combout\ : std_logic;
SIGNAL \ref|Add0~10\ : std_logic;
SIGNAL \ref|Add0~53_sumout\ : std_logic;
SIGNAL \ref|Selector89~0_combout\ : std_logic;
SIGNAL \ref|Add0~54\ : std_logic;
SIGNAL \ref|Add0~49_sumout\ : std_logic;
SIGNAL \ref|Selector90~0_combout\ : std_logic;
SIGNAL \ref|Add0~50\ : std_logic;
SIGNAL \ref|Add0~45_sumout\ : std_logic;
SIGNAL \ref|Selector91~0_combout\ : std_logic;
SIGNAL \ref|Add0~46\ : std_logic;
SIGNAL \ref|Add0~41_sumout\ : std_logic;
SIGNAL \ref|Selector92~0_combout\ : std_logic;
SIGNAL \ref|Add0~42\ : std_logic;
SIGNAL \ref|Add0~37_sumout\ : std_logic;
SIGNAL \ref|Selector93~0_combout\ : std_logic;
SIGNAL \ref|Add0~38\ : std_logic;
SIGNAL \ref|Add0~33_sumout\ : std_logic;
SIGNAL \ref|Selector94~0_combout\ : std_logic;
SIGNAL \ref|Add0~34\ : std_logic;
SIGNAL \ref|Add0~77_sumout\ : std_logic;
SIGNAL \ref|Selector95~0_combout\ : std_logic;
SIGNAL \ref|Add0~78\ : std_logic;
SIGNAL \ref|Add0~73_sumout\ : std_logic;
SIGNAL \ref|Selector96~0_combout\ : std_logic;
SIGNAL \ref|Add0~74\ : std_logic;
SIGNAL \ref|Add0~69_sumout\ : std_logic;
SIGNAL \ref|Selector97~0_combout\ : std_logic;
SIGNAL \ref|Add0~70\ : std_logic;
SIGNAL \ref|Add0~65_sumout\ : std_logic;
SIGNAL \ref|Selector98~0_combout\ : std_logic;
SIGNAL \ref|Add0~66\ : std_logic;
SIGNAL \ref|Add0~61_sumout\ : std_logic;
SIGNAL \ref|Selector99~0_combout\ : std_logic;
SIGNAL \ref|Add0~62\ : std_logic;
SIGNAL \ref|Add0~57_sumout\ : std_logic;
SIGNAL \ref|Selector100~0_combout\ : std_logic;
SIGNAL \ref|Add0~58\ : std_logic;
SIGNAL \ref|Add0~125_sumout\ : std_logic;
SIGNAL \ref|Selector101~0_combout\ : std_logic;
SIGNAL \ref|Add0~126\ : std_logic;
SIGNAL \ref|Add0~121_sumout\ : std_logic;
SIGNAL \ref|Selector102~0_combout\ : std_logic;
SIGNAL \ref|Add0~122\ : std_logic;
SIGNAL \ref|Add0~117_sumout\ : std_logic;
SIGNAL \ref|Selector103~0_combout\ : std_logic;
SIGNAL \ref|Add0~118\ : std_logic;
SIGNAL \ref|Add0~113_sumout\ : std_logic;
SIGNAL \ref|Selector104~0_combout\ : std_logic;
SIGNAL \ref|Add0~114\ : std_logic;
SIGNAL \ref|Add0~109_sumout\ : std_logic;
SIGNAL \ref|Selector105~0_combout\ : std_logic;
SIGNAL \ref|Add0~110\ : std_logic;
SIGNAL \ref|Add0~105_sumout\ : std_logic;
SIGNAL \ref|Selector106~0_combout\ : std_logic;
SIGNAL \ref|Equal0~5_combout\ : std_logic;
SIGNAL \ref|Add0~106\ : std_logic;
SIGNAL \ref|Add0~101_sumout\ : std_logic;
SIGNAL \ref|Selector107~0_combout\ : std_logic;
SIGNAL \ref|Add0~102\ : std_logic;
SIGNAL \ref|Add0~97_sumout\ : std_logic;
SIGNAL \ref|Selector108~0_combout\ : std_logic;
SIGNAL \ref|Add0~98\ : std_logic;
SIGNAL \ref|Add0~93_sumout\ : std_logic;
SIGNAL \ref|Selector109~0_combout\ : std_logic;
SIGNAL \ref|Add0~94\ : std_logic;
SIGNAL \ref|Add0~89_sumout\ : std_logic;
SIGNAL \ref|Selector110~0_combout\ : std_logic;
SIGNAL \ref|Add0~90\ : std_logic;
SIGNAL \ref|Add0~85_sumout\ : std_logic;
SIGNAL \ref|Selector111~0_combout\ : std_logic;
SIGNAL \ref|Add0~86\ : std_logic;
SIGNAL \ref|Add0~81_sumout\ : std_logic;
SIGNAL \ref|Selector112~0_combout\ : std_logic;
SIGNAL \ref|Equal0~4_combout\ : std_logic;
SIGNAL \ref|Equal0~1_combout\ : std_logic;
SIGNAL \ref|Equal0~3_combout\ : std_logic;
SIGNAL \ref|Equal0~2_combout\ : std_logic;
SIGNAL \ref|Equal0~0_combout\ : std_logic;
SIGNAL \ref|Equal0~6_combout\ : std_logic;
SIGNAL \ref|Selector3~0_combout\ : std_logic;
SIGNAL \ref|stateG_reg.waitRdy0~q\ : std_logic;
SIGNAL \ref|Selector1~0_combout\ : std_logic;
SIGNAL \ref|stateG_reg.rdy0~q\ : std_logic;
SIGNAL \ref|stateG_next.rdy1~0_combout\ : std_logic;
SIGNAL \ref|stateG_reg.rdy1~q\ : std_logic;
SIGNAL \ref|Selector2~0_combout\ : std_logic;
SIGNAL \ref|stateG_reg.waitNClk~q\ : std_logic;
SIGNAL \ref|tick_guru~combout\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[5]~input_o\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[7]~input_o\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[6]~input_o\ : std_logic;
SIGNAL \basis|control|init|STATE~7_combout\ : std_logic;
SIGNAL \basis|control|init|STATE.IDLE~q\ : std_logic;
SIGNAL \basis|control|init|STATE~8_combout\ : std_logic;
SIGNAL \basis|control|init|STATE.ZERO~q\ : std_logic;
SIGNAL \basis|control|init|Selector1~0_combout\ : std_logic;
SIGNAL \basis|control|init|STATE.MEM_WALK~q\ : std_logic;
SIGNAL \basis|control|init|STATE~6_combout\ : std_logic;
SIGNAL \basis|control|init|STATE.DONE~q\ : std_logic;
SIGNAL \basis|control|main|STATE~9_combout\ : std_logic;
SIGNAL \basis|control|main|STATE.INIT_ACTIVATION~q\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[3]~input_o\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.alu_ctrl~0_combout\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.ng_cte_incr~1_combout\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ : std_logic;
SIGNAL \basis|data|rb|reg_INIT|q_s[7]~0_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[5]~7_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[4]~6_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[5]~2_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[7]~9_combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:11:or_comp|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:0:or_comp|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:1:or_comp|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:2:xor_tap|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:3:or_comp|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:4:or_comp|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:5:xor_tap|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:6:xor_tap|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:7:or_comp|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:8:xor_tap|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:9:or_comp|z~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s[0]~0_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[0]~3_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[0]~4_combout\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[0]~5_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[0]~2_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[0]~10_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[1]~6_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[1]~3_combout\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.ng_cte_incr~0_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[2]~7_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[2]~4_combout\ : std_logic;
SIGNAL \basis|data|alu_1|add|adder_6|aux_and_3~combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[7]~9_combout\ : std_logic;
SIGNAL \ref|Equal5~0_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[1]~input_o\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[2]~input_o\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[0]~input_o\ : std_logic;
SIGNAL \ref|Equal5~1_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_addr[4]~input_o\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[3]~0_combout\ : std_logic;
SIGNAL \ref|Equal5~2_combout\ : std_logic;
SIGNAL \ref|Equal5~3_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[5]~input_o\ : std_logic;
SIGNAL \ref|Equal2~3_combout\ : std_logic;
SIGNAL \hold2|holdedOut~combout\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[6]~input_o\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[7]~input_o\ : std_logic;
SIGNAL \ref|Equal2~5_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[3]~input_o\ : std_logic;
SIGNAL \ref|Equal2~1_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[2]~input_o\ : std_logic;
SIGNAL \ref|Equal2~7_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[4]~input_o\ : std_logic;
SIGNAL \ref|Equal2~2_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[1]~input_o\ : std_logic;
SIGNAL \disc_prev_s[1]~1_combout\ : std_logic;
SIGNAL \disc_2_ref.disc_prev_addr[0]~input_o\ : std_logic;
SIGNAL \ref|Equal2~6_combout\ : std_logic;
SIGNAL \ref|Equal2~8_combout\ : std_logic;
SIGNAL \ref|state_next.detect~0_combout\ : std_logic;
SIGNAL \ref|state_reg.detect~q\ : std_logic;
SIGNAL \disc_prev_s[2]~2_combout\ : std_logic;
SIGNAL \disc_prev_s[0]~0_combout\ : std_logic;
SIGNAL \ref|Equal2~4_combout\ : std_logic;
SIGNAL \ref|mainCnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Equal2~12_combout\ : std_logic;
SIGNAL \ref|Equal2~9_combout\ : std_logic;
SIGNAL \ref|Equal2~11_combout\ : std_logic;
SIGNAL \ref|Equal2~13_combout\ : std_logic;
SIGNAL \ref|Selector18~0_combout\ : std_logic;
SIGNAL \ref|state_reg.unm_godisc_BL~q\ : std_logic;
SIGNAL \ref|mainCnt[5]~1_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \basis|control|main|STATE~10_combout\ : std_logic;
SIGNAL \ref|Add1~5_sumout\ : std_logic;
SIGNAL \ref|Selector12~0_combout\ : std_logic;
SIGNAL \ref|Add1~6\ : std_logic;
SIGNAL \ref|Add1~1_sumout\ : std_logic;
SIGNAL \ref|Selector11~0_combout\ : std_logic;
SIGNAL \ref|Add1~2\ : std_logic;
SIGNAL \ref|Add1~29_sumout\ : std_logic;
SIGNAL \ref|Selector10~0_combout\ : std_logic;
SIGNAL \ref|Add1~30\ : std_logic;
SIGNAL \ref|Add1~25_sumout\ : std_logic;
SIGNAL \ref|Selector6~0_combout\ : std_logic;
SIGNAL \ref|Add1~26\ : std_logic;
SIGNAL \ref|Add1~21_sumout\ : std_logic;
SIGNAL \ref|Selector5~0_combout\ : std_logic;
SIGNAL \ref|Add1~22\ : std_logic;
SIGNAL \ref|Add1~17_sumout\ : std_logic;
SIGNAL \ref|Selector0~0_combout\ : std_logic;
SIGNAL \ref|Add1~18\ : std_logic;
SIGNAL \ref|Add1~13_sumout\ : std_logic;
SIGNAL \ref|Selector54~0_combout\ : std_logic;
SIGNAL \ref|Add1~14\ : std_logic;
SIGNAL \ref|Add1~9_sumout\ : std_logic;
SIGNAL \ref|Selector55~0_combout\ : std_logic;
SIGNAL \ref|Add1~10\ : std_logic;
SIGNAL \ref|Add1~53_sumout\ : std_logic;
SIGNAL \ref|Selector56~0_combout\ : std_logic;
SIGNAL \ref|Add1~54\ : std_logic;
SIGNAL \ref|Add1~49_sumout\ : std_logic;
SIGNAL \ref|Selector57~0_combout\ : std_logic;
SIGNAL \ref|Add1~50\ : std_logic;
SIGNAL \ref|Add1~45_sumout\ : std_logic;
SIGNAL \ref|Selector58~0_combout\ : std_logic;
SIGNAL \ref|Add1~46\ : std_logic;
SIGNAL \ref|Add1~41_sumout\ : std_logic;
SIGNAL \ref|Selector59~0_combout\ : std_logic;
SIGNAL \ref|Add1~42\ : std_logic;
SIGNAL \ref|Add1~37_sumout\ : std_logic;
SIGNAL \ref|Selector60~0_combout\ : std_logic;
SIGNAL \ref|Add1~38\ : std_logic;
SIGNAL \ref|Add1~33_sumout\ : std_logic;
SIGNAL \ref|Selector61~0_combout\ : std_logic;
SIGNAL \ref|Add1~34\ : std_logic;
SIGNAL \ref|Add1~77_sumout\ : std_logic;
SIGNAL \ref|Selector62~0_combout\ : std_logic;
SIGNAL \ref|Add1~78\ : std_logic;
SIGNAL \ref|Add1~73_sumout\ : std_logic;
SIGNAL \ref|Selector63~0_combout\ : std_logic;
SIGNAL \ref|Add1~74\ : std_logic;
SIGNAL \ref|Add1~69_sumout\ : std_logic;
SIGNAL \ref|Selector64~0_combout\ : std_logic;
SIGNAL \ref|Add1~70\ : std_logic;
SIGNAL \ref|Add1~65_sumout\ : std_logic;
SIGNAL \ref|Selector65~0_combout\ : std_logic;
SIGNAL \ref|Add1~66\ : std_logic;
SIGNAL \ref|Add1~61_sumout\ : std_logic;
SIGNAL \ref|Selector66~0_combout\ : std_logic;
SIGNAL \ref|Add1~62\ : std_logic;
SIGNAL \ref|Add1~57_sumout\ : std_logic;
SIGNAL \ref|Selector67~0_combout\ : std_logic;
SIGNAL \ref|Add1~58\ : std_logic;
SIGNAL \ref|Add1~125_sumout\ : std_logic;
SIGNAL \ref|Selector68~0_combout\ : std_logic;
SIGNAL \ref|Add1~126\ : std_logic;
SIGNAL \ref|Add1~121_sumout\ : std_logic;
SIGNAL \ref|Selector69~0_combout\ : std_logic;
SIGNAL \ref|Add1~122\ : std_logic;
SIGNAL \ref|Add1~117_sumout\ : std_logic;
SIGNAL \ref|Selector70~0_combout\ : std_logic;
SIGNAL \ref|Add1~118\ : std_logic;
SIGNAL \ref|Add1~113_sumout\ : std_logic;
SIGNAL \ref|Selector71~0_combout\ : std_logic;
SIGNAL \ref|Add1~114\ : std_logic;
SIGNAL \ref|Add1~109_sumout\ : std_logic;
SIGNAL \ref|Selector72~0_combout\ : std_logic;
SIGNAL \ref|Add1~110\ : std_logic;
SIGNAL \ref|Add1~105_sumout\ : std_logic;
SIGNAL \ref|Selector73~0_combout\ : std_logic;
SIGNAL \ref|Equal1~5_combout\ : std_logic;
SIGNAL \ref|Equal1~2_combout\ : std_logic;
SIGNAL \ref|Equal1~1_combout\ : std_logic;
SIGNAL \ref|Add1~106\ : std_logic;
SIGNAL \ref|Add1~101_sumout\ : std_logic;
SIGNAL \ref|Selector74~0_combout\ : std_logic;
SIGNAL \ref|Add1~102\ : std_logic;
SIGNAL \ref|Add1~97_sumout\ : std_logic;
SIGNAL \ref|Selector75~0_combout\ : std_logic;
SIGNAL \ref|Add1~98\ : std_logic;
SIGNAL \ref|Add1~93_sumout\ : std_logic;
SIGNAL \ref|Selector76~0_combout\ : std_logic;
SIGNAL \ref|Add1~94\ : std_logic;
SIGNAL \ref|Add1~89_sumout\ : std_logic;
SIGNAL \ref|Selector77~0_combout\ : std_logic;
SIGNAL \ref|Add1~90\ : std_logic;
SIGNAL \ref|Add1~85_sumout\ : std_logic;
SIGNAL \ref|Selector78~0_combout\ : std_logic;
SIGNAL \ref|Add1~86\ : std_logic;
SIGNAL \ref|Add1~81_sumout\ : std_logic;
SIGNAL \ref|Selector79~0_combout\ : std_logic;
SIGNAL \ref|Equal1~4_combout\ : std_logic;
SIGNAL \ref|Equal1~3_combout\ : std_logic;
SIGNAL \ref|Equal1~0_combout\ : std_logic;
SIGNAL \ref|Equal1~6_combout\ : std_logic;
SIGNAL \step|rdy_v4_s~0_combout\ : std_logic;
SIGNAL \step|rdy_v4_s~1_combout\ : std_logic;
SIGNAL \step|rdy_v4_s~q\ : std_logic;
SIGNAL \step|process_0~2_combout\ : std_logic;
SIGNAL \step|rdy_v8_s~0_combout\ : std_logic;
SIGNAL \step|rdy_v8_s~q\ : std_logic;
SIGNAL \step|rdy_v2_s~0_combout\ : std_logic;
SIGNAL \step|rdy_v2_s~q\ : std_logic;
SIGNAL \sys_speed[2]~input_o\ : std_logic;
SIGNAL \sys_speed[3]~input_o\ : std_logic;
SIGNAL \sys_speed[0]~input_o\ : std_logic;
SIGNAL \sys_speed[1]~input_o\ : std_logic;
SIGNAL \button|Mux0~0_combout\ : std_logic;
SIGNAL \button|speed_sync_s~10_combout\ : std_logic;
SIGNAL \button|speed_sync_s.ONE_X~q\ : std_logic;
SIGNAL \button|speed_sync_s~11_combout\ : std_logic;
SIGNAL \button|speed_sync_s.TWO_X~q\ : std_logic;
SIGNAL \button|speed_sync_s~12_combout\ : std_logic;
SIGNAL \button|speed_sync_s.FOUR_X~q\ : std_logic;
SIGNAL \step|cnt_disc_rdy~0_combout\ : std_logic;
SIGNAL \step|cnt_disc_rdy~1_combout\ : std_logic;
SIGNAL \ref|Selector9~0_combout\ : std_logic;
SIGNAL \ref|stateD_reg.waitRdy0~q\ : std_logic;
SIGNAL \ref|Selector7~0_combout\ : std_logic;
SIGNAL \ref|stateD_reg.rdy0~q\ : std_logic;
SIGNAL \ref|stateD_next.rdy1~0_combout\ : std_logic;
SIGNAL \ref|stateD_reg.rdy1~q\ : std_logic;
SIGNAL \ref|Selector8~0_combout\ : std_logic;
SIGNAL \ref|stateD_reg.waitNClk~q\ : std_logic;
SIGNAL \ref|tick_disc~combout\ : std_logic;
SIGNAL \ref|Add2~5_sumout\ : std_logic;
SIGNAL \ref|Selector53~0_combout\ : std_logic;
SIGNAL \ref|Add2~6\ : std_logic;
SIGNAL \ref|Add2~29_sumout\ : std_logic;
SIGNAL \ref|Selector52~0_combout\ : std_logic;
SIGNAL \ref|Selector52~1_combout\ : std_logic;
SIGNAL \ref|Add2~30\ : std_logic;
SIGNAL \ref|Add2~25_sumout\ : std_logic;
SIGNAL \ref|Selector51~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[2]~8_combout\ : std_logic;
SIGNAL \ref|Add2~26\ : std_logic;
SIGNAL \ref|Add2~21_sumout\ : std_logic;
SIGNAL \ref|Selector50~0_combout\ : std_logic;
SIGNAL \ref|Add2~22\ : std_logic;
SIGNAL \ref|Add2~17_sumout\ : std_logic;
SIGNAL \ref|Selector49~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Add2~18\ : std_logic;
SIGNAL \ref|Add2~13_sumout\ : std_logic;
SIGNAL \ref|Selector48~0_combout\ : std_logic;
SIGNAL \ref|Selector48~1_combout\ : std_logic;
SIGNAL \ref|Add2~14\ : std_logic;
SIGNAL \ref|Add2~9_sumout\ : std_logic;
SIGNAL \ref|Selector47~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[6]~4_combout\ : std_logic;
SIGNAL \ref|Add2~10\ : std_logic;
SIGNAL \ref|Add2~53_sumout\ : std_logic;
SIGNAL \ref|Selector46~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Add2~54\ : std_logic;
SIGNAL \ref|Add2~49_sumout\ : std_logic;
SIGNAL \ref|Selector45~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Add2~50\ : std_logic;
SIGNAL \ref|Add2~45_sumout\ : std_logic;
SIGNAL \ref|Selector44~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Add2~46\ : std_logic;
SIGNAL \ref|Add2~41_sumout\ : std_logic;
SIGNAL \ref|Selector43~0_combout\ : std_logic;
SIGNAL \ref|Add2~42\ : std_logic;
SIGNAL \ref|Add2~37_sumout\ : std_logic;
SIGNAL \ref|Selector42~0_combout\ : std_logic;
SIGNAL \ref|Add2~38\ : std_logic;
SIGNAL \ref|Add2~33_sumout\ : std_logic;
SIGNAL \ref|Selector41~0_combout\ : std_logic;
SIGNAL \ref|LessThan0~1_combout\ : std_logic;
SIGNAL \ref|Add2~34\ : std_logic;
SIGNAL \ref|Add2~77_sumout\ : std_logic;
SIGNAL \ref|Selector40~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Add2~78\ : std_logic;
SIGNAL \ref|Add2~73_sumout\ : std_logic;
SIGNAL \ref|Selector39~0_combout\ : std_logic;
SIGNAL \ref|Add2~74\ : std_logic;
SIGNAL \ref|Add2~69_sumout\ : std_logic;
SIGNAL \ref|Selector38~0_combout\ : std_logic;
SIGNAL \ref|Add2~70\ : std_logic;
SIGNAL \ref|Add2~65_sumout\ : std_logic;
SIGNAL \ref|Selector37~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Add2~66\ : std_logic;
SIGNAL \ref|Add2~61_sumout\ : std_logic;
SIGNAL \ref|Selector36~0_combout\ : std_logic;
SIGNAL \ref|mainCnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Add2~62\ : std_logic;
SIGNAL \ref|Add2~57_sumout\ : std_logic;
SIGNAL \ref|Selector35~0_combout\ : std_logic;
SIGNAL \ref|LessThan0~2_combout\ : std_logic;
SIGNAL \ref|LessThan0~0_combout\ : std_logic;
SIGNAL \ref|Add2~58\ : std_logic;
SIGNAL \ref|Add2~125_sumout\ : std_logic;
SIGNAL \ref|Selector34~0_combout\ : std_logic;
SIGNAL \ref|Add2~126\ : std_logic;
SIGNAL \ref|Add2~121_sumout\ : std_logic;
SIGNAL \ref|Selector33~0_combout\ : std_logic;
SIGNAL \ref|Add2~122\ : std_logic;
SIGNAL \ref|Add2~117_sumout\ : std_logic;
SIGNAL \ref|Selector32~0_combout\ : std_logic;
SIGNAL \ref|Add2~118\ : std_logic;
SIGNAL \ref|Add2~113_sumout\ : std_logic;
SIGNAL \ref|Selector31~0_combout\ : std_logic;
SIGNAL \ref|Add2~114\ : std_logic;
SIGNAL \ref|Add2~109_sumout\ : std_logic;
SIGNAL \ref|Selector30~0_combout\ : std_logic;
SIGNAL \ref|Add2~110\ : std_logic;
SIGNAL \ref|Add2~105_sumout\ : std_logic;
SIGNAL \ref|Selector29~0_combout\ : std_logic;
SIGNAL \ref|Add2~106\ : std_logic;
SIGNAL \ref|Add2~101_sumout\ : std_logic;
SIGNAL \ref|Selector28~0_combout\ : std_logic;
SIGNAL \ref|Add2~102\ : std_logic;
SIGNAL \ref|Add2~97_sumout\ : std_logic;
SIGNAL \ref|Selector27~0_combout\ : std_logic;
SIGNAL \ref|Add2~98\ : std_logic;
SIGNAL \ref|Add2~93_sumout\ : std_logic;
SIGNAL \ref|Selector26~0_combout\ : std_logic;
SIGNAL \ref|Add2~94\ : std_logic;
SIGNAL \ref|Add2~89_sumout\ : std_logic;
SIGNAL \ref|Selector25~0_combout\ : std_logic;
SIGNAL \ref|Add2~90\ : std_logic;
SIGNAL \ref|Add2~85_sumout\ : std_logic;
SIGNAL \ref|Selector24~0_combout\ : std_logic;
SIGNAL \ref|Add2~86\ : std_logic;
SIGNAL \ref|Add2~81_sumout\ : std_logic;
SIGNAL \ref|Selector23~0_combout\ : std_logic;
SIGNAL \ref|LessThan0~3_combout\ : std_logic;
SIGNAL \ref|LessThan0~4_combout\ : std_logic;
SIGNAL \ref|LessThan0~5_combout\ : std_logic;
SIGNAL \ref|state_next.checkTop~0_combout\ : std_logic;
SIGNAL \ref|state_reg.checkTop~q\ : std_logic;
SIGNAL \ref|state_next.detect1~0_combout\ : std_logic;
SIGNAL \ref|state_reg.detect1~q\ : std_logic;
SIGNAL \hold2|state_next~1_combout\ : std_logic;
SIGNAL \hold2|state_next~0_combout\ : std_logic;
SIGNAL \hold2|state_next~combout\ : std_logic;
SIGNAL \hold2|state_reg~q\ : std_logic;
SIGNAL \ref|Equal2~10_combout\ : std_logic;
SIGNAL \ref|Equal4~1_combout\ : std_logic;
SIGNAL \ref|Selector15~0_combout\ : std_logic;
SIGNAL \ref|state_reg.conflict1~0_combout\ : std_logic;
SIGNAL \ref|state_reg.conflict1~q\ : std_logic;
SIGNAL \hold|state_next~0_combout\ : std_logic;
SIGNAL \hold|state_next~1_combout\ : std_logic;
SIGNAL \hold|state_next~combout\ : std_logic;
SIGNAL \hold|state_reg~q\ : std_logic;
SIGNAL \hold|holdedOut~combout\ : std_logic;
SIGNAL \ref|Selector20~0_combout\ : std_logic;
SIGNAL \ref|state_reg.wait50l~q\ : std_logic;
SIGNAL \ref|Selector21~0_combout\ : std_logic;
SIGNAL \ref|state_reg.unm_go_guru~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~20_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~21_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~15_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~16_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.WRITE_GURU~q\ : std_logic;
SIGNAL \basis|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.CLEAR_PREV~feeder_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \basis|data|rb|reg_INIT|q_s[3]~feeder_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[3]~5_combout\ : std_logic;
SIGNAL \basis|data|alu_1|add|adder_4|aux_and_3~combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[4]~1_combout\ : std_logic;
SIGNAL \ref|Equal4~2_combout\ : std_logic;
SIGNAL \ref|state_next.conflict~0_combout\ : std_logic;
SIGNAL \ref|state_reg.conflict~q\ : std_logic;
SIGNAL \basis|control|main|Selector1~1_combout\ : std_logic;
SIGNAL \disc_2_base.end_of_disc~input_o\ : std_logic;
SIGNAL \hold3|state_reg~q\ : std_logic;
SIGNAL \hold3|state_next~0_combout\ : std_logic;
SIGNAL \basis|control|main|STATE~11_combout\ : std_logic;
SIGNAL \basis|control|main|STATE.HIT_POINT~q\ : std_logic;
SIGNAL \basis|control|main|Selector1~2_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~17_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|STATE~q\ : std_logic;
SIGNAL \basis|control|cnt_prep|cnt_s[24]~0_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~18\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~117_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~118\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~37_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|cnt_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~38\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~41_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~42\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~45_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~46\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~49_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|cnt_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~50\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~53_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~54\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~9_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~10\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~13_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~14\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~21_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~22\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~25_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~26\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~29_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~30\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~1_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~2\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~5_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~6\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~77_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~78\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~33_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Equal0~2_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|cnt_s[17]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~34\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~85_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~86\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~89_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~90\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~93_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~94\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~97_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~98\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~101_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~102\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~105_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~106\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~109_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~110\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~113_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~114\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~81_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Equal0~4_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Equal0~0_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Equal0~1_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~82\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~121_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~122\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~125_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Equal0~5_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~126\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~57_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~58\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~61_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~62\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~65_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|cnt_s[29]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~66\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~69_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~70\ : std_logic;
SIGNAL \basis|control|cnt_prep|Add0~73_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Equal0~3_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|Equal0~6_combout\ : std_logic;
SIGNAL \basis|control|main|Selector1~0_combout\ : std_logic;
SIGNAL \basis|control|main|Selector1~3_combout\ : std_logic;
SIGNAL \basis|control|main|STATE.CNT_PREPARE~q\ : std_logic;
SIGNAL \basis|control|main|STATE~8_combout\ : std_logic;
SIGNAL \basis|control|main|STATE.STEP_ACTIVATION~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~17_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.START_WALKING~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~18_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.RAND~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~14_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \basis|control|guru|Selector1~0_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.WAIT_COUNT_GURU~q\ : std_logic;
SIGNAL \basis|control|guru|STATE~19_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.INCR~q\ : std_logic;
SIGNAL \basis|data|rb|reg_GURU|q_s[6]~0_combout\ : std_logic;
SIGNAL \basis|data|rb|rb_out[6]~8_combout\ : std_logic;
SIGNAL \basis|data|n_g|ng_2_RB[6]~8_combout\ : std_logic;
SIGNAL \ref|Equal4~0_combout\ : std_logic;
SIGNAL \ref|Equal4~3_combout\ : std_logic;
SIGNAL \ref|Selector16~0_combout\ : std_logic;
SIGNAL \ref|state_reg.wait50b~q\ : std_logic;
SIGNAL \ref|Selector17~0_combout\ : std_logic;
SIGNAL \ref|Selector17~1_combout\ : std_logic;
SIGNAL \ref|state_reg.unm_go_discB~q\ : std_logic;
SIGNAL \ref|state_reg.unm_go_guru~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Selector13~0_combout\ : std_logic;
SIGNAL \ref|state_reg.idle~q\ : std_logic;
SIGNAL \ref|Selector19~0_combout\ : std_logic;
SIGNAL \ref|Selector19~1_combout\ : std_logic;
SIGNAL \ref|state_reg.wait55~q\ : std_logic;
SIGNAL \ref|mainCnt[5]~0_combout\ : std_logic;
SIGNAL \ref|Selector22~0_combout\ : std_logic;
SIGNAL \ref|Add2~82\ : std_logic;
SIGNAL \ref|Add2~1_sumout\ : std_logic;
SIGNAL \ref|Selector22~1_combout\ : std_logic;
SIGNAL \ref|mainCnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|Selector14~0_combout\ : std_logic;
SIGNAL \ref|state_reg.wait50~q\ : std_logic;
SIGNAL \ref|state_next.checkMiddle~0_combout\ : std_logic;
SIGNAL \ref|state_reg.checkMiddle~q\ : std_logic;
SIGNAL \ref|state_next.go_guru_state~0_combout\ : std_logic;
SIGNAL \ref|state_reg.go_guru_state~q\ : std_logic;
SIGNAL \ref|go_guru~combout\ : std_logic;
SIGNAL \basis|control|guru|STATE~13_combout\ : std_logic;
SIGNAL \basis|control|guru|STATE.LAST~q\ : std_logic;
SIGNAL \basis|control|main|Selector0~0_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~105_sumout\ : std_logic;
SIGNAL \basis|control|main|Selector2~0_combout\ : std_logic;
SIGNAL \basis|control|main|STATE.CNT_START~q\ : std_logic;
SIGNAL \basis|control|cnt_strat|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|STATE~q\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[14]~0_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~106\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~109_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~110\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~113_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~114\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~117_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~118\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~65_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~66\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~121_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~122\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~125_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~126\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~57_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~58\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~61_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~62\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~101_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~102\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~97_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~98\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~93_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~94\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~89_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~90\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~85_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~86\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~81_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~82\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~53_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~54\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~69_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~70\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~21_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~22\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~25_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~26\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~29_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~30\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~1_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~2\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~17_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[21]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~18\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~5_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~6\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~13_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~14\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~9_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~10\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~49_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~50\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~45_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~46\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~41_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~42\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~37_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~38\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~33_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~34\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~77_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[31]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~78\ : std_logic;
SIGNAL \basis|control|cnt_strat|Add0~73_sumout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Equal0~3_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Equal0~2_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Equal0~4_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Equal0~0_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Equal0~5_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|cnt_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|Equal0~1_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|Equal0~6_combout\ : std_logic;
SIGNAL \basis|control|main|Selector0~1_combout\ : std_logic;
SIGNAL \basis|control|main|Selector0~2_combout\ : std_logic;
SIGNAL \basis|control|main|STATE.CHECK_END~q\ : std_logic;
SIGNAL \print_rdy~0_combout\ : std_logic;
SIGNAL \step|cnt_disc_rdy~2_combout\ : std_logic;
SIGNAL \ref|go_disc~combout\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ : std_logic;
SIGNAL \basis|control|ctrl_2_mem.mem_wr_en~0_combout\ : std_logic;
SIGNAL \disc_2_mem.mem_wr_en~input_o\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.cg_sel.GURU~0_combout\ : std_logic;
SIGNAL \mem_a_addr[0]~input_o\ : std_logic;
SIGNAL \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ : std_logic;
SIGNAL \a_addr_s[0]~0_combout\ : std_logic;
SIGNAL \mem_a_addr[1]~input_o\ : std_logic;
SIGNAL \a_addr_s[1]~1_combout\ : std_logic;
SIGNAL \mem_a_addr[2]~input_o\ : std_logic;
SIGNAL \a_addr_s[2]~2_combout\ : std_logic;
SIGNAL \mem_a_addr[3]~input_o\ : std_logic;
SIGNAL \a_addr_s[3]~3_combout\ : std_logic;
SIGNAL \mem_a_addr[4]~input_o\ : std_logic;
SIGNAL \a_addr_s[4]~4_combout\ : std_logic;
SIGNAL \mem_a_addr[5]~input_o\ : std_logic;
SIGNAL \a_addr_s[5]~5_combout\ : std_logic;
SIGNAL \disc_2_mem.data_b[0]~input_o\ : std_logic;
SIGNAL \disc_2_mem.mem_b_addr[0]~input_o\ : std_logic;
SIGNAL \disc_2_mem.mem_b_addr[1]~input_o\ : std_logic;
SIGNAL \disc_2_mem.mem_b_addr[2]~input_o\ : std_logic;
SIGNAL \disc_2_mem.mem_b_addr[3]~input_o\ : std_logic;
SIGNAL \disc_2_mem.mem_b_addr[4]~input_o\ : std_logic;
SIGNAL \disc_2_mem.mem_b_addr[5]~input_o\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.cg_sel.GURU~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \basis|control|ctrl_2_dp.cg_sel.DUO~0_combout\ : std_logic;
SIGNAL \disc_2_mem.data_b[1]~input_o\ : std_logic;
SIGNAL \disc_2_mem.data_b[2]~input_o\ : std_logic;
SIGNAL \disc_2_mem.data_b[3]~input_o\ : std_logic;
SIGNAL \disc_2_mem.data_b[4]~input_o\ : std_logic;
SIGNAL \disc_2_mem.data_b[5]~input_o\ : std_logic;
SIGNAL \disc_2_mem.data_b[6]~input_o\ : std_logic;
SIGNAL \disc_2_mem.data_b[7]~input_o\ : std_logic;
SIGNAL \ref|waitNDCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ref|waitNGCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ref|mainCnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \basis|control|cnt_strat|cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \basis|data|rb|reg_INIT|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|rb|reg_PRE_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|rb|reg_GURU|q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \step|cnt_s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ref|waitNDCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ref|waitNGCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|control|cnt_prep|cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \step|ALT_INV_cnt_s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \basis|control|main|ALT_INV_STATE.CHECK_END~q\ : std_logic;
SIGNAL \button|ALT_INV_speed_sync_s.FOUR_X~q\ : std_logic;
SIGNAL \button|ALT_INV_speed_sync_s.TWO_X~q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_STATE~q\ : std_logic;
SIGNAL \step|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \basis|data|rb|reg_INIT|ALT_INV_q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \basis|data|rb|reg_GURU|ALT_INV_q_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \basis|control|cnt_prep|ALT_INV_cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \basis|control|main|ALT_INV_STATE.CNT_PREPARE~q\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \basis|control|main|ALT_INV_STATE.CNT_START~q\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_STATE~q\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \basis|control|init|ALT_INV_STATE.MEM_WALK~q\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \hold3|ALT_INV_state_reg~q\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.LAST~q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \step|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \step|ALT_INV_rdy_v4_s~0_combout\ : std_logic;
SIGNAL \button|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \step|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \step|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \step|ALT_INV_rdy_v1_s~0_combout\ : std_logic;
SIGNAL \step|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \step|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \step|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \step|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \step|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.unm_godisc_BL~q\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.unm_go_discB~q\ : std_logic;
SIGNAL \hold|ALT_INV_holdedOut~combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.conflict~q\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.conflict1~q\ : std_logic;
SIGNAL \hold|ALT_INV_state_reg~q\ : std_logic;
SIGNAL \hold2|ALT_INV_holdedOut~combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.detect~q\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.detect1~q\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\ : std_logic;
SIGNAL \hold2|ALT_INV_state_reg~q\ : std_logic;
SIGNAL \step|ALT_INV_cnt_disc_rdy~1_combout\ : std_logic;
SIGNAL \step|ALT_INV_cnt_disc_rdy~0_combout\ : std_logic;
SIGNAL \step|ALT_INV_rdy_v8_s~q\ : std_logic;
SIGNAL \step|ALT_INV_rdy_v4_s~q\ : std_logic;
SIGNAL \step|ALT_INV_rdy_v2_s~q\ : std_logic;
SIGNAL \button|ALT_INV_speed_sync_s.ONE_X~q\ : std_logic;
SIGNAL \step|ALT_INV_rdy_v1_s~q\ : std_logic;
SIGNAL \basis|data|n_g|ALT_INV_ng_2_RB[0]~10_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector47~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector51~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ref|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_STATE.HIT_POINT~q\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \hold2|ALT_INV_state_next~1_combout\ : std_logic;
SIGNAL \hold2|ALT_INV_state_next~0_combout\ : std_logic;
SIGNAL \hold3|ALT_INV_state_next~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_go_guru~combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.unm_go_guru~q\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.go_guru_state~q\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.INCR~q\ : std_logic;
SIGNAL \basis|data|n_g|ALT_INV_ng_2_RB[3]~0_combout\ : std_logic;
SIGNAL \basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\ : std_logic;
SIGNAL \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.RAND~q\ : std_logic;
SIGNAL \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~0_combout\ : std_logic;
SIGNAL \basis|control|init|ALT_INV_STATE.ZERO~q\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[5]~7_combout\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[4]~6_combout\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[3]~5_combout\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[2]~4_combout\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[1]~3_combout\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[0]~2_combout\ : std_logic;
SIGNAL \basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.START_WALKING~q\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.WRITE_GURU~q\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\ : std_logic;
SIGNAL \basis|control|init|ALT_INV_STATE.IDLE~q\ : std_logic;
SIGNAL \basis|control|init|ALT_INV_STATE.DONE~q\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~13_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.wait50b~q\ : std_logic;
SIGNAL \ref|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ref|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ref|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ref|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ref|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ref|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~12_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~11_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~10_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~9_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal5~3_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal4~3_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.checkMiddle~q\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~8_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~7_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_disc_prev_s[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_disc_prev_s[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_disc_prev_s[0]~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.checkTop~q\ : std_logic;
SIGNAL \ref|ALT_INV_waitNGCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ref|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_stateG_reg.rdy0~q\ : std_logic;
SIGNAL \basis|control|main|ALT_INV_STATE~10_combout\ : std_logic;
SIGNAL \basis|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \ref|ALT_INV_Selector52~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[5]~1_combout\ : std_logic;
SIGNAL \ref|ALT_INV_tick_disc~combout\ : std_logic;
SIGNAL \ref|ALT_INV_stateD_reg.waitNClk~q\ : std_logic;
SIGNAL \ref|ALT_INV_stateD_reg.rdy1~q\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \ref|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[5]~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.wait50l~q\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.wait55~q\ : std_logic;
SIGNAL \hold|ALT_INV_state_next~1_combout\ : std_logic;
SIGNAL \hold|ALT_INV_state_next~0_combout\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[7]~9_combout\ : std_logic;
SIGNAL \basis|data|rb|ALT_INV_rb_out[6]~8_combout\ : std_logic;
SIGNAL \basis|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|ALT_INV_ng_2_RB[0]~4_combout\ : std_logic;
SIGNAL \basis|data|n_g|ALT_INV_ng_2_RB[0]~3_combout\ : std_logic;
SIGNAL \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\ : std_logic;
SIGNAL \basis|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.wait50~q\ : std_logic;
SIGNAL \ref|ALT_INV_tick_guru~combout\ : std_logic;
SIGNAL \ref|ALT_INV_stateG_reg.waitNClk~q\ : std_logic;
SIGNAL \ref|ALT_INV_stateG_reg.rdy1~q\ : std_logic;
SIGNAL \ref|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector54~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector55~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ref|ALT_INV_Selector101~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector102~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector103~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector104~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector105~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector106~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector107~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector108~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector109~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector110~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector111~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector112~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector95~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector96~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector97~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector98~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector99~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector100~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector89~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector90~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector91~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector92~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector93~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector94~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector83~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector84~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector85~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector86~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector87~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector88~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector80~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector82~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_stateD_reg.waitRdy0~q\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ref|ALT_INV_stateG_reg.waitRdy0~q\ : std_logic;
SIGNAL \ref|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ref|ALT_INV_waitNDCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ref|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_stateD_reg.rdy0~q\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ref|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ref|ALT_INV_waitNDCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ref|ALT_INV_waitNGCountNext\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \hold|ALT_INV_state_next~combout\ : std_logic;
SIGNAL \hold2|ALT_INV_state_next~combout\ : std_logic;
SIGNAL \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~3_combout\ : std_logic;
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|ALT_INV_q_s\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ref|ALT_INV_Selector68~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector69~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector70~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector71~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector72~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector73~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector74~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector75~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector76~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector77~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector78~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector79~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector62~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector63~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector64~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector65~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector66~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector67~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector56~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector57~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector58~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector59~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector60~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector61~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ref|ALT_INV_state_reg.unm_go_guru~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_cnt_s[17]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_cnt_s[29]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_cnt_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_cnt_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[31]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \basis|control|cnt_strat|ALT_INV_cnt_s[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem_a_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_ref.disc_prev_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_speed[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_res~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_base.end_of_disc~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_res <= res;
ww_enable <= enable;
ww_sys_speed <= sys_speed;
\ww_disc_2_base.end_of_disc\ <= \disc_2_base.end_of_disc\;
\ww_disc_2_mem.cg_sel.DUO\ <= \disc_2_mem.cg_sel.DUO\;
\ww_disc_2_mem.cg_sel.DISC\ <= \disc_2_mem.cg_sel.DISC\;
\ww_disc_2_mem.cg_sel.GURU\ <= \disc_2_mem.cg_sel.GURU\;
\ww_disc_2_mem.cg_sel.BLANK\ <= \disc_2_mem.cg_sel.BLANK\;
\ww_disc_2_mem.data_b\ <= \disc_2_mem.data_b\;
\ww_disc_2_mem.mem_wr_en\ <= \disc_2_mem.mem_wr_en\;
\ww_disc_2_mem.mem_b_addr\ <= \disc_2_mem.mem_b_addr\;
\ww_disc_2_ref.disc_prev_addr\ <= \disc_2_ref.disc_prev_addr\;
\ww_disc_2_ref.disc_addr\ <= \disc_2_ref.disc_addr\;
\ww_disc_2_ref.end_of_disc\ <= \disc_2_ref.end_of_disc\;
print_rdy <= ww_print_rdy;
cnt_disc_rdy <= ww_cnt_disc_rdy;
\ref_2_disc.guru_right_behind\ <= \ww_ref_2_disc.guru_right_behind\;
\ref_2_disc.duo_formed\ <= \ww_ref_2_disc.duo_formed\;
\ref_2_disc.go_disc\ <= \ww_ref_2_disc.go_disc\;
start_step <= ww_start_step;
mem_a_data <= ww_mem_a_data;
ww_mem_a_addr <= mem_a_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\basis|control|ctrl_2_dp.cg_sel.DUO~0_combout\ & \~GND~combout\ & \basis|control|ctrl_2_dp.cg_sel.GURU~1_combout\ & \basis|control|ctrl_2_dp.cg_sel.GURU~0_combout\);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \disc_2_mem.data_b[7]~input_o\ & \disc_2_mem.data_b[6]~input_o\ & \disc_2_mem.data_b[5]~input_o\ & 
\disc_2_mem.data_b[4]~input_o\ & \disc_2_mem.data_b[3]~input_o\ & \disc_2_mem.data_b[2]~input_o\ & \disc_2_mem.data_b[1]~input_o\ & \disc_2_mem.data_b[0]~input_o\);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\a_addr_s[5]~5_combout\ & \a_addr_s[4]~4_combout\ & \a_addr_s[3]~3_combout\ & \a_addr_s[2]~2_combout\ & \a_addr_s[1]~1_combout\ & \a_addr_s[0]~0_combout\);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\disc_2_mem.mem_b_addr[5]~input_o\ & \disc_2_mem.mem_b_addr[4]~input_o\ & \disc_2_mem.mem_b_addr[3]~input_o\ & \disc_2_mem.mem_b_addr[2]~input_o\ & \disc_2_mem.mem_b_addr[1]~input_o\
& \disc_2_mem.mem_b_addr[0]~input_o\);

\mem|altsyncram_component|auto_generated|q_a\(0) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(1) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(2) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(3) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(4) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(5) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(6) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(7) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\step|ALT_INV_cnt_s\(7) <= NOT \step|cnt_s\(7);
\step|ALT_INV_cnt_s\(1) <= NOT \step|cnt_s\(1);
\step|ALT_INV_cnt_s\(2) <= NOT \step|cnt_s\(2);
\step|ALT_INV_cnt_s\(3) <= NOT \step|cnt_s\(3);
\step|ALT_INV_cnt_s\(4) <= NOT \step|cnt_s\(4);
\step|ALT_INV_cnt_s\(11) <= NOT \step|cnt_s\(11);
\step|ALT_INV_cnt_s\(12) <= NOT \step|cnt_s\(12);
\step|ALT_INV_cnt_s\(15) <= NOT \step|cnt_s\(15);
\step|ALT_INV_cnt_s\(14) <= NOT \step|cnt_s\(14);
\step|ALT_INV_cnt_s\(13) <= NOT \step|cnt_s\(13);
\step|ALT_INV_cnt_s\(5) <= NOT \step|cnt_s\(5);
\step|ALT_INV_cnt_s\(8) <= NOT \step|cnt_s\(8);
\basis|control|main|ALT_INV_STATE.CHECK_END~q\ <= NOT \basis|control|main|STATE.CHECK_END~q\;
\button|ALT_INV_speed_sync_s.FOUR_X~q\ <= NOT \button|speed_sync_s.FOUR_X~q\;
\button|ALT_INV_speed_sync_s.TWO_X~q\ <= NOT \button|speed_sync_s.TWO_X~q\;
\basis|control|cnt_strat|ALT_INV_STATE~q\ <= NOT \basis|control|cnt_strat|STATE~q\;
\step|ALT_INV_Add0~9_sumout\ <= NOT \step|Add0~9_sumout\;
\basis|data|rb|reg_INIT|ALT_INV_q_s\(5) <= NOT \basis|data|rb|reg_INIT|q_s\(5);
\basis|data|rb|reg_INIT|ALT_INV_q_s\(4) <= NOT \basis|data|rb|reg_INIT|q_s\(4);
\basis|data|rb|reg_INIT|ALT_INV_q_s\(3) <= NOT \basis|data|rb|reg_INIT|q_s\(3);
\basis|data|rb|reg_INIT|ALT_INV_q_s\(2) <= NOT \basis|data|rb|reg_INIT|q_s\(2);
\basis|data|rb|reg_INIT|ALT_INV_q_s\(1) <= NOT \basis|data|rb|reg_INIT|q_s\(1);
\basis|data|rb|reg_INIT|ALT_INV_q_s\(0) <= NOT \basis|data|rb|reg_INIT|q_s\(0);
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(4) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(4);
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(2) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(2);
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(1) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(1);
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(0) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(0);
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(7) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(7);
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(6) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(6);
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(5) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(5);
\basis|data|rb|reg_GURU|ALT_INV_q_s\(7) <= NOT \basis|data|rb|reg_GURU|q_s\(7);
\basis|data|rb|reg_GURU|ALT_INV_q_s\(6) <= NOT \basis|data|rb|reg_GURU|q_s\(6);
\basis|data|rb|reg_GURU|ALT_INV_q_s\(2) <= NOT \basis|data|rb|reg_GURU|q_s\(2);
\basis|data|rb|reg_GURU|ALT_INV_q_s\(1) <= NOT \basis|data|rb|reg_GURU|q_s\(1);
\basis|data|rb|reg_GURU|ALT_INV_q_s\(0) <= NOT \basis|data|rb|reg_GURU|q_s\(0);
\basis|data|rb|reg_GURU|ALT_INV_q_s\(5) <= NOT \basis|data|rb|reg_GURU|q_s\(5);
\basis|data|rb|reg_GURU|ALT_INV_q_s\(4) <= NOT \basis|data|rb|reg_GURU|q_s\(4);
\basis|control|cnt_prep|ALT_INV_cnt_s\(26) <= NOT \basis|control|cnt_prep|cnt_s\(26);
\basis|control|cnt_prep|ALT_INV_cnt_s\(25) <= NOT \basis|control|cnt_prep|cnt_s\(25);
\basis|control|cnt_prep|ALT_INV_cnt_s\(1) <= NOT \basis|control|cnt_prep|cnt_s\(1);
\basis|control|cnt_prep|ALT_INV_cnt_s\(23) <= NOT \basis|control|cnt_prep|cnt_s\(23);
\basis|control|cnt_prep|ALT_INV_cnt_s\(22) <= NOT \basis|control|cnt_prep|cnt_s\(22);
\basis|control|cnt_prep|ALT_INV_cnt_s\(21) <= NOT \basis|control|cnt_prep|cnt_s\(21);
\basis|control|cnt_prep|ALT_INV_cnt_s\(20) <= NOT \basis|control|cnt_prep|cnt_s\(20);
\basis|control|cnt_prep|ALT_INV_cnt_s\(19) <= NOT \basis|control|cnt_prep|cnt_s\(19);
\basis|control|cnt_prep|ALT_INV_cnt_s\(18) <= NOT \basis|control|cnt_prep|cnt_s\(18);
\basis|control|cnt_prep|ALT_INV_cnt_s\(17) <= NOT \basis|control|cnt_prep|cnt_s\(17);
\basis|control|cnt_prep|ALT_INV_cnt_s\(16) <= NOT \basis|control|cnt_prep|cnt_s\(16);
\basis|control|cnt_prep|ALT_INV_cnt_s\(24) <= NOT \basis|control|cnt_prep|cnt_s\(24);
\basis|control|cnt_prep|ALT_INV_cnt_s\(14) <= NOT \basis|control|cnt_prep|cnt_s\(14);
\basis|control|cnt_prep|ALT_INV_cnt_s\(31) <= NOT \basis|control|cnt_prep|cnt_s\(31);
\basis|control|cnt_prep|ALT_INV_cnt_s\(30) <= NOT \basis|control|cnt_prep|cnt_s\(30);
\basis|control|cnt_prep|ALT_INV_cnt_s\(29) <= NOT \basis|control|cnt_prep|cnt_s\(29);
\basis|control|cnt_prep|ALT_INV_cnt_s\(28) <= NOT \basis|control|cnt_prep|cnt_s\(28);
\basis|control|cnt_prep|ALT_INV_cnt_s\(27) <= NOT \basis|control|cnt_prep|cnt_s\(27);
\basis|control|cnt_prep|ALT_INV_cnt_s\(6) <= NOT \basis|control|cnt_prep|cnt_s\(6);
\basis|control|cnt_prep|ALT_INV_cnt_s\(5) <= NOT \basis|control|cnt_prep|cnt_s\(5);
\basis|control|cnt_prep|ALT_INV_cnt_s\(4) <= NOT \basis|control|cnt_prep|cnt_s\(4);
\basis|control|cnt_prep|ALT_INV_cnt_s\(3) <= NOT \basis|control|cnt_prep|cnt_s\(3);
\basis|control|cnt_prep|ALT_INV_cnt_s\(2) <= NOT \basis|control|cnt_prep|cnt_s\(2);
\basis|control|cnt_prep|ALT_INV_cnt_s\(15) <= NOT \basis|control|cnt_prep|cnt_s\(15);
\basis|control|cnt_prep|ALT_INV_cnt_s\(11) <= NOT \basis|control|cnt_prep|cnt_s\(11);
\basis|control|cnt_prep|ALT_INV_cnt_s\(10) <= NOT \basis|control|cnt_prep|cnt_s\(10);
\basis|control|cnt_prep|ALT_INV_cnt_s\(9) <= NOT \basis|control|cnt_prep|cnt_s\(9);
\basis|control|cnt_prep|ALT_INV_cnt_s\(0) <= NOT \basis|control|cnt_prep|cnt_s\(0);
\basis|control|cnt_prep|ALT_INV_cnt_s\(8) <= NOT \basis|control|cnt_prep|cnt_s\(8);
\basis|control|cnt_prep|ALT_INV_cnt_s\(7) <= NOT \basis|control|cnt_prep|cnt_s\(7);
\basis|control|cnt_prep|ALT_INV_cnt_s\(13) <= NOT \basis|control|cnt_prep|cnt_s\(13);
\basis|control|cnt_prep|ALT_INV_cnt_s\(12) <= NOT \basis|control|cnt_prep|cnt_s\(12);
\basis|control|main|ALT_INV_STATE.CNT_PREPARE~q\ <= NOT \basis|control|main|STATE.CNT_PREPARE~q\;
\basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3) <= NOT \basis|data|rb|reg_PRE_GURU|q_s\(3);
\basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\ <= NOT \basis|control|guru|STATE.CLEAR_PREV~q\;
\basis|data|rb|reg_GURU|ALT_INV_q_s\(3) <= NOT \basis|data|rb|reg_GURU|q_s\(3);
\basis|control|cnt_strat|ALT_INV_cnt_s\(6) <= NOT \basis|control|cnt_strat|cnt_s\(6);
\basis|control|cnt_strat|ALT_INV_cnt_s\(5) <= NOT \basis|control|cnt_strat|cnt_s\(5);
\basis|control|cnt_strat|ALT_INV_cnt_s\(3) <= NOT \basis|control|cnt_strat|cnt_s\(3);
\basis|control|cnt_strat|ALT_INV_cnt_s\(2) <= NOT \basis|control|cnt_strat|cnt_s\(2);
\basis|control|cnt_strat|ALT_INV_cnt_s\(1) <= NOT \basis|control|cnt_strat|cnt_s\(1);
\basis|control|cnt_strat|ALT_INV_cnt_s\(0) <= NOT \basis|control|cnt_strat|cnt_s\(0);
\basis|control|cnt_strat|ALT_INV_cnt_s\(9) <= NOT \basis|control|cnt_strat|cnt_s\(9);
\basis|control|cnt_strat|ALT_INV_cnt_s\(10) <= NOT \basis|control|cnt_strat|cnt_s\(10);
\basis|control|cnt_strat|ALT_INV_cnt_s\(11) <= NOT \basis|control|cnt_strat|cnt_s\(11);
\basis|control|cnt_strat|ALT_INV_cnt_s\(12) <= NOT \basis|control|cnt_strat|cnt_s\(12);
\basis|control|cnt_strat|ALT_INV_cnt_s\(13) <= NOT \basis|control|cnt_strat|cnt_s\(13);
\basis|control|cnt_strat|ALT_INV_cnt_s\(14) <= NOT \basis|control|cnt_strat|cnt_s\(14);
\basis|control|cnt_strat|ALT_INV_cnt_s\(30) <= NOT \basis|control|cnt_strat|cnt_s\(30);
\basis|control|cnt_strat|ALT_INV_cnt_s\(31) <= NOT \basis|control|cnt_strat|cnt_s\(31);
\basis|control|cnt_strat|ALT_INV_cnt_s\(16) <= NOT \basis|control|cnt_strat|cnt_s\(16);
\basis|control|cnt_strat|ALT_INV_cnt_s\(4) <= NOT \basis|control|cnt_strat|cnt_s\(4);
\basis|control|cnt_strat|ALT_INV_cnt_s\(8) <= NOT \basis|control|cnt_strat|cnt_s\(8);
\basis|control|cnt_strat|ALT_INV_cnt_s\(7) <= NOT \basis|control|cnt_strat|cnt_s\(7);
\basis|control|cnt_strat|ALT_INV_cnt_s\(15) <= NOT \basis|control|cnt_strat|cnt_s\(15);
\basis|control|cnt_strat|ALT_INV_cnt_s\(25) <= NOT \basis|control|cnt_strat|cnt_s\(25);
\basis|control|cnt_strat|ALT_INV_cnt_s\(26) <= NOT \basis|control|cnt_strat|cnt_s\(26);
\basis|control|cnt_strat|ALT_INV_cnt_s\(27) <= NOT \basis|control|cnt_strat|cnt_s\(27);
\basis|control|cnt_strat|ALT_INV_cnt_s\(28) <= NOT \basis|control|cnt_strat|cnt_s\(28);
\basis|control|cnt_strat|ALT_INV_cnt_s\(29) <= NOT \basis|control|cnt_strat|cnt_s\(29);
\basis|control|cnt_strat|ALT_INV_cnt_s\(19) <= NOT \basis|control|cnt_strat|cnt_s\(19);
\basis|control|cnt_strat|ALT_INV_cnt_s\(18) <= NOT \basis|control|cnt_strat|cnt_s\(18);
\basis|control|cnt_strat|ALT_INV_cnt_s\(17) <= NOT \basis|control|cnt_strat|cnt_s\(17);
\basis|control|cnt_strat|ALT_INV_cnt_s\(21) <= NOT \basis|control|cnt_strat|cnt_s\(21);
\basis|control|cnt_strat|ALT_INV_cnt_s\(23) <= NOT \basis|control|cnt_strat|cnt_s\(23);
\basis|control|cnt_strat|ALT_INV_cnt_s\(24) <= NOT \basis|control|cnt_strat|cnt_s\(24);
\basis|control|cnt_strat|ALT_INV_cnt_s\(22) <= NOT \basis|control|cnt_strat|cnt_s\(22);
\basis|control|cnt_strat|ALT_INV_cnt_s\(20) <= NOT \basis|control|cnt_strat|cnt_s\(20);
\basis|control|main|ALT_INV_STATE.CNT_START~q\ <= NOT \basis|control|main|STATE.CNT_START~q\;
\step|ALT_INV_cnt_s\(9) <= NOT \step|cnt_s\(9);
\step|ALT_INV_cnt_s\(10) <= NOT \step|cnt_s\(10);
\step|ALT_INV_cnt_s\(6) <= NOT \step|cnt_s\(6);
\ref|ALT_INV_Add0~89_sumout\ <= NOT \ref|Add0~89_sumout\;
\ref|ALT_INV_Add0~85_sumout\ <= NOT \ref|Add0~85_sumout\;
\ref|ALT_INV_Add0~81_sumout\ <= NOT \ref|Add0~81_sumout\;
\ref|ALT_INV_Add0~77_sumout\ <= NOT \ref|Add0~77_sumout\;
\ref|ALT_INV_Add0~73_sumout\ <= NOT \ref|Add0~73_sumout\;
\ref|ALT_INV_Add0~69_sumout\ <= NOT \ref|Add0~69_sumout\;
\ref|ALT_INV_Add0~65_sumout\ <= NOT \ref|Add0~65_sumout\;
\ref|ALT_INV_Add0~61_sumout\ <= NOT \ref|Add0~61_sumout\;
\ref|ALT_INV_Add0~57_sumout\ <= NOT \ref|Add0~57_sumout\;
\ref|ALT_INV_Add0~53_sumout\ <= NOT \ref|Add0~53_sumout\;
\ref|ALT_INV_Add0~49_sumout\ <= NOT \ref|Add0~49_sumout\;
\ref|ALT_INV_Add0~45_sumout\ <= NOT \ref|Add0~45_sumout\;
\ref|ALT_INV_Add0~41_sumout\ <= NOT \ref|Add0~41_sumout\;
\ref|ALT_INV_Add0~37_sumout\ <= NOT \ref|Add0~37_sumout\;
\ref|ALT_INV_Add0~33_sumout\ <= NOT \ref|Add0~33_sumout\;
\ref|ALT_INV_Add0~29_sumout\ <= NOT \ref|Add0~29_sumout\;
\ref|ALT_INV_Add0~25_sumout\ <= NOT \ref|Add0~25_sumout\;
\ref|ALT_INV_Add0~21_sumout\ <= NOT \ref|Add0~21_sumout\;
\ref|ALT_INV_Add0~17_sumout\ <= NOT \ref|Add0~17_sumout\;
\ref|ALT_INV_Add0~13_sumout\ <= NOT \ref|Add0~13_sumout\;
\ref|ALT_INV_Add0~9_sumout\ <= NOT \ref|Add0~9_sumout\;
\ref|ALT_INV_Add0~5_sumout\ <= NOT \ref|Add0~5_sumout\;
\ref|ALT_INV_Add0~1_sumout\ <= NOT \ref|Add0~1_sumout\;
\ref|ALT_INV_Add2~125_sumout\ <= NOT \ref|Add2~125_sumout\;
\ref|ALT_INV_Add2~121_sumout\ <= NOT \ref|Add2~121_sumout\;
\ref|ALT_INV_Add2~117_sumout\ <= NOT \ref|Add2~117_sumout\;
\ref|ALT_INV_Add2~113_sumout\ <= NOT \ref|Add2~113_sumout\;
\ref|ALT_INV_Add2~109_sumout\ <= NOT \ref|Add2~109_sumout\;
\ref|ALT_INV_Add2~105_sumout\ <= NOT \ref|Add2~105_sumout\;
\ref|ALT_INV_Add2~101_sumout\ <= NOT \ref|Add2~101_sumout\;
\ref|ALT_INV_Add2~97_sumout\ <= NOT \ref|Add2~97_sumout\;
\ref|ALT_INV_Add2~93_sumout\ <= NOT \ref|Add2~93_sumout\;
\ref|ALT_INV_Add2~89_sumout\ <= NOT \ref|Add2~89_sumout\;
\ref|ALT_INV_Add2~85_sumout\ <= NOT \ref|Add2~85_sumout\;
\ref|ALT_INV_Add2~81_sumout\ <= NOT \ref|Add2~81_sumout\;
\ref|ALT_INV_Add2~77_sumout\ <= NOT \ref|Add2~77_sumout\;
\ref|ALT_INV_Add2~73_sumout\ <= NOT \ref|Add2~73_sumout\;
\ref|ALT_INV_Add2~69_sumout\ <= NOT \ref|Add2~69_sumout\;
\ref|ALT_INV_Add2~65_sumout\ <= NOT \ref|Add2~65_sumout\;
\ref|ALT_INV_Add2~61_sumout\ <= NOT \ref|Add2~61_sumout\;
\ref|ALT_INV_Add2~57_sumout\ <= NOT \ref|Add2~57_sumout\;
\ref|ALT_INV_Add2~53_sumout\ <= NOT \ref|Add2~53_sumout\;
\ref|ALT_INV_Add2~49_sumout\ <= NOT \ref|Add2~49_sumout\;
\ref|ALT_INV_Add2~45_sumout\ <= NOT \ref|Add2~45_sumout\;
\ref|ALT_INV_Add2~41_sumout\ <= NOT \ref|Add2~41_sumout\;
\ref|ALT_INV_Add2~37_sumout\ <= NOT \ref|Add2~37_sumout\;
\ref|ALT_INV_Add2~33_sumout\ <= NOT \ref|Add2~33_sumout\;
\ref|ALT_INV_Add2~29_sumout\ <= NOT \ref|Add2~29_sumout\;
\ref|ALT_INV_Add2~25_sumout\ <= NOT \ref|Add2~25_sumout\;
\ref|ALT_INV_Add2~21_sumout\ <= NOT \ref|Add2~21_sumout\;
\ref|ALT_INV_Add2~17_sumout\ <= NOT \ref|Add2~17_sumout\;
\ref|ALT_INV_Add2~13_sumout\ <= NOT \ref|Add2~13_sumout\;
\ref|ALT_INV_Add2~9_sumout\ <= NOT \ref|Add2~9_sumout\;
\ref|ALT_INV_Add2~5_sumout\ <= NOT \ref|Add2~5_sumout\;
\ref|ALT_INV_Add2~1_sumout\ <= NOT \ref|Add2~1_sumout\;
\basis|data|rb|reg_INIT|ALT_INV_q_s\(7) <= NOT \basis|data|rb|reg_INIT|q_s\(7);
\basis|data|rb|reg_INIT|ALT_INV_q_s\(6) <= NOT \basis|data|rb|reg_INIT|q_s\(6);
\basis|control|cnt_prep|ALT_INV_STATE~q\ <= NOT \basis|control|cnt_prep|STATE~q\;
\basis|control|guru|ALT_INV_STATE.CHECK_LAST~q\ <= NOT \basis|control|guru|STATE.CHECK_LAST~q\;
\basis|control|init|ALT_INV_STATE.MEM_WALK~q\ <= NOT \basis|control|init|STATE.MEM_WALK~q\;
\basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\ <= NOT \basis|control|guru|STATE.WAIT_COUNT_GURU~q\;
\basis|control|cnt_prep|ALT_INV_Equal0~6_combout\ <= NOT \basis|control|cnt_prep|Equal0~6_combout\;
\basis|control|cnt_prep|ALT_INV_Equal0~5_combout\ <= NOT \basis|control|cnt_prep|Equal0~5_combout\;
\basis|control|cnt_prep|ALT_INV_Equal0~4_combout\ <= NOT \basis|control|cnt_prep|Equal0~4_combout\;
\basis|control|cnt_prep|ALT_INV_Equal0~3_combout\ <= NOT \basis|control|cnt_prep|Equal0~3_combout\;
\basis|control|cnt_prep|ALT_INV_Equal0~2_combout\ <= NOT \basis|control|cnt_prep|Equal0~2_combout\;
\basis|control|cnt_prep|ALT_INV_Equal0~1_combout\ <= NOT \basis|control|cnt_prep|Equal0~1_combout\;
\basis|control|cnt_prep|ALT_INV_Equal0~0_combout\ <= NOT \basis|control|cnt_prep|Equal0~0_combout\;
\basis|control|main|ALT_INV_Selector0~1_combout\ <= NOT \basis|control|main|Selector0~1_combout\;
\hold3|ALT_INV_state_reg~q\ <= NOT \hold3|state_reg~q\;
\basis|control|main|ALT_INV_Selector0~0_combout\ <= NOT \basis|control|main|Selector0~0_combout\;
\basis|control|guru|ALT_INV_STATE.LAST~q\ <= NOT \basis|control|guru|STATE.LAST~q\;
\basis|control|cnt_strat|ALT_INV_Equal0~6_combout\ <= NOT \basis|control|cnt_strat|Equal0~6_combout\;
\basis|control|cnt_strat|ALT_INV_Equal0~5_combout\ <= NOT \basis|control|cnt_strat|Equal0~5_combout\;
\basis|control|cnt_strat|ALT_INV_Equal0~4_combout\ <= NOT \basis|control|cnt_strat|Equal0~4_combout\;
\basis|control|cnt_strat|ALT_INV_Equal0~3_combout\ <= NOT \basis|control|cnt_strat|Equal0~3_combout\;
\basis|control|cnt_strat|ALT_INV_Equal0~2_combout\ <= NOT \basis|control|cnt_strat|Equal0~2_combout\;
\basis|control|cnt_strat|ALT_INV_Equal0~1_combout\ <= NOT \basis|control|cnt_strat|Equal0~1_combout\;
\basis|control|cnt_strat|ALT_INV_Equal0~0_combout\ <= NOT \basis|control|cnt_strat|Equal0~0_combout\;
\step|ALT_INV_process_0~2_combout\ <= NOT \step|process_0~2_combout\;
\step|ALT_INV_rdy_v4_s~0_combout\ <= NOT \step|rdy_v4_s~0_combout\;
\button|ALT_INV_Mux0~0_combout\ <= NOT \button|Mux0~0_combout\;
\step|ALT_INV_Equal0~2_combout\ <= NOT \step|Equal0~2_combout\;
\step|ALT_INV_Equal1~1_combout\ <= NOT \step|Equal1~1_combout\;
\step|ALT_INV_rdy_v1_s~0_combout\ <= NOT \step|rdy_v1_s~0_combout\;
\step|ALT_INV_process_0~1_combout\ <= NOT \step|process_0~1_combout\;
\step|ALT_INV_process_0~0_combout\ <= NOT \step|process_0~0_combout\;
\step|ALT_INV_Equal1~0_combout\ <= NOT \step|Equal1~0_combout\;
\step|ALT_INV_Equal0~1_combout\ <= NOT \step|Equal0~1_combout\;
\step|ALT_INV_Equal0~0_combout\ <= NOT \step|Equal0~0_combout\;
\step|ALT_INV_cnt_s\(0) <= NOT \step|cnt_s\(0);
\ref|ALT_INV_state_reg.unm_godisc_BL~q\ <= NOT \ref|state_reg.unm_godisc_BL~q\;
\ref|ALT_INV_state_reg.unm_go_discB~q\ <= NOT \ref|state_reg.unm_go_discB~q\;
\hold|ALT_INV_holdedOut~combout\ <= NOT \hold|holdedOut~combout\;
\ref|ALT_INV_state_reg.conflict~q\ <= NOT \ref|state_reg.conflict~q\;
\ref|ALT_INV_state_reg.conflict1~q\ <= NOT \ref|state_reg.conflict1~q\;
\hold|ALT_INV_state_reg~q\ <= NOT \hold|state_reg~q\;
\hold2|ALT_INV_holdedOut~combout\ <= NOT \hold2|holdedOut~combout\;
\ref|ALT_INV_state_reg.detect~q\ <= NOT \ref|state_reg.detect~q\;
\ref|ALT_INV_state_reg.detect1~q\ <= NOT \ref|state_reg.detect1~q\;
\basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\ <= NOT \basis|control|main|STATE.STEP_ACTIVATION~q\;
\hold2|ALT_INV_state_reg~q\ <= NOT \hold2|state_reg~q\;
\step|ALT_INV_cnt_disc_rdy~1_combout\ <= NOT \step|cnt_disc_rdy~1_combout\;
\step|ALT_INV_cnt_disc_rdy~0_combout\ <= NOT \step|cnt_disc_rdy~0_combout\;
\step|ALT_INV_rdy_v8_s~q\ <= NOT \step|rdy_v8_s~q\;
\step|ALT_INV_rdy_v4_s~q\ <= NOT \step|rdy_v4_s~q\;
\step|ALT_INV_rdy_v2_s~q\ <= NOT \step|rdy_v2_s~q\;
\button|ALT_INV_speed_sync_s.ONE_X~q\ <= NOT \button|speed_sync_s.ONE_X~q\;
\step|ALT_INV_rdy_v1_s~q\ <= NOT \step|rdy_v1_s~q\;
\basis|data|n_g|ALT_INV_ng_2_RB[0]~10_combout\ <= NOT \basis|data|n_g|ng_2_RB[0]~10_combout\;
\ref|ALT_INV_Selector47~0_combout\ <= NOT \ref|Selector47~0_combout\;
\ref|ALT_INV_Selector51~0_combout\ <= NOT \ref|Selector51~0_combout\;
\ref|ALT_INV_Add1~125_sumout\ <= NOT \ref|Add1~125_sumout\;
\ref|ALT_INV_Add1~121_sumout\ <= NOT \ref|Add1~121_sumout\;
\ref|ALT_INV_Add1~117_sumout\ <= NOT \ref|Add1~117_sumout\;
\ref|ALT_INV_Add1~113_sumout\ <= NOT \ref|Add1~113_sumout\;
\ref|ALT_INV_Add1~109_sumout\ <= NOT \ref|Add1~109_sumout\;
\ref|ALT_INV_Add1~105_sumout\ <= NOT \ref|Add1~105_sumout\;
\ref|ALT_INV_Add1~101_sumout\ <= NOT \ref|Add1~101_sumout\;
\ref|ALT_INV_Add1~97_sumout\ <= NOT \ref|Add1~97_sumout\;
\ref|ALT_INV_Add1~93_sumout\ <= NOT \ref|Add1~93_sumout\;
\ref|ALT_INV_Add1~89_sumout\ <= NOT \ref|Add1~89_sumout\;
\ref|ALT_INV_Add1~85_sumout\ <= NOT \ref|Add1~85_sumout\;
\ref|ALT_INV_Add1~81_sumout\ <= NOT \ref|Add1~81_sumout\;
\ref|ALT_INV_Add1~77_sumout\ <= NOT \ref|Add1~77_sumout\;
\ref|ALT_INV_Add1~73_sumout\ <= NOT \ref|Add1~73_sumout\;
\ref|ALT_INV_Add1~69_sumout\ <= NOT \ref|Add1~69_sumout\;
\ref|ALT_INV_Add1~65_sumout\ <= NOT \ref|Add1~65_sumout\;
\ref|ALT_INV_Add1~61_sumout\ <= NOT \ref|Add1~61_sumout\;
\ref|ALT_INV_Add1~57_sumout\ <= NOT \ref|Add1~57_sumout\;
\ref|ALT_INV_Add1~53_sumout\ <= NOT \ref|Add1~53_sumout\;
\ref|ALT_INV_Add1~49_sumout\ <= NOT \ref|Add1~49_sumout\;
\ref|ALT_INV_Add1~45_sumout\ <= NOT \ref|Add1~45_sumout\;
\ref|ALT_INV_Add1~41_sumout\ <= NOT \ref|Add1~41_sumout\;
\ref|ALT_INV_Add1~37_sumout\ <= NOT \ref|Add1~37_sumout\;
\ref|ALT_INV_Add1~33_sumout\ <= NOT \ref|Add1~33_sumout\;
\ref|ALT_INV_Add1~29_sumout\ <= NOT \ref|Add1~29_sumout\;
\ref|ALT_INV_Add1~25_sumout\ <= NOT \ref|Add1~25_sumout\;
\ref|ALT_INV_Add1~21_sumout\ <= NOT \ref|Add1~21_sumout\;
\ref|ALT_INV_Add1~17_sumout\ <= NOT \ref|Add1~17_sumout\;
\ref|ALT_INV_Add1~13_sumout\ <= NOT \ref|Add1~13_sumout\;
\ref|ALT_INV_Add1~9_sumout\ <= NOT \ref|Add1~9_sumout\;
\ref|ALT_INV_Add1~5_sumout\ <= NOT \ref|Add1~5_sumout\;
\ref|ALT_INV_Add1~1_sumout\ <= NOT \ref|Add1~1_sumout\;
\ref|ALT_INV_Add0~125_sumout\ <= NOT \ref|Add0~125_sumout\;
\ref|ALT_INV_Add0~121_sumout\ <= NOT \ref|Add0~121_sumout\;
\ref|ALT_INV_Add0~117_sumout\ <= NOT \ref|Add0~117_sumout\;
\ref|ALT_INV_Add0~113_sumout\ <= NOT \ref|Add0~113_sumout\;
\ref|ALT_INV_Add0~109_sumout\ <= NOT \ref|Add0~109_sumout\;
\ref|ALT_INV_Add0~105_sumout\ <= NOT \ref|Add0~105_sumout\;
\ref|ALT_INV_Add0~101_sumout\ <= NOT \ref|Add0~101_sumout\;
\ref|ALT_INV_Add0~97_sumout\ <= NOT \ref|Add0~97_sumout\;
\ref|ALT_INV_Add0~93_sumout\ <= NOT \ref|Add0~93_sumout\;
\basis|control|main|ALT_INV_Selector1~2_combout\ <= NOT \basis|control|main|Selector1~2_combout\;
\basis|control|main|ALT_INV_STATE.HIT_POINT~q\ <= NOT \basis|control|main|STATE.HIT_POINT~q\;
\basis|control|main|ALT_INV_Selector1~1_combout\ <= NOT \basis|control|main|Selector1~1_combout\;
\basis|control|main|ALT_INV_Selector1~0_combout\ <= NOT \basis|control|main|Selector1~0_combout\;
\hold2|ALT_INV_state_next~1_combout\ <= NOT \hold2|state_next~1_combout\;
\hold2|ALT_INV_state_next~0_combout\ <= NOT \hold2|state_next~0_combout\;
\hold3|ALT_INV_state_next~0_combout\ <= NOT \hold3|state_next~0_combout\;
\ref|ALT_INV_go_guru~combout\ <= NOT \ref|go_guru~combout\;
\ref|ALT_INV_state_reg.unm_go_guru~q\ <= NOT \ref|state_reg.unm_go_guru~q\;
\ref|ALT_INV_state_reg.go_guru_state~q\ <= NOT \ref|state_reg.go_guru_state~q\;
\basis|control|guru|ALT_INV_STATE.INCR~q\ <= NOT \basis|control|guru|STATE.INCR~q\;
\basis|data|n_g|ALT_INV_ng_2_RB[3]~0_combout\ <= NOT \basis|data|n_g|ng_2_RB[3]~0_combout\;
\basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\ <= NOT \basis|control|ctrl_2_dp.alu_ctrl~0_combout\;
\basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\ <= NOT \basis|control|ctrl_2_dp.ng_cte_incr~1_combout\;
\basis|control|guru|ALT_INV_STATE.RAND~q\ <= NOT \basis|control|guru|STATE.RAND~q\;
\basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~0_combout\ <= NOT \basis|control|ctrl_2_dp.ng_cte_incr~0_combout\;
\basis|control|init|ALT_INV_STATE.ZERO~q\ <= NOT \basis|control|init|STATE.ZERO~q\;
\basis|data|rb|ALT_INV_rb_out[5]~7_combout\ <= NOT \basis|data|rb|rb_out[5]~7_combout\;
\basis|data|rb|ALT_INV_rb_out[4]~6_combout\ <= NOT \basis|data|rb|rb_out[4]~6_combout\;
\basis|data|rb|ALT_INV_rb_out[3]~5_combout\ <= NOT \basis|data|rb|rb_out[3]~5_combout\;
\basis|data|rb|ALT_INV_rb_out[2]~4_combout\ <= NOT \basis|data|rb|rb_out[2]~4_combout\;
\basis|data|rb|ALT_INV_rb_out[1]~3_combout\ <= NOT \basis|data|rb|rb_out[1]~3_combout\;
\basis|data|rb|ALT_INV_rb_out[0]~2_combout\ <= NOT \basis|data|rb|rb_out[0]~2_combout\;
\basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\ <= NOT \basis|control|ctrl_2_mem.mem_wr_en~1_combout\;
\basis|control|guru|ALT_INV_STATE.START_WALKING~q\ <= NOT \basis|control|guru|STATE.START_WALKING~q\;
\basis|control|guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\ <= NOT \basis|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\;
\basis|control|guru|ALT_INV_STATE.WRITE_GURU~q\ <= NOT \basis|control|guru|STATE.WRITE_GURU~q\;
\basis|control|guru|ALT_INV_STATE.WRITE_DUO~q\ <= NOT \basis|control|guru|STATE.WRITE_DUO~q\;
\basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\ <= NOT \basis|control|guru|STATE.WRITE_RAND~q\;
\basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\ <= NOT \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\;
\basis|control|init|ALT_INV_STATE.IDLE~q\ <= NOT \basis|control|init|STATE.IDLE~q\;
\basis|control|init|ALT_INV_STATE.DONE~q\ <= NOT \basis|control|init|STATE.DONE~q\;
\basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\ <= NOT \basis|control|main|STATE.INIT_ACTIVATION~q\;
\ref|ALT_INV_Equal2~13_combout\ <= NOT \ref|Equal2~13_combout\;
\ref|ALT_INV_Selector17~0_combout\ <= NOT \ref|Selector17~0_combout\;
\ref|ALT_INV_state_reg.wait50b~q\ <= NOT \ref|state_reg.wait50b~q\;
\ref|ALT_INV_LessThan0~5_combout\ <= NOT \ref|LessThan0~5_combout\;
\ref|ALT_INV_LessThan0~4_combout\ <= NOT \ref|LessThan0~4_combout\;
\ref|ALT_INV_mainCnt\(19) <= NOT \ref|mainCnt\(19);
\ref|ALT_INV_mainCnt\(20) <= NOT \ref|mainCnt\(20);
\ref|ALT_INV_mainCnt\(21) <= NOT \ref|mainCnt\(21);
\ref|ALT_INV_mainCnt\(22) <= NOT \ref|mainCnt\(22);
\ref|ALT_INV_mainCnt\(23) <= NOT \ref|mainCnt\(23);
\ref|ALT_INV_mainCnt\(24) <= NOT \ref|mainCnt\(24);
\ref|ALT_INV_LessThan0~3_combout\ <= NOT \ref|LessThan0~3_combout\;
\ref|ALT_INV_mainCnt\(25) <= NOT \ref|mainCnt\(25);
\ref|ALT_INV_mainCnt\(26) <= NOT \ref|mainCnt\(26);
\ref|ALT_INV_mainCnt\(27) <= NOT \ref|mainCnt\(27);
\ref|ALT_INV_mainCnt\(28) <= NOT \ref|mainCnt\(28);
\ref|ALT_INV_mainCnt\(29) <= NOT \ref|mainCnt\(29);
\ref|ALT_INV_mainCnt\(30) <= NOT \ref|mainCnt\(30);
\ref|ALT_INV_LessThan0~2_combout\ <= NOT \ref|LessThan0~2_combout\;
\ref|ALT_INV_mainCnt\(13) <= NOT \ref|mainCnt\(13);
\ref|ALT_INV_mainCnt\(14) <= NOT \ref|mainCnt\(14);
\ref|ALT_INV_mainCnt\(15) <= NOT \ref|mainCnt\(15);
\ref|ALT_INV_mainCnt\(16) <= NOT \ref|mainCnt\(16);
\ref|ALT_INV_mainCnt\(17) <= NOT \ref|mainCnt\(17);
\ref|ALT_INV_mainCnt\(18) <= NOT \ref|mainCnt\(18);
\ref|ALT_INV_LessThan0~1_combout\ <= NOT \ref|LessThan0~1_combout\;
\ref|ALT_INV_mainCnt\(7) <= NOT \ref|mainCnt\(7);
\ref|ALT_INV_mainCnt\(8) <= NOT \ref|mainCnt\(8);
\ref|ALT_INV_mainCnt\(9) <= NOT \ref|mainCnt\(9);
\ref|ALT_INV_mainCnt\(10) <= NOT \ref|mainCnt\(10);
\ref|ALT_INV_mainCnt\(11) <= NOT \ref|mainCnt\(11);
\ref|ALT_INV_mainCnt\(12) <= NOT \ref|mainCnt\(12);
\ref|ALT_INV_LessThan0~0_combout\ <= NOT \ref|LessThan0~0_combout\;
\ref|ALT_INV_mainCnt\(1) <= NOT \ref|mainCnt\(1);
\ref|ALT_INV_mainCnt\(2) <= NOT \ref|mainCnt\(2);
\ref|ALT_INV_mainCnt\(3) <= NOT \ref|mainCnt\(3);
\ref|ALT_INV_mainCnt\(4) <= NOT \ref|mainCnt\(4);
\ref|ALT_INV_mainCnt\(5) <= NOT \ref|mainCnt\(5);
\ref|ALT_INV_mainCnt\(6) <= NOT \ref|mainCnt\(6);
\ref|ALT_INV_mainCnt\(0) <= NOT \ref|mainCnt\(0);
\ref|ALT_INV_mainCnt\(31) <= NOT \ref|mainCnt\(31);
\ref|ALT_INV_Selector15~0_combout\ <= NOT \ref|Selector15~0_combout\;
\ref|ALT_INV_Equal2~12_combout\ <= NOT \ref|Equal2~12_combout\;
\ref|ALT_INV_Equal2~11_combout\ <= NOT \ref|Equal2~11_combout\;
\ref|ALT_INV_Equal2~10_combout\ <= NOT \ref|Equal2~10_combout\;
\ref|ALT_INV_Equal2~9_combout\ <= NOT \ref|Equal2~9_combout\;
\ref|ALT_INV_Equal5~3_combout\ <= NOT \ref|Equal5~3_combout\;
\ref|ALT_INV_Equal5~2_combout\ <= NOT \ref|Equal5~2_combout\;
\ref|ALT_INV_Equal5~1_combout\ <= NOT \ref|Equal5~1_combout\;
\ref|ALT_INV_Equal5~0_combout\ <= NOT \ref|Equal5~0_combout\;
\ref|ALT_INV_Equal4~3_combout\ <= NOT \ref|Equal4~3_combout\;
\ref|ALT_INV_Equal4~2_combout\ <= NOT \ref|Equal4~2_combout\;
\ref|ALT_INV_Equal4~1_combout\ <= NOT \ref|Equal4~1_combout\;
\ref|ALT_INV_Equal4~0_combout\ <= NOT \ref|Equal4~0_combout\;
\ref|ALT_INV_state_reg.checkMiddle~q\ <= NOT \ref|state_reg.checkMiddle~q\;
\ref|ALT_INV_Equal2~8_combout\ <= NOT \ref|Equal2~8_combout\;
\ref|ALT_INV_Equal2~7_combout\ <= NOT \ref|Equal2~7_combout\;
\ref|ALT_INV_Equal2~6_combout\ <= NOT \ref|Equal2~6_combout\;
\ref|ALT_INV_Equal2~5_combout\ <= NOT \ref|Equal2~5_combout\;
\ref|ALT_INV_Equal2~4_combout\ <= NOT \ref|Equal2~4_combout\;
\ALT_INV_disc_prev_s[2]~2_combout\ <= NOT \disc_prev_s[2]~2_combout\;
\ALT_INV_disc_prev_s[1]~1_combout\ <= NOT \disc_prev_s[1]~1_combout\;
\ALT_INV_disc_prev_s[0]~0_combout\ <= NOT \disc_prev_s[0]~0_combout\;
\ref|ALT_INV_Equal2~3_combout\ <= NOT \ref|Equal2~3_combout\;
\ref|ALT_INV_Equal2~2_combout\ <= NOT \ref|Equal2~2_combout\;
\ref|ALT_INV_Equal2~1_combout\ <= NOT \ref|Equal2~1_combout\;
\ref|ALT_INV_state_reg.checkTop~q\ <= NOT \ref|state_reg.checkTop~q\;
\ref|ALT_INV_waitNGCount\(10) <= NOT \ref|waitNGCount\(10);
\ref|ALT_INV_waitNGCount\(11) <= NOT \ref|waitNGCount\(11);
\ref|ALT_INV_waitNGCount\(12) <= NOT \ref|waitNGCount\(12);
\ref|ALT_INV_waitNGCount\(13) <= NOT \ref|waitNGCount\(13);
\ref|ALT_INV_Equal0~1_combout\ <= NOT \ref|Equal0~1_combout\;
\ref|ALT_INV_waitNGCount\(2) <= NOT \ref|waitNGCount\(2);
\ref|ALT_INV_waitNGCount\(3) <= NOT \ref|waitNGCount\(3);
\ref|ALT_INV_waitNGCount\(4) <= NOT \ref|waitNGCount\(4);
\ref|ALT_INV_waitNGCount\(5) <= NOT \ref|waitNGCount\(5);
\ref|ALT_INV_waitNGCount\(6) <= NOT \ref|waitNGCount\(6);
\ref|ALT_INV_waitNGCount\(7) <= NOT \ref|waitNGCount\(7);
\ref|ALT_INV_Equal0~0_combout\ <= NOT \ref|Equal0~0_combout\;
\ref|ALT_INV_waitNGCount\(0) <= NOT \ref|waitNGCount\(0);
\ref|ALT_INV_waitNGCount\(1) <= NOT \ref|waitNGCount\(1);
\ref|ALT_INV_stateG_reg.rdy0~q\ <= NOT \ref|stateG_reg.rdy0~q\;
\basis|control|main|ALT_INV_STATE~10_combout\ <= NOT \basis|control|main|STATE~10_combout\;
\basis|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\ <= NOT \basis|control|guru|STATE.CHECK_SAME_ADDR~q\;
\ref|ALT_INV_Selector52~0_combout\ <= NOT \ref|Selector52~0_combout\;
\ref|ALT_INV_Selector19~0_combout\ <= NOT \ref|Selector19~0_combout\;
\ref|ALT_INV_Selector48~0_combout\ <= NOT \ref|Selector48~0_combout\;
\ref|ALT_INV_mainCnt[5]~1_combout\ <= NOT \ref|mainCnt[5]~1_combout\;
\ref|ALT_INV_tick_disc~combout\ <= NOT \ref|tick_disc~combout\;
\ref|ALT_INV_stateD_reg.waitNClk~q\ <= NOT \ref|stateD_reg.waitNClk~q\;
\ref|ALT_INV_stateD_reg.rdy1~q\ <= NOT \ref|stateD_reg.rdy1~q\;
\ref|ALT_INV_state_reg.idle~q\ <= NOT \ref|state_reg.idle~q\;
\ref|ALT_INV_Selector22~0_combout\ <= NOT \ref|Selector22~0_combout\;
\ref|ALT_INV_mainCnt[5]~0_combout\ <= NOT \ref|mainCnt[5]~0_combout\;
\ref|ALT_INV_state_reg.wait50l~q\ <= NOT \ref|state_reg.wait50l~q\;
\ref|ALT_INV_state_reg.wait55~q\ <= NOT \ref|state_reg.wait55~q\;
\hold|ALT_INV_state_next~1_combout\ <= NOT \hold|state_next~1_combout\;
\hold|ALT_INV_state_next~0_combout\ <= NOT \hold|state_next~0_combout\;
\basis|data|rb|ALT_INV_rb_out[7]~9_combout\ <= NOT \basis|data|rb|rb_out[7]~9_combout\;
\basis|data|rb|ALT_INV_rb_out[6]~8_combout\ <= NOT \basis|data|rb|rb_out[6]~8_combout\;
\basis|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\ <= NOT \basis|data|alu_1|add|adder_6|aux_and_3~combout\;
\basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|q_s\(0);
\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0);
\basis|data|n_g|ALT_INV_ng_2_RB[0]~4_combout\ <= NOT \basis|data|n_g|ng_2_RB[0]~4_combout\;
\basis|data|n_g|ALT_INV_ng_2_RB[0]~3_combout\ <= NOT \basis|data|n_g|ng_2_RB[0]~3_combout\;
\basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\ <= NOT \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\;
\basis|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\ <= NOT \basis|data|alu_1|add|adder_4|aux_and_3~combout\;
\ref|ALT_INV_state_reg.wait50~q\ <= NOT \ref|state_reg.wait50~q\;
\ref|ALT_INV_tick_guru~combout\ <= NOT \ref|tick_guru~combout\;
\ref|ALT_INV_stateG_reg.waitNClk~q\ <= NOT \ref|stateG_reg.waitNClk~q\;
\ref|ALT_INV_stateG_reg.rdy1~q\ <= NOT \ref|stateG_reg.rdy1~q\;
\ref|ALT_INV_Selector6~0_combout\ <= NOT \ref|Selector6~0_combout\;
\ref|ALT_INV_Selector5~0_combout\ <= NOT \ref|Selector5~0_combout\;
\ref|ALT_INV_Selector0~0_combout\ <= NOT \ref|Selector0~0_combout\;
\ref|ALT_INV_Selector54~0_combout\ <= NOT \ref|Selector54~0_combout\;
\ref|ALT_INV_Selector55~0_combout\ <= NOT \ref|Selector55~0_combout\;
\ref|ALT_INV_Selector12~0_combout\ <= NOT \ref|Selector12~0_combout\;
\ref|ALT_INV_Selector11~0_combout\ <= NOT \ref|Selector11~0_combout\;
\basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|q_s\(0);
\ref|ALT_INV_Selector101~0_combout\ <= NOT \ref|Selector101~0_combout\;
\ref|ALT_INV_Selector102~0_combout\ <= NOT \ref|Selector102~0_combout\;
\ref|ALT_INV_Selector103~0_combout\ <= NOT \ref|Selector103~0_combout\;
\ref|ALT_INV_Selector104~0_combout\ <= NOT \ref|Selector104~0_combout\;
\ref|ALT_INV_Selector105~0_combout\ <= NOT \ref|Selector105~0_combout\;
\ref|ALT_INV_Selector106~0_combout\ <= NOT \ref|Selector106~0_combout\;
\ref|ALT_INV_Selector107~0_combout\ <= NOT \ref|Selector107~0_combout\;
\ref|ALT_INV_Selector108~0_combout\ <= NOT \ref|Selector108~0_combout\;
\ref|ALT_INV_Selector109~0_combout\ <= NOT \ref|Selector109~0_combout\;
\ref|ALT_INV_Selector110~0_combout\ <= NOT \ref|Selector110~0_combout\;
\ref|ALT_INV_Selector111~0_combout\ <= NOT \ref|Selector111~0_combout\;
\ref|ALT_INV_Selector112~0_combout\ <= NOT \ref|Selector112~0_combout\;
\ref|ALT_INV_Selector95~0_combout\ <= NOT \ref|Selector95~0_combout\;
\ref|ALT_INV_Selector96~0_combout\ <= NOT \ref|Selector96~0_combout\;
\ref|ALT_INV_Selector97~0_combout\ <= NOT \ref|Selector97~0_combout\;
\ref|ALT_INV_Selector98~0_combout\ <= NOT \ref|Selector98~0_combout\;
\ref|ALT_INV_Selector99~0_combout\ <= NOT \ref|Selector99~0_combout\;
\ref|ALT_INV_Selector100~0_combout\ <= NOT \ref|Selector100~0_combout\;
\ref|ALT_INV_Selector89~0_combout\ <= NOT \ref|Selector89~0_combout\;
\ref|ALT_INV_Selector90~0_combout\ <= NOT \ref|Selector90~0_combout\;
\ref|ALT_INV_Selector91~0_combout\ <= NOT \ref|Selector91~0_combout\;
\ref|ALT_INV_Selector92~0_combout\ <= NOT \ref|Selector92~0_combout\;
\ref|ALT_INV_Selector93~0_combout\ <= NOT \ref|Selector93~0_combout\;
\ref|ALT_INV_Selector94~0_combout\ <= NOT \ref|Selector94~0_combout\;
\ref|ALT_INV_Selector83~0_combout\ <= NOT \ref|Selector83~0_combout\;
\ref|ALT_INV_Selector84~0_combout\ <= NOT \ref|Selector84~0_combout\;
\ref|ALT_INV_Selector85~0_combout\ <= NOT \ref|Selector85~0_combout\;
\ref|ALT_INV_Selector86~0_combout\ <= NOT \ref|Selector86~0_combout\;
\ref|ALT_INV_Selector87~0_combout\ <= NOT \ref|Selector87~0_combout\;
\ref|ALT_INV_Selector88~0_combout\ <= NOT \ref|Selector88~0_combout\;
\ref|ALT_INV_Selector80~0_combout\ <= NOT \ref|Selector80~0_combout\;
\ref|ALT_INV_Selector82~0_combout\ <= NOT \ref|Selector82~0_combout\;
\ref|ALT_INV_stateD_reg.waitRdy0~q\ <= NOT \ref|stateD_reg.waitRdy0~q\;
\basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|q_s\(0);
\ref|ALT_INV_stateG_reg.waitRdy0~q\ <= NOT \ref|stateG_reg.waitRdy0~q\;
\ref|ALT_INV_Equal1~6_combout\ <= NOT \ref|Equal1~6_combout\;
\ref|ALT_INV_Equal1~5_combout\ <= NOT \ref|Equal1~5_combout\;
\ref|ALT_INV_waitNDCount\(20) <= NOT \ref|waitNDCount\(20);
\ref|ALT_INV_waitNDCount\(21) <= NOT \ref|waitNDCount\(21);
\ref|ALT_INV_waitNDCount\(22) <= NOT \ref|waitNDCount\(22);
\ref|ALT_INV_waitNDCount\(23) <= NOT \ref|waitNDCount\(23);
\ref|ALT_INV_waitNDCount\(24) <= NOT \ref|waitNDCount\(24);
\ref|ALT_INV_waitNDCount\(25) <= NOT \ref|waitNDCount\(25);
\ref|ALT_INV_Equal1~4_combout\ <= NOT \ref|Equal1~4_combout\;
\ref|ALT_INV_waitNDCount\(26) <= NOT \ref|waitNDCount\(26);
\ref|ALT_INV_waitNDCount\(27) <= NOT \ref|waitNDCount\(27);
\ref|ALT_INV_waitNDCount\(28) <= NOT \ref|waitNDCount\(28);
\ref|ALT_INV_waitNDCount\(29) <= NOT \ref|waitNDCount\(29);
\ref|ALT_INV_waitNDCount\(30) <= NOT \ref|waitNDCount\(30);
\ref|ALT_INV_waitNDCount\(31) <= NOT \ref|waitNDCount\(31);
\ref|ALT_INV_Equal1~3_combout\ <= NOT \ref|Equal1~3_combout\;
\ref|ALT_INV_waitNDCount\(14) <= NOT \ref|waitNDCount\(14);
\ref|ALT_INV_waitNDCount\(15) <= NOT \ref|waitNDCount\(15);
\ref|ALT_INV_waitNDCount\(16) <= NOT \ref|waitNDCount\(16);
\ref|ALT_INV_waitNDCount\(17) <= NOT \ref|waitNDCount\(17);
\ref|ALT_INV_waitNDCount\(18) <= NOT \ref|waitNDCount\(18);
\ref|ALT_INV_waitNDCount\(19) <= NOT \ref|waitNDCount\(19);
\ref|ALT_INV_Equal1~2_combout\ <= NOT \ref|Equal1~2_combout\;
\ref|ALT_INV_waitNDCount\(8) <= NOT \ref|waitNDCount\(8);
\ref|ALT_INV_waitNDCount\(9) <= NOT \ref|waitNDCount\(9);
\ref|ALT_INV_waitNDCount\(10) <= NOT \ref|waitNDCount\(10);
\ref|ALT_INV_waitNDCount\(11) <= NOT \ref|waitNDCount\(11);
\ref|ALT_INV_waitNDCount\(12) <= NOT \ref|waitNDCount\(12);
\ref|ALT_INV_waitNDCount\(13) <= NOT \ref|waitNDCount\(13);
\ref|ALT_INV_Equal1~1_combout\ <= NOT \ref|Equal1~1_combout\;
\ref|ALT_INV_waitNDCount\(2) <= NOT \ref|waitNDCount\(2);
\ref|ALT_INV_waitNDCount\(3) <= NOT \ref|waitNDCount\(3);
\ref|ALT_INV_waitNDCount\(4) <= NOT \ref|waitNDCount\(4);
\ref|ALT_INV_waitNDCount\(5) <= NOT \ref|waitNDCount\(5);
\ref|ALT_INV_waitNDCount\(6) <= NOT \ref|waitNDCount\(6);
\ref|ALT_INV_waitNDCount\(7) <= NOT \ref|waitNDCount\(7);
\ref|ALT_INV_Equal1~0_combout\ <= NOT \ref|Equal1~0_combout\;
\ref|ALT_INV_waitNDCount\(0) <= NOT \ref|waitNDCount\(0);
\ref|ALT_INV_waitNDCount\(1) <= NOT \ref|waitNDCount\(1);
\ref|ALT_INV_stateD_reg.rdy0~q\ <= NOT \ref|stateD_reg.rdy0~q\;
\basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|q_s\(0);
\ref|ALT_INV_Equal0~6_combout\ <= NOT \ref|Equal0~6_combout\;
\ref|ALT_INV_Equal0~5_combout\ <= NOT \ref|Equal0~5_combout\;
\ref|ALT_INV_waitNGCount\(20) <= NOT \ref|waitNGCount\(20);
\ref|ALT_INV_waitNGCount\(21) <= NOT \ref|waitNGCount\(21);
\ref|ALT_INV_waitNGCount\(22) <= NOT \ref|waitNGCount\(22);
\ref|ALT_INV_waitNGCount\(23) <= NOT \ref|waitNGCount\(23);
\ref|ALT_INV_waitNGCount\(24) <= NOT \ref|waitNGCount\(24);
\ref|ALT_INV_waitNGCount\(25) <= NOT \ref|waitNGCount\(25);
\ref|ALT_INV_Equal0~4_combout\ <= NOT \ref|Equal0~4_combout\;
\ref|ALT_INV_waitNGCount\(26) <= NOT \ref|waitNGCount\(26);
\ref|ALT_INV_waitNGCount\(27) <= NOT \ref|waitNGCount\(27);
\ref|ALT_INV_waitNGCount\(28) <= NOT \ref|waitNGCount\(28);
\ref|ALT_INV_waitNGCount\(29) <= NOT \ref|waitNGCount\(29);
\ref|ALT_INV_waitNGCount\(30) <= NOT \ref|waitNGCount\(30);
\ref|ALT_INV_waitNGCount\(31) <= NOT \ref|waitNGCount\(31);
\ref|ALT_INV_Equal0~3_combout\ <= NOT \ref|Equal0~3_combout\;
\ref|ALT_INV_waitNGCount\(14) <= NOT \ref|waitNGCount\(14);
\ref|ALT_INV_waitNGCount\(15) <= NOT \ref|waitNGCount\(15);
\ref|ALT_INV_waitNGCount\(16) <= NOT \ref|waitNGCount\(16);
\ref|ALT_INV_waitNGCount\(17) <= NOT \ref|waitNGCount\(17);
\ref|ALT_INV_waitNGCount\(18) <= NOT \ref|waitNGCount\(18);
\ref|ALT_INV_waitNGCount\(19) <= NOT \ref|waitNGCount\(19);
\ref|ALT_INV_Equal0~2_combout\ <= NOT \ref|Equal0~2_combout\;
\ref|ALT_INV_waitNGCount\(8) <= NOT \ref|waitNGCount\(8);
\ref|ALT_INV_waitNGCount\(9) <= NOT \ref|waitNGCount\(9);
\ref|ALT_INV_waitNDCountNext\(14) <= NOT \ref|waitNDCountNext\(14);
\ref|ALT_INV_waitNDCountNext\(15) <= NOT \ref|waitNDCountNext\(15);
\ref|ALT_INV_waitNDCountNext\(16) <= NOT \ref|waitNDCountNext\(16);
\ref|ALT_INV_waitNDCountNext\(17) <= NOT \ref|waitNDCountNext\(17);
\ref|ALT_INV_waitNDCountNext\(18) <= NOT \ref|waitNDCountNext\(18);
\ref|ALT_INV_waitNDCountNext\(19) <= NOT \ref|waitNDCountNext\(19);
\ref|ALT_INV_waitNDCountNext\(8) <= NOT \ref|waitNDCountNext\(8);
\ref|ALT_INV_waitNDCountNext\(9) <= NOT \ref|waitNDCountNext\(9);
\ref|ALT_INV_waitNDCountNext\(10) <= NOT \ref|waitNDCountNext\(10);
\ref|ALT_INV_waitNDCountNext\(11) <= NOT \ref|waitNDCountNext\(11);
\ref|ALT_INV_waitNDCountNext\(12) <= NOT \ref|waitNDCountNext\(12);
\ref|ALT_INV_waitNDCountNext\(13) <= NOT \ref|waitNDCountNext\(13);
\ref|ALT_INV_waitNDCountNext\(2) <= NOT \ref|waitNDCountNext\(2);
\ref|ALT_INV_waitNDCountNext\(3) <= NOT \ref|waitNDCountNext\(3);
\ref|ALT_INV_waitNDCountNext\(4) <= NOT \ref|waitNDCountNext\(4);
\ref|ALT_INV_waitNDCountNext\(5) <= NOT \ref|waitNDCountNext\(5);
\ref|ALT_INV_waitNDCountNext\(6) <= NOT \ref|waitNDCountNext\(6);
\ref|ALT_INV_waitNDCountNext\(7) <= NOT \ref|waitNDCountNext\(7);
\ref|ALT_INV_waitNDCountNext\(0) <= NOT \ref|waitNDCountNext\(0);
\ref|ALT_INV_waitNDCountNext\(1) <= NOT \ref|waitNDCountNext\(1);
\ref|ALT_INV_waitNGCountNext\(20) <= NOT \ref|waitNGCountNext\(20);
\ref|ALT_INV_waitNGCountNext\(21) <= NOT \ref|waitNGCountNext\(21);
\ref|ALT_INV_waitNGCountNext\(22) <= NOT \ref|waitNGCountNext\(22);
\ref|ALT_INV_waitNGCountNext\(23) <= NOT \ref|waitNGCountNext\(23);
\ref|ALT_INV_waitNGCountNext\(24) <= NOT \ref|waitNGCountNext\(24);
\ref|ALT_INV_waitNGCountNext\(25) <= NOT \ref|waitNGCountNext\(25);
\ref|ALT_INV_waitNGCountNext\(26) <= NOT \ref|waitNGCountNext\(26);
\ref|ALT_INV_waitNGCountNext\(27) <= NOT \ref|waitNGCountNext\(27);
\ref|ALT_INV_waitNGCountNext\(28) <= NOT \ref|waitNGCountNext\(28);
\ref|ALT_INV_waitNGCountNext\(29) <= NOT \ref|waitNGCountNext\(29);
\ref|ALT_INV_waitNGCountNext\(30) <= NOT \ref|waitNGCountNext\(30);
\ref|ALT_INV_waitNGCountNext\(31) <= NOT \ref|waitNGCountNext\(31);
\ref|ALT_INV_waitNGCountNext\(14) <= NOT \ref|waitNGCountNext\(14);
\ref|ALT_INV_waitNGCountNext\(15) <= NOT \ref|waitNGCountNext\(15);
\ref|ALT_INV_waitNGCountNext\(16) <= NOT \ref|waitNGCountNext\(16);
\ref|ALT_INV_waitNGCountNext\(17) <= NOT \ref|waitNGCountNext\(17);
\ref|ALT_INV_waitNGCountNext\(18) <= NOT \ref|waitNGCountNext\(18);
\ref|ALT_INV_waitNGCountNext\(19) <= NOT \ref|waitNGCountNext\(19);
\ref|ALT_INV_waitNGCountNext\(8) <= NOT \ref|waitNGCountNext\(8);
\ref|ALT_INV_waitNGCountNext\(9) <= NOT \ref|waitNGCountNext\(9);
\ref|ALT_INV_waitNGCountNext\(10) <= NOT \ref|waitNGCountNext\(10);
\ref|ALT_INV_waitNGCountNext\(11) <= NOT \ref|waitNGCountNext\(11);
\ref|ALT_INV_waitNGCountNext\(12) <= NOT \ref|waitNGCountNext\(12);
\ref|ALT_INV_waitNGCountNext\(13) <= NOT \ref|waitNGCountNext\(13);
\ref|ALT_INV_waitNGCountNext\(2) <= NOT \ref|waitNGCountNext\(2);
\ref|ALT_INV_waitNGCountNext\(3) <= NOT \ref|waitNGCountNext\(3);
\ref|ALT_INV_waitNGCountNext\(4) <= NOT \ref|waitNGCountNext\(4);
\ref|ALT_INV_waitNGCountNext\(5) <= NOT \ref|waitNGCountNext\(5);
\ref|ALT_INV_waitNGCountNext\(6) <= NOT \ref|waitNGCountNext\(6);
\ref|ALT_INV_waitNGCountNext\(7) <= NOT \ref|waitNGCountNext\(7);
\ref|ALT_INV_waitNGCountNext\(0) <= NOT \ref|waitNGCountNext\(0);
\ref|ALT_INV_waitNGCountNext\(1) <= NOT \ref|waitNGCountNext\(1);
\hold|ALT_INV_state_next~combout\ <= NOT \hold|state_next~combout\;
\hold2|ALT_INV_state_next~combout\ <= NOT \hold2|state_next~combout\;
\basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~3_combout\ <= NOT \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\;
\basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|q_s\(0);
\basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|q_s\(0);
\basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|q_s\(0);
\basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|q_s\(0);
\basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|q_s\(0);
\basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|q_s\(0);
\basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|ALT_INV_q_s\(0) <= NOT \basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|q_s\(0);
\ref|ALT_INV_Selector68~0_combout\ <= NOT \ref|Selector68~0_combout\;
\ref|ALT_INV_Selector69~0_combout\ <= NOT \ref|Selector69~0_combout\;
\ref|ALT_INV_Selector70~0_combout\ <= NOT \ref|Selector70~0_combout\;
\ref|ALT_INV_Selector71~0_combout\ <= NOT \ref|Selector71~0_combout\;
\ref|ALT_INV_Selector72~0_combout\ <= NOT \ref|Selector72~0_combout\;
\ref|ALT_INV_Selector73~0_combout\ <= NOT \ref|Selector73~0_combout\;
\ref|ALT_INV_Selector74~0_combout\ <= NOT \ref|Selector74~0_combout\;
\ref|ALT_INV_Selector75~0_combout\ <= NOT \ref|Selector75~0_combout\;
\ref|ALT_INV_Selector76~0_combout\ <= NOT \ref|Selector76~0_combout\;
\ref|ALT_INV_Selector77~0_combout\ <= NOT \ref|Selector77~0_combout\;
\ref|ALT_INV_Selector78~0_combout\ <= NOT \ref|Selector78~0_combout\;
\ref|ALT_INV_Selector79~0_combout\ <= NOT \ref|Selector79~0_combout\;
\ref|ALT_INV_Selector62~0_combout\ <= NOT \ref|Selector62~0_combout\;
\ref|ALT_INV_Selector63~0_combout\ <= NOT \ref|Selector63~0_combout\;
\ref|ALT_INV_Selector64~0_combout\ <= NOT \ref|Selector64~0_combout\;
\ref|ALT_INV_Selector65~0_combout\ <= NOT \ref|Selector65~0_combout\;
\ref|ALT_INV_Selector66~0_combout\ <= NOT \ref|Selector66~0_combout\;
\ref|ALT_INV_Selector67~0_combout\ <= NOT \ref|Selector67~0_combout\;
\ref|ALT_INV_Selector56~0_combout\ <= NOT \ref|Selector56~0_combout\;
\ref|ALT_INV_Selector57~0_combout\ <= NOT \ref|Selector57~0_combout\;
\ref|ALT_INV_Selector58~0_combout\ <= NOT \ref|Selector58~0_combout\;
\ref|ALT_INV_Selector59~0_combout\ <= NOT \ref|Selector59~0_combout\;
\ref|ALT_INV_Selector60~0_combout\ <= NOT \ref|Selector60~0_combout\;
\ref|ALT_INV_Selector61~0_combout\ <= NOT \ref|Selector61~0_combout\;
\ref|ALT_INV_Selector10~0_combout\ <= NOT \ref|Selector10~0_combout\;
\ref|ALT_INV_state_reg.unm_go_guru~DUPLICATE_q\ <= NOT \ref|state_reg.unm_go_guru~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[13]~DUPLICATE_q\ <= NOT \ref|mainCnt[13]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[16]~DUPLICATE_q\ <= NOT \ref|mainCnt[16]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[17]~DUPLICATE_q\ <= NOT \ref|mainCnt[17]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[7]~DUPLICATE_q\ <= NOT \ref|mainCnt[7]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[8]~DUPLICATE_q\ <= NOT \ref|mainCnt[8]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[9]~DUPLICATE_q\ <= NOT \ref|mainCnt[9]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[12]~DUPLICATE_q\ <= NOT \ref|mainCnt[12]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[4]~DUPLICATE_q\ <= NOT \ref|mainCnt[4]~DUPLICATE_q\;
\ref|ALT_INV_mainCnt[31]~DUPLICATE_q\ <= NOT \ref|mainCnt[31]~DUPLICATE_q\;
\basis|control|cnt_prep|ALT_INV_cnt_s[17]~DUPLICATE_q\ <= NOT \basis|control|cnt_prep|cnt_s[17]~DUPLICATE_q\;
\basis|control|cnt_prep|ALT_INV_cnt_s[29]~DUPLICATE_q\ <= NOT \basis|control|cnt_prep|cnt_s[29]~DUPLICATE_q\;
\basis|control|cnt_prep|ALT_INV_cnt_s[5]~DUPLICATE_q\ <= NOT \basis|control|cnt_prep|cnt_s[5]~DUPLICATE_q\;
\basis|control|cnt_prep|ALT_INV_cnt_s[2]~DUPLICATE_q\ <= NOT \basis|control|cnt_prep|cnt_s[2]~DUPLICATE_q\;
\basis|control|cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\ <= NOT \basis|control|cnt_prep|cnt_s[9]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[6]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[6]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[5]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[5]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[3]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[3]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[0]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[0]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[9]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[9]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[11]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[11]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[12]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[12]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[13]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[31]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[31]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[7]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[7]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[15]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[15]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[26]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[26]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[19]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[19]~DUPLICATE_q\;
\basis|control|cnt_strat|ALT_INV_cnt_s[21]~DUPLICATE_q\ <= NOT \basis|control|cnt_strat|cnt_s[21]~DUPLICATE_q\;
\ALT_INV_mem_a_addr[5]~input_o\ <= NOT \mem_a_addr[5]~input_o\;
\ALT_INV_mem_a_addr[4]~input_o\ <= NOT \mem_a_addr[4]~input_o\;
\ALT_INV_mem_a_addr[3]~input_o\ <= NOT \mem_a_addr[3]~input_o\;
\ALT_INV_mem_a_addr[2]~input_o\ <= NOT \mem_a_addr[2]~input_o\;
\ALT_INV_mem_a_addr[1]~input_o\ <= NOT \mem_a_addr[1]~input_o\;
\ALT_INV_mem_a_addr[0]~input_o\ <= NOT \mem_a_addr[0]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[4]~input_o\ <= NOT \disc_2_ref.disc_addr[4]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[3]~input_o\ <= NOT \disc_2_ref.disc_addr[3]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[2]~input_o\ <= NOT \disc_2_ref.disc_addr[2]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[1]~input_o\ <= NOT \disc_2_ref.disc_addr[1]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[0]~input_o\ <= NOT \disc_2_ref.disc_addr[0]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[7]~input_o\ <= NOT \disc_2_ref.disc_addr[7]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[6]~input_o\ <= NOT \disc_2_ref.disc_addr[6]~input_o\;
\ALT_INV_disc_2_ref.disc_addr[5]~input_o\ <= NOT \disc_2_ref.disc_addr[5]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[7]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[7]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[6]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[6]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[2]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[2]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[1]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[1]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[0]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[0]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[5]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[5]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[4]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[4]~input_o\;
\ALT_INV_disc_2_ref.disc_prev_addr[3]~input_o\ <= NOT \disc_2_ref.disc_prev_addr[3]~input_o\;
\ALT_INV_sys_speed[3]~input_o\ <= NOT \sys_speed[3]~input_o\;
\ALT_INV_sys_speed[2]~input_o\ <= NOT \sys_speed[2]~input_o\;
\ALT_INV_sys_speed[1]~input_o\ <= NOT \sys_speed[1]~input_o\;
\ALT_INV_sys_speed[0]~input_o\ <= NOT \sys_speed[0]~input_o\;
\ALT_INV_res~input_o\ <= NOT \res~input_o\;
\ALT_INV_disc_2_base.end_of_disc~input_o\ <= NOT \disc_2_base.end_of_disc~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ref|ALT_INV_waitNDCountNext\(20) <= NOT \ref|waitNDCountNext\(20);
\ref|ALT_INV_waitNDCountNext\(21) <= NOT \ref|waitNDCountNext\(21);
\ref|ALT_INV_waitNDCountNext\(22) <= NOT \ref|waitNDCountNext\(22);
\ref|ALT_INV_waitNDCountNext\(23) <= NOT \ref|waitNDCountNext\(23);
\ref|ALT_INV_waitNDCountNext\(24) <= NOT \ref|waitNDCountNext\(24);
\ref|ALT_INV_waitNDCountNext\(25) <= NOT \ref|waitNDCountNext\(25);
\ref|ALT_INV_waitNDCountNext\(26) <= NOT \ref|waitNDCountNext\(26);
\ref|ALT_INV_waitNDCountNext\(27) <= NOT \ref|waitNDCountNext\(27);
\ref|ALT_INV_waitNDCountNext\(28) <= NOT \ref|waitNDCountNext\(28);
\ref|ALT_INV_waitNDCountNext\(29) <= NOT \ref|waitNDCountNext\(29);
\ref|ALT_INV_waitNDCountNext\(30) <= NOT \ref|waitNDCountNext\(30);
\ref|ALT_INV_waitNDCountNext\(31) <= NOT \ref|waitNDCountNext\(31);

-- Location: IOOBUF_X89_Y6_N22
\print_rdy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \print_rdy~0_combout\,
	devoe => ww_devoe,
	o => ww_print_rdy);

-- Location: IOOBUF_X89_Y9_N39
\cnt_disc_rdy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \step|cnt_disc_rdy~2_combout\,
	devoe => ww_devoe,
	o => ww_cnt_disc_rdy);

-- Location: IOOBUF_X78_Y0_N2
\ref_2_disc.guru_right_behind~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hold2|holdedOut~combout\,
	devoe => ww_devoe,
	o => \ww_ref_2_disc.guru_right_behind\);

-- Location: IOOBUF_X86_Y0_N36
\ref_2_disc.duo_formed~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hold|holdedOut~combout\,
	devoe => ww_devoe,
	o => \ww_ref_2_disc.duo_formed\);

-- Location: IOOBUF_X89_Y9_N5
\ref_2_disc.go_disc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ref|go_disc~combout\,
	devoe => ww_devoe,
	o => \ww_ref_2_disc.go_disc\);

-- Location: IOOBUF_X89_Y6_N39
\start_step~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \basis|control|main|STATE.STEP_ACTIVATION~q\,
	devoe => ww_devoe,
	o => ww_start_step);

-- Location: IOOBUF_X68_Y0_N2
\mem_a_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_mem_a_data(0));

-- Location: IOOBUF_X70_Y0_N19
\mem_a_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_mem_a_data(1));

-- Location: IOOBUF_X64_Y0_N36
\mem_a_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_mem_a_data(2));

-- Location: IOOBUF_X74_Y0_N59
\mem_a_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_mem_a_data(3));

-- Location: IOOBUF_X76_Y0_N36
\mem_a_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_mem_a_data(4));

-- Location: IOOBUF_X70_Y0_N53
\mem_a_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_mem_a_data(5));

-- Location: IOOBUF_X76_Y0_N53
\mem_a_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_mem_a_data(6));

-- Location: IOOBUF_X78_Y0_N36
\mem_a_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_mem_a_data(7));

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

-- Location: MLABCELL_X82_Y9_N0
\step|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~9_sumout\ = SUM(( !\step|cnt_s\(0) ) + ( VCC ) + ( !VCC ))
-- \step|Add0~10\ = CARRY(( !\step|cnt_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(0),
	cin => GND,
	sumout => \step|Add0~9_sumout\,
	cout => \step|Add0~10\);

-- Location: IOIBUF_X89_Y8_N4
\res~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: MLABCELL_X82_Y9_N51
\step|cnt_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|cnt_s~1_combout\ = ( !\res~input_o\ & ( !\step|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \step|ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_res~input_o\,
	combout => \step|cnt_s~1_combout\);

-- Location: FF_X82_Y9_N53
\step|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|cnt_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(0));

-- Location: MLABCELL_X82_Y9_N3
\step|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~45_sumout\ = SUM(( \step|cnt_s\(1) ) + ( GND ) + ( \step|Add0~10\ ))
-- \step|Add0~46\ = CARRY(( \step|cnt_s\(1) ) + ( GND ) + ( \step|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \step|ALT_INV_cnt_s\(1),
	cin => \step|Add0~10\,
	sumout => \step|Add0~45_sumout\,
	cout => \step|Add0~46\);

-- Location: MLABCELL_X82_Y9_N48
\step|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Equal0~1_combout\ = ( !\step|cnt_s\(4) & ( (!\step|cnt_s\(3) & (!\step|cnt_s\(1) & !\step|cnt_s\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(3),
	datac => \step|ALT_INV_cnt_s\(1),
	datad => \step|ALT_INV_cnt_s\(2),
	dataf => \step|ALT_INV_cnt_s\(4),
	combout => \step|Equal0~1_combout\);

-- Location: MLABCELL_X82_Y9_N24
\step|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~1_sumout\ = SUM(( \step|cnt_s\(8) ) + ( GND ) + ( \step|Add0~50\ ))
-- \step|Add0~2\ = CARRY(( \step|cnt_s\(8) ) + ( GND ) + ( \step|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(8),
	cin => \step|Add0~50\,
	sumout => \step|Add0~1_sumout\,
	cout => \step|Add0~2\);

-- Location: MLABCELL_X82_Y9_N27
\step|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~61_sumout\ = SUM(( \step|cnt_s\(9) ) + ( GND ) + ( \step|Add0~2\ ))
-- \step|Add0~62\ = CARRY(( \step|cnt_s\(9) ) + ( GND ) + ( \step|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \step|ALT_INV_cnt_s\(9),
	cin => \step|Add0~2\,
	sumout => \step|Add0~61_sumout\,
	cout => \step|Add0~62\);

-- Location: FF_X82_Y9_N29
\step|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~61_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(9));

-- Location: MLABCELL_X82_Y9_N30
\step|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~57_sumout\ = SUM(( \step|cnt_s\(10) ) + ( GND ) + ( \step|Add0~62\ ))
-- \step|Add0~58\ = CARRY(( \step|cnt_s\(10) ) + ( GND ) + ( \step|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(10),
	cin => \step|Add0~62\,
	sumout => \step|Add0~57_sumout\,
	cout => \step|Add0~58\);

-- Location: FF_X82_Y9_N32
\step|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~57_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(10));

-- Location: LABCELL_X83_Y9_N27
\step|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Equal0~2_combout\ = ( !\step|cnt_s\(7) & ( (\step|cnt_s\(10) & (!\step|cnt_s\(6) & !\step|cnt_s\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(10),
	datac => \step|ALT_INV_cnt_s\(6),
	datad => \step|ALT_INV_cnt_s\(9),
	dataf => \step|ALT_INV_cnt_s\(7),
	combout => \step|Equal0~2_combout\);

-- Location: MLABCELL_X82_Y9_N33
\step|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~29_sumout\ = SUM(( \step|cnt_s\(11) ) + ( GND ) + ( \step|Add0~58\ ))
-- \step|Add0~30\ = CARRY(( \step|cnt_s\(11) ) + ( GND ) + ( \step|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(11),
	cin => \step|Add0~58\,
	sumout => \step|Add0~29_sumout\,
	cout => \step|Add0~30\);

-- Location: FF_X82_Y9_N35
\step|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~29_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(11));

-- Location: MLABCELL_X82_Y9_N36
\step|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~25_sumout\ = SUM(( \step|cnt_s\(12) ) + ( GND ) + ( \step|Add0~30\ ))
-- \step|Add0~26\ = CARRY(( \step|cnt_s\(12) ) + ( GND ) + ( \step|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(12),
	cin => \step|Add0~30\,
	sumout => \step|Add0~25_sumout\,
	cout => \step|Add0~26\);

-- Location: FF_X82_Y9_N38
\step|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~25_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(12));

-- Location: MLABCELL_X82_Y9_N39
\step|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~13_sumout\ = SUM(( \step|cnt_s\(13) ) + ( GND ) + ( \step|Add0~26\ ))
-- \step|Add0~14\ = CARRY(( \step|cnt_s\(13) ) + ( GND ) + ( \step|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(13),
	cin => \step|Add0~26\,
	sumout => \step|Add0~13_sumout\,
	cout => \step|Add0~14\);

-- Location: FF_X82_Y9_N41
\step|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~13_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(13));

-- Location: MLABCELL_X82_Y9_N42
\step|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~17_sumout\ = SUM(( \step|cnt_s\(14) ) + ( GND ) + ( \step|Add0~14\ ))
-- \step|Add0~18\ = CARRY(( \step|cnt_s\(14) ) + ( GND ) + ( \step|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(14),
	cin => \step|Add0~14\,
	sumout => \step|Add0~17_sumout\,
	cout => \step|Add0~18\);

-- Location: FF_X82_Y9_N44
\step|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~17_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(14));

-- Location: MLABCELL_X82_Y9_N45
\step|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~21_sumout\ = SUM(( \step|cnt_s\(15) ) + ( GND ) + ( \step|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(15),
	cin => \step|Add0~18\,
	sumout => \step|Add0~21_sumout\);

-- Location: FF_X82_Y9_N47
\step|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~21_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(15));

-- Location: MLABCELL_X82_Y9_N54
\step|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Equal0~0_combout\ = ( !\step|cnt_s\(15) & ( \step|cnt_s\(0) & ( (!\step|cnt_s\(12) & (!\step|cnt_s\(13) & (!\step|cnt_s\(11) & !\step|cnt_s\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(12),
	datab => \step|ALT_INV_cnt_s\(13),
	datac => \step|ALT_INV_cnt_s\(11),
	datad => \step|ALT_INV_cnt_s\(14),
	datae => \step|ALT_INV_cnt_s\(15),
	dataf => \step|ALT_INV_cnt_s\(0),
	combout => \step|Equal0~0_combout\);

-- Location: LABCELL_X83_Y9_N42
\step|cnt_s[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|cnt_s[13]~0_combout\ = ( \step|Equal0~2_combout\ & ( \step|Equal0~0_combout\ & ( ((\step|cnt_s\(8) & (\step|Equal0~1_combout\ & !\step|cnt_s\(5)))) # (\res~input_o\) ) ) ) # ( !\step|Equal0~2_combout\ & ( \step|Equal0~0_combout\ & ( \res~input_o\ ) 
-- ) ) # ( \step|Equal0~2_combout\ & ( !\step|Equal0~0_combout\ & ( \res~input_o\ ) ) ) # ( !\step|Equal0~2_combout\ & ( !\step|Equal0~0_combout\ & ( \res~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(8),
	datab => \step|ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_res~input_o\,
	datad => \step|ALT_INV_cnt_s\(5),
	datae => \step|ALT_INV_Equal0~2_combout\,
	dataf => \step|ALT_INV_Equal0~0_combout\,
	combout => \step|cnt_s[13]~0_combout\);

-- Location: FF_X82_Y9_N5
\step|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~45_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(1));

-- Location: MLABCELL_X82_Y9_N6
\step|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~41_sumout\ = SUM(( \step|cnt_s\(2) ) + ( GND ) + ( \step|Add0~46\ ))
-- \step|Add0~42\ = CARRY(( \step|cnt_s\(2) ) + ( GND ) + ( \step|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(2),
	cin => \step|Add0~46\,
	sumout => \step|Add0~41_sumout\,
	cout => \step|Add0~42\);

-- Location: FF_X82_Y9_N8
\step|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~41_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(2));

-- Location: MLABCELL_X82_Y9_N9
\step|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~37_sumout\ = SUM(( \step|cnt_s\(3) ) + ( GND ) + ( \step|Add0~42\ ))
-- \step|Add0~38\ = CARRY(( \step|cnt_s\(3) ) + ( GND ) + ( \step|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(3),
	cin => \step|Add0~42\,
	sumout => \step|Add0~37_sumout\,
	cout => \step|Add0~38\);

-- Location: FF_X82_Y9_N11
\step|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~37_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(3));

-- Location: MLABCELL_X82_Y9_N12
\step|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~33_sumout\ = SUM(( \step|cnt_s\(4) ) + ( GND ) + ( \step|Add0~38\ ))
-- \step|Add0~34\ = CARRY(( \step|cnt_s\(4) ) + ( GND ) + ( \step|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(4),
	cin => \step|Add0~38\,
	sumout => \step|Add0~33_sumout\,
	cout => \step|Add0~34\);

-- Location: FF_X82_Y9_N14
\step|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~33_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(4));

-- Location: MLABCELL_X82_Y9_N15
\step|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~5_sumout\ = SUM(( \step|cnt_s\(5) ) + ( GND ) + ( \step|Add0~34\ ))
-- \step|Add0~6\ = CARRY(( \step|cnt_s\(5) ) + ( GND ) + ( \step|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(5),
	cin => \step|Add0~34\,
	sumout => \step|Add0~5_sumout\,
	cout => \step|Add0~6\);

-- Location: FF_X82_Y9_N17
\step|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~5_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(5));

-- Location: MLABCELL_X82_Y9_N18
\step|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~53_sumout\ = SUM(( \step|cnt_s\(6) ) + ( GND ) + ( \step|Add0~6\ ))
-- \step|Add0~54\ = CARRY(( \step|cnt_s\(6) ) + ( GND ) + ( \step|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_cnt_s\(6),
	cin => \step|Add0~6\,
	sumout => \step|Add0~53_sumout\,
	cout => \step|Add0~54\);

-- Location: FF_X82_Y9_N20
\step|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~53_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(6));

-- Location: MLABCELL_X82_Y9_N21
\step|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Add0~49_sumout\ = SUM(( \step|cnt_s\(7) ) + ( GND ) + ( \step|Add0~54\ ))
-- \step|Add0~50\ = CARRY(( \step|cnt_s\(7) ) + ( GND ) + ( \step|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \step|ALT_INV_cnt_s\(7),
	cin => \step|Add0~54\,
	sumout => \step|Add0~49_sumout\,
	cout => \step|Add0~50\);

-- Location: FF_X82_Y9_N23
\step|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~49_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(7));

-- Location: FF_X82_Y9_N26
\step|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|Add0~1_sumout\,
	sclr => \step|cnt_s[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|cnt_s\(8));

-- Location: LABCELL_X83_Y9_N30
\step|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|process_0~1_combout\ = ( \step|cnt_s\(6) & ( (!\step|cnt_s\(10) & (!\step|cnt_s\(7) $ (\step|cnt_s\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(7),
	datac => \step|ALT_INV_cnt_s\(10),
	datad => \step|ALT_INV_cnt_s\(9),
	dataf => \step|ALT_INV_cnt_s\(6),
	combout => \step|process_0~1_combout\);

-- Location: LABCELL_X83_Y9_N33
\step|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|process_0~0_combout\ = ( \step|cnt_s\(6) & ( (!\step|cnt_s\(9) & ((!\step|cnt_s\(10) & (\step|cnt_s\(7) & \step|cnt_s\(8))) # (\step|cnt_s\(10) & (!\step|cnt_s\(7) & !\step|cnt_s\(8))))) ) ) # ( !\step|cnt_s\(6) & ( (!\step|cnt_s\(10) & 
-- ((!\step|cnt_s\(7) & (\step|cnt_s\(9) & \step|cnt_s\(8))) # (\step|cnt_s\(7) & (!\step|cnt_s\(9) & !\step|cnt_s\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001000001000000000100001000000001000000100000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(10),
	datab => \step|ALT_INV_cnt_s\(7),
	datac => \step|ALT_INV_cnt_s\(9),
	datad => \step|ALT_INV_cnt_s\(8),
	dataf => \step|ALT_INV_cnt_s\(6),
	combout => \step|process_0~0_combout\);

-- Location: LABCELL_X83_Y9_N12
\step|rdy_v1_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|rdy_v1_s~0_combout\ = ( \step|Equal0~1_combout\ & ( \step|process_0~0_combout\ & ( (\step|Equal0~0_combout\ & (((\step|cnt_s\(8) & \step|process_0~1_combout\)) # (\step|cnt_s\(5)))) ) ) ) # ( \step|Equal0~1_combout\ & ( !\step|process_0~0_combout\ & 
-- ( (\step|Equal0~0_combout\ & (!\step|cnt_s\(5) & (\step|cnt_s\(8) & \step|process_0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_Equal0~0_combout\,
	datab => \step|ALT_INV_cnt_s\(5),
	datac => \step|ALT_INV_cnt_s\(8),
	datad => \step|ALT_INV_process_0~1_combout\,
	datae => \step|ALT_INV_Equal0~1_combout\,
	dataf => \step|ALT_INV_process_0~0_combout\,
	combout => \step|rdy_v1_s~0_combout\);

-- Location: LABCELL_X83_Y9_N9
\step|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Equal1~1_combout\ = ( \step|cnt_s\(9) & ( (!\step|cnt_s\(10) & (!\step|cnt_s\(6) & (\step|cnt_s\(7) & !\step|cnt_s\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(10),
	datab => \step|ALT_INV_cnt_s\(6),
	datac => \step|ALT_INV_cnt_s\(7),
	datad => \step|ALT_INV_cnt_s\(8),
	datae => \step|ALT_INV_cnt_s\(9),
	combout => \step|Equal1~1_combout\);

-- Location: LABCELL_X83_Y9_N51
\step|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|Equal1~0_combout\ = ( \step|Equal0~0_combout\ & ( (!\step|cnt_s\(5) & \step|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(5),
	datac => \step|ALT_INV_Equal0~1_combout\,
	dataf => \step|ALT_INV_Equal0~0_combout\,
	combout => \step|Equal1~0_combout\);

-- Location: LABCELL_X83_Y9_N0
\step|rdy_v1_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|rdy_v1_s~1_combout\ = ( \step|rdy_v1_s~q\ & ( \step|Equal1~0_combout\ & ( (((\step|cnt_s\(8) & \step|Equal0~2_combout\)) # (\step|Equal1~1_combout\)) # (\step|rdy_v1_s~0_combout\) ) ) ) # ( !\step|rdy_v1_s~q\ & ( \step|Equal1~0_combout\ & ( 
-- (\step|cnt_s\(8) & \step|Equal0~2_combout\) ) ) ) # ( \step|rdy_v1_s~q\ & ( !\step|Equal1~0_combout\ & ( \step|rdy_v1_s~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000101000001010011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(8),
	datab => \step|ALT_INV_rdy_v1_s~0_combout\,
	datac => \step|ALT_INV_Equal0~2_combout\,
	datad => \step|ALT_INV_Equal1~1_combout\,
	datae => \step|ALT_INV_rdy_v1_s~q\,
	dataf => \step|ALT_INV_Equal1~0_combout\,
	combout => \step|rdy_v1_s~1_combout\);

-- Location: FF_X83_Y9_N2
\step|rdy_v1_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|rdy_v1_s~1_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|rdy_v1_s~q\);

-- Location: LABCELL_X81_Y11_N0
\ref|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~5_sumout\ = SUM(( \ref|waitNGCount\(0) ) + ( VCC ) + ( !VCC ))
-- \ref|Add0~6\ = CARRY(( \ref|waitNGCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(0),
	cin => GND,
	sumout => \ref|Add0~5_sumout\,
	cout => \ref|Add0~6\);

-- Location: MLABCELL_X82_Y10_N42
\ref|Selector80~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector80~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~5_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector80~0_combout\);

-- Location: MLABCELL_X82_Y10_N45
\ref|waitNGCountNext[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(0) = ( \ref|Selector80~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(0)) ) ) # ( !\ref|Selector80~0_combout\ & ( (\ref|waitNGCountNext\(0) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(0),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector80~0_combout\,
	combout => \ref|waitNGCountNext\(0));

-- Location: FF_X81_Y11_N2
\ref|waitNGCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(0),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(0));

-- Location: LABCELL_X81_Y11_N3
\ref|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~1_sumout\ = SUM(( \ref|waitNGCount\(1) ) + ( VCC ) + ( \ref|Add0~6\ ))
-- \ref|Add0~2\ = CARRY(( \ref|waitNGCount\(1) ) + ( VCC ) + ( \ref|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(1),
	cin => \ref|Add0~6\,
	sumout => \ref|Add0~1_sumout\,
	cout => \ref|Add0~2\);

-- Location: LABCELL_X83_Y11_N57
\ref|Selector82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector82~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~1_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector82~0_combout\);

-- Location: LABCELL_X83_Y11_N9
\ref|waitNGCountNext[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(1) = ( \ref|Selector82~0_combout\ & ( (\ref|waitNGCountNext\(1)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector82~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datac => \ref|ALT_INV_waitNGCountNext\(1),
	dataf => \ref|ALT_INV_Selector82~0_combout\,
	combout => \ref|waitNGCountNext\(1));

-- Location: FF_X81_Y11_N5
\ref|waitNGCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(1),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(1));

-- Location: LABCELL_X81_Y11_N6
\ref|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~29_sumout\ = SUM(( \ref|waitNGCount\(2) ) + ( VCC ) + ( \ref|Add0~2\ ))
-- \ref|Add0~30\ = CARRY(( \ref|waitNGCount\(2) ) + ( VCC ) + ( \ref|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNGCount\(2),
	cin => \ref|Add0~2\,
	sumout => \ref|Add0~29_sumout\,
	cout => \ref|Add0~30\);

-- Location: MLABCELL_X82_Y11_N45
\ref|Selector83~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector83~0_combout\ = (!\ref|stateG_reg.waitNClk~q\) # (\ref|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add0~29_sumout\,
	combout => \ref|Selector83~0_combout\);

-- Location: MLABCELL_X82_Y11_N42
\ref|waitNGCountNext[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(2) = ( \ref|Selector83~0_combout\ & ( (\ref|waitNGCountNext\(2)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector83~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_waitNGCountNext\(2),
	dataf => \ref|ALT_INV_Selector83~0_combout\,
	combout => \ref|waitNGCountNext\(2));

-- Location: FF_X81_Y11_N8
\ref|waitNGCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(2),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(2));

-- Location: LABCELL_X81_Y11_N9
\ref|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~25_sumout\ = SUM(( \ref|waitNGCount\(3) ) + ( VCC ) + ( \ref|Add0~30\ ))
-- \ref|Add0~26\ = CARRY(( \ref|waitNGCount\(3) ) + ( VCC ) + ( \ref|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(3),
	cin => \ref|Add0~30\,
	sumout => \ref|Add0~25_sumout\,
	cout => \ref|Add0~26\);

-- Location: LABCELL_X83_Y11_N48
\ref|Selector84~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector84~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~25_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector84~0_combout\);

-- Location: LABCELL_X83_Y11_N51
\ref|waitNGCountNext[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(3) = ( \ref|Selector84~0_combout\ & ( (\ref|waitNGCountNext\(3)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector84~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_waitNGCountNext\(3),
	dataf => \ref|ALT_INV_Selector84~0_combout\,
	combout => \ref|waitNGCountNext\(3));

-- Location: FF_X81_Y11_N11
\ref|waitNGCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(3),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(3));

-- Location: LABCELL_X81_Y11_N12
\ref|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~21_sumout\ = SUM(( \ref|waitNGCount\(4) ) + ( VCC ) + ( \ref|Add0~26\ ))
-- \ref|Add0~22\ = CARRY(( \ref|waitNGCount\(4) ) + ( VCC ) + ( \ref|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNGCount\(4),
	cin => \ref|Add0~26\,
	sumout => \ref|Add0~21_sumout\,
	cout => \ref|Add0~22\);

-- Location: LABCELL_X83_Y11_N27
\ref|Selector85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector85~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~21_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector85~0_combout\);

-- Location: LABCELL_X83_Y11_N24
\ref|waitNGCountNext[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(4) = ( \ref|Selector85~0_combout\ & ( (\ref|waitNGCountNext\(4)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector85~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datac => \ref|ALT_INV_waitNGCountNext\(4),
	dataf => \ref|ALT_INV_Selector85~0_combout\,
	combout => \ref|waitNGCountNext\(4));

-- Location: FF_X81_Y11_N14
\ref|waitNGCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(4),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(4));

-- Location: LABCELL_X81_Y11_N15
\ref|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~17_sumout\ = SUM(( \ref|waitNGCount\(5) ) + ( VCC ) + ( \ref|Add0~22\ ))
-- \ref|Add0~18\ = CARRY(( \ref|waitNGCount\(5) ) + ( VCC ) + ( \ref|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(5),
	cin => \ref|Add0~22\,
	sumout => \ref|Add0~17_sumout\,
	cout => \ref|Add0~18\);

-- Location: LABCELL_X81_Y9_N51
\ref|Selector86~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector86~0_combout\ = ( \ref|Add0~17_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) ) # ( \ref|Add0~17_sumout\ & ( !\ref|stateG_reg.waitNClk~q\ ) ) # ( !\ref|Add0~17_sumout\ & ( !\ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ref|ALT_INV_Add0~17_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector86~0_combout\);

-- Location: LABCELL_X81_Y9_N54
\ref|waitNGCountNext[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(5) = ( \ref|tick_guru~combout\ & ( \ref|Selector86~0_combout\ ) ) # ( !\ref|tick_guru~combout\ & ( \ref|Selector86~0_combout\ & ( \ref|waitNGCountNext\(5) ) ) ) # ( !\ref|tick_guru~combout\ & ( !\ref|Selector86~0_combout\ & ( 
-- \ref|waitNGCountNext\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(5),
	datae => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector86~0_combout\,
	combout => \ref|waitNGCountNext\(5));

-- Location: FF_X81_Y11_N17
\ref|waitNGCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(5),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(5));

-- Location: LABCELL_X81_Y11_N18
\ref|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~13_sumout\ = SUM(( \ref|waitNGCount\(6) ) + ( VCC ) + ( \ref|Add0~18\ ))
-- \ref|Add0~14\ = CARRY(( \ref|waitNGCount\(6) ) + ( VCC ) + ( \ref|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(6),
	cin => \ref|Add0~18\,
	sumout => \ref|Add0~13_sumout\,
	cout => \ref|Add0~14\);

-- Location: MLABCELL_X78_Y11_N48
\ref|Selector87~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector87~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~13_sumout\ ) ) # ( !\ref|stateG_reg.waitNClk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_Add0~13_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector87~0_combout\);

-- Location: MLABCELL_X78_Y11_N54
\ref|waitNGCountNext[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(6) = ( \ref|waitNGCountNext\(6) & ( \ref|Selector87~0_combout\ ) ) # ( !\ref|waitNGCountNext\(6) & ( \ref|Selector87~0_combout\ & ( \ref|tick_guru~combout\ ) ) ) # ( \ref|waitNGCountNext\(6) & ( !\ref|Selector87~0_combout\ & ( 
-- !\ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_tick_guru~combout\,
	datae => \ref|ALT_INV_waitNGCountNext\(6),
	dataf => \ref|ALT_INV_Selector87~0_combout\,
	combout => \ref|waitNGCountNext\(6));

-- Location: FF_X81_Y11_N20
\ref|waitNGCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(6),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(6));

-- Location: LABCELL_X81_Y11_N21
\ref|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~9_sumout\ = SUM(( \ref|waitNGCount\(7) ) + ( VCC ) + ( \ref|Add0~14\ ))
-- \ref|Add0~10\ = CARRY(( \ref|waitNGCount\(7) ) + ( VCC ) + ( \ref|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(7),
	cin => \ref|Add0~14\,
	sumout => \ref|Add0~9_sumout\,
	cout => \ref|Add0~10\);

-- Location: LABCELL_X83_Y11_N33
\ref|Selector88~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector88~0_combout\ = ( \ref|Add0~9_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ref|ALT_INV_Add0~9_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector88~0_combout\);

-- Location: LABCELL_X83_Y11_N0
\ref|waitNGCountNext[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(7) = ( \ref|waitNGCountNext\(7) & ( \ref|Selector88~0_combout\ ) ) # ( !\ref|waitNGCountNext\(7) & ( \ref|Selector88~0_combout\ & ( \ref|tick_guru~combout\ ) ) ) # ( \ref|waitNGCountNext\(7) & ( !\ref|Selector88~0_combout\ & ( 
-- !\ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_tick_guru~combout\,
	datae => \ref|ALT_INV_waitNGCountNext\(7),
	dataf => \ref|ALT_INV_Selector88~0_combout\,
	combout => \ref|waitNGCountNext\(7));

-- Location: FF_X81_Y11_N23
\ref|waitNGCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(7),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(7));

-- Location: LABCELL_X81_Y11_N24
\ref|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~53_sumout\ = SUM(( \ref|waitNGCount\(8) ) + ( VCC ) + ( \ref|Add0~10\ ))
-- \ref|Add0~54\ = CARRY(( \ref|waitNGCount\(8) ) + ( VCC ) + ( \ref|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(8),
	cin => \ref|Add0~10\,
	sumout => \ref|Add0~53_sumout\,
	cout => \ref|Add0~54\);

-- Location: MLABCELL_X82_Y11_N57
\ref|Selector89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector89~0_combout\ = (\ref|stateG_reg.waitNClk~q\ & \ref|Add0~53_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	datac => \ref|ALT_INV_Add0~53_sumout\,
	combout => \ref|Selector89~0_combout\);

-- Location: LABCELL_X83_Y11_N15
\ref|waitNGCountNext[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(8) = ( \ref|waitNGCountNext\(8) & ( (!\ref|tick_guru~combout\) # (\ref|Selector89~0_combout\) ) ) # ( !\ref|waitNGCountNext\(8) & ( (\ref|Selector89~0_combout\ & \ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_Selector89~0_combout\,
	datac => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_waitNGCountNext\(8),
	combout => \ref|waitNGCountNext\(8));

-- Location: FF_X81_Y11_N26
\ref|waitNGCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(8),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(8));

-- Location: LABCELL_X81_Y11_N27
\ref|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~49_sumout\ = SUM(( \ref|waitNGCount\(9) ) + ( VCC ) + ( \ref|Add0~54\ ))
-- \ref|Add0~50\ = CARRY(( \ref|waitNGCount\(9) ) + ( VCC ) + ( \ref|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(9),
	cin => \ref|Add0~54\,
	sumout => \ref|Add0~49_sumout\,
	cout => \ref|Add0~50\);

-- Location: LABCELL_X83_Y11_N21
\ref|Selector90~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector90~0_combout\ = ( \ref|Add0~49_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ref|ALT_INV_Add0~49_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector90~0_combout\);

-- Location: LABCELL_X83_Y11_N54
\ref|waitNGCountNext[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(9) = ( \ref|Selector90~0_combout\ & ( (\ref|waitNGCountNext\(9)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector90~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_waitNGCountNext\(9),
	dataf => \ref|ALT_INV_Selector90~0_combout\,
	combout => \ref|waitNGCountNext\(9));

-- Location: FF_X81_Y11_N29
\ref|waitNGCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(9),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(9));

-- Location: LABCELL_X81_Y11_N30
\ref|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~45_sumout\ = SUM(( \ref|waitNGCount\(10) ) + ( VCC ) + ( \ref|Add0~50\ ))
-- \ref|Add0~46\ = CARRY(( \ref|waitNGCount\(10) ) + ( VCC ) + ( \ref|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(10),
	cin => \ref|Add0~50\,
	sumout => \ref|Add0~45_sumout\,
	cout => \ref|Add0~46\);

-- Location: MLABCELL_X82_Y11_N30
\ref|Selector91~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector91~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_Add0~45_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector91~0_combout\);

-- Location: MLABCELL_X82_Y11_N33
\ref|waitNGCountNext[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(10) = ( \ref|Selector91~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(10)) ) ) # ( !\ref|Selector91~0_combout\ & ( (\ref|waitNGCountNext\(10) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCountNext\(10),
	datab => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector91~0_combout\,
	combout => \ref|waitNGCountNext\(10));

-- Location: FF_X82_Y11_N35
\ref|waitNGCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(10),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(10));

-- Location: LABCELL_X81_Y11_N33
\ref|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~41_sumout\ = SUM(( \ref|waitNGCount\(11) ) + ( VCC ) + ( \ref|Add0~46\ ))
-- \ref|Add0~42\ = CARRY(( \ref|waitNGCount\(11) ) + ( VCC ) + ( \ref|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(11),
	cin => \ref|Add0~46\,
	sumout => \ref|Add0~41_sumout\,
	cout => \ref|Add0~42\);

-- Location: MLABCELL_X82_Y11_N24
\ref|Selector92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector92~0_combout\ = (\ref|stateG_reg.waitNClk~q\ & \ref|Add0~41_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add0~41_sumout\,
	combout => \ref|Selector92~0_combout\);

-- Location: MLABCELL_X82_Y11_N27
\ref|waitNGCountNext[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(11) = ( \ref|Selector92~0_combout\ & ( (\ref|waitNGCountNext\(11)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector92~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_waitNGCountNext\(11),
	dataf => \ref|ALT_INV_Selector92~0_combout\,
	combout => \ref|waitNGCountNext\(11));

-- Location: FF_X82_Y11_N29
\ref|waitNGCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(11),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(11));

-- Location: LABCELL_X81_Y11_N36
\ref|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~37_sumout\ = SUM(( \ref|waitNGCount\(12) ) + ( VCC ) + ( \ref|Add0~42\ ))
-- \ref|Add0~38\ = CARRY(( \ref|waitNGCount\(12) ) + ( VCC ) + ( \ref|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(12),
	cin => \ref|Add0~42\,
	sumout => \ref|Add0~37_sumout\,
	cout => \ref|Add0~38\);

-- Location: MLABCELL_X82_Y11_N36
\ref|Selector93~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector93~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~37_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector93~0_combout\);

-- Location: MLABCELL_X82_Y11_N21
\ref|waitNGCountNext[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(12) = ( \ref|waitNGCountNext\(12) & ( (!\ref|tick_guru~combout\) # (\ref|Selector93~0_combout\) ) ) # ( !\ref|waitNGCountNext\(12) & ( (\ref|Selector93~0_combout\ & \ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector93~0_combout\,
	datab => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_waitNGCountNext\(12),
	combout => \ref|waitNGCountNext\(12));

-- Location: FF_X82_Y11_N23
\ref|waitNGCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(12),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(12));

-- Location: LABCELL_X81_Y11_N39
\ref|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~33_sumout\ = SUM(( \ref|waitNGCount\(13) ) + ( VCC ) + ( \ref|Add0~38\ ))
-- \ref|Add0~34\ = CARRY(( \ref|waitNGCount\(13) ) + ( VCC ) + ( \ref|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(13),
	cin => \ref|Add0~38\,
	sumout => \ref|Add0~33_sumout\,
	cout => \ref|Add0~34\);

-- Location: MLABCELL_X82_Y11_N18
\ref|Selector94~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector94~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_Add0~33_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector94~0_combout\);

-- Location: MLABCELL_X82_Y11_N39
\ref|waitNGCountNext[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(13) = ( \ref|waitNGCountNext\(13) & ( (!\ref|tick_guru~combout\) # (\ref|Selector94~0_combout\) ) ) # ( !\ref|waitNGCountNext\(13) & ( (\ref|Selector94~0_combout\ & \ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector94~0_combout\,
	datac => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_waitNGCountNext\(13),
	combout => \ref|waitNGCountNext\(13));

-- Location: FF_X81_Y11_N32
\ref|waitNGCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNGCountNext\(13),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(13));

-- Location: LABCELL_X81_Y11_N42
\ref|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~77_sumout\ = SUM(( \ref|waitNGCount\(14) ) + ( VCC ) + ( \ref|Add0~34\ ))
-- \ref|Add0~78\ = CARRY(( \ref|waitNGCount\(14) ) + ( VCC ) + ( \ref|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(14),
	cin => \ref|Add0~34\,
	sumout => \ref|Add0~77_sumout\,
	cout => \ref|Add0~78\);

-- Location: MLABCELL_X82_Y11_N54
\ref|Selector95~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector95~0_combout\ = (\ref|stateG_reg.waitNClk~q\ & \ref|Add0~77_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add0~77_sumout\,
	combout => \ref|Selector95~0_combout\);

-- Location: LABCELL_X83_Y11_N45
\ref|waitNGCountNext[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(14) = ( \ref|waitNGCountNext\(14) & ( \ref|Selector95~0_combout\ ) ) # ( !\ref|waitNGCountNext\(14) & ( \ref|Selector95~0_combout\ & ( \ref|tick_guru~combout\ ) ) ) # ( \ref|waitNGCountNext\(14) & ( !\ref|Selector95~0_combout\ & ( 
-- !\ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_guru~combout\,
	datae => \ref|ALT_INV_waitNGCountNext\(14),
	dataf => \ref|ALT_INV_Selector95~0_combout\,
	combout => \ref|waitNGCountNext\(14));

-- Location: FF_X83_Y11_N47
\ref|waitNGCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(14),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(14));

-- Location: LABCELL_X81_Y11_N45
\ref|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~73_sumout\ = SUM(( \ref|waitNGCount\(15) ) + ( VCC ) + ( \ref|Add0~78\ ))
-- \ref|Add0~74\ = CARRY(( \ref|waitNGCount\(15) ) + ( VCC ) + ( \ref|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(15),
	cin => \ref|Add0~78\,
	sumout => \ref|Add0~73_sumout\,
	cout => \ref|Add0~74\);

-- Location: LABCELL_X80_Y11_N6
\ref|Selector96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector96~0_combout\ = ( \ref|Add0~73_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~73_sumout\,
	combout => \ref|Selector96~0_combout\);

-- Location: LABCELL_X80_Y11_N57
\ref|waitNGCountNext[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(15) = ( \ref|waitNGCountNext\(15) & ( \ref|Selector96~0_combout\ ) ) # ( !\ref|waitNGCountNext\(15) & ( \ref|Selector96~0_combout\ & ( \ref|tick_guru~combout\ ) ) ) # ( \ref|waitNGCountNext\(15) & ( !\ref|Selector96~0_combout\ & ( 
-- !\ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_guru~combout\,
	datae => \ref|ALT_INV_waitNGCountNext\(15),
	dataf => \ref|ALT_INV_Selector96~0_combout\,
	combout => \ref|waitNGCountNext\(15));

-- Location: FF_X80_Y11_N59
\ref|waitNGCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(15),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(15));

-- Location: LABCELL_X81_Y11_N48
\ref|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~69_sumout\ = SUM(( \ref|waitNGCount\(16) ) + ( VCC ) + ( \ref|Add0~74\ ))
-- \ref|Add0~70\ = CARRY(( \ref|waitNGCount\(16) ) + ( VCC ) + ( \ref|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(16),
	cin => \ref|Add0~74\,
	sumout => \ref|Add0~69_sumout\,
	cout => \ref|Add0~70\);

-- Location: MLABCELL_X82_Y11_N12
\ref|Selector97~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector97~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~69_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector97~0_combout\);

-- Location: MLABCELL_X82_Y11_N15
\ref|waitNGCountNext[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(16) = ( \ref|Selector97~0_combout\ & ( (\ref|waitNGCountNext\(16)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector97~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datac => \ref|ALT_INV_waitNGCountNext\(16),
	dataf => \ref|ALT_INV_Selector97~0_combout\,
	combout => \ref|waitNGCountNext\(16));

-- Location: FF_X82_Y11_N17
\ref|waitNGCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(16),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(16));

-- Location: LABCELL_X81_Y11_N51
\ref|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~65_sumout\ = SUM(( \ref|waitNGCount\(17) ) + ( VCC ) + ( \ref|Add0~70\ ))
-- \ref|Add0~66\ = CARRY(( \ref|waitNGCount\(17) ) + ( VCC ) + ( \ref|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(17),
	cin => \ref|Add0~70\,
	sumout => \ref|Add0~65_sumout\,
	cout => \ref|Add0~66\);

-- Location: MLABCELL_X82_Y11_N0
\ref|Selector98~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector98~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_Add0~65_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector98~0_combout\);

-- Location: MLABCELL_X82_Y11_N3
\ref|waitNGCountNext[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(17) = (!\ref|tick_guru~combout\ & ((\ref|waitNGCountNext\(17)))) # (\ref|tick_guru~combout\ & (\ref|Selector98~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_Selector98~0_combout\,
	datac => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_waitNGCountNext\(17),
	combout => \ref|waitNGCountNext\(17));

-- Location: FF_X82_Y11_N5
\ref|waitNGCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(17),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(17));

-- Location: LABCELL_X81_Y11_N54
\ref|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~61_sumout\ = SUM(( \ref|waitNGCount\(18) ) + ( VCC ) + ( \ref|Add0~66\ ))
-- \ref|Add0~62\ = CARRY(( \ref|waitNGCount\(18) ) + ( VCC ) + ( \ref|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNGCount\(18),
	cin => \ref|Add0~66\,
	sumout => \ref|Add0~61_sumout\,
	cout => \ref|Add0~62\);

-- Location: LABCELL_X80_Y11_N48
\ref|Selector99~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector99~0_combout\ = ( \ref|Add0~61_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ref|ALT_INV_Add0~61_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector99~0_combout\);

-- Location: LABCELL_X80_Y11_N3
\ref|waitNGCountNext[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(18) = ( \ref|waitNGCountNext\(18) & ( \ref|Selector99~0_combout\ ) ) # ( !\ref|waitNGCountNext\(18) & ( \ref|Selector99~0_combout\ & ( \ref|tick_guru~combout\ ) ) ) # ( \ref|waitNGCountNext\(18) & ( !\ref|Selector99~0_combout\ & ( 
-- !\ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_guru~combout\,
	datae => \ref|ALT_INV_waitNGCountNext\(18),
	dataf => \ref|ALT_INV_Selector99~0_combout\,
	combout => \ref|waitNGCountNext\(18));

-- Location: FF_X80_Y11_N5
\ref|waitNGCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(18),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(18));

-- Location: LABCELL_X81_Y11_N57
\ref|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~57_sumout\ = SUM(( \ref|waitNGCount\(19) ) + ( VCC ) + ( \ref|Add0~62\ ))
-- \ref|Add0~58\ = CARRY(( \ref|waitNGCount\(19) ) + ( VCC ) + ( \ref|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(19),
	cin => \ref|Add0~62\,
	sumout => \ref|Add0~57_sumout\,
	cout => \ref|Add0~58\);

-- Location: MLABCELL_X82_Y11_N6
\ref|Selector100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector100~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~57_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector100~0_combout\);

-- Location: MLABCELL_X82_Y11_N9
\ref|waitNGCountNext[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(19) = ( \ref|waitNGCountNext\(19) & ( (!\ref|tick_guru~combout\) # (\ref|Selector100~0_combout\) ) ) # ( !\ref|waitNGCountNext\(19) & ( (\ref|Selector100~0_combout\ & \ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector100~0_combout\,
	datac => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_waitNGCountNext\(19),
	combout => \ref|waitNGCountNext\(19));

-- Location: FF_X82_Y11_N11
\ref|waitNGCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(19),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(19));

-- Location: LABCELL_X81_Y10_N0
\ref|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~125_sumout\ = SUM(( \ref|waitNGCount\(20) ) + ( VCC ) + ( \ref|Add0~58\ ))
-- \ref|Add0~126\ = CARRY(( \ref|waitNGCount\(20) ) + ( VCC ) + ( \ref|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(20),
	cin => \ref|Add0~58\,
	sumout => \ref|Add0~125_sumout\,
	cout => \ref|Add0~126\);

-- Location: LABCELL_X80_Y10_N33
\ref|Selector101~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector101~0_combout\ = (\ref|stateG_reg.waitNClk~q\ & \ref|Add0~125_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add0~125_sumout\,
	combout => \ref|Selector101~0_combout\);

-- Location: LABCELL_X80_Y10_N30
\ref|waitNGCountNext[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(20) = ( \ref|Selector101~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(20)) ) ) # ( !\ref|Selector101~0_combout\ & ( (\ref|waitNGCountNext\(20) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(20),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector101~0_combout\,
	combout => \ref|waitNGCountNext\(20));

-- Location: FF_X80_Y10_N32
\ref|waitNGCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(20),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(20));

-- Location: LABCELL_X81_Y10_N3
\ref|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~121_sumout\ = SUM(( \ref|waitNGCount\(21) ) + ( VCC ) + ( \ref|Add0~126\ ))
-- \ref|Add0~122\ = CARRY(( \ref|waitNGCount\(21) ) + ( VCC ) + ( \ref|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(21),
	cin => \ref|Add0~126\,
	sumout => \ref|Add0~121_sumout\,
	cout => \ref|Add0~122\);

-- Location: LABCELL_X80_Y10_N21
\ref|Selector102~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector102~0_combout\ = (\ref|stateG_reg.waitNClk~q\ & \ref|Add0~121_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add0~121_sumout\,
	combout => \ref|Selector102~0_combout\);

-- Location: LABCELL_X80_Y10_N18
\ref|waitNGCountNext[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(21) = ( \ref|Selector102~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(21)) ) ) # ( !\ref|Selector102~0_combout\ & ( (\ref|waitNGCountNext\(21) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNGCountNext\(21),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector102~0_combout\,
	combout => \ref|waitNGCountNext\(21));

-- Location: FF_X80_Y10_N20
\ref|waitNGCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(21),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(21));

-- Location: LABCELL_X81_Y10_N6
\ref|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~117_sumout\ = SUM(( \ref|waitNGCount\(22) ) + ( VCC ) + ( \ref|Add0~122\ ))
-- \ref|Add0~118\ = CARRY(( \ref|waitNGCount\(22) ) + ( VCC ) + ( \ref|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNGCount\(22),
	cin => \ref|Add0~122\,
	sumout => \ref|Add0~117_sumout\,
	cout => \ref|Add0~118\);

-- Location: LABCELL_X80_Y10_N15
\ref|Selector103~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector103~0_combout\ = ( \ref|Add0~117_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~117_sumout\,
	combout => \ref|Selector103~0_combout\);

-- Location: LABCELL_X80_Y10_N12
\ref|waitNGCountNext[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(22) = ( \ref|Selector103~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(22)) ) ) # ( !\ref|Selector103~0_combout\ & ( (\ref|waitNGCountNext\(22) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNGCountNext\(22),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector103~0_combout\,
	combout => \ref|waitNGCountNext\(22));

-- Location: FF_X80_Y10_N14
\ref|waitNGCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(22),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(22));

-- Location: LABCELL_X81_Y10_N9
\ref|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~113_sumout\ = SUM(( \ref|waitNGCount\(23) ) + ( VCC ) + ( \ref|Add0~118\ ))
-- \ref|Add0~114\ = CARRY(( \ref|waitNGCount\(23) ) + ( VCC ) + ( \ref|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(23),
	cin => \ref|Add0~118\,
	sumout => \ref|Add0~113_sumout\,
	cout => \ref|Add0~114\);

-- Location: LABCELL_X80_Y10_N39
\ref|Selector104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector104~0_combout\ = ( \ref|Add0~113_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ref|ALT_INV_Add0~113_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector104~0_combout\);

-- Location: LABCELL_X80_Y10_N42
\ref|waitNGCountNext[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(23) = ( \ref|tick_guru~combout\ & ( \ref|waitNGCountNext\(23) & ( \ref|Selector104~0_combout\ ) ) ) # ( !\ref|tick_guru~combout\ & ( \ref|waitNGCountNext\(23) ) ) # ( \ref|tick_guru~combout\ & ( !\ref|waitNGCountNext\(23) & ( 
-- \ref|Selector104~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_Selector104~0_combout\,
	datae => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_waitNGCountNext\(23),
	combout => \ref|waitNGCountNext\(23));

-- Location: FF_X80_Y10_N44
\ref|waitNGCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(23),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(23));

-- Location: LABCELL_X81_Y10_N12
\ref|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~109_sumout\ = SUM(( \ref|waitNGCount\(24) ) + ( VCC ) + ( \ref|Add0~114\ ))
-- \ref|Add0~110\ = CARRY(( \ref|waitNGCount\(24) ) + ( VCC ) + ( \ref|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(24),
	cin => \ref|Add0~114\,
	sumout => \ref|Add0~109_sumout\,
	cout => \ref|Add0~110\);

-- Location: LABCELL_X80_Y10_N27
\ref|Selector105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector105~0_combout\ = ( \ref|Add0~109_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~109_sumout\,
	combout => \ref|Selector105~0_combout\);

-- Location: LABCELL_X80_Y10_N6
\ref|waitNGCountNext[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(24) = ( \ref|tick_guru~combout\ & ( \ref|Selector105~0_combout\ ) ) # ( !\ref|tick_guru~combout\ & ( \ref|Selector105~0_combout\ & ( \ref|waitNGCountNext\(24) ) ) ) # ( !\ref|tick_guru~combout\ & ( !\ref|Selector105~0_combout\ & ( 
-- \ref|waitNGCountNext\(24) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(24),
	datae => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector105~0_combout\,
	combout => \ref|waitNGCountNext\(24));

-- Location: FF_X80_Y10_N8
\ref|waitNGCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(24),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(24));

-- Location: LABCELL_X81_Y10_N15
\ref|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~105_sumout\ = SUM(( \ref|waitNGCount\(25) ) + ( VCC ) + ( \ref|Add0~110\ ))
-- \ref|Add0~106\ = CARRY(( \ref|waitNGCount\(25) ) + ( VCC ) + ( \ref|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNGCount\(25),
	cin => \ref|Add0~110\,
	sumout => \ref|Add0~105_sumout\,
	cout => \ref|Add0~106\);

-- Location: LABCELL_X80_Y10_N0
\ref|Selector106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector106~0_combout\ = ( \ref|Add0~105_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ref|ALT_INV_Add0~105_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector106~0_combout\);

-- Location: LABCELL_X80_Y10_N57
\ref|waitNGCountNext[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(25) = ( \ref|tick_guru~combout\ & ( \ref|Selector106~0_combout\ ) ) # ( !\ref|tick_guru~combout\ & ( \ref|Selector106~0_combout\ & ( \ref|waitNGCountNext\(25) ) ) ) # ( !\ref|tick_guru~combout\ & ( !\ref|Selector106~0_combout\ & ( 
-- \ref|waitNGCountNext\(25) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(25),
	datae => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector106~0_combout\,
	combout => \ref|waitNGCountNext\(25));

-- Location: FF_X80_Y10_N59
\ref|waitNGCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(25),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(25));

-- Location: LABCELL_X80_Y10_N48
\ref|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal0~5_combout\ = ( !\ref|waitNGCount\(25) & ( !\ref|waitNGCount\(22) & ( (!\ref|waitNGCount\(21) & (!\ref|waitNGCount\(20) & (!\ref|waitNGCount\(23) & !\ref|waitNGCount\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(21),
	datab => \ref|ALT_INV_waitNGCount\(20),
	datac => \ref|ALT_INV_waitNGCount\(23),
	datad => \ref|ALT_INV_waitNGCount\(24),
	datae => \ref|ALT_INV_waitNGCount\(25),
	dataf => \ref|ALT_INV_waitNGCount\(22),
	combout => \ref|Equal0~5_combout\);

-- Location: LABCELL_X81_Y10_N18
\ref|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~101_sumout\ = SUM(( \ref|waitNGCount\(26) ) + ( VCC ) + ( \ref|Add0~106\ ))
-- \ref|Add0~102\ = CARRY(( \ref|waitNGCount\(26) ) + ( VCC ) + ( \ref|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(26),
	cin => \ref|Add0~106\,
	sumout => \ref|Add0~101_sumout\,
	cout => \ref|Add0~102\);

-- Location: LABCELL_X81_Y10_N51
\ref|Selector107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector107~0_combout\ = ( \ref|Add0~101_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~101_sumout\,
	combout => \ref|Selector107~0_combout\);

-- Location: LABCELL_X81_Y10_N48
\ref|waitNGCountNext[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(26) = ( \ref|Selector107~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(26)) ) ) # ( !\ref|Selector107~0_combout\ & ( (\ref|waitNGCountNext\(26) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(26),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector107~0_combout\,
	combout => \ref|waitNGCountNext\(26));

-- Location: FF_X81_Y10_N50
\ref|waitNGCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(26),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(26));

-- Location: LABCELL_X81_Y10_N21
\ref|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~97_sumout\ = SUM(( \ref|waitNGCount\(27) ) + ( VCC ) + ( \ref|Add0~102\ ))
-- \ref|Add0~98\ = CARRY(( \ref|waitNGCount\(27) ) + ( VCC ) + ( \ref|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(27),
	cin => \ref|Add0~102\,
	sumout => \ref|Add0~97_sumout\,
	cout => \ref|Add0~98\);

-- Location: LABCELL_X81_Y10_N36
\ref|Selector108~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector108~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( \ref|Add0~97_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add0~97_sumout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector108~0_combout\);

-- Location: LABCELL_X81_Y10_N39
\ref|waitNGCountNext[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(27) = ( \ref|Selector108~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(27)) ) ) # ( !\ref|Selector108~0_combout\ & ( (\ref|waitNGCountNext\(27) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(27),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector108~0_combout\,
	combout => \ref|waitNGCountNext\(27));

-- Location: FF_X81_Y10_N41
\ref|waitNGCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(27),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(27));

-- Location: LABCELL_X81_Y10_N24
\ref|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~93_sumout\ = SUM(( \ref|waitNGCount\(28) ) + ( VCC ) + ( \ref|Add0~98\ ))
-- \ref|Add0~94\ = CARRY(( \ref|waitNGCount\(28) ) + ( VCC ) + ( \ref|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(28),
	cin => \ref|Add0~98\,
	sumout => \ref|Add0~93_sumout\,
	cout => \ref|Add0~94\);

-- Location: MLABCELL_X82_Y10_N12
\ref|Selector109~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector109~0_combout\ = ( \ref|Add0~93_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~93_sumout\,
	combout => \ref|Selector109~0_combout\);

-- Location: MLABCELL_X82_Y10_N21
\ref|waitNGCountNext[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(28) = ( \ref|Selector109~0_combout\ & ( (\ref|waitNGCountNext\(28)) # (\ref|tick_guru~combout\) ) ) # ( !\ref|Selector109~0_combout\ & ( (!\ref|tick_guru~combout\ & \ref|waitNGCountNext\(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_waitNGCountNext\(28),
	dataf => \ref|ALT_INV_Selector109~0_combout\,
	combout => \ref|waitNGCountNext\(28));

-- Location: FF_X82_Y10_N23
\ref|waitNGCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(28),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(28));

-- Location: LABCELL_X81_Y10_N27
\ref|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~89_sumout\ = SUM(( \ref|waitNGCount\(29) ) + ( VCC ) + ( \ref|Add0~94\ ))
-- \ref|Add0~90\ = CARRY(( \ref|waitNGCount\(29) ) + ( VCC ) + ( \ref|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCount\(29),
	cin => \ref|Add0~94\,
	sumout => \ref|Add0~89_sumout\,
	cout => \ref|Add0~90\);

-- Location: MLABCELL_X82_Y10_N48
\ref|Selector110~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector110~0_combout\ = ( \ref|Add0~89_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~89_sumout\,
	combout => \ref|Selector110~0_combout\);

-- Location: MLABCELL_X82_Y10_N57
\ref|waitNGCountNext[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(29) = ( \ref|tick_guru~combout\ & ( \ref|Selector110~0_combout\ ) ) # ( !\ref|tick_guru~combout\ & ( \ref|Selector110~0_combout\ & ( \ref|waitNGCountNext\(29) ) ) ) # ( !\ref|tick_guru~combout\ & ( !\ref|Selector110~0_combout\ & ( 
-- \ref|waitNGCountNext\(29) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(29),
	datae => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector110~0_combout\,
	combout => \ref|waitNGCountNext\(29));

-- Location: FF_X82_Y10_N59
\ref|waitNGCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(29),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(29));

-- Location: LABCELL_X81_Y10_N30
\ref|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~85_sumout\ = SUM(( \ref|waitNGCount\(30) ) + ( VCC ) + ( \ref|Add0~90\ ))
-- \ref|Add0~86\ = CARRY(( \ref|waitNGCount\(30) ) + ( VCC ) + ( \ref|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNGCount\(30),
	cin => \ref|Add0~90\,
	sumout => \ref|Add0~85_sumout\,
	cout => \ref|Add0~86\);

-- Location: LABCELL_X81_Y10_N54
\ref|Selector111~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector111~0_combout\ = ( \ref|Add0~85_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~85_sumout\,
	combout => \ref|Selector111~0_combout\);

-- Location: LABCELL_X81_Y10_N57
\ref|waitNGCountNext[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(30) = ( \ref|Selector111~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(30)) ) ) # ( !\ref|Selector111~0_combout\ & ( (\ref|waitNGCountNext\(30) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(30),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector111~0_combout\,
	combout => \ref|waitNGCountNext\(30));

-- Location: FF_X81_Y10_N59
\ref|waitNGCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(30),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(30));

-- Location: LABCELL_X81_Y10_N33
\ref|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add0~81_sumout\ = SUM(( \ref|waitNGCount\(31) ) + ( VCC ) + ( \ref|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(31),
	cin => \ref|Add0~86\,
	sumout => \ref|Add0~81_sumout\);

-- Location: LABCELL_X81_Y10_N42
\ref|Selector112~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector112~0_combout\ = ( \ref|Add0~81_sumout\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add0~81_sumout\,
	combout => \ref|Selector112~0_combout\);

-- Location: LABCELL_X81_Y10_N45
\ref|waitNGCountNext[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNGCountNext\(31) = ( \ref|Selector112~0_combout\ & ( (\ref|tick_guru~combout\) # (\ref|waitNGCountNext\(31)) ) ) # ( !\ref|Selector112~0_combout\ & ( (\ref|waitNGCountNext\(31) & !\ref|tick_guru~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNGCountNext\(31),
	datad => \ref|ALT_INV_tick_guru~combout\,
	dataf => \ref|ALT_INV_Selector112~0_combout\,
	combout => \ref|waitNGCountNext\(31));

-- Location: FF_X81_Y10_N47
\ref|waitNGCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNGCountNext\(31),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNGCount\(31));

-- Location: MLABCELL_X82_Y10_N30
\ref|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal0~4_combout\ = ( !\ref|waitNGCount\(27) & ( !\ref|waitNGCount\(31) & ( (!\ref|waitNGCount\(26) & (!\ref|waitNGCount\(28) & (!\ref|waitNGCount\(29) & !\ref|waitNGCount\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(26),
	datab => \ref|ALT_INV_waitNGCount\(28),
	datac => \ref|ALT_INV_waitNGCount\(29),
	datad => \ref|ALT_INV_waitNGCount\(30),
	datae => \ref|ALT_INV_waitNGCount\(27),
	dataf => \ref|ALT_INV_waitNGCount\(31),
	combout => \ref|Equal0~4_combout\);

-- Location: MLABCELL_X82_Y10_N36
\ref|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal0~1_combout\ = ( !\ref|waitNGCount\(3) & ( !\ref|waitNGCount\(6) & ( (!\ref|waitNGCount\(4) & (!\ref|waitNGCount\(2) & (!\ref|waitNGCount\(5) & !\ref|waitNGCount\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(4),
	datab => \ref|ALT_INV_waitNGCount\(2),
	datac => \ref|ALT_INV_waitNGCount\(5),
	datad => \ref|ALT_INV_waitNGCount\(7),
	datae => \ref|ALT_INV_waitNGCount\(3),
	dataf => \ref|ALT_INV_waitNGCount\(6),
	combout => \ref|Equal0~1_combout\);

-- Location: MLABCELL_X82_Y10_N6
\ref|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal0~3_combout\ = ( !\ref|waitNGCount\(18) & ( !\ref|waitNGCount\(15) & ( (!\ref|waitNGCount\(16) & (!\ref|waitNGCount\(17) & (!\ref|waitNGCount\(14) & !\ref|waitNGCount\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(16),
	datab => \ref|ALT_INV_waitNGCount\(17),
	datac => \ref|ALT_INV_waitNGCount\(14),
	datad => \ref|ALT_INV_waitNGCount\(19),
	datae => \ref|ALT_INV_waitNGCount\(18),
	dataf => \ref|ALT_INV_waitNGCount\(15),
	combout => \ref|Equal0~3_combout\);

-- Location: LABCELL_X83_Y11_N39
\ref|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal0~2_combout\ = ( !\ref|waitNGCount\(9) & ( !\ref|waitNGCount\(13) & ( (!\ref|waitNGCount\(10) & (!\ref|waitNGCount\(8) & (!\ref|waitNGCount\(11) & !\ref|waitNGCount\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(10),
	datab => \ref|ALT_INV_waitNGCount\(8),
	datac => \ref|ALT_INV_waitNGCount\(11),
	datad => \ref|ALT_INV_waitNGCount\(12),
	datae => \ref|ALT_INV_waitNGCount\(9),
	dataf => \ref|ALT_INV_waitNGCount\(13),
	combout => \ref|Equal0~2_combout\);

-- Location: MLABCELL_X82_Y11_N51
\ref|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal0~0_combout\ = (!\ref|waitNGCount\(1) & !\ref|waitNGCount\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNGCount\(1),
	datac => \ref|ALT_INV_waitNGCount\(0),
	combout => \ref|Equal0~0_combout\);

-- Location: MLABCELL_X82_Y10_N0
\ref|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal0~6_combout\ = ( \ref|Equal0~2_combout\ & ( \ref|Equal0~0_combout\ & ( (\ref|Equal0~5_combout\ & (\ref|Equal0~4_combout\ & (\ref|Equal0~1_combout\ & \ref|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal0~5_combout\,
	datab => \ref|ALT_INV_Equal0~4_combout\,
	datac => \ref|ALT_INV_Equal0~1_combout\,
	datad => \ref|ALT_INV_Equal0~3_combout\,
	datae => \ref|ALT_INV_Equal0~2_combout\,
	dataf => \ref|ALT_INV_Equal0~0_combout\,
	combout => \ref|Equal0~6_combout\);

-- Location: MLABCELL_X82_Y10_N24
\ref|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector3~0_combout\ = ( \basis|control|main|STATE.CHECK_END~q\ & ( (!\ref|Equal0~6_combout\ & (((!\step|rdy_v1_s~q\) # (\ref|stateG_reg.waitRdy0~q\)))) # (\ref|Equal0~6_combout\ & (!\ref|stateG_reg.waitNClk~q\ & ((!\step|rdy_v1_s~q\) # 
-- (\ref|stateG_reg.waitRdy0~q\)))) ) ) # ( !\basis|control|main|STATE.CHECK_END~q\ & ( (!\ref|Equal0~6_combout\) # (!\ref|stateG_reg.waitNClk~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011100000111011101110000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal0~6_combout\,
	datab => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	datac => \step|ALT_INV_rdy_v1_s~q\,
	datad => \ref|ALT_INV_stateG_reg.waitRdy0~q\,
	dataf => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \ref|Selector3~0_combout\);

-- Location: FF_X82_Y10_N25
\ref|stateG_reg.waitRdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector3~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateG_reg.waitRdy0~q\);

-- Location: MLABCELL_X82_Y10_N18
\ref|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector1~0_combout\ = ( \ref|stateG_reg.waitRdy0~q\ & ( (\ref|stateG_reg.rdy0~q\ & ((!\basis|control|main|STATE.CHECK_END~q\) # (!\step|rdy_v1_s~q\))) ) ) # ( !\ref|stateG_reg.waitRdy0~q\ & ( (!\basis|control|main|STATE.CHECK_END~q\) # 
-- (!\step|rdy_v1_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	datac => \step|ALT_INV_rdy_v1_s~q\,
	datad => \ref|ALT_INV_stateG_reg.rdy0~q\,
	dataf => \ref|ALT_INV_stateG_reg.waitRdy0~q\,
	combout => \ref|Selector1~0_combout\);

-- Location: FF_X82_Y10_N20
\ref|stateG_reg.rdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateG_reg.rdy0~q\);

-- Location: MLABCELL_X82_Y10_N15
\ref|stateG_next.rdy1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|stateG_next.rdy1~0_combout\ = ( \basis|control|main|STATE.CHECK_END~q\ & ( (\ref|stateG_reg.rdy0~q\ & \step|rdy_v1_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateG_reg.rdy0~q\,
	datad => \step|ALT_INV_rdy_v1_s~q\,
	dataf => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \ref|stateG_next.rdy1~0_combout\);

-- Location: FF_X82_Y11_N53
\ref|stateG_reg.rdy1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|stateG_next.rdy1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateG_reg.rdy1~q\);

-- Location: MLABCELL_X82_Y10_N27
\ref|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector2~0_combout\ = ( \ref|stateG_reg.waitNClk~q\ & ( (!\ref|Equal0~6_combout\) # (\ref|stateG_reg.rdy1~q\) ) ) # ( !\ref|stateG_reg.waitNClk~q\ & ( \ref|stateG_reg.rdy1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateG_reg.rdy1~q\,
	datad => \ref|ALT_INV_Equal0~6_combout\,
	dataf => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	combout => \ref|Selector2~0_combout\);

-- Location: FF_X82_Y11_N50
\ref|stateG_reg.waitNClk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|Selector2~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateG_reg.waitNClk~q\);

-- Location: MLABCELL_X82_Y11_N48
\ref|tick_guru\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|tick_guru~combout\ = ( \ref|stateG_reg.rdy1~q\ ) # ( !\ref|stateG_reg.rdy1~q\ & ( \ref|stateG_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_stateG_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_stateG_reg.rdy1~q\,
	combout => \ref|tick_guru~combout\);

-- Location: IOIBUF_X89_Y8_N21
\disc_2_ref.disc_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(5),
	o => \disc_2_ref.disc_addr[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\disc_2_ref.disc_addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(7),
	o => \disc_2_ref.disc_addr[7]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\disc_2_ref.disc_addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(6),
	o => \disc_2_ref.disc_addr[6]~input_o\);

-- Location: LABCELL_X81_Y5_N42
\basis|control|init|STATE~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|init|STATE~7_combout\ = ( !\res~input_o\ & ( (!\basis|control|init|STATE.DONE~q\ & ((!\basis|control|main|STATE.INIT_ACTIVATION~q\) # (\basis|control|init|STATE.IDLE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \basis|control|init|ALT_INV_STATE.DONE~q\,
	datad => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	dataf => \ALT_INV_res~input_o\,
	combout => \basis|control|init|STATE~7_combout\);

-- Location: FF_X81_Y5_N44
\basis|control|init|STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|init|STATE~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|init|STATE.IDLE~q\);

-- Location: LABCELL_X81_Y5_N48
\basis|control|init|STATE~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|init|STATE~8_combout\ = ( !\basis|control|init|STATE.IDLE~q\ & ( (!\res~input_o\ & !\basis|control|main|STATE.INIT_ACTIVATION~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	datad => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	combout => \basis|control|init|STATE~8_combout\);

-- Location: FF_X81_Y5_N50
\basis|control|init|STATE.ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|init|STATE~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|init|STATE.ZERO~q\);

-- Location: LABCELL_X81_Y5_N27
\basis|control|init|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|init|Selector1~0_combout\ = ( \basis|control|init|STATE.ZERO~q\ ) # ( !\basis|control|init|STATE.ZERO~q\ & ( (!\basis|data|rb|rb_out[6]~8_combout\ & \basis|control|init|STATE.MEM_WALK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|data|rb|ALT_INV_rb_out[6]~8_combout\,
	datad => \basis|control|init|ALT_INV_STATE.MEM_WALK~q\,
	dataf => \basis|control|init|ALT_INV_STATE.ZERO~q\,
	combout => \basis|control|init|Selector1~0_combout\);

-- Location: FF_X81_Y5_N29
\basis|control|init|STATE.MEM_WALK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|init|Selector1~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|init|STATE.MEM_WALK~q\);

-- Location: LABCELL_X81_Y5_N3
\basis|control|init|STATE~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|init|STATE~6_combout\ = ( \basis|control|init|STATE.MEM_WALK~q\ & ( (!\res~input_o\ & \basis|data|rb|rb_out[6]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \basis|data|rb|ALT_INV_rb_out[6]~8_combout\,
	dataf => \basis|control|init|ALT_INV_STATE.MEM_WALK~q\,
	combout => \basis|control|init|STATE~6_combout\);

-- Location: FF_X81_Y5_N5
\basis|control|init|STATE.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|init|STATE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|init|STATE.DONE~q\);

-- Location: LABCELL_X80_Y5_N12
\basis|control|main|STATE~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|STATE~9_combout\ = ( \basis|control|init|STATE.DONE~q\ & ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( !\res~input_o\ ) ) ) # ( !\basis|control|init|STATE.DONE~q\ & ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( !\res~input_o\ 
-- ) ) ) # ( \basis|control|init|STATE.DONE~q\ & ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( !\res~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	datae => \basis|control|init|ALT_INV_STATE.DONE~q\,
	dataf => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \basis|control|main|STATE~9_combout\);

-- Location: FF_X81_Y4_N56
\basis|control|main|STATE.INIT_ACTIVATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|control|main|STATE~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|main|STATE.INIT_ACTIVATION~q\);

-- Location: IOIBUF_X82_Y0_N92
\disc_2_ref.disc_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(3),
	o => \disc_2_ref.disc_addr[3]~input_o\);

-- Location: LABCELL_X81_Y5_N12
\basis|control|ctrl_2_dp.alu_ctrl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.alu_ctrl~0_combout\ = ( \basis|control|guru|STATE.START_WALKING~q\ & ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\basis|control|guru|STATE.RAND~q\ & (!\basis|control|guru|STATE.WRITE_RAND~q\ & 
-- !\basis|control|guru|STATE.WAIT_COUNT_GURU~q\)) ) ) ) # ( \basis|control|guru|STATE.START_WALKING~q\ & ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|control|init|STATE.MEM_WALK~q\ ) ) ) # ( !\basis|control|guru|STATE.START_WALKING~q\ & ( 
-- !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|control|init|STATE.MEM_WALK~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.RAND~q\,
	datab => \basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datac => \basis|control|init|ALT_INV_STATE.MEM_WALK~q\,
	datad => \basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	datae => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	dataf => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \basis|control|ctrl_2_dp.alu_ctrl~0_combout\);

-- Location: LABCELL_X81_Y5_N57
\basis|control|ctrl_2_dp.ng_cte_incr~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.ng_cte_incr~1_combout\ = ( !\basis|control|guru|STATE.RAND~q\ & ( !\basis|control|guru|STATE.WRITE_RAND~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	dataf => \basis|control|guru|ALT_INV_STATE.RAND~q\,
	combout => \basis|control|ctrl_2_dp.ng_cte_incr~1_combout\);

-- Location: LABCELL_X81_Y5_N18
\basis|control|ctrl_2_dp.ng_cte_incr~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ = ( \basis|control|guru|STATE.START_WALKING~q\ & ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\basis|control|guru|STATE.WAIT_COUNT_GURU~q\ & \basis|control|ctrl_2_dp.ng_cte_incr~1_combout\) ) ) ) # ( 
-- \basis|control|guru|STATE.START_WALKING~q\ & ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\basis|control|init|STATE.ZERO~q\ & \basis|control|init|STATE.IDLE~q\) ) ) ) # ( !\basis|control|guru|STATE.START_WALKING~q\ & ( 
-- !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\basis|control|init|STATE.ZERO~q\ & \basis|control|init|STATE.IDLE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|init|ALT_INV_STATE.ZERO~q\,
	datab => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	datac => \basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	datad => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\,
	datae => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	dataf => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\);

-- Location: LABCELL_X79_Y5_N3
\basis|data|rb|reg_INIT|q_s[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|reg_INIT|q_s[7]~0_combout\ = ( \basis|control|init|STATE.DONE~q\ & ( \basis|control|init|STATE.IDLE~q\ & ( \res~input_o\ ) ) ) # ( !\basis|control|init|STATE.DONE~q\ & ( \basis|control|init|STATE.IDLE~q\ & ( 
-- (!\basis|control|main|STATE.INIT_ACTIVATION~q\) # (\res~input_o\) ) ) ) # ( \basis|control|init|STATE.DONE~q\ & ( !\basis|control|init|STATE.IDLE~q\ & ( \res~input_o\ ) ) ) # ( !\basis|control|init|STATE.DONE~q\ & ( !\basis|control|init|STATE.IDLE~q\ & ( 
-- \res~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110101111101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datae => \basis|control|init|ALT_INV_STATE.DONE~q\,
	dataf => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	combout => \basis|data|rb|reg_INIT|q_s[7]~0_combout\);

-- Location: FF_X81_Y4_N31
\basis|data|rb|reg_INIT|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[5]~2_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(5));

-- Location: MLABCELL_X82_Y4_N45
\basis|data|rb|rb_out[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[5]~7_combout\ = ( \basis|control|guru|STATE.LAST~q\ & ( \basis|data|rb|reg_GURU|q_s\(5) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_INIT|q_s\(5))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- ((\basis|data|rb|reg_PRE_GURU|q_s\(5)))) ) ) ) # ( !\basis|control|guru|STATE.LAST~q\ & ( \basis|data|rb|reg_GURU|q_s\(5) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_INIT|q_s\(5))) # 
-- (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((!\basis|control|guru|STATE.CLEAR_PREV~q\) # (\basis|data|rb|reg_PRE_GURU|q_s\(5))))) ) ) ) # ( \basis|control|guru|STATE.LAST~q\ & ( !\basis|data|rb|reg_GURU|q_s\(5) & ( 
-- (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_INIT|q_s\(5))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((\basis|data|rb|reg_PRE_GURU|q_s\(5)))) ) ) ) # ( !\basis|control|guru|STATE.LAST~q\ & ( 
-- !\basis|data|rb|reg_GURU|q_s\(5) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_INIT|q_s\(5))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_PRE_GURU|q_s\(5) & \basis|control|guru|STATE.CLEAR_PREV~q\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001110100011101110111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_INIT|ALT_INV_q_s\(5),
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	datad => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(5),
	combout => \basis|data|rb|rb_out[5]~7_combout\);

-- Location: FF_X81_Y4_N53
\basis|data|rb|reg_INIT|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[4]~1_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(4));

-- Location: FF_X81_Y5_N17
\basis|data|rb|reg_PRE_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(4),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(4));

-- Location: LABCELL_X81_Y4_N33
\basis|data|rb|rb_out[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[4]~6_combout\ = ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (\basis|data|rb|reg_INIT|q_s\(4)) # (\basis|control|main|STATE.INIT_ACTIVATION~q\) ) ) ) # ( 
-- !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_INIT|q_s\(4))))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (((\basis|control|guru|STATE.LAST~q\)) # (\basis|data|rb|reg_GURU|q_s\(4)))) ) ) ) # ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( !\basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & \basis|data|rb|reg_INIT|q_s\(4)) ) 
-- ) ) # ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( !\basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_INIT|q_s\(4))))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (\basis|data|rb|reg_GURU|q_s\(4) & (!\basis|control|guru|STATE.LAST~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000000001010101000010101101111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datab => \basis|data|rb|reg_GURU|ALT_INV_q_s\(4),
	datac => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \basis|data|rb|reg_INIT|ALT_INV_q_s\(4),
	datae => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	combout => \basis|data|rb|rb_out[4]~6_combout\);

-- Location: LABCELL_X81_Y4_N9
\basis|data|n_g|ng_2_RB[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[5]~2_combout\ = ( \basis|data|rb|rb_out[4]~6_combout\ & ( (\basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & (!\basis|data|rb|rb_out[5]~7_combout\ $ (((!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\) # 
-- (!\basis|data|alu_1|add|adder_4|aux_and_3~combout\))))) ) ) # ( !\basis|data|rb|rb_out[4]~6_combout\ & ( (\basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & \basis|data|rb|rb_out[5]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000001001100100000000100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datab => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~3_combout\,
	datac => \basis|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\,
	datad => \basis|data|rb|ALT_INV_rb_out[5]~7_combout\,
	dataf => \basis|data|rb|ALT_INV_rb_out[4]~6_combout\,
	combout => \basis|data|n_g|ng_2_RB[5]~2_combout\);

-- Location: FF_X81_Y4_N26
\basis|data|rb|reg_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[5]~2_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(5));

-- Location: FF_X82_Y4_N44
\basis|data|rb|reg_PRE_GURU|q_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(5),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(5));

-- Location: FF_X81_Y4_N5
\basis|data|rb|reg_INIT|q_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[7]~9_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(7));

-- Location: LABCELL_X80_Y4_N45
\basis|data|rb|rb_out[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[7]~9_combout\ = ( \basis|data|rb|reg_INIT|q_s\(7) & ( \basis|data|rb|reg_PRE_GURU|q_s\(7) & ( ((!\basis|control|main|STATE.INIT_ACTIVATION~q\) # ((\basis|control|guru|STATE.CLEAR_PREV~q\) # (\basis|control|guru|STATE.LAST~q\))) # 
-- (\basis|data|rb|reg_GURU|q_s\(7)) ) ) ) # ( !\basis|data|rb|reg_INIT|q_s\(7) & ( \basis|data|rb|reg_PRE_GURU|q_s\(7) & ( (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|control|guru|STATE.CLEAR_PREV~q\) # (\basis|control|guru|STATE.LAST~q\)) # 
-- (\basis|data|rb|reg_GURU|q_s\(7)))) ) ) ) # ( \basis|data|rb|reg_INIT|q_s\(7) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(7) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\) # ((\basis|data|rb|reg_GURU|q_s\(7) & (!\basis|control|guru|STATE.LAST~q\ & 
-- !\basis|control|guru|STATE.CLEAR_PREV~q\))) ) ) ) # ( !\basis|data|rb|reg_INIT|q_s\(7) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(7) & ( (\basis|data|rb|reg_GURU|q_s\(7) & (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (!\basis|control|guru|STATE.LAST~q\ & 
-- !\basis|control|guru|STATE.CLEAR_PREV~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110000010011001100111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_GURU|ALT_INV_q_s\(7),
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \basis|data|rb|reg_INIT|ALT_INV_q_s\(7),
	dataf => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(7),
	combout => \basis|data|rb|rb_out[7]~9_combout\);

-- Location: LABCELL_X83_Y4_N0
\basis|data|n_g|rand_number_gen|LFSR|Select_Ds:11:or_comp|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:11:or_comp|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) ) # ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:11:or_comp|z~combout\);

-- Location: FF_X83_Y4_N2
\basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:11:or_comp|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N3
\basis|data|n_g|rand_number_gen|LFSR|Select_Ds:0:or_comp|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:0:or_comp|z~combout\ = (\res~input_o\) # (\basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|q_s\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|ALT_INV_q_s\(0),
	datad => \ALT_INV_res~input_o\,
	combout => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:0:or_comp|z~combout\);

-- Location: FF_X83_Y4_N5
\basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:0:or_comp|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N24
\basis|data|n_g|rand_number_gen|LFSR|Select_Ds:1:or_comp|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:1:or_comp|z~combout\ = (\res~input_o\) # (\basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|q_s\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|data|n_g|rand_number_gen|LFSR|DFFs:1:FF|ALT_INV_q_s\(0),
	datad => \ALT_INV_res~input_o\,
	combout => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:1:or_comp|z~combout\);

-- Location: FF_X83_Y4_N25
\basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:1:or_comp|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N27
\basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:2:xor_tap|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:2:xor_tap|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|q_s\(0) & ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) ) ) # ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|q_s\(0) & ( 
-- !\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) $ (!\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0),
	datad => \ALT_INV_res~input_o\,
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:2:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:2:xor_tap|z~combout\);

-- Location: FF_X83_Y4_N28
\basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:2:xor_tap|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N42
\basis|data|n_g|rand_number_gen|LFSR|Select_Ds:3:or_comp|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:3:or_comp|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|q_s\(0) ) # ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|q_s\(0) & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:3:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:3:or_comp|z~combout\);

-- Location: FF_X83_Y4_N43
\basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:3:or_comp|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N45
\basis|data|n_g|rand_number_gen|LFSR|Select_Ds:4:or_comp|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:4:or_comp|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|q_s\(0) ) # ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|q_s\(0) & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:4:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:4:or_comp|z~combout\);

-- Location: FF_X83_Y4_N47
\basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:4:or_comp|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N36
\basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:5:xor_tap|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:5:xor_tap|z~combout\ = !\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) $ (((!\res~input_o\ & !\basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|q_s\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000001011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0),
	datad => \basis|data|n_g|rand_number_gen|LFSR|DFFs:5:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:5:xor_tap|z~combout\);

-- Location: FF_X83_Y4_N38
\basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:5:xor_tap|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N39
\basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:6:xor_tap|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:6:xor_tap|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) & ( (!\res~input_o\ & !\basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|q_s\(0)) ) ) # ( 
-- !\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) & ( (\basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|q_s\(0)) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datad => \basis|data|n_g|rand_number_gen|LFSR|DFFs:6:FF|ALT_INV_q_s\(0),
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:6:xor_tap|z~combout\);

-- Location: FF_X83_Y4_N41
\basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:6:xor_tap|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N6
\basis|data|n_g|rand_number_gen|LFSR|Select_Ds:7:or_comp|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:7:or_comp|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|q_s\(0) ) # ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|q_s\(0) & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:7:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:7:or_comp|z~combout\);

-- Location: FF_X83_Y4_N8
\basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:7:or_comp|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N9
\basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:8:xor_tap|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:8:xor_tap|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) & ( (!\res~input_o\ & !\basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|q_s\(0)) ) ) # ( 
-- !\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) & ( (\basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|q_s\(0)) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \basis|data|n_g|rand_number_gen|LFSR|DFFs:8:FF|ALT_INV_q_s\(0),
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:8:xor_tap|z~combout\);

-- Location: FF_X83_Y4_N10
\basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|TAP_XOR:8:xor_tap|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N21
\basis|data|n_g|rand_number_gen|LFSR|Select_Ds:9:or_comp|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:9:or_comp|z~combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|q_s\(0) ) # ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|q_s\(0) & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:9:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:9:or_comp|z~combout\);

-- Location: FF_X83_Y4_N22
\basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|Select_Ds:9:or_comp|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|q_s\(0));

-- Location: LABCELL_X83_Y4_N18
\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s[0]~0_combout\ = ( \basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|q_s\(0) & ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0) ) ) # ( !\basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|q_s\(0) & ( 
-- !\res~input_o\ $ (!\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datad => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0),
	dataf => \basis|data|n_g|rand_number_gen|LFSR|DFFs:10:FF|ALT_INV_q_s\(0),
	combout => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s[0]~0_combout\);

-- Location: FF_X83_Y4_N20
\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0));

-- Location: MLABCELL_X82_Y4_N21
\basis|data|n_g|ng_2_RB[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[0]~3_combout\ = ( !\basis|control|init|STATE.MEM_WALK~q\ & ( \basis|control|init|STATE.IDLE~q\ & ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datae => \basis|control|init|ALT_INV_STATE.MEM_WALK~q\,
	dataf => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	combout => \basis|data|n_g|ng_2_RB[0]~3_combout\);

-- Location: LABCELL_X80_Y5_N33
\basis|data|n_g|ng_2_RB[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[0]~4_combout\ = ( \basis|control|init|STATE.MEM_WALK~q\ & ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|control|init|STATE.IDLE~q\ ) ) ) # ( !\basis|control|init|STATE.MEM_WALK~q\ & ( 
-- !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (\basis|control|init|STATE.IDLE~q\ & \basis|control|init|STATE.ZERO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	datac => \basis|control|init|ALT_INV_STATE.ZERO~q\,
	datae => \basis|control|init|ALT_INV_STATE.MEM_WALK~q\,
	dataf => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \basis|data|n_g|ng_2_RB[0]~4_combout\);

-- Location: LABCELL_X81_Y5_N24
\basis|control|ctrl_2_dp.ng_cte_incr~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ = ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\basis|control|guru|STATE.WRITE_RAND~q\ & (!\basis|control|guru|STATE.RAND~q\ & (\basis|control|guru|STATE.START_WALKING~q\ & 
-- !\basis|control|guru|STATE.WAIT_COUNT_GURU~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datab => \basis|control|guru|ALT_INV_STATE.RAND~q\,
	datac => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	datad => \basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	dataf => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\);

-- Location: MLABCELL_X82_Y4_N33
\basis|data|n_g|ng_2_RB[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[0]~5_combout\ = ( \basis|data|n_g|ng_2_RB[0]~4_combout\ & ( \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( (!\basis|data|rb|rb_out[0]~2_combout\ & !\basis|data|n_g|ng_2_RB[0]~3_combout\) ) ) ) # ( 
-- !\basis|data|n_g|ng_2_RB[0]~4_combout\ & ( \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( (!\basis|data|rb|rb_out[0]~2_combout\ & !\basis|data|n_g|ng_2_RB[0]~3_combout\) ) ) ) # ( \basis|data|n_g|ng_2_RB[0]~4_combout\ & ( 
-- !\basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( (!\basis|data|rb|rb_out[0]~2_combout\ & !\basis|data|n_g|ng_2_RB[0]~3_combout\) ) ) ) # ( !\basis|data|n_g|ng_2_RB[0]~4_combout\ & ( !\basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( 
-- (!\basis|data|n_g|ng_2_RB[0]~3_combout\ & (((\res~input_o\) # (\basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|q_s\(0))))) # (\basis|data|n_g|ng_2_RB[0]~3_combout\ & (\basis|data|rb|rb_out[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101010101101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datab => \basis|data|n_g|rand_number_gen|LFSR|DFFs:11:FF|ALT_INV_q_s\(0),
	datac => \ALT_INV_res~input_o\,
	datad => \basis|data|n_g|ALT_INV_ng_2_RB[0]~3_combout\,
	datae => \basis|data|n_g|ALT_INV_ng_2_RB[0]~4_combout\,
	dataf => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\,
	combout => \basis|data|n_g|ng_2_RB[0]~5_combout\);

-- Location: FF_X82_Y4_N41
\basis|data|rb|reg_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[0]~5_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(0));

-- Location: FF_X81_Y4_N44
\basis|data|rb|reg_PRE_GURU|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(0),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(0));

-- Location: FF_X82_Y4_N49
\basis|data|rb|reg_INIT|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[0]~5_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(0));

-- Location: LABCELL_X81_Y4_N45
\basis|data|rb|rb_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[0]~2_combout\ = ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_GURU|q_s\(0) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((\basis|data|rb|reg_INIT|q_s\(0)))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (\basis|data|rb|reg_PRE_GURU|q_s\(0))) ) ) ) # ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_GURU|q_s\(0) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_INIT|q_s\(0))))) # 
-- (\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((!\basis|control|guru|STATE.LAST~q\) # ((\basis|data|rb|reg_PRE_GURU|q_s\(0))))) ) ) ) # ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( !\basis|data|rb|reg_GURU|q_s\(0) & ( 
-- (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((\basis|data|rb|reg_INIT|q_s\(0)))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_PRE_GURU|q_s\(0))) ) ) ) # ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( 
-- !\basis|data|rb|reg_GURU|q_s\(0) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_INIT|q_s\(0))))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|control|guru|STATE.LAST~q\ & (\basis|data|rb|reg_PRE_GURU|q_s\(0)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000001011010111101000101111011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datab => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datac => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	datad => \basis|data|rb|reg_INIT|ALT_INV_q_s\(0),
	datae => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(0),
	combout => \basis|data|rb|rb_out[0]~2_combout\);

-- Location: LABCELL_X81_Y5_N6
\basis|data|n_g|ng_2_RB[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[0]~10_combout\ = ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( ((\basis|control|init|STATE.IDLE~q\ & (((\basis|control|init|STATE.ZERO~q\)) # (\basis|control|init|STATE.MEM_WALK~q\)))) ) ) # ( 
-- \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (\basis|control|guru|STATE.START_WALKING~q\ & (((\basis|control|ctrl_2_dp.ng_cte_incr~1_combout\ & (!\basis|control|guru|STATE.WAIT_COUNT_GURU~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000001010000000000001111000011110000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	datab => \basis|control|init|ALT_INV_STATE.MEM_WALK~q\,
	datac => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~1_combout\,
	datad => \basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	datae => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|control|init|ALT_INV_STATE.ZERO~q\,
	datag => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	combout => \basis|data|n_g|ng_2_RB[0]~10_combout\);

-- Location: MLABCELL_X82_Y4_N27
\basis|data|n_g|ng_2_RB[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[1]~6_combout\ = ( !\basis|data|n_g|ng_2_RB[0]~3_combout\ & ( \basis|data|n_g|ng_2_RB[0]~10_combout\ & ( !\basis|data|rb|rb_out[0]~2_combout\ $ (!\basis|data|rb|rb_out[1]~3_combout\) ) ) ) # ( \basis|data|n_g|ng_2_RB[0]~3_combout\ & 
-- ( !\basis|data|n_g|ng_2_RB[0]~10_combout\ & ( \basis|data|rb|rb_out[1]~3_combout\ ) ) ) # ( !\basis|data|n_g|ng_2_RB[0]~3_combout\ & ( !\basis|data|n_g|ng_2_RB[0]~10_combout\ & ( (\basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|q_s\(0)) # (\res~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000011110000111101011010010110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datab => \ALT_INV_res~input_o\,
	datac => \basis|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datad => \basis|data|n_g|rand_number_gen|LFSR|DFFs:0:FF|ALT_INV_q_s\(0),
	datae => \basis|data|n_g|ALT_INV_ng_2_RB[0]~3_combout\,
	dataf => \basis|data|n_g|ALT_INV_ng_2_RB[0]~10_combout\,
	combout => \basis|data|n_g|ng_2_RB[1]~6_combout\);

-- Location: FF_X82_Y4_N32
\basis|data|rb|reg_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[1]~6_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(1));

-- Location: FF_X82_Y4_N8
\basis|data|rb|reg_PRE_GURU|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(1),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(1));

-- Location: FF_X82_Y4_N20
\basis|data|rb|reg_INIT|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[1]~6_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(1));

-- Location: MLABCELL_X82_Y4_N9
\basis|data|rb|rb_out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[1]~3_combout\ = ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_GURU|q_s\(1) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((\basis|data|rb|reg_INIT|q_s\(1)))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (\basis|data|rb|reg_PRE_GURU|q_s\(1))) ) ) ) # ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_GURU|q_s\(1) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_INIT|q_s\(1))))) # 
-- (\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((!\basis|control|guru|STATE.LAST~q\) # ((\basis|data|rb|reg_PRE_GURU|q_s\(1))))) ) ) ) # ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( !\basis|data|rb|reg_GURU|q_s\(1) & ( 
-- (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((\basis|data|rb|reg_INIT|q_s\(1)))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_PRE_GURU|q_s\(1))) ) ) ) # ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( 
-- !\basis|data|rb|reg_GURU|q_s\(1) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_INIT|q_s\(1))))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|control|guru|STATE.LAST~q\ & (\basis|data|rb|reg_PRE_GURU|q_s\(1)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000111100111100100011111011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	datad => \basis|data|rb|reg_INIT|ALT_INV_q_s\(1),
	datae => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(1),
	combout => \basis|data|rb|rb_out[1]~3_combout\);

-- Location: LABCELL_X81_Y5_N39
\basis|control|ctrl_2_dp.ng_cte_incr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.ng_cte_incr~0_combout\ = ( !\basis|control|init|STATE.ZERO~q\ & ( (\basis|control|init|STATE.IDLE~q\ & !\basis|control|main|STATE.INIT_ACTIVATION~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	datad => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|control|init|ALT_INV_STATE.ZERO~q\,
	combout => \basis|control|ctrl_2_dp.ng_cte_incr~0_combout\);

-- Location: LABCELL_X81_Y4_N27
\basis|data|n_g|ng_2_RB[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[2]~7_combout\ = ( \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( \basis|control|ctrl_2_dp.ng_cte_incr~0_combout\ & ( !\basis|data|rb|rb_out[2]~4_combout\ $ (((!\basis|data|rb|rb_out[0]~2_combout\) # 
-- ((!\basis|data|rb|rb_out[1]~3_combout\) # (!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\)))) ) ) ) # ( !\basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( \basis|control|ctrl_2_dp.ng_cte_incr~0_combout\ & ( !\basis|data|rb|rb_out[2]~4_combout\ $ 
-- (((!\basis|data|rb|rb_out[0]~2_combout\) # ((!\basis|data|rb|rb_out[1]~3_combout\) # (!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\)))) ) ) ) # ( \basis|control|ctrl_2_dp.ng_cte_incr~2_combout\ & ( !\basis|control|ctrl_2_dp.ng_cte_incr~0_combout\ & ( 
-- !\basis|data|rb|rb_out[2]~4_combout\ $ (((!\basis|data|rb|rb_out[0]~2_combout\) # ((!\basis|data|rb|rb_out[1]~3_combout\) # (!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001111000001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datab => \basis|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datac => \basis|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datad => \basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datae => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~2_combout\,
	dataf => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~0_combout\,
	combout => \basis|data|n_g|ng_2_RB[2]~7_combout\);

-- Location: FF_X81_Y4_N23
\basis|data|rb|reg_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[2]~7_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(2));

-- Location: FF_X80_Y4_N29
\basis|data|rb|reg_PRE_GURU|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(2),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(2));

-- Location: FF_X82_Y4_N4
\basis|data|rb|reg_INIT|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[2]~7_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(2));

-- Location: LABCELL_X80_Y4_N57
\basis|data|rb|rb_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[2]~4_combout\ = ( \basis|data|rb|reg_PRE_GURU|q_s\(2) & ( \basis|data|rb|reg_INIT|q_s\(2) & ( (((!\basis|control|main|STATE.INIT_ACTIVATION~q\) # (\basis|control|guru|STATE.CLEAR_PREV~q\)) # (\basis|control|guru|STATE.LAST~q\)) # 
-- (\basis|data|rb|reg_GURU|q_s\(2)) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(2) & ( \basis|data|rb|reg_INIT|q_s\(2) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\) # ((\basis|data|rb|reg_GURU|q_s\(2) & (!\basis|control|guru|STATE.LAST~q\ & 
-- !\basis|control|guru|STATE.CLEAR_PREV~q\))) ) ) ) # ( \basis|data|rb|reg_PRE_GURU|q_s\(2) & ( !\basis|data|rb|reg_INIT|q_s\(2) & ( (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|control|guru|STATE.CLEAR_PREV~q\) # 
-- (\basis|control|guru|STATE.LAST~q\)) # (\basis|data|rb|reg_GURU|q_s\(2)))) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(2) & ( !\basis|data|rb|reg_INIT|q_s\(2) & ( (\basis|data|rb|reg_GURU|q_s\(2) & (!\basis|control|guru|STATE.LAST~q\ & 
-- (\basis|control|main|STATE.INIT_ACTIVATION~q\ & !\basis|control|guru|STATE.CLEAR_PREV~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001110000111111110100111100001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_GURU|ALT_INV_q_s\(2),
	datab => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datac => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datae => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	dataf => \basis|data|rb|reg_INIT|ALT_INV_q_s\(2),
	combout => \basis|data|rb|rb_out[2]~4_combout\);

-- Location: LABCELL_X81_Y4_N18
\basis|data|alu_1|add|adder_6|aux_and_3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|alu_1|add|adder_6|aux_and_3~combout\ = ( \basis|data|rb|rb_out[3]~5_combout\ & ( \basis|data|rb|rb_out[5]~7_combout\ & ( (\basis|data|rb|rb_out[0]~2_combout\ & (\basis|data|rb|rb_out[2]~4_combout\ & (\basis|data|rb|rb_out[4]~6_combout\ & 
-- \basis|data|rb|rb_out[1]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datab => \basis|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datac => \basis|data|rb|ALT_INV_rb_out[4]~6_combout\,
	datad => \basis|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datae => \basis|data|rb|ALT_INV_rb_out[3]~5_combout\,
	dataf => \basis|data|rb|ALT_INV_rb_out[5]~7_combout\,
	combout => \basis|data|alu_1|add|adder_6|aux_and_3~combout\);

-- Location: LABCELL_X81_Y4_N6
\basis|data|n_g|ng_2_RB[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[7]~9_combout\ = ( \basis|data|alu_1|add|adder_6|aux_and_3~combout\ & ( (\basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & (!\basis|data|rb|rb_out[7]~9_combout\ $ (((!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\) # 
-- (!\basis|data|rb|rb_out[6]~8_combout\))))) ) ) # ( !\basis|data|alu_1|add|adder_6|aux_and_3~combout\ & ( (\basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & \basis|data|rb|rb_out[7]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000100100000001100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datab => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~3_combout\,
	datac => \basis|data|rb|ALT_INV_rb_out[7]~9_combout\,
	datad => \basis|data|rb|ALT_INV_rb_out[6]~8_combout\,
	dataf => \basis|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\,
	combout => \basis|data|n_g|ng_2_RB[7]~9_combout\);

-- Location: FF_X82_Y4_N26
\basis|data|rb|reg_GURU|q_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[7]~9_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(7));

-- Location: FF_X82_Y4_N17
\basis|data|rb|reg_PRE_GURU|q_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(7),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(7));

-- Location: MLABCELL_X82_Y4_N36
\ref|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal5~0_combout\ = ( \basis|data|rb|reg_PRE_GURU|q_s\(6) & ( (\disc_2_ref.disc_addr[6]~input_o\ & (!\disc_2_ref.disc_addr[7]~input_o\ $ (\basis|data|rb|reg_PRE_GURU|q_s\(7)))) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(6) & ( 
-- (!\disc_2_ref.disc_addr[6]~input_o\ & (!\disc_2_ref.disc_addr[7]~input_o\ $ (\basis|data|rb|reg_PRE_GURU|q_s\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100001100000000001111000000000011000011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_disc_2_ref.disc_addr[6]~input_o\,
	datac => \ALT_INV_disc_2_ref.disc_addr[7]~input_o\,
	datad => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(7),
	datae => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	combout => \ref|Equal5~0_combout\);

-- Location: IOIBUF_X89_Y4_N44
\disc_2_ref.disc_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(1),
	o => \disc_2_ref.disc_addr[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\disc_2_ref.disc_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(2),
	o => \disc_2_ref.disc_addr[2]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\disc_2_ref.disc_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(0),
	o => \disc_2_ref.disc_addr[0]~input_o\);

-- Location: MLABCELL_X82_Y4_N0
\ref|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal5~1_combout\ = ( \basis|data|rb|reg_PRE_GURU|q_s\(2) & ( \basis|data|rb|reg_PRE_GURU|q_s\(1) & ( (\disc_2_ref.disc_addr[1]~input_o\ & (\disc_2_ref.disc_addr[2]~input_o\ & (!\basis|data|rb|reg_PRE_GURU|q_s\(0) $ 
-- (\disc_2_ref.disc_addr[0]~input_o\)))) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(2) & ( \basis|data|rb|reg_PRE_GURU|q_s\(1) & ( (\disc_2_ref.disc_addr[1]~input_o\ & (!\disc_2_ref.disc_addr[2]~input_o\ & (!\basis|data|rb|reg_PRE_GURU|q_s\(0) $ 
-- (\disc_2_ref.disc_addr[0]~input_o\)))) ) ) ) # ( \basis|data|rb|reg_PRE_GURU|q_s\(2) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(1) & ( (!\disc_2_ref.disc_addr[1]~input_o\ & (\disc_2_ref.disc_addr[2]~input_o\ & (!\basis|data|rb|reg_PRE_GURU|q_s\(0) $ 
-- (\disc_2_ref.disc_addr[0]~input_o\)))) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(2) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(1) & ( (!\disc_2_ref.disc_addr[1]~input_o\ & (!\disc_2_ref.disc_addr[2]~input_o\ & (!\basis|data|rb|reg_PRE_GURU|q_s\(0) $ 
-- (\disc_2_ref.disc_addr[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(0),
	datab => \ALT_INV_disc_2_ref.disc_addr[1]~input_o\,
	datac => \ALT_INV_disc_2_ref.disc_addr[2]~input_o\,
	datad => \ALT_INV_disc_2_ref.disc_addr[0]~input_o\,
	datae => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(2),
	dataf => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(1),
	combout => \ref|Equal5~1_combout\);

-- Location: IOIBUF_X82_Y0_N41
\disc_2_ref.disc_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_addr\(4),
	o => \disc_2_ref.disc_addr[4]~input_o\);

-- Location: LABCELL_X80_Y4_N12
\basis|data|n_g|ng_2_RB[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[3]~0_combout\ = ( \basis|data|rb|rb_out[3]~5_combout\ & ( \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & ( (!\basis|data|rb|rb_out[0]~2_combout\) # ((!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\) # 
-- ((!\basis|data|rb|rb_out[1]~3_combout\) # (!\basis|data|rb|rb_out[2]~4_combout\))) ) ) ) # ( !\basis|data|rb|rb_out[3]~5_combout\ & ( \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & ( (\basis|data|rb|rb_out[0]~2_combout\ & 
-- (\basis|control|ctrl_2_dp.alu_ctrl~0_combout\ & (\basis|data|rb|rb_out[1]~3_combout\ & \basis|data|rb|rb_out[2]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datab => \basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datac => \basis|data|rb|ALT_INV_rb_out[1]~3_combout\,
	datad => \basis|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datae => \basis|data|rb|ALT_INV_rb_out[3]~5_combout\,
	dataf => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~3_combout\,
	combout => \basis|data|n_g|ng_2_RB[3]~0_combout\);

-- Location: FF_X81_Y4_N41
\basis|data|rb|reg_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[3]~0_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(3));

-- Location: FF_X80_Y4_N56
\basis|data|rb|reg_PRE_GURU|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(3),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(3));

-- Location: LABCELL_X80_Y4_N39
\ref|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal5~2_combout\ = ( \basis|data|rb|reg_PRE_GURU|q_s\(3) & ( \basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (\disc_2_ref.disc_addr[4]~input_o\ & \disc_2_ref.disc_addr[3]~input_o\) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(3) & ( 
-- \basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (\disc_2_ref.disc_addr[4]~input_o\ & !\disc_2_ref.disc_addr[3]~input_o\) ) ) ) # ( \basis|data|rb|reg_PRE_GURU|q_s\(3) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (!\disc_2_ref.disc_addr[4]~input_o\ & 
-- \disc_2_ref.disc_addr[3]~input_o\) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(3) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(4) & ( (!\disc_2_ref.disc_addr[4]~input_o\ & !\disc_2_ref.disc_addr[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_disc_2_ref.disc_addr[4]~input_o\,
	datac => \ALT_INV_disc_2_ref.disc_addr[3]~input_o\,
	datae => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	dataf => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(4),
	combout => \ref|Equal5~2_combout\);

-- Location: LABCELL_X81_Y5_N33
\ref|Equal5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal5~3_combout\ = ( \ref|Equal5~1_combout\ & ( \ref|Equal5~2_combout\ & ( (\ref|Equal5~0_combout\ & (!\basis|data|rb|reg_PRE_GURU|q_s\(5) $ (\disc_2_ref.disc_addr[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(5),
	datac => \ref|ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_disc_2_ref.disc_addr[5]~input_o\,
	datae => \ref|ALT_INV_Equal5~1_combout\,
	dataf => \ref|ALT_INV_Equal5~2_combout\,
	combout => \ref|Equal5~3_combout\);

-- Location: IOIBUF_X89_Y16_N38
\disc_2_ref.disc_prev_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(5),
	o => \disc_2_ref.disc_prev_addr[5]~input_o\);

-- Location: MLABCELL_X82_Y5_N51
\ref|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~3_combout\ = ( !\basis|data|rb|reg_GURU|q_s\(5) & ( \disc_2_ref.disc_prev_addr[5]~input_o\ ) ) # ( \basis|data|rb|reg_GURU|q_s\(5) & ( !\disc_2_ref.disc_prev_addr[5]~input_o\ & ( (!\ref|state_reg.detect~q\ & (!\ref|state_reg.detect1~q\ & 
-- ((!\hold2|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(5) & ( !\disc_2_ref.disc_prev_addr[5]~input_o\ & ( (((\hold2|state_reg~q\ & !\basis|control|main|STATE.STEP_ACTIVATION~q\)) # 
-- (\ref|state_reg.detect1~q\)) # (\ref|state_reg.detect~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111111111100010100000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.detect~q\,
	datab => \hold2|ALT_INV_state_reg~q\,
	datac => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datad => \ref|ALT_INV_state_reg.detect1~q\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(5),
	dataf => \ALT_INV_disc_2_ref.disc_prev_addr[5]~input_o\,
	combout => \ref|Equal2~3_combout\);

-- Location: LABCELL_X81_Y3_N36
\hold2|holdedOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold2|holdedOut~combout\ = ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( \ref|state_reg.detect1~q\ ) ) # ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( \ref|state_reg.detect1~q\ ) ) # ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( 
-- !\ref|state_reg.detect1~q\ & ( \ref|state_reg.detect~q\ ) ) ) # ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( !\ref|state_reg.detect1~q\ & ( (\hold2|state_reg~q\) # (\ref|state_reg.detect~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_state_reg.detect~q\,
	datac => \hold2|ALT_INV_state_reg~q\,
	datae => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	dataf => \ref|ALT_INV_state_reg.detect1~q\,
	combout => \hold2|holdedOut~combout\);

-- Location: IOIBUF_X80_Y0_N18
\disc_2_ref.disc_prev_addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(6),
	o => \disc_2_ref.disc_prev_addr[6]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\disc_2_ref.disc_prev_addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(7),
	o => \disc_2_ref.disc_prev_addr[7]~input_o\);

-- Location: LABCELL_X81_Y3_N21
\ref|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~5_combout\ = ( \basis|data|rb|reg_GURU|q_s\(6) & ( \disc_2_ref.disc_prev_addr[7]~input_o\ & ( (\basis|data|rb|reg_GURU|q_s\(7) & ((\disc_2_ref.disc_prev_addr[6]~input_o\) # (\hold2|holdedOut~combout\))) ) ) ) # ( 
-- !\basis|data|rb|reg_GURU|q_s\(6) & ( \disc_2_ref.disc_prev_addr[7]~input_o\ & ( (\basis|data|rb|reg_GURU|q_s\(7) & (!\hold2|holdedOut~combout\ & !\disc_2_ref.disc_prev_addr[6]~input_o\)) ) ) ) # ( \basis|data|rb|reg_GURU|q_s\(6) & ( 
-- !\disc_2_ref.disc_prev_addr[7]~input_o\ & ( (!\basis|data|rb|reg_GURU|q_s\(7) & (!\hold2|holdedOut~combout\ & \disc_2_ref.disc_prev_addr[6]~input_o\)) # (\basis|data|rb|reg_GURU|q_s\(7) & (\hold2|holdedOut~combout\)) ) ) ) # ( 
-- !\basis|data|rb|reg_GURU|q_s\(6) & ( !\disc_2_ref.disc_prev_addr[7]~input_o\ & ( (!\basis|data|rb|reg_GURU|q_s\(7) & (!\hold2|holdedOut~combout\ & !\disc_2_ref.disc_prev_addr[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000110010001100101000000010000000001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_GURU|ALT_INV_q_s\(7),
	datab => \hold2|ALT_INV_holdedOut~combout\,
	datac => \ALT_INV_disc_2_ref.disc_prev_addr[6]~input_o\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(6),
	dataf => \ALT_INV_disc_2_ref.disc_prev_addr[7]~input_o\,
	combout => \ref|Equal2~5_combout\);

-- Location: IOIBUF_X88_Y0_N53
\disc_2_ref.disc_prev_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(3),
	o => \disc_2_ref.disc_prev_addr[3]~input_o\);

-- Location: MLABCELL_X82_Y5_N6
\ref|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~1_combout\ = ( !\basis|data|rb|reg_GURU|q_s\(3) & ( \disc_2_ref.disc_prev_addr[3]~input_o\ ) ) # ( \basis|data|rb|reg_GURU|q_s\(3) & ( !\disc_2_ref.disc_prev_addr[3]~input_o\ & ( (!\ref|state_reg.detect~q\ & (!\ref|state_reg.detect1~q\ & 
-- ((!\hold2|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(3) & ( !\disc_2_ref.disc_prev_addr[3]~input_o\ & ( (((\hold2|state_reg~q\ & !\basis|control|main|STATE.STEP_ACTIVATION~q\)) # 
-- (\ref|state_reg.detect1~q\)) # (\ref|state_reg.detect~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101011111100000001010000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.detect~q\,
	datab => \hold2|ALT_INV_state_reg~q\,
	datac => \ref|ALT_INV_state_reg.detect1~q\,
	datad => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(3),
	dataf => \ALT_INV_disc_2_ref.disc_prev_addr[3]~input_o\,
	combout => \ref|Equal2~1_combout\);

-- Location: IOIBUF_X82_Y0_N75
\disc_2_ref.disc_prev_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(2),
	o => \disc_2_ref.disc_prev_addr[2]~input_o\);

-- Location: MLABCELL_X82_Y5_N48
\ref|Equal2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~7_combout\ = ( !\basis|data|rb|reg_GURU|q_s\(2) & ( \disc_2_ref.disc_prev_addr[2]~input_o\ ) ) # ( \basis|data|rb|reg_GURU|q_s\(2) & ( !\disc_2_ref.disc_prev_addr[2]~input_o\ & ( (!\ref|state_reg.detect~q\ & (!\ref|state_reg.detect1~q\ & 
-- ((!\hold2|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(2) & ( !\disc_2_ref.disc_prev_addr[2]~input_o\ & ( (((\hold2|state_reg~q\ & !\basis|control|main|STATE.STEP_ACTIVATION~q\)) # 
-- (\ref|state_reg.detect1~q\)) # (\ref|state_reg.detect~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101011111100000001010000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.detect~q\,
	datab => \hold2|ALT_INV_state_reg~q\,
	datac => \ref|ALT_INV_state_reg.detect1~q\,
	datad => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(2),
	dataf => \ALT_INV_disc_2_ref.disc_prev_addr[2]~input_o\,
	combout => \ref|Equal2~7_combout\);

-- Location: IOIBUF_X78_Y0_N52
\disc_2_ref.disc_prev_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(4),
	o => \disc_2_ref.disc_prev_addr[4]~input_o\);

-- Location: MLABCELL_X82_Y5_N21
\ref|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~2_combout\ = ( \basis|data|rb|reg_GURU|q_s\(4) & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\ref|state_reg.detect1~q\ & (!\disc_2_ref.disc_prev_addr[4]~input_o\ & !\ref|state_reg.detect~q\)) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(4) 
-- & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( ((\ref|state_reg.detect~q\) # (\disc_2_ref.disc_prev_addr[4]~input_o\)) # (\ref|state_reg.detect1~q\) ) ) ) # ( \basis|data|rb|reg_GURU|q_s\(4) & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( 
-- (!\ref|state_reg.detect1~q\ & (!\disc_2_ref.disc_prev_addr[4]~input_o\ & (!\hold2|state_reg~q\ & !\ref|state_reg.detect~q\))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(4) & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (((\ref|state_reg.detect~q\) # 
-- (\hold2|state_reg~q\)) # (\disc_2_ref.disc_prev_addr[4]~input_o\)) # (\ref|state_reg.detect1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111100000000000000001110111111111111000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.detect1~q\,
	datab => \ALT_INV_disc_2_ref.disc_prev_addr[4]~input_o\,
	datac => \hold2|ALT_INV_state_reg~q\,
	datad => \ref|ALT_INV_state_reg.detect~q\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(4),
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \ref|Equal2~2_combout\);

-- Location: IOIBUF_X80_Y0_N52
\disc_2_ref.disc_prev_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(1),
	o => \disc_2_ref.disc_prev_addr[1]~input_o\);

-- Location: LABCELL_X81_Y3_N3
\disc_prev_s[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disc_prev_s[1]~1_combout\ = ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( !\ref|state_reg.detect1~q\ & ( (!\ref|state_reg.detect~q\ & !\disc_2_ref.disc_prev_addr[1]~input_o\) ) ) ) # ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( 
-- !\ref|state_reg.detect1~q\ & ( (!\hold2|state_reg~q\ & (!\ref|state_reg.detect~q\ & !\disc_2_ref.disc_prev_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hold2|ALT_INV_state_reg~q\,
	datab => \ref|ALT_INV_state_reg.detect~q\,
	datac => \ALT_INV_disc_2_ref.disc_prev_addr[1]~input_o\,
	datae => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	dataf => \ref|ALT_INV_state_reg.detect1~q\,
	combout => \disc_prev_s[1]~1_combout\);

-- Location: IOIBUF_X78_Y0_N18
\disc_2_ref.disc_prev_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.disc_prev_addr\(0),
	o => \disc_2_ref.disc_prev_addr[0]~input_o\);

-- Location: MLABCELL_X82_Y5_N9
\ref|Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~6_combout\ = ( !\basis|data|rb|reg_GURU|q_s\(0) & ( \disc_2_ref.disc_prev_addr[0]~input_o\ ) ) # ( \basis|data|rb|reg_GURU|q_s\(0) & ( !\disc_2_ref.disc_prev_addr[0]~input_o\ & ( (!\ref|state_reg.detect~q\ & (!\ref|state_reg.detect1~q\ & 
-- ((!\hold2|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(0) & ( !\disc_2_ref.disc_prev_addr[0]~input_o\ & ( (((\hold2|state_reg~q\ & !\basis|control|main|STATE.STEP_ACTIVATION~q\)) # 
-- (\ref|state_reg.detect1~q\)) # (\ref|state_reg.detect~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111111111100010100000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.detect~q\,
	datab => \hold2|ALT_INV_state_reg~q\,
	datac => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datad => \ref|ALT_INV_state_reg.detect1~q\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(0),
	dataf => \ALT_INV_disc_2_ref.disc_prev_addr[0]~input_o\,
	combout => \ref|Equal2~6_combout\);

-- Location: MLABCELL_X82_Y5_N42
\ref|Equal2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~8_combout\ = ( \disc_prev_s[1]~1_combout\ & ( !\ref|Equal2~6_combout\ & ( (!\ref|Equal2~1_combout\ & (!\ref|Equal2~7_combout\ & (!\ref|Equal2~2_combout\ & !\basis|data|rb|reg_GURU|q_s\(1)))) ) ) ) # ( !\disc_prev_s[1]~1_combout\ & ( 
-- !\ref|Equal2~6_combout\ & ( (!\ref|Equal2~1_combout\ & (!\ref|Equal2~7_combout\ & (!\ref|Equal2~2_combout\ & \basis|data|rb|reg_GURU|q_s\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal2~1_combout\,
	datab => \ref|ALT_INV_Equal2~7_combout\,
	datac => \ref|ALT_INV_Equal2~2_combout\,
	datad => \basis|data|rb|reg_GURU|ALT_INV_q_s\(1),
	datae => \ALT_INV_disc_prev_s[1]~1_combout\,
	dataf => \ref|ALT_INV_Equal2~6_combout\,
	combout => \ref|Equal2~8_combout\);

-- Location: MLABCELL_X82_Y5_N0
\ref|state_next.detect~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|state_next.detect~0_combout\ = ( \ref|state_reg.checkMiddle~q\ & ( \ref|Equal2~8_combout\ & ( (!\ref|Equal5~3_combout\ & (!\ref|Equal2~3_combout\ & (!\ref|Equal4~3_combout\ & \ref|Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal5~3_combout\,
	datab => \ref|ALT_INV_Equal2~3_combout\,
	datac => \ref|ALT_INV_Equal4~3_combout\,
	datad => \ref|ALT_INV_Equal2~5_combout\,
	datae => \ref|ALT_INV_state_reg.checkMiddle~q\,
	dataf => \ref|ALT_INV_Equal2~8_combout\,
	combout => \ref|state_next.detect~0_combout\);

-- Location: FF_X82_Y5_N2
\ref|state_reg.detect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|state_next.detect~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.detect~q\);

-- Location: LABCELL_X81_Y3_N30
\disc_prev_s[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disc_prev_s[2]~2_combout\ = ( !\disc_2_ref.disc_prev_addr[2]~input_o\ & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\ref|state_reg.detect1~q\ & !\ref|state_reg.detect~q\) ) ) ) # ( !\disc_2_ref.disc_prev_addr[2]~input_o\ & ( 
-- !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\hold2|state_reg~q\ & (!\ref|state_reg.detect1~q\ & !\ref|state_reg.detect~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hold2|ALT_INV_state_reg~q\,
	datac => \ref|ALT_INV_state_reg.detect1~q\,
	datad => \ref|ALT_INV_state_reg.detect~q\,
	datae => \ALT_INV_disc_2_ref.disc_prev_addr[2]~input_o\,
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \disc_prev_s[2]~2_combout\);

-- Location: LABCELL_X81_Y3_N54
\disc_prev_s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disc_prev_s[0]~0_combout\ = ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\ref|state_reg.detect1~q\ & (!\disc_2_ref.disc_prev_addr[0]~input_o\ & !\ref|state_reg.detect~q\)) ) ) # ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( 
-- (!\ref|state_reg.detect1~q\ & (!\disc_2_ref.disc_prev_addr[0]~input_o\ & (!\hold2|state_reg~q\ & !\ref|state_reg.detect~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.detect1~q\,
	datab => \ALT_INV_disc_2_ref.disc_prev_addr[0]~input_o\,
	datac => \hold2|ALT_INV_state_reg~q\,
	datad => \ref|ALT_INV_state_reg.detect~q\,
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \disc_prev_s[0]~0_combout\);

-- Location: LABCELL_X81_Y3_N27
\ref|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~4_combout\ = ( !\basis|data|rb|reg_GURU|q_s\(0) & ( \disc_prev_s[0]~0_combout\ & ( (!\disc_prev_s[2]~2_combout\ & (\basis|data|rb|reg_GURU|q_s\(2) & (!\disc_prev_s[1]~1_combout\ $ (!\basis|data|rb|reg_GURU|q_s\(1))))) # 
-- (\disc_prev_s[2]~2_combout\ & (!\basis|data|rb|reg_GURU|q_s\(2) & (!\disc_prev_s[1]~1_combout\ $ (!\basis|data|rb|reg_GURU|q_s\(1))))) ) ) ) # ( \basis|data|rb|reg_GURU|q_s\(0) & ( !\disc_prev_s[0]~0_combout\ & ( (!\disc_prev_s[2]~2_combout\ & 
-- (\basis|data|rb|reg_GURU|q_s\(2) & (!\disc_prev_s[1]~1_combout\ $ (!\basis|data|rb|reg_GURU|q_s\(1))))) # (\disc_prev_s[2]~2_combout\ & (!\basis|data|rb|reg_GURU|q_s\(2) & (!\disc_prev_s[1]~1_combout\ $ (!\basis|data|rb|reg_GURU|q_s\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000010100000010100001010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_disc_prev_s[2]~2_combout\,
	datab => \ALT_INV_disc_prev_s[1]~1_combout\,
	datac => \basis|data|rb|reg_GURU|ALT_INV_q_s\(1),
	datad => \basis|data|rb|reg_GURU|ALT_INV_q_s\(2),
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(0),
	dataf => \ALT_INV_disc_prev_s[0]~0_combout\,
	combout => \ref|Equal2~4_combout\);

-- Location: FF_X82_Y7_N55
\ref|mainCnt[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector41~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[12]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y4_N24
\ref|Equal2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~12_combout\ = ( \basis|data|rb|reg_GURU|q_s\(3) & ( \basis|data|rb|reg_GURU|q_s\(2) & ( (!\disc_2_ref.disc_prev_addr[3]~input_o\ & (!\basis|control|main|STATE.STEP_ACTIVATION~q\ & (\hold2|state_reg~q\))) # 
-- (\disc_2_ref.disc_prev_addr[3]~input_o\ & (((!\basis|control|main|STATE.STEP_ACTIVATION~q\ & \hold2|state_reg~q\)) # (\disc_2_ref.disc_prev_addr[2]~input_o\))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(3) & ( \basis|data|rb|reg_GURU|q_s\(2) & ( 
-- (!\disc_2_ref.disc_prev_addr[3]~input_o\ & (\disc_2_ref.disc_prev_addr[2]~input_o\ & ((!\hold2|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( \basis|data|rb|reg_GURU|q_s\(3) & ( !\basis|data|rb|reg_GURU|q_s\(2) & ( 
-- (\disc_2_ref.disc_prev_addr[3]~input_o\ & (!\disc_2_ref.disc_prev_addr[2]~input_o\ & ((!\hold2|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(3) & ( !\basis|data|rb|reg_GURU|q_s\(2) & ( 
-- (!\disc_2_ref.disc_prev_addr[3]~input_o\ & (!\disc_2_ref.disc_prev_addr[2]~input_o\ & ((!\hold2|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000010100010000000000000000101000100000110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_disc_2_ref.disc_prev_addr[3]~input_o\,
	datab => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \hold2|ALT_INV_state_reg~q\,
	datad => \ALT_INV_disc_2_ref.disc_prev_addr[2]~input_o\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(3),
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(2),
	combout => \ref|Equal2~12_combout\);

-- Location: LABCELL_X81_Y3_N51
\ref|Equal2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~9_combout\ = ( \basis|data|rb|reg_GURU|q_s\(6) & ( \hold2|state_reg~q\ & ( (!\basis|control|main|STATE.STEP_ACTIVATION~q\ & (\basis|data|rb|reg_GURU|q_s\(7))) # (\basis|control|main|STATE.STEP_ACTIVATION~q\ & 
-- (\disc_2_ref.disc_prev_addr[6]~input_o\ & (!\basis|data|rb|reg_GURU|q_s\(7) $ (\disc_2_ref.disc_prev_addr[7]~input_o\)))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(6) & ( \hold2|state_reg~q\ & ( (!\disc_2_ref.disc_prev_addr[6]~input_o\ & 
-- (\basis|control|main|STATE.STEP_ACTIVATION~q\ & (!\basis|data|rb|reg_GURU|q_s\(7) $ (\disc_2_ref.disc_prev_addr[7]~input_o\)))) ) ) ) # ( \basis|data|rb|reg_GURU|q_s\(6) & ( !\hold2|state_reg~q\ & ( (\disc_2_ref.disc_prev_addr[6]~input_o\ & 
-- (!\basis|data|rb|reg_GURU|q_s\(7) $ (\disc_2_ref.disc_prev_addr[7]~input_o\))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(6) & ( !\hold2|state_reg~q\ & ( (!\disc_2_ref.disc_prev_addr[6]~input_o\ & (!\basis|data|rb|reg_GURU|q_s\(7) $ 
-- (\disc_2_ref.disc_prev_addr[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100001000010010000100000000100001000101010100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_GURU|ALT_INV_q_s\(7),
	datab => \ALT_INV_disc_2_ref.disc_prev_addr[6]~input_o\,
	datac => \ALT_INV_disc_2_ref.disc_prev_addr[7]~input_o\,
	datad => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(6),
	dataf => \hold2|ALT_INV_state_reg~q\,
	combout => \ref|Equal2~9_combout\);

-- Location: LABCELL_X80_Y6_N54
\ref|Equal2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~11_combout\ = ( \hold2|state_reg~q\ & ( \disc_2_ref.disc_prev_addr[1]~input_o\ & ( (\basis|data|rb|reg_GURU|q_s\(1) & (!\basis|data|rb|reg_GURU|q_s\(0) $ (((!\basis|control|main|STATE.STEP_ACTIVATION~q\) # 
-- (\disc_2_ref.disc_prev_addr[0]~input_o\))))) ) ) ) # ( !\hold2|state_reg~q\ & ( \disc_2_ref.disc_prev_addr[1]~input_o\ & ( (\basis|data|rb|reg_GURU|q_s\(1) & (!\basis|data|rb|reg_GURU|q_s\(0) $ (\disc_2_ref.disc_prev_addr[0]~input_o\))) ) ) ) # ( 
-- \hold2|state_reg~q\ & ( !\disc_2_ref.disc_prev_addr[1]~input_o\ & ( (!\basis|data|rb|reg_GURU|q_s\(1) & (\basis|control|main|STATE.STEP_ACTIVATION~q\ & (!\basis|data|rb|reg_GURU|q_s\(0) $ (\disc_2_ref.disc_prev_addr[0]~input_o\)))) # 
-- (\basis|data|rb|reg_GURU|q_s\(1) & (!\basis|control|main|STATE.STEP_ACTIVATION~q\ & (\basis|data|rb|reg_GURU|q_s\(0)))) ) ) ) # ( !\hold2|state_reg~q\ & ( !\disc_2_ref.disc_prev_addr[1]~input_o\ & ( (!\basis|data|rb|reg_GURU|q_s\(1) & 
-- (!\basis|data|rb|reg_GURU|q_s\(0) $ (\disc_2_ref.disc_prev_addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010001001000000011001010000000001010001010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_GURU|ALT_INV_q_s\(1),
	datab => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \basis|data|rb|reg_GURU|ALT_INV_q_s\(0),
	datad => \ALT_INV_disc_2_ref.disc_prev_addr[0]~input_o\,
	datae => \hold2|ALT_INV_state_reg~q\,
	dataf => \ALT_INV_disc_2_ref.disc_prev_addr[1]~input_o\,
	combout => \ref|Equal2~11_combout\);

-- Location: LABCELL_X80_Y6_N27
\ref|Equal2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~13_combout\ = ( \ref|Equal2~9_combout\ & ( \ref|Equal2~11_combout\ & ( (\ref|Equal2~10_combout\ & \ref|Equal2~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal2~10_combout\,
	datab => \ref|ALT_INV_Equal2~12_combout\,
	datae => \ref|ALT_INV_Equal2~9_combout\,
	dataf => \ref|ALT_INV_Equal2~11_combout\,
	combout => \ref|Equal2~13_combout\);

-- Location: LABCELL_X80_Y6_N3
\ref|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector18~0_combout\ = ( \ref|Equal2~13_combout\ & ( \ref|state_reg.conflict~q\ ) ) # ( !\ref|Equal2~13_combout\ & ( \ref|state_reg.conflict~q\ ) ) # ( !\ref|Equal2~13_combout\ & ( !\ref|state_reg.conflict~q\ & ( (\ref|state_reg.checkMiddle~q\ & 
-- (!\ref|Equal4~3_combout\ & !\ref|Equal5~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.checkMiddle~q\,
	datab => \ref|ALT_INV_Equal4~3_combout\,
	datac => \ref|ALT_INV_Equal5~3_combout\,
	datae => \ref|ALT_INV_Equal2~13_combout\,
	dataf => \ref|ALT_INV_state_reg.conflict~q\,
	combout => \ref|Selector18~0_combout\);

-- Location: FF_X80_Y6_N5
\ref|state_reg.unm_godisc_BL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector18~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.unm_godisc_BL~q\);

-- Location: LABCELL_X81_Y6_N0
\ref|mainCnt[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|mainCnt[5]~1_combout\ = (!\ref|state_reg.go_guru_state~q\ & !\ref|state_reg.unm_godisc_BL~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_state_reg.go_guru_state~q\,
	datad => \ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	combout => \ref|mainCnt[5]~1_combout\);

-- Location: IOIBUF_X84_Y0_N1
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: MLABCELL_X82_Y6_N21
\basis|control|main|STATE~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|STATE~10_combout\ = ( \basis|control|main|STATE.CHECK_END~q\ & ( \enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datae => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \basis|control|main|STATE~10_combout\);

-- Location: LABCELL_X85_Y6_N0
\ref|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~5_sumout\ = SUM(( \ref|waitNDCount\(0) ) + ( VCC ) + ( !VCC ))
-- \ref|Add1~6\ = CARRY(( \ref|waitNDCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(0),
	cin => GND,
	sumout => \ref|Add1~5_sumout\,
	cout => \ref|Add1~6\);

-- Location: LABCELL_X83_Y6_N36
\ref|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector12~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~5_sumout\,
	combout => \ref|Selector12~0_combout\);

-- Location: LABCELL_X83_Y6_N6
\ref|waitNDCountNext[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(0) = ( \ref|waitNDCountNext\(0) & ( (!\ref|tick_disc~combout\) # (\ref|Selector12~0_combout\) ) ) # ( !\ref|waitNDCountNext\(0) & ( (\ref|tick_disc~combout\ & \ref|Selector12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datab => \ref|ALT_INV_Selector12~0_combout\,
	dataf => \ref|ALT_INV_waitNDCountNext\(0),
	combout => \ref|waitNDCountNext\(0));

-- Location: FF_X85_Y6_N2
\ref|waitNDCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(0),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(0));

-- Location: LABCELL_X85_Y6_N3
\ref|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~1_sumout\ = SUM(( \ref|waitNDCount\(1) ) + ( VCC ) + ( \ref|Add1~6\ ))
-- \ref|Add1~2\ = CARRY(( \ref|waitNDCount\(1) ) + ( VCC ) + ( \ref|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(1),
	cin => \ref|Add1~6\,
	sumout => \ref|Add1~1_sumout\,
	cout => \ref|Add1~2\);

-- Location: LABCELL_X83_Y6_N54
\ref|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector11~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~1_sumout\,
	combout => \ref|Selector11~0_combout\);

-- Location: LABCELL_X83_Y6_N39
\ref|waitNDCountNext[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(1) = ( \ref|Selector11~0_combout\ & ( (\ref|waitNDCountNext\(1)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector11~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_waitNDCountNext\(1),
	dataf => \ref|ALT_INV_Selector11~0_combout\,
	combout => \ref|waitNDCountNext\(1));

-- Location: FF_X85_Y6_N5
\ref|waitNDCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(1),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(1));

-- Location: LABCELL_X85_Y6_N6
\ref|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~29_sumout\ = SUM(( \ref|waitNDCount\(2) ) + ( VCC ) + ( \ref|Add1~2\ ))
-- \ref|Add1~30\ = CARRY(( \ref|waitNDCount\(2) ) + ( VCC ) + ( \ref|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNDCount\(2),
	cin => \ref|Add1~2\,
	sumout => \ref|Add1~29_sumout\,
	cout => \ref|Add1~30\);

-- Location: MLABCELL_X84_Y6_N42
\ref|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector10~0_combout\ = (!\ref|stateD_reg.waitNClk~q\) # (\ref|Add1~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~29_sumout\,
	combout => \ref|Selector10~0_combout\);

-- Location: MLABCELL_X84_Y6_N3
\ref|waitNDCountNext[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(2) = ( \ref|waitNDCountNext\(2) & ( (!\ref|tick_disc~combout\) # (\ref|Selector10~0_combout\) ) ) # ( !\ref|waitNDCountNext\(2) & ( (\ref|Selector10~0_combout\ & \ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector10~0_combout\,
	datac => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_waitNDCountNext\(2),
	combout => \ref|waitNDCountNext\(2));

-- Location: FF_X85_Y6_N8
\ref|waitNDCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(2),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(2));

-- Location: LABCELL_X85_Y6_N9
\ref|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~25_sumout\ = SUM(( \ref|waitNDCount\(3) ) + ( VCC ) + ( \ref|Add1~30\ ))
-- \ref|Add1~26\ = CARRY(( \ref|waitNDCount\(3) ) + ( VCC ) + ( \ref|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(3),
	cin => \ref|Add1~30\,
	sumout => \ref|Add1~25_sumout\,
	cout => \ref|Add1~26\);

-- Location: LABCELL_X83_Y6_N30
\ref|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector6~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~25_sumout\,
	combout => \ref|Selector6~0_combout\);

-- Location: LABCELL_X83_Y6_N33
\ref|waitNDCountNext[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(3) = ( \ref|waitNDCountNext\(3) & ( (!\ref|tick_disc~combout\) # (\ref|Selector6~0_combout\) ) ) # ( !\ref|waitNDCountNext\(3) & ( (\ref|tick_disc~combout\ & \ref|Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datab => \ref|ALT_INV_Selector6~0_combout\,
	dataf => \ref|ALT_INV_waitNDCountNext\(3),
	combout => \ref|waitNDCountNext\(3));

-- Location: FF_X85_Y6_N11
\ref|waitNDCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(3),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(3));

-- Location: LABCELL_X85_Y6_N12
\ref|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~21_sumout\ = SUM(( \ref|waitNDCount\(4) ) + ( VCC ) + ( \ref|Add1~26\ ))
-- \ref|Add1~22\ = CARRY(( \ref|waitNDCount\(4) ) + ( VCC ) + ( \ref|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNDCount\(4),
	cin => \ref|Add1~26\,
	sumout => \ref|Add1~21_sumout\,
	cout => \ref|Add1~22\);

-- Location: LABCELL_X83_Y6_N21
\ref|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector5~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datac => \ref|ALT_INV_Add1~21_sumout\,
	combout => \ref|Selector5~0_combout\);

-- Location: LABCELL_X83_Y6_N18
\ref|waitNDCountNext[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(4) = ( \ref|waitNDCountNext\(4) & ( (!\ref|tick_disc~combout\) # (\ref|Selector5~0_combout\) ) ) # ( !\ref|waitNDCountNext\(4) & ( (\ref|tick_disc~combout\ & \ref|Selector5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_Selector5~0_combout\,
	dataf => \ref|ALT_INV_waitNDCountNext\(4),
	combout => \ref|waitNDCountNext\(4));

-- Location: FF_X85_Y6_N14
\ref|waitNDCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(4),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(4));

-- Location: LABCELL_X85_Y6_N15
\ref|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~17_sumout\ = SUM(( \ref|waitNDCount\(5) ) + ( VCC ) + ( \ref|Add1~22\ ))
-- \ref|Add1~18\ = CARRY(( \ref|waitNDCount\(5) ) + ( VCC ) + ( \ref|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(5),
	cin => \ref|Add1~22\,
	sumout => \ref|Add1~17_sumout\,
	cout => \ref|Add1~18\);

-- Location: LABCELL_X83_Y6_N15
\ref|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector0~0_combout\ = (!\ref|stateD_reg.waitNClk~q\) # (\ref|Add1~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~17_sumout\,
	combout => \ref|Selector0~0_combout\);

-- Location: LABCELL_X83_Y6_N12
\ref|waitNDCountNext[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(5) = ( \ref|Selector0~0_combout\ & ( (\ref|waitNDCountNext\(5)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector0~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(5),
	dataf => \ref|ALT_INV_Selector0~0_combout\,
	combout => \ref|waitNDCountNext\(5));

-- Location: FF_X85_Y6_N17
\ref|waitNDCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(5),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(5));

-- Location: LABCELL_X85_Y6_N18
\ref|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~13_sumout\ = SUM(( \ref|waitNDCount\(6) ) + ( VCC ) + ( \ref|Add1~18\ ))
-- \ref|Add1~14\ = CARRY(( \ref|waitNDCount\(6) ) + ( VCC ) + ( \ref|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(6),
	cin => \ref|Add1~18\,
	sumout => \ref|Add1~13_sumout\,
	cout => \ref|Add1~14\);

-- Location: LABCELL_X83_Y6_N27
\ref|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector54~0_combout\ = (!\ref|stateD_reg.waitNClk~q\) # (\ref|Add1~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~13_sumout\,
	combout => \ref|Selector54~0_combout\);

-- Location: LABCELL_X83_Y6_N57
\ref|waitNDCountNext[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(6) = ( \ref|Selector54~0_combout\ & ( (\ref|waitNDCountNext\(6)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector54~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(6),
	dataf => \ref|ALT_INV_Selector54~0_combout\,
	combout => \ref|waitNDCountNext\(6));

-- Location: FF_X85_Y6_N20
\ref|waitNDCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(6),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(6));

-- Location: LABCELL_X85_Y6_N21
\ref|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~9_sumout\ = SUM(( \ref|waitNDCount\(7) ) + ( VCC ) + ( \ref|Add1~14\ ))
-- \ref|Add1~10\ = CARRY(( \ref|waitNDCount\(7) ) + ( VCC ) + ( \ref|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(7),
	cin => \ref|Add1~14\,
	sumout => \ref|Add1~9_sumout\,
	cout => \ref|Add1~10\);

-- Location: MLABCELL_X84_Y6_N54
\ref|Selector55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector55~0_combout\ = ( \ref|Add1~9_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~9_sumout\,
	combout => \ref|Selector55~0_combout\);

-- Location: MLABCELL_X84_Y6_N57
\ref|waitNDCountNext[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(7) = ( \ref|Selector55~0_combout\ & ( (\ref|waitNDCountNext\(7)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector55~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(7),
	dataf => \ref|ALT_INV_Selector55~0_combout\,
	combout => \ref|waitNDCountNext\(7));

-- Location: FF_X85_Y6_N23
\ref|waitNDCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(7),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(7));

-- Location: LABCELL_X85_Y6_N24
\ref|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~53_sumout\ = SUM(( \ref|waitNDCount\(8) ) + ( VCC ) + ( \ref|Add1~10\ ))
-- \ref|Add1~54\ = CARRY(( \ref|waitNDCount\(8) ) + ( VCC ) + ( \ref|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(8),
	cin => \ref|Add1~10\,
	sumout => \ref|Add1~53_sumout\,
	cout => \ref|Add1~54\);

-- Location: MLABCELL_X84_Y6_N33
\ref|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector56~0_combout\ = ( \ref|stateD_reg.waitNClk~q\ & ( \ref|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add1~53_sumout\,
	dataf => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \ref|Selector56~0_combout\);

-- Location: LABCELL_X83_Y6_N9
\ref|waitNDCountNext[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(8) = ( \ref|waitNDCountNext\(8) & ( (!\ref|tick_disc~combout\) # (\ref|Selector56~0_combout\) ) ) # ( !\ref|waitNDCountNext\(8) & ( (\ref|tick_disc~combout\ & \ref|Selector56~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_Selector56~0_combout\,
	dataf => \ref|ALT_INV_waitNDCountNext\(8),
	combout => \ref|waitNDCountNext\(8));

-- Location: FF_X85_Y6_N26
\ref|waitNDCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(8),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(8));

-- Location: LABCELL_X85_Y6_N27
\ref|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~49_sumout\ = SUM(( \ref|waitNDCount\(9) ) + ( VCC ) + ( \ref|Add1~54\ ))
-- \ref|Add1~50\ = CARRY(( \ref|waitNDCount\(9) ) + ( VCC ) + ( \ref|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(9),
	cin => \ref|Add1~54\,
	sumout => \ref|Add1~49_sumout\,
	cout => \ref|Add1~50\);

-- Location: MLABCELL_X84_Y6_N12
\ref|Selector57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector57~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~49_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~49_sumout\,
	combout => \ref|Selector57~0_combout\);

-- Location: MLABCELL_X84_Y6_N18
\ref|waitNDCountNext[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(9) = ( \ref|Selector57~0_combout\ & ( (\ref|waitNDCountNext\(9)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector57~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_waitNDCountNext\(9),
	dataf => \ref|ALT_INV_Selector57~0_combout\,
	combout => \ref|waitNDCountNext\(9));

-- Location: FF_X85_Y6_N29
\ref|waitNDCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(9),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(9));

-- Location: LABCELL_X85_Y6_N30
\ref|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~45_sumout\ = SUM(( \ref|waitNDCount\(10) ) + ( VCC ) + ( \ref|Add1~50\ ))
-- \ref|Add1~46\ = CARRY(( \ref|waitNDCount\(10) ) + ( VCC ) + ( \ref|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(10),
	cin => \ref|Add1~50\,
	sumout => \ref|Add1~45_sumout\,
	cout => \ref|Add1~46\);

-- Location: MLABCELL_X84_Y6_N0
\ref|Selector58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector58~0_combout\ = ( \ref|Add1~45_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~45_sumout\,
	combout => \ref|Selector58~0_combout\);

-- Location: MLABCELL_X84_Y6_N45
\ref|waitNDCountNext[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(10) = (!\ref|tick_disc~combout\ & ((\ref|waitNDCountNext\(10)))) # (\ref|tick_disc~combout\ & (\ref|Selector58~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datab => \ref|ALT_INV_Selector58~0_combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(10),
	combout => \ref|waitNDCountNext\(10));

-- Location: FF_X85_Y6_N56
\ref|waitNDCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(10),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(10));

-- Location: LABCELL_X85_Y6_N33
\ref|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~41_sumout\ = SUM(( \ref|waitNDCount\(11) ) + ( VCC ) + ( \ref|Add1~46\ ))
-- \ref|Add1~42\ = CARRY(( \ref|waitNDCount\(11) ) + ( VCC ) + ( \ref|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(11),
	cin => \ref|Add1~46\,
	sumout => \ref|Add1~41_sumout\,
	cout => \ref|Add1~42\);

-- Location: MLABCELL_X84_Y6_N39
\ref|Selector59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector59~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~41_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~41_sumout\,
	combout => \ref|Selector59~0_combout\);

-- Location: MLABCELL_X84_Y6_N9
\ref|waitNDCountNext[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(11) = ( \ref|Selector59~0_combout\ & ( (\ref|waitNDCountNext\(11)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector59~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_waitNDCountNext\(11),
	dataf => \ref|ALT_INV_Selector59~0_combout\,
	combout => \ref|waitNDCountNext\(11));

-- Location: FF_X84_Y6_N11
\ref|waitNDCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(11),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(11));

-- Location: LABCELL_X85_Y6_N36
\ref|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~37_sumout\ = SUM(( \ref|waitNDCount\(12) ) + ( VCC ) + ( \ref|Add1~42\ ))
-- \ref|Add1~38\ = CARRY(( \ref|waitNDCount\(12) ) + ( VCC ) + ( \ref|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(12),
	cin => \ref|Add1~42\,
	sumout => \ref|Add1~37_sumout\,
	cout => \ref|Add1~38\);

-- Location: MLABCELL_X84_Y6_N48
\ref|Selector60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector60~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~37_sumout\,
	combout => \ref|Selector60~0_combout\);

-- Location: MLABCELL_X84_Y6_N30
\ref|waitNDCountNext[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(12) = ( \ref|Selector60~0_combout\ & ( (\ref|waitNDCountNext\(12)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector60~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_waitNDCountNext\(12),
	dataf => \ref|ALT_INV_Selector60~0_combout\,
	combout => \ref|waitNDCountNext\(12));

-- Location: FF_X84_Y6_N32
\ref|waitNDCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(12),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(12));

-- Location: LABCELL_X85_Y6_N39
\ref|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~33_sumout\ = SUM(( \ref|waitNDCount\(13) ) + ( VCC ) + ( \ref|Add1~38\ ))
-- \ref|Add1~34\ = CARRY(( \ref|waitNDCount\(13) ) + ( VCC ) + ( \ref|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(13),
	cin => \ref|Add1~38\,
	sumout => \ref|Add1~33_sumout\,
	cout => \ref|Add1~34\);

-- Location: LABCELL_X83_Y6_N48
\ref|Selector61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector61~0_combout\ = ( \ref|Add1~33_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~33_sumout\,
	combout => \ref|Selector61~0_combout\);

-- Location: LABCELL_X83_Y6_N51
\ref|waitNDCountNext[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(13) = ( \ref|Selector61~0_combout\ & ( (\ref|waitNDCountNext\(13)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector61~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(13),
	dataf => \ref|ALT_INV_Selector61~0_combout\,
	combout => \ref|waitNDCountNext\(13));

-- Location: FF_X85_Y6_N59
\ref|waitNDCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(13),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(13));

-- Location: LABCELL_X85_Y6_N42
\ref|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~77_sumout\ = SUM(( \ref|waitNDCount\(14) ) + ( VCC ) + ( \ref|Add1~34\ ))
-- \ref|Add1~78\ = CARRY(( \ref|waitNDCount\(14) ) + ( VCC ) + ( \ref|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(14),
	cin => \ref|Add1~34\,
	sumout => \ref|Add1~77_sumout\,
	cout => \ref|Add1~78\);

-- Location: MLABCELL_X84_Y6_N15
\ref|Selector62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector62~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~77_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~77_sumout\,
	combout => \ref|Selector62~0_combout\);

-- Location: MLABCELL_X84_Y6_N24
\ref|waitNDCountNext[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(14) = ( \ref|waitNDCountNext\(14) & ( (!\ref|tick_disc~combout\) # (\ref|Selector62~0_combout\) ) ) # ( !\ref|waitNDCountNext\(14) & ( (\ref|Selector62~0_combout\ & \ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector62~0_combout\,
	datac => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_waitNDCountNext\(14),
	combout => \ref|waitNDCountNext\(14));

-- Location: FF_X85_Y6_N47
\ref|waitNDCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(14),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(14));

-- Location: LABCELL_X85_Y6_N45
\ref|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~73_sumout\ = SUM(( \ref|waitNDCount\(15) ) + ( VCC ) + ( \ref|Add1~78\ ))
-- \ref|Add1~74\ = CARRY(( \ref|waitNDCount\(15) ) + ( VCC ) + ( \ref|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(15),
	cin => \ref|Add1~78\,
	sumout => \ref|Add1~73_sumout\,
	cout => \ref|Add1~74\);

-- Location: MLABCELL_X84_Y7_N57
\ref|Selector63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector63~0_combout\ = ( \ref|Add1~73_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~73_sumout\,
	combout => \ref|Selector63~0_combout\);

-- Location: MLABCELL_X84_Y7_N42
\ref|waitNDCountNext[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(15) = ( \ref|tick_disc~combout\ & ( \ref|Selector63~0_combout\ ) ) # ( !\ref|tick_disc~combout\ & ( \ref|Selector63~0_combout\ & ( \ref|waitNDCountNext\(15) ) ) ) # ( !\ref|tick_disc~combout\ & ( !\ref|Selector63~0_combout\ & ( 
-- \ref|waitNDCountNext\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCountNext\(15),
	datae => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector63~0_combout\,
	combout => \ref|waitNDCountNext\(15));

-- Location: FF_X84_Y6_N5
\ref|waitNDCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(15),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(15));

-- Location: LABCELL_X85_Y6_N48
\ref|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~69_sumout\ = SUM(( \ref|waitNDCount\(16) ) + ( VCC ) + ( \ref|Add1~74\ ))
-- \ref|Add1~70\ = CARRY(( \ref|waitNDCount\(16) ) + ( VCC ) + ( \ref|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNDCount\(16),
	cin => \ref|Add1~74\,
	sumout => \ref|Add1~69_sumout\,
	cout => \ref|Add1~70\);

-- Location: MLABCELL_X84_Y7_N15
\ref|Selector64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector64~0_combout\ = ( \ref|Add1~69_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~69_sumout\,
	combout => \ref|Selector64~0_combout\);

-- Location: MLABCELL_X84_Y7_N24
\ref|waitNDCountNext[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(16) = ( \ref|tick_disc~combout\ & ( \ref|Selector64~0_combout\ ) ) # ( !\ref|tick_disc~combout\ & ( \ref|Selector64~0_combout\ & ( \ref|waitNDCountNext\(16) ) ) ) # ( !\ref|tick_disc~combout\ & ( !\ref|Selector64~0_combout\ & ( 
-- \ref|waitNDCountNext\(16) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCountNext\(16),
	datae => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector64~0_combout\,
	combout => \ref|waitNDCountNext\(16));

-- Location: FF_X85_Y6_N32
\ref|waitNDCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(16),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(16));

-- Location: LABCELL_X85_Y6_N51
\ref|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~65_sumout\ = SUM(( \ref|waitNDCount\(17) ) + ( VCC ) + ( \ref|Add1~70\ ))
-- \ref|Add1~66\ = CARRY(( \ref|waitNDCount\(17) ) + ( VCC ) + ( \ref|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(17),
	cin => \ref|Add1~70\,
	sumout => \ref|Add1~65_sumout\,
	cout => \ref|Add1~66\);

-- Location: MLABCELL_X84_Y5_N9
\ref|Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector65~0_combout\ = ( \ref|Add1~65_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datae => \ref|ALT_INV_Add1~65_sumout\,
	combout => \ref|Selector65~0_combout\);

-- Location: MLABCELL_X84_Y5_N30
\ref|waitNDCountNext[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(17) = ( \ref|waitNDCountNext\(17) & ( (!\ref|tick_disc~combout\) # (\ref|Selector65~0_combout\) ) ) # ( !\ref|waitNDCountNext\(17) & ( (\ref|Selector65~0_combout\ & \ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_Selector65~0_combout\,
	datad => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_waitNDCountNext\(17),
	combout => \ref|waitNDCountNext\(17));

-- Location: FF_X84_Y5_N32
\ref|waitNDCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(17),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(17));

-- Location: LABCELL_X85_Y6_N54
\ref|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~61_sumout\ = SUM(( \ref|waitNDCount\(18) ) + ( VCC ) + ( \ref|Add1~66\ ))
-- \ref|Add1~62\ = CARRY(( \ref|waitNDCount\(18) ) + ( VCC ) + ( \ref|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(18),
	cin => \ref|Add1~66\,
	sumout => \ref|Add1~61_sumout\,
	cout => \ref|Add1~62\);

-- Location: MLABCELL_X84_Y6_N27
\ref|Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector66~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~61_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~61_sumout\,
	combout => \ref|Selector66~0_combout\);

-- Location: MLABCELL_X84_Y6_N6
\ref|waitNDCountNext[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(18) = ( \ref|Selector66~0_combout\ & ( (\ref|waitNDCountNext\(18)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector66~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(18),
	dataf => \ref|ALT_INV_Selector66~0_combout\,
	combout => \ref|waitNDCountNext\(18));

-- Location: FF_X84_Y6_N8
\ref|waitNDCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(18),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(18));

-- Location: LABCELL_X85_Y6_N57
\ref|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~57_sumout\ = SUM(( \ref|waitNDCount\(19) ) + ( VCC ) + ( \ref|Add1~62\ ))
-- \ref|Add1~58\ = CARRY(( \ref|waitNDCount\(19) ) + ( VCC ) + ( \ref|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(19),
	cin => \ref|Add1~62\,
	sumout => \ref|Add1~57_sumout\,
	cout => \ref|Add1~58\);

-- Location: MLABCELL_X84_Y6_N21
\ref|Selector67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector67~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~57_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~57_sumout\,
	combout => \ref|Selector67~0_combout\);

-- Location: MLABCELL_X84_Y6_N36
\ref|waitNDCountNext[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(19) = (!\ref|tick_disc~combout\ & ((\ref|waitNDCountNext\(19)))) # (\ref|tick_disc~combout\ & (\ref|Selector67~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector67~0_combout\,
	datac => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(19),
	combout => \ref|waitNDCountNext\(19));

-- Location: FF_X84_Y6_N38
\ref|waitNDCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(19),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(19));

-- Location: LABCELL_X85_Y5_N0
\ref|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~125_sumout\ = SUM(( \ref|waitNDCount\(20) ) + ( VCC ) + ( \ref|Add1~58\ ))
-- \ref|Add1~126\ = CARRY(( \ref|waitNDCount\(20) ) + ( VCC ) + ( \ref|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(20),
	cin => \ref|Add1~58\,
	sumout => \ref|Add1~125_sumout\,
	cout => \ref|Add1~126\);

-- Location: MLABCELL_X84_Y5_N15
\ref|Selector68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector68~0_combout\ = ( \ref|Add1~125_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~125_sumout\,
	combout => \ref|Selector68~0_combout\);

-- Location: MLABCELL_X84_Y5_N12
\ref|waitNDCountNext[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(20) = ( \ref|Selector68~0_combout\ & ( (\ref|tick_disc~combout\) # (\ref|waitNDCountNext\(20)) ) ) # ( !\ref|Selector68~0_combout\ & ( (\ref|waitNDCountNext\(20) & !\ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_waitNDCountNext\(20),
	datad => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector68~0_combout\,
	combout => \ref|waitNDCountNext\(20));

-- Location: FF_X84_Y5_N14
\ref|waitNDCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(20),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(20));

-- Location: LABCELL_X85_Y5_N3
\ref|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~121_sumout\ = SUM(( \ref|waitNDCount\(21) ) + ( VCC ) + ( \ref|Add1~126\ ))
-- \ref|Add1~122\ = CARRY(( \ref|waitNDCount\(21) ) + ( VCC ) + ( \ref|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(21),
	cin => \ref|Add1~126\,
	sumout => \ref|Add1~121_sumout\,
	cout => \ref|Add1~122\);

-- Location: MLABCELL_X84_Y5_N27
\ref|Selector69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector69~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~121_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~121_sumout\,
	combout => \ref|Selector69~0_combout\);

-- Location: MLABCELL_X84_Y5_N24
\ref|waitNDCountNext[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(21) = ( \ref|Selector69~0_combout\ & ( (\ref|tick_disc~combout\) # (\ref|waitNDCountNext\(21)) ) ) # ( !\ref|Selector69~0_combout\ & ( (\ref|waitNDCountNext\(21) & !\ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCountNext\(21),
	datad => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector69~0_combout\,
	combout => \ref|waitNDCountNext\(21));

-- Location: FF_X84_Y5_N26
\ref|waitNDCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(21),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(21));

-- Location: LABCELL_X85_Y5_N6
\ref|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~117_sumout\ = SUM(( \ref|waitNDCount\(22) ) + ( VCC ) + ( \ref|Add1~122\ ))
-- \ref|Add1~118\ = CARRY(( \ref|waitNDCount\(22) ) + ( VCC ) + ( \ref|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(22),
	cin => \ref|Add1~122\,
	sumout => \ref|Add1~117_sumout\,
	cout => \ref|Add1~118\);

-- Location: MLABCELL_X84_Y5_N51
\ref|Selector70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector70~0_combout\ = (\ref|stateD_reg.waitNClk~q\ & \ref|Add1~117_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datad => \ref|ALT_INV_Add1~117_sumout\,
	combout => \ref|Selector70~0_combout\);

-- Location: MLABCELL_X84_Y5_N48
\ref|waitNDCountNext[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(22) = ( \ref|Selector70~0_combout\ & ( (\ref|tick_disc~combout\) # (\ref|waitNDCountNext\(22)) ) ) # ( !\ref|Selector70~0_combout\ & ( (\ref|waitNDCountNext\(22) & !\ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCountNext\(22),
	datad => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector70~0_combout\,
	combout => \ref|waitNDCountNext\(22));

-- Location: FF_X84_Y5_N50
\ref|waitNDCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(22),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(22));

-- Location: LABCELL_X85_Y5_N9
\ref|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~113_sumout\ = SUM(( \ref|waitNDCount\(23) ) + ( VCC ) + ( \ref|Add1~118\ ))
-- \ref|Add1~114\ = CARRY(( \ref|waitNDCount\(23) ) + ( VCC ) + ( \ref|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(23),
	cin => \ref|Add1~118\,
	sumout => \ref|Add1~113_sumout\,
	cout => \ref|Add1~114\);

-- Location: MLABCELL_X84_Y5_N39
\ref|Selector71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector71~0_combout\ = ( \ref|Add1~113_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~113_sumout\,
	combout => \ref|Selector71~0_combout\);

-- Location: MLABCELL_X84_Y5_N36
\ref|waitNDCountNext[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(23) = (!\ref|tick_disc~combout\ & ((\ref|waitNDCountNext\(23)))) # (\ref|tick_disc~combout\ & (\ref|Selector71~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_Selector71~0_combout\,
	datac => \ref|ALT_INV_waitNDCountNext\(23),
	datad => \ref|ALT_INV_tick_disc~combout\,
	combout => \ref|waitNDCountNext\(23));

-- Location: FF_X84_Y5_N38
\ref|waitNDCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(23),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(23));

-- Location: LABCELL_X85_Y5_N12
\ref|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~109_sumout\ = SUM(( \ref|waitNDCount\(24) ) + ( VCC ) + ( \ref|Add1~114\ ))
-- \ref|Add1~110\ = CARRY(( \ref|waitNDCount\(24) ) + ( VCC ) + ( \ref|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(24),
	cin => \ref|Add1~114\,
	sumout => \ref|Add1~109_sumout\,
	cout => \ref|Add1~110\);

-- Location: MLABCELL_X84_Y5_N0
\ref|Selector72~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector72~0_combout\ = ( \ref|Add1~109_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~109_sumout\,
	combout => \ref|Selector72~0_combout\);

-- Location: MLABCELL_X84_Y5_N3
\ref|waitNDCountNext[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(24) = ( \ref|Selector72~0_combout\ & ( (\ref|tick_disc~combout\) # (\ref|waitNDCountNext\(24)) ) ) # ( !\ref|Selector72~0_combout\ & ( (\ref|waitNDCountNext\(24) & !\ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCountNext\(24),
	datad => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector72~0_combout\,
	combout => \ref|waitNDCountNext\(24));

-- Location: FF_X84_Y5_N5
\ref|waitNDCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(24),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(24));

-- Location: LABCELL_X85_Y5_N15
\ref|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~105_sumout\ = SUM(( \ref|waitNDCount\(25) ) + ( VCC ) + ( \ref|Add1~110\ ))
-- \ref|Add1~106\ = CARRY(( \ref|waitNDCount\(25) ) + ( VCC ) + ( \ref|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(25),
	cin => \ref|Add1~110\,
	sumout => \ref|Add1~105_sumout\,
	cout => \ref|Add1~106\);

-- Location: MLABCELL_X84_Y5_N42
\ref|Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector73~0_combout\ = ( \ref|Add1~105_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~105_sumout\,
	combout => \ref|Selector73~0_combout\);

-- Location: MLABCELL_X84_Y5_N45
\ref|waitNDCountNext[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(25) = (!\ref|tick_disc~combout\ & ((\ref|waitNDCountNext\(25)))) # (\ref|tick_disc~combout\ & (\ref|Selector73~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_Selector73~0_combout\,
	datac => \ref|ALT_INV_waitNDCountNext\(25),
	datad => \ref|ALT_INV_tick_disc~combout\,
	combout => \ref|waitNDCountNext\(25));

-- Location: FF_X84_Y5_N47
\ref|waitNDCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(25),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(25));

-- Location: LABCELL_X83_Y5_N33
\ref|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal1~5_combout\ = ( !\ref|waitNDCount\(22) & ( !\ref|waitNDCount\(21) & ( (!\ref|waitNDCount\(24) & (!\ref|waitNDCount\(23) & (!\ref|waitNDCount\(20) & !\ref|waitNDCount\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(24),
	datab => \ref|ALT_INV_waitNDCount\(23),
	datac => \ref|ALT_INV_waitNDCount\(20),
	datad => \ref|ALT_INV_waitNDCount\(25),
	datae => \ref|ALT_INV_waitNDCount\(22),
	dataf => \ref|ALT_INV_waitNDCount\(21),
	combout => \ref|Equal1~5_combout\);

-- Location: LABCELL_X83_Y6_N42
\ref|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal1~2_combout\ = ( !\ref|waitNDCount\(10) & ( !\ref|waitNDCount\(9) & ( (!\ref|waitNDCount\(12) & (!\ref|waitNDCount\(8) & (!\ref|waitNDCount\(11) & !\ref|waitNDCount\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(12),
	datab => \ref|ALT_INV_waitNDCount\(8),
	datac => \ref|ALT_INV_waitNDCount\(11),
	datad => \ref|ALT_INV_waitNDCount\(13),
	datae => \ref|ALT_INV_waitNDCount\(10),
	dataf => \ref|ALT_INV_waitNDCount\(9),
	combout => \ref|Equal1~2_combout\);

-- Location: MLABCELL_X82_Y6_N39
\ref|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal1~1_combout\ = ( !\ref|waitNDCount\(7) & ( !\ref|waitNDCount\(3) & ( (!\ref|waitNDCount\(4) & (!\ref|waitNDCount\(2) & (!\ref|waitNDCount\(5) & !\ref|waitNDCount\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(4),
	datab => \ref|ALT_INV_waitNDCount\(2),
	datac => \ref|ALT_INV_waitNDCount\(5),
	datad => \ref|ALT_INV_waitNDCount\(6),
	datae => \ref|ALT_INV_waitNDCount\(7),
	dataf => \ref|ALT_INV_waitNDCount\(3),
	combout => \ref|Equal1~1_combout\);

-- Location: LABCELL_X85_Y5_N18
\ref|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~101_sumout\ = SUM(( \ref|waitNDCount\(26) ) + ( VCC ) + ( \ref|Add1~106\ ))
-- \ref|Add1~102\ = CARRY(( \ref|waitNDCount\(26) ) + ( VCC ) + ( \ref|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(26),
	cin => \ref|Add1~106\,
	sumout => \ref|Add1~101_sumout\,
	cout => \ref|Add1~102\);

-- Location: LABCELL_X83_Y5_N15
\ref|Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector74~0_combout\ = ( \ref|Add1~101_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~101_sumout\,
	combout => \ref|Selector74~0_combout\);

-- Location: LABCELL_X83_Y5_N54
\ref|waitNDCountNext[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(26) = ( \ref|tick_disc~combout\ & ( \ref|Selector74~0_combout\ ) ) # ( !\ref|tick_disc~combout\ & ( \ref|Selector74~0_combout\ & ( \ref|waitNDCountNext\(26) ) ) ) # ( !\ref|tick_disc~combout\ & ( !\ref|Selector74~0_combout\ & ( 
-- \ref|waitNDCountNext\(26) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCountNext\(26),
	datae => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector74~0_combout\,
	combout => \ref|waitNDCountNext\(26));

-- Location: FF_X83_Y5_N56
\ref|waitNDCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(26),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(26));

-- Location: LABCELL_X85_Y5_N21
\ref|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~97_sumout\ = SUM(( \ref|waitNDCount\(27) ) + ( VCC ) + ( \ref|Add1~102\ ))
-- \ref|Add1~98\ = CARRY(( \ref|waitNDCount\(27) ) + ( VCC ) + ( \ref|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(27),
	cin => \ref|Add1~102\,
	sumout => \ref|Add1~97_sumout\,
	cout => \ref|Add1~98\);

-- Location: MLABCELL_X84_Y5_N21
\ref|Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector75~0_combout\ = ( \ref|Add1~97_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datae => \ref|ALT_INV_Add1~97_sumout\,
	combout => \ref|Selector75~0_combout\);

-- Location: MLABCELL_X84_Y5_N33
\ref|waitNDCountNext[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(27) = ( \ref|Selector75~0_combout\ & ( (\ref|tick_disc~combout\) # (\ref|waitNDCountNext\(27)) ) ) # ( !\ref|Selector75~0_combout\ & ( (\ref|waitNDCountNext\(27) & !\ref|tick_disc~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCountNext\(27),
	datad => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_Selector75~0_combout\,
	combout => \ref|waitNDCountNext\(27));

-- Location: FF_X84_Y5_N35
\ref|waitNDCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(27),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(27));

-- Location: LABCELL_X85_Y5_N24
\ref|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~93_sumout\ = SUM(( \ref|waitNDCount\(28) ) + ( VCC ) + ( \ref|Add1~98\ ))
-- \ref|Add1~94\ = CARRY(( \ref|waitNDCount\(28) ) + ( VCC ) + ( \ref|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(28),
	cin => \ref|Add1~98\,
	sumout => \ref|Add1~93_sumout\,
	cout => \ref|Add1~94\);

-- Location: LABCELL_X85_Y5_N36
\ref|Selector76~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector76~0_combout\ = ( \ref|Add1~93_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~93_sumout\,
	combout => \ref|Selector76~0_combout\);

-- Location: LABCELL_X85_Y5_N39
\ref|waitNDCountNext[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(28) = ( \ref|Selector76~0_combout\ & ( (\ref|waitNDCountNext\(28)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector76~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_waitNDCountNext\(28),
	dataf => \ref|ALT_INV_Selector76~0_combout\,
	combout => \ref|waitNDCountNext\(28));

-- Location: FF_X84_Y5_N8
\ref|waitNDCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(28),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(28));

-- Location: LABCELL_X85_Y5_N27
\ref|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~89_sumout\ = SUM(( \ref|waitNDCount\(29) ) + ( VCC ) + ( \ref|Add1~94\ ))
-- \ref|Add1~90\ = CARRY(( \ref|waitNDCount\(29) ) + ( VCC ) + ( \ref|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(29),
	cin => \ref|Add1~94\,
	sumout => \ref|Add1~89_sumout\,
	cout => \ref|Add1~90\);

-- Location: LABCELL_X85_Y5_N54
\ref|Selector77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector77~0_combout\ = ( \ref|Add1~89_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~89_sumout\,
	combout => \ref|Selector77~0_combout\);

-- Location: LABCELL_X85_Y5_N51
\ref|waitNDCountNext[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(29) = ( \ref|Selector77~0_combout\ & ( (\ref|waitNDCountNext\(29)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector77~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(29)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(29),
	dataf => \ref|ALT_INV_Selector77~0_combout\,
	combout => \ref|waitNDCountNext\(29));

-- Location: FF_X85_Y5_N53
\ref|waitNDCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|waitNDCountNext\(29),
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(29));

-- Location: LABCELL_X85_Y5_N30
\ref|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~85_sumout\ = SUM(( \ref|waitNDCount\(30) ) + ( VCC ) + ( \ref|Add1~90\ ))
-- \ref|Add1~86\ = CARRY(( \ref|waitNDCount\(30) ) + ( VCC ) + ( \ref|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(30),
	cin => \ref|Add1~90\,
	sumout => \ref|Add1~85_sumout\,
	cout => \ref|Add1~86\);

-- Location: LABCELL_X85_Y5_N48
\ref|Selector78~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector78~0_combout\ = ( \ref|Add1~85_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~85_sumout\,
	combout => \ref|Selector78~0_combout\);

-- Location: LABCELL_X85_Y5_N57
\ref|waitNDCountNext[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(30) = ( \ref|Selector78~0_combout\ & ( (\ref|waitNDCountNext\(30)) # (\ref|tick_disc~combout\) ) ) # ( !\ref|Selector78~0_combout\ & ( (!\ref|tick_disc~combout\ & \ref|waitNDCountNext\(30)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(30),
	dataf => \ref|ALT_INV_Selector78~0_combout\,
	combout => \ref|waitNDCountNext\(30));

-- Location: FF_X84_Y5_N20
\ref|waitNDCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(30),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(30));

-- Location: LABCELL_X85_Y5_N33
\ref|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add1~81_sumout\ = SUM(( \ref|waitNDCount\(31) ) + ( VCC ) + ( \ref|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_waitNDCount\(31),
	cin => \ref|Add1~86\,
	sumout => \ref|Add1~81_sumout\);

-- Location: LABCELL_X85_Y5_N42
\ref|Selector79~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector79~0_combout\ = ( \ref|Add1~81_sumout\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_Add1~81_sumout\,
	combout => \ref|Selector79~0_combout\);

-- Location: LABCELL_X85_Y5_N45
\ref|waitNDCountNext[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|waitNDCountNext\(31) = (!\ref|tick_disc~combout\ & ((\ref|waitNDCountNext\(31)))) # (\ref|tick_disc~combout\ & (\ref|Selector79~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector79~0_combout\,
	datac => \ref|ALT_INV_tick_disc~combout\,
	datad => \ref|ALT_INV_waitNDCountNext\(31),
	combout => \ref|waitNDCountNext\(31));

-- Location: FF_X84_Y5_N59
\ref|waitNDCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|waitNDCountNext\(31),
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|waitNDCount\(31));

-- Location: MLABCELL_X84_Y5_N54
\ref|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal1~4_combout\ = ( !\ref|waitNDCount\(27) & ( !\ref|waitNDCount\(29) & ( (!\ref|waitNDCount\(30) & (!\ref|waitNDCount\(28) & (!\ref|waitNDCount\(26) & !\ref|waitNDCount\(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(30),
	datab => \ref|ALT_INV_waitNDCount\(28),
	datac => \ref|ALT_INV_waitNDCount\(26),
	datad => \ref|ALT_INV_waitNDCount\(31),
	datae => \ref|ALT_INV_waitNDCount\(27),
	dataf => \ref|ALT_INV_waitNDCount\(29),
	combout => \ref|Equal1~4_combout\);

-- Location: LABCELL_X83_Y5_N36
\ref|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal1~3_combout\ = ( !\ref|waitNDCount\(18) & ( !\ref|waitNDCount\(16) & ( (!\ref|waitNDCount\(19) & (!\ref|waitNDCount\(14) & (!\ref|waitNDCount\(17) & !\ref|waitNDCount\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_waitNDCount\(19),
	datab => \ref|ALT_INV_waitNDCount\(14),
	datac => \ref|ALT_INV_waitNDCount\(17),
	datad => \ref|ALT_INV_waitNDCount\(15),
	datae => \ref|ALT_INV_waitNDCount\(18),
	dataf => \ref|ALT_INV_waitNDCount\(16),
	combout => \ref|Equal1~3_combout\);

-- Location: MLABCELL_X87_Y6_N33
\ref|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal1~0_combout\ = ( !\ref|waitNDCount\(1) & ( !\ref|waitNDCount\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_waitNDCount\(0),
	datae => \ref|ALT_INV_waitNDCount\(1),
	combout => \ref|Equal1~0_combout\);

-- Location: LABCELL_X83_Y6_N0
\ref|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal1~6_combout\ = ( \ref|Equal1~3_combout\ & ( \ref|Equal1~0_combout\ & ( (\ref|Equal1~5_combout\ & (\ref|Equal1~2_combout\ & (\ref|Equal1~1_combout\ & \ref|Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal1~5_combout\,
	datab => \ref|ALT_INV_Equal1~2_combout\,
	datac => \ref|ALT_INV_Equal1~1_combout\,
	datad => \ref|ALT_INV_Equal1~4_combout\,
	datae => \ref|ALT_INV_Equal1~3_combout\,
	dataf => \ref|ALT_INV_Equal1~0_combout\,
	combout => \ref|Equal1~6_combout\);

-- Location: LABCELL_X83_Y9_N48
\step|rdy_v4_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|rdy_v4_s~0_combout\ = ( \step|process_0~0_combout\ & ( (\step|Equal0~0_combout\ & (\step|cnt_s\(5) & (\step|rdy_v4_s~q\ & \step|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_Equal0~0_combout\,
	datab => \step|ALT_INV_cnt_s\(5),
	datac => \step|ALT_INV_rdy_v4_s~q\,
	datad => \step|ALT_INV_Equal0~1_combout\,
	dataf => \step|ALT_INV_process_0~0_combout\,
	combout => \step|rdy_v4_s~0_combout\);

-- Location: LABCELL_X83_Y9_N36
\step|rdy_v4_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|rdy_v4_s~1_combout\ = ( \step|Equal0~2_combout\ & ( \step|rdy_v4_s~0_combout\ ) ) # ( !\step|Equal0~2_combout\ & ( \step|rdy_v4_s~0_combout\ ) ) # ( \step|Equal0~2_combout\ & ( !\step|rdy_v4_s~0_combout\ & ( (\step|Equal1~0_combout\ & 
-- ((\step|Equal1~1_combout\) # (\step|cnt_s\(8)))) ) ) ) # ( !\step|Equal0~2_combout\ & ( !\step|rdy_v4_s~0_combout\ & ( (\step|Equal1~0_combout\ & (((\step|cnt_s\(8) & \step|process_0~1_combout\)) # (\step|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000001110000011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(8),
	datab => \step|ALT_INV_Equal1~1_combout\,
	datac => \step|ALT_INV_Equal1~0_combout\,
	datad => \step|ALT_INV_process_0~1_combout\,
	datae => \step|ALT_INV_Equal0~2_combout\,
	dataf => \step|ALT_INV_rdy_v4_s~0_combout\,
	combout => \step|rdy_v4_s~1_combout\);

-- Location: FF_X83_Y9_N38
\step|rdy_v4_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|rdy_v4_s~1_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|rdy_v4_s~q\);

-- Location: LABCELL_X83_Y9_N24
\step|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|process_0~2_combout\ = ( \step|Equal0~0_combout\ & ( (\step|cnt_s\(5) & (\step|process_0~0_combout\ & \step|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \step|ALT_INV_cnt_s\(5),
	datac => \step|ALT_INV_process_0~0_combout\,
	datad => \step|ALT_INV_Equal0~1_combout\,
	dataf => \step|ALT_INV_Equal0~0_combout\,
	combout => \step|process_0~2_combout\);

-- Location: LABCELL_X83_Y9_N39
\step|rdy_v8_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|rdy_v8_s~0_combout\ = ( \step|Equal0~2_combout\ & ( \step|process_0~2_combout\ ) ) # ( !\step|Equal0~2_combout\ & ( \step|process_0~2_combout\ ) ) # ( \step|Equal0~2_combout\ & ( !\step|process_0~2_combout\ & ( (\step|Equal1~0_combout\ & 
-- ((\step|Equal1~1_combout\) # (\step|cnt_s\(8)))) ) ) ) # ( !\step|Equal0~2_combout\ & ( !\step|process_0~2_combout\ & ( (\step|Equal1~0_combout\ & (((\step|cnt_s\(8) & \step|process_0~1_combout\)) # (\step|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110111000000000111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(8),
	datab => \step|ALT_INV_Equal1~1_combout\,
	datac => \step|ALT_INV_process_0~1_combout\,
	datad => \step|ALT_INV_Equal1~0_combout\,
	datae => \step|ALT_INV_Equal0~2_combout\,
	dataf => \step|ALT_INV_process_0~2_combout\,
	combout => \step|rdy_v8_s~0_combout\);

-- Location: FF_X83_Y9_N41
\step|rdy_v8_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|rdy_v8_s~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|rdy_v8_s~q\);

-- Location: LABCELL_X83_Y9_N18
\step|rdy_v2_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|rdy_v2_s~0_combout\ = ( \step|rdy_v2_s~q\ & ( \step|Equal1~0_combout\ & ( (((\step|cnt_s\(8) & \step|Equal0~2_combout\)) # (\step|Equal1~1_combout\)) # (\step|rdy_v1_s~0_combout\) ) ) ) # ( !\step|rdy_v2_s~q\ & ( \step|Equal1~0_combout\ & ( 
-- ((\step|cnt_s\(8) & \step|Equal0~2_combout\)) # (\step|Equal1~1_combout\) ) ) ) # ( \step|rdy_v2_s~q\ & ( !\step|Equal1~0_combout\ & ( \step|rdy_v1_s~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000101111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_s\(8),
	datab => \step|ALT_INV_rdy_v1_s~0_combout\,
	datac => \step|ALT_INV_Equal0~2_combout\,
	datad => \step|ALT_INV_Equal1~1_combout\,
	datae => \step|ALT_INV_rdy_v2_s~q\,
	dataf => \step|ALT_INV_Equal1~0_combout\,
	combout => \step|rdy_v2_s~0_combout\);

-- Location: FF_X83_Y9_N20
\step|rdy_v2_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \step|rdy_v2_s~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \step|rdy_v2_s~q\);

-- Location: IOIBUF_X89_Y6_N55
\sys_speed[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(2),
	o => \sys_speed[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\sys_speed[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(3),
	o => \sys_speed[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\sys_speed[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(0),
	o => \sys_speed[0]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\sys_speed[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_speed(1),
	o => \sys_speed[1]~input_o\);

-- Location: MLABCELL_X84_Y4_N15
\button|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \button|Mux0~0_combout\ = ( !\sys_speed[0]~input_o\ & ( \sys_speed[1]~input_o\ & ( (!\sys_speed[2]~input_o\ & !\sys_speed[3]~input_o\) ) ) ) # ( !\sys_speed[0]~input_o\ & ( !\sys_speed[1]~input_o\ & ( !\sys_speed[2]~input_o\ $ (!\sys_speed[3]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sys_speed[2]~input_o\,
	datac => \ALT_INV_sys_speed[3]~input_o\,
	datae => \ALT_INV_sys_speed[0]~input_o\,
	dataf => \ALT_INV_sys_speed[1]~input_o\,
	combout => \button|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y6_N33
\button|speed_sync_s~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \button|speed_sync_s~10_combout\ = ( \enable~input_o\ & ( (\button|Mux0~0_combout\ & !\res~input_o\) ) ) # ( !\enable~input_o\ & ( (!\res~input_o\ & \button|speed_sync_s.ONE_X~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_res~input_o\,
	datad => \button|ALT_INV_speed_sync_s.ONE_X~q\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \button|speed_sync_s~10_combout\);

-- Location: FF_X82_Y6_N35
\button|speed_sync_s.ONE_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \button|speed_sync_s~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button|speed_sync_s.ONE_X~q\);

-- Location: MLABCELL_X84_Y4_N36
\button|speed_sync_s~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \button|speed_sync_s~11_combout\ = ( \button|speed_sync_s.TWO_X~q\ & ( \sys_speed[2]~input_o\ & ( !\enable~input_o\ ) ) ) # ( \button|speed_sync_s.TWO_X~q\ & ( !\sys_speed[2]~input_o\ & ( (!\enable~input_o\) # ((!\sys_speed[0]~input_o\ & 
-- (!\sys_speed[3]~input_o\ & \sys_speed[1]~input_o\))) ) ) ) # ( !\button|speed_sync_s.TWO_X~q\ & ( !\sys_speed[2]~input_o\ & ( (!\sys_speed[0]~input_o\ & (!\sys_speed[3]~input_o\ & (\sys_speed[1]~input_o\ & \enable~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111111110000100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sys_speed[0]~input_o\,
	datab => \ALT_INV_sys_speed[3]~input_o\,
	datac => \ALT_INV_sys_speed[1]~input_o\,
	datad => \ALT_INV_enable~input_o\,
	datae => \button|ALT_INV_speed_sync_s.TWO_X~q\,
	dataf => \ALT_INV_sys_speed[2]~input_o\,
	combout => \button|speed_sync_s~11_combout\);

-- Location: FF_X84_Y4_N37
\button|speed_sync_s.TWO_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \button|speed_sync_s~11_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button|speed_sync_s.TWO_X~q\);

-- Location: MLABCELL_X84_Y4_N30
\button|speed_sync_s~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \button|speed_sync_s~12_combout\ = ( \button|speed_sync_s.FOUR_X~q\ & ( \sys_speed[2]~input_o\ & ( (!\enable~input_o\) # ((!\sys_speed[0]~input_o\ & (!\sys_speed[3]~input_o\ & !\sys_speed[1]~input_o\))) ) ) ) # ( !\button|speed_sync_s.FOUR_X~q\ & ( 
-- \sys_speed[2]~input_o\ & ( (!\sys_speed[0]~input_o\ & (!\sys_speed[3]~input_o\ & (!\sys_speed[1]~input_o\ & \enable~input_o\))) ) ) ) # ( \button|speed_sync_s.FOUR_X~q\ & ( !\sys_speed[2]~input_o\ & ( !\enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sys_speed[0]~input_o\,
	datab => \ALT_INV_sys_speed[3]~input_o\,
	datac => \ALT_INV_sys_speed[1]~input_o\,
	datad => \ALT_INV_enable~input_o\,
	datae => \button|ALT_INV_speed_sync_s.FOUR_X~q\,
	dataf => \ALT_INV_sys_speed[2]~input_o\,
	combout => \button|speed_sync_s~12_combout\);

-- Location: FF_X84_Y4_N31
\button|speed_sync_s.FOUR_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \button|speed_sync_s~12_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button|speed_sync_s.FOUR_X~q\);

-- Location: LABCELL_X83_Y9_N54
\step|cnt_disc_rdy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|cnt_disc_rdy~0_combout\ = ( \button|speed_sync_s.TWO_X~q\ & ( \button|speed_sync_s.FOUR_X~q\ & ( (\step|rdy_v2_s~q\ & \button|speed_sync_s.ONE_X~q\) ) ) ) # ( !\button|speed_sync_s.TWO_X~q\ & ( \button|speed_sync_s.FOUR_X~q\ & ( (\step|rdy_v4_s~q\ & 
-- \button|speed_sync_s.ONE_X~q\) ) ) ) # ( \button|speed_sync_s.TWO_X~q\ & ( !\button|speed_sync_s.FOUR_X~q\ & ( (\step|rdy_v2_s~q\ & \button|speed_sync_s.ONE_X~q\) ) ) ) # ( !\button|speed_sync_s.TWO_X~q\ & ( !\button|speed_sync_s.FOUR_X~q\ & ( 
-- (\step|rdy_v8_s~q\ & \button|speed_sync_s.ONE_X~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000111100000000010101010000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_rdy_v4_s~q\,
	datab => \step|ALT_INV_rdy_v8_s~q\,
	datac => \step|ALT_INV_rdy_v2_s~q\,
	datad => \button|ALT_INV_speed_sync_s.ONE_X~q\,
	datae => \button|ALT_INV_speed_sync_s.TWO_X~q\,
	dataf => \button|ALT_INV_speed_sync_s.FOUR_X~q\,
	combout => \step|cnt_disc_rdy~0_combout\);

-- Location: MLABCELL_X82_Y6_N30
\step|cnt_disc_rdy~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|cnt_disc_rdy~1_combout\ = ( !\button|speed_sync_s.ONE_X~q\ & ( \step|rdy_v1_s~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \step|ALT_INV_rdy_v1_s~q\,
	dataf => \button|ALT_INV_speed_sync_s.ONE_X~q\,
	combout => \step|cnt_disc_rdy~1_combout\);

-- Location: MLABCELL_X82_Y6_N3
\ref|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector9~0_combout\ = ( \ref|stateD_reg.waitRdy0~q\ & ( \step|cnt_disc_rdy~1_combout\ & ( (!\ref|stateD_reg.waitNClk~q\) # (!\ref|Equal1~6_combout\) ) ) ) # ( !\ref|stateD_reg.waitRdy0~q\ & ( \step|cnt_disc_rdy~1_combout\ & ( 
-- (!\basis|control|main|STATE~10_combout\ & ((!\ref|stateD_reg.waitNClk~q\) # (!\ref|Equal1~6_combout\))) ) ) ) # ( \ref|stateD_reg.waitRdy0~q\ & ( !\step|cnt_disc_rdy~1_combout\ & ( (!\ref|stateD_reg.waitNClk~q\) # (!\ref|Equal1~6_combout\) ) ) ) # ( 
-- !\ref|stateD_reg.waitRdy0~q\ & ( !\step|cnt_disc_rdy~1_combout\ & ( (!\basis|control|main|STATE~10_combout\ & ((!\ref|stateD_reg.waitNClk~q\) # ((!\ref|Equal1~6_combout\)))) # (\basis|control|main|STATE~10_combout\ & (!\step|cnt_disc_rdy~0_combout\ & 
-- ((!\ref|stateD_reg.waitNClk~q\) # (!\ref|Equal1~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001111110010101000101010001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE~10_combout\,
	datab => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	datac => \ref|ALT_INV_Equal1~6_combout\,
	datad => \step|ALT_INV_cnt_disc_rdy~0_combout\,
	datae => \ref|ALT_INV_stateD_reg.waitRdy0~q\,
	dataf => \step|ALT_INV_cnt_disc_rdy~1_combout\,
	combout => \ref|Selector9~0_combout\);

-- Location: FF_X82_Y6_N5
\ref|stateD_reg.waitRdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector9~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateD_reg.waitRdy0~q\);

-- Location: MLABCELL_X82_Y6_N24
\ref|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector7~0_combout\ = ( \ref|stateD_reg.rdy0~q\ & ( \step|cnt_disc_rdy~1_combout\ & ( (!\enable~input_o\) # (!\basis|control|main|STATE.CHECK_END~q\) ) ) ) # ( !\ref|stateD_reg.rdy0~q\ & ( \step|cnt_disc_rdy~1_combout\ & ( 
-- (!\ref|stateD_reg.waitRdy0~q\ & ((!\enable~input_o\) # (!\basis|control|main|STATE.CHECK_END~q\))) ) ) ) # ( \ref|stateD_reg.rdy0~q\ & ( !\step|cnt_disc_rdy~1_combout\ & ( (!\enable~input_o\) # ((!\step|cnt_disc_rdy~0_combout\) # 
-- (!\basis|control|main|STATE.CHECK_END~q\)) ) ) ) # ( !\ref|stateD_reg.rdy0~q\ & ( !\step|cnt_disc_rdy~1_combout\ & ( (!\ref|stateD_reg.waitRdy0~q\ & ((!\enable~input_o\) # ((!\step|cnt_disc_rdy~0_combout\) # (!\basis|control|main|STATE.CHECK_END~q\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000111111111111110010101010100010001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateD_reg.waitRdy0~q\,
	datab => \ALT_INV_enable~input_o\,
	datac => \step|ALT_INV_cnt_disc_rdy~0_combout\,
	datad => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	datae => \ref|ALT_INV_stateD_reg.rdy0~q\,
	dataf => \step|ALT_INV_cnt_disc_rdy~1_combout\,
	combout => \ref|Selector7~0_combout\);

-- Location: FF_X82_Y6_N26
\ref|stateD_reg.rdy0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector7~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateD_reg.rdy0~q\);

-- Location: MLABCELL_X82_Y6_N42
\ref|stateD_next.rdy1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|stateD_next.rdy1~0_combout\ = ( \step|cnt_disc_rdy~0_combout\ & ( (\ref|stateD_reg.rdy0~q\ & (\basis|control|main|STATE.CHECK_END~q\ & \enable~input_o\)) ) ) # ( !\step|cnt_disc_rdy~0_combout\ & ( (\ref|stateD_reg.rdy0~q\ & 
-- (\basis|control|main|STATE.CHECK_END~q\ & (\step|cnt_disc_rdy~1_combout\ & \enable~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_stateD_reg.rdy0~q\,
	datab => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	datac => \step|ALT_INV_cnt_disc_rdy~1_combout\,
	datad => \ALT_INV_enable~input_o\,
	dataf => \step|ALT_INV_cnt_disc_rdy~0_combout\,
	combout => \ref|stateD_next.rdy1~0_combout\);

-- Location: FF_X83_Y6_N47
\ref|stateD_reg.rdy1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|stateD_next.rdy1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateD_reg.rdy1~q\);

-- Location: LABCELL_X83_Y6_N24
\ref|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector8~0_combout\ = ( \ref|stateD_reg.waitNClk~q\ & ( (!\ref|Equal1~6_combout\) # (\ref|stateD_reg.rdy1~q\) ) ) # ( !\ref|stateD_reg.waitNClk~q\ & ( \ref|stateD_reg.rdy1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_stateD_reg.rdy1~q\,
	datad => \ref|ALT_INV_Equal1~6_combout\,
	dataf => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	combout => \ref|Selector8~0_combout\);

-- Location: FF_X84_Y6_N56
\ref|stateD_reg.waitNClk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|Selector8~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|stateD_reg.waitNClk~q\);

-- Location: MLABCELL_X84_Y6_N51
\ref|tick_disc\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|tick_disc~combout\ = ( \ref|stateD_reg.rdy1~q\ ) # ( !\ref|stateD_reg.rdy1~q\ & ( \ref|stateD_reg.waitNClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_stateD_reg.waitNClk~q\,
	dataf => \ref|ALT_INV_stateD_reg.rdy1~q\,
	combout => \ref|tick_disc~combout\);

-- Location: LABCELL_X83_Y8_N0
\ref|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~5_sumout\ = SUM(( !\ref|mainCnt\(0) ) + ( VCC ) + ( !VCC ))
-- \ref|Add2~6\ = CARRY(( !\ref|mainCnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(0),
	cin => GND,
	sumout => \ref|Add2~5_sumout\,
	cout => \ref|Add2~6\);

-- Location: MLABCELL_X82_Y7_N42
\ref|Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector53~0_combout\ = ( \ref|Add2~5_sumout\ & ( (!\ref|mainCnt[31]~DUPLICATE_q\) # ((\ref|mainCnt[5]~0_combout\) # (\ref|LessThan0~5_combout\)) ) ) # ( !\ref|Add2~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	dataf => \ref|ALT_INV_Add2~5_sumout\,
	combout => \ref|Selector53~0_combout\);

-- Location: FF_X83_Y8_N29
\ref|mainCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|Selector53~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(0));

-- Location: LABCELL_X83_Y8_N3
\ref|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~29_sumout\ = SUM(( !\ref|mainCnt\(1) ) + ( VCC ) + ( \ref|Add2~6\ ))
-- \ref|Add2~30\ = CARRY(( !\ref|mainCnt\(1) ) + ( VCC ) + ( \ref|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(1),
	cin => \ref|Add2~6\,
	sumout => \ref|Add2~29_sumout\,
	cout => \ref|Add2~30\);

-- Location: MLABCELL_X84_Y8_N36
\ref|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector52~0_combout\ = ( \ref|state_reg.idle~q\ & ( \ref|tick_disc~combout\ & ( \ref|Add2~29_sumout\ ) ) ) # ( \ref|state_reg.idle~q\ & ( !\ref|tick_disc~combout\ & ( \ref|Add2~29_sumout\ ) ) ) # ( !\ref|state_reg.idle~q\ & ( 
-- !\ref|tick_disc~combout\ & ( \ref|tick_guru~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_Add2~29_sumout\,
	datae => \ref|ALT_INV_state_reg.idle~q\,
	dataf => \ref|ALT_INV_tick_disc~combout\,
	combout => \ref|Selector52~0_combout\);

-- Location: MLABCELL_X82_Y8_N54
\ref|Selector52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector52~1_combout\ = ( \ref|mainCnt[5]~1_combout\ & ( \ref|Selector52~0_combout\ & ( (\ref|state_reg.idle~q\ & ((!\ref|mainCnt[31]~DUPLICATE_q\) # ((\ref|mainCnt[5]~0_combout\) # (\ref|LessThan0~5_combout\)))) ) ) ) # ( \ref|mainCnt[5]~1_combout\ 
-- & ( !\ref|Selector52~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \ref|ALT_INV_state_reg.idle~q\,
	datae => \ref|ALT_INV_mainCnt[5]~1_combout\,
	dataf => \ref|ALT_INV_Selector52~0_combout\,
	combout => \ref|Selector52~1_combout\);

-- Location: FF_X82_Y8_N56
\ref|mainCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector52~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(1));

-- Location: LABCELL_X83_Y8_N6
\ref|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~25_sumout\ = SUM(( !\ref|mainCnt\(2) ) + ( VCC ) + ( \ref|Add2~30\ ))
-- \ref|Add2~26\ = CARRY(( !\ref|mainCnt\(2) ) + ( VCC ) + ( \ref|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(2),
	cin => \ref|Add2~30\,
	sumout => \ref|Add2~25_sumout\,
	cout => \ref|Add2~26\);

-- Location: MLABCELL_X82_Y8_N6
\ref|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector51~0_combout\ = ( !\ref|state_reg.idle~q\ & ( ((((\ref|tick_guru~combout\)) # (\ref|tick_disc~combout\))) ) ) # ( \ref|state_reg.idle~q\ & ( (\ref|mainCnt[31]~DUPLICATE_q\ & (!\ref|LessThan0~5_combout\ & (!\ref|mainCnt[5]~0_combout\ & 
-- (\ref|Add2~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000100000011111111111111110000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \ref|ALT_INV_Add2~25_sumout\,
	datae => \ref|ALT_INV_state_reg.idle~q\,
	dataf => \ref|ALT_INV_tick_guru~combout\,
	datag => \ref|ALT_INV_tick_disc~combout\,
	combout => \ref|Selector51~0_combout\);

-- Location: MLABCELL_X82_Y8_N36
\ref|mainCnt[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|mainCnt[2]~8_combout\ = ( !\ref|Selector51~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ref|ALT_INV_Selector51~0_combout\,
	combout => \ref|mainCnt[2]~8_combout\);

-- Location: FF_X82_Y8_N38
\ref|mainCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|mainCnt[2]~8_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(2));

-- Location: LABCELL_X83_Y8_N9
\ref|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~21_sumout\ = SUM(( !\ref|mainCnt\(3) ) + ( VCC ) + ( \ref|Add2~26\ ))
-- \ref|Add2~22\ = CARRY(( !\ref|mainCnt\(3) ) + ( VCC ) + ( \ref|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(3),
	cin => \ref|Add2~26\,
	sumout => \ref|Add2~21_sumout\,
	cout => \ref|Add2~22\);

-- Location: MLABCELL_X82_Y8_N27
\ref|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector50~0_combout\ = ( \ref|Add2~21_sumout\ & ( \ref|Selector19~0_combout\ & ( (\ref|state_reg.idle~q\ & (((!\ref|mainCnt[31]~DUPLICATE_q\) # (\ref|LessThan0~5_combout\)) # (\ref|mainCnt[5]~0_combout\))) ) ) ) # ( !\ref|Add2~21_sumout\ & ( 
-- \ref|Selector19~0_combout\ & ( (\ref|state_reg.idle~q\ & (((!\ref|mainCnt[31]~DUPLICATE_q\) # (\ref|LessThan0~5_combout\)) # (\ref|mainCnt[5]~0_combout\))) ) ) ) # ( \ref|Add2~21_sumout\ & ( !\ref|Selector19~0_combout\ & ( (((!\ref|state_reg.idle~q\) # 
-- (!\ref|mainCnt[31]~DUPLICATE_q\)) # (\ref|LessThan0~5_combout\)) # (\ref|mainCnt[5]~0_combout\) ) ) ) # ( !\ref|Add2~21_sumout\ & ( !\ref|Selector19~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111011100001111000001110000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_state_reg.idle~q\,
	datad => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datae => \ref|ALT_INV_Add2~21_sumout\,
	dataf => \ref|ALT_INV_Selector19~0_combout\,
	combout => \ref|Selector50~0_combout\);

-- Location: FF_X82_Y8_N29
\ref|mainCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector50~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(3));

-- Location: LABCELL_X83_Y8_N12
\ref|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~17_sumout\ = SUM(( !\ref|mainCnt[4]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~22\ ))
-- \ref|Add2~18\ = CARRY(( !\ref|mainCnt[4]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt[4]~DUPLICATE_q\,
	cin => \ref|Add2~22\,
	sumout => \ref|Add2~17_sumout\,
	cout => \ref|Add2~18\);

-- Location: MLABCELL_X82_Y8_N12
\ref|Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector49~0_combout\ = ( \ref|mainCnt[5]~1_combout\ & ( \ref|Add2~17_sumout\ & ( (!\ref|mainCnt[31]~DUPLICATE_q\) # ((\ref|mainCnt[5]~0_combout\) # (\ref|LessThan0~5_combout\)) ) ) ) # ( \ref|mainCnt[5]~1_combout\ & ( !\ref|Add2~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datae => \ref|ALT_INV_mainCnt[5]~1_combout\,
	dataf => \ref|ALT_INV_Add2~17_sumout\,
	combout => \ref|Selector49~0_combout\);

-- Location: FF_X82_Y8_N13
\ref|mainCnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector49~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N15
\ref|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~13_sumout\ = SUM(( !\ref|mainCnt\(5) ) + ( VCC ) + ( \ref|Add2~18\ ))
-- \ref|Add2~14\ = CARRY(( !\ref|mainCnt\(5) ) + ( VCC ) + ( \ref|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(5),
	cin => \ref|Add2~18\,
	sumout => \ref|Add2~13_sumout\,
	cout => \ref|Add2~14\);

-- Location: MLABCELL_X82_Y8_N39
\ref|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector48~0_combout\ = ( \ref|tick_guru~combout\ & ( (\ref|state_reg.idle~q\ & !\ref|Add2~13_sumout\) ) ) # ( !\ref|tick_guru~combout\ & ( (!\ref|state_reg.idle~q\ & (!\ref|tick_disc~combout\)) # (\ref|state_reg.idle~q\ & ((!\ref|Add2~13_sumout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_tick_disc~combout\,
	datac => \ref|ALT_INV_state_reg.idle~q\,
	datad => \ref|ALT_INV_Add2~13_sumout\,
	dataf => \ref|ALT_INV_tick_guru~combout\,
	combout => \ref|Selector48~0_combout\);

-- Location: MLABCELL_X82_Y8_N18
\ref|Selector48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector48~1_combout\ = ( \ref|mainCnt[5]~1_combout\ & ( \ref|Selector48~0_combout\ ) ) # ( \ref|mainCnt[5]~1_combout\ & ( !\ref|Selector48~0_combout\ & ( (\ref|state_reg.idle~q\ & ((!\ref|mainCnt[31]~DUPLICATE_q\) # ((\ref|mainCnt[5]~0_combout\) # 
-- (\ref|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001011111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \ref|ALT_INV_state_reg.idle~q\,
	datae => \ref|ALT_INV_mainCnt[5]~1_combout\,
	dataf => \ref|ALT_INV_Selector48~0_combout\,
	combout => \ref|Selector48~1_combout\);

-- Location: FF_X82_Y8_N20
\ref|mainCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector48~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(5));

-- Location: LABCELL_X83_Y8_N18
\ref|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~9_sumout\ = SUM(( !\ref|mainCnt\(6) ) + ( VCC ) + ( \ref|Add2~14\ ))
-- \ref|Add2~10\ = CARRY(( !\ref|mainCnt\(6) ) + ( VCC ) + ( \ref|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(6),
	cin => \ref|Add2~14\,
	sumout => \ref|Add2~9_sumout\,
	cout => \ref|Add2~10\);

-- Location: MLABCELL_X82_Y6_N6
\ref|Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector47~0_combout\ = ( !\ref|state_reg.idle~q\ & ( (((\ref|tick_disc~combout\)) # (\ref|tick_guru~combout\)) ) ) # ( \ref|state_reg.idle~q\ & ( (!\ref|LessThan0~5_combout\ & (((!\ref|mainCnt[5]~0_combout\ & (\ref|mainCnt[31]~DUPLICATE_q\ & 
-- \ref|Add2~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100111111000000000000000000111111001111110000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_LessThan0~5_combout\,
	datab => \ref|ALT_INV_tick_guru~combout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datae => \ref|ALT_INV_state_reg.idle~q\,
	dataf => \ref|ALT_INV_Add2~9_sumout\,
	datag => \ref|ALT_INV_tick_disc~combout\,
	combout => \ref|Selector47~0_combout\);

-- Location: MLABCELL_X82_Y6_N48
\ref|mainCnt[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|mainCnt[6]~4_combout\ = ( !\ref|Selector47~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ref|ALT_INV_Selector47~0_combout\,
	combout => \ref|mainCnt[6]~4_combout\);

-- Location: FF_X82_Y6_N50
\ref|mainCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|mainCnt[6]~4_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(6));

-- Location: LABCELL_X83_Y8_N21
\ref|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~53_sumout\ = SUM(( !\ref|mainCnt[7]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~10\ ))
-- \ref|Add2~54\ = CARRY(( !\ref|mainCnt[7]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt[7]~DUPLICATE_q\,
	cin => \ref|Add2~10\,
	sumout => \ref|Add2~53_sumout\,
	cout => \ref|Add2~54\);

-- Location: MLABCELL_X82_Y7_N18
\ref|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector46~0_combout\ = ( \ref|LessThan0~5_combout\ ) # ( !\ref|LessThan0~5_combout\ & ( ((!\ref|mainCnt[31]~DUPLICATE_q\) # (!\ref|Add2~53_sumout\)) # (\ref|mainCnt[5]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \ref|ALT_INV_Add2~53_sumout\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector46~0_combout\);

-- Location: FF_X82_Y7_N19
\ref|mainCnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector46~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[7]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N24
\ref|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~49_sumout\ = SUM(( !\ref|mainCnt[8]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~54\ ))
-- \ref|Add2~50\ = CARRY(( !\ref|mainCnt[8]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt[8]~DUPLICATE_q\,
	cin => \ref|Add2~54\,
	sumout => \ref|Add2~49_sumout\,
	cout => \ref|Add2~50\);

-- Location: MLABCELL_X82_Y7_N33
\ref|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector45~0_combout\ = ( \ref|mainCnt[31]~DUPLICATE_q\ & ( ((!\ref|Add2~49_sumout\) # (\ref|LessThan0~5_combout\)) # (\ref|mainCnt[5]~0_combout\) ) ) # ( !\ref|mainCnt[31]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_LessThan0~5_combout\,
	datad => \ref|ALT_INV_Add2~49_sumout\,
	dataf => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	combout => \ref|Selector45~0_combout\);

-- Location: FF_X82_Y7_N34
\ref|mainCnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector45~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[8]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N27
\ref|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~45_sumout\ = SUM(( !\ref|mainCnt[9]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~50\ ))
-- \ref|Add2~46\ = CARRY(( !\ref|mainCnt[9]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt[9]~DUPLICATE_q\,
	cin => \ref|Add2~50\,
	sumout => \ref|Add2~45_sumout\,
	cout => \ref|Add2~46\);

-- Location: FF_X83_Y7_N38
\ref|mainCnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector22~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(31));

-- Location: MLABCELL_X82_Y7_N9
\ref|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector44~0_combout\ = ( \ref|LessThan0~5_combout\ ) # ( !\ref|LessThan0~5_combout\ & ( ((!\ref|Add2~45_sumout\) # (!\ref|mainCnt\(31))) # (\ref|mainCnt[5]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_Add2~45_sumout\,
	datad => \ref|ALT_INV_mainCnt\(31),
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector44~0_combout\);

-- Location: FF_X82_Y7_N10
\ref|mainCnt[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector44~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[9]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N30
\ref|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~41_sumout\ = SUM(( !\ref|mainCnt\(10) ) + ( VCC ) + ( \ref|Add2~46\ ))
-- \ref|Add2~42\ = CARRY(( !\ref|mainCnt\(10) ) + ( VCC ) + ( \ref|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt\(10),
	cin => \ref|Add2~46\,
	sumout => \ref|Add2~41_sumout\,
	cout => \ref|Add2~42\);

-- Location: MLABCELL_X82_Y8_N3
\ref|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector43~0_combout\ = ( \ref|mainCnt[31]~DUPLICATE_q\ & ( \ref|Add2~41_sumout\ & ( (\ref|LessThan0~5_combout\) # (\ref|mainCnt[5]~0_combout\) ) ) ) # ( !\ref|mainCnt[31]~DUPLICATE_q\ & ( \ref|Add2~41_sumout\ ) ) # ( \ref|mainCnt[31]~DUPLICATE_q\ & 
-- ( !\ref|Add2~41_sumout\ ) ) # ( !\ref|mainCnt[31]~DUPLICATE_q\ & ( !\ref|Add2~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_LessThan0~5_combout\,
	datae => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	dataf => \ref|ALT_INV_Add2~41_sumout\,
	combout => \ref|Selector43~0_combout\);

-- Location: FF_X82_Y8_N4
\ref|mainCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector43~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(10));

-- Location: LABCELL_X83_Y8_N33
\ref|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~37_sumout\ = SUM(( !\ref|mainCnt\(11) ) + ( VCC ) + ( \ref|Add2~42\ ))
-- \ref|Add2~38\ = CARRY(( !\ref|mainCnt\(11) ) + ( VCC ) + ( \ref|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(11),
	cin => \ref|Add2~42\,
	sumout => \ref|Add2~37_sumout\,
	cout => \ref|Add2~38\);

-- Location: MLABCELL_X82_Y7_N3
\ref|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector42~0_combout\ = ( \ref|mainCnt\(31) & ( \ref|LessThan0~5_combout\ ) ) # ( !\ref|mainCnt\(31) & ( \ref|LessThan0~5_combout\ ) ) # ( \ref|mainCnt\(31) & ( !\ref|LessThan0~5_combout\ & ( (!\ref|Add2~37_sumout\) # (\ref|mainCnt[5]~0_combout\) ) ) 
-- ) # ( !\ref|mainCnt\(31) & ( !\ref|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_Add2~37_sumout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datae => \ref|ALT_INV_mainCnt\(31),
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector42~0_combout\);

-- Location: FF_X82_Y7_N4
\ref|mainCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector42~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(11));

-- Location: LABCELL_X83_Y8_N36
\ref|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~33_sumout\ = SUM(( !\ref|mainCnt[12]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~38\ ))
-- \ref|Add2~34\ = CARRY(( !\ref|mainCnt[12]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt[12]~DUPLICATE_q\,
	cin => \ref|Add2~38\,
	sumout => \ref|Add2~33_sumout\,
	cout => \ref|Add2~34\);

-- Location: MLABCELL_X82_Y7_N54
\ref|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector41~0_combout\ = ( \ref|LessThan0~5_combout\ ) # ( !\ref|LessThan0~5_combout\ & ( ((!\ref|mainCnt[31]~DUPLICATE_q\) # (!\ref|Add2~33_sumout\)) # (\ref|mainCnt[5]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \ref|ALT_INV_Add2~33_sumout\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector41~0_combout\);

-- Location: FF_X82_Y7_N56
\ref|mainCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector41~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(12));

-- Location: FF_X82_Y7_N20
\ref|mainCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector46~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(7));

-- Location: FF_X82_Y7_N11
\ref|mainCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector44~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(9));

-- Location: FF_X82_Y7_N35
\ref|mainCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector45~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(8));

-- Location: MLABCELL_X82_Y7_N36
\ref|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|LessThan0~1_combout\ = ( \ref|mainCnt\(10) & ( \ref|mainCnt\(8) & ( (\ref|mainCnt\(12) & (\ref|mainCnt\(11) & (\ref|mainCnt\(7) & \ref|mainCnt\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt\(12),
	datab => \ref|ALT_INV_mainCnt\(11),
	datac => \ref|ALT_INV_mainCnt\(7),
	datad => \ref|ALT_INV_mainCnt\(9),
	datae => \ref|ALT_INV_mainCnt\(10),
	dataf => \ref|ALT_INV_mainCnt\(8),
	combout => \ref|LessThan0~1_combout\);

-- Location: LABCELL_X83_Y8_N39
\ref|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~77_sumout\ = SUM(( !\ref|mainCnt[13]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~34\ ))
-- \ref|Add2~78\ = CARRY(( !\ref|mainCnt[13]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt[13]~DUPLICATE_q\,
	cin => \ref|Add2~34\,
	sumout => \ref|Add2~77_sumout\,
	cout => \ref|Add2~78\);

-- Location: MLABCELL_X82_Y7_N45
\ref|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector40~0_combout\ = ( \ref|LessThan0~5_combout\ ) # ( !\ref|LessThan0~5_combout\ & ( (!\ref|mainCnt[31]~DUPLICATE_q\) # ((!\ref|Add2~77_sumout\) # (\ref|mainCnt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \ref|ALT_INV_Add2~77_sumout\,
	datad => \ref|ALT_INV_mainCnt[5]~0_combout\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector40~0_combout\);

-- Location: FF_X82_Y7_N46
\ref|mainCnt[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector40~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[13]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N42
\ref|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~73_sumout\ = SUM(( !\ref|mainCnt\(14) ) + ( VCC ) + ( \ref|Add2~78\ ))
-- \ref|Add2~74\ = CARRY(( !\ref|mainCnt\(14) ) + ( VCC ) + ( \ref|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(14),
	cin => \ref|Add2~78\,
	sumout => \ref|Add2~73_sumout\,
	cout => \ref|Add2~74\);

-- Location: MLABCELL_X82_Y7_N27
\ref|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector39~0_combout\ = ( \ref|LessThan0~5_combout\ ) # ( !\ref|LessThan0~5_combout\ & ( (!\ref|Add2~73_sumout\) # ((!\ref|mainCnt\(31)) # (\ref|mainCnt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Add2~73_sumout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datad => \ref|ALT_INV_mainCnt\(31),
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector39~0_combout\);

-- Location: FF_X82_Y7_N29
\ref|mainCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector39~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(14));

-- Location: LABCELL_X83_Y8_N45
\ref|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~69_sumout\ = SUM(( !\ref|mainCnt\(15) ) + ( VCC ) + ( \ref|Add2~74\ ))
-- \ref|Add2~70\ = CARRY(( !\ref|mainCnt\(15) ) + ( VCC ) + ( \ref|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(15),
	cin => \ref|Add2~74\,
	sumout => \ref|Add2~69_sumout\,
	cout => \ref|Add2~70\);

-- Location: MLABCELL_X82_Y8_N30
\ref|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector38~0_combout\ = ( \ref|Add2~69_sumout\ & ( (!\ref|mainCnt[31]~DUPLICATE_q\) # ((\ref|mainCnt[5]~0_combout\) # (\ref|LessThan0~5_combout\)) ) ) # ( !\ref|Add2~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_mainCnt[5]~0_combout\,
	dataf => \ref|ALT_INV_Add2~69_sumout\,
	combout => \ref|Selector38~0_combout\);

-- Location: FF_X83_Y8_N56
\ref|mainCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ref|Selector38~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(15));

-- Location: LABCELL_X83_Y8_N48
\ref|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~65_sumout\ = SUM(( !\ref|mainCnt[16]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~70\ ))
-- \ref|Add2~66\ = CARRY(( !\ref|mainCnt[16]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt[16]~DUPLICATE_q\,
	cin => \ref|Add2~70\,
	sumout => \ref|Add2~65_sumout\,
	cout => \ref|Add2~66\);

-- Location: MLABCELL_X82_Y7_N21
\ref|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector37~0_combout\ = ( \ref|mainCnt[31]~DUPLICATE_q\ & ( ((!\ref|Add2~65_sumout\) # (\ref|LessThan0~5_combout\)) # (\ref|mainCnt[5]~0_combout\) ) ) # ( !\ref|mainCnt[31]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_LessThan0~5_combout\,
	datad => \ref|ALT_INV_Add2~65_sumout\,
	dataf => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	combout => \ref|Selector37~0_combout\);

-- Location: FF_X82_Y7_N22
\ref|mainCnt[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector37~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[16]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N51
\ref|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~61_sumout\ = SUM(( !\ref|mainCnt[17]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~66\ ))
-- \ref|Add2~62\ = CARRY(( !\ref|mainCnt[17]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt[17]~DUPLICATE_q\,
	cin => \ref|Add2~66\,
	sumout => \ref|Add2~61_sumout\,
	cout => \ref|Add2~62\);

-- Location: MLABCELL_X82_Y7_N57
\ref|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector36~0_combout\ = ( \ref|mainCnt[31]~DUPLICATE_q\ & ( (!\ref|Add2~61_sumout\) # ((\ref|LessThan0~5_combout\) # (\ref|mainCnt[5]~0_combout\)) ) ) # ( !\ref|mainCnt[31]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Add2~61_sumout\,
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_LessThan0~5_combout\,
	dataf => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	combout => \ref|Selector36~0_combout\);

-- Location: FF_X82_Y7_N59
\ref|mainCnt[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector36~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[17]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N54
\ref|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~57_sumout\ = SUM(( !\ref|mainCnt\(18) ) + ( VCC ) + ( \ref|Add2~62\ ))
-- \ref|Add2~58\ = CARRY(( !\ref|mainCnt\(18) ) + ( VCC ) + ( \ref|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(18),
	cin => \ref|Add2~62\,
	sumout => \ref|Add2~57_sumout\,
	cout => \ref|Add2~58\);

-- Location: MLABCELL_X82_Y7_N6
\ref|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector35~0_combout\ = ( \ref|LessThan0~5_combout\ ) # ( !\ref|LessThan0~5_combout\ & ( ((!\ref|mainCnt[31]~DUPLICATE_q\) # (!\ref|Add2~57_sumout\)) # (\ref|mainCnt[5]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datad => \ref|ALT_INV_Add2~57_sumout\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector35~0_combout\);

-- Location: FF_X82_Y7_N8
\ref|mainCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector35~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(18));

-- Location: FF_X82_Y7_N58
\ref|mainCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector36~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(17));

-- Location: FF_X82_Y7_N47
\ref|mainCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector40~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(13));

-- Location: FF_X82_Y7_N23
\ref|mainCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector37~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(16));

-- Location: MLABCELL_X82_Y7_N48
\ref|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|LessThan0~2_combout\ = ( \ref|mainCnt\(16) & ( \ref|mainCnt\(15) & ( (\ref|mainCnt\(14) & (\ref|mainCnt\(18) & (\ref|mainCnt\(17) & \ref|mainCnt\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt\(14),
	datab => \ref|ALT_INV_mainCnt\(18),
	datac => \ref|ALT_INV_mainCnt\(17),
	datad => \ref|ALT_INV_mainCnt\(13),
	datae => \ref|ALT_INV_mainCnt\(16),
	dataf => \ref|ALT_INV_mainCnt\(15),
	combout => \ref|LessThan0~2_combout\);

-- Location: FF_X82_Y8_N14
\ref|mainCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector49~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(4));

-- Location: MLABCELL_X82_Y8_N48
\ref|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|LessThan0~0_combout\ = ( \ref|mainCnt\(2) & ( \ref|mainCnt\(5) & ( (\ref|mainCnt\(3) & (\ref|mainCnt\(4) & (\ref|mainCnt\(1) & \ref|mainCnt\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt\(3),
	datab => \ref|ALT_INV_mainCnt\(4),
	datac => \ref|ALT_INV_mainCnt\(1),
	datad => \ref|ALT_INV_mainCnt\(6),
	datae => \ref|ALT_INV_mainCnt\(2),
	dataf => \ref|ALT_INV_mainCnt\(5),
	combout => \ref|LessThan0~0_combout\);

-- Location: LABCELL_X83_Y8_N57
\ref|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~125_sumout\ = SUM(( !\ref|mainCnt\(19) ) + ( VCC ) + ( \ref|Add2~58\ ))
-- \ref|Add2~126\ = CARRY(( !\ref|mainCnt\(19) ) + ( VCC ) + ( \ref|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt\(19),
	cin => \ref|Add2~58\,
	sumout => \ref|Add2~125_sumout\,
	cout => \ref|Add2~126\);

-- Location: MLABCELL_X84_Y7_N0
\ref|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector34~0_combout\ = ( \ref|Add2~125_sumout\ & ( \ref|mainCnt[31]~DUPLICATE_q\ & ( (\ref|LessThan0~5_combout\) # (\ref|mainCnt[5]~0_combout\) ) ) ) # ( !\ref|Add2~125_sumout\ & ( \ref|mainCnt[31]~DUPLICATE_q\ ) ) # ( \ref|Add2~125_sumout\ & ( 
-- !\ref|mainCnt[31]~DUPLICATE_q\ ) ) # ( !\ref|Add2~125_sumout\ & ( !\ref|mainCnt[31]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_LessThan0~5_combout\,
	datae => \ref|ALT_INV_Add2~125_sumout\,
	dataf => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	combout => \ref|Selector34~0_combout\);

-- Location: FF_X84_Y7_N2
\ref|mainCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector34~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(19));

-- Location: LABCELL_X83_Y7_N0
\ref|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~121_sumout\ = SUM(( !\ref|mainCnt\(20) ) + ( VCC ) + ( \ref|Add2~126\ ))
-- \ref|Add2~122\ = CARRY(( !\ref|mainCnt\(20) ) + ( VCC ) + ( \ref|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(20),
	cin => \ref|Add2~126\,
	sumout => \ref|Add2~121_sumout\,
	cout => \ref|Add2~122\);

-- Location: MLABCELL_X84_Y7_N30
\ref|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector33~0_combout\ = ( \ref|Add2~121_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~121_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~121_sumout\,
	combout => \ref|Selector33~0_combout\);

-- Location: FF_X84_Y7_N32
\ref|mainCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector33~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(20));

-- Location: LABCELL_X83_Y7_N3
\ref|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~117_sumout\ = SUM(( !\ref|mainCnt\(21) ) + ( VCC ) + ( \ref|Add2~122\ ))
-- \ref|Add2~118\ = CARRY(( !\ref|mainCnt\(21) ) + ( VCC ) + ( \ref|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(21),
	cin => \ref|Add2~122\,
	sumout => \ref|Add2~117_sumout\,
	cout => \ref|Add2~118\);

-- Location: MLABCELL_X82_Y7_N24
\ref|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector32~0_combout\ = ( \ref|Selector22~0_combout\ & ( !\ref|Add2~117_sumout\ ) ) # ( !\ref|Selector22~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add2~117_sumout\,
	dataf => \ref|ALT_INV_Selector22~0_combout\,
	combout => \ref|Selector32~0_combout\);

-- Location: FF_X82_Y7_N25
\ref|mainCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector32~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(21));

-- Location: LABCELL_X83_Y7_N6
\ref|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~113_sumout\ = SUM(( !\ref|mainCnt\(22) ) + ( VCC ) + ( \ref|Add2~118\ ))
-- \ref|Add2~114\ = CARRY(( !\ref|mainCnt\(22) ) + ( VCC ) + ( \ref|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(22),
	cin => \ref|Add2~118\,
	sumout => \ref|Add2~113_sumout\,
	cout => \ref|Add2~114\);

-- Location: MLABCELL_X84_Y7_N6
\ref|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector31~0_combout\ = ( \ref|Selector22~0_combout\ & ( !\ref|Add2~113_sumout\ ) ) # ( !\ref|Selector22~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add2~113_sumout\,
	dataf => \ref|ALT_INV_Selector22~0_combout\,
	combout => \ref|Selector31~0_combout\);

-- Location: FF_X84_Y7_N8
\ref|mainCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector31~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(22));

-- Location: LABCELL_X83_Y7_N9
\ref|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~109_sumout\ = SUM(( !\ref|mainCnt\(23) ) + ( VCC ) + ( \ref|Add2~114\ ))
-- \ref|Add2~110\ = CARRY(( !\ref|mainCnt\(23) ) + ( VCC ) + ( \ref|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(23),
	cin => \ref|Add2~114\,
	sumout => \ref|Add2~109_sumout\,
	cout => \ref|Add2~110\);

-- Location: MLABCELL_X84_Y7_N39
\ref|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector30~0_combout\ = ( \ref|Add2~109_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~109_sumout\,
	combout => \ref|Selector30~0_combout\);

-- Location: FF_X84_Y7_N40
\ref|mainCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector30~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(23));

-- Location: LABCELL_X83_Y7_N12
\ref|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~105_sumout\ = SUM(( !\ref|mainCnt\(24) ) + ( VCC ) + ( \ref|Add2~110\ ))
-- \ref|Add2~106\ = CARRY(( !\ref|mainCnt\(24) ) + ( VCC ) + ( \ref|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(24),
	cin => \ref|Add2~110\,
	sumout => \ref|Add2~105_sumout\,
	cout => \ref|Add2~106\);

-- Location: MLABCELL_X84_Y7_N9
\ref|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector29~0_combout\ = ( \ref|Selector22~0_combout\ & ( !\ref|Add2~105_sumout\ ) ) # ( !\ref|Selector22~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_Add2~105_sumout\,
	dataf => \ref|ALT_INV_Selector22~0_combout\,
	combout => \ref|Selector29~0_combout\);

-- Location: FF_X84_Y7_N11
\ref|mainCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector29~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(24));

-- Location: LABCELL_X83_Y7_N15
\ref|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~101_sumout\ = SUM(( !\ref|mainCnt\(25) ) + ( VCC ) + ( \ref|Add2~106\ ))
-- \ref|Add2~102\ = CARRY(( !\ref|mainCnt\(25) ) + ( VCC ) + ( \ref|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(25),
	cin => \ref|Add2~106\,
	sumout => \ref|Add2~101_sumout\,
	cout => \ref|Add2~102\);

-- Location: LABCELL_X83_Y7_N51
\ref|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector28~0_combout\ = ( \ref|Add2~101_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~101_sumout\,
	combout => \ref|Selector28~0_combout\);

-- Location: FF_X83_Y7_N52
\ref|mainCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector28~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(25));

-- Location: LABCELL_X83_Y7_N18
\ref|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~97_sumout\ = SUM(( !\ref|mainCnt\(26) ) + ( VCC ) + ( \ref|Add2~102\ ))
-- \ref|Add2~98\ = CARRY(( !\ref|mainCnt\(26) ) + ( VCC ) + ( \ref|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(26),
	cin => \ref|Add2~102\,
	sumout => \ref|Add2~97_sumout\,
	cout => \ref|Add2~98\);

-- Location: LABCELL_X83_Y7_N42
\ref|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector27~0_combout\ = ( \ref|Add2~97_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~97_sumout\,
	combout => \ref|Selector27~0_combout\);

-- Location: FF_X83_Y7_N43
\ref|mainCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector27~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(26));

-- Location: LABCELL_X83_Y7_N21
\ref|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~93_sumout\ = SUM(( !\ref|mainCnt\(27) ) + ( VCC ) + ( \ref|Add2~98\ ))
-- \ref|Add2~94\ = CARRY(( !\ref|mainCnt\(27) ) + ( VCC ) + ( \ref|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(27),
	cin => \ref|Add2~98\,
	sumout => \ref|Add2~93_sumout\,
	cout => \ref|Add2~94\);

-- Location: LABCELL_X83_Y7_N39
\ref|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector26~0_combout\ = ( \ref|Add2~93_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~93_sumout\,
	combout => \ref|Selector26~0_combout\);

-- Location: FF_X83_Y7_N41
\ref|mainCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector26~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(27));

-- Location: LABCELL_X83_Y7_N24
\ref|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~89_sumout\ = SUM(( !\ref|mainCnt\(28) ) + ( VCC ) + ( \ref|Add2~94\ ))
-- \ref|Add2~90\ = CARRY(( !\ref|mainCnt\(28) ) + ( VCC ) + ( \ref|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(28),
	cin => \ref|Add2~94\,
	sumout => \ref|Add2~89_sumout\,
	cout => \ref|Add2~90\);

-- Location: LABCELL_X83_Y7_N48
\ref|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector25~0_combout\ = ( \ref|Add2~89_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~89_sumout\,
	combout => \ref|Selector25~0_combout\);

-- Location: FF_X83_Y7_N50
\ref|mainCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector25~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(28));

-- Location: LABCELL_X83_Y7_N27
\ref|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~85_sumout\ = SUM(( !\ref|mainCnt\(29) ) + ( VCC ) + ( \ref|Add2~90\ ))
-- \ref|Add2~86\ = CARRY(( !\ref|mainCnt\(29) ) + ( VCC ) + ( \ref|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt\(29),
	cin => \ref|Add2~90\,
	sumout => \ref|Add2~85_sumout\,
	cout => \ref|Add2~86\);

-- Location: MLABCELL_X84_Y7_N51
\ref|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector24~0_combout\ = ( !\ref|Add2~85_sumout\ & ( \ref|Selector22~0_combout\ ) ) # ( \ref|Add2~85_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~85_sumout\ & ( !\ref|Selector22~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ref|ALT_INV_Add2~85_sumout\,
	dataf => \ref|ALT_INV_Selector22~0_combout\,
	combout => \ref|Selector24~0_combout\);

-- Location: FF_X84_Y7_N53
\ref|mainCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector24~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(29));

-- Location: LABCELL_X83_Y7_N30
\ref|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~81_sumout\ = SUM(( !\ref|mainCnt\(30) ) + ( VCC ) + ( \ref|Add2~86\ ))
-- \ref|Add2~82\ = CARRY(( !\ref|mainCnt\(30) ) + ( VCC ) + ( \ref|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ref|ALT_INV_mainCnt\(30),
	cin => \ref|Add2~86\,
	sumout => \ref|Add2~81_sumout\,
	cout => \ref|Add2~82\);

-- Location: LABCELL_X83_Y7_N45
\ref|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector23~0_combout\ = ( \ref|Add2~81_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~81_sumout\,
	combout => \ref|Selector23~0_combout\);

-- Location: FF_X83_Y7_N47
\ref|mainCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector23~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt\(30));

-- Location: LABCELL_X83_Y7_N54
\ref|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|LessThan0~3_combout\ = ( \ref|mainCnt\(25) & ( \ref|mainCnt\(27) & ( (\ref|mainCnt\(29) & (\ref|mainCnt\(26) & (\ref|mainCnt\(28) & \ref|mainCnt\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt\(29),
	datab => \ref|ALT_INV_mainCnt\(26),
	datac => \ref|ALT_INV_mainCnt\(28),
	datad => \ref|ALT_INV_mainCnt\(30),
	datae => \ref|ALT_INV_mainCnt\(25),
	dataf => \ref|ALT_INV_mainCnt\(27),
	combout => \ref|LessThan0~3_combout\);

-- Location: MLABCELL_X84_Y7_N18
\ref|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|LessThan0~4_combout\ = ( \ref|mainCnt\(23) & ( \ref|mainCnt\(24) & ( (\ref|mainCnt\(19) & (\ref|mainCnt\(20) & (\ref|mainCnt\(21) & \ref|mainCnt\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt\(19),
	datab => \ref|ALT_INV_mainCnt\(20),
	datac => \ref|ALT_INV_mainCnt\(21),
	datad => \ref|ALT_INV_mainCnt\(22),
	datae => \ref|ALT_INV_mainCnt\(23),
	dataf => \ref|ALT_INV_mainCnt\(24),
	combout => \ref|LessThan0~4_combout\);

-- Location: MLABCELL_X82_Y7_N12
\ref|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|LessThan0~5_combout\ = ( \ref|mainCnt\(0) & ( \ref|LessThan0~4_combout\ & ( (\ref|LessThan0~1_combout\ & (\ref|LessThan0~2_combout\ & (\ref|LessThan0~0_combout\ & \ref|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_LessThan0~1_combout\,
	datab => \ref|ALT_INV_LessThan0~2_combout\,
	datac => \ref|ALT_INV_LessThan0~0_combout\,
	datad => \ref|ALT_INV_LessThan0~3_combout\,
	datae => \ref|ALT_INV_mainCnt\(0),
	dataf => \ref|ALT_INV_LessThan0~4_combout\,
	combout => \ref|LessThan0~5_combout\);

-- Location: LABCELL_X81_Y6_N15
\ref|state_next.checkTop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|state_next.checkTop~0_combout\ = ( \ref|LessThan0~5_combout\ & ( (!\ref|tick_guru~combout\ & \ref|state_reg.wait50~q\) ) ) # ( !\ref|LessThan0~5_combout\ & ( (!\ref|mainCnt[31]~DUPLICATE_q\ & (!\ref|tick_guru~combout\ & \ref|state_reg.wait50~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_state_reg.wait50~q\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|state_next.checkTop~0_combout\);

-- Location: FF_X81_Y6_N17
\ref|state_reg.checkTop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|state_next.checkTop~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.checkTop~q\);

-- Location: MLABCELL_X82_Y5_N36
\ref|state_next.detect1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|state_next.detect1~0_combout\ = ( \ref|state_reg.checkTop~q\ & ( !\ref|Equal2~1_combout\ & ( (\ref|Equal2~4_combout\ & (!\ref|Equal2~3_combout\ & (!\ref|Equal2~2_combout\ & \ref|Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal2~4_combout\,
	datab => \ref|ALT_INV_Equal2~3_combout\,
	datac => \ref|ALT_INV_Equal2~2_combout\,
	datad => \ref|ALT_INV_Equal2~5_combout\,
	datae => \ref|ALT_INV_state_reg.checkTop~q\,
	dataf => \ref|ALT_INV_Equal2~1_combout\,
	combout => \ref|state_next.detect1~0_combout\);

-- Location: FF_X82_Y5_N38
\ref|state_reg.detect1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|state_next.detect1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.detect1~q\);

-- Location: MLABCELL_X82_Y5_N24
\hold2|state_next~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold2|state_next~1_combout\ = ( \hold2|state_reg~q\ ) # ( !\hold2|state_reg~q\ & ( (!\basis|control|main|STATE.STEP_ACTIVATION~q\) # ((!\ref|state_reg.detect1~q\ & !\ref|state_reg.detect~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \ref|ALT_INV_state_reg.detect1~q\,
	datad => \ref|ALT_INV_state_reg.detect~q\,
	dataf => \hold2|ALT_INV_state_reg~q\,
	combout => \hold2|state_next~1_combout\);

-- Location: MLABCELL_X82_Y5_N15
\hold2|state_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold2|state_next~0_combout\ = ( \ref|state_reg.detect~q\ & ( \hold2|state_reg~q\ & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( !\ref|state_reg.detect~q\ & ( \hold2|state_reg~q\ & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( 
-- \ref|state_reg.detect~q\ & ( !\hold2|state_reg~q\ ) ) # ( !\ref|state_reg.detect~q\ & ( !\hold2|state_reg~q\ & ( \ref|state_reg.detect1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datad => \ref|ALT_INV_state_reg.detect1~q\,
	datae => \ref|ALT_INV_state_reg.detect~q\,
	dataf => \hold2|ALT_INV_state_reg~q\,
	combout => \hold2|state_next~0_combout\);

-- Location: MLABCELL_X82_Y5_N57
\hold2|state_next\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold2|state_next~combout\ = ( \hold2|state_next~0_combout\ & ( (\hold2|state_next~combout\) # (\hold2|state_next~1_combout\) ) ) # ( !\hold2|state_next~0_combout\ & ( (!\hold2|state_next~1_combout\ & \hold2|state_next~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \hold2|ALT_INV_state_next~1_combout\,
	datad => \hold2|ALT_INV_state_next~combout\,
	dataf => \hold2|ALT_INV_state_next~0_combout\,
	combout => \hold2|state_next~combout\);

-- Location: FF_X82_Y5_N35
\hold2|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \hold2|state_next~combout\,
	clrn => \ALT_INV_res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold2|state_reg~q\);

-- Location: MLABCELL_X82_Y6_N54
\ref|Equal2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal2~10_combout\ = ( \basis|data|rb|reg_GURU|q_s\(4) & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (\disc_2_ref.disc_prev_addr[4]~input_o\ & (!\disc_2_ref.disc_prev_addr[5]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(5)))) ) ) ) # ( 
-- !\basis|data|rb|reg_GURU|q_s\(4) & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\disc_2_ref.disc_prev_addr[4]~input_o\ & (!\disc_2_ref.disc_prev_addr[5]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(5)))) ) ) ) # ( \basis|data|rb|reg_GURU|q_s\(4) & ( 
-- !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\hold2|state_reg~q\ & (\disc_2_ref.disc_prev_addr[4]~input_o\ & (!\disc_2_ref.disc_prev_addr[5]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(5))))) # (\hold2|state_reg~q\ & 
-- (((\basis|data|rb|reg_GURU|q_s\(5))))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(4) & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\hold2|state_reg~q\ & (!\disc_2_ref.disc_prev_addr[4]~input_o\ & (!\disc_2_ref.disc_prev_addr[5]~input_o\ $ 
-- (\basis|data|rb|reg_GURU|q_s\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000001011000011111000011000000000000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hold2|ALT_INV_state_reg~q\,
	datab => \ALT_INV_disc_2_ref.disc_prev_addr[5]~input_o\,
	datac => \basis|data|rb|reg_GURU|ALT_INV_q_s\(5),
	datad => \ALT_INV_disc_2_ref.disc_prev_addr[4]~input_o\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(4),
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \ref|Equal2~10_combout\);

-- Location: MLABCELL_X82_Y4_N51
\ref|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal4~1_combout\ = ( \disc_2_ref.disc_addr[1]~input_o\ & ( \basis|data|rb|reg_GURU|q_s\(0) & ( (\basis|data|rb|reg_GURU|q_s\(1) & (\disc_2_ref.disc_addr[0]~input_o\ & (!\disc_2_ref.disc_addr[2]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(2))))) ) ) ) # 
-- ( !\disc_2_ref.disc_addr[1]~input_o\ & ( \basis|data|rb|reg_GURU|q_s\(0) & ( (!\basis|data|rb|reg_GURU|q_s\(1) & (\disc_2_ref.disc_addr[0]~input_o\ & (!\disc_2_ref.disc_addr[2]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(2))))) ) ) ) # ( 
-- \disc_2_ref.disc_addr[1]~input_o\ & ( !\basis|data|rb|reg_GURU|q_s\(0) & ( (\basis|data|rb|reg_GURU|q_s\(1) & (!\disc_2_ref.disc_addr[0]~input_o\ & (!\disc_2_ref.disc_addr[2]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(2))))) ) ) ) # ( 
-- !\disc_2_ref.disc_addr[1]~input_o\ & ( !\basis|data|rb|reg_GURU|q_s\(0) & ( (!\basis|data|rb|reg_GURU|q_s\(1) & (!\disc_2_ref.disc_addr[0]~input_o\ & (!\disc_2_ref.disc_addr[2]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_disc_2_ref.disc_addr[2]~input_o\,
	datab => \basis|data|rb|reg_GURU|ALT_INV_q_s\(1),
	datac => \ALT_INV_disc_2_ref.disc_addr[0]~input_o\,
	datad => \basis|data|rb|reg_GURU|ALT_INV_q_s\(2),
	datae => \ALT_INV_disc_2_ref.disc_addr[1]~input_o\,
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(0),
	combout => \ref|Equal4~1_combout\);

-- Location: LABCELL_X81_Y6_N24
\ref|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector15~0_combout\ = ( \basis|data|rb|reg_GURU|q_s\(5) & ( \ref|Equal4~1_combout\ & ( (\disc_2_ref.disc_addr[5]~input_o\ & (\ref|state_reg.checkTop~q\ & (\ref|Equal4~2_combout\ & \ref|Equal4~0_combout\))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(5) 
-- & ( \ref|Equal4~1_combout\ & ( (!\disc_2_ref.disc_addr[5]~input_o\ & (\ref|state_reg.checkTop~q\ & (\ref|Equal4~2_combout\ & \ref|Equal4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_disc_2_ref.disc_addr[5]~input_o\,
	datab => \ref|ALT_INV_state_reg.checkTop~q\,
	datac => \ref|ALT_INV_Equal4~2_combout\,
	datad => \ref|ALT_INV_Equal4~0_combout\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(5),
	dataf => \ref|ALT_INV_Equal4~1_combout\,
	combout => \ref|Selector15~0_combout\);

-- Location: LABCELL_X80_Y6_N48
\ref|state_reg.conflict1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|state_reg.conflict1~0_combout\ = ( \ref|state_reg.conflict1~q\ & ( \ref|Equal2~11_combout\ ) ) # ( !\ref|state_reg.conflict1~q\ & ( \ref|Equal2~11_combout\ & ( (\ref|Selector15~0_combout\ & ((!\ref|Equal2~10_combout\) # ((!\ref|Equal2~9_combout\) # 
-- (!\ref|Equal2~12_combout\)))) ) ) ) # ( \ref|state_reg.conflict1~q\ & ( !\ref|Equal2~11_combout\ ) ) # ( !\ref|state_reg.conflict1~q\ & ( !\ref|Equal2~11_combout\ & ( \ref|Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal2~10_combout\,
	datab => \ref|ALT_INV_Equal2~9_combout\,
	datac => \ref|ALT_INV_Selector15~0_combout\,
	datad => \ref|ALT_INV_Equal2~12_combout\,
	datae => \ref|ALT_INV_state_reg.conflict1~q\,
	dataf => \ref|ALT_INV_Equal2~11_combout\,
	combout => \ref|state_reg.conflict1~0_combout\);

-- Location: FF_X80_Y6_N50
\ref|state_reg.conflict1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|state_reg.conflict1~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.conflict1~q\);

-- Location: LABCELL_X81_Y6_N48
\hold|state_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold|state_next~0_combout\ = ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( \ref|state_reg.conflict1~q\ & ( !\hold|state_reg~q\ ) ) ) # ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( \ref|state_reg.conflict1~q\ ) ) # ( 
-- \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( !\ref|state_reg.conflict1~q\ & ( (\ref|state_reg.conflict~q\ & !\hold|state_reg~q\) ) ) ) # ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( !\ref|state_reg.conflict1~q\ & ( (\hold|state_reg~q\) # 
-- (\ref|state_reg.conflict~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011110000000011111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_state_reg.conflict~q\,
	datad => \hold|ALT_INV_state_reg~q\,
	datae => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	dataf => \ref|ALT_INV_state_reg.conflict1~q\,
	combout => \hold|state_next~0_combout\);

-- Location: LABCELL_X81_Y6_N33
\hold|state_next~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold|state_next~1_combout\ = ( \ref|state_reg.conflict~q\ & ( (!\basis|control|main|STATE.STEP_ACTIVATION~q\) # (\hold|state_reg~q\) ) ) # ( !\ref|state_reg.conflict~q\ & ( ((!\ref|state_reg.conflict1~q\) # 
-- (!\basis|control|main|STATE.STEP_ACTIVATION~q\)) # (\hold|state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \hold|ALT_INV_state_reg~q\,
	datac => \ref|ALT_INV_state_reg.conflict1~q\,
	datad => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	dataf => \ref|ALT_INV_state_reg.conflict~q\,
	combout => \hold|state_next~1_combout\);

-- Location: LABCELL_X81_Y6_N9
\hold|state_next\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold|state_next~combout\ = ( \hold|state_next~combout\ & ( \hold|state_next~1_combout\ & ( \hold|state_next~0_combout\ ) ) ) # ( !\hold|state_next~combout\ & ( \hold|state_next~1_combout\ & ( \hold|state_next~0_combout\ ) ) ) # ( 
-- \hold|state_next~combout\ & ( !\hold|state_next~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \hold|ALT_INV_state_next~0_combout\,
	datae => \hold|ALT_INV_state_next~combout\,
	dataf => \hold|ALT_INV_state_next~1_combout\,
	combout => \hold|state_next~combout\);

-- Location: FF_X81_Y6_N11
\hold|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hold|state_next~combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold|state_reg~q\);

-- Location: MLABCELL_X87_Y6_N39
\hold|holdedOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold|holdedOut~combout\ = ( \ref|state_reg.conflict~q\ & ( \ref|state_reg.conflict1~q\ ) ) # ( !\ref|state_reg.conflict~q\ & ( \ref|state_reg.conflict1~q\ ) ) # ( \ref|state_reg.conflict~q\ & ( !\ref|state_reg.conflict1~q\ ) ) # ( 
-- !\ref|state_reg.conflict~q\ & ( !\ref|state_reg.conflict1~q\ & ( (!\basis|control|main|STATE.STEP_ACTIVATION~q\ & \hold|state_reg~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \hold|ALT_INV_state_reg~q\,
	datae => \ref|ALT_INV_state_reg.conflict~q\,
	dataf => \ref|ALT_INV_state_reg.conflict1~q\,
	combout => \hold|holdedOut~combout\);

-- Location: LABCELL_X81_Y6_N12
\ref|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector20~0_combout\ = ( \ref|mainCnt[31]~DUPLICATE_q\ & ( ((!\ref|LessThan0~5_combout\ & \ref|state_reg.wait50l~q\)) # (\ref|state_reg.unm_godisc_BL~q\) ) ) # ( !\ref|mainCnt[31]~DUPLICATE_q\ & ( \ref|state_reg.unm_godisc_BL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	datad => \ref|ALT_INV_state_reg.wait50l~q\,
	dataf => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	combout => \ref|Selector20~0_combout\);

-- Location: FF_X81_Y6_N13
\ref|state_reg.wait50l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector20~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.wait50l~q\);

-- Location: LABCELL_X81_Y6_N57
\ref|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector21~0_combout\ = ( \ref|state_reg.wait50l~q\ & ( (!\ref|mainCnt[31]~DUPLICATE_q\) # (\ref|LessThan0~5_combout\) ) ) # ( !\ref|state_reg.wait50l~q\ & ( (\ref|state_reg.wait55~q\ & ((!\ref|mainCnt[31]~DUPLICATE_q\) # 
-- (\ref|LessThan0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datac => \ref|ALT_INV_LessThan0~5_combout\,
	datad => \ref|ALT_INV_state_reg.wait55~q\,
	dataf => \ref|ALT_INV_state_reg.wait50l~q\,
	combout => \ref|Selector21~0_combout\);

-- Location: FF_X81_Y6_N58
\ref|state_reg.unm_go_guru\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector21~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.unm_go_guru~q\);

-- Location: LABCELL_X81_Y6_N36
\basis|control|guru|STATE~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~20_combout\ = ( \ref|state_reg.unm_go_guru~q\ & ( \basis|control|guru|STATE.INCR~q\ ) ) # ( !\ref|state_reg.unm_go_guru~q\ & ( ((!\ref|state_reg.go_guru_state~q\ & \basis|control|guru|STATE.CHECK_LAST~q\)) # 
-- (\basis|control|guru|STATE.INCR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|guru|ALT_INV_STATE.INCR~q\,
	datac => \ref|ALT_INV_state_reg.go_guru_state~q\,
	datad => \basis|control|guru|ALT_INV_STATE.CHECK_LAST~q\,
	dataf => \ref|ALT_INV_state_reg.unm_go_guru~q\,
	combout => \basis|control|guru|STATE~20_combout\);

-- Location: FF_X81_Y6_N38
\basis|control|guru|STATE.CHECK_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~20_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.CHECK_LAST~q\);

-- Location: LABCELL_X79_Y4_N45
\basis|control|guru|STATE~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~21_combout\ = ( !\ref|go_guru~combout\ & ( (!\res~input_o\ & (\basis|control|guru|STATE.CHECK_LAST~q\ & !\basis|data|rb|rb_out[3]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \basis|control|guru|ALT_INV_STATE.CHECK_LAST~q\,
	datad => \basis|data|rb|ALT_INV_rb_out[3]~5_combout\,
	dataf => \ref|ALT_INV_go_guru~combout\,
	combout => \basis|control|guru|STATE~21_combout\);

-- Location: FF_X79_Y4_N47
\basis|control|guru|STATE.CHECK_SAME_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.CHECK_SAME_ADDR~q\);

-- Location: LABCELL_X79_Y4_N42
\basis|control|guru|STATE~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~15_combout\ = (!\res~input_o\ & (\hold|holdedOut~combout\ & \basis|control|guru|STATE.CHECK_SAME_ADDR~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \hold|ALT_INV_holdedOut~combout\,
	datad => \basis|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \basis|control|guru|STATE~15_combout\);

-- Location: FF_X79_Y4_N44
\basis|control|guru|STATE.WRITE_DUO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.WRITE_DUO~q\);

-- Location: LABCELL_X80_Y5_N18
\basis|control|guru|STATE~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~16_combout\ = (!\hold|holdedOut~combout\ & (!\res~input_o\ & \basis|control|guru|STATE.CHECK_SAME_ADDR~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \hold|ALT_INV_holdedOut~combout\,
	datac => \ALT_INV_res~input_o\,
	datad => \basis|control|guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \basis|control|guru|STATE~16_combout\);

-- Location: FF_X80_Y5_N20
\basis|control|guru|STATE.WRITE_GURU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.WRITE_GURU~q\);

-- Location: LABCELL_X80_Y4_N6
\basis|control|guru|NEXT_STATE.CLEAR_PREV~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ = ( \basis|control|guru|STATE.WRITE_GURU~q\ ) # ( !\basis|control|guru|STATE.WRITE_GURU~q\ & ( \basis|control|guru|STATE.WRITE_DUO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \basis|control|guru|ALT_INV_STATE.WRITE_GURU~q\,
	combout => \basis|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\);

-- Location: LABCELL_X80_Y4_N3
\basis|control|guru|STATE.CLEAR_PREV~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE.CLEAR_PREV~feeder_combout\ = ( \basis|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \basis|control|guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\,
	combout => \basis|control|guru|STATE.CLEAR_PREV~feeder_combout\);

-- Location: FF_X80_Y4_N5
\basis|control|guru|STATE.CLEAR_PREV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE.CLEAR_PREV~feeder_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.CLEAR_PREV~q\);

-- Location: LABCELL_X80_Y4_N18
\basis|data|rb|reg_INIT|q_s[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|reg_INIT|q_s[3]~feeder_combout\ = ( \basis|data|n_g|ng_2_RB[3]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \basis|data|n_g|ALT_INV_ng_2_RB[3]~0_combout\,
	combout => \basis|data|rb|reg_INIT|q_s[3]~feeder_combout\);

-- Location: FF_X80_Y4_N20
\basis|data|rb|reg_INIT|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|rb|reg_INIT|q_s[3]~feeder_combout\,
	sclr => \res~input_o\,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(3));

-- Location: LABCELL_X81_Y4_N36
\basis|data|rb|rb_out[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[3]~5_combout\ = ( \basis|data|rb|reg_PRE_GURU|q_s\(3) & ( \basis|data|rb|reg_INIT|q_s\(3) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\) # (((\basis|data|rb|reg_GURU|q_s\(3)) # (\basis|control|guru|STATE.CLEAR_PREV~q\)) # 
-- (\basis|control|guru|STATE.LAST~q\)) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(3) & ( \basis|data|rb|reg_INIT|q_s\(3) & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\) # ((!\basis|control|guru|STATE.LAST~q\ & (!\basis|control|guru|STATE.CLEAR_PREV~q\ 
-- & \basis|data|rb|reg_GURU|q_s\(3)))) ) ) ) # ( \basis|data|rb|reg_PRE_GURU|q_s\(3) & ( !\basis|data|rb|reg_INIT|q_s\(3) & ( (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_GURU|q_s\(3)) # (\basis|control|guru|STATE.CLEAR_PREV~q\)) # 
-- (\basis|control|guru|STATE.LAST~q\))) ) ) ) # ( !\basis|data|rb|reg_PRE_GURU|q_s\(3) & ( !\basis|data|rb|reg_INIT|q_s\(3) & ( (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (!\basis|control|guru|STATE.LAST~q\ & (!\basis|control|guru|STATE.CLEAR_PREV~q\ & 
-- \basis|data|rb|reg_GURU|q_s\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000101010101010110101010111010101011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datab => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datac => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datad => \basis|data|rb|reg_GURU|ALT_INV_q_s\(3),
	datae => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	dataf => \basis|data|rb|reg_INIT|ALT_INV_q_s\(3),
	combout => \basis|data|rb|rb_out[3]~5_combout\);

-- Location: LABCELL_X81_Y4_N12
\basis|data|alu_1|add|adder_4|aux_and_3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|alu_1|add|adder_4|aux_and_3~combout\ = ( \basis|data|rb|rb_out[1]~3_combout\ & ( (\basis|data|rb|rb_out[3]~5_combout\ & (\basis|data|rb|rb_out[0]~2_combout\ & \basis|data|rb|rb_out[2]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|ALT_INV_rb_out[3]~5_combout\,
	datac => \basis|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datad => \basis|data|rb|ALT_INV_rb_out[2]~4_combout\,
	dataf => \basis|data|rb|ALT_INV_rb_out[1]~3_combout\,
	combout => \basis|data|alu_1|add|adder_4|aux_and_3~combout\);

-- Location: LABCELL_X81_Y4_N3
\basis|data|n_g|ng_2_RB[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[4]~1_combout\ = ( \basis|data|rb|rb_out[4]~6_combout\ & ( (\basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & ((!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\) # (!\basis|data|alu_1|add|adder_4|aux_and_3~combout\))) ) ) # ( 
-- !\basis|data|rb|rb_out[4]~6_combout\ & ( (\basis|control|ctrl_2_dp.alu_ctrl~0_combout\ & (\basis|data|alu_1|add|adder_4|aux_and_3~combout\ & \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datab => \basis|data|alu_1|add|adder_4|ALT_INV_aux_and_3~combout\,
	datac => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~3_combout\,
	dataf => \basis|data|rb|ALT_INV_rb_out[4]~6_combout\,
	combout => \basis|data|n_g|ng_2_RB[4]~1_combout\);

-- Location: FF_X81_Y4_N47
\basis|data|rb|reg_GURU|q_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[4]~1_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(4));

-- Location: LABCELL_X77_Y4_N0
\ref|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal4~2_combout\ = ( \disc_2_ref.disc_addr[4]~input_o\ & ( \basis|data|rb|reg_GURU|q_s\(3) & ( (\disc_2_ref.disc_addr[3]~input_o\ & \basis|data|rb|reg_GURU|q_s\(4)) ) ) ) # ( !\disc_2_ref.disc_addr[4]~input_o\ & ( \basis|data|rb|reg_GURU|q_s\(3) & ( 
-- (\disc_2_ref.disc_addr[3]~input_o\ & !\basis|data|rb|reg_GURU|q_s\(4)) ) ) ) # ( \disc_2_ref.disc_addr[4]~input_o\ & ( !\basis|data|rb|reg_GURU|q_s\(3) & ( (!\disc_2_ref.disc_addr[3]~input_o\ & \basis|data|rb|reg_GURU|q_s\(4)) ) ) ) # ( 
-- !\disc_2_ref.disc_addr[4]~input_o\ & ( !\basis|data|rb|reg_GURU|q_s\(3) & ( (!\disc_2_ref.disc_addr[3]~input_o\ & !\basis|data|rb|reg_GURU|q_s\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_disc_2_ref.disc_addr[3]~input_o\,
	datac => \basis|data|rb|reg_GURU|ALT_INV_q_s\(4),
	datae => \ALT_INV_disc_2_ref.disc_addr[4]~input_o\,
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \ref|Equal4~2_combout\);

-- Location: LABCELL_X81_Y6_N18
\ref|state_next.conflict~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|state_next.conflict~0_combout\ = ( \basis|data|rb|reg_GURU|q_s\(5) & ( \ref|Equal4~1_combout\ & ( (\ref|state_reg.checkMiddle~q\ & (\ref|Equal4~2_combout\ & (\disc_2_ref.disc_addr[5]~input_o\ & \ref|Equal4~0_combout\))) ) ) ) # ( 
-- !\basis|data|rb|reg_GURU|q_s\(5) & ( \ref|Equal4~1_combout\ & ( (\ref|state_reg.checkMiddle~q\ & (\ref|Equal4~2_combout\ & (!\disc_2_ref.disc_addr[5]~input_o\ & \ref|Equal4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.checkMiddle~q\,
	datab => \ref|ALT_INV_Equal4~2_combout\,
	datac => \ALT_INV_disc_2_ref.disc_addr[5]~input_o\,
	datad => \ref|ALT_INV_Equal4~0_combout\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(5),
	dataf => \ref|ALT_INV_Equal4~1_combout\,
	combout => \ref|state_next.conflict~0_combout\);

-- Location: FF_X81_Y6_N20
\ref|state_reg.conflict\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|state_next.conflict~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.conflict~q\);

-- Location: LABCELL_X79_Y6_N39
\basis|control|main|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector1~1_combout\ = ( !\ref|state_reg.conflict1~q\ & ( (!\ref|state_reg.conflict~q\ & (\basis|control|main|STATE.CHECK_END~q\ & ((!\hold|state_reg~q\) # (\basis|control|main|STATE.STEP_ACTIVATION~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010000000000000000000001000000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.conflict~q\,
	datab => \hold|ALT_INV_state_reg~q\,
	datac => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	datad => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datae => \ref|ALT_INV_state_reg.conflict1~q\,
	combout => \basis|control|main|Selector1~1_combout\);

-- Location: IOIBUF_X89_Y6_N4
\disc_2_base.end_of_disc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_base.end_of_disc\,
	o => \disc_2_base.end_of_disc~input_o\);

-- Location: FF_X79_Y6_N53
\hold3|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hold3|state_next~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold3|state_reg~q\);

-- Location: LABCELL_X79_Y6_N51
\hold3|state_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hold3|state_next~0_combout\ = ( \hold3|state_reg~q\ & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ ) ) # ( !\hold3|state_reg~q\ & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( \disc_2_base.end_of_disc~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_disc_2_base.end_of_disc~input_o\,
	datae => \hold3|ALT_INV_state_reg~q\,
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \hold3|state_next~0_combout\);

-- Location: MLABCELL_X82_Y3_N48
\basis|control|main|STATE~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|STATE~11_combout\ = ( \hold|holdedOut~combout\ & ( (\basis|control|main|STATE~10_combout\ & (!\res~input_o\ & (\hold3|state_next~0_combout\ & \basis|data|rb|rb_out[3]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE~10_combout\,
	datab => \ALT_INV_res~input_o\,
	datac => \hold3|ALT_INV_state_next~0_combout\,
	datad => \basis|data|rb|ALT_INV_rb_out[3]~5_combout\,
	dataf => \hold|ALT_INV_holdedOut~combout\,
	combout => \basis|control|main|STATE~11_combout\);

-- Location: FF_X82_Y3_N50
\basis|control|main|STATE.HIT_POINT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|main|STATE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|main|STATE.HIT_POINT~q\);

-- Location: MLABCELL_X82_Y3_N51
\basis|control|main|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector1~2_combout\ = ( !\basis|control|main|STATE.HIT_POINT~q\ & ( (!\basis|control|init|STATE.DONE~q\) # (\basis|control|main|STATE.INIT_ACTIVATION~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \basis|control|init|ALT_INV_STATE.DONE~q\,
	dataf => \basis|control|main|ALT_INV_STATE.HIT_POINT~q\,
	combout => \basis|control|main|Selector1~2_combout\);

-- Location: LABCELL_X83_Y3_N0
\basis|control|cnt_prep|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~17_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(0) ) + ( VCC ) + ( !VCC ))
-- \basis|control|cnt_prep|Add0~18\ = CARRY(( \basis|control|cnt_prep|cnt_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(0),
	cin => GND,
	sumout => \basis|control|cnt_prep|Add0~17_sumout\,
	cout => \basis|control|cnt_prep|Add0~18\);

-- Location: MLABCELL_X82_Y3_N57
\basis|control|cnt_prep|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|NEXT_STATE~0_combout\ = ( \basis|control|cnt_prep|STATE~q\ & ( \basis|control|main|STATE.CNT_PREPARE~q\ & ( !\basis|control|cnt_prep|Equal0~6_combout\ ) ) ) # ( !\basis|control|cnt_prep|STATE~q\ & ( 
-- \basis|control|main|STATE.CNT_PREPARE~q\ ) ) # ( \basis|control|cnt_prep|STATE~q\ & ( !\basis|control|main|STATE.CNT_PREPARE~q\ & ( !\basis|control|cnt_prep|Equal0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	datae => \basis|control|cnt_prep|ALT_INV_STATE~q\,
	dataf => \basis|control|main|ALT_INV_STATE.CNT_PREPARE~q\,
	combout => \basis|control|cnt_prep|NEXT_STATE~0_combout\);

-- Location: FF_X82_Y3_N59
\basis|control|cnt_prep|STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|NEXT_STATE~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|STATE~q\);

-- Location: MLABCELL_X82_Y3_N6
\basis|control|cnt_prep|cnt_s[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|cnt_s[24]~0_combout\ = ( \basis|control|cnt_prep|STATE~q\ & ( \basis|control|cnt_prep|Equal0~6_combout\ ) ) # ( !\basis|control|cnt_prep|STATE~q\ & ( \basis|control|cnt_prep|Equal0~6_combout\ ) ) # ( 
-- !\basis|control|cnt_prep|STATE~q\ & ( !\basis|control|cnt_prep|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \basis|control|cnt_prep|ALT_INV_STATE~q\,
	dataf => \basis|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \basis|control|cnt_prep|cnt_s[24]~0_combout\);

-- Location: FF_X83_Y3_N2
\basis|control|cnt_prep|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~17_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(0));

-- Location: LABCELL_X83_Y3_N3
\basis|control|cnt_prep|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~117_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(1) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~18\ ))
-- \basis|control|cnt_prep|Add0~118\ = CARRY(( \basis|control|cnt_prep|cnt_s\(1) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(1),
	cin => \basis|control|cnt_prep|Add0~18\,
	sumout => \basis|control|cnt_prep|Add0~117_sumout\,
	cout => \basis|control|cnt_prep|Add0~118\);

-- Location: FF_X83_Y3_N5
\basis|control|cnt_prep|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~117_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(1));

-- Location: LABCELL_X83_Y3_N6
\basis|control|cnt_prep|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~37_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s[2]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~118\ ))
-- \basis|control|cnt_prep|Add0~38\ = CARRY(( \basis|control|cnt_prep|cnt_s[2]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s[2]~DUPLICATE_q\,
	cin => \basis|control|cnt_prep|Add0~118\,
	sumout => \basis|control|cnt_prep|Add0~37_sumout\,
	cout => \basis|control|cnt_prep|Add0~38\);

-- Location: FF_X83_Y3_N7
\basis|control|cnt_prep|cnt_s[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~37_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s[2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y3_N9
\basis|control|cnt_prep|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~41_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(3) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~38\ ))
-- \basis|control|cnt_prep|Add0~42\ = CARRY(( \basis|control|cnt_prep|cnt_s\(3) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(3),
	cin => \basis|control|cnt_prep|Add0~38\,
	sumout => \basis|control|cnt_prep|Add0~41_sumout\,
	cout => \basis|control|cnt_prep|Add0~42\);

-- Location: FF_X83_Y3_N11
\basis|control|cnt_prep|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~41_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(3));

-- Location: LABCELL_X83_Y3_N12
\basis|control|cnt_prep|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~45_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(4) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~42\ ))
-- \basis|control|cnt_prep|Add0~46\ = CARRY(( \basis|control|cnt_prep|cnt_s\(4) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(4),
	cin => \basis|control|cnt_prep|Add0~42\,
	sumout => \basis|control|cnt_prep|Add0~45_sumout\,
	cout => \basis|control|cnt_prep|Add0~46\);

-- Location: FF_X83_Y3_N14
\basis|control|cnt_prep|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~45_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(4));

-- Location: FF_X83_Y3_N8
\basis|control|cnt_prep|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~37_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(2));

-- Location: LABCELL_X83_Y3_N15
\basis|control|cnt_prep|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~49_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~46\ ))
-- \basis|control|cnt_prep|Add0~50\ = CARRY(( \basis|control|cnt_prep|cnt_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s[5]~DUPLICATE_q\,
	cin => \basis|control|cnt_prep|Add0~46\,
	sumout => \basis|control|cnt_prep|Add0~49_sumout\,
	cout => \basis|control|cnt_prep|Add0~50\);

-- Location: FF_X83_Y3_N17
\basis|control|cnt_prep|cnt_s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~49_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s[5]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y3_N18
\basis|control|cnt_prep|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~53_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(6) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~50\ ))
-- \basis|control|cnt_prep|Add0~54\ = CARRY(( \basis|control|cnt_prep|cnt_s\(6) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(6),
	cin => \basis|control|cnt_prep|Add0~50\,
	sumout => \basis|control|cnt_prep|Add0~53_sumout\,
	cout => \basis|control|cnt_prep|Add0~54\);

-- Location: FF_X83_Y3_N20
\basis|control|cnt_prep|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~53_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(6));

-- Location: FF_X83_Y3_N16
\basis|control|cnt_prep|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~49_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(5));

-- Location: LABCELL_X83_Y3_N21
\basis|control|cnt_prep|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~9_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(7) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~54\ ))
-- \basis|control|cnt_prep|Add0~10\ = CARRY(( \basis|control|cnt_prep|cnt_s\(7) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(7),
	cin => \basis|control|cnt_prep|Add0~54\,
	sumout => \basis|control|cnt_prep|Add0~9_sumout\,
	cout => \basis|control|cnt_prep|Add0~10\);

-- Location: FF_X83_Y3_N23
\basis|control|cnt_prep|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~9_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(7));

-- Location: LABCELL_X83_Y3_N24
\basis|control|cnt_prep|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~13_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(8) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~10\ ))
-- \basis|control|cnt_prep|Add0~14\ = CARRY(( \basis|control|cnt_prep|cnt_s\(8) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(8),
	cin => \basis|control|cnt_prep|Add0~10\,
	sumout => \basis|control|cnt_prep|Add0~13_sumout\,
	cout => \basis|control|cnt_prep|Add0~14\);

-- Location: FF_X83_Y3_N26
\basis|control|cnt_prep|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~13_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(8));

-- Location: LABCELL_X83_Y3_N27
\basis|control|cnt_prep|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~21_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~14\ ))
-- \basis|control|cnt_prep|Add0~22\ = CARRY(( \basis|control|cnt_prep|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\,
	cin => \basis|control|cnt_prep|Add0~14\,
	sumout => \basis|control|cnt_prep|Add0~21_sumout\,
	cout => \basis|control|cnt_prep|Add0~22\);

-- Location: FF_X83_Y3_N29
\basis|control|cnt_prep|cnt_s[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~21_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s[9]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y3_N30
\basis|control|cnt_prep|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~25_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(10) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~22\ ))
-- \basis|control|cnt_prep|Add0~26\ = CARRY(( \basis|control|cnt_prep|cnt_s\(10) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(10),
	cin => \basis|control|cnt_prep|Add0~22\,
	sumout => \basis|control|cnt_prep|Add0~25_sumout\,
	cout => \basis|control|cnt_prep|Add0~26\);

-- Location: FF_X83_Y3_N31
\basis|control|cnt_prep|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~25_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(10));

-- Location: LABCELL_X83_Y3_N33
\basis|control|cnt_prep|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~29_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(11) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~26\ ))
-- \basis|control|cnt_prep|Add0~30\ = CARRY(( \basis|control|cnt_prep|cnt_s\(11) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_cnt_s\(11),
	cin => \basis|control|cnt_prep|Add0~26\,
	sumout => \basis|control|cnt_prep|Add0~29_sumout\,
	cout => \basis|control|cnt_prep|Add0~30\);

-- Location: FF_X83_Y3_N35
\basis|control|cnt_prep|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~29_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(11));

-- Location: LABCELL_X83_Y3_N36
\basis|control|cnt_prep|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~1_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(12) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~30\ ))
-- \basis|control|cnt_prep|Add0~2\ = CARRY(( \basis|control|cnt_prep|cnt_s\(12) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(12),
	cin => \basis|control|cnt_prep|Add0~30\,
	sumout => \basis|control|cnt_prep|Add0~1_sumout\,
	cout => \basis|control|cnt_prep|Add0~2\);

-- Location: FF_X83_Y3_N38
\basis|control|cnt_prep|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~1_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(12));

-- Location: LABCELL_X83_Y3_N39
\basis|control|cnt_prep|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~5_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(13) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~2\ ))
-- \basis|control|cnt_prep|Add0~6\ = CARRY(( \basis|control|cnt_prep|cnt_s\(13) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(13),
	cin => \basis|control|cnt_prep|Add0~2\,
	sumout => \basis|control|cnt_prep|Add0~5_sumout\,
	cout => \basis|control|cnt_prep|Add0~6\);

-- Location: FF_X83_Y3_N41
\basis|control|cnt_prep|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~5_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(13));

-- Location: LABCELL_X83_Y3_N42
\basis|control|cnt_prep|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~77_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(14) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~6\ ))
-- \basis|control|cnt_prep|Add0~78\ = CARRY(( \basis|control|cnt_prep|cnt_s\(14) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(14),
	cin => \basis|control|cnt_prep|Add0~6\,
	sumout => \basis|control|cnt_prep|Add0~77_sumout\,
	cout => \basis|control|cnt_prep|Add0~78\);

-- Location: FF_X83_Y3_N43
\basis|control|cnt_prep|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~77_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(14));

-- Location: LABCELL_X83_Y3_N45
\basis|control|cnt_prep|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~33_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(15) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~78\ ))
-- \basis|control|cnt_prep|Add0~34\ = CARRY(( \basis|control|cnt_prep|cnt_s\(15) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(15),
	cin => \basis|control|cnt_prep|Add0~78\,
	sumout => \basis|control|cnt_prep|Add0~33_sumout\,
	cout => \basis|control|cnt_prep|Add0~34\);

-- Location: FF_X83_Y3_N47
\basis|control|cnt_prep|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~33_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(15));

-- Location: MLABCELL_X82_Y3_N36
\basis|control|cnt_prep|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Equal0~2_combout\ = ( !\basis|control|cnt_prep|cnt_s\(5) & ( !\basis|control|cnt_prep|cnt_s\(15) & ( (\basis|control|cnt_prep|cnt_s\(3) & (!\basis|control|cnt_prep|cnt_s\(4) & (!\basis|control|cnt_prep|cnt_s\(2) & 
-- \basis|control|cnt_prep|cnt_s\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_cnt_s\(3),
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(4),
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(2),
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(6),
	datae => \basis|control|cnt_prep|ALT_INV_cnt_s\(5),
	dataf => \basis|control|cnt_prep|ALT_INV_cnt_s\(15),
	combout => \basis|control|cnt_prep|Equal0~2_combout\);

-- Location: FF_X83_Y3_N52
\basis|control|cnt_prep|cnt_s[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~89_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s[17]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y3_N48
\basis|control|cnt_prep|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~85_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(16) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~34\ ))
-- \basis|control|cnt_prep|Add0~86\ = CARRY(( \basis|control|cnt_prep|cnt_s\(16) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(16),
	cin => \basis|control|cnt_prep|Add0~34\,
	sumout => \basis|control|cnt_prep|Add0~85_sumout\,
	cout => \basis|control|cnt_prep|Add0~86\);

-- Location: FF_X83_Y3_N50
\basis|control|cnt_prep|cnt_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~85_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(16));

-- Location: LABCELL_X83_Y3_N51
\basis|control|cnt_prep|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~89_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s[17]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~86\ ))
-- \basis|control|cnt_prep|Add0~90\ = CARRY(( \basis|control|cnt_prep|cnt_s[17]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s[17]~DUPLICATE_q\,
	cin => \basis|control|cnt_prep|Add0~86\,
	sumout => \basis|control|cnt_prep|Add0~89_sumout\,
	cout => \basis|control|cnt_prep|Add0~90\);

-- Location: FF_X83_Y3_N53
\basis|control|cnt_prep|cnt_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~89_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(17));

-- Location: LABCELL_X83_Y3_N54
\basis|control|cnt_prep|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~93_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(18) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~90\ ))
-- \basis|control|cnt_prep|Add0~94\ = CARRY(( \basis|control|cnt_prep|cnt_s\(18) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(18),
	cin => \basis|control|cnt_prep|Add0~90\,
	sumout => \basis|control|cnt_prep|Add0~93_sumout\,
	cout => \basis|control|cnt_prep|Add0~94\);

-- Location: FF_X83_Y3_N56
\basis|control|cnt_prep|cnt_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~93_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(18));

-- Location: LABCELL_X83_Y3_N57
\basis|control|cnt_prep|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~97_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(19) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~94\ ))
-- \basis|control|cnt_prep|Add0~98\ = CARRY(( \basis|control|cnt_prep|cnt_s\(19) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(19),
	cin => \basis|control|cnt_prep|Add0~94\,
	sumout => \basis|control|cnt_prep|Add0~97_sumout\,
	cout => \basis|control|cnt_prep|Add0~98\);

-- Location: FF_X83_Y3_N59
\basis|control|cnt_prep|cnt_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~97_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(19));

-- Location: LABCELL_X83_Y2_N0
\basis|control|cnt_prep|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~101_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(20) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~98\ ))
-- \basis|control|cnt_prep|Add0~102\ = CARRY(( \basis|control|cnt_prep|cnt_s\(20) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(20),
	cin => \basis|control|cnt_prep|Add0~98\,
	sumout => \basis|control|cnt_prep|Add0~101_sumout\,
	cout => \basis|control|cnt_prep|Add0~102\);

-- Location: FF_X83_Y2_N2
\basis|control|cnt_prep|cnt_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~101_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(20));

-- Location: LABCELL_X83_Y2_N3
\basis|control|cnt_prep|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~105_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(21) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~102\ ))
-- \basis|control|cnt_prep|Add0~106\ = CARRY(( \basis|control|cnt_prep|cnt_s\(21) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(21),
	cin => \basis|control|cnt_prep|Add0~102\,
	sumout => \basis|control|cnt_prep|Add0~105_sumout\,
	cout => \basis|control|cnt_prep|Add0~106\);

-- Location: FF_X83_Y2_N5
\basis|control|cnt_prep|cnt_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~105_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(21));

-- Location: LABCELL_X83_Y2_N6
\basis|control|cnt_prep|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~109_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(22) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~106\ ))
-- \basis|control|cnt_prep|Add0~110\ = CARRY(( \basis|control|cnt_prep|cnt_s\(22) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(22),
	cin => \basis|control|cnt_prep|Add0~106\,
	sumout => \basis|control|cnt_prep|Add0~109_sumout\,
	cout => \basis|control|cnt_prep|Add0~110\);

-- Location: FF_X83_Y2_N8
\basis|control|cnt_prep|cnt_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~109_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(22));

-- Location: LABCELL_X83_Y2_N9
\basis|control|cnt_prep|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~113_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(23) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~110\ ))
-- \basis|control|cnt_prep|Add0~114\ = CARRY(( \basis|control|cnt_prep|cnt_s\(23) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(23),
	cin => \basis|control|cnt_prep|Add0~110\,
	sumout => \basis|control|cnt_prep|Add0~113_sumout\,
	cout => \basis|control|cnt_prep|Add0~114\);

-- Location: FF_X83_Y2_N11
\basis|control|cnt_prep|cnt_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~113_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(23));

-- Location: LABCELL_X83_Y2_N12
\basis|control|cnt_prep|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~81_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(24) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~114\ ))
-- \basis|control|cnt_prep|Add0~82\ = CARRY(( \basis|control|cnt_prep|cnt_s\(24) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(24),
	cin => \basis|control|cnt_prep|Add0~114\,
	sumout => \basis|control|cnt_prep|Add0~81_sumout\,
	cout => \basis|control|cnt_prep|Add0~82\);

-- Location: FF_X83_Y2_N13
\basis|control|cnt_prep|cnt_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~81_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(24));

-- Location: MLABCELL_X82_Y3_N42
\basis|control|cnt_prep|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Equal0~4_combout\ = ( !\basis|control|cnt_prep|cnt_s\(16) & ( !\basis|control|cnt_prep|cnt_s\(20) & ( (!\basis|control|cnt_prep|cnt_s\(17) & (!\basis|control|cnt_prep|cnt_s\(19) & (!\basis|control|cnt_prep|cnt_s\(24) & 
-- !\basis|control|cnt_prep|cnt_s\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_cnt_s\(17),
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(19),
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(24),
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(18),
	datae => \basis|control|cnt_prep|ALT_INV_cnt_s\(16),
	dataf => \basis|control|cnt_prep|ALT_INV_cnt_s\(20),
	combout => \basis|control|cnt_prep|Equal0~4_combout\);

-- Location: MLABCELL_X82_Y3_N3
\basis|control|cnt_prep|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Equal0~0_combout\ = ( !\basis|control|cnt_prep|cnt_s\(12) & ( !\basis|control|cnt_prep|cnt_s\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \basis|control|cnt_prep|ALT_INV_cnt_s\(12),
	dataf => \basis|control|cnt_prep|ALT_INV_cnt_s\(13),
	combout => \basis|control|cnt_prep|Equal0~0_combout\);

-- Location: FF_X83_Y3_N28
\basis|control|cnt_prep|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~21_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(9));

-- Location: MLABCELL_X82_Y3_N30
\basis|control|cnt_prep|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Equal0~1_combout\ = ( \basis|control|cnt_prep|cnt_s\(7) & ( !\basis|control|cnt_prep|cnt_s\(11) & ( (!\basis|control|cnt_prep|cnt_s\(9) & (!\basis|control|cnt_prep|cnt_s\(8) & (!\basis|control|cnt_prep|cnt_s\(0) & 
-- !\basis|control|cnt_prep|cnt_s\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_cnt_s\(9),
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(8),
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(0),
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(10),
	datae => \basis|control|cnt_prep|ALT_INV_cnt_s\(7),
	dataf => \basis|control|cnt_prep|ALT_INV_cnt_s\(11),
	combout => \basis|control|cnt_prep|Equal0~1_combout\);

-- Location: LABCELL_X83_Y2_N15
\basis|control|cnt_prep|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~121_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(25) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~82\ ))
-- \basis|control|cnt_prep|Add0~122\ = CARRY(( \basis|control|cnt_prep|cnt_s\(25) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(25),
	cin => \basis|control|cnt_prep|Add0~82\,
	sumout => \basis|control|cnt_prep|Add0~121_sumout\,
	cout => \basis|control|cnt_prep|Add0~122\);

-- Location: FF_X83_Y2_N17
\basis|control|cnt_prep|cnt_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~121_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(25));

-- Location: LABCELL_X83_Y2_N18
\basis|control|cnt_prep|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~125_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(26) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~122\ ))
-- \basis|control|cnt_prep|Add0~126\ = CARRY(( \basis|control|cnt_prep|cnt_s\(26) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(26),
	cin => \basis|control|cnt_prep|Add0~122\,
	sumout => \basis|control|cnt_prep|Add0~125_sumout\,
	cout => \basis|control|cnt_prep|Add0~126\);

-- Location: FF_X83_Y2_N20
\basis|control|cnt_prep|cnt_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~125_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(26));

-- Location: LABCELL_X83_Y2_N42
\basis|control|cnt_prep|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Equal0~5_combout\ = ( !\basis|control|cnt_prep|cnt_s\(1) & ( !\basis|control|cnt_prep|cnt_s\(25) & ( (!\basis|control|cnt_prep|cnt_s\(21) & (!\basis|control|cnt_prep|cnt_s\(22) & (!\basis|control|cnt_prep|cnt_s\(26) & 
-- !\basis|control|cnt_prep|cnt_s\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_cnt_s\(21),
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(22),
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(26),
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(23),
	datae => \basis|control|cnt_prep|ALT_INV_cnt_s\(1),
	dataf => \basis|control|cnt_prep|ALT_INV_cnt_s\(25),
	combout => \basis|control|cnt_prep|Equal0~5_combout\);

-- Location: LABCELL_X83_Y2_N21
\basis|control|cnt_prep|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~57_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(27) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~126\ ))
-- \basis|control|cnt_prep|Add0~58\ = CARRY(( \basis|control|cnt_prep|cnt_s\(27) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(27),
	cin => \basis|control|cnt_prep|Add0~126\,
	sumout => \basis|control|cnt_prep|Add0~57_sumout\,
	cout => \basis|control|cnt_prep|Add0~58\);

-- Location: FF_X83_Y2_N23
\basis|control|cnt_prep|cnt_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~57_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(27));

-- Location: LABCELL_X83_Y2_N24
\basis|control|cnt_prep|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~61_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(28) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~58\ ))
-- \basis|control|cnt_prep|Add0~62\ = CARRY(( \basis|control|cnt_prep|cnt_s\(28) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(28),
	cin => \basis|control|cnt_prep|Add0~58\,
	sumout => \basis|control|cnt_prep|Add0~61_sumout\,
	cout => \basis|control|cnt_prep|Add0~62\);

-- Location: FF_X83_Y2_N26
\basis|control|cnt_prep|cnt_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~61_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(28));

-- Location: LABCELL_X83_Y2_N27
\basis|control|cnt_prep|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~65_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s[29]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~62\ ))
-- \basis|control|cnt_prep|Add0~66\ = CARRY(( \basis|control|cnt_prep|cnt_s[29]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_prep|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s[29]~DUPLICATE_q\,
	cin => \basis|control|cnt_prep|Add0~62\,
	sumout => \basis|control|cnt_prep|Add0~65_sumout\,
	cout => \basis|control|cnt_prep|Add0~66\);

-- Location: FF_X83_Y2_N29
\basis|control|cnt_prep|cnt_s[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~65_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s[29]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y2_N30
\basis|control|cnt_prep|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~69_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(30) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~66\ ))
-- \basis|control|cnt_prep|Add0~70\ = CARRY(( \basis|control|cnt_prep|cnt_s\(30) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(30),
	cin => \basis|control|cnt_prep|Add0~66\,
	sumout => \basis|control|cnt_prep|Add0~69_sumout\,
	cout => \basis|control|cnt_prep|Add0~70\);

-- Location: FF_X83_Y2_N32
\basis|control|cnt_prep|cnt_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~69_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(30));

-- Location: LABCELL_X83_Y2_N33
\basis|control|cnt_prep|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Add0~73_sumout\ = SUM(( \basis|control|cnt_prep|cnt_s\(31) ) + ( GND ) + ( \basis|control|cnt_prep|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_cnt_s\(31),
	cin => \basis|control|cnt_prep|Add0~70\,
	sumout => \basis|control|cnt_prep|Add0~73_sumout\);

-- Location: FF_X83_Y2_N35
\basis|control|cnt_prep|cnt_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~73_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(31));

-- Location: FF_X83_Y2_N28
\basis|control|cnt_prep|cnt_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_prep|Add0~65_sumout\,
	sclr => \basis|control|cnt_prep|cnt_s[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_prep|cnt_s\(29));

-- Location: LABCELL_X83_Y2_N36
\basis|control|cnt_prep|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Equal0~3_combout\ = ( !\basis|control|cnt_prep|cnt_s\(27) & ( !\basis|control|cnt_prep|cnt_s\(14) & ( (!\basis|control|cnt_prep|cnt_s\(31) & (!\basis|control|cnt_prep|cnt_s\(30) & (!\basis|control|cnt_prep|cnt_s\(28) & 
-- !\basis|control|cnt_prep|cnt_s\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_cnt_s\(31),
	datab => \basis|control|cnt_prep|ALT_INV_cnt_s\(30),
	datac => \basis|control|cnt_prep|ALT_INV_cnt_s\(28),
	datad => \basis|control|cnt_prep|ALT_INV_cnt_s\(29),
	datae => \basis|control|cnt_prep|ALT_INV_cnt_s\(27),
	dataf => \basis|control|cnt_prep|ALT_INV_cnt_s\(14),
	combout => \basis|control|cnt_prep|Equal0~3_combout\);

-- Location: MLABCELL_X82_Y3_N24
\basis|control|cnt_prep|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_prep|Equal0~6_combout\ = ( \basis|control|cnt_prep|Equal0~5_combout\ & ( \basis|control|cnt_prep|Equal0~3_combout\ & ( (\basis|control|cnt_prep|Equal0~2_combout\ & (\basis|control|cnt_prep|Equal0~4_combout\ & 
-- (\basis|control|cnt_prep|Equal0~0_combout\ & \basis|control|cnt_prep|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_prep|ALT_INV_Equal0~2_combout\,
	datab => \basis|control|cnt_prep|ALT_INV_Equal0~4_combout\,
	datac => \basis|control|cnt_prep|ALT_INV_Equal0~0_combout\,
	datad => \basis|control|cnt_prep|ALT_INV_Equal0~1_combout\,
	datae => \basis|control|cnt_prep|ALT_INV_Equal0~5_combout\,
	dataf => \basis|control|cnt_prep|ALT_INV_Equal0~3_combout\,
	combout => \basis|control|cnt_prep|Equal0~6_combout\);

-- Location: MLABCELL_X82_Y3_N18
\basis|control|main|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector1~0_combout\ = ( !\basis|control|cnt_prep|Equal0~6_combout\ & ( \basis|control|main|STATE.CNT_PREPARE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|main|ALT_INV_STATE.CNT_PREPARE~q\,
	dataf => \basis|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \basis|control|main|Selector1~0_combout\);

-- Location: MLABCELL_X82_Y3_N12
\basis|control|main|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector1~3_combout\ = ( \hold3|state_next~0_combout\ & ( \basis|control|main|Selector1~0_combout\ ) ) # ( !\hold3|state_next~0_combout\ & ( \basis|control|main|Selector1~0_combout\ ) ) # ( \hold3|state_next~0_combout\ & ( 
-- !\basis|control|main|Selector1~0_combout\ & ( (!\basis|control|main|Selector1~2_combout\) # ((\basis|control|main|Selector1~1_combout\ & \basis|data|rb|rb_out[3]~5_combout\)) ) ) ) # ( !\hold3|state_next~0_combout\ & ( 
-- !\basis|control|main|Selector1~0_combout\ & ( (!\basis|control|main|Selector1~2_combout\) # ((\basis|control|main|Selector1~1_combout\ & (\basis|data|rb|rb_out[3]~5_combout\ & !\enable~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110000111100011111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_Selector1~1_combout\,
	datab => \basis|data|rb|ALT_INV_rb_out[3]~5_combout\,
	datac => \basis|control|main|ALT_INV_Selector1~2_combout\,
	datad => \ALT_INV_enable~input_o\,
	datae => \hold3|ALT_INV_state_next~0_combout\,
	dataf => \basis|control|main|ALT_INV_Selector1~0_combout\,
	combout => \basis|control|main|Selector1~3_combout\);

-- Location: FF_X82_Y3_N14
\basis|control|main|STATE.CNT_PREPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|main|Selector1~3_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|main|STATE.CNT_PREPARE~q\);

-- Location: MLABCELL_X82_Y5_N27
\basis|control|main|STATE~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|STATE~8_combout\ = ( \basis|control|cnt_prep|Equal0~6_combout\ & ( (!\res~input_o\ & \basis|control|main|STATE.CNT_PREPARE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datad => \basis|control|main|ALT_INV_STATE.CNT_PREPARE~q\,
	dataf => \basis|control|cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \basis|control|main|STATE~8_combout\);

-- Location: FF_X82_Y5_N29
\basis|control|main|STATE.STEP_ACTIVATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|main|STATE~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|main|STATE.STEP_ACTIVATION~q\);

-- Location: LABCELL_X81_Y5_N0
\basis|control|guru|STATE~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~17_combout\ = ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\res~input_o\ & !\basis|control|guru|STATE.LAST~q\) ) ) # ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( (!\res~input_o\ & 
-- (!\basis|control|guru|STATE.LAST~q\ & \basis|control|guru|STATE.START_WALKING~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datab => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \basis|control|guru|STATE~17_combout\);

-- Location: FF_X81_Y5_N2
\basis|control|guru|STATE.START_WALKING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.START_WALKING~q\);

-- Location: LABCELL_X80_Y5_N57
\basis|control|guru|STATE~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~18_combout\ = ( !\basis|control|guru|STATE.START_WALKING~q\ & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ & ( !\res~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datae => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \basis|control|guru|STATE~18_combout\);

-- Location: FF_X80_Y5_N59
\basis|control|guru|STATE.RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.RAND~q\);

-- Location: LABCELL_X80_Y5_N36
\basis|control|guru|STATE~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~14_combout\ = ( \basis|control|guru|STATE.RAND~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	dataf => \basis|control|guru|ALT_INV_STATE.RAND~q\,
	combout => \basis|control|guru|STATE~14_combout\);

-- Location: FF_X80_Y5_N38
\basis|control|guru|STATE.WRITE_RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.WRITE_RAND~q\);

-- Location: LABCELL_X81_Y5_N54
\basis|control|guru|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|Selector1~0_combout\ = ( \basis|control|main|STATE.CHECK_END~q\ & ( (((!\step|rdy_v1_s~q\ & \basis|control|guru|STATE.WAIT_COUNT_GURU~q\)) # (\basis|control|guru|STATE.CLEAR_PREV~q\)) # (\basis|control|guru|STATE.WRITE_RAND~q\) ) ) # ( 
-- !\basis|control|main|STATE.CHECK_END~q\ & ( ((\basis|control|guru|STATE.WAIT_COUNT_GURU~q\) # (\basis|control|guru|STATE.CLEAR_PREV~q\)) # (\basis|control|guru|STATE.WRITE_RAND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101110111111101110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datab => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \step|ALT_INV_rdy_v1_s~q\,
	datad => \basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	dataf => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \basis|control|guru|Selector1~0_combout\);

-- Location: FF_X81_Y5_N56
\basis|control|guru|STATE.WAIT_COUNT_GURU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|Selector1~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.WAIT_COUNT_GURU~q\);

-- Location: LABCELL_X81_Y5_N36
\basis|control|guru|STATE~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~19_combout\ = ( !\res~input_o\ & ( (\basis|control|main|STATE.CHECK_END~q\ & (\step|rdy_v1_s~q\ & \basis|control|guru|STATE.WAIT_COUNT_GURU~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	datac => \step|ALT_INV_rdy_v1_s~q\,
	datad => \basis|control|guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	dataf => \ALT_INV_res~input_o\,
	combout => \basis|control|guru|STATE~19_combout\);

-- Location: FF_X81_Y5_N38
\basis|control|guru|STATE.INCR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.INCR~q\);

-- Location: LABCELL_X81_Y5_N45
\basis|data|rb|reg_GURU|q_s[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|reg_GURU|q_s[6]~0_combout\ = ( \basis|control|guru|STATE.RAND~q\ & ( (\basis|control|main|STATE.INIT_ACTIVATION~q\) # (\res~input_o\) ) ) # ( !\basis|control|guru|STATE.RAND~q\ & ( ((\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- \basis|control|guru|STATE.INCR~q\)) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \basis|control|guru|ALT_INV_STATE.INCR~q\,
	dataf => \basis|control|guru|ALT_INV_STATE.RAND~q\,
	combout => \basis|data|rb|reg_GURU|q_s[6]~0_combout\);

-- Location: FF_X82_Y4_N14
\basis|data|rb|reg_PRE_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|rb|reg_GURU|q_s\(6),
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_PRE_GURU|q_s\(6));

-- Location: FF_X82_Y4_N55
\basis|data|rb|reg_INIT|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|data|n_g|ng_2_RB[6]~8_combout\,
	sclr => \res~input_o\,
	ena => \basis|data|rb|reg_INIT|q_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_INIT|q_s\(6));

-- Location: MLABCELL_X82_Y4_N12
\basis|data|rb|rb_out[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|rb|rb_out[6]~8_combout\ = ( \basis|data|rb|reg_GURU|q_s\(6) & ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((\basis|data|rb|reg_INIT|q_s\(6)))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (\basis|data|rb|reg_PRE_GURU|q_s\(6))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(6) & ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((\basis|data|rb|reg_INIT|q_s\(6)))) # 
-- (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_PRE_GURU|q_s\(6))) ) ) ) # ( \basis|data|rb|reg_GURU|q_s\(6) & ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- (((\basis|data|rb|reg_INIT|q_s\(6))))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((!\basis|control|guru|STATE.LAST~q\)) # (\basis|data|rb|reg_PRE_GURU|q_s\(6)))) ) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(6) & ( 
-- !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|data|rb|reg_INIT|q_s\(6))))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|reg_PRE_GURU|q_s\(6) & 
-- ((\basis|control|guru|STATE.LAST~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100111111010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(6),
	datab => \basis|data|rb|reg_INIT|ALT_INV_q_s\(6),
	datac => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datae => \basis|data|rb|reg_GURU|ALT_INV_q_s\(6),
	dataf => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \basis|data|rb|rb_out[6]~8_combout\);

-- Location: MLABCELL_X82_Y4_N54
\basis|data|n_g|ng_2_RB[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|data|n_g|ng_2_RB[6]~8_combout\ = ( \basis|data|alu_1|add|adder_6|aux_and_3~combout\ & ( (\basis|control|ctrl_2_dp.ng_cte_incr~3_combout\ & (!\basis|data|rb|rb_out[6]~8_combout\ $ (!\basis|control|ctrl_2_dp.alu_ctrl~0_combout\))) ) ) # ( 
-- !\basis|data|alu_1|add|adder_6|aux_and_3~combout\ & ( (\basis|data|rb|rb_out[6]~8_combout\ & \basis|control|ctrl_2_dp.ng_cte_incr~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|data|rb|ALT_INV_rb_out[6]~8_combout\,
	datac => \basis|control|ALT_INV_ctrl_2_dp.alu_ctrl~0_combout\,
	datad => \basis|control|ALT_INV_ctrl_2_dp.ng_cte_incr~3_combout\,
	dataf => \basis|data|alu_1|add|adder_6|ALT_INV_aux_and_3~combout\,
	combout => \basis|data|n_g|ng_2_RB[6]~8_combout\);

-- Location: FF_X82_Y4_N29
\basis|data|rb|reg_GURU|q_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \basis|data|n_g|ng_2_RB[6]~8_combout\,
	sclr => \res~input_o\,
	sload => VCC,
	ena => \basis|data|rb|reg_GURU|q_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|data|rb|reg_GURU|q_s\(6));

-- Location: MLABCELL_X82_Y4_N57
\ref|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal4~0_combout\ = ( \basis|data|rb|reg_GURU|q_s\(7) & ( (\disc_2_ref.disc_addr[7]~input_o\ & (!\disc_2_ref.disc_addr[6]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(6)))) ) ) # ( !\basis|data|rb|reg_GURU|q_s\(7) & ( (!\disc_2_ref.disc_addr[7]~input_o\ 
-- & (!\disc_2_ref.disc_addr[6]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_disc_2_ref.disc_addr[7]~input_o\,
	datac => \ALT_INV_disc_2_ref.disc_addr[6]~input_o\,
	datad => \basis|data|rb|reg_GURU|ALT_INV_q_s\(6),
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(7),
	combout => \ref|Equal4~0_combout\);

-- Location: LABCELL_X81_Y5_N51
\ref|Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Equal4~3_combout\ = ( \ref|Equal4~2_combout\ & ( (\ref|Equal4~0_combout\ & (\ref|Equal4~1_combout\ & (!\disc_2_ref.disc_addr[5]~input_o\ $ (\basis|data|rb|reg_GURU|q_s\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_disc_2_ref.disc_addr[5]~input_o\,
	datab => \ref|ALT_INV_Equal4~0_combout\,
	datac => \ref|ALT_INV_Equal4~1_combout\,
	datad => \basis|data|rb|reg_GURU|ALT_INV_q_s\(5),
	dataf => \ref|ALT_INV_Equal4~2_combout\,
	combout => \ref|Equal4~3_combout\);

-- Location: LABCELL_X81_Y7_N9
\ref|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector16~0_combout\ = ( \ref|state_reg.wait50b~q\ & ( \ref|LessThan0~5_combout\ & ( \ref|state_reg.go_guru_state~q\ ) ) ) # ( !\ref|state_reg.wait50b~q\ & ( \ref|LessThan0~5_combout\ & ( \ref|state_reg.go_guru_state~q\ ) ) ) # ( 
-- \ref|state_reg.wait50b~q\ & ( !\ref|LessThan0~5_combout\ & ( (\ref|state_reg.go_guru_state~q\) # (\ref|mainCnt\(31)) ) ) ) # ( !\ref|state_reg.wait50b~q\ & ( !\ref|LessThan0~5_combout\ & ( \ref|state_reg.go_guru_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt\(31),
	datad => \ref|ALT_INV_state_reg.go_guru_state~q\,
	datae => \ref|ALT_INV_state_reg.wait50b~q\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector16~0_combout\);

-- Location: FF_X81_Y7_N10
\ref|state_reg.wait50b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector16~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.wait50b~q\);

-- Location: MLABCELL_X82_Y5_N54
\ref|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector17~0_combout\ = ( \ref|LessThan0~5_combout\ & ( (!\ref|state_reg.wait50b~q\ & (!\ref|state_reg.detect1~q\ & !\ref|state_reg.detect~q\)) ) ) # ( !\ref|LessThan0~5_combout\ & ( (!\ref|state_reg.detect1~q\ & (!\ref|state_reg.detect~q\ & 
-- ((!\ref|state_reg.wait50b~q\) # (\ref|mainCnt\(31))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.wait50b~q\,
	datab => \ref|ALT_INV_state_reg.detect1~q\,
	datac => \ref|ALT_INV_mainCnt\(31),
	datad => \ref|ALT_INV_state_reg.detect~q\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector17~0_combout\);

-- Location: MLABCELL_X82_Y5_N30
\ref|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector17~1_combout\ = ( \ref|Equal2~5_combout\ & ( \ref|Equal2~8_combout\ & ( (!\ref|Selector17~0_combout\) # ((!\ref|Equal4~3_combout\ & (\ref|Equal2~3_combout\ & \ref|state_reg.checkTop~q\))) ) ) ) # ( !\ref|Equal2~5_combout\ & ( 
-- \ref|Equal2~8_combout\ & ( (!\ref|Selector17~0_combout\) # ((!\ref|Equal4~3_combout\ & \ref|state_reg.checkTop~q\)) ) ) ) # ( \ref|Equal2~5_combout\ & ( !\ref|Equal2~8_combout\ & ( (!\ref|Selector17~0_combout\) # ((!\ref|Equal4~3_combout\ & 
-- \ref|state_reg.checkTop~q\)) ) ) ) # ( !\ref|Equal2~5_combout\ & ( !\ref|Equal2~8_combout\ & ( (!\ref|Selector17~0_combout\) # ((!\ref|Equal4~3_combout\ & \ref|state_reg.checkTop~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111010111100001111101011110000111110101111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Equal4~3_combout\,
	datab => \ref|ALT_INV_Equal2~3_combout\,
	datac => \ref|ALT_INV_Selector17~0_combout\,
	datad => \ref|ALT_INV_state_reg.checkTop~q\,
	datae => \ref|ALT_INV_Equal2~5_combout\,
	dataf => \ref|ALT_INV_Equal2~8_combout\,
	combout => \ref|Selector17~1_combout\);

-- Location: FF_X82_Y5_N32
\ref|state_reg.unm_go_discB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector17~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.unm_go_discB~q\);

-- Location: FF_X81_Y6_N59
\ref|state_reg.unm_go_guru~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector21~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.unm_go_guru~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N42
\ref|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector13~0_combout\ = ( \ref|tick_disc~combout\ & ( (!\ref|state_reg.unm_go_discB~q\ & !\ref|state_reg.unm_go_guru~DUPLICATE_q\) ) ) # ( !\ref|tick_disc~combout\ & ( (!\ref|state_reg.unm_go_discB~q\ & (!\ref|state_reg.unm_go_guru~DUPLICATE_q\ & 
-- ((\ref|state_reg.idle~q\) # (\ref|tick_guru~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.unm_go_discB~q\,
	datab => \ref|ALT_INV_state_reg.unm_go_guru~DUPLICATE_q\,
	datac => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_state_reg.idle~q\,
	dataf => \ref|ALT_INV_tick_disc~combout\,
	combout => \ref|Selector13~0_combout\);

-- Location: FF_X81_Y6_N44
\ref|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector13~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.idle~q\);

-- Location: MLABCELL_X82_Y8_N42
\ref|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector19~0_combout\ = ( !\ref|tick_disc~combout\ & ( \ref|tick_guru~combout\ & ( !\ref|state_reg.idle~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_state_reg.idle~q\,
	datae => \ref|ALT_INV_tick_disc~combout\,
	dataf => \ref|ALT_INV_tick_guru~combout\,
	combout => \ref|Selector19~0_combout\);

-- Location: LABCELL_X81_Y6_N54
\ref|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector19~1_combout\ = ( \ref|LessThan0~5_combout\ & ( \ref|Selector19~0_combout\ ) ) # ( !\ref|LessThan0~5_combout\ & ( ((\ref|mainCnt[31]~DUPLICATE_q\ & \ref|state_reg.wait55~q\)) # (\ref|Selector19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_Selector19~0_combout\,
	datad => \ref|ALT_INV_state_reg.wait55~q\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector19~1_combout\);

-- Location: FF_X81_Y6_N56
\ref|state_reg.wait55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector19~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.wait55~q\);

-- Location: LABCELL_X81_Y6_N39
\ref|mainCnt[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|mainCnt[5]~0_combout\ = ( !\ref|state_reg.wait50l~q\ & ( (!\ref|state_reg.wait55~q\ & (!\ref|state_reg.wait50b~q\ & !\ref|state_reg.wait50~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.wait55~q\,
	datac => \ref|ALT_INV_state_reg.wait50b~q\,
	datad => \ref|ALT_INV_state_reg.wait50~q\,
	dataf => \ref|ALT_INV_state_reg.wait50l~q\,
	combout => \ref|mainCnt[5]~0_combout\);

-- Location: MLABCELL_X82_Y7_N30
\ref|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector22~0_combout\ = ( !\ref|LessThan0~5_combout\ & ( (!\ref|mainCnt[5]~0_combout\ & \ref|mainCnt[31]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_mainCnt[5]~0_combout\,
	datac => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	dataf => \ref|ALT_INV_LessThan0~5_combout\,
	combout => \ref|Selector22~0_combout\);

-- Location: LABCELL_X83_Y7_N33
\ref|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Add2~1_sumout\ = SUM(( !\ref|mainCnt[31]~DUPLICATE_q\ ) + ( VCC ) + ( \ref|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	cin => \ref|Add2~82\,
	sumout => \ref|Add2~1_sumout\);

-- Location: LABCELL_X83_Y7_N36
\ref|Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector22~1_combout\ = ( \ref|Add2~1_sumout\ & ( !\ref|Selector22~0_combout\ ) ) # ( !\ref|Add2~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_Selector22~0_combout\,
	dataf => \ref|ALT_INV_Add2~1_sumout\,
	combout => \ref|Selector22~1_combout\);

-- Location: FF_X83_Y7_N37
\ref|mainCnt[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector22~1_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|mainCnt[31]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N3
\ref|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|Selector14~0_combout\ = ( \ref|tick_disc~combout\ & ( (!\ref|state_reg.idle~q\) # ((\ref|mainCnt[31]~DUPLICATE_q\ & (!\ref|LessThan0~5_combout\ & \ref|state_reg.wait50~q\))) ) ) # ( !\ref|tick_disc~combout\ & ( (\ref|mainCnt[31]~DUPLICATE_q\ & 
-- (!\ref|LessThan0~5_combout\ & \ref|state_reg.wait50~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011110000111101001111000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	datab => \ref|ALT_INV_LessThan0~5_combout\,
	datac => \ref|ALT_INV_state_reg.idle~q\,
	datad => \ref|ALT_INV_state_reg.wait50~q\,
	dataf => \ref|ALT_INV_tick_disc~combout\,
	combout => \ref|Selector14~0_combout\);

-- Location: FF_X81_Y6_N5
\ref|state_reg.wait50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|Selector14~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.wait50~q\);

-- Location: LABCELL_X83_Y5_N42
\ref|state_next.checkMiddle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|state_next.checkMiddle~0_combout\ = ( \ref|LessThan0~5_combout\ & ( \ref|mainCnt[31]~DUPLICATE_q\ & ( (\ref|tick_guru~combout\ & \ref|state_reg.wait50~q\) ) ) ) # ( \ref|LessThan0~5_combout\ & ( !\ref|mainCnt[31]~DUPLICATE_q\ & ( 
-- (\ref|tick_guru~combout\ & \ref|state_reg.wait50~q\) ) ) ) # ( !\ref|LessThan0~5_combout\ & ( !\ref|mainCnt[31]~DUPLICATE_q\ & ( (\ref|tick_guru~combout\ & \ref|state_reg.wait50~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_tick_guru~combout\,
	datad => \ref|ALT_INV_state_reg.wait50~q\,
	datae => \ref|ALT_INV_LessThan0~5_combout\,
	dataf => \ref|ALT_INV_mainCnt[31]~DUPLICATE_q\,
	combout => \ref|state_next.checkMiddle~0_combout\);

-- Location: FF_X83_Y5_N44
\ref|state_reg.checkMiddle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|state_next.checkMiddle~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.checkMiddle~q\);

-- Location: LABCELL_X80_Y5_N24
\ref|state_next.go_guru_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|state_next.go_guru_state~0_combout\ = ( !\ref|Equal4~3_combout\ & ( \ref|Equal5~3_combout\ & ( \ref|state_reg.checkMiddle~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ref|ALT_INV_state_reg.checkMiddle~q\,
	datae => \ref|ALT_INV_Equal4~3_combout\,
	dataf => \ref|ALT_INV_Equal5~3_combout\,
	combout => \ref|state_next.go_guru_state~0_combout\);

-- Location: FF_X80_Y5_N26
\ref|state_reg.go_guru_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ref|state_next.go_guru_state~0_combout\,
	clrn => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref|state_reg.go_guru_state~q\);

-- Location: LABCELL_X81_Y6_N30
\ref|go_guru\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|go_guru~combout\ = (!\ref|state_reg.go_guru_state~q\ & !\ref|state_reg.unm_go_guru~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ref|ALT_INV_state_reg.go_guru_state~q\,
	datad => \ref|ALT_INV_state_reg.unm_go_guru~DUPLICATE_q\,
	combout => \ref|go_guru~combout\);

-- Location: LABCELL_X81_Y4_N57
\basis|control|guru|STATE~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|guru|STATE~13_combout\ = ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|data|rb|reg_GURU|q_s\(3) & ( (!\ref|go_guru~combout\ & (\basis|control|guru|STATE.CHECK_LAST~q\ & !\res~input_o\)) ) ) ) # ( 
-- !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|data|rb|reg_GURU|q_s\(3) & ( (!\ref|go_guru~combout\ & (\basis|control|guru|STATE.CHECK_LAST~q\ & (\basis|data|rb|reg_INIT|q_s\(3) & !\res~input_o\))) ) ) ) # ( 
-- !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( !\basis|data|rb|reg_GURU|q_s\(3) & ( (!\ref|go_guru~combout\ & (\basis|control|guru|STATE.CHECK_LAST~q\ & (\basis|data|rb|reg_INIT|q_s\(3) & !\res~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_go_guru~combout\,
	datab => \basis|control|guru|ALT_INV_STATE.CHECK_LAST~q\,
	datac => \basis|data|rb|reg_INIT|ALT_INV_q_s\(3),
	datad => \ALT_INV_res~input_o\,
	datae => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \basis|control|guru|STATE~13_combout\);

-- Location: FF_X81_Y4_N59
\basis|control|guru|STATE.LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|guru|STATE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|guru|STATE.LAST~q\);

-- Location: LABCELL_X83_Y4_N51
\basis|control|main|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector0~0_combout\ = ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_GURU|q_s\(3) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(3) ) ) ) # ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & ( \basis|data|rb|reg_GURU|q_s\(3) & ( 
-- (\basis|control|guru|STATE.LAST~q\ & !\basis|data|rb|reg_PRE_GURU|q_s\(3)) ) ) ) # ( \basis|control|guru|STATE.CLEAR_PREV~q\ & ( !\basis|data|rb|reg_GURU|q_s\(3) & ( !\basis|data|rb|reg_PRE_GURU|q_s\(3) ) ) ) # ( !\basis|control|guru|STATE.CLEAR_PREV~q\ & 
-- ( !\basis|data|rb|reg_GURU|q_s\(3) & ( (!\basis|control|guru|STATE.LAST~q\) # (!\basis|data|rb|reg_PRE_GURU|q_s\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111100001111000000110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datac => \basis|data|rb|reg_PRE_GURU|ALT_INV_q_s\(3),
	datae => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \basis|data|rb|reg_GURU|ALT_INV_q_s\(3),
	combout => \basis|control|main|Selector0~0_combout\);

-- Location: LABCELL_X80_Y8_N0
\basis|control|cnt_strat|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~105_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \basis|control|cnt_strat|Add0~106\ = CARRY(( \basis|control|cnt_strat|cnt_s[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \basis|control|cnt_strat|Add0~105_sumout\,
	cout => \basis|control|cnt_strat|Add0~106\);

-- Location: LABCELL_X81_Y7_N45
\basis|control|main|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector2~0_combout\ = ( \basis|control|main|STATE.CNT_START~q\ & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ ) ) # ( !\basis|control|main|STATE.CNT_START~q\ & ( \basis|control|main|STATE.STEP_ACTIVATION~q\ ) ) # ( 
-- \basis|control|main|STATE.CNT_START~q\ & ( !\basis|control|main|STATE.STEP_ACTIVATION~q\ & ( !\basis|control|cnt_strat|Equal0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	datae => \basis|control|main|ALT_INV_STATE.CNT_START~q\,
	dataf => \basis|control|main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \basis|control|main|Selector2~0_combout\);

-- Location: FF_X81_Y7_N47
\basis|control|main|STATE.CNT_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|main|Selector2~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|main|STATE.CNT_START~q\);

-- Location: LABCELL_X81_Y7_N27
\basis|control|cnt_strat|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|NEXT_STATE~0_combout\ = ( !\basis|control|cnt_strat|STATE~q\ & ( \basis|control|cnt_strat|Equal0~6_combout\ & ( \basis|control|main|STATE.CNT_START~q\ ) ) ) # ( \basis|control|cnt_strat|STATE~q\ & ( 
-- !\basis|control|cnt_strat|Equal0~6_combout\ ) ) # ( !\basis|control|cnt_strat|STATE~q\ & ( !\basis|control|cnt_strat|Equal0~6_combout\ & ( \basis|control|main|STATE.CNT_START~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|main|ALT_INV_STATE.CNT_START~q\,
	datae => \basis|control|cnt_strat|ALT_INV_STATE~q\,
	dataf => \basis|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \basis|control|cnt_strat|NEXT_STATE~0_combout\);

-- Location: FF_X81_Y7_N29
\basis|control|cnt_strat|STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|NEXT_STATE~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|STATE~q\);

-- Location: LABCELL_X81_Y7_N36
\basis|control|cnt_strat|cnt_s[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|cnt_s[14]~0_combout\ = ( \basis|control|cnt_strat|STATE~q\ & ( \basis|control|cnt_strat|Equal0~6_combout\ ) ) # ( !\basis|control|cnt_strat|STATE~q\ & ( \basis|control|cnt_strat|Equal0~6_combout\ ) ) # ( 
-- !\basis|control|cnt_strat|STATE~q\ & ( !\basis|control|cnt_strat|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \basis|control|cnt_strat|ALT_INV_STATE~q\,
	dataf => \basis|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \basis|control|cnt_strat|cnt_s[14]~0_combout\);

-- Location: FF_X80_Y8_N2
\basis|control|cnt_strat|cnt_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~105_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[0]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N3
\basis|control|cnt_strat|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~109_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(1) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~106\ ))
-- \basis|control|cnt_strat|Add0~110\ = CARRY(( \basis|control|cnt_strat|cnt_s\(1) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(1),
	cin => \basis|control|cnt_strat|Add0~106\,
	sumout => \basis|control|cnt_strat|Add0~109_sumout\,
	cout => \basis|control|cnt_strat|Add0~110\);

-- Location: FF_X80_Y8_N5
\basis|control|cnt_strat|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~109_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(1));

-- Location: LABCELL_X80_Y8_N6
\basis|control|cnt_strat|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~113_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(2) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~110\ ))
-- \basis|control|cnt_strat|Add0~114\ = CARRY(( \basis|control|cnt_strat|cnt_s\(2) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(2),
	cin => \basis|control|cnt_strat|Add0~110\,
	sumout => \basis|control|cnt_strat|Add0~113_sumout\,
	cout => \basis|control|cnt_strat|Add0~114\);

-- Location: FF_X80_Y8_N7
\basis|control|cnt_strat|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~113_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(2));

-- Location: LABCELL_X80_Y8_N9
\basis|control|cnt_strat|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~117_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[3]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~114\ ))
-- \basis|control|cnt_strat|Add0~118\ = CARRY(( \basis|control|cnt_strat|cnt_s[3]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s[3]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~114\,
	sumout => \basis|control|cnt_strat|Add0~117_sumout\,
	cout => \basis|control|cnt_strat|Add0~118\);

-- Location: FF_X80_Y8_N11
\basis|control|cnt_strat|cnt_s[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~117_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[3]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N12
\basis|control|cnt_strat|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~65_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(4) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~118\ ))
-- \basis|control|cnt_strat|Add0~66\ = CARRY(( \basis|control|cnt_strat|cnt_s\(4) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(4),
	cin => \basis|control|cnt_strat|Add0~118\,
	sumout => \basis|control|cnt_strat|Add0~65_sumout\,
	cout => \basis|control|cnt_strat|Add0~66\);

-- Location: FF_X80_Y8_N14
\basis|control|cnt_strat|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~65_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(4));

-- Location: LABCELL_X80_Y8_N15
\basis|control|cnt_strat|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~121_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~66\ ))
-- \basis|control|cnt_strat|Add0~122\ = CARRY(( \basis|control|cnt_strat|cnt_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s[5]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~66\,
	sumout => \basis|control|cnt_strat|Add0~121_sumout\,
	cout => \basis|control|cnt_strat|Add0~122\);

-- Location: FF_X80_Y8_N17
\basis|control|cnt_strat|cnt_s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~121_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[5]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N18
\basis|control|cnt_strat|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~125_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~122\ ))
-- \basis|control|cnt_strat|Add0~126\ = CARRY(( \basis|control|cnt_strat|cnt_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s[6]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~122\,
	sumout => \basis|control|cnt_strat|Add0~125_sumout\,
	cout => \basis|control|cnt_strat|Add0~126\);

-- Location: FF_X80_Y8_N20
\basis|control|cnt_strat|cnt_s[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~125_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[6]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N21
\basis|control|cnt_strat|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~57_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~126\ ))
-- \basis|control|cnt_strat|Add0~58\ = CARRY(( \basis|control|cnt_strat|cnt_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s[7]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~126\,
	sumout => \basis|control|cnt_strat|Add0~57_sumout\,
	cout => \basis|control|cnt_strat|Add0~58\);

-- Location: FF_X80_Y8_N23
\basis|control|cnt_strat|cnt_s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~57_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[7]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N24
\basis|control|cnt_strat|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~61_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(8) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~58\ ))
-- \basis|control|cnt_strat|Add0~62\ = CARRY(( \basis|control|cnt_strat|cnt_s\(8) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(8),
	cin => \basis|control|cnt_strat|Add0~58\,
	sumout => \basis|control|cnt_strat|Add0~61_sumout\,
	cout => \basis|control|cnt_strat|Add0~62\);

-- Location: FF_X80_Y8_N26
\basis|control|cnt_strat|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~61_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(8));

-- Location: LABCELL_X80_Y8_N27
\basis|control|cnt_strat|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~101_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~62\ ))
-- \basis|control|cnt_strat|Add0~102\ = CARRY(( \basis|control|cnt_strat|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s[9]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~62\,
	sumout => \basis|control|cnt_strat|Add0~101_sumout\,
	cout => \basis|control|cnt_strat|Add0~102\);

-- Location: FF_X80_Y8_N29
\basis|control|cnt_strat|cnt_s[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~101_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[9]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N30
\basis|control|cnt_strat|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~97_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(10) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~102\ ))
-- \basis|control|cnt_strat|Add0~98\ = CARRY(( \basis|control|cnt_strat|cnt_s\(10) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(10),
	cin => \basis|control|cnt_strat|Add0~102\,
	sumout => \basis|control|cnt_strat|Add0~97_sumout\,
	cout => \basis|control|cnt_strat|Add0~98\);

-- Location: FF_X80_Y8_N31
\basis|control|cnt_strat|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~97_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(10));

-- Location: LABCELL_X80_Y8_N33
\basis|control|cnt_strat|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~93_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~98\ ))
-- \basis|control|cnt_strat|Add0~94\ = CARRY(( \basis|control|cnt_strat|cnt_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_cnt_s[11]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~98\,
	sumout => \basis|control|cnt_strat|Add0~93_sumout\,
	cout => \basis|control|cnt_strat|Add0~94\);

-- Location: FF_X80_Y8_N35
\basis|control|cnt_strat|cnt_s[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~93_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[11]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N36
\basis|control|cnt_strat|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~89_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~94\ ))
-- \basis|control|cnt_strat|Add0~90\ = CARRY(( \basis|control|cnt_strat|cnt_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s[12]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~94\,
	sumout => \basis|control|cnt_strat|Add0~89_sumout\,
	cout => \basis|control|cnt_strat|Add0~90\);

-- Location: FF_X80_Y8_N38
\basis|control|cnt_strat|cnt_s[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~89_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[12]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N39
\basis|control|cnt_strat|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~85_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~90\ ))
-- \basis|control|cnt_strat|Add0~86\ = CARRY(( \basis|control|cnt_strat|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~90\,
	sumout => \basis|control|cnt_strat|Add0~85_sumout\,
	cout => \basis|control|cnt_strat|Add0~86\);

-- Location: FF_X80_Y8_N41
\basis|control|cnt_strat|cnt_s[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~85_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[13]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N42
\basis|control|cnt_strat|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~81_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(14) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~86\ ))
-- \basis|control|cnt_strat|Add0~82\ = CARRY(( \basis|control|cnt_strat|cnt_s\(14) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(14),
	cin => \basis|control|cnt_strat|Add0~86\,
	sumout => \basis|control|cnt_strat|Add0~81_sumout\,
	cout => \basis|control|cnt_strat|Add0~82\);

-- Location: FF_X80_Y8_N43
\basis|control|cnt_strat|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~81_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(14));

-- Location: LABCELL_X80_Y8_N45
\basis|control|cnt_strat|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~53_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(15) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~82\ ))
-- \basis|control|cnt_strat|Add0~54\ = CARRY(( \basis|control|cnt_strat|cnt_s\(15) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(15),
	cin => \basis|control|cnt_strat|Add0~82\,
	sumout => \basis|control|cnt_strat|Add0~53_sumout\,
	cout => \basis|control|cnt_strat|Add0~54\);

-- Location: FF_X80_Y8_N47
\basis|control|cnt_strat|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~53_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(15));

-- Location: LABCELL_X80_Y8_N48
\basis|control|cnt_strat|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~69_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(16) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~54\ ))
-- \basis|control|cnt_strat|Add0~70\ = CARRY(( \basis|control|cnt_strat|cnt_s\(16) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(16),
	cin => \basis|control|cnt_strat|Add0~54\,
	sumout => \basis|control|cnt_strat|Add0~69_sumout\,
	cout => \basis|control|cnt_strat|Add0~70\);

-- Location: FF_X80_Y8_N50
\basis|control|cnt_strat|cnt_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~69_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(16));

-- Location: LABCELL_X80_Y8_N51
\basis|control|cnt_strat|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~21_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(17) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~70\ ))
-- \basis|control|cnt_strat|Add0~22\ = CARRY(( \basis|control|cnt_strat|cnt_s\(17) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(17),
	cin => \basis|control|cnt_strat|Add0~70\,
	sumout => \basis|control|cnt_strat|Add0~21_sumout\,
	cout => \basis|control|cnt_strat|Add0~22\);

-- Location: FF_X80_Y8_N52
\basis|control|cnt_strat|cnt_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~21_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(17));

-- Location: LABCELL_X80_Y8_N54
\basis|control|cnt_strat|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~25_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(18) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~22\ ))
-- \basis|control|cnt_strat|Add0~26\ = CARRY(( \basis|control|cnt_strat|cnt_s\(18) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(18),
	cin => \basis|control|cnt_strat|Add0~22\,
	sumout => \basis|control|cnt_strat|Add0~25_sumout\,
	cout => \basis|control|cnt_strat|Add0~26\);

-- Location: FF_X80_Y8_N56
\basis|control|cnt_strat|cnt_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~25_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(18));

-- Location: LABCELL_X80_Y8_N57
\basis|control|cnt_strat|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~29_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(19) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~26\ ))
-- \basis|control|cnt_strat|Add0~30\ = CARRY(( \basis|control|cnt_strat|cnt_s\(19) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(19),
	cin => \basis|control|cnt_strat|Add0~26\,
	sumout => \basis|control|cnt_strat|Add0~29_sumout\,
	cout => \basis|control|cnt_strat|Add0~30\);

-- Location: FF_X80_Y8_N59
\basis|control|cnt_strat|cnt_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~29_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(19));

-- Location: LABCELL_X80_Y7_N0
\basis|control|cnt_strat|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~1_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(20) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~30\ ))
-- \basis|control|cnt_strat|Add0~2\ = CARRY(( \basis|control|cnt_strat|cnt_s\(20) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(20),
	cin => \basis|control|cnt_strat|Add0~30\,
	sumout => \basis|control|cnt_strat|Add0~1_sumout\,
	cout => \basis|control|cnt_strat|Add0~2\);

-- Location: FF_X80_Y7_N2
\basis|control|cnt_strat|cnt_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~1_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(20));

-- Location: LABCELL_X80_Y7_N3
\basis|control|cnt_strat|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~17_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[21]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~2\ ))
-- \basis|control|cnt_strat|Add0~18\ = CARRY(( \basis|control|cnt_strat|cnt_s[21]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s[21]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~2\,
	sumout => \basis|control|cnt_strat|Add0~17_sumout\,
	cout => \basis|control|cnt_strat|Add0~18\);

-- Location: FF_X80_Y7_N5
\basis|control|cnt_strat|cnt_s[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~17_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[21]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N6
\basis|control|cnt_strat|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~5_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(22) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~18\ ))
-- \basis|control|cnt_strat|Add0~6\ = CARRY(( \basis|control|cnt_strat|cnt_s\(22) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(22),
	cin => \basis|control|cnt_strat|Add0~18\,
	sumout => \basis|control|cnt_strat|Add0~5_sumout\,
	cout => \basis|control|cnt_strat|Add0~6\);

-- Location: FF_X80_Y7_N8
\basis|control|cnt_strat|cnt_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~5_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(22));

-- Location: LABCELL_X80_Y7_N9
\basis|control|cnt_strat|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~13_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(23) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~6\ ))
-- \basis|control|cnt_strat|Add0~14\ = CARRY(( \basis|control|cnt_strat|cnt_s\(23) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(23),
	cin => \basis|control|cnt_strat|Add0~6\,
	sumout => \basis|control|cnt_strat|Add0~13_sumout\,
	cout => \basis|control|cnt_strat|Add0~14\);

-- Location: FF_X80_Y7_N10
\basis|control|cnt_strat|cnt_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~13_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(23));

-- Location: LABCELL_X80_Y7_N12
\basis|control|cnt_strat|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~9_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(24) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~14\ ))
-- \basis|control|cnt_strat|Add0~10\ = CARRY(( \basis|control|cnt_strat|cnt_s\(24) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(24),
	cin => \basis|control|cnt_strat|Add0~14\,
	sumout => \basis|control|cnt_strat|Add0~9_sumout\,
	cout => \basis|control|cnt_strat|Add0~10\);

-- Location: FF_X80_Y7_N13
\basis|control|cnt_strat|cnt_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~9_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(24));

-- Location: LABCELL_X80_Y7_N15
\basis|control|cnt_strat|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~49_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(25) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~10\ ))
-- \basis|control|cnt_strat|Add0~50\ = CARRY(( \basis|control|cnt_strat|cnt_s\(25) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(25),
	cin => \basis|control|cnt_strat|Add0~10\,
	sumout => \basis|control|cnt_strat|Add0~49_sumout\,
	cout => \basis|control|cnt_strat|Add0~50\);

-- Location: FF_X80_Y7_N17
\basis|control|cnt_strat|cnt_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~49_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(25));

-- Location: LABCELL_X80_Y7_N18
\basis|control|cnt_strat|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~45_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[26]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~50\ ))
-- \basis|control|cnt_strat|Add0~46\ = CARRY(( \basis|control|cnt_strat|cnt_s[26]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s[26]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~50\,
	sumout => \basis|control|cnt_strat|Add0~45_sumout\,
	cout => \basis|control|cnt_strat|Add0~46\);

-- Location: FF_X80_Y7_N20
\basis|control|cnt_strat|cnt_s[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~45_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[26]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N21
\basis|control|cnt_strat|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~41_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(27) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~46\ ))
-- \basis|control|cnt_strat|Add0~42\ = CARRY(( \basis|control|cnt_strat|cnt_s\(27) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(27),
	cin => \basis|control|cnt_strat|Add0~46\,
	sumout => \basis|control|cnt_strat|Add0~41_sumout\,
	cout => \basis|control|cnt_strat|Add0~42\);

-- Location: FF_X80_Y7_N23
\basis|control|cnt_strat|cnt_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~41_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(27));

-- Location: LABCELL_X80_Y7_N24
\basis|control|cnt_strat|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~37_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(28) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~42\ ))
-- \basis|control|cnt_strat|Add0~38\ = CARRY(( \basis|control|cnt_strat|cnt_s\(28) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(28),
	cin => \basis|control|cnt_strat|Add0~42\,
	sumout => \basis|control|cnt_strat|Add0~37_sumout\,
	cout => \basis|control|cnt_strat|Add0~38\);

-- Location: FF_X80_Y7_N26
\basis|control|cnt_strat|cnt_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~37_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(28));

-- Location: LABCELL_X80_Y7_N27
\basis|control|cnt_strat|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~33_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(29) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~38\ ))
-- \basis|control|cnt_strat|Add0~34\ = CARRY(( \basis|control|cnt_strat|cnt_s\(29) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(29),
	cin => \basis|control|cnt_strat|Add0~38\,
	sumout => \basis|control|cnt_strat|Add0~33_sumout\,
	cout => \basis|control|cnt_strat|Add0~34\);

-- Location: FF_X80_Y7_N29
\basis|control|cnt_strat|cnt_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~33_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(29));

-- Location: LABCELL_X80_Y7_N30
\basis|control|cnt_strat|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~77_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s\(30) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~34\ ))
-- \basis|control|cnt_strat|Add0~78\ = CARRY(( \basis|control|cnt_strat|cnt_s\(30) ) + ( GND ) + ( \basis|control|cnt_strat|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(30),
	cin => \basis|control|cnt_strat|Add0~34\,
	sumout => \basis|control|cnt_strat|Add0~77_sumout\,
	cout => \basis|control|cnt_strat|Add0~78\);

-- Location: FF_X80_Y7_N31
\basis|control|cnt_strat|cnt_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~77_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(30));

-- Location: FF_X80_Y7_N35
\basis|control|cnt_strat|cnt_s[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~73_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[31]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N33
\basis|control|cnt_strat|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Add0~73_sumout\ = SUM(( \basis|control|cnt_strat|cnt_s[31]~DUPLICATE_q\ ) + ( GND ) + ( \basis|control|cnt_strat|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_cnt_s[31]~DUPLICATE_q\,
	cin => \basis|control|cnt_strat|Add0~78\,
	sumout => \basis|control|cnt_strat|Add0~73_sumout\);

-- Location: FF_X80_Y7_N34
\basis|control|cnt_strat|cnt_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~73_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(31));

-- Location: FF_X80_Y8_N22
\basis|control|cnt_strat|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~57_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(7));

-- Location: LABCELL_X81_Y7_N0
\basis|control|cnt_strat|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Equal0~3_combout\ = ( !\basis|control|cnt_strat|cnt_s\(16) & ( \basis|control|cnt_strat|cnt_s\(7) & ( (!\basis|control|cnt_strat|cnt_s\(30) & (!\basis|control|cnt_strat|cnt_s\(31) & (!\basis|control|cnt_strat|cnt_s\(4) & 
-- !\basis|control|cnt_strat|cnt_s\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_cnt_s\(30),
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(31),
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(4),
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(8),
	datae => \basis|control|cnt_strat|ALT_INV_cnt_s\(16),
	dataf => \basis|control|cnt_strat|ALT_INV_cnt_s\(7),
	combout => \basis|control|cnt_strat|Equal0~3_combout\);

-- Location: FF_X80_Y7_N19
\basis|control|cnt_strat|cnt_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~45_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(26));

-- Location: FF_X80_Y8_N46
\basis|control|cnt_strat|cnt_s[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~53_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[15]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N42
\basis|control|cnt_strat|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Equal0~2_combout\ = ( !\basis|control|cnt_strat|cnt_s[15]~DUPLICATE_q\ & ( !\basis|control|cnt_strat|cnt_s\(28) & ( (!\basis|control|cnt_strat|cnt_s\(27) & (!\basis|control|cnt_strat|cnt_s\(25) & 
-- (!\basis|control|cnt_strat|cnt_s\(29) & !\basis|control|cnt_strat|cnt_s\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_cnt_s\(27),
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(25),
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(29),
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(26),
	datae => \basis|control|cnt_strat|ALT_INV_cnt_s[15]~DUPLICATE_q\,
	dataf => \basis|control|cnt_strat|ALT_INV_cnt_s\(28),
	combout => \basis|control|cnt_strat|Equal0~2_combout\);

-- Location: FF_X80_Y8_N40
\basis|control|cnt_strat|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~85_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(13));

-- Location: FF_X80_Y8_N37
\basis|control|cnt_strat|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~89_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(12));

-- Location: FF_X80_Y8_N34
\basis|control|cnt_strat|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~93_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(11));

-- Location: FF_X80_Y8_N28
\basis|control|cnt_strat|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~101_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(9));

-- Location: LABCELL_X81_Y8_N48
\basis|control|cnt_strat|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Equal0~4_combout\ = ( !\basis|control|cnt_strat|cnt_s\(9) & ( !\basis|control|cnt_strat|cnt_s\(10) & ( (!\basis|control|cnt_strat|cnt_s\(13) & (!\basis|control|cnt_strat|cnt_s\(14) & (!\basis|control|cnt_strat|cnt_s\(12) & 
-- !\basis|control|cnt_strat|cnt_s\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_cnt_s\(13),
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(14),
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(12),
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(11),
	datae => \basis|control|cnt_strat|ALT_INV_cnt_s\(9),
	dataf => \basis|control|cnt_strat|ALT_INV_cnt_s\(10),
	combout => \basis|control|cnt_strat|Equal0~4_combout\);

-- Location: LABCELL_X80_Y7_N48
\basis|control|cnt_strat|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Equal0~0_combout\ = ( !\basis|control|cnt_strat|cnt_s\(20) & ( !\basis|control|cnt_strat|cnt_s\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \basis|control|cnt_strat|ALT_INV_cnt_s\(20),
	dataf => \basis|control|cnt_strat|ALT_INV_cnt_s\(22),
	combout => \basis|control|cnt_strat|Equal0~0_combout\);

-- Location: FF_X80_Y8_N1
\basis|control|cnt_strat|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~105_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(0));

-- Location: FF_X80_Y8_N10
\basis|control|cnt_strat|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~117_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(3));

-- Location: FF_X80_Y8_N16
\basis|control|cnt_strat|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~121_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(5));

-- Location: FF_X80_Y8_N19
\basis|control|cnt_strat|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~125_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(6));

-- Location: LABCELL_X81_Y7_N54
\basis|control|cnt_strat|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Equal0~5_combout\ = ( !\basis|control|cnt_strat|cnt_s\(5) & ( \basis|control|cnt_strat|cnt_s\(6) & ( (!\basis|control|cnt_strat|cnt_s\(0) & (!\basis|control|cnt_strat|cnt_s\(1) & (!\basis|control|cnt_strat|cnt_s\(2) & 
-- \basis|control|cnt_strat|cnt_s\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_cnt_s\(0),
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(1),
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s\(2),
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(3),
	datae => \basis|control|cnt_strat|ALT_INV_cnt_s\(5),
	dataf => \basis|control|cnt_strat|ALT_INV_cnt_s\(6),
	combout => \basis|control|cnt_strat|Equal0~5_combout\);

-- Location: FF_X80_Y7_N4
\basis|control|cnt_strat|cnt_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~17_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s\(21));

-- Location: FF_X80_Y8_N58
\basis|control|cnt_strat|cnt_s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|cnt_strat|Add0~29_sumout\,
	sclr => \basis|control|cnt_strat|cnt_s[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|cnt_strat|cnt_s[19]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N30
\basis|control|cnt_strat|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Equal0~1_combout\ = ( !\basis|control|cnt_strat|cnt_s\(17) & ( !\basis|control|cnt_strat|cnt_s\(18) & ( (!\basis|control|cnt_strat|cnt_s\(24) & (!\basis|control|cnt_strat|cnt_s\(21) & 
-- (!\basis|control|cnt_strat|cnt_s[19]~DUPLICATE_q\ & !\basis|control|cnt_strat|cnt_s\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_cnt_s\(24),
	datab => \basis|control|cnt_strat|ALT_INV_cnt_s\(21),
	datac => \basis|control|cnt_strat|ALT_INV_cnt_s[19]~DUPLICATE_q\,
	datad => \basis|control|cnt_strat|ALT_INV_cnt_s\(23),
	datae => \basis|control|cnt_strat|ALT_INV_cnt_s\(17),
	dataf => \basis|control|cnt_strat|ALT_INV_cnt_s\(18),
	combout => \basis|control|cnt_strat|Equal0~1_combout\);

-- Location: LABCELL_X81_Y7_N12
\basis|control|cnt_strat|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|cnt_strat|Equal0~6_combout\ = ( \basis|control|cnt_strat|Equal0~5_combout\ & ( \basis|control|cnt_strat|Equal0~1_combout\ & ( (\basis|control|cnt_strat|Equal0~3_combout\ & (\basis|control|cnt_strat|Equal0~2_combout\ & 
-- (\basis|control|cnt_strat|Equal0~4_combout\ & \basis|control|cnt_strat|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|cnt_strat|ALT_INV_Equal0~3_combout\,
	datab => \basis|control|cnt_strat|ALT_INV_Equal0~2_combout\,
	datac => \basis|control|cnt_strat|ALT_INV_Equal0~4_combout\,
	datad => \basis|control|cnt_strat|ALT_INV_Equal0~0_combout\,
	datae => \basis|control|cnt_strat|ALT_INV_Equal0~5_combout\,
	dataf => \basis|control|cnt_strat|ALT_INV_Equal0~1_combout\,
	combout => \basis|control|cnt_strat|Equal0~6_combout\);

-- Location: LABCELL_X79_Y6_N33
\basis|control|main|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector0~1_combout\ = ( \ref|state_reg.conflict1~q\ & ( \hold|state_reg~q\ & ( (\enable~input_o\ & ((\hold3|state_reg~q\) # (\disc_2_base.end_of_disc~input_o\))) ) ) ) # ( !\ref|state_reg.conflict1~q\ & ( \hold|state_reg~q\ & ( 
-- (\enable~input_o\ & ((\hold3|state_reg~q\) # (\disc_2_base.end_of_disc~input_o\))) ) ) ) # ( \ref|state_reg.conflict1~q\ & ( !\hold|state_reg~q\ & ( (\enable~input_o\ & ((\hold3|state_reg~q\) # (\disc_2_base.end_of_disc~input_o\))) ) ) ) # ( 
-- !\ref|state_reg.conflict1~q\ & ( !\hold|state_reg~q\ & ( (!\enable~input_o\ & (!\ref|state_reg.conflict~q\)) # (\enable~input_o\ & (((\hold3|state_reg~q\) # (\disc_2_base.end_of_disc~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110111011000000110011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.conflict~q\,
	datab => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_disc_2_base.end_of_disc~input_o\,
	datad => \hold3|ALT_INV_state_reg~q\,
	datae => \ref|ALT_INV_state_reg.conflict1~q\,
	dataf => \hold|ALT_INV_state_reg~q\,
	combout => \basis|control|main|Selector0~1_combout\);

-- Location: LABCELL_X81_Y7_N48
\basis|control|main|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|main|Selector0~2_combout\ = ( \basis|control|main|STATE.CHECK_END~q\ & ( \basis|control|main|STATE.CNT_START~q\ & ( ((!\basis|control|main|Selector0~1_combout\) # (\basis|control|cnt_strat|Equal0~6_combout\)) # 
-- (\basis|control|main|Selector0~0_combout\) ) ) ) # ( !\basis|control|main|STATE.CHECK_END~q\ & ( \basis|control|main|STATE.CNT_START~q\ & ( \basis|control|cnt_strat|Equal0~6_combout\ ) ) ) # ( \basis|control|main|STATE.CHECK_END~q\ & ( 
-- !\basis|control|main|STATE.CNT_START~q\ & ( (!\basis|control|main|Selector0~1_combout\) # (\basis|control|main|Selector0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100110011001100111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_Selector0~0_combout\,
	datab => \basis|control|cnt_strat|ALT_INV_Equal0~6_combout\,
	datac => \basis|control|main|ALT_INV_Selector0~1_combout\,
	datae => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	dataf => \basis|control|main|ALT_INV_STATE.CNT_START~q\,
	combout => \basis|control|main|Selector0~2_combout\);

-- Location: FF_X81_Y7_N50
\basis|control|main|STATE.CHECK_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \basis|control|main|Selector0~2_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \basis|control|main|STATE.CHECK_END~q\);

-- Location: MLABCELL_X82_Y6_N12
\print_rdy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \print_rdy~0_combout\ = ( \step|cnt_disc_rdy~0_combout\ & ( \enable~input_o\ & ( (\basis|control|main|STATE.CHECK_END~q\ & ((!\disc_2_base.end_of_disc~input_o\) # (\step|rdy_v1_s~q\))) ) ) ) # ( !\step|cnt_disc_rdy~0_combout\ & ( \enable~input_o\ & ( 
-- (\step|rdy_v1_s~q\ & (\basis|control|main|STATE.CHECK_END~q\ & ((!\button|speed_sync_s.ONE_X~q\) # (\disc_2_base.end_of_disc~input_o\)))) ) ) ) # ( \step|cnt_disc_rdy~0_combout\ & ( !\enable~input_o\ & ( (\step|rdy_v1_s~q\ & 
-- \basis|control|main|STATE.CHECK_END~q\) ) ) ) # ( !\step|cnt_disc_rdy~0_combout\ & ( !\enable~input_o\ & ( (\step|rdy_v1_s~q\ & \basis|control|main|STATE.CHECK_END~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010000000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_rdy_v1_s~q\,
	datab => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	datac => \button|ALT_INV_speed_sync_s.ONE_X~q\,
	datad => \ALT_INV_disc_2_base.end_of_disc~input_o\,
	datae => \step|ALT_INV_cnt_disc_rdy~0_combout\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \print_rdy~0_combout\);

-- Location: LABCELL_X83_Y5_N12
\step|cnt_disc_rdy~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \step|cnt_disc_rdy~2_combout\ = ( \basis|control|main|STATE.CHECK_END~q\ & ( (\enable~input_o\ & ((\step|cnt_disc_rdy~0_combout\) # (\step|cnt_disc_rdy~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \step|ALT_INV_cnt_disc_rdy~1_combout\,
	datab => \ALT_INV_enable~input_o\,
	datad => \step|ALT_INV_cnt_disc_rdy~0_combout\,
	dataf => \basis|control|main|ALT_INV_STATE.CHECK_END~q\,
	combout => \step|cnt_disc_rdy~2_combout\);

-- Location: LABCELL_X81_Y6_N45
\ref|go_disc\ : cyclonev_lcell_comb
-- Equation(s):
-- \ref|go_disc~combout\ = (\ref|state_reg.unm_godisc_BL~q\) # (\ref|state_reg.unm_go_discB~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ref|ALT_INV_state_reg.unm_go_discB~q\,
	datad => \ref|ALT_INV_state_reg.unm_godisc_BL~q\,
	combout => \ref|go_disc~combout\);

-- Location: LABCELL_X81_Y4_N0
\basis|control|ctrl_2_dp.rb_INIT_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ = ( !\basis|control|init|STATE.DONE~q\ & ( (\basis|control|init|STATE.IDLE~q\ & !\basis|control|main|STATE.INIT_ACTIVATION~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \basis|control|init|ALT_INV_STATE.IDLE~q\,
	datad => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|control|init|ALT_INV_STATE.DONE~q\,
	combout => \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\);

-- Location: LABCELL_X80_Y4_N48
\basis|control|ctrl_2_mem.mem_wr_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_mem.mem_wr_en~0_combout\ = ( \basis|control|guru|STATE.LAST~q\ & ( \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ ) ) # ( !\basis|control|guru|STATE.LAST~q\ & ( \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ ) ) # ( 
-- \basis|control|guru|STATE.LAST~q\ & ( !\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( \basis|control|main|STATE.INIT_ACTIVATION~q\ ) ) ) # ( !\basis|control|guru|STATE.LAST~q\ & ( !\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( 
-- (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (((\basis|control|guru|NEXT_STATE.CLEAR_PREV~0_combout\) # (\basis|control|guru|STATE.WRITE_RAND~q\)) # (\basis|control|guru|STATE.CLEAR_PREV~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datad => \basis|control|guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\,
	datae => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	dataf => \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	combout => \basis|control|ctrl_2_mem.mem_wr_en~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\disc_2_mem.mem_wr_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.mem_wr_en\,
	o => \disc_2_mem.mem_wr_en~input_o\);

-- Location: LABCELL_X79_Y5_N39
\basis|control|ctrl_2_dp.cg_sel.GURU~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.cg_sel.GURU~0_combout\ = ( \basis|control|guru|STATE.START_WALKING~q\ & ( ((!\basis|control|main|STATE.INIT_ACTIVATION~q\) # (\basis|control|guru|STATE.CLEAR_PREV~q\)) # (\basis|control|guru|STATE.LAST~q\) ) ) # ( 
-- !\basis|control|guru|STATE.START_WALKING~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	combout => \basis|control|ctrl_2_dp.cg_sel.GURU~0_combout\);

-- Location: IOIBUF_X88_Y0_N19
\mem_a_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(0),
	o => \mem_a_addr[0]~input_o\);

-- Location: LABCELL_X80_Y4_N24
\basis|control|ctrl_2_mem.mem_wr_en~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ = ( !\basis|control|guru|STATE.WRITE_DUO~q\ & ( !\basis|control|guru|STATE.WRITE_GURU~q\ & ( (!\basis|control|guru|STATE.CLEAR_PREV~q\ & (!\basis|control|guru|STATE.LAST~q\ & 
-- !\basis|control|guru|STATE.WRITE_RAND~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datab => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datac => \basis|control|guru|ALT_INV_STATE.WRITE_RAND~q\,
	datae => \basis|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \basis|control|guru|ALT_INV_STATE.WRITE_GURU~q\,
	combout => \basis|control|ctrl_2_mem.mem_wr_en~1_combout\);

-- Location: LABCELL_X81_Y4_N48
\a_addr_s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_addr_s[0]~0_combout\ = ( \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( \basis|data|rb|rb_out[0]~2_combout\ ) ) ) # ( !\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( 
-- \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( \mem_a_addr[0]~input_o\ ) ) ) # ( \basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( !\basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( \basis|data|rb|rb_out[0]~2_combout\ ) ) ) # ( 
-- !\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ( !\basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\mem_a_addr[0]~input_o\)) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- ((\basis|data|rb|rb_out[0]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datab => \ALT_INV_mem_a_addr[0]~input_o\,
	datac => \basis|data|rb|ALT_INV_rb_out[0]~2_combout\,
	datae => \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	dataf => \basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	combout => \a_addr_s[0]~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\mem_a_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(1),
	o => \mem_a_addr[1]~input_o\);

-- Location: LABCELL_X77_Y4_N57
\a_addr_s[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_addr_s[1]~1_combout\ = ( \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( \basis|data|rb|rb_out[1]~3_combout\ & ( (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\) # (\mem_a_addr[1]~input_o\) ) ) ) # ( !\basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & 
-- ( \basis|data|rb|rb_out[1]~3_combout\ & ( ((\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\) # (\basis|control|main|STATE.INIT_ACTIVATION~q\)) # (\mem_a_addr[1]~input_o\) ) ) ) # ( \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( 
-- !\basis|data|rb|rb_out[1]~3_combout\ & ( (\mem_a_addr[1]~input_o\ & !\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\) ) ) ) # ( !\basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( !\basis|data|rb|rb_out[1]~3_combout\ & ( (\mem_a_addr[1]~input_o\ & 
-- (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & !\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010101010000000001011111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem_a_addr[1]~input_o\,
	datac => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	datae => \basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	dataf => \basis|data|rb|ALT_INV_rb_out[1]~3_combout\,
	combout => \a_addr_s[1]~1_combout\);

-- Location: IOIBUF_X80_Y0_N1
\mem_a_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(2),
	o => \mem_a_addr[2]~input_o\);

-- Location: LABCELL_X80_Y4_N9
\a_addr_s[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_addr_s[2]~2_combout\ = ( \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & (\mem_a_addr[2]~input_o\)) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ((\basis|data|rb|rb_out[2]~4_combout\))) ) ) # 
-- ( !\basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ((!\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\mem_a_addr[2]~input_o\)) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & 
-- ((\basis|data|rb|rb_out[2]~4_combout\))))) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & (((\basis|data|rb|rb_out[2]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011010100110011001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem_a_addr[2]~input_o\,
	datab => \basis|data|rb|ALT_INV_rb_out[2]~4_combout\,
	datac => \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	datad => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	combout => \a_addr_s[2]~2_combout\);

-- Location: IOIBUF_X84_Y0_N52
\mem_a_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(3),
	o => \mem_a_addr[3]~input_o\);

-- Location: LABCELL_X81_Y4_N15
\a_addr_s[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_addr_s[3]~3_combout\ = ( \basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ((\mem_a_addr[3]~input_o\))) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & (\basis|data|rb|rb_out[3]~5_combout\)) ) ) # 
-- ( !\basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & ( (!\basis|control|main|STATE.INIT_ACTIVATION~q\ & ((!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & ((\mem_a_addr[3]~input_o\))) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & 
-- (\basis|data|rb|rb_out[3]~5_combout\)))) # (\basis|control|main|STATE.INIT_ACTIVATION~q\ & (\basis|data|rb|rb_out[3]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110101010101000111010101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|data|rb|ALT_INV_rb_out[3]~5_combout\,
	datab => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \ALT_INV_mem_a_addr[3]~input_o\,
	datad => \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	dataf => \basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	combout => \a_addr_s[3]~3_combout\);

-- Location: IOIBUF_X82_Y0_N58
\mem_a_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(4),
	o => \mem_a_addr[4]~input_o\);

-- Location: LABCELL_X80_Y4_N30
\a_addr_s[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_addr_s[4]~4_combout\ = ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|data|rb|rb_out[4]~6_combout\ & ( (!\basis|control|ctrl_2_mem.mem_wr_en~1_combout\) # ((\mem_a_addr[4]~input_o\) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\)) ) ) ) # 
-- ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|data|rb|rb_out[4]~6_combout\ & ( (\mem_a_addr[4]~input_o\) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\) ) ) ) # ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( 
-- !\basis|data|rb|rb_out[4]~6_combout\ & ( (\basis|control|ctrl_2_mem.mem_wr_en~1_combout\ & (!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & \mem_a_addr[4]~input_o\)) ) ) ) # ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( 
-- !\basis|data|rb|rb_out[4]~6_combout\ & ( (!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & \mem_a_addr[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000001000000010000111111001111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	datab => \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	datac => \ALT_INV_mem_a_addr[4]~input_o\,
	datae => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|data|rb|ALT_INV_rb_out[4]~6_combout\,
	combout => \a_addr_s[4]~4_combout\);

-- Location: IOIBUF_X80_Y0_N35
\mem_a_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_addr(5),
	o => \mem_a_addr[5]~input_o\);

-- Location: LABCELL_X77_Y4_N27
\a_addr_s[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_addr_s[5]~5_combout\ = ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|data|rb|rb_out[5]~7_combout\ & ( ((!\basis|control|ctrl_2_mem.mem_wr_en~1_combout\) # (\mem_a_addr[5]~input_o\)) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\) ) ) ) # 
-- ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( \basis|data|rb|rb_out[5]~7_combout\ & ( (\mem_a_addr[5]~input_o\) # (\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\) ) ) ) # ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( 
-- !\basis|data|rb|rb_out[5]~7_combout\ & ( (!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & (\mem_a_addr[5]~input_o\ & \basis|control|ctrl_2_mem.mem_wr_en~1_combout\)) ) ) ) # ( !\basis|control|main|STATE.INIT_ACTIVATION~q\ & ( 
-- !\basis|data|rb|rb_out[5]~7_combout\ & ( (!\basis|control|ctrl_2_dp.rb_INIT_en~0_combout\ & \mem_a_addr[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000101001011111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|ALT_INV_ctrl_2_dp.rb_INIT_en~0_combout\,
	datac => \ALT_INV_mem_a_addr[5]~input_o\,
	datad => \basis|control|ALT_INV_ctrl_2_mem.mem_wr_en~1_combout\,
	datae => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \basis|data|rb|ALT_INV_rb_out[5]~7_combout\,
	combout => \a_addr_s[5]~5_combout\);

-- Location: IOIBUF_X68_Y0_N52
\disc_2_mem.data_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(0),
	o => \disc_2_mem.data_b[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\disc_2_mem.mem_b_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.mem_b_addr\(0),
	o => \disc_2_mem.mem_b_addr[0]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\disc_2_mem.mem_b_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.mem_b_addr\(1),
	o => \disc_2_mem.mem_b_addr[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\disc_2_mem.mem_b_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.mem_b_addr\(2),
	o => \disc_2_mem.mem_b_addr[2]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\disc_2_mem.mem_b_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.mem_b_addr\(3),
	o => \disc_2_mem.mem_b_addr[3]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\disc_2_mem.mem_b_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.mem_b_addr\(4),
	o => \disc_2_mem.mem_b_addr[4]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\disc_2_mem.mem_b_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.mem_b_addr\(5),
	o => \disc_2_mem.mem_b_addr[5]~input_o\);

-- Location: LABCELL_X79_Y5_N42
\basis|control|ctrl_2_dp.cg_sel.GURU~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.cg_sel.GURU~1_combout\ = ( \basis|control|main|STATE.INIT_ACTIVATION~q\ & ( (!\basis|control|guru|STATE.WRITE_DUO~q\ & (!\basis|control|guru|STATE.CLEAR_PREV~q\ & (!\basis|control|guru|STATE.LAST~q\ & 
-- \basis|control|guru|STATE.START_WALKING~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \basis|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	datab => \basis|control|guru|ALT_INV_STATE.CLEAR_PREV~q\,
	datac => \basis|control|guru|ALT_INV_STATE.LAST~q\,
	datad => \basis|control|guru|ALT_INV_STATE.START_WALKING~q\,
	dataf => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \basis|control|ctrl_2_dp.cg_sel.GURU~1_combout\);

-- Location: MLABCELL_X72_Y3_N51
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

-- Location: LABCELL_X80_Y5_N51
\basis|control|ctrl_2_dp.cg_sel.DUO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \basis|control|ctrl_2_dp.cg_sel.DUO~0_combout\ = ( \basis|control|guru|STATE.WRITE_DUO~q\ & ( \basis|control|main|STATE.INIT_ACTIVATION~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \basis|control|guru|ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \basis|control|main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \basis|control|ctrl_2_dp.cg_sel.DUO~0_combout\);

-- Location: IOIBUF_X74_Y0_N75
\disc_2_mem.data_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(1),
	o => \disc_2_mem.data_b[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\disc_2_mem.data_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(2),
	o => \disc_2_mem.data_b[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\disc_2_mem.data_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(3),
	o => \disc_2_mem.data_b[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\disc_2_mem.data_b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(4),
	o => \disc_2_mem.data_b[4]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\disc_2_mem.data_b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(5),
	o => \disc_2_mem.data_b[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\disc_2_mem.data_b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(6),
	o => \disc_2_mem.data_b[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\disc_2_mem.data_b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.data_b\(7),
	o => \disc_2_mem.data_b[7]~input_o\);

-- Location: M10K_X76_Y4_N0
\mem|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mem_2port:mem|altsyncram:altsyncram_component|altsyncram_a1d2:auto_generated|ALTSYNCRAM",
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
	portawe => \basis|control|ctrl_2_mem.mem_wr_en~0_combout\,
	portare => VCC,
	portbwe => \disc_2_mem.mem_wr_en~input_o\,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X89_Y11_N44
\disc_2_mem.cg_sel.DUO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.cg_sel.DUO\,
	o => \disc_2_mem.cg_sel.DUO~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\disc_2_mem.cg_sel.DISC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.cg_sel.DISC\,
	o => \disc_2_mem.cg_sel.DISC~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\disc_2_mem.cg_sel.GURU~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.cg_sel.GURU\,
	o => \disc_2_mem.cg_sel.GURU~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\disc_2_mem.cg_sel.BLANK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_mem.cg_sel.BLANK\,
	o => \disc_2_mem.cg_sel.BLANK~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\disc_2_ref.end_of_disc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_ref.end_of_disc\,
	o => \disc_2_ref.end_of_disc~input_o\);
END structure;


