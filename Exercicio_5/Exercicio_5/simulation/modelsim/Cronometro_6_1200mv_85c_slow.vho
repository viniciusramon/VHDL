-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"

-- DATE "03/14/2015 10:11:11"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometro IS
    PORT (
	saida : OUT std_logic_vector(7 DOWNTO 0);
	start : IN std_logic;
	stop : IN std_logic;
	clk : IN std_logic
	);
END cronometro;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \start~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \contador[7]~8_combout\ : std_logic;
SIGNAL \contador[7]~8_wirecell_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start~inputclkctrl_outclk\ : std_logic;
SIGNAL \operando~q\ : std_logic;
SIGNAL \contador[0]~7_combout\ : std_logic;
SIGNAL \saida[0]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[0]~0_combout\ : std_logic;
SIGNAL \saida[0]~reg0_q\ : std_logic;
SIGNAL \contador[1]~9_combout\ : std_logic;
SIGNAL \saida[1]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[1]~reg0_q\ : std_logic;
SIGNAL \contador[1]~10\ : std_logic;
SIGNAL \contador[2]~11_combout\ : std_logic;
SIGNAL \saida[2]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[2]~reg0_q\ : std_logic;
SIGNAL \contador[2]~12\ : std_logic;
SIGNAL \contador[3]~13_combout\ : std_logic;
SIGNAL \saida[3]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[3]~reg0_q\ : std_logic;
SIGNAL \contador[3]~14\ : std_logic;
SIGNAL \contador[4]~15_combout\ : std_logic;
SIGNAL \saida[4]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[4]~reg0_q\ : std_logic;
SIGNAL \contador[4]~16\ : std_logic;
SIGNAL \contador[5]~17_combout\ : std_logic;
SIGNAL \saida[5]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[5]~reg0_q\ : std_logic;
SIGNAL \contador[5]~18\ : std_logic;
SIGNAL \contador[6]~19_combout\ : std_logic;
SIGNAL \saida[6]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[6]~reg0_q\ : std_logic;
SIGNAL \contador[6]~20\ : std_logic;
SIGNAL \contador[7]~21_combout\ : std_logic;
SIGNAL \saida[7]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[7]~reg0_q\ : std_logic;
SIGNAL contador : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_start~inputclkctrl_outclk\ : std_logic;

BEGIN

saida <= ww_saida;
ww_start <= start;
ww_stop <= stop;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\start~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \start~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_start~inputclkctrl_outclk\ <= NOT \start~inputclkctrl_outclk\;

-- Location: IOOBUF_X29_Y31_N2
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[0]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[1]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[2]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[3]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\saida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[4]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\saida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[5]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\saida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[6]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\saida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[7]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y31_N1
\stop~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X31_Y12_N6
\contador[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[7]~8_combout\ = (!\stop~input_o\ & !\operando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop~input_o\,
	datad => \operando~q\,
	combout => \contador[7]~8_combout\);

-- Location: LCCOMB_X31_Y12_N2
\contador[7]~8_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[7]~8_wirecell_combout\ = !\contador[7]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador[7]~8_combout\,
	combout => \contador[7]~8_wirecell_combout\);

-- Location: IOIBUF_X16_Y0_N22
\start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: CLKCTRL_G19
\start~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \start~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \start~inputclkctrl_outclk\);

-- Location: FF_X31_Y12_N3
operando : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[7]~8_wirecell_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operando~q\);

