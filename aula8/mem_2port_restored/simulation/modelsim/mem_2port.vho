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

-- DATE "06/03/2021 10:09:50"

-- 
-- Device: Altera 5CSEMA6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mem_2port IS
    PORT (
	address_a : IN std_logic_vector(5 DOWNTO 0);
	address_b : IN std_logic_vector(5 DOWNTO 0);
	clock : IN std_logic;
	data_a : IN std_logic_vector(7 DOWNTO 0);
	data_b : IN std_logic_vector(7 DOWNTO 0);
	wren_a : IN std_logic;
	wren_b : IN std_logic;
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0)
	);
END mem_2port;

-- Design Ports Information
-- q_a[0]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[1]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[2]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[5]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[6]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[7]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[0]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[1]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[2]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[3]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[6]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[7]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_a	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_b	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[0]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[1]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[3]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[4]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[4]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[1]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[3]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[3]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[5]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[5]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[6]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[6]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[7]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[7]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mem_2port IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address_a : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_wren_a : std_logic;
SIGNAL ww_wren_b : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \wren_a~input_o\ : std_logic;
SIGNAL \wren_b~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_a[0]~input_o\ : std_logic;
SIGNAL \address_a[0]~input_o\ : std_logic;
SIGNAL \address_a[1]~input_o\ : std_logic;
SIGNAL \address_a[2]~input_o\ : std_logic;
SIGNAL \address_a[3]~input_o\ : std_logic;
SIGNAL \address_a[4]~input_o\ : std_logic;
SIGNAL \address_a[5]~input_o\ : std_logic;
SIGNAL \data_b[0]~input_o\ : std_logic;
SIGNAL \address_b[0]~input_o\ : std_logic;
SIGNAL \address_b[1]~input_o\ : std_logic;
SIGNAL \address_b[2]~input_o\ : std_logic;
SIGNAL \address_b[3]~input_o\ : std_logic;
SIGNAL \address_b[4]~input_o\ : std_logic;
SIGNAL \address_b[5]~input_o\ : std_logic;
SIGNAL \data_a[1]~input_o\ : std_logic;
SIGNAL \data_a[2]~input_o\ : std_logic;
SIGNAL \data_a[3]~input_o\ : std_logic;
SIGNAL \data_a[4]~input_o\ : std_logic;
SIGNAL \data_a[5]~input_o\ : std_logic;
SIGNAL \data_a[6]~input_o\ : std_logic;
SIGNAL \data_a[7]~input_o\ : std_logic;
SIGNAL \data_b[1]~input_o\ : std_logic;
SIGNAL \data_b[2]~input_o\ : std_logic;
SIGNAL \data_b[3]~input_o\ : std_logic;
SIGNAL \data_b[4]~input_o\ : std_logic;
SIGNAL \data_b[5]~input_o\ : std_logic;
SIGNAL \data_b[6]~input_o\ : std_logic;
SIGNAL \data_b[7]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_address_a <= address_a;
ww_address_b <= address_b;
ww_clock <= clock;
ww_data_a <= data_a;
ww_data_b <= data_b;
ww_wren_a <= wren_a;
ww_wren_b <= wren_b;
q_a <= ww_q_a;
q_b <= ww_q_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_a[7]~input_o\ & \data_a[6]~input_o\ & \data_a[5]~input_o\ & \data_a[4]~input_o\ & \data_a[3]~input_o\ & 
\data_a[2]~input_o\ & \data_a[1]~input_o\ & \data_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_b[7]~input_o\ & \data_b[6]~input_o\ & \data_b[5]~input_o\ & \data_b[4]~input_o\ & \data_b[3]~input_o\ & 
\data_b[2]~input_o\ & \data_b[1]~input_o\ & \data_b[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address_a[5]~input_o\ & \address_a[4]~input_o\ & \address_a[3]~input_o\ & \address_a[2]~input_o\ & \address_a[1]~input_o\ & \address_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\address_b[5]~input_o\ & \address_b[4]~input_o\ & \address_b[3]~input_o\ & \address_b[2]~input_o\ & \address_b[1]~input_o\ & \address_b[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\altsyncram_component|auto_generated|q_b\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_b\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_b\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_b\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_b\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_b\(5) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_b\(6) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_b\(7) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

-- Location: IOOBUF_X10_Y0_N93
\q_a[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_q_a(0));

-- Location: IOOBUF_X28_Y0_N36
\q_a[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_q_a(1));

-- Location: IOOBUF_X8_Y0_N19
\q_a[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_q_a(2));

-- Location: IOOBUF_X8_Y0_N53
\q_a[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_q_a(3));

-- Location: IOOBUF_X20_Y0_N19
\q_a[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_q_a(4));

-- Location: IOOBUF_X26_Y0_N42
\q_a[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_q_a(5));

-- Location: IOOBUF_X24_Y0_N2
\q_a[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_q_a(6));

-- Location: IOOBUF_X6_Y0_N19
\q_a[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_q_a(7));

-- Location: IOOBUF_X22_Y0_N53
\q_b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(0),
	devoe => ww_devoe,
	o => ww_q_b(0));

-- Location: IOOBUF_X20_Y0_N53
\q_b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(1),
	devoe => ww_devoe,
	o => ww_q_b(1));

