-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/21/2023 16:35:55"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab6 IS
    PORT (
	R_first_four : OUT std_logic_vector(1 TO 7);
	Clock : IN std_logic;
	Reset_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Reset_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	Enable_Decoder : IN std_logic;
	data_in : IN std_logic;
	FSM_reset : IN std_logic;
	R_last_four : OUT std_logic_vector(1 TO 7);
	Sign : OUT std_logic_vector(1 TO 7);
	student_id : OUT std_logic_vector(1 TO 7)
	);
END lab6;

-- Design Ports Information
-- R_first_four[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[6]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[7]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[1]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[2]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[4]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[5]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[6]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[7]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[7]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable_Decoder	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_first_four : std_logic_vector(1 TO 7);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Enable_Decoder : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_R_last_four : std_logic_vector(1 TO 7);
SIGNAL ww_Sign : std_logic_vector(1 TO 7);
SIGNAL ww_student_id : std_logic_vector(1 TO 7);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add3~6_combout\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~1_combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~0_combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~regout\ : std_logic;
SIGNAL \inst3|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s1~regout\ : std_logic;
SIGNAL \inst3|yfsm.s2~regout\ : std_logic;
SIGNAL \inst3|yfsm.s3~regout\ : std_logic;
SIGNAL \inst3|yfsm.s4~regout\ : std_logic;
SIGNAL \inst3|yfsm.s5~regout\ : std_logic;
SIGNAL \inst3|yfsm.s6~regout\ : std_logic;
SIGNAL \inst3|yfsm.s7~regout\ : std_logic;
SIGNAL \inst3|yfsm.s8~regout\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Result[3]~0_combout\ : std_logic;
SIGNAL \inst3|WideOr13~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~4_combout\ : std_logic;
SIGNAL \inst2|Add3~1\ : std_logic;
SIGNAL \inst2|Add3~3\ : std_logic;
SIGNAL \inst2|Add3~4_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Selector5~5_combout\ : std_logic;
SIGNAL \inst2|Selector5~6_combout\ : std_logic;
SIGNAL \inst2|Selector5~2_combout\ : std_logic;
SIGNAL \inst2|Selector5~3_combout\ : std_logic;
SIGNAL \inst2|Selector5~4_combout\ : std_logic;
SIGNAL \inst2|Selector6~3_combout\ : std_logic;
SIGNAL \inst2|Add3~2_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|Selector6~4_combout\ : std_logic;
SIGNAL \inst2|Selector6~2_combout\ : std_logic;
SIGNAL \inst2|Result[3]~1_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|Selector4~2_combout\ : std_logic;
SIGNAL \inst2|Selector4~3_combout\ : std_logic;
SIGNAL \inst2|Selector4~4_combout\ : std_logic;
SIGNAL \Enable_Decoder~combout\ : std_logic;
SIGNAL \inst2|Selector7~7_combout\ : std_logic;
SIGNAL \inst2|Add3~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~2_combout\ : std_logic;
SIGNAL \inst2|Selector7~3_combout\ : std_logic;
SIGNAL \inst2|Selector7~5_combout\ : std_logic;
SIGNAL \inst2|Selector7~6_combout\ : std_logic;
SIGNAL \inst2|Selector7~8_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Selector1~9_combout\ : std_logic;
SIGNAL \inst2|Selector1~4_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add3~5\ : std_logic;
SIGNAL \inst2|Add3~7\ : std_logic;
SIGNAL \inst2|Add3~9\ : std_logic;
SIGNAL \inst2|Add3~11\ : std_logic;
SIGNAL \inst2|Add3~12_combout\ : std_logic;
SIGNAL \inst2|Selector1~5_combout\ : std_logic;
SIGNAL \inst2|Selector1~6_combout\ : std_logic;
SIGNAL \inst2|Selector1~7_combout\ : std_logic;
SIGNAL \inst2|Selector1~8_combout\ : std_logic;
SIGNAL \inst2|Selector3~3_combout\ : std_logic;
SIGNAL \inst2|Add3~8_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~4_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|Add3~13\ : std_logic;
SIGNAL \inst2|Add3~14_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Selector0~5_combout\ : std_logic;
SIGNAL \inst2|Selector0~6_combout\ : std_logic;
SIGNAL \inst2|Selector0~2_combout\ : std_logic;
SIGNAL \inst2|Selector0~3_combout\ : std_logic;
SIGNAL \inst2|Selector0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add3~10_combout\ : std_logic;
SIGNAL \inst2|Selector2~5_combout\ : std_logic;
SIGNAL \inst2|Selector2~6_combout\ : std_logic;
SIGNAL \inst2|Selector2~2_combout\ : std_logic;
SIGNAL \inst2|Selector2~3_combout\ : std_logic;
SIGNAL \inst2|Selector2~4_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|LessThan0~1_cout\ : std_logic;
SIGNAL \inst2|LessThan0~3_cout\ : std_logic;
SIGNAL \inst2|LessThan0~5_cout\ : std_logic;
SIGNAL \inst2|LessThan0~7_cout\ : std_logic;
SIGNAL \inst2|LessThan0~9_cout\ : std_logic;
SIGNAL \inst2|LessThan0~11_cout\ : std_logic;
SIGNAL \inst2|LessThan0~13_cout\ : std_logic;
SIGNAL \inst2|LessThan0~14_combout\ : std_logic;
SIGNAL \inst2|Selector8~0_combout\ : std_logic;
SIGNAL \inst2|Selector8~1_combout\ : std_logic;
SIGNAL \inst2|Neg~regout\ : std_logic;
SIGNAL \inst3|student_id[3]~0_combout\ : std_logic;
SIGNAL \inst3|WideOr10~combout\ : std_logic;
SIGNAL \inst3|WideOr9~0_combout\ : std_logic;
SIGNAL \inst3|WideOr11~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Neg~regout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

R_first_four <= ww_R_first_four;
ww_Clock <= Clock;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_B <= B;
ww_Enable_Decoder <= Enable_Decoder;
ww_data_in <= data_in;
ww_FSM_reset <= FSM_reset;
R_last_four <= ww_R_last_four;
Sign <= ww_Sign;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\FSM_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_reset~combout\);

\Reset_A~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_A~combout\);

\Reset_B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_B~combout\);
\ALT_INV_Reset_B~clkctrl_outclk\ <= NOT \Reset_B~clkctrl_outclk\;
\ALT_INV_Reset_A~clkctrl_outclk\ <= NOT \Reset_A~clkctrl_outclk\;
\inst5|ALT_INV_Mux5~0_combout\ <= NOT \inst5|Mux5~0_combout\;
\inst5|ALT_INV_Mux4~0_combout\ <= NOT \inst5|Mux4~0_combout\;
\inst2|ALT_INV_Neg~regout\ <= NOT \inst2|Neg~regout\;
\inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst7|Mux6~0_combout\;
\inst6|ALT_INV_Mux6~0_combout\ <= NOT \inst6|Mux6~0_combout\;

