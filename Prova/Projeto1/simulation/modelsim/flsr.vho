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

-- DATE "07/27/2021 15:53:47"

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

ENTITY 	rand_num IS
    PORT (
	clk : IN std_logic;
	res : IN std_logic;
	q_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END rand_num;

-- Design Ports Information
-- q_out[0]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[4]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rand_num IS
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
SIGNAL ww_q_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \flsr_2|g1:1:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:2:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:3:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:4:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:5:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:6:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:7:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:8:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:9:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:10:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:11:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:0:FF|q_s~q\ : std_logic;
SIGNAL \flsr_2|d_s\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_res~input_o\ : std_logic;
SIGNAL \flsr_2|g1:2:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:3:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:4:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:5:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:6:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:7:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:8:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:9:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:10:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:11:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:1:FF|ALT_INV_q_s~q\ : std_logic;
SIGNAL \flsr_2|g1:0:FF|ALT_INV_q_s~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_res <= res;
q_out <= ww_q_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_res~input_o\ <= NOT \res~input_o\;
\flsr_2|g1:2:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:2:FF|q_s~q\;
\flsr_2|g1:3:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:3:FF|q_s~q\;
\flsr_2|g1:4:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:4:FF|q_s~q\;
\flsr_2|g1:5:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:5:FF|q_s~q\;
\flsr_2|g1:6:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:6:FF|q_s~q\;
\flsr_2|g1:7:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:7:FF|q_s~q\;
\flsr_2|g1:8:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:8:FF|q_s~q\;
\flsr_2|g1:9:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:9:FF|q_s~q\;
\flsr_2|g1:10:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:10:FF|q_s~q\;
\flsr_2|g1:11:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:11:FF|q_s~q\;
\flsr_2|g1:1:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:1:FF|q_s~q\;
\flsr_2|g1:0:FF|ALT_INV_q_s~q\ <= NOT \flsr_2|g1:0:FF|q_s~q\;

-- Location: IOOBUF_X89_Y15_N39
\q_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flsr_2|g1:0:FF|q_s~q\,
	devoe => ww_devoe,
	o => ww_q_out(0));

-- Location: IOOBUF_X89_Y15_N56
\q_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flsr_2|g1:1:FF|q_s~q\,
	devoe => ww_devoe,
	o => ww_q_out(1));

-- Location: IOOBUF_X6_Y0_N19
\q_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_q_out(2));

-- Location: IOOBUF_X60_Y0_N19
\q_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_q_out(3));

-- Location: IOOBUF_X78_Y0_N2
\q_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_q_out(4));

-- Location: IOOBUF_X89_Y9_N56
\q_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_q_out(5));

-- Location: IOOBUF_X22_Y81_N36
\q_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_q_out(6));

-- Location: IOOBUF_X18_Y81_N93
\q_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_q_out(7));

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

-- Location: IOIBUF_X89_Y15_N4
\res~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: LABCELL_X88_Y15_N15
\flsr_2|d_s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(1) = ( \flsr_2|g1:0:FF|q_s~q\ ) # ( !\flsr_2|g1:0:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \flsr_2|g1:0:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(1));

-- Location: FF_X88_Y15_N17
\flsr_2|g1:1:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:1:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N36
\flsr_2|d_s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(2) = ( \flsr_2|g1:1:FF|q_s~q\ ) # ( !\flsr_2|g1:1:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \flsr_2|g1:1:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(2));

-- Location: FF_X88_Y15_N38
\flsr_2|g1:2:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:2:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N12
\flsr_2|d_s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(3) = ( \flsr_2|g1:11:FF|q_s~q\ & ( (!\flsr_2|g1:2:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\flsr_2|g1:11:FF|q_s~q\ & ( (\flsr_2|g1:2:FF|q_s~q\) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datad => \flsr_2|g1:2:FF|ALT_INV_q_s~q\,
	dataf => \flsr_2|g1:11:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(3));

-- Location: FF_X88_Y15_N13
\flsr_2|g1:3:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:3:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N57
\flsr_2|d_s[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(4) = ( \flsr_2|g1:3:FF|q_s~q\ & ( (!\flsr_2|g1:11:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\flsr_2|g1:3:FF|q_s~q\ & ( (\flsr_2|g1:11:FF|q_s~q\) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datad => \flsr_2|g1:11:FF|ALT_INV_q_s~q\,
	dataf => \flsr_2|g1:3:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(4));

-- Location: FF_X88_Y15_N59
\flsr_2|g1:4:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:4:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N18
\flsr_2|d_s[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(5) = ( \flsr_2|g1:11:FF|q_s~q\ & ( (!\flsr_2|g1:4:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\flsr_2|g1:11:FF|q_s~q\ & ( (\flsr_2|g1:4:FF|q_s~q\) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datad => \flsr_2|g1:4:FF|ALT_INV_q_s~q\,
	dataf => \flsr_2|g1:11:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(5));

-- Location: FF_X88_Y15_N19
\flsr_2|g1:5:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:5:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N21
\flsr_2|d_s[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(6) = ( \flsr_2|g1:5:FF|q_s~q\ ) # ( !\flsr_2|g1:5:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \flsr_2|g1:5:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(6));

-- Location: FF_X88_Y15_N23
\flsr_2|g1:6:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:6:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N24
\flsr_2|d_s[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(7) = (\flsr_2|g1:6:FF|q_s~q\) # (\res~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datad => \flsr_2|g1:6:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(7));

-- Location: FF_X88_Y15_N25
\flsr_2|g1:7:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:7:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N27
\flsr_2|d_s[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(8) = ( \flsr_2|g1:7:FF|q_s~q\ ) # ( !\flsr_2|g1:7:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \flsr_2|g1:7:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(8));

-- Location: FF_X88_Y15_N28
\flsr_2|g1:8:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:8:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N42
\flsr_2|d_s[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(9) = ( \flsr_2|g1:8:FF|q_s~q\ ) # ( !\flsr_2|g1:8:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \flsr_2|g1:8:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(9));

-- Location: FF_X88_Y15_N44
\flsr_2|g1:9:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:9:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N39
\flsr_2|d_s[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(10) = ( \flsr_2|g1:9:FF|q_s~q\ ) # ( !\flsr_2|g1:9:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \flsr_2|g1:9:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(10));

-- Location: FF_X88_Y15_N41
\flsr_2|g1:10:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:10:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N45
\flsr_2|d_s[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(11) = ( \flsr_2|g1:10:FF|q_s~q\ & ( (!\flsr_2|g1:11:FF|q_s~q\) # (\res~input_o\) ) ) # ( !\flsr_2|g1:10:FF|q_s~q\ & ( (\flsr_2|g1:11:FF|q_s~q\) # (\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datad => \flsr_2|g1:11:FF|ALT_INV_q_s~q\,
	dataf => \flsr_2|g1:10:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(11));

-- Location: FF_X88_Y15_N47
\flsr_2|g1:11:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:11:FF|q_s~q\);

-- Location: LABCELL_X88_Y15_N54
\flsr_2|d_s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \flsr_2|d_s\(0) = ( \flsr_2|g1:11:FF|q_s~q\ ) # ( !\flsr_2|g1:11:FF|q_s~q\ & ( \res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	dataf => \flsr_2|g1:11:FF|ALT_INV_q_s~q\,
	combout => \flsr_2|d_s\(0));

-- Location: FF_X88_Y15_N56
\flsr_2|g1:0:FF|q_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \flsr_2|d_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flsr_2|g1:0:FF|q_s~q\);

-- Location: LABCELL_X48_Y39_N3
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


