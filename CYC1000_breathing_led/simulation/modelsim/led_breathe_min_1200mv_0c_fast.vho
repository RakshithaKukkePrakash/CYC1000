-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/20/2026 00:07:09"

-- 
-- Device: Altera 10CL025YU256C8G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	led_breathe IS
    PORT (
	i_clk : IN std_logic;
	led : BUFFER std_logic
	);
END led_breathe;

-- Design Ports Information
-- led	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- i_clk	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF led_breathe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tick_count[0]~32_combout\ : std_logic;
SIGNAL \tick_count[0]~33\ : std_logic;
SIGNAL \tick_count[1]~34_combout\ : std_logic;
SIGNAL \tick_count[1]~35\ : std_logic;
SIGNAL \tick_count[2]~36_combout\ : std_logic;
SIGNAL \tick_count[2]~37\ : std_logic;
SIGNAL \tick_count[3]~38_combout\ : std_logic;
SIGNAL \tick_count[3]~39\ : std_logic;
SIGNAL \tick_count[4]~40_combout\ : std_logic;
SIGNAL \tick_count[4]~41\ : std_logic;
SIGNAL \tick_count[5]~42_combout\ : std_logic;
SIGNAL \tick_count[5]~43\ : std_logic;
SIGNAL \tick_count[6]~44_combout\ : std_logic;
SIGNAL \tick_count[6]~45\ : std_logic;
SIGNAL \tick_count[7]~46_combout\ : std_logic;
SIGNAL \tick_count[7]~47\ : std_logic;
SIGNAL \tick_count[8]~48_combout\ : std_logic;
SIGNAL \tick_count[8]~49\ : std_logic;
SIGNAL \tick_count[9]~50_combout\ : std_logic;
SIGNAL \tick_count[9]~51\ : std_logic;
SIGNAL \tick_count[10]~52_combout\ : std_logic;
SIGNAL \tick_count[10]~53\ : std_logic;
SIGNAL \tick_count[11]~54_combout\ : std_logic;
SIGNAL \tick_count[11]~55\ : std_logic;
SIGNAL \tick_count[12]~56_combout\ : std_logic;
SIGNAL \tick_count[12]~57\ : std_logic;
SIGNAL \tick_count[13]~58_combout\ : std_logic;
SIGNAL \tick_count[13]~59\ : std_logic;
SIGNAL \tick_count[14]~60_combout\ : std_logic;
SIGNAL \tick_count[14]~61\ : std_logic;
SIGNAL \tick_count[15]~62_combout\ : std_logic;
SIGNAL \tick_count[15]~63\ : std_logic;
SIGNAL \tick_count[16]~64_combout\ : std_logic;
SIGNAL \tick_count[16]~65\ : std_logic;
SIGNAL \tick_count[17]~66_combout\ : std_logic;
SIGNAL \tick_count[17]~67\ : std_logic;
SIGNAL \tick_count[18]~68_combout\ : std_logic;
SIGNAL \tick_count[18]~69\ : std_logic;
SIGNAL \tick_count[19]~70_combout\ : std_logic;
SIGNAL \tick_count[19]~71\ : std_logic;
SIGNAL \tick_count[20]~72_combout\ : std_logic;
SIGNAL \tick_count[20]~73\ : std_logic;
SIGNAL \tick_count[21]~74_combout\ : std_logic;
SIGNAL \tick_count[21]~75\ : std_logic;
SIGNAL \tick_count[22]~76_combout\ : std_logic;
SIGNAL \tick_count[22]~77\ : std_logic;
SIGNAL \tick_count[23]~78_combout\ : std_logic;
SIGNAL \tick_count[23]~79\ : std_logic;
SIGNAL \tick_count[24]~80_combout\ : std_logic;
SIGNAL \tick_count[24]~81\ : std_logic;
SIGNAL \tick_count[25]~82_combout\ : std_logic;
SIGNAL \tick_count[25]~83\ : std_logic;
SIGNAL \tick_count[26]~84_combout\ : std_logic;
SIGNAL \tick_count[26]~85\ : std_logic;
SIGNAL \tick_count[27]~86_combout\ : std_logic;
SIGNAL \tick_count[27]~87\ : std_logic;
SIGNAL \tick_count[28]~88_combout\ : std_logic;
SIGNAL \tick_count[28]~89\ : std_logic;
SIGNAL \tick_count[29]~90_combout\ : std_logic;
SIGNAL \tick_count[29]~91\ : std_logic;
SIGNAL \tick_count[30]~92_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \tick_count[30]~93\ : std_logic;
SIGNAL \tick_count[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \tick_en~q\ : std_logic;
SIGNAL \triag_step[0]~32_combout\ : std_logic;
SIGNAL \triag_step[2]~37\ : std_logic;
SIGNAL \triag_step[3]~38_combout\ : std_logic;
SIGNAL \triag_step[3]~39\ : std_logic;
SIGNAL \triag_step[4]~40_combout\ : std_logic;
SIGNAL \triag_step[4]~41\ : std_logic;
SIGNAL \triag_step[5]~42_combout\ : std_logic;
SIGNAL \triag_step[5]~43\ : std_logic;
SIGNAL \triag_step[6]~44_combout\ : std_logic;
SIGNAL \triag_step[6]~45\ : std_logic;
SIGNAL \triag_step[7]~46_combout\ : std_logic;
SIGNAL \triag_step[7]~47\ : std_logic;
SIGNAL \triag_step[8]~48_combout\ : std_logic;
SIGNAL \triag_step[8]~49\ : std_logic;
SIGNAL \triag_step[9]~50_combout\ : std_logic;
SIGNAL \triag_step[9]~51\ : std_logic;
SIGNAL \triag_step[10]~52_combout\ : std_logic;
SIGNAL \triag_step[10]~53\ : std_logic;
SIGNAL \triag_step[11]~54_combout\ : std_logic;
SIGNAL \triag_step[11]~55\ : std_logic;
SIGNAL \triag_step[12]~56_combout\ : std_logic;
SIGNAL \triag_step[12]~57\ : std_logic;
SIGNAL \triag_step[13]~58_combout\ : std_logic;
SIGNAL \triag_step[13]~59\ : std_logic;
SIGNAL \triag_step[14]~60_combout\ : std_logic;
SIGNAL \triag_step[14]~61\ : std_logic;
SIGNAL \triag_step[15]~62_combout\ : std_logic;
SIGNAL \triag_step[15]~63\ : std_logic;
SIGNAL \triag_step[16]~64_combout\ : std_logic;
SIGNAL \triag_step[16]~65\ : std_logic;
SIGNAL \triag_step[17]~66_combout\ : std_logic;
SIGNAL \triag_step[17]~67\ : std_logic;
SIGNAL \triag_step[18]~68_combout\ : std_logic;
SIGNAL \triag_step[18]~69\ : std_logic;
SIGNAL \triag_step[19]~70_combout\ : std_logic;
SIGNAL \triag_step[19]~71\ : std_logic;
SIGNAL \triag_step[20]~72_combout\ : std_logic;
SIGNAL \triag_step[20]~73\ : std_logic;
SIGNAL \triag_step[21]~74_combout\ : std_logic;
SIGNAL \triag_step[21]~75\ : std_logic;
SIGNAL \triag_step[22]~76_combout\ : std_logic;
SIGNAL \triag_step[22]~77\ : std_logic;
SIGNAL \triag_step[23]~78_combout\ : std_logic;
SIGNAL \triag_step[23]~79\ : std_logic;
SIGNAL \triag_step[24]~80_combout\ : std_logic;
SIGNAL \triag_step[24]~81\ : std_logic;
SIGNAL \triag_step[25]~82_combout\ : std_logic;
SIGNAL \triag_step[25]~83\ : std_logic;
SIGNAL \triag_step[26]~85\ : std_logic;
SIGNAL \triag_step[27]~86_combout\ : std_logic;
SIGNAL \triag_step[27]~87\ : std_logic;
SIGNAL \triag_step[28]~88_combout\ : std_logic;
SIGNAL \triag_step[28]~89\ : std_logic;
SIGNAL \triag_step[29]~90_combout\ : std_logic;
SIGNAL \triag_step[29]~91\ : std_logic;
SIGNAL \triag_step[30]~92_combout\ : std_logic;
SIGNAL \triag_step[30]~93\ : std_logic;
SIGNAL \triag_step[31]~94_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \triag_step[31]~96_combout\ : std_logic;
SIGNAL \triag_step[0]~33\ : std_logic;
SIGNAL \triag_step[1]~34_combout\ : std_logic;
SIGNAL \triag_step[1]~35\ : std_logic;
SIGNAL \triag_step[2]~36_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \direction_flag~0_combout\ : std_logic;
SIGNAL \direction_flag~q\ : std_logic;
SIGNAL \triag_step[26]~84_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \pwm_counter[0]~21_combout\ : std_logic;
SIGNAL \pwm_counter[1]~7_combout\ : std_logic;
SIGNAL \pwm_counter[1]~8\ : std_logic;
SIGNAL \pwm_counter[2]~9_combout\ : std_logic;
SIGNAL \pwm_counter[2]~10\ : std_logic;
SIGNAL \pwm_counter[3]~11_combout\ : std_logic;
SIGNAL \pwm_counter[3]~12\ : std_logic;
SIGNAL \pwm_counter[4]~13_combout\ : std_logic;
SIGNAL \pwm_counter[4]~14\ : std_logic;
SIGNAL \pwm_counter[5]~15_combout\ : std_logic;
SIGNAL \pwm_counter[5]~16\ : std_logic;
SIGNAL \pwm_counter[6]~17_combout\ : std_logic;
SIGNAL \pwm_counter[6]~18\ : std_logic;
SIGNAL \pwm_counter[7]~19_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \led~reg0_q\ : std_logic;
SIGNAL triag_step : std_logic_vector(31 DOWNTO 0);
SIGNAL pwm_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL tick_count : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N9
\led~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~reg0_q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X0_Y16_N15
\i_clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
\i_clk~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y20_N0
\tick_count[0]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[0]~32_combout\ = tick_count(0) $ (VCC)
-- \tick_count[0]~33\ = CARRY(tick_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tick_count(0),
	datad => VCC,
	combout => \tick_count[0]~32_combout\,
	cout => \tick_count[0]~33\);

-- Location: FF_X36_Y20_N1
\tick_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[0]~32_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(0));