-- Location: IOOBUF_X24_Y0_N36
\q_b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(2),
	devoe => ww_devoe,
	o => ww_q_b(2));

-- Location: IOOBUF_X22_Y0_N36
\q_b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(3),
	devoe => ww_devoe,
	o => ww_q_b(3));

-- Location: IOOBUF_X6_Y0_N2
\q_b[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(4),
	devoe => ww_devoe,
	o => ww_q_b(4));

-- Location: IOOBUF_X28_Y0_N2
\q_b[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(5),
	devoe => ww_devoe,
	o => ww_q_b(5));

-- Location: IOOBUF_X18_Y0_N42
\q_b[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(6),
	devoe => ww_devoe,
	o => ww_q_b(6));

-- Location: IOOBUF_X18_Y0_N76
\q_b[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(7),
	devoe => ww_devoe,
	o => ww_q_b(7));

-- Location: IOIBUF_X10_Y0_N58
\wren_a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_a,
	o => \wren_a~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\wren_b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_b,
	o => \wren_b~input_o\);

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

-- Location: IOIBUF_X14_Y0_N18
\data_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(0),
	o => \data_a[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\address_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(0),
	o => \address_a[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\address_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(1),
	o => \address_a[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\address_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(2),
	o => \address_a[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\address_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(3),
	o => \address_a[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\address_a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(4),
	o => \address_a[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\address_a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(5),
	o => \address_a[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\data_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(0),
	o => \data_b[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\address_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(0),
	o => \address_b[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\address_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(1),
	o => \address_b[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\address_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(2),
	o => \address_b[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\address_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(3),
	o => \address_b[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\address_b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(4),
	o => \address_b[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\address_b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(5),
	o => \address_b[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\data_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(1),
	o => \data_a[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\data_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(2),
	o => \data_a[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\data_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(3),
	o => \data_a[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\data_a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(4),
	o => \data_a[4]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\data_a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(5),
	o => \data_a[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\data_a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(6),
	o => \data_a[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\data_a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(7),
	o => \data_a[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\data_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(1),
	o => \data_b[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\data_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(2),
	o => \data_b[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\data_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(3),
	o => \data_b[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\data_b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(4),
	o => \data_b[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\data_b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(5),
	o => \data_b[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\data_b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(6),
	o => \data_b[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\data_b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(7),
	o => \data_b[7]~input_o\);

-- Location: M10K_X14_Y1_N0
\altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_r9v3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
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
	port_b_data_out_clock => "clock0",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	power_up_uninitialized => "true",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_a~input_o\,
	portare => VCC,
	portbwe => \wren_b~input_o\,
	portbre => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X22_Y36_N0
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


