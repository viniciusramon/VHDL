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

-- DATE "02/14/2015 12:50:33"

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

ENTITY 	Exercicio_1 IS
    PORT (
	Y3 : OUT std_logic;
	Y2 : OUT std_logic;
	Y1 : OUT std_logic;
	Y0 : OUT std_logic;
	CLK : IN std_logic;
	H : IN std_logic
	);
END Exercicio_1;

-- Design Ports Information
-- Y3	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exercicio_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Y3~output_o\ : std_logic;
SIGNAL \Y2~output_o\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Y0~output_o\ : std_logic;
SIGNAL \Q0~0_combout\ : std_logic;
SIGNAL \Q0~q\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \Q1~0_combout\ : std_logic;
SIGNAL \Q1~q\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst1~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~combout\ : std_logic;

BEGIN

Y3 <= ww_Y3;
Y2 <= ww_Y2;
Y1 <= ww_Y1;
Y0 <= ww_Y0;
ww_CLK <= CLK;
ww_H <= H;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_inst3~combout\ <= NOT \inst3~combout\;

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X20_Y31_N9
\Y3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst3~combout\,
	devoe => ww_devoe,
	o => \Y3~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\Y2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~0_combout\,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\Y1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~1_combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\Y0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~2_combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: LCCOMB_X23_Y10_N24
\Q0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q0~0_combout\ = !\Q0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q0~q\,
	combout => \Q0~0_combout\);

-- Location: FF_X23_Y10_N25
Q0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q0~q\);

-- Location: IOIBUF_X24_Y0_N8
\H~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: LCCOMB_X23_Y10_N2
\Q1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q1~0_combout\ = \H~input_o\ $ (\Q1~q\ $ (!\Q0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H~input_o\,
	datac => \Q1~q\,
	datad => \Q0~q\,
	combout => \Q1~0_combout\);

-- Location: FF_X23_Y10_N3
Q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q1~q\);

-- Location: LCCOMB_X23_Y10_N28
inst3 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\Q0~q\) # (\Q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~q\,
	datad => \Q1~q\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X23_Y10_N6
\inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\Q0~q\ & !\Q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~q\,
	datad => \Q1~q\,
	combout => \inst1~0_combout\);

-- Location: LCCOMB_X23_Y10_N0
\inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = (!\Q0~q\ & \Q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~q\,
	datad => \Q1~q\,
	combout => \inst1~1_combout\);

-- Location: LCCOMB_X23_Y10_N26
\inst1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~2_combout\ = (\Q0~q\ & \Q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~q\,
	datad => \Q1~q\,
	combout => \inst1~2_combout\);

ww_Y3 <= \Y3~output_o\;

ww_Y2 <= \Y2~output_o\;

ww_Y1 <= \Y1~output_o\;

ww_Y0 <= \Y0~output_o\;
END structure;


