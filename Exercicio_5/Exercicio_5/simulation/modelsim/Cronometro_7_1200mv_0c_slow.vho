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

-- DATE "03/14/2015 10:41:43"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Divisor_Frequencia IS
    PORT (
	LED : OUT std_logic_vector(7 DOWNTO 0);
	START : IN std_logic;
	STOP : IN std_logic;
	\50MHz\ : IN std_logic
	);
END Divisor_Frequencia;

-- Design Ports Information
-- LED[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 50MHz	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Divisor_Frequencia IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_START : std_logic;
SIGNAL ww_STOP : std_logic;
SIGNAL \ww_50MHz\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \50MHz~input_o\ : std_logic;
SIGNAL \50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|contador[1]~7_combout\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \STOP~input_o\ : std_logic;
SIGNAL \inst|contador[7]~21_wirecell_combout\ : std_logic;
SIGNAL \inst|operando~q\ : std_logic;
SIGNAL \inst|contador[7]~21_combout\ : std_logic;
SIGNAL \inst|contador[1]~8\ : std_logic;
SIGNAL \inst|contador[2]~9_combout\ : std_logic;
SIGNAL \inst|contador[2]~10\ : std_logic;
SIGNAL \inst|contador[3]~11_combout\ : std_logic;
SIGNAL \inst|contador[3]~12\ : std_logic;
SIGNAL \inst|contador[4]~13_combout\ : std_logic;
SIGNAL \inst|contador[4]~14\ : std_logic;
SIGNAL \inst|contador[5]~16\ : std_logic;
SIGNAL \inst|contador[6]~17_combout\ : std_logic;
SIGNAL \inst|contador[6]~18\ : std_logic;
SIGNAL \inst|contador[7]~19_combout\ : std_logic;
SIGNAL \inst|saida[7]~feeder_combout\ : std_logic;
SIGNAL \inst|saida[7]~0_combout\ : std_logic;
SIGNAL \inst|saida[6]~feeder_combout\ : std_logic;
SIGNAL \inst|contador[5]~15_combout\ : std_logic;
SIGNAL \inst|saida[5]~feeder_combout\ : std_logic;
SIGNAL \inst|saida[4]~feeder_combout\ : std_logic;
SIGNAL \inst|saida[3]~feeder_combout\ : std_logic;
SIGNAL \inst|saida[2]~feeder_combout\ : std_logic;
SIGNAL \inst|saida[1]~feeder_combout\ : std_logic;
SIGNAL \inst|contador[0]~22_combout\ : std_logic;
SIGNAL \inst|saida[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_START~input_o\ : std_logic;

BEGIN

LED <= ww_LED;
ww_START <= START;
ww_STOP <= STOP;
\ww_50MHz\ <= \50MHz\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23));

\50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \50MHz~input_o\);
\ALT_INV_START~input_o\ <= NOT \START~input_o\;

-- Location: LCCOMB_X114_Y38_N10
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X114_Y38_N12
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X114_Y38_N22
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X114_Y38_N26
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X114_Y38_N30
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X114_Y37_N6
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X114_Y37_N10
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X114_Y37_N12
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X114_Y37_N13
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

-- Location: FF_X114_Y37_N11
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17));

-- Location: FF_X114_Y37_N7
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: FF_X114_Y38_N31
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: FF_X114_Y38_N27
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: FF_X114_Y38_N23
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: FF_X114_Y38_N13
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X114_Y38_N11
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: IOIBUF_X58_Y0_N22
\50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_50MHz\,
	o => \50MHz~input_o\);

-- Location: CLKCTRL_G18
\50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \50MHz~inputclkctrl_outclk\);

-- Location: IOOBUF_X69_Y73_N16
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: LCCOMB_X114_Y38_N8
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X114_Y38_N9
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X114_Y38_N14
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X114_Y38_N15
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X114_Y38_N16
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X114_Y38_N17
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X114_Y38_N18
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X114_Y38_N19
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X114_Y38_N20
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X114_Y38_N21
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X114_Y38_N24
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X114_Y38_N25
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X114_Y38_N28
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X114_Y38_N29
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X114_Y37_N0
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X114_Y37_N1
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X114_Y37_N2
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X114_Y37_N3
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X114_Y37_N4
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X114_Y37_N5
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X114_Y37_N8
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X114_Y37_N9
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X114_Y37_N14
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X114_Y37_N15
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X114_Y37_N16
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X114_Y37_N17
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X114_Y37_N18
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & ((\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X114_Y37_N19
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X114_Y37_N20
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & !\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X114_Y37_N21
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X114_Y37_N22
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) $ (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23),
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\);