-- Location: LCCOMB_X36_Y20_N2
\tick_count[1]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[1]~34_combout\ = (tick_count(1) & (!\tick_count[0]~33\)) # (!tick_count(1) & ((\tick_count[0]~33\) # (GND)))
-- \tick_count[1]~35\ = CARRY((!\tick_count[0]~33\) # (!tick_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(1),
	datad => VCC,
	cin => \tick_count[0]~33\,
	combout => \tick_count[1]~34_combout\,
	cout => \tick_count[1]~35\);

-- Location: FF_X36_Y20_N3
\tick_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[1]~34_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(1));

-- Location: LCCOMB_X36_Y20_N4
\tick_count[2]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[2]~36_combout\ = (tick_count(2) & (\tick_count[1]~35\ $ (GND))) # (!tick_count(2) & (!\tick_count[1]~35\ & VCC))
-- \tick_count[2]~37\ = CARRY((tick_count(2) & !\tick_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(2),
	datad => VCC,
	cin => \tick_count[1]~35\,
	combout => \tick_count[2]~36_combout\,
	cout => \tick_count[2]~37\);

-- Location: FF_X36_Y20_N5
\tick_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[2]~36_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(2));

-- Location: LCCOMB_X36_Y20_N6
\tick_count[3]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[3]~38_combout\ = (tick_count(3) & (!\tick_count[2]~37\)) # (!tick_count(3) & ((\tick_count[2]~37\) # (GND)))
-- \tick_count[3]~39\ = CARRY((!\tick_count[2]~37\) # (!tick_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(3),
	datad => VCC,
	cin => \tick_count[2]~37\,
	combout => \tick_count[3]~38_combout\,
	cout => \tick_count[3]~39\);

-- Location: FF_X36_Y20_N7
\tick_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[3]~38_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(3));

-- Location: LCCOMB_X36_Y20_N8
\tick_count[4]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[4]~40_combout\ = (tick_count(4) & (\tick_count[3]~39\ $ (GND))) # (!tick_count(4) & (!\tick_count[3]~39\ & VCC))
-- \tick_count[4]~41\ = CARRY((tick_count(4) & !\tick_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(4),
	datad => VCC,
	cin => \tick_count[3]~39\,
	combout => \tick_count[4]~40_combout\,
	cout => \tick_count[4]~41\);

-- Location: FF_X36_Y20_N9
\tick_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[4]~40_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(4));

-- Location: LCCOMB_X36_Y20_N10
\tick_count[5]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[5]~42_combout\ = (tick_count(5) & (!\tick_count[4]~41\)) # (!tick_count(5) & ((\tick_count[4]~41\) # (GND)))
-- \tick_count[5]~43\ = CARRY((!\tick_count[4]~41\) # (!tick_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(5),
	datad => VCC,
	cin => \tick_count[4]~41\,
	combout => \tick_count[5]~42_combout\,
	cout => \tick_count[5]~43\);

-- Location: FF_X36_Y20_N11
\tick_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[5]~42_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(5));

-- Location: LCCOMB_X36_Y20_N12
\tick_count[6]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[6]~44_combout\ = (tick_count(6) & (\tick_count[5]~43\ $ (GND))) # (!tick_count(6) & (!\tick_count[5]~43\ & VCC))
-- \tick_count[6]~45\ = CARRY((tick_count(6) & !\tick_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(6),
	datad => VCC,
	cin => \tick_count[5]~43\,
	combout => \tick_count[6]~44_combout\,
	cout => \tick_count[6]~45\);

-- Location: FF_X36_Y20_N13
\tick_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[6]~44_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(6));

-- Location: LCCOMB_X36_Y20_N14
\tick_count[7]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[7]~46_combout\ = (tick_count(7) & (!\tick_count[6]~45\)) # (!tick_count(7) & ((\tick_count[6]~45\) # (GND)))
-- \tick_count[7]~47\ = CARRY((!\tick_count[6]~45\) # (!tick_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(7),
	datad => VCC,
	cin => \tick_count[6]~45\,
	combout => \tick_count[7]~46_combout\,
	cout => \tick_count[7]~47\);

-- Location: FF_X36_Y20_N15
\tick_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[7]~46_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(7));

-- Location: LCCOMB_X36_Y20_N16
\tick_count[8]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[8]~48_combout\ = (tick_count(8) & (\tick_count[7]~47\ $ (GND))) # (!tick_count(8) & (!\tick_count[7]~47\ & VCC))
-- \tick_count[8]~49\ = CARRY((tick_count(8) & !\tick_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(8),
	datad => VCC,
	cin => \tick_count[7]~47\,
	combout => \tick_count[8]~48_combout\,
	cout => \tick_count[8]~49\);

-- Location: FF_X36_Y20_N17
\tick_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[8]~48_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(8));

-- Location: LCCOMB_X36_Y20_N18
\tick_count[9]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[9]~50_combout\ = (tick_count(9) & (!\tick_count[8]~49\)) # (!tick_count(9) & ((\tick_count[8]~49\) # (GND)))
-- \tick_count[9]~51\ = CARRY((!\tick_count[8]~49\) # (!tick_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(9),
	datad => VCC,
	cin => \tick_count[8]~49\,
	combout => \tick_count[9]~50_combout\,
	cout => \tick_count[9]~51\);

-- Location: FF_X36_Y20_N19
\tick_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[9]~50_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(9));

-- Location: LCCOMB_X36_Y20_N20
\tick_count[10]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[10]~52_combout\ = (tick_count(10) & (\tick_count[9]~51\ $ (GND))) # (!tick_count(10) & (!\tick_count[9]~51\ & VCC))
-- \tick_count[10]~53\ = CARRY((tick_count(10) & !\tick_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(10),
	datad => VCC,
	cin => \tick_count[9]~51\,
	combout => \tick_count[10]~52_combout\,
	cout => \tick_count[10]~53\);

-- Location: FF_X36_Y20_N21
\tick_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[10]~52_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(10));