-- Location: LCCOMB_X47_Y35_N6
\inst2|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~6_combout\ = (\inst|Q\(3) & ((\inst1|Q\(3) & (!\inst2|Add3~5\)) # (!\inst1|Q\(3) & (\inst2|Add3~5\ & VCC)))) # (!\inst|Q\(3) & ((\inst1|Q\(3) & ((\inst2|Add3~5\) # (GND))) # (!\inst1|Q\(3) & (!\inst2|Add3~5\))))
-- \inst2|Add3~7\ = CARRY((\inst|Q\(3) & (\inst1|Q\(3) & !\inst2|Add3~5\)) # (!\inst|Q\(3) & ((\inst1|Q\(3)) # (!\inst2|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst2|Add3~5\,
	combout => \inst2|Add3~6_combout\,
	cout => \inst2|Add3~7\);

-- Location: LCCOMB_X43_Y35_N2
\inst2|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (!\inst3|yfsm.s3~regout\ & (!\inst3|yfsm.s1~regout\ & !\inst3|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: LCCOMB_X43_Y35_N14
\inst2|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~1_combout\ = (\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst2|Selector7~1_combout\);

-- Location: LCCOMB_X43_Y35_N28
\inst3|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s0~0_combout\ = !\inst3|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s8~regout\,
	combout => \inst3|yfsm.s0~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FSM_reset,
	combout => \FSM_reset~combout\);

-- Location: CLKCTRL_G1
\FSM_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_reset~clkctrl_outclk\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCFF_X43_Y35_N29
\inst3|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s0~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s0~regout\);

-- Location: LCCOMB_X43_Y35_N0
\inst3|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s1~0_combout\ = !\inst3|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|yfsm.s1~0_combout\);

-- Location: LCFF_X43_Y35_N1
\inst3|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s1~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s1~regout\);

-- Location: LCFF_X43_Y35_N23
\inst3|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s1~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s2~regout\);

-- Location: LCFF_X43_Y35_N9
\inst3|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s2~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s3~regout\);

-- Location: LCFF_X43_Y35_N25
\inst3|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s3~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s4~regout\);

-- Location: LCFF_X43_Y35_N13
\inst3|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s4~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s5~regout\);

-- Location: LCFF_X43_Y35_N3
\inst3|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s5~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s6~regout\);

-- Location: LCFF_X43_Y35_N7
\inst3|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s6~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s7~regout\);

-- Location: LCFF_X43_Y35_N19
\inst3|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s7~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s8~regout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_A~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_A,
	combout => \Reset_A~combout\);

-- Location: CLKCTRL_G2
\Reset_A~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_A~clkctrl_outclk\);

-- Location: LCFF_X47_Y35_N21
\inst|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(2));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_B~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_B,
	combout => \Reset_B~combout\);

-- Location: CLKCTRL_G11
\Reset_B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~clkctrl_outclk\);

-- Location: LCFF_X47_Y35_N5
\inst1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(2));

-- Location: LCCOMB_X43_Y35_N20
\inst2|Result[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Result[3]~0_combout\ = (\inst3|yfsm.s3~regout\) # ((\inst3|yfsm.s2~regout\ & ((\inst3|yfsm.s1~regout\))) # (!\inst3|yfsm.s2~regout\ & (\inst3|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s6~regout\,
	datab => \inst3|yfsm.s2~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst2|Result[3]~0_combout\);

-- Location: LCCOMB_X43_Y35_N26
\inst3|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr13~0_combout\ = (!\inst3|yfsm.s3~regout\ & !\inst3|yfsm.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst3|WideOr13~0_combout\);

-- Location: LCCOMB_X43_Y35_N6
\inst2|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~4_combout\ = (!\inst3|yfsm.s4~regout\ & !\inst3|yfsm.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst2|Selector7~4_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X47_Y35_N3
\inst|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(1));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X47_Y35_N1
\inst|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(0));