-- Location: FF_X114_Y37_N23
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \50MHz~inputclkctrl_outclk\,
	d => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23));

-- Location: CLKCTRL_G6
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\);

-- Location: LCCOMB_X92_Y72_N14
\inst|contador[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[1]~7_combout\ = (\inst|contador\(0) & (\inst|contador\(1) $ (VCC))) # (!\inst|contador\(0) & (\inst|contador\(1) & VCC))
-- \inst|contador[1]~8\ = CARRY((\inst|contador\(0) & \inst|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(0),
	datab => \inst|contador\(1),
	datad => VCC,
	combout => \inst|contador[1]~7_combout\,
	cout => \inst|contador[1]~8\);

-- Location: IOIBUF_X115_Y40_N8
\START~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\STOP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOP,
	o => \STOP~input_o\);

-- Location: LCCOMB_X92_Y72_N0
\inst|contador[7]~21_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[7]~21_wirecell_combout\ = !\inst|contador[7]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador[7]~21_combout\,
	combout => \inst|contador[7]~21_wirecell_combout\);

-- Location: FF_X92_Y72_N1
\inst|operando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[7]~21_wirecell_combout\,
	clrn => \ALT_INV_START~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|operando~q\);

-- Location: LCCOMB_X92_Y72_N6
\inst|contador[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[7]~21_combout\ = (!\STOP~input_o\ & !\inst|operando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOP~input_o\,
	datad => \inst|operando~q\,
	combout => \inst|contador[7]~21_combout\);

-- Location: FF_X92_Y72_N15
\inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[1]~7_combout\,
	clrn => \ALT_INV_START~input_o\,
	ena => \inst|contador[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(1));

-- Location: LCCOMB_X92_Y72_N16
\inst|contador[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[2]~9_combout\ = (\inst|contador\(2) & (!\inst|contador[1]~8\)) # (!\inst|contador\(2) & ((\inst|contador[1]~8\) # (GND)))
-- \inst|contador[2]~10\ = CARRY((!\inst|contador[1]~8\) # (!\inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(2),
	datad => VCC,
	cin => \inst|contador[1]~8\,
	combout => \inst|contador[2]~9_combout\,
	cout => \inst|contador[2]~10\);

-- Location: FF_X92_Y72_N17
\inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[2]~9_combout\,
	clrn => \ALT_INV_START~input_o\,
	ena => \inst|contador[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(2));

-- Location: LCCOMB_X92_Y72_N18
\inst|contador[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[3]~11_combout\ = (\inst|contador\(3) & (\inst|contador[2]~10\ $ (GND))) # (!\inst|contador\(3) & (!\inst|contador[2]~10\ & VCC))
-- \inst|contador[3]~12\ = CARRY((\inst|contador\(3) & !\inst|contador[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(3),
	datad => VCC,
	cin => \inst|contador[2]~10\,
	combout => \inst|contador[3]~11_combout\,
	cout => \inst|contador[3]~12\);

-- Location: FF_X92_Y72_N19
\inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[3]~11_combout\,
	clrn => \ALT_INV_START~input_o\,
	ena => \inst|contador[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(3));

-- Location: LCCOMB_X92_Y72_N20
\inst|contador[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[4]~13_combout\ = (\inst|contador\(4) & (!\inst|contador[3]~12\)) # (!\inst|contador\(4) & ((\inst|contador[3]~12\) # (GND)))
-- \inst|contador[4]~14\ = CARRY((!\inst|contador[3]~12\) # (!\inst|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(4),
	datad => VCC,
	cin => \inst|contador[3]~12\,
	combout => \inst|contador[4]~13_combout\,
	cout => \inst|contador[4]~14\);

-- Location: FF_X92_Y72_N21
\inst|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[4]~13_combout\,
	clrn => \ALT_INV_START~input_o\,
	ena => \inst|contador[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(4));

-- Location: LCCOMB_X92_Y72_N22
\inst|contador[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[5]~15_combout\ = (\inst|contador\(5) & (\inst|contador[4]~14\ $ (GND))) # (!\inst|contador\(5) & (!\inst|contador[4]~14\ & VCC))
-- \inst|contador[5]~16\ = CARRY((\inst|contador\(5) & !\inst|contador[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(5),
	datad => VCC,
	cin => \inst|contador[4]~14\,
	combout => \inst|contador[5]~15_combout\,
	cout => \inst|contador[5]~16\);

-- Location: LCCOMB_X92_Y72_N24
\inst|contador[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[6]~17_combout\ = (\inst|contador\(6) & (!\inst|contador[5]~16\)) # (!\inst|contador\(6) & ((\inst|contador[5]~16\) # (GND)))
-- \inst|contador[6]~18\ = CARRY((!\inst|contador[5]~16\) # (!\inst|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(6),
	datad => VCC,
	cin => \inst|contador[5]~16\,
	combout => \inst|contador[6]~17_combout\,
	cout => \inst|contador[6]~18\);

-- Location: FF_X92_Y72_N25
\inst|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[6]~17_combout\,
	clrn => \ALT_INV_START~input_o\,
	ena => \inst|contador[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(6));

-- Location: LCCOMB_X92_Y72_N26
\inst|contador[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[7]~19_combout\ = \inst|contador\(7) $ (!\inst|contador[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(7),
	cin => \inst|contador[6]~18\,
	combout => \inst|contador[7]~19_combout\);

-- Location: FF_X92_Y72_N27
\inst|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[7]~19_combout\,
	clrn => \ALT_INV_START~input_o\,
	ena => \inst|contador[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(7));

-- Location: LCCOMB_X91_Y72_N0
\inst|saida[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[7]~feeder_combout\ = \inst|contador\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(7),
	combout => \inst|saida[7]~feeder_combout\);

-- Location: LCCOMB_X92_Y72_N2
\inst|saida[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[7]~0_combout\ = (!\START~input_o\ & (\STOP~input_o\ & !\inst|operando~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \START~input_o\,
	datac => \STOP~input_o\,
	datad => \inst|operando~q\,
	combout => \inst|saida[7]~0_combout\);

-- Location: FF_X91_Y72_N1
\inst|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[7]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(7));

-- Location: LCCOMB_X91_Y72_N10
\inst|saida[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[6]~feeder_combout\ = \inst|contador\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(6),
	combout => \inst|saida[6]~feeder_combout\);

-- Location: FF_X91_Y72_N11
\inst|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[6]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(6));

-- Location: FF_X92_Y72_N23
\inst|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[5]~15_combout\,
	clrn => \ALT_INV_START~input_o\,
	ena => \inst|contador[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(5));

-- Location: LCCOMB_X91_Y72_N28
\inst|saida[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[5]~feeder_combout\ = \inst|contador\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(5),
	combout => \inst|saida[5]~feeder_combout\);

-- Location: FF_X91_Y72_N29
\inst|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[5]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(5));

-- Location: LCCOMB_X91_Y72_N22
\inst|saida[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[4]~feeder_combout\ = \inst|contador\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador\(4),
	combout => \inst|saida[4]~feeder_combout\);

-- Location: FF_X91_Y72_N23
\inst|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[4]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(4));

-- Location: LCCOMB_X91_Y72_N24
\inst|saida[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[3]~feeder_combout\ = \inst|contador\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(3),
	combout => \inst|saida[3]~feeder_combout\);

-- Location: FF_X91_Y72_N25
\inst|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[3]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(3));

-- Location: LCCOMB_X91_Y72_N2
\inst|saida[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[2]~feeder_combout\ = \inst|contador\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(2),
	combout => \inst|saida[2]~feeder_combout\);

-- Location: FF_X91_Y72_N3
\inst|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[2]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(2));

-- Location: LCCOMB_X91_Y72_N20
\inst|saida[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[1]~feeder_combout\ = \inst|contador\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador\(1),
	combout => \inst|saida[1]~feeder_combout\);

-- Location: FF_X91_Y72_N21
\inst|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[1]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(1));

-- Location: LCCOMB_X92_Y72_N12
\inst|contador[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador[0]~22_combout\ = \inst|contador\(0) $ (((!\inst|operando~q\ & !\STOP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|operando~q\,
	datac => \inst|contador\(0),
	datad => \STOP~input_o\,
	combout => \inst|contador[0]~22_combout\);

-- Location: FF_X92_Y72_N13
\inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|contador[0]~22_combout\,
	clrn => \ALT_INV_START~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(0));

-- Location: LCCOMB_X91_Y72_N30
\inst|saida[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|saida[0]~feeder_combout\ = \inst|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador\(0),
	combout => \inst|saida[0]~feeder_combout\);

-- Location: FF_X91_Y72_N31
\inst|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \inst|saida[0]~feeder_combout\,
	ena => \inst|saida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|saida\(0));

ww_LED(7) <= \LED[7]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(0) <= \LED[0]~output_o\;
END structure;