-- Location: LCCOMB_X36_Y20_N22
\tick_count[11]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[11]~54_combout\ = (tick_count(11) & (!\tick_count[10]~53\)) # (!tick_count(11) & ((\tick_count[10]~53\) # (GND)))
-- \tick_count[11]~55\ = CARRY((!\tick_count[10]~53\) # (!tick_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(11),
	datad => VCC,
	cin => \tick_count[10]~53\,
	combout => \tick_count[11]~54_combout\,
	cout => \tick_count[11]~55\);

-- Location: FF_X36_Y20_N23
\tick_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[11]~54_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(11));

-- Location: LCCOMB_X36_Y20_N24
\tick_count[12]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[12]~56_combout\ = (tick_count(12) & (\tick_count[11]~55\ $ (GND))) # (!tick_count(12) & (!\tick_count[11]~55\ & VCC))
-- \tick_count[12]~57\ = CARRY((tick_count(12) & !\tick_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(12),
	datad => VCC,
	cin => \tick_count[11]~55\,
	combout => \tick_count[12]~56_combout\,
	cout => \tick_count[12]~57\);

-- Location: FF_X36_Y20_N25
\tick_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[12]~56_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(12));

-- Location: LCCOMB_X36_Y20_N26
\tick_count[13]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[13]~58_combout\ = (tick_count(13) & (!\tick_count[12]~57\)) # (!tick_count(13) & ((\tick_count[12]~57\) # (GND)))
-- \tick_count[13]~59\ = CARRY((!\tick_count[12]~57\) # (!tick_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(13),
	datad => VCC,
	cin => \tick_count[12]~57\,
	combout => \tick_count[13]~58_combout\,
	cout => \tick_count[13]~59\);

-- Location: FF_X36_Y20_N27
\tick_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[13]~58_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(13));

-- Location: LCCOMB_X36_Y20_N28
\tick_count[14]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[14]~60_combout\ = (tick_count(14) & (\tick_count[13]~59\ $ (GND))) # (!tick_count(14) & (!\tick_count[13]~59\ & VCC))
-- \tick_count[14]~61\ = CARRY((tick_count(14) & !\tick_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(14),
	datad => VCC,
	cin => \tick_count[13]~59\,
	combout => \tick_count[14]~60_combout\,
	cout => \tick_count[14]~61\);

-- Location: FF_X36_Y20_N29
\tick_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[14]~60_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(14));

-- Location: LCCOMB_X36_Y20_N30
\tick_count[15]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[15]~62_combout\ = (tick_count(15) & (!\tick_count[14]~61\)) # (!tick_count(15) & ((\tick_count[14]~61\) # (GND)))
-- \tick_count[15]~63\ = CARRY((!\tick_count[14]~61\) # (!tick_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(15),
	datad => VCC,
	cin => \tick_count[14]~61\,
	combout => \tick_count[15]~62_combout\,
	cout => \tick_count[15]~63\);

-- Location: FF_X36_Y20_N31
\tick_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[15]~62_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(15));

-- Location: LCCOMB_X36_Y19_N0
\tick_count[16]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[16]~64_combout\ = (tick_count(16) & (\tick_count[15]~63\ $ (GND))) # (!tick_count(16) & (!\tick_count[15]~63\ & VCC))
-- \tick_count[16]~65\ = CARRY((tick_count(16) & !\tick_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(16),
	datad => VCC,
	cin => \tick_count[15]~63\,
	combout => \tick_count[16]~64_combout\,
	cout => \tick_count[16]~65\);

-- Location: FF_X36_Y19_N1
\tick_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[16]~64_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(16));

-- Location: LCCOMB_X36_Y19_N2
\tick_count[17]~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[17]~66_combout\ = (tick_count(17) & (!\tick_count[16]~65\)) # (!tick_count(17) & ((\tick_count[16]~65\) # (GND)))
-- \tick_count[17]~67\ = CARRY((!\tick_count[16]~65\) # (!tick_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(17),
	datad => VCC,
	cin => \tick_count[16]~65\,
	combout => \tick_count[17]~66_combout\,
	cout => \tick_count[17]~67\);

-- Location: FF_X36_Y19_N3
\tick_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[17]~66_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(17));

-- Location: LCCOMB_X36_Y19_N4
\tick_count[18]~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[18]~68_combout\ = (tick_count(18) & (\tick_count[17]~67\ $ (GND))) # (!tick_count(18) & (!\tick_count[17]~67\ & VCC))
-- \tick_count[18]~69\ = CARRY((tick_count(18) & !\tick_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(18),
	datad => VCC,
	cin => \tick_count[17]~67\,
	combout => \tick_count[18]~68_combout\,
	cout => \tick_count[18]~69\);

-- Location: FF_X36_Y19_N5
\tick_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[18]~68_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(18));

-- Location: LCCOMB_X36_Y19_N6
\tick_count[19]~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[19]~70_combout\ = (tick_count(19) & (!\tick_count[18]~69\)) # (!tick_count(19) & ((\tick_count[18]~69\) # (GND)))
-- \tick_count[19]~71\ = CARRY((!\tick_count[18]~69\) # (!tick_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(19),
	datad => VCC,
	cin => \tick_count[18]~69\,
	combout => \tick_count[19]~70_combout\,
	cout => \tick_count[19]~71\);

-- Location: FF_X36_Y19_N7
\tick_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[19]~70_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(19));

-- Location: LCCOMB_X36_Y19_N8
\tick_count[20]~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[20]~72_combout\ = (tick_count(20) & (\tick_count[19]~71\ $ (GND))) # (!tick_count(20) & (!\tick_count[19]~71\ & VCC))
-- \tick_count[20]~73\ = CARRY((tick_count(20) & !\tick_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(20),
	datad => VCC,
	cin => \tick_count[19]~71\,
	combout => \tick_count[20]~72_combout\,
	cout => \tick_count[20]~73\);

-- Location: FF_X36_Y19_N9
\tick_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[20]~72_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(20));

-- Location: LCCOMB_X36_Y19_N10
\tick_count[21]~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[21]~74_combout\ = (tick_count(21) & (!\tick_count[20]~73\)) # (!tick_count(21) & ((\tick_count[20]~73\) # (GND)))
-- \tick_count[21]~75\ = CARRY((!\tick_count[20]~73\) # (!tick_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(21),
	datad => VCC,
	cin => \tick_count[20]~73\,
	combout => \tick_count[21]~74_combout\,
	cout => \tick_count[21]~75\);

-- Location: FF_X36_Y19_N11
\tick_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[21]~74_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(21));

-- Location: LCCOMB_X36_Y19_N12
\tick_count[22]~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[22]~76_combout\ = (tick_count(22) & (\tick_count[21]~75\ $ (GND))) # (!tick_count(22) & (!\tick_count[21]~75\ & VCC))
-- \tick_count[22]~77\ = CARRY((tick_count(22) & !\tick_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(22),
	datad => VCC,
	cin => \tick_count[21]~75\,
	combout => \tick_count[22]~76_combout\,
	cout => \tick_count[22]~77\);

-- Location: FF_X36_Y19_N13
\tick_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[22]~76_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(22));

-- Location: LCCOMB_X36_Y19_N14
\tick_count[23]~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[23]~78_combout\ = (tick_count(23) & (!\tick_count[22]~77\)) # (!tick_count(23) & ((\tick_count[22]~77\) # (GND)))
-- \tick_count[23]~79\ = CARRY((!\tick_count[22]~77\) # (!tick_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(23),
	datad => VCC,
	cin => \tick_count[22]~77\,
	combout => \tick_count[23]~78_combout\,
	cout => \tick_count[23]~79\);

-- Location: FF_X36_Y19_N15
\tick_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[23]~78_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(23));

-- Location: LCCOMB_X36_Y19_N16
\tick_count[24]~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[24]~80_combout\ = (tick_count(24) & (\tick_count[23]~79\ $ (GND))) # (!tick_count(24) & (!\tick_count[23]~79\ & VCC))
-- \tick_count[24]~81\ = CARRY((tick_count(24) & !\tick_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(24),
	datad => VCC,
	cin => \tick_count[23]~79\,
	combout => \tick_count[24]~80_combout\,
	cout => \tick_count[24]~81\);

-- Location: FF_X36_Y19_N17
\tick_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[24]~80_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(24));