-- Location: LCCOMB_X31_Y12_N0
\contador[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[0]~7_combout\ = contador(0) $ (((!\operando~q\ & !\stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operando~q\,
	datac => contador(0),
	datad => \stop~input_o\,
	combout => \contador[0]~7_combout\);

-- Location: FF_X31_Y12_N1
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[0]~7_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X30_Y12_N8
\saida[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[0]~reg0feeder_combout\ = contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \saida[0]~reg0feeder_combout\);

-- Location: LCCOMB_X31_Y12_N4
\saida[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[0]~0_combout\ = (!\start~input_o\ & (\stop~input_o\ & !\operando~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \stop~input_o\,
	datad => \operando~q\,
	combout => \saida[0]~0_combout\);

-- Location: FF_X30_Y12_N9
\saida[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[0]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[0]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N12
\contador[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[1]~9_combout\ = (contador(1) & (contador(0) $ (VCC))) # (!contador(1) & (contador(0) & VCC))
-- \contador[1]~10\ = CARRY((contador(1) & contador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(0),
	datad => VCC,
	combout => \contador[1]~9_combout\,
	cout => \contador[1]~10\);

-- Location: FF_X31_Y12_N13
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~9_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	ena => \contador[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X30_Y12_N26
\saida[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[1]~reg0feeder_combout\ = contador(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	combout => \saida[1]~reg0feeder_combout\);

-- Location: FF_X30_Y12_N27
\saida[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[1]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[1]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N14
\contador[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[2]~11_combout\ = (contador(2) & (!\contador[1]~10\)) # (!contador(2) & ((\contador[1]~10\) # (GND)))
-- \contador[2]~12\ = CARRY((!\contador[1]~10\) # (!contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~10\,
	combout => \contador[2]~11_combout\,
	cout => \contador[2]~12\);

-- Location: FF_X31_Y12_N15
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~11_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	ena => \contador[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X30_Y12_N12
\saida[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[2]~reg0feeder_combout\ = contador(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(2),
	combout => \saida[2]~reg0feeder_combout\);

-- Location: FF_X30_Y12_N13
\saida[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[2]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[2]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N16
\contador[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[3]~13_combout\ = (contador(3) & (\contador[2]~12\ $ (GND))) # (!contador(3) & (!\contador[2]~12\ & VCC))
-- \contador[3]~14\ = CARRY((contador(3) & !\contador[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(3),
	datad => VCC,
	cin => \contador[2]~12\,
	combout => \contador[3]~13_combout\,
	cout => \contador[3]~14\);

-- Location: FF_X31_Y12_N17
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~13_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	ena => \contador[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X30_Y12_N6
\saida[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[3]~reg0feeder_combout\ = contador(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => contador(3),
	combout => \saida[3]~reg0feeder_combout\);

-- Location: FF_X30_Y12_N7
\saida[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[3]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[3]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N18
\contador[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[4]~15_combout\ = (contador(4) & (!\contador[3]~14\)) # (!contador(4) & ((\contador[3]~14\) # (GND)))
-- \contador[4]~16\ = CARRY((!\contador[3]~14\) # (!contador(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \contador[3]~14\,
	combout => \contador[4]~15_combout\,
	cout => \contador[4]~16\);

-- Location: FF_X31_Y12_N19
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[4]~15_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	ena => \contador[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X30_Y12_N24
\saida[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[4]~reg0feeder_combout\ = contador(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => contador(4),
	combout => \saida[4]~reg0feeder_combout\);

-- Location: FF_X30_Y12_N25
\saida[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[4]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[4]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N20
\contador[5]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[5]~17_combout\ = (contador(5) & (\contador[4]~16\ $ (GND))) # (!contador(5) & (!\contador[4]~16\ & VCC))
-- \contador[5]~18\ = CARRY((contador(5) & !\contador[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	cin => \contador[4]~16\,
	combout => \contador[5]~17_combout\,
	cout => \contador[5]~18\);

-- Location: FF_X31_Y12_N21
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[5]~17_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	ena => \contador[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X30_Y12_N10
\saida[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[5]~reg0feeder_combout\ = contador(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(5),
	combout => \saida[5]~reg0feeder_combout\);

-- Location: FF_X30_Y12_N11
\saida[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[5]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[5]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N22
\contador[6]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[6]~19_combout\ = (contador(6) & (!\contador[5]~18\)) # (!contador(6) & ((\contador[5]~18\) # (GND)))
-- \contador[6]~20\ = CARRY((!\contador[5]~18\) # (!contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datad => VCC,
	cin => \contador[5]~18\,
	combout => \contador[6]~19_combout\,
	cout => \contador[6]~20\);

-- Location: FF_X31_Y12_N23
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[6]~19_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	ena => \contador[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X30_Y12_N28
\saida[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[6]~reg0feeder_combout\ = contador(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => contador(6),
	combout => \saida[6]~reg0feeder_combout\);

-- Location: FF_X30_Y12_N29
\saida[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[6]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[6]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N24
\contador[7]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[7]~21_combout\ = \contador[6]~20\ $ (!contador(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(7),
	cin => \contador[6]~20\,
	combout => \contador[7]~21_combout\);

-- Location: FF_X31_Y12_N25
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[7]~21_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	ena => \contador[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X30_Y12_N14
\saida[7]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[7]~reg0feeder_combout\ = contador(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => contador(7),
	combout => \saida[7]~reg0feeder_combout\);

-- Location: FF_X30_Y12_N15
\saida[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[7]~reg0feeder_combout\,
	ena => \saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[7]~reg0_q\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;
END structure;


