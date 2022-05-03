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

-- DATE "02/21/2015 12:57:33"

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

ENTITY 	Exercicio_2_Semaforo IS
    PORT (
	R : OUT std_logic;
	CURTO : OUT std_logic;
	LONGO : OUT std_logic;
	Y : OUT std_logic;
	G : OUT std_logic;
	CLK : IN std_logic;
	FIM : IN std_logic
	);
END Exercicio_2_Semaforo;

-- Design Ports Information
-- R	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CURTO	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LONGO	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIM	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exercicio_2_Semaforo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_CURTO : std_logic;
SIGNAL ww_LONGO : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_FIM : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R~output_o\ : std_logic;
SIGNAL \CURTO~output_o\ : std_logic;
SIGNAL \LONGO~output_o\ : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \FIM~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \Q3~q\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \Q2~q\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;

BEGIN

R <= ww_R;
CURTO <= ww_CURTO;
LONGO <= ww_LONGO;
Y <= ww_Y;
G <= ww_G;
ww_CLK <= CLK;
ww_FIM <= FIM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X12_Y0_N2
\R~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q2~q\,
	devoe => ww_devoe,
	o => \R~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\CURTO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~combout\,
	devoe => ww_devoe,
	o => \CURTO~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\LONGO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \LONGO~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~0_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\G~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

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

-- Location: IOIBUF_X10_Y31_N1
\FIM~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIM,
	o => \FIM~input_o\);

-- Location: LCCOMB_X11_Y2_N18
inst1 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (!\Q2~q\ & (\FIM~input_o\ $ (!\Q3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIM~input_o\,
	datac => \Q3~q\,
	datad => \Q2~q\,
	combout => \inst1~combout\);

-- Location: FF_X11_Y2_N19
Q3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q3~q\);

-- Location: LCCOMB_X11_Y2_N24
inst8 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\FIM~input_o\ & (!\Q2~q\ & \Q3~q\)) # (!\FIM~input_o\ & (\Q2~q\ & !\Q3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIM~input_o\,
	datac => \Q2~q\,
	datad => \Q3~q\,
	combout => \inst8~combout\);

-- Location: FF_X11_Y2_N25
Q2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q2~q\);

-- Location: LCCOMB_X11_Y2_N28
inst11 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (!\Q3~q\ & (\FIM~input_o\ & !\Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q3~q\,
	datac => \FIM~input_o\,
	datad => \Q2~q\,
	combout => \inst11~combout\);

-- Location: LCCOMB_X11_Y2_N6
\inst14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\Q3~q\ & ((\FIM~input_o\) # (\Q2~q\))) # (!\Q3~q\ & (\FIM~input_o\ & \Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q3~q\,
	datac => \FIM~input_o\,
	datad => \Q2~q\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X11_Y2_N0
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\Q3~q\ & !\Q2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q3~q\,
	datad => \Q2~q\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X11_Y2_N2
\inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (!\Q3~q\ & !\Q2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q3~q\,
	datad => \Q2~q\,
	combout => \inst11~0_combout\);

ww_R <= \R~output_o\;

ww_CURTO <= \CURTO~output_o\;

ww_LONGO <= \LONGO~output_o\;

ww_Y <= \Y~output_o\;

ww_G <= \G~output_o\;
END structure;