-- Location: LCCOMB_X36_Y19_N18
\tick_count[25]~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[25]~82_combout\ = (tick_count(25) & (!\tick_count[24]~81\)) # (!tick_count(25) & ((\tick_count[24]~81\) # (GND)))
-- \tick_count[25]~83\ = CARRY((!\tick_count[24]~81\) # (!tick_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(25),
	datad => VCC,
	cin => \tick_count[24]~81\,
	combout => \tick_count[25]~82_combout\,
	cout => \tick_count[25]~83\);

-- Location: FF_X36_Y19_N19
\tick_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[25]~82_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(25));

-- Location: LCCOMB_X36_Y19_N20
\tick_count[26]~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[26]~84_combout\ = (tick_count(26) & (\tick_count[25]~83\ $ (GND))) # (!tick_count(26) & (!\tick_count[25]~83\ & VCC))
-- \tick_count[26]~85\ = CARRY((tick_count(26) & !\tick_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(26),
	datad => VCC,
	cin => \tick_count[25]~83\,
	combout => \tick_count[26]~84_combout\,
	cout => \tick_count[26]~85\);

-- Location: FF_X36_Y19_N21
\tick_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[26]~84_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(26));

-- Location: LCCOMB_X36_Y19_N22
\tick_count[27]~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[27]~86_combout\ = (tick_count(27) & (!\tick_count[26]~85\)) # (!tick_count(27) & ((\tick_count[26]~85\) # (GND)))
-- \tick_count[27]~87\ = CARRY((!\tick_count[26]~85\) # (!tick_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(27),
	datad => VCC,
	cin => \tick_count[26]~85\,
	combout => \tick_count[27]~86_combout\,
	cout => \tick_count[27]~87\);

-- Location: FF_X36_Y19_N23
\tick_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[27]~86_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(27));

-- Location: LCCOMB_X36_Y19_N24
\tick_count[28]~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[28]~88_combout\ = (tick_count(28) & (\tick_count[27]~87\ $ (GND))) # (!tick_count(28) & (!\tick_count[27]~87\ & VCC))
-- \tick_count[28]~89\ = CARRY((tick_count(28) & !\tick_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(28),
	datad => VCC,
	cin => \tick_count[27]~87\,
	combout => \tick_count[28]~88_combout\,
	cout => \tick_count[28]~89\);

-- Location: FF_X36_Y19_N25
\tick_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[28]~88_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(28));

-- Location: LCCOMB_X36_Y19_N26
\tick_count[29]~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[29]~90_combout\ = (tick_count(29) & (!\tick_count[28]~89\)) # (!tick_count(29) & ((\tick_count[28]~89\) # (GND)))
-- \tick_count[29]~91\ = CARRY((!\tick_count[28]~89\) # (!tick_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(29),
	datad => VCC,
	cin => \tick_count[28]~89\,
	combout => \tick_count[29]~90_combout\,
	cout => \tick_count[29]~91\);

-- Location: FF_X36_Y19_N27
\tick_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[29]~90_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(29));

-- Location: LCCOMB_X36_Y19_N28
\tick_count[30]~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[30]~92_combout\ = (tick_count(30) & (\tick_count[29]~91\ $ (GND))) # (!tick_count(30) & (!\tick_count[29]~91\ & VCC))
-- \tick_count[30]~93\ = CARRY((tick_count(30) & !\tick_count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_count(30),
	datad => VCC,
	cin => \tick_count[29]~91\,
	combout => \tick_count[30]~92_combout\,
	cout => \tick_count[30]~93\);

-- Location: FF_X36_Y19_N29
\tick_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[30]~92_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(30));

-- Location: LCCOMB_X37_Y19_N26
\LessThan0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (tick_count(26)) # ((tick_count(28)) # ((tick_count(29)) # (tick_count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(26),
	datab => tick_count(28),
	datac => tick_count(29),
	datad => tick_count(27),
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X37_Y19_N12
\LessThan0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (tick_count(30)) # (\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tick_count(30),
	datac => \LessThan0~10_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X36_Y19_N30
\tick_count[31]~94\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tick_count[31]~94_combout\ = tick_count(31) $ (\tick_count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(31),
	cin => \tick_count[30]~93\,
	combout => \tick_count[31]~94_combout\);

-- Location: FF_X36_Y19_N31
\tick_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \tick_count[31]~94_combout\,
	sclr => \LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_count(31));

-- Location: LCCOMB_X37_Y19_N6
\LessThan0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (tick_count(23)) # ((tick_count(25)) # ((tick_count(24)) # (tick_count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(23),
	datab => tick_count(25),
	datac => tick_count(24),
	datad => tick_count(22),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X37_Y20_N24