-- Location: LCCOMB_X47_Y35_N0
\inst2|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~0_combout\ = (\inst1|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & ((\inst|Q\(0)) # (GND)))
-- \inst2|Add3~1\ = CARRY((\inst|Q\(0)) # (!\inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst2|Add3~0_combout\,
	cout => \inst2|Add3~1\);

-- Location: LCCOMB_X47_Y35_N2
\inst2|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~2_combout\ = (\inst1|Q\(1) & ((\inst|Q\(1) & (!\inst2|Add3~1\)) # (!\inst|Q\(1) & ((\inst2|Add3~1\) # (GND))))) # (!\inst1|Q\(1) & ((\inst|Q\(1) & (\inst2|Add3~1\ & VCC)) # (!\inst|Q\(1) & (!\inst2|Add3~1\))))
-- \inst2|Add3~3\ = CARRY((\inst1|Q\(1) & ((!\inst2|Add3~1\) # (!\inst|Q\(1)))) # (!\inst1|Q\(1) & (!\inst|Q\(1) & !\inst2|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst|Q\(1),
	datad => VCC,
	cin => \inst2|Add3~1\,
	combout => \inst2|Add3~2_combout\,
	cout => \inst2|Add3~3\);

-- Location: LCCOMB_X47_Y35_N4
\inst2|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~4_combout\ = ((\inst|Q\(2) $ (\inst1|Q\(2) $ (\inst2|Add3~3\)))) # (GND)
-- \inst2|Add3~5\ = CARRY((\inst|Q\(2) & ((!\inst2|Add3~3\) # (!\inst1|Q\(2)))) # (!\inst|Q\(2) & (!\inst1|Q\(2) & !\inst2|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst1|Q\(2),
	datad => VCC,
	cin => \inst2|Add3~3\,
	combout => \inst2|Add3~4_combout\,
	cout => \inst2|Add3~5\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCFF_X47_Y35_N19
\inst1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(1));

-- Location: LCCOMB_X47_Y35_N16
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst1|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & (\inst|Q\(0) & VCC))
-- \inst2|Add0~1\ = CARRY((\inst1|Q\(0) & \inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X47_Y35_N18
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst|Q\(1) & ((\inst1|Q\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst1|Q\(1) & (!\inst2|Add0~1\)))) # (!\inst|Q\(1) & ((\inst1|Q\(1) & (!\inst2|Add0~1\)) # (!\inst1|Q\(1) & ((\inst2|Add0~1\) # (GND)))))
-- \inst2|Add0~3\ = CARRY((\inst|Q\(1) & (!\inst1|Q\(1) & !\inst2|Add0~1\)) # (!\inst|Q\(1) & ((!\inst2|Add0~1\) # (!\inst1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X47_Y35_N20
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = ((\inst|Q\(2) $ (\inst1|Q\(2) $ (!\inst2|Add0~3\)))) # (GND)
-- \inst2|Add0~5\ = CARRY((\inst|Q\(2) & ((\inst1|Q\(2)) # (!\inst2|Add0~3\))) # (!\inst|Q\(2) & (\inst1|Q\(2) & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst1|Q\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X44_Y35_N30
\inst2|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~5_combout\ = (\inst2|Result[3]~1_combout\ & (\inst2|Selector7~4_combout\ & (\inst2|Add3~4_combout\))) # (!\inst2|Result[3]~1_combout\ & (((\inst2|Add0~4_combout\)) # (!\inst2|Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~1_combout\,
	datab => \inst2|Selector7~4_combout\,
	datac => \inst2|Add3~4_combout\,
	datad => \inst2|Add0~4_combout\,
	combout => \inst2|Selector5~5_combout\);

-- Location: LCCOMB_X44_Y35_N12
\inst2|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~6_combout\ = (\inst2|Selector7~4_combout\ & (((\inst2|Selector5~5_combout\)))) # (!\inst2|Selector7~4_combout\ & ((\inst1|Q\(2) & (\inst|Q\(2) & !\inst2|Selector5~5_combout\)) # (!\inst1|Q\(2) & (!\inst|Q\(2) & 
-- \inst2|Selector5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst2|Selector7~4_combout\,
	datac => \inst|Q\(2),
	datad => \inst2|Selector5~5_combout\,
	combout => \inst2|Selector5~6_combout\);

-- Location: LCCOMB_X44_Y35_N0
\inst2|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~2_combout\ = (\inst2|Result[3]~0_combout\ & (!\inst3|WideOr13~0_combout\)) # (!\inst2|Result[3]~0_combout\ & ((\inst3|WideOr13~0_combout\ & ((\inst2|Selector5~6_combout\))) # (!\inst3|WideOr13~0_combout\ & (!\inst|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~0_combout\,
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst|Q\(2),
	datad => \inst2|Selector5~6_combout\,
	combout => \inst2|Selector5~2_combout\);

-- Location: LCCOMB_X44_Y35_N6
\inst2|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~3_combout\ = (\inst2|Result[3]~0_combout\ & ((\inst|Q\(2) & (!\inst1|Q\(2))) # (!\inst|Q\(2) & ((\inst1|Q\(2)) # (\inst2|Selector5~2_combout\))))) # (!\inst2|Result[3]~0_combout\ & (((\inst2|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst1|Q\(2),
	datac => \inst2|Result[3]~0_combout\,
	datad => \inst2|Selector5~2_combout\,
	combout => \inst2|Selector5~3_combout\);

-- Location: LCCOMB_X44_Y35_N14
\inst2|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~4_combout\ = (\inst3|yfsm.s8~regout\ & ((\inst1|Q\(2)) # ((\inst|Q\(2))))) # (!\inst3|yfsm.s8~regout\ & (((\inst2|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst3|yfsm.s8~regout\,
	datac => \inst|Q\(2),
	datad => \inst2|Selector5~3_combout\,
	combout => \inst2|Selector5~4_combout\);

-- Location: LCFF_X44_Y35_N15
\inst2|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(2));

-- Location: LCCOMB_X44_Y35_N18
\inst2|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~3_combout\ = (\inst2|Result[3]~0_combout\ & ((\inst|Q\(1) & (!\inst1|Q\(1))) # (!\inst|Q\(1) & ((\inst1|Q\(1)) # (!\inst3|WideOr13~0_combout\))))) # (!\inst2|Result[3]~0_combout\ & (\inst|Q\(1) $ (((!\inst3|WideOr13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~0_combout\,
	datab => \inst|Q\(1),
	datac => \inst1|Q\(1),
	datad => \inst3|WideOr13~0_combout\,
	combout => \inst2|Selector6~3_combout\);

-- Location: LCCOMB_X46_Y35_N30
\inst2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|Result[3]~1_combout\ & (((\inst2|Add3~2_combout\)) # (!\inst2|Selector7~4_combout\))) # (!\inst2|Result[3]~1_combout\ & (\inst2|Selector7~4_combout\ & ((\inst2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~1_combout\,
	datab => \inst2|Selector7~4_combout\,
	datac => \inst2|Add3~2_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: LCCOMB_X45_Y35_N28
\inst2|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst2|Selector7~4_combout\ & (((\inst2|Selector6~0_combout\)))) # (!\inst2|Selector7~4_combout\ & ((\inst|Q\(1) & (\inst1|Q\(1) & \inst2|Selector6~0_combout\)) # (!\inst|Q\(1) & (!\inst1|Q\(1) & 
-- !\inst2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datac => \inst2|Selector7~4_combout\,
	datad => \inst2|Selector6~0_combout\,
	combout => \inst2|Selector6~1_combout\);

-- Location: LCCOMB_X45_Y35_N30
\inst2|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~4_combout\ = (\inst|Q\(1) & (\inst2|Selector6~3_combout\ & ((\inst2|Result[3]~0_combout\) # (\inst2|Selector6~1_combout\)))) # (!\inst|Q\(1) & ((\inst2|Selector6~3_combout\) # ((!\inst2|Result[3]~0_combout\ & 
-- \inst2|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst2|Selector6~3_combout\,
	datac => \inst2|Result[3]~0_combout\,
	datad => \inst2|Selector6~1_combout\,
	combout => \inst2|Selector6~4_combout\);

-- Location: LCCOMB_X45_Y35_N8
\inst2|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~2_combout\ = (\inst3|yfsm.s8~regout\ & ((\inst|Q\(1)) # ((\inst1|Q\(1))))) # (!\inst3|yfsm.s8~regout\ & (((\inst2|Selector6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector6~4_combout\,
	combout => \inst2|Selector6~2_combout\);

-- Location: LCFF_X45_Y35_N9
\inst2|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X47_Y35_N7
\inst|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCFF_X47_Y35_N23
\inst1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(3));

-- Location: LCCOMB_X43_Y35_N10
\inst2|Result[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Result[3]~1_combout\ = (\inst3|yfsm.s1~regout\) # ((\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst2|Result[3]~1_combout\);

-- Location: LCCOMB_X47_Y35_N22
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst|Q\(3) & ((\inst1|Q\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst1|Q\(3) & (!\inst2|Add0~5\)))) # (!\inst|Q\(3) & ((\inst1|Q\(3) & (!\inst2|Add0~5\)) # (!\inst1|Q\(3) & ((\inst2|Add0~5\) # (GND)))))
-- \inst2|Add0~7\ = CARRY((\inst|Q\(3) & (!\inst1|Q\(3) & !\inst2|Add0~5\)) # (!\inst|Q\(3) & ((!\inst2|Add0~5\) # (!\inst1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X46_Y35_N12
\inst2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|Result[3]~1_combout\ & ((\inst2|Add3~6_combout\) # ((!\inst2|Selector7~4_combout\)))) # (!\inst2|Result[3]~1_combout\ & (((\inst2|Selector7~4_combout\ & \inst2|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~6_combout\,
	datab => \inst2|Result[3]~1_combout\,
	datac => \inst2|Selector7~4_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X46_Y35_N2
\inst2|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~1_combout\ = (\inst2|Selector7~4_combout\ & (((\inst2|Selector4~0_combout\)))) # (!\inst2|Selector7~4_combout\ & ((\inst|Q\(3) & (\inst1|Q\(3) & \inst2|Selector4~0_combout\)) # (!\inst|Q\(3) & (!\inst1|Q\(3) & 
-- !\inst2|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst2|Selector7~4_combout\,
	datac => \inst1|Q\(3),
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|Selector4~1_combout\);

-- Location: LCCOMB_X46_Y35_N8
\inst2|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~2_combout\ = (\inst3|WideOr13~0_combout\ & (!\inst2|Result[3]~0_combout\ & ((\inst2|Selector4~1_combout\)))) # (!\inst3|WideOr13~0_combout\ & ((\inst2|Result[3]~0_combout\) # ((!\inst|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~0_combout\,
	datab => \inst2|Result[3]~0_combout\,
	datac => \inst|Q\(3),
	datad => \inst2|Selector4~1_combout\,
	combout => \inst2|Selector4~2_combout\);

-- Location: LCCOMB_X46_Y35_N10
\inst2|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~3_combout\ = (\inst2|Result[3]~0_combout\ & ((\inst1|Q\(3) & (!\inst|Q\(3))) # (!\inst1|Q\(3) & ((\inst|Q\(3)) # (\inst2|Selector4~2_combout\))))) # (!\inst2|Result[3]~0_combout\ & (((\inst2|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst|Q\(3),
	datac => \inst2|Selector4~2_combout\,
	datad => \inst2|Result[3]~0_combout\,
	combout => \inst2|Selector4~3_combout\);

-- Location: LCCOMB_X46_Y35_N20
\inst2|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~4_combout\ = (\inst3|yfsm.s8~regout\ & ((\inst|Q\(3)) # ((\inst1|Q\(3))))) # (!\inst3|yfsm.s8~regout\ & (((\inst2|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst|Q\(3),
	datac => \inst1|Q\(3),
	datad => \inst2|Selector4~3_combout\,
	combout => \inst2|Selector4~4_combout\);

-- Location: LCFF_X46_Y35_N21
\inst2|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(3));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable_Decoder~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Enable_Decoder,
	combout => \Enable_Decoder~combout\);

-- Location: LCCOMB_X43_Y35_N18
\inst2|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~7_combout\ = (\Enable_Decoder~combout\ & ((\inst1|Q\(0)) # ((\inst|Q\(0)) # (!\inst3|yfsm.s8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datac => \inst3|yfsm.s8~regout\,
	datad => \Enable_Decoder~combout\,
	combout => \inst2|Selector7~7_combout\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X47_Y35_N17
\inst1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(0));

-- Location: LCCOMB_X44_Y35_N2
\inst2|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~2_combout\ = (\inst2|Selector7~1_combout\ & (((\inst2|Add3~0_combout\)) # (!\inst3|WideOr13~0_combout\))) # (!\inst2|Selector7~1_combout\ & (\inst3|WideOr13~0_combout\ & ((\inst2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~1_combout\,
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst2|Add3~0_combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|Selector7~2_combout\);

-- Location: LCCOMB_X44_Y35_N20
\inst2|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~3_combout\ = (\inst3|WideOr13~0_combout\ & (((\inst2|Selector7~2_combout\)))) # (!\inst3|WideOr13~0_combout\ & (((!\inst1|Q\(0) & \inst2|Selector7~2_combout\)) # (!\inst|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst1|Q\(0),
	datad => \inst2|Selector7~2_combout\,
	combout => \inst2|Selector7~3_combout\);

-- Location: LCCOMB_X43_Y35_N30
\inst2|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~5_combout\ = (\inst3|yfsm.s4~regout\ & (!\inst3|yfsm.s5~regout\ & (!\inst|Q\(0) & !\inst1|Q\(0)))) # (!\inst3|yfsm.s4~regout\ & (\inst3|yfsm.s5~regout\ & (\inst|Q\(0) & \inst1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|yfsm.s5~regout\,
	datac => \inst|Q\(0),
	datad => \inst1|Q\(0),
	combout => \inst2|Selector7~5_combout\);

-- Location: LCCOMB_X44_Y35_N22
\inst2|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~6_combout\ = (\inst2|Selector7~0_combout\ & ((\inst2|Selector7~5_combout\) # ((\inst2|Selector7~4_combout\ & \inst2|Selector7~3_combout\)))) # (!\inst2|Selector7~0_combout\ & (\inst2|Selector7~4_combout\ & (\inst2|Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~0_combout\,
	datab => \inst2|Selector7~4_combout\,
	datac => \inst2|Selector7~3_combout\,
	datad => \inst2|Selector7~5_combout\,
	combout => \inst2|Selector7~6_combout\);

-- Location: LCCOMB_X44_Y35_N24
\inst2|Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~8_combout\ = (\inst2|Selector7~7_combout\ & ((\inst3|yfsm.s8~regout\) # ((!\inst3|yfsm.s7~regout\ & \inst2|Selector7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|Selector7~7_combout\,
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector7~6_combout\,
	combout => \inst2|Selector7~8_combout\);

-- Location: LCFF_X44_Y35_N25
\inst2|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(0));

-- Location: LCCOMB_X45_Y35_N2
\inst6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst2|Result\(2) & (!\inst2|Result\(1) & (\inst2|Result\(3) $ (!\inst2|Result\(0))))) # (!\inst2|Result\(2) & (\inst2|Result\(0) & (\inst2|Result\(1) $ (!\inst2|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(2),
	datab => \inst2|Result\(1),
	datac => \inst2|Result\(3),
	datad => \inst2|Result\(0),
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y35_N16
\inst6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst2|Result\(1) & ((\inst2|Result\(0) & ((\inst2|Result\(3)))) # (!\inst2|Result\(0) & (\inst2|Result\(2))))) # (!\inst2|Result\(1) & (\inst2|Result\(2) & (\inst2|Result\(0) $ (\inst2|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(0),
	datab => \inst2|Result\(2),
	datac => \inst2|Result\(1),
	datad => \inst2|Result\(3),
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y35_N10
\inst6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst2|Result\(2) & (\inst2|Result\(3) & ((\inst2|Result\(1)) # (!\inst2|Result\(0))))) # (!\inst2|Result\(2) & (!\inst2|Result\(0) & (\inst2|Result\(1) & !\inst2|Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(0),
	datab => \inst2|Result\(2),
	datac => \inst2|Result\(1),
	datad => \inst2|Result\(3),
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y35_N4
\inst6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst2|Result\(0) & (\inst2|Result\(2) $ ((!\inst2|Result\(1))))) # (!\inst2|Result\(0) & ((\inst2|Result\(2) & (!\inst2|Result\(1) & !\inst2|Result\(3))) # (!\inst2|Result\(2) & (\inst2|Result\(1) & \inst2|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(0),
	datab => \inst2|Result\(2),
	datac => \inst2|Result\(1),
	datad => \inst2|Result\(3),
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X44_Y35_N26
\inst6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst2|Result\(1) & (\inst2|Result\(0) & ((!\inst2|Result\(3))))) # (!\inst2|Result\(1) & ((\inst2|Result\(2) & ((!\inst2|Result\(3)))) # (!\inst2|Result\(2) & (\inst2|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(0),
	datab => \inst2|Result\(2),
	datac => \inst2|Result\(1),
	datad => \inst2|Result\(3),
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y35_N0
\inst6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst2|Result\(2) & (\inst2|Result\(0) & (\inst2|Result\(1) $ (\inst2|Result\(3))))) # (!\inst2|Result\(2) & (!\inst2|Result\(3) & ((\inst2|Result\(1)) # (\inst2|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(2),
	datab => \inst2|Result\(1),
	datac => \inst2|Result\(3),
	datad => \inst2|Result\(0),
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y35_N10
\inst6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst2|Result\(0) & ((\inst2|Result\(3)) # (\inst2|Result\(2) $ (\inst2|Result\(1))))) # (!\inst2|Result\(0) & ((\inst2|Result\(1)) # (\inst2|Result\(2) $ (\inst2|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(2),
	datab => \inst2|Result\(1),
	datac => \inst2|Result\(3),
	datad => \inst2|Result\(0),
	combout => \inst6|Mux6~0_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X47_Y35_N13
\inst1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(6));

-- Location: LCCOMB_X43_Y35_N4
\inst2|Selector1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~9_combout\ = (\inst3|yfsm.s3~regout\ & (((\inst2|Result[3]~0_combout\)))) # (!\inst3|yfsm.s3~regout\ & ((\inst2|Result[3]~0_combout\ & ((\inst3|yfsm.s2~regout\))) # (!\inst2|Result[3]~0_combout\ & (\inst2|Selector7~4_combout\ & 
-- !\inst3|yfsm.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~4_combout\,
	datab => \inst3|yfsm.s3~regout\,
	datac => \inst2|Result[3]~0_combout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst2|Selector1~9_combout\);

-- Location: LCCOMB_X48_Y35_N24
\inst2|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~4_combout\ = (\inst2|Result[3]~0_combout\ & (\inst|Q\(6) $ ((\inst1|Q\(6))))) # (!\inst2|Result[3]~0_combout\ & ((\inst|Q\(6) & (\inst1|Q\(6) & \inst2|Result[3]~1_combout\)) # (!\inst|Q\(6) & (!\inst1|Q\(6) & 
-- !\inst2|Result[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Q\(6),
	datac => \inst2|Result[3]~1_combout\,
	datad => \inst2|Result[3]~0_combout\,
	combout => \inst2|Selector1~4_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X47_Y35_N29
\inst|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(6));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X47_Y35_N27
\inst1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(5));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X47_Y35_N9
\inst|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(4));

-- Location: LCCOMB_X47_Y35_N24
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = ((\inst1|Q\(4) $ (\inst|Q\(4) $ (!\inst2|Add0~7\)))) # (GND)
-- \inst2|Add0~9\ = CARRY((\inst1|Q\(4) & ((\inst|Q\(4)) # (!\inst2|Add0~7\))) # (!\inst1|Q\(4) & (\inst|Q\(4) & !\inst2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X47_Y35_N26
\inst2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst|Q\(5) & ((\inst1|Q\(5) & (\inst2|Add0~9\ & VCC)) # (!\inst1|Q\(5) & (!\inst2|Add0~9\)))) # (!\inst|Q\(5) & ((\inst1|Q\(5) & (!\inst2|Add0~9\)) # (!\inst1|Q\(5) & ((\inst2|Add0~9\) # (GND)))))
-- \inst2|Add0~11\ = CARRY((\inst|Q\(5) & (!\inst1|Q\(5) & !\inst2|Add0~9\)) # (!\inst|Q\(5) & ((!\inst2|Add0~9\) # (!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X47_Y35_N28
\inst2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = ((\inst1|Q\(6) $ (\inst|Q\(6) $ (!\inst2|Add0~11\)))) # (GND)
-- \inst2|Add0~13\ = CARRY((\inst1|Q\(6) & ((\inst|Q\(6)) # (!\inst2|Add0~11\))) # (!\inst1|Q\(6) & (\inst|Q\(6) & !\inst2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X47_Y35_N8
\inst2|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~8_combout\ = ((\inst1|Q\(4) $ (\inst|Q\(4) $ (\inst2|Add3~7\)))) # (GND)
-- \inst2|Add3~9\ = CARRY((\inst1|Q\(4) & (\inst|Q\(4) & !\inst2|Add3~7\)) # (!\inst1|Q\(4) & ((\inst|Q\(4)) # (!\inst2|Add3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst2|Add3~7\,
	combout => \inst2|Add3~8_combout\,
	cout => \inst2|Add3~9\);

-- Location: LCCOMB_X47_Y35_N10
\inst2|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~10_combout\ = (\inst|Q\(5) & ((\inst1|Q\(5) & (!\inst2|Add3~9\)) # (!\inst1|Q\(5) & (\inst2|Add3~9\ & VCC)))) # (!\inst|Q\(5) & ((\inst1|Q\(5) & ((\inst2|Add3~9\) # (GND))) # (!\inst1|Q\(5) & (!\inst2|Add3~9\))))
-- \inst2|Add3~11\ = CARRY((\inst|Q\(5) & (\inst1|Q\(5) & !\inst2|Add3~9\)) # (!\inst|Q\(5) & ((\inst1|Q\(5)) # (!\inst2|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst2|Add3~9\,
	combout => \inst2|Add3~10_combout\,
	cout => \inst2|Add3~11\);

-- Location: LCCOMB_X47_Y35_N12
\inst2|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~12_combout\ = ((\inst1|Q\(6) $ (\inst|Q\(6) $ (\inst2|Add3~11\)))) # (GND)
-- \inst2|Add3~13\ = CARRY((\inst1|Q\(6) & (\inst|Q\(6) & !\inst2|Add3~11\)) # (!\inst1|Q\(6) & ((\inst|Q\(6)) # (!\inst2|Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst2|Add3~11\,
	combout => \inst2|Add3~12_combout\,
	cout => \inst2|Add3~13\);

-- Location: LCCOMB_X48_Y35_N10
\inst2|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~5_combout\ = (\inst2|Result[3]~1_combout\ & ((\inst2|Add3~12_combout\))) # (!\inst2|Result[3]~1_combout\ & (\inst2|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~12_combout\,
	datac => \inst2|Result[3]~1_combout\,
	datad => \inst2|Add3~12_combout\,
	combout => \inst2|Selector1~5_combout\);

-- Location: LCCOMB_X48_Y35_N12
\inst2|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~6_combout\ = (\inst3|WideOr13~0_combout\ & ((\inst2|Selector1~9_combout\ & ((\inst2|Selector1~5_combout\))) # (!\inst2|Selector1~9_combout\ & (\inst2|Selector1~4_combout\)))) # (!\inst3|WideOr13~0_combout\ & (\inst2|Selector1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~0_combout\,
	datab => \inst2|Selector1~9_combout\,
	datac => \inst2|Selector1~4_combout\,
	datad => \inst2|Selector1~5_combout\,
	combout => \inst2|Selector1~6_combout\);

-- Location: LCCOMB_X48_Y35_N6
\inst2|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~7_combout\ = (\inst3|WideOr13~0_combout\ & (((\inst2|Selector1~6_combout\)))) # (!\inst3|WideOr13~0_combout\ & (((!\inst1|Q\(6) & \inst2|Selector1~6_combout\)) # (!\inst|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Q\(6),
	datac => \inst3|WideOr13~0_combout\,
	datad => \inst2|Selector1~6_combout\,
	combout => \inst2|Selector1~7_combout\);

-- Location: LCCOMB_X48_Y35_N2
\inst2|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~8_combout\ = (\inst3|yfsm.s8~regout\ & ((\inst|Q\(6)) # ((\inst1|Q\(6))))) # (!\inst3|yfsm.s8~regout\ & (((\inst2|Selector1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Q\(6),
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector1~7_combout\,
	combout => \inst2|Selector1~8_combout\);

-- Location: LCFF_X48_Y35_N3
\inst2|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(6));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X47_Y35_N25
\inst1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(4));

-- Location: LCCOMB_X46_Y35_N16
\inst2|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~3_combout\ = (\inst|Q\(4) & ((\inst2|Result[3]~0_combout\ & (!\inst1|Q\(4))) # (!\inst2|Result[3]~0_combout\ & ((\inst3|WideOr13~0_combout\))))) # (!\inst|Q\(4) & (((\inst1|Q\(4) & \inst2|Result[3]~0_combout\)) # 
-- (!\inst3|WideOr13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst1|Q\(4),
	datac => \inst3|WideOr13~0_combout\,
	datad => \inst2|Result[3]~0_combout\,
	combout => \inst2|Selector3~3_combout\);

-- Location: LCCOMB_X46_Y35_N4
\inst2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|Result[3]~1_combout\ & (((\inst2|Add3~8_combout\)) # (!\inst2|Selector7~4_combout\))) # (!\inst2|Result[3]~1_combout\ & (\inst2|Selector7~4_combout\ & ((\inst2|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~1_combout\,
	datab => \inst2|Selector7~4_combout\,
	datac => \inst2|Add3~8_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X46_Y35_N22
\inst2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|Selector3~0_combout\ & ((\inst2|Selector7~4_combout\) # ((\inst|Q\(4) & \inst1|Q\(4))))) # (!\inst2|Selector3~0_combout\ & (!\inst|Q\(4) & (!\inst1|Q\(4) & !\inst2|Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst1|Q\(4),
	datac => \inst2|Selector3~0_combout\,
	datad => \inst2|Selector7~4_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X46_Y35_N26
\inst2|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~4_combout\ = (\inst|Q\(4) & (\inst2|Selector3~3_combout\ & ((\inst2|Result[3]~0_combout\) # (\inst2|Selector3~1_combout\)))) # (!\inst|Q\(4) & ((\inst2|Selector3~3_combout\) # ((!\inst2|Result[3]~0_combout\ & 
-- \inst2|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst2|Result[3]~0_combout\,
	datac => \inst2|Selector3~3_combout\,
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Selector3~4_combout\);

-- Location: LCCOMB_X46_Y35_N14
\inst2|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\inst3|yfsm.s8~regout\ & ((\inst1|Q\(4)) # ((\inst|Q\(4))))) # (!\inst3|yfsm.s8~regout\ & (((\inst2|Selector3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst1|Q\(4),
	datac => \inst|Q\(4),
	datad => \inst2|Selector3~4_combout\,
	combout => \inst2|Selector3~2_combout\);

-- Location: LCFF_X46_Y35_N15
\inst2|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(4));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X47_Y35_N31
\inst1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(7));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X47_Y35_N15
\inst|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(7));

-- Location: LCCOMB_X47_Y35_N14
\inst2|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~14_combout\ = \inst|Q\(7) $ (\inst2|Add3~13\ $ (!\inst1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst2|Add3~13\,
	combout => \inst2|Add3~14_combout\);

-- Location: LCCOMB_X47_Y35_N30
\inst2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = \inst|Q\(7) $ (\inst2|Add0~13\ $ (\inst1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\);

-- Location: LCCOMB_X46_Y35_N28
\inst2|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~5_combout\ = (\inst2|Result[3]~1_combout\ & (\inst2|Selector7~4_combout\ & (\inst2|Add3~14_combout\))) # (!\inst2|Result[3]~1_combout\ & (((\inst2|Add0~14_combout\)) # (!\inst2|Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~1_combout\,
	datab => \inst2|Selector7~4_combout\,
	datac => \inst2|Add3~14_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|Selector0~5_combout\);

-- Location: LCCOMB_X46_Y35_N18
\inst2|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~6_combout\ = (\inst2|Selector7~4_combout\ & (((\inst2|Selector0~5_combout\)))) # (!\inst2|Selector7~4_combout\ & ((\inst1|Q\(7) & (\inst|Q\(7) & !\inst2|Selector0~5_combout\)) # (!\inst1|Q\(7) & (!\inst|Q\(7) & 
-- \inst2|Selector0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~4_combout\,
	datab => \inst1|Q\(7),
	datac => \inst|Q\(7),
	datad => \inst2|Selector0~5_combout\,
	combout => \inst2|Selector0~6_combout\);

-- Location: LCCOMB_X46_Y35_N0
\inst2|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~2_combout\ = (\inst2|Result[3]~0_combout\ & (((!\inst3|WideOr13~0_combout\)))) # (!\inst2|Result[3]~0_combout\ & ((\inst3|WideOr13~0_combout\ & ((\inst2|Selector0~6_combout\))) # (!\inst3|WideOr13~0_combout\ & (!\inst|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datab => \inst2|Result[3]~0_combout\,
	datac => \inst3|WideOr13~0_combout\,
	datad => \inst2|Selector0~6_combout\,
	combout => \inst2|Selector0~2_combout\);

-- Location: LCCOMB_X46_Y35_N6
\inst2|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~3_combout\ = (\inst2|Result[3]~0_combout\ & ((\inst1|Q\(7) & (!\inst|Q\(7))) # (!\inst1|Q\(7) & ((\inst|Q\(7)) # (\inst2|Selector0~2_combout\))))) # (!\inst2|Result[3]~0_combout\ & (((\inst2|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~0_combout\,
	datab => \inst1|Q\(7),
	datac => \inst|Q\(7),
	datad => \inst2|Selector0~2_combout\,
	combout => \inst2|Selector0~3_combout\);

-- Location: LCCOMB_X46_Y35_N24
\inst2|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~4_combout\ = (\inst3|yfsm.s8~regout\ & ((\inst1|Q\(7)) # ((\inst|Q\(7))))) # (!\inst3|yfsm.s8~regout\ & (((\inst2|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst1|Q\(7),
	datac => \inst|Q\(7),
	datad => \inst2|Selector0~3_combout\,
	combout => \inst2|Selector0~4_combout\);

-- Location: LCFF_X46_Y35_N25
\inst2|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(7));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X47_Y35_N11
\inst|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(5));

-- Location: LCCOMB_X48_Y35_N28
\inst2|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~5_combout\ = (\inst2|Selector7~4_combout\ & ((\inst2|Result[3]~1_combout\ & ((\inst2|Add3~10_combout\))) # (!\inst2|Result[3]~1_combout\ & (\inst2|Add0~10_combout\)))) # (!\inst2|Selector7~4_combout\ & (((!\inst2|Result[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~4_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Result[3]~1_combout\,
	datad => \inst2|Add3~10_combout\,
	combout => \inst2|Selector2~5_combout\);

-- Location: LCCOMB_X48_Y35_N18
\inst2|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~6_combout\ = (\inst2|Selector7~4_combout\ & (((\inst2|Selector2~5_combout\)))) # (!\inst2|Selector7~4_combout\ & ((\inst|Q\(5) & (\inst1|Q\(5) & !\inst2|Selector2~5_combout\)) # (!\inst|Q\(5) & (!\inst1|Q\(5) & 
-- \inst2|Selector2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datac => \inst2|Selector7~4_combout\,
	datad => \inst2|Selector2~5_combout\,
	combout => \inst2|Selector2~6_combout\);

-- Location: LCCOMB_X48_Y35_N0
\inst2|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~2_combout\ = (\inst2|Result[3]~0_combout\ & (((!\inst3|WideOr13~0_combout\)))) # (!\inst2|Result[3]~0_combout\ & ((\inst3|WideOr13~0_combout\ & ((\inst2|Selector2~6_combout\))) # (!\inst3|WideOr13~0_combout\ & (!\inst|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst2|Result[3]~0_combout\,
	datac => \inst3|WideOr13~0_combout\,
	datad => \inst2|Selector2~6_combout\,
	combout => \inst2|Selector2~2_combout\);

-- Location: LCCOMB_X48_Y35_N22
\inst2|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~3_combout\ = (\inst2|Result[3]~0_combout\ & ((\inst1|Q\(5) & (!\inst|Q\(5))) # (!\inst1|Q\(5) & ((\inst|Q\(5)) # (\inst2|Selector2~2_combout\))))) # (!\inst2|Result[3]~0_combout\ & (((\inst2|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result[3]~0_combout\,
	datab => \inst1|Q\(5),
	datac => \inst|Q\(5),
	datad => \inst2|Selector2~2_combout\,
	combout => \inst2|Selector2~3_combout\);

-- Location: LCCOMB_X48_Y35_N20
\inst2|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~4_combout\ = (\inst3|yfsm.s8~regout\ & ((\inst1|Q\(5)) # ((\inst|Q\(5))))) # (!\inst3|yfsm.s8~regout\ & (((\inst2|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst1|Q\(5),
	datac => \inst|Q\(5),
	datad => \inst2|Selector2~3_combout\,
	combout => \inst2|Selector2~4_combout\);

-- Location: LCFF_X48_Y35_N21
\inst2|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Result\(5));

-- Location: LCCOMB_X54_Y35_N16
\inst7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst2|Result\(6) & (!\inst2|Result\(5) & (\inst2|Result\(4) $ (!\inst2|Result\(7))))) # (!\inst2|Result\(6) & (\inst2|Result\(4) & (\inst2|Result\(7) $ (!\inst2|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(6),
	datab => \inst2|Result\(4),
	datac => \inst2|Result\(7),
	datad => \inst2|Result\(5),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y35_N6
\inst7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst2|Result\(7) & ((\inst2|Result\(4) & ((\inst2|Result\(5)))) # (!\inst2|Result\(4) & (\inst2|Result\(6))))) # (!\inst2|Result\(7) & (\inst2|Result\(6) & (\inst2|Result\(4) $ (\inst2|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(6),
	datab => \inst2|Result\(4),
	datac => \inst2|Result\(7),
	datad => \inst2|Result\(5),
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y35_N0
\inst7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst2|Result\(6) & (\inst2|Result\(7) & ((\inst2|Result\(5)) # (!\inst2|Result\(4))))) # (!\inst2|Result\(6) & (!\inst2|Result\(4) & (!\inst2|Result\(7) & \inst2|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(6),
	datab => \inst2|Result\(4),
	datac => \inst2|Result\(7),
	datad => \inst2|Result\(5),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y35_N2
\inst7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst2|Result\(4) & (\inst2|Result\(6) $ (((!\inst2|Result\(5)))))) # (!\inst2|Result\(4) & ((\inst2|Result\(6) & (!\inst2|Result\(7) & !\inst2|Result\(5))) # (!\inst2|Result\(6) & (\inst2|Result\(7) & \inst2|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(6),
	datab => \inst2|Result\(4),
	datac => \inst2|Result\(7),
	datad => \inst2|Result\(5),
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y35_N24
\inst7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst2|Result\(5) & (((\inst2|Result\(4) & !\inst2|Result\(7))))) # (!\inst2|Result\(5) & ((\inst2|Result\(6) & ((!\inst2|Result\(7)))) # (!\inst2|Result\(6) & (\inst2|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(6),
	datab => \inst2|Result\(4),
	datac => \inst2|Result\(7),
	datad => \inst2|Result\(5),
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y35_N10
\inst7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst2|Result\(6) & (\inst2|Result\(4) & (\inst2|Result\(7) $ (\inst2|Result\(5))))) # (!\inst2|Result\(6) & (!\inst2|Result\(7) & ((\inst2|Result\(4)) # (\inst2|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(6),
	datab => \inst2|Result\(4),
	datac => \inst2|Result\(7),
	datad => \inst2|Result\(5),
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y35_N28
\inst7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst2|Result\(4) & ((\inst2|Result\(7)) # (\inst2|Result\(6) $ (\inst2|Result\(5))))) # (!\inst2|Result\(4) & ((\inst2|Result\(5)) # (\inst2|Result\(6) $ (\inst2|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Result\(6),
	datab => \inst2|Result\(4),
	datac => \inst2|Result\(7),
	datad => \inst2|Result\(5),
	combout => \inst7|Mux6~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y35_N12
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_cout\ = CARRY((!\inst|Q\(0) & \inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst1|Q\(0),
	datad => VCC,
	cout => \inst2|LessThan0~1_cout\);

-- Location: LCCOMB_X45_Y35_N14
\inst2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_cout\ = CARRY((\inst|Q\(1) & ((!\inst2|LessThan0~1_cout\) # (!\inst1|Q\(1)))) # (!\inst|Q\(1) & (!\inst1|Q\(1) & !\inst2|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst2|LessThan0~1_cout\,
	cout => \inst2|LessThan0~3_cout\);

-- Location: LCCOMB_X45_Y35_N16
\inst2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_cout\ = CARRY((\inst1|Q\(2) & ((!\inst2|LessThan0~3_cout\) # (!\inst|Q\(2)))) # (!\inst1|Q\(2) & (!\inst|Q\(2) & !\inst2|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst2|LessThan0~3_cout\,
	cout => \inst2|LessThan0~5_cout\);

-- Location: LCCOMB_X45_Y35_N18
\inst2|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_cout\ = CARRY((\inst|Q\(3) & ((!\inst2|LessThan0~5_cout\) # (!\inst1|Q\(3)))) # (!\inst|Q\(3) & (!\inst1|Q\(3) & !\inst2|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst2|LessThan0~5_cout\,
	cout => \inst2|LessThan0~7_cout\);

-- Location: LCCOMB_X45_Y35_N20
\inst2|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~9_cout\ = CARRY((\inst|Q\(4) & (\inst1|Q\(4) & !\inst2|LessThan0~7_cout\)) # (!\inst|Q\(4) & ((\inst1|Q\(4)) # (!\inst2|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst2|LessThan0~7_cout\,
	cout => \inst2|LessThan0~9_cout\);

-- Location: LCCOMB_X45_Y35_N22
\inst2|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~11_cout\ = CARRY((\inst1|Q\(5) & (\inst|Q\(5) & !\inst2|LessThan0~9_cout\)) # (!\inst1|Q\(5) & ((\inst|Q\(5)) # (!\inst2|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst|Q\(5),
	datad => VCC,
	cin => \inst2|LessThan0~9_cout\,
	cout => \inst2|LessThan0~11_cout\);

-- Location: LCCOMB_X45_Y35_N24
\inst2|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~13_cout\ = CARRY((\inst|Q\(6) & (\inst1|Q\(6) & !\inst2|LessThan0~11_cout\)) # (!\inst|Q\(6) & ((\inst1|Q\(6)) # (!\inst2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Q\(6),
	datad => VCC,
	cin => \inst2|LessThan0~11_cout\,
	cout => \inst2|LessThan0~13_cout\);

-- Location: LCCOMB_X45_Y35_N26
\inst2|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~14_combout\ = (\inst|Q\(7) & (\inst2|LessThan0~13_cout\ & \inst1|Q\(7))) # (!\inst|Q\(7) & ((\inst2|LessThan0~13_cout\) # (\inst1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst2|LessThan0~13_cout\,
	combout => \inst2|LessThan0~14_combout\);

-- Location: LCCOMB_X44_Y35_N28
\inst2|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (\inst3|yfsm.s1~regout\ & (\inst2|Neg~regout\ $ ((\inst2|LessThan0~14_combout\)))) # (!\inst3|yfsm.s1~regout\ & (\inst2|Neg~regout\ & ((\inst3|yfsm.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datab => \inst2|Neg~regout\,
	datac => \inst2|LessThan0~14_combout\,
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: LCCOMB_X44_Y35_N8
\inst2|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector8~1_combout\ = (\Enable_Decoder~combout\ & ((\inst2|Neg~regout\ & ((\inst3|yfsm.s7~regout\) # (!\inst2|Selector8~0_combout\))) # (!\inst2|Neg~regout\ & ((\inst2|Selector8~0_combout\))))) # (!\Enable_Decoder~combout\ & 
-- (((\inst2|Neg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \Enable_Decoder~combout\,
	datac => \inst2|Neg~regout\,
	datad => \inst2|Selector8~0_combout\,
	combout => \inst2|Selector8~1_combout\);

-- Location: LCFF_X44_Y35_N9
\inst2|Neg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Neg~regout\);

-- Location: LCCOMB_X43_Y35_N8
\inst3|student_id[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|student_id[3]~0_combout\ = (!\inst3|yfsm.s4~regout\ & !\inst3|yfsm.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s8~regout\,
	combout => \inst3|student_id[3]~0_combout\);

-- Location: LCCOMB_X43_Y35_N16
\inst3|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~combout\ = ((\inst3|yfsm.s3~regout\) # ((\inst3|yfsm.s2~regout\) # (\inst3|yfsm.s1~regout\))) # (!\inst3|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst3|yfsm.s3~regout\,
	datac => \inst3|yfsm.s2~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst3|WideOr10~combout\);

-- Location: LCCOMB_X43_Y35_N12
\inst3|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr9~0_combout\ = ((\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s4~regout\) # (\inst3|yfsm.s8~regout\))) # (!\inst3|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s8~regout\,
	combout => \inst3|WideOr9~0_combout\);

-- Location: LCCOMB_X43_Y35_N22
\inst3|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr11~0_combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s1~regout\) # (\inst3|yfsm.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s7~regout\,
	datac => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|WideOr11~0_combout\);

-- Location: LCCOMB_X42_Y35_N0
\inst5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst3|WideOr10~combout\ & ((\inst3|student_id[3]~0_combout\ & (\inst3|WideOr9~0_combout\ $ (!\inst3|WideOr11~0_combout\))) # (!\inst3|student_id[3]~0_combout\ & (\inst3|WideOr9~0_combout\ & !\inst3|WideOr11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|student_id[3]~0_combout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr11~0_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y35_N22
\inst5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst3|WideOr9~0_combout\ & ((\inst3|student_id[3]~0_combout\ & (\inst3|WideOr10~combout\ $ (\inst3|WideOr11~0_combout\))) # (!\inst3|student_id[3]~0_combout\ & ((\inst3|WideOr11~0_combout\) # (!\inst3|WideOr10~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|student_id[3]~0_combout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr11~0_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y35_N16
\inst5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst3|student_id[3]~0_combout\ & (!\inst3|WideOr10~combout\ & (!\inst3|WideOr9~0_combout\ & \inst3|WideOr11~0_combout\))) # (!\inst3|student_id[3]~0_combout\ & (\inst3|WideOr9~0_combout\ & ((\inst3|WideOr11~0_combout\) # 
-- (!\inst3|WideOr10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|student_id[3]~0_combout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr11~0_combout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y35_N10
\inst5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst3|student_id[3]~0_combout\ & (\inst3|WideOr10~combout\ & (\inst3|WideOr9~0_combout\ $ (!\inst3|WideOr11~0_combout\)))) # (!\inst3|student_id[3]~0_combout\ & (!\inst3|WideOr10~combout\ & (\inst3|WideOr9~0_combout\ & 
-- !\inst3|WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|student_id[3]~0_combout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr11~0_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y35_N20
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = ((\inst3|WideOr9~0_combout\ & (!\inst3|WideOr10~combout\)) # (!\inst3|WideOr9~0_combout\ & ((\inst3|WideOr11~0_combout\)))) # (!\inst3|student_id[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|student_id[3]~0_combout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr11~0_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y35_N26
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst3|WideOr10~combout\ & ((\inst3|WideOr11~0_combout\) # (\inst3|student_id[3]~0_combout\ $ (!\inst3|WideOr9~0_combout\)))) # (!\inst3|WideOr10~combout\ & (((\inst3|WideOr9~0_combout\)) # (!\inst3|student_id[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|student_id[3]~0_combout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr11~0_combout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y35_N12
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst3|WideOr10~combout\ & ((\inst3|student_id[3]~0_combout\ & (!\inst3|WideOr9~0_combout\)) # (!\inst3|student_id[3]~0_combout\ & (\inst3|WideOr9~0_combout\ & \inst3|WideOr11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|student_id[3]~0_combout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr11~0_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(1));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(4));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(5));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(6));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(7));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(1));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(2));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(3));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(4));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(5));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(6));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(7));

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(1));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(3));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(5));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_Neg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(7));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(7));
END structure;