\LessThan0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (tick_count(12) & (tick_count(11) & (tick_count(13) & tick_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(12),
	datab => tick_count(11),
	datac => tick_count(13),
	datad => tick_count(15),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y19_N4
\LessThan0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (tick_count(21)) # ((tick_count(19)) # ((tick_count(18)) # (tick_count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(21),
	datab => tick_count(19),
	datac => tick_count(18),
	datad => tick_count(20),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X37_Y19_N10
\LessThan0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (tick_count(16)) # ((tick_count(17)) # ((tick_count(15) & tick_count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(16),
	datab => tick_count(15),
	datac => tick_count(17),
	datad => tick_count(14),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X37_Y19_N8
\LessThan0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~8_combout\) # ((\LessThan0~5_combout\) # ((\LessThan0~7_combout\) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X37_Y20_N10
\LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (tick_count(3) & ((tick_count(0)) # ((tick_count(2)) # (tick_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(0),
	datab => tick_count(2),
	datac => tick_count(3),
	datad => tick_count(1),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y20_N12
\LessThan0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (tick_count(5)) # ((tick_count(6)) # ((tick_count(4) & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(5),
	datab => tick_count(4),
	datac => tick_count(6),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y20_N30
\LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (tick_count(7) & (tick_count(12) & (tick_count(13) & tick_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_count(7),
	datab => tick_count(12),
	datac => tick_count(13),
	datad => tick_count(15),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y20_N8
\LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (tick_count(10) & (tick_count(8) & tick_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tick_count(10),
	datac => tick_count(8),
	datad => tick_count(9),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y19_N24
\LessThan0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~2_combout\ & (\LessThan0~3_combout\ & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y19_N14
\LessThan0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (!tick_count(31) & ((\LessThan0~11_combout\) # ((\LessThan0~9_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => tick_count(31),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~12_combout\);

-- Location: FF_X35_Y20_N27
tick_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \LessThan0~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tick_en~q\);

-- Location: LCCOMB_X34_Y20_N0
\triag_step[0]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[0]~32_combout\ = triag_step(0) $ (VCC)
-- \triag_step[0]~33\ = CARRY(triag_step(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => triag_step(0),
	datad => VCC,
	combout => \triag_step[0]~32_combout\,
	cout => \triag_step[0]~33\);

-- Location: LCCOMB_X34_Y20_N4
\triag_step[2]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[2]~36_combout\ = ((\direction_flag~q\ $ (triag_step(2) $ (!\triag_step[1]~35\)))) # (GND)
-- \triag_step[2]~37\ = CARRY((\direction_flag~q\ & ((triag_step(2)) # (!\triag_step[1]~35\))) # (!\direction_flag~q\ & (triag_step(2) & !\triag_step[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(2),
	datad => VCC,
	cin => \triag_step[1]~35\,
	combout => \triag_step[2]~36_combout\,
	cout => \triag_step[2]~37\);

-- Location: LCCOMB_X34_Y20_N6
\triag_step[3]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[3]~38_combout\ = (\direction_flag~q\ & ((triag_step(3) & (\triag_step[2]~37\ & VCC)) # (!triag_step(3) & (!\triag_step[2]~37\)))) # (!\direction_flag~q\ & ((triag_step(3) & (!\triag_step[2]~37\)) # (!triag_step(3) & ((\triag_step[2]~37\) # 
-- (GND)))))
-- \triag_step[3]~39\ = CARRY((\direction_flag~q\ & (!triag_step(3) & !\triag_step[2]~37\)) # (!\direction_flag~q\ & ((!\triag_step[2]~37\) # (!triag_step(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(3),
	datad => VCC,
	cin => \triag_step[2]~37\,
	combout => \triag_step[3]~38_combout\,
	cout => \triag_step[3]~39\);

-- Location: FF_X34_Y20_N7
\triag_step[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[3]~38_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(3));

-- Location: LCCOMB_X34_Y20_N8
\triag_step[4]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[4]~40_combout\ = ((\direction_flag~q\ $ (triag_step(4) $ (!\triag_step[3]~39\)))) # (GND)
-- \triag_step[4]~41\ = CARRY((\direction_flag~q\ & ((triag_step(4)) # (!\triag_step[3]~39\))) # (!\direction_flag~q\ & (triag_step(4) & !\triag_step[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(4),
	datad => VCC,
	cin => \triag_step[3]~39\,
	combout => \triag_step[4]~40_combout\,
	cout => \triag_step[4]~41\);

-- Location: FF_X34_Y20_N9
\triag_step[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[4]~40_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(4));

-- Location: LCCOMB_X34_Y20_N10
\triag_step[5]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[5]~42_combout\ = (\direction_flag~q\ & ((triag_step(5) & (\triag_step[4]~41\ & VCC)) # (!triag_step(5) & (!\triag_step[4]~41\)))) # (!\direction_flag~q\ & ((triag_step(5) & (!\triag_step[4]~41\)) # (!triag_step(5) & ((\triag_step[4]~41\) # 
-- (GND)))))
-- \triag_step[5]~43\ = CARRY((\direction_flag~q\ & (!triag_step(5) & !\triag_step[4]~41\)) # (!\direction_flag~q\ & ((!\triag_step[4]~41\) # (!triag_step(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(5),
	datad => VCC,
	cin => \triag_step[4]~41\,
	combout => \triag_step[5]~42_combout\,
	cout => \triag_step[5]~43\);

-- Location: FF_X34_Y20_N11
\triag_step[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[5]~42_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(5));

-- Location: LCCOMB_X34_Y20_N12
\triag_step[6]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[6]~44_combout\ = ((\direction_flag~q\ $ (triag_step(6) $ (!\triag_step[5]~43\)))) # (GND)
-- \triag_step[6]~45\ = CARRY((\direction_flag~q\ & ((triag_step(6)) # (!\triag_step[5]~43\))) # (!\direction_flag~q\ & (triag_step(6) & !\triag_step[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(6),
	datad => VCC,
	cin => \triag_step[5]~43\,
	combout => \triag_step[6]~44_combout\,
	cout => \triag_step[6]~45\);

-- Location: FF_X34_Y20_N13
\triag_step[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[6]~44_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(6));

-- Location: LCCOMB_X34_Y20_N14
\triag_step[7]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[7]~46_combout\ = (triag_step(7) & ((\direction_flag~q\ & (\triag_step[6]~45\ & VCC)) # (!\direction_flag~q\ & (!\triag_step[6]~45\)))) # (!triag_step(7) & ((\direction_flag~q\ & (!\triag_step[6]~45\)) # (!\direction_flag~q\ & 
-- ((\triag_step[6]~45\) # (GND)))))
-- \triag_step[7]~47\ = CARRY((triag_step(7) & (!\direction_flag~q\ & !\triag_step[6]~45\)) # (!triag_step(7) & ((!\triag_step[6]~45\) # (!\direction_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(7),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[6]~45\,
	combout => \triag_step[7]~46_combout\,
	cout => \triag_step[7]~47\);

-- Location: FF_X34_Y20_N15
\triag_step[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[7]~46_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(7));

-- Location: LCCOMB_X34_Y20_N16
\triag_step[8]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[8]~48_combout\ = ((triag_step(8) $ (\direction_flag~q\ $ (!\triag_step[7]~47\)))) # (GND)
-- \triag_step[8]~49\ = CARRY((triag_step(8) & ((\direction_flag~q\) # (!\triag_step[7]~47\))) # (!triag_step(8) & (\direction_flag~q\ & !\triag_step[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(8),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[7]~47\,
	combout => \triag_step[8]~48_combout\,
	cout => \triag_step[8]~49\);

-- Location: FF_X34_Y20_N17
\triag_step[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[8]~48_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(8));

-- Location: LCCOMB_X34_Y20_N18
\triag_step[9]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[9]~50_combout\ = (triag_step(9) & ((\direction_flag~q\ & (\triag_step[8]~49\ & VCC)) # (!\direction_flag~q\ & (!\triag_step[8]~49\)))) # (!triag_step(9) & ((\direction_flag~q\ & (!\triag_step[8]~49\)) # (!\direction_flag~q\ & 
-- ((\triag_step[8]~49\) # (GND)))))
-- \triag_step[9]~51\ = CARRY((triag_step(9) & (!\direction_flag~q\ & !\triag_step[8]~49\)) # (!triag_step(9) & ((!\triag_step[8]~49\) # (!\direction_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(9),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[8]~49\,
	combout => \triag_step[9]~50_combout\,
	cout => \triag_step[9]~51\);

-- Location: FF_X34_Y20_N19
\triag_step[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[9]~50_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(9));

-- Location: LCCOMB_X34_Y20_N20
\triag_step[10]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[10]~52_combout\ = ((triag_step(10) $ (\direction_flag~q\ $ (!\triag_step[9]~51\)))) # (GND)
-- \triag_step[10]~53\ = CARRY((triag_step(10) & ((\direction_flag~q\) # (!\triag_step[9]~51\))) # (!triag_step(10) & (\direction_flag~q\ & !\triag_step[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(10),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[9]~51\,
	combout => \triag_step[10]~52_combout\,
	cout => \triag_step[10]~53\);

-- Location: FF_X34_Y20_N21
\triag_step[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[10]~52_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(10));

-- Location: LCCOMB_X34_Y20_N22
\triag_step[11]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[11]~54_combout\ = (triag_step(11) & ((\direction_flag~q\ & (\triag_step[10]~53\ & VCC)) # (!\direction_flag~q\ & (!\triag_step[10]~53\)))) # (!triag_step(11) & ((\direction_flag~q\ & (!\triag_step[10]~53\)) # (!\direction_flag~q\ & 
-- ((\triag_step[10]~53\) # (GND)))))
-- \triag_step[11]~55\ = CARRY((triag_step(11) & (!\direction_flag~q\ & !\triag_step[10]~53\)) # (!triag_step(11) & ((!\triag_step[10]~53\) # (!\direction_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(11),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[10]~53\,
	combout => \triag_step[11]~54_combout\,
	cout => \triag_step[11]~55\);

-- Location: FF_X34_Y20_N23
\triag_step[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[11]~54_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(11));

-- Location: LCCOMB_X34_Y20_N24
\triag_step[12]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[12]~56_combout\ = ((triag_step(12) $ (\direction_flag~q\ $ (!\triag_step[11]~55\)))) # (GND)
-- \triag_step[12]~57\ = CARRY((triag_step(12) & ((\direction_flag~q\) # (!\triag_step[11]~55\))) # (!triag_step(12) & (\direction_flag~q\ & !\triag_step[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(12),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[11]~55\,
	combout => \triag_step[12]~56_combout\,
	cout => \triag_step[12]~57\);

-- Location: FF_X34_Y20_N25
\triag_step[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[12]~56_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(12));

-- Location: LCCOMB_X34_Y20_N26
\triag_step[13]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[13]~58_combout\ = (triag_step(13) & ((\direction_flag~q\ & (\triag_step[12]~57\ & VCC)) # (!\direction_flag~q\ & (!\triag_step[12]~57\)))) # (!triag_step(13) & ((\direction_flag~q\ & (!\triag_step[12]~57\)) # (!\direction_flag~q\ & 
-- ((\triag_step[12]~57\) # (GND)))))
-- \triag_step[13]~59\ = CARRY((triag_step(13) & (!\direction_flag~q\ & !\triag_step[12]~57\)) # (!triag_step(13) & ((!\triag_step[12]~57\) # (!\direction_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(13),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[12]~57\,
	combout => \triag_step[13]~58_combout\,
	cout => \triag_step[13]~59\);

-- Location: FF_X34_Y20_N27
\triag_step[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[13]~58_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(13));

-- Location: LCCOMB_X34_Y20_N28
\triag_step[14]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[14]~60_combout\ = ((triag_step(14) $ (\direction_flag~q\ $ (!\triag_step[13]~59\)))) # (GND)
-- \triag_step[14]~61\ = CARRY((triag_step(14) & ((\direction_flag~q\) # (!\triag_step[13]~59\))) # (!triag_step(14) & (\direction_flag~q\ & !\triag_step[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(14),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[13]~59\,
	combout => \triag_step[14]~60_combout\,
	cout => \triag_step[14]~61\);

-- Location: FF_X34_Y20_N29
\triag_step[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[14]~60_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(14));

-- Location: LCCOMB_X34_Y20_N30
\triag_step[15]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[15]~62_combout\ = (\direction_flag~q\ & ((triag_step(15) & (\triag_step[14]~61\ & VCC)) # (!triag_step(15) & (!\triag_step[14]~61\)))) # (!\direction_flag~q\ & ((triag_step(15) & (!\triag_step[14]~61\)) # (!triag_step(15) & 
-- ((\triag_step[14]~61\) # (GND)))))
-- \triag_step[15]~63\ = CARRY((\direction_flag~q\ & (!triag_step(15) & !\triag_step[14]~61\)) # (!\direction_flag~q\ & ((!\triag_step[14]~61\) # (!triag_step(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(15),
	datad => VCC,
	cin => \triag_step[14]~61\,
	combout => \triag_step[15]~62_combout\,
	cout => \triag_step[15]~63\);

-- Location: FF_X34_Y20_N31
\triag_step[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[15]~62_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(15));

-- Location: LCCOMB_X34_Y19_N0
\triag_step[16]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[16]~64_combout\ = ((triag_step(16) $ (\direction_flag~q\ $ (!\triag_step[15]~63\)))) # (GND)
-- \triag_step[16]~65\ = CARRY((triag_step(16) & ((\direction_flag~q\) # (!\triag_step[15]~63\))) # (!triag_step(16) & (\direction_flag~q\ & !\triag_step[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(16),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[15]~63\,
	combout => \triag_step[16]~64_combout\,
	cout => \triag_step[16]~65\);

-- Location: FF_X34_Y19_N1
\triag_step[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[16]~64_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(16));

-- Location: LCCOMB_X34_Y19_N2
\triag_step[17]~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[17]~66_combout\ = (\direction_flag~q\ & ((triag_step(17) & (\triag_step[16]~65\ & VCC)) # (!triag_step(17) & (!\triag_step[16]~65\)))) # (!\direction_flag~q\ & ((triag_step(17) & (!\triag_step[16]~65\)) # (!triag_step(17) & 
-- ((\triag_step[16]~65\) # (GND)))))
-- \triag_step[17]~67\ = CARRY((\direction_flag~q\ & (!triag_step(17) & !\triag_step[16]~65\)) # (!\direction_flag~q\ & ((!\triag_step[16]~65\) # (!triag_step(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(17),
	datad => VCC,
	cin => \triag_step[16]~65\,
	combout => \triag_step[17]~66_combout\,
	cout => \triag_step[17]~67\);

-- Location: FF_X34_Y19_N3
\triag_step[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[17]~66_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(17));

-- Location: LCCOMB_X34_Y19_N4
\triag_step[18]~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[18]~68_combout\ = ((triag_step(18) $ (\direction_flag~q\ $ (!\triag_step[17]~67\)))) # (GND)
-- \triag_step[18]~69\ = CARRY((triag_step(18) & ((\direction_flag~q\) # (!\triag_step[17]~67\))) # (!triag_step(18) & (\direction_flag~q\ & !\triag_step[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(18),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[17]~67\,
	combout => \triag_step[18]~68_combout\,
	cout => \triag_step[18]~69\);

-- Location: FF_X34_Y19_N5
\triag_step[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[18]~68_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(18));

-- Location: LCCOMB_X34_Y19_N6
\triag_step[19]~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[19]~70_combout\ = (\direction_flag~q\ & ((triag_step(19) & (\triag_step[18]~69\ & VCC)) # (!triag_step(19) & (!\triag_step[18]~69\)))) # (!\direction_flag~q\ & ((triag_step(19) & (!\triag_step[18]~69\)) # (!triag_step(19) & 
-- ((\triag_step[18]~69\) # (GND)))))
-- \triag_step[19]~71\ = CARRY((\direction_flag~q\ & (!triag_step(19) & !\triag_step[18]~69\)) # (!\direction_flag~q\ & ((!\triag_step[18]~69\) # (!triag_step(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(19),
	datad => VCC,
	cin => \triag_step[18]~69\,
	combout => \triag_step[19]~70_combout\,
	cout => \triag_step[19]~71\);

-- Location: FF_X34_Y19_N7
\triag_step[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[19]~70_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(19));

-- Location: LCCOMB_X34_Y19_N8
\triag_step[20]~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[20]~72_combout\ = ((triag_step(20) $ (\direction_flag~q\ $ (!\triag_step[19]~71\)))) # (GND)
-- \triag_step[20]~73\ = CARRY((triag_step(20) & ((\direction_flag~q\) # (!\triag_step[19]~71\))) # (!triag_step(20) & (\direction_flag~q\ & !\triag_step[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(20),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[19]~71\,
	combout => \triag_step[20]~72_combout\,
	cout => \triag_step[20]~73\);

-- Location: FF_X34_Y19_N9
\triag_step[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[20]~72_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(20));

-- Location: LCCOMB_X34_Y19_N10
\triag_step[21]~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[21]~74_combout\ = (\direction_flag~q\ & ((triag_step(21) & (\triag_step[20]~73\ & VCC)) # (!triag_step(21) & (!\triag_step[20]~73\)))) # (!\direction_flag~q\ & ((triag_step(21) & (!\triag_step[20]~73\)) # (!triag_step(21) & 
-- ((\triag_step[20]~73\) # (GND)))))
-- \triag_step[21]~75\ = CARRY((\direction_flag~q\ & (!triag_step(21) & !\triag_step[20]~73\)) # (!\direction_flag~q\ & ((!\triag_step[20]~73\) # (!triag_step(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(21),
	datad => VCC,
	cin => \triag_step[20]~73\,
	combout => \triag_step[21]~74_combout\,
	cout => \triag_step[21]~75\);

-- Location: FF_X34_Y19_N11
\triag_step[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[21]~74_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(21));

-- Location: LCCOMB_X34_Y19_N12
\triag_step[22]~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[22]~76_combout\ = ((triag_step(22) $ (\direction_flag~q\ $ (!\triag_step[21]~75\)))) # (GND)
-- \triag_step[22]~77\ = CARRY((triag_step(22) & ((\direction_flag~q\) # (!\triag_step[21]~75\))) # (!triag_step(22) & (\direction_flag~q\ & !\triag_step[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(22),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[21]~75\,
	combout => \triag_step[22]~76_combout\,
	cout => \triag_step[22]~77\);

-- Location: FF_X34_Y19_N13
\triag_step[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[22]~76_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(22));

-- Location: LCCOMB_X34_Y19_N14
\triag_step[23]~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[23]~78_combout\ = (\direction_flag~q\ & ((triag_step(23) & (\triag_step[22]~77\ & VCC)) # (!triag_step(23) & (!\triag_step[22]~77\)))) # (!\direction_flag~q\ & ((triag_step(23) & (!\triag_step[22]~77\)) # (!triag_step(23) & 
-- ((\triag_step[22]~77\) # (GND)))))
-- \triag_step[23]~79\ = CARRY((\direction_flag~q\ & (!triag_step(23) & !\triag_step[22]~77\)) # (!\direction_flag~q\ & ((!\triag_step[22]~77\) # (!triag_step(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(23),
	datad => VCC,
	cin => \triag_step[22]~77\,
	combout => \triag_step[23]~78_combout\,
	cout => \triag_step[23]~79\);

-- Location: FF_X34_Y19_N15
\triag_step[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[23]~78_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(23));

-- Location: LCCOMB_X34_Y19_N16
\triag_step[24]~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[24]~80_combout\ = ((triag_step(24) $ (\direction_flag~q\ $ (!\triag_step[23]~79\)))) # (GND)
-- \triag_step[24]~81\ = CARRY((triag_step(24) & ((\direction_flag~q\) # (!\triag_step[23]~79\))) # (!triag_step(24) & (\direction_flag~q\ & !\triag_step[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(24),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[23]~79\,
	combout => \triag_step[24]~80_combout\,
	cout => \triag_step[24]~81\);

-- Location: FF_X34_Y19_N17
\triag_step[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[24]~80_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(24));

-- Location: LCCOMB_X34_Y19_N18
\triag_step[25]~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[25]~82_combout\ = (triag_step(25) & ((\direction_flag~q\ & (\triag_step[24]~81\ & VCC)) # (!\direction_flag~q\ & (!\triag_step[24]~81\)))) # (!triag_step(25) & ((\direction_flag~q\ & (!\triag_step[24]~81\)) # (!\direction_flag~q\ & 
-- ((\triag_step[24]~81\) # (GND)))))
-- \triag_step[25]~83\ = CARRY((triag_step(25) & (!\direction_flag~q\ & !\triag_step[24]~81\)) # (!triag_step(25) & ((!\triag_step[24]~81\) # (!\direction_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(25),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[24]~81\,
	combout => \triag_step[25]~82_combout\,
	cout => \triag_step[25]~83\);

-- Location: FF_X34_Y19_N19
\triag_step[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[25]~82_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(25));

-- Location: LCCOMB_X34_Y19_N20
\triag_step[26]~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[26]~84_combout\ = ((triag_step(26) $ (\direction_flag~q\ $ (!\triag_step[25]~83\)))) # (GND)
-- \triag_step[26]~85\ = CARRY((triag_step(26) & ((\direction_flag~q\) # (!\triag_step[25]~83\))) # (!triag_step(26) & (\direction_flag~q\ & !\triag_step[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(26),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[25]~83\,
	combout => \triag_step[26]~84_combout\,
	cout => \triag_step[26]~85\);

-- Location: LCCOMB_X34_Y19_N22
\triag_step[27]~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[27]~86_combout\ = (\direction_flag~q\ & ((triag_step(27) & (\triag_step[26]~85\ & VCC)) # (!triag_step(27) & (!\triag_step[26]~85\)))) # (!\direction_flag~q\ & ((triag_step(27) & (!\triag_step[26]~85\)) # (!triag_step(27) & 
-- ((\triag_step[26]~85\) # (GND)))))
-- \triag_step[27]~87\ = CARRY((\direction_flag~q\ & (!triag_step(27) & !\triag_step[26]~85\)) # (!\direction_flag~q\ & ((!\triag_step[26]~85\) # (!triag_step(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(27),
	datad => VCC,
	cin => \triag_step[26]~85\,
	combout => \triag_step[27]~86_combout\,
	cout => \triag_step[27]~87\);

-- Location: FF_X34_Y19_N23
\triag_step[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[27]~86_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(27));

-- Location: LCCOMB_X34_Y19_N24
\triag_step[28]~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[28]~88_combout\ = ((triag_step(28) $ (\direction_flag~q\ $ (!\triag_step[27]~87\)))) # (GND)
-- \triag_step[28]~89\ = CARRY((triag_step(28) & ((\direction_flag~q\) # (!\triag_step[27]~87\))) # (!triag_step(28) & (\direction_flag~q\ & !\triag_step[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(28),
	datab => \direction_flag~q\,
	datad => VCC,
	cin => \triag_step[27]~87\,
	combout => \triag_step[28]~88_combout\,
	cout => \triag_step[28]~89\);

-- Location: FF_X34_Y19_N25
\triag_step[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[28]~88_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(28));

-- Location: LCCOMB_X34_Y19_N26
\triag_step[29]~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[29]~90_combout\ = (\direction_flag~q\ & ((triag_step(29) & (\triag_step[28]~89\ & VCC)) # (!triag_step(29) & (!\triag_step[28]~89\)))) # (!\direction_flag~q\ & ((triag_step(29) & (!\triag_step[28]~89\)) # (!triag_step(29) & 
-- ((\triag_step[28]~89\) # (GND)))))
-- \triag_step[29]~91\ = CARRY((\direction_flag~q\ & (!triag_step(29) & !\triag_step[28]~89\)) # (!\direction_flag~q\ & ((!\triag_step[28]~89\) # (!triag_step(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(29),
	datad => VCC,
	cin => \triag_step[28]~89\,
	combout => \triag_step[29]~90_combout\,
	cout => \triag_step[29]~91\);

-- Location: FF_X34_Y19_N27
\triag_step[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[29]~90_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(29));

-- Location: LCCOMB_X34_Y19_N28
\triag_step[30]~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[30]~92_combout\ = ((\direction_flag~q\ $ (triag_step(30) $ (!\triag_step[29]~91\)))) # (GND)
-- \triag_step[30]~93\ = CARRY((\direction_flag~q\ & ((triag_step(30)) # (!\triag_step[29]~91\))) # (!\direction_flag~q\ & (triag_step(30) & !\triag_step[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(30),
	datad => VCC,
	cin => \triag_step[29]~91\,
	combout => \triag_step[30]~92_combout\,
	cout => \triag_step[30]~93\);

-- Location: FF_X34_Y19_N29
\triag_step[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[30]~92_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(30));

-- Location: LCCOMB_X34_Y19_N30
\triag_step[31]~94\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[31]~94_combout\ = triag_step(31) $ (\direction_flag~q\ $ (\triag_step[30]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(31),
	datab => \direction_flag~q\,
	cin => \triag_step[30]~93\,
	combout => \triag_step[31]~94_combout\);

-- Location: FF_X34_Y19_N31
\triag_step[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[31]~94_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(31));

-- Location: LCCOMB_X35_Y19_N2
\Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!triag_step(21) & (!triag_step(23) & (!triag_step(20) & !triag_step(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(21),
	datab => triag_step(23),
	datac => triag_step(20),
	datad => triag_step(22),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X35_Y19_N0
\Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!triag_step(16) & (!triag_step(18) & (!triag_step(19) & !triag_step(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(16),
	datab => triag_step(18),
	datac => triag_step(19),
	datad => triag_step(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X35_Y20_N8
\Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!triag_step(11) & (!triag_step(9) & (!triag_step(8) & !triag_step(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(11),
	datab => triag_step(9),
	datac => triag_step(8),
	datad => triag_step(10),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X35_Y20_N10
\Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!triag_step(15) & (!triag_step(14) & (!triag_step(13) & !triag_step(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(15),
	datab => triag_step(14),
	datac => triag_step(13),
	datad => triag_step(12),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X35_Y20_N20
\Equal0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X35_Y20_N26
\Equal0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (!triag_step(31) & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => triag_step(31),
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X34_Y21_N8
\Equal1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (triag_step(2)) # ((triag_step(0)) # ((triag_step(7)) # (triag_step(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(2),
	datab => triag_step(0),
	datac => triag_step(7),
	datad => triag_step(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X35_Y20_N12
\Equal1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (triag_step(4)) # ((triag_step(6)) # ((triag_step(3)) # (triag_step(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(4),
	datab => triag_step(6),
	datac => triag_step(3),
	datad => triag_step(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X35_Y20_N6
\Equal1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ((\Equal1~0_combout\) # (\Equal1~1_combout\)) # (!\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X35_Y20_N28
\triag_step[31]~96\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[31]~96_combout\ = (\tick_en~q\ & ((\direction_flag~q\ & (\Equal1~2_combout\)) # (!\direction_flag~q\ & ((!\Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~10_combout\,
	datac => \tick_en~q\,
	datad => \direction_flag~q\,
	combout => \triag_step[31]~96_combout\);

-- Location: FF_X34_Y20_N1
\triag_step[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[0]~32_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(0));

-- Location: LCCOMB_X34_Y20_N2
\triag_step[1]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \triag_step[1]~34_combout\ = (\direction_flag~q\ & ((triag_step(1) & (\triag_step[0]~33\ & VCC)) # (!triag_step(1) & (!\triag_step[0]~33\)))) # (!\direction_flag~q\ & ((triag_step(1) & (!\triag_step[0]~33\)) # (!triag_step(1) & ((\triag_step[0]~33\) # 
-- (GND)))))
-- \triag_step[1]~35\ = CARRY((\direction_flag~q\ & (!triag_step(1) & !\triag_step[0]~33\)) # (!\direction_flag~q\ & ((!\triag_step[0]~33\) # (!triag_step(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction_flag~q\,
	datab => triag_step(1),
	datad => VCC,
	cin => \triag_step[0]~33\,
	combout => \triag_step[1]~34_combout\,
	cout => \triag_step[1]~35\);

-- Location: FF_X34_Y20_N3
\triag_step[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[1]~34_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(1));

-- Location: FF_X34_Y20_N5
\triag_step[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[2]~36_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(2));

-- Location: LCCOMB_X34_Y21_N2
\Equal0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (triag_step(2) & (triag_step(0) & (triag_step(7) & triag_step(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(2),
	datab => triag_step(0),
	datac => triag_step(7),
	datad => triag_step(1),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X35_Y20_N24
\Equal0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (triag_step(4) & (triag_step(6) & (triag_step(3) & triag_step(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(4),
	datab => triag_step(6),
	datac => triag_step(3),
	datad => triag_step(5),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X35_Y20_N2
\Equal0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~7_combout\ & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X35_Y20_N16
\direction_flag~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \direction_flag~0_combout\ = (\tick_en~q\ & ((\direction_flag~q\ & ((\Equal1~2_combout\))) # (!\direction_flag~q\ & (\Equal0~10_combout\)))) # (!\tick_en~q\ & (((\direction_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_en~q\,
	datab => \Equal0~10_combout\,
	datac => \direction_flag~q\,
	datad => \Equal1~2_combout\,
	combout => \direction_flag~0_combout\);

-- Location: FF_X35_Y20_N17
direction_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \direction_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction_flag~q\);

-- Location: FF_X34_Y19_N21
\triag_step[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \triag_step[26]~84_combout\,
	ena => \triag_step[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => triag_step(26));

-- Location: LCCOMB_X35_Y19_N12
\Equal0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!triag_step(26) & (!triag_step(27) & (!triag_step(24) & !triag_step(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(26),
	datab => triag_step(27),
	datac => triag_step(24),
	datad => triag_step(25),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X35_Y19_N14
\Equal0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & (!triag_step(30) & (!triag_step(29) & !triag_step(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => triag_step(30),
	datac => triag_step(29),
	datad => triag_step(28),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X35_Y21_N0
\pwm_counter[0]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[0]~21_combout\ = !pwm_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pwm_counter(0),
	combout => \pwm_counter[0]~21_combout\);

-- Location: FF_X35_Y21_N1
\pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(0));

-- Location: LCCOMB_X35_Y21_N12
\pwm_counter[1]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[1]~7_combout\ = (pwm_counter(1) & (pwm_counter(0) $ (VCC))) # (!pwm_counter(1) & (pwm_counter(0) & VCC))
-- \pwm_counter[1]~8\ = CARRY((pwm_counter(1) & pwm_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(1),
	datab => pwm_counter(0),
	datad => VCC,
	combout => \pwm_counter[1]~7_combout\,
	cout => \pwm_counter[1]~8\);

-- Location: FF_X35_Y21_N13
\pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(1));

-- Location: LCCOMB_X35_Y21_N14
\pwm_counter[2]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[2]~9_combout\ = (pwm_counter(2) & (!\pwm_counter[1]~8\)) # (!pwm_counter(2) & ((\pwm_counter[1]~8\) # (GND)))
-- \pwm_counter[2]~10\ = CARRY((!\pwm_counter[1]~8\) # (!pwm_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(2),
	datad => VCC,
	cin => \pwm_counter[1]~8\,
	combout => \pwm_counter[2]~9_combout\,
	cout => \pwm_counter[2]~10\);

-- Location: FF_X35_Y21_N15
\pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(2));

-- Location: LCCOMB_X35_Y21_N16
\pwm_counter[3]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[3]~11_combout\ = (pwm_counter(3) & (\pwm_counter[2]~10\ $ (GND))) # (!pwm_counter(3) & (!\pwm_counter[2]~10\ & VCC))
-- \pwm_counter[3]~12\ = CARRY((pwm_counter(3) & !\pwm_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(3),
	datad => VCC,
	cin => \pwm_counter[2]~10\,
	combout => \pwm_counter[3]~11_combout\,
	cout => \pwm_counter[3]~12\);

-- Location: FF_X35_Y21_N17
\pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(3));

-- Location: LCCOMB_X35_Y21_N18
\pwm_counter[4]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[4]~13_combout\ = (pwm_counter(4) & (!\pwm_counter[3]~12\)) # (!pwm_counter(4) & ((\pwm_counter[3]~12\) # (GND)))
-- \pwm_counter[4]~14\ = CARRY((!\pwm_counter[3]~12\) # (!pwm_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(4),
	datad => VCC,
	cin => \pwm_counter[3]~12\,
	combout => \pwm_counter[4]~13_combout\,
	cout => \pwm_counter[4]~14\);

-- Location: FF_X35_Y21_N19
\pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(4));

-- Location: LCCOMB_X35_Y21_N20
\pwm_counter[5]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[5]~15_combout\ = (pwm_counter(5) & (\pwm_counter[4]~14\ $ (GND))) # (!pwm_counter(5) & (!\pwm_counter[4]~14\ & VCC))
-- \pwm_counter[5]~16\ = CARRY((pwm_counter(5) & !\pwm_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(5),
	datad => VCC,
	cin => \pwm_counter[4]~14\,
	combout => \pwm_counter[5]~15_combout\,
	cout => \pwm_counter[5]~16\);

-- Location: FF_X35_Y21_N21
\pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(5));

-- Location: LCCOMB_X35_Y21_N22
\pwm_counter[6]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[6]~17_combout\ = (pwm_counter(6) & (!\pwm_counter[5]~16\)) # (!pwm_counter(6) & ((\pwm_counter[5]~16\) # (GND)))
-- \pwm_counter[6]~18\ = CARRY((!\pwm_counter[5]~16\) # (!pwm_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(6),
	datad => VCC,
	cin => \pwm_counter[5]~16\,
	combout => \pwm_counter[6]~17_combout\,
	cout => \pwm_counter[6]~18\);

-- Location: FF_X35_Y21_N23
\pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(6));

-- Location: LCCOMB_X35_Y21_N24
\pwm_counter[7]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pwm_counter[7]~19_combout\ = \pwm_counter[6]~18\ $ (!pwm_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pwm_counter(7),
	cin => \pwm_counter[6]~18\,
	combout => \pwm_counter[7]~19_combout\);

-- Location: FF_X35_Y21_N25
\pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \pwm_counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(7));

-- Location: LCCOMB_X34_Y21_N14
\LessThan1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((pwm_counter(0) & !triag_step(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(0),
	datab => triag_step(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X34_Y21_N16
\LessThan1~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((pwm_counter(1) & (triag_step(1) & !\LessThan1~1_cout\)) # (!pwm_counter(1) & ((triag_step(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(1),
	datab => triag_step(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X34_Y21_N18
\LessThan1~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((triag_step(2) & (pwm_counter(2) & !\LessThan1~3_cout\)) # (!triag_step(2) & ((pwm_counter(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(2),
	datab => pwm_counter(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X34_Y21_N20
\LessThan1~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((triag_step(3) & ((!\LessThan1~5_cout\) # (!pwm_counter(3)))) # (!triag_step(3) & (!pwm_counter(3) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(3),
	datab => pwm_counter(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X34_Y21_N22
\LessThan1~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((triag_step(4) & (pwm_counter(4) & !\LessThan1~7_cout\)) # (!triag_step(4) & ((pwm_counter(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(4),
	datab => pwm_counter(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X34_Y21_N24
\LessThan1~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((pwm_counter(5) & (triag_step(5) & !\LessThan1~9_cout\)) # (!pwm_counter(5) & ((triag_step(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(5),
	datab => triag_step(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X34_Y21_N26
\LessThan1~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((triag_step(6) & (pwm_counter(6) & !\LessThan1~11_cout\)) # (!triag_step(6) & ((pwm_counter(6)) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(6),
	datab => pwm_counter(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X34_Y21_N28
\LessThan1~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (triag_step(7) & (\LessThan1~13_cout\ & pwm_counter(7))) # (!triag_step(7) & ((\LessThan1~13_cout\) # (pwm_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => triag_step(7),
	datad => pwm_counter(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X35_Y20_N14
\LessThan1~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = (!triag_step(31) & (((!\Equal0~4_combout\) # (!\LessThan1~14_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \LessThan1~14_combout\,
	datac => triag_step(31),
	datad => \Equal0~4_combout\,
	combout => \LessThan1~16_combout\);

-- Location: DDIOOUTCELL_X7_Y0_N11
\led~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \LessThan1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led~reg0_q\);

ww_led <= \led~output_o\;
END structure;


