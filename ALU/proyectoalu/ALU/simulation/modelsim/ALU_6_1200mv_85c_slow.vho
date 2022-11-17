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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/15/2022 18:53:40"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0);
	ALU_Result : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALU_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \ALU_Result[0]~output_o\ : std_logic;
SIGNAL \ALU_Result[1]~output_o\ : std_logic;
SIGNAL \ALU_Result[2]~output_o\ : std_logic;
SIGNAL \ALU_Result[3]~output_o\ : std_logic;
SIGNAL \ALU_Result[4]~output_o\ : std_logic;
SIGNAL \ALU_Result[5]~output_o\ : std_logic;
SIGNAL \ALU_Result[6]~output_o\ : std_logic;
SIGNAL \ALU_Result[7]~output_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \NZVC[0]$latch~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \NZVC[1]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \NZVC[1]~1_combout\ : std_logic;
SIGNAL \NZVC[1]~2_combout\ : std_logic;
SIGNAL \NZVC[1]$latch~combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \NZVC[2]~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \NZVC[2]~3_combout\ : std_logic;
SIGNAL \NZVC[2]~5_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \NZVC[2]~6_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \NZVC[2]~7_combout\ : std_logic;
SIGNAL \NZVC[2]~8_combout\ : std_logic;
SIGNAL \NZVC[2]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \NZVC[3]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU_Result[0]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU_Result[1]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU_Result[2]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU_Result[3]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \ALU_Result[4]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ALU_Result[5]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \ALU_Result[6]$latch~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
ALU_Result <= ww_ALU_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~1_combout\);

-- Location: IOOBUF_X11_Y29_N23
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[0]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[1]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[2]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[3]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\ALU_Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\ALU_Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[1]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\ALU_Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\ALU_Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\ALU_Result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\ALU_Result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\ALU_Result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[6]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[6]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\ALU_Result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[7]~output_o\);

-- Location: IOIBUF_X11_Y29_N8
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X11_Y29_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: LCCOMB_X11_Y28_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X7_Y29_N22
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X12_Y28_N10
\Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~0_combout\ = \B[7]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \B[7]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Add0|auto_generated|_~0_combout\);

-- Location: IOIBUF_X9_Y29_N1
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X10_Y28_N28
\Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~1_combout\ = \B[6]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \B[6]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Add0|auto_generated|_~1_combout\);

-- Location: IOIBUF_X14_Y29_N29
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X10_Y28_N6
\Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~2_combout\ = \B[5]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Add0|auto_generated|_~2_combout\);

-- Location: IOIBUF_X7_Y29_N29
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X10_Y28_N8
\Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~3_combout\ = \B[4]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Add0|auto_generated|_~3_combout\);

-- Location: IOIBUF_X11_Y29_N29
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X10_Y28_N30
\Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~4_combout\ = \B[3]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0|auto_generated|_~4_combout\);

-- Location: IOIBUF_X14_Y29_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X5_Y29_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X11_Y28_N2
\Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~5_combout\ = \B[2]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Add0|auto_generated|_~5_combout\);

-- Location: IOIBUF_X9_Y29_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X7_Y29_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X10_Y28_N4
\Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~6_combout\ = \B[1]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Add0|auto_generated|_~6_combout\);

-- Location: IOIBUF_X3_Y29_N29
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X10_Y28_N26
\Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~7_combout\ = \B[0]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Add0|auto_generated|_~7_combout\);

-- Location: IOIBUF_X9_Y29_N29
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X11_Y28_N4
\Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[0]~1_cout\ = CARRY(!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datad => VCC,
	cout => \Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X11_Y28_N6
\Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[1]~2_combout\ = (\Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (!\Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\Add0|auto_generated|result_int[0]~1_cout\) # (GND))))) # 
-- (!\Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (\Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0|auto_generated|result_int[0]~1_cout\))))
-- \Add0|auto_generated|result_int[1]~3\ = CARRY((\Add0|auto_generated|_~7_combout\ & ((!\Add0|auto_generated|result_int[0]~1_cout\) # (!\A[0]~input_o\))) # (!\Add0|auto_generated|_~7_combout\ & (!\A[0]~input_o\ & 
-- !\Add0|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|auto_generated|_~7_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[0]~1_cout\,
	combout => \Add0|auto_generated|result_int[1]~2_combout\,
	cout => \Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X11_Y28_N8
\Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[2]~4_combout\ = ((\A[1]~input_o\ $ (\Add0|auto_generated|_~6_combout\ $ (\Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \Add0|auto_generated|result_int[2]~5\ = CARRY((\A[1]~input_o\ & ((!\Add0|auto_generated|result_int[1]~3\) # (!\Add0|auto_generated|_~6_combout\))) # (!\A[1]~input_o\ & (!\Add0|auto_generated|_~6_combout\ & !\Add0|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add0|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[1]~3\,
	combout => \Add0|auto_generated|result_int[2]~4_combout\,
	cout => \Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X11_Y28_N10
\Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\Add0|auto_generated|_~5_combout\ & (!\Add0|auto_generated|result_int[2]~5\)) # (!\Add0|auto_generated|_~5_combout\ & (\Add0|auto_generated|result_int[2]~5\ & VCC)))) # (!\A[2]~input_o\ & 
-- ((\Add0|auto_generated|_~5_combout\ & ((\Add0|auto_generated|result_int[2]~5\) # (GND))) # (!\Add0|auto_generated|_~5_combout\ & (!\Add0|auto_generated|result_int[2]~5\))))
-- \Add0|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (\Add0|auto_generated|_~5_combout\ & !\Add0|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((\Add0|auto_generated|_~5_combout\) # (!\Add0|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Add0|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[2]~5\,
	combout => \Add0|auto_generated|result_int[3]~6_combout\,
	cout => \Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X11_Y28_N12
\Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[4]~8_combout\ = ((\A[3]~input_o\ $ (\Add0|auto_generated|_~4_combout\ $ (\Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \Add0|auto_generated|result_int[4]~9\ = CARRY((\A[3]~input_o\ & ((!\Add0|auto_generated|result_int[3]~7\) # (!\Add0|auto_generated|_~4_combout\))) # (!\A[3]~input_o\ & (!\Add0|auto_generated|_~4_combout\ & !\Add0|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Add0|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[3]~7\,
	combout => \Add0|auto_generated|result_int[4]~8_combout\,
	cout => \Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X11_Y28_N14
\Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[5]~10_combout\ = (\A[4]~input_o\ & ((\Add0|auto_generated|_~3_combout\ & (!\Add0|auto_generated|result_int[4]~9\)) # (!\Add0|auto_generated|_~3_combout\ & (\Add0|auto_generated|result_int[4]~9\ & VCC)))) # (!\A[4]~input_o\ 
-- & ((\Add0|auto_generated|_~3_combout\ & ((\Add0|auto_generated|result_int[4]~9\) # (GND))) # (!\Add0|auto_generated|_~3_combout\ & (!\Add0|auto_generated|result_int[4]~9\))))
-- \Add0|auto_generated|result_int[5]~11\ = CARRY((\A[4]~input_o\ & (\Add0|auto_generated|_~3_combout\ & !\Add0|auto_generated|result_int[4]~9\)) # (!\A[4]~input_o\ & ((\Add0|auto_generated|_~3_combout\) # (!\Add0|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Add0|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[4]~9\,
	combout => \Add0|auto_generated|result_int[5]~10_combout\,
	cout => \Add0|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X11_Y28_N16
\Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[6]~12_combout\ = ((\A[5]~input_o\ $ (\Add0|auto_generated|_~2_combout\ $ (\Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \Add0|auto_generated|result_int[6]~13\ = CARRY((\A[5]~input_o\ & ((!\Add0|auto_generated|result_int[5]~11\) # (!\Add0|auto_generated|_~2_combout\))) # (!\A[5]~input_o\ & (!\Add0|auto_generated|_~2_combout\ & !\Add0|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add0|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[5]~11\,
	combout => \Add0|auto_generated|result_int[6]~12_combout\,
	cout => \Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X11_Y28_N18
\Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[7]~14_combout\ = (\Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (!\Add0|auto_generated|result_int[6]~13\)) # (!\A[6]~input_o\ & ((\Add0|auto_generated|result_int[6]~13\) # (GND))))) # 
-- (!\Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (\Add0|auto_generated|result_int[6]~13\ & VCC)) # (!\A[6]~input_o\ & (!\Add0|auto_generated|result_int[6]~13\))))
-- \Add0|auto_generated|result_int[7]~15\ = CARRY((\Add0|auto_generated|_~1_combout\ & ((!\Add0|auto_generated|result_int[6]~13\) # (!\A[6]~input_o\))) # (!\Add0|auto_generated|_~1_combout\ & (!\A[6]~input_o\ & !\Add0|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|auto_generated|_~1_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[6]~13\,
	combout => \Add0|auto_generated|result_int[7]~14_combout\,
	cout => \Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X11_Y28_N20
\Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[8]~16_combout\ = ((\Add0|auto_generated|_~0_combout\ $ (\A[7]~input_o\ $ (\Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \Add0|auto_generated|result_int[8]~17\ = CARRY((\Add0|auto_generated|_~0_combout\ & (\A[7]~input_o\ & !\Add0|auto_generated|result_int[7]~15\)) # (!\Add0|auto_generated|_~0_combout\ & ((\A[7]~input_o\) # (!\Add0|auto_generated|result_int[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|auto_generated|_~0_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[7]~15\,
	combout => \Add0|auto_generated|result_int[8]~16_combout\,
	cout => \Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X11_Y28_N22
\Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[9]~18_combout\ = \Add0|auto_generated|result_int[8]~17\ $ (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~0_combout\,
	cin => \Add0|auto_generated|result_int[8]~17\,
	combout => \Add0|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X12_Y28_N30
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: CLKCTRL_G12
\Equal0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X11_Y28_N28
\NZVC[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[0]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((\Add0|auto_generated|result_int[9]~18_combout\))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (\NZVC[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NZVC[0]$latch~combout\,
	datac => \Add0|auto_generated|result_int[9]~18_combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \NZVC[0]$latch~combout\);

-- Location: LCCOMB_X9_Y28_N12
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X9_Y28_N14
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\Add0~1\ & VCC)) # (!\B[1]~input_o\ & (!\Add0~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Add0~1\)) # (!\B[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\Add0~1\)) # (!\A[1]~input_o\ & ((!\Add0~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X9_Y28_N16
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X9_Y28_N18
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add0~5\)) # (!\B[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\Add0~5\)) # (!\A[3]~input_o\ & ((!\Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y28_N20
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Add0~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y28_N22
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Add0~9\)) # (!\B[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\Add0~9\)) # (!\A[5]~input_o\ & ((!\Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X9_Y28_N24
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Add0~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X9_Y28_N26
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B[7]~input_o\ $ (\Add0~13\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X9_Y28_N0
\NZVC[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~0_combout\ = (!\ALU_Sel[0]~input_o\ & ((\B[7]~input_o\ & (!\Add0~14_combout\ & \A[7]~input_o\)) # (!\B[7]~input_o\ & (\Add0~14_combout\ & !\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~14_combout\,
	datad => \A[7]~input_o\,
	combout => \NZVC[1]~0_combout\);

-- Location: LCCOMB_X10_Y28_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X10_Y28_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X10_Y28_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A[2]~input_o\ & ((!\Add1~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X10_Y28_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add1~5\)) # (!\B[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\Add1~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X10_Y28_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\Add1~7\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X10_Y28_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Add1~9\)) # (!\B[5]~input_o\ & (\Add1~9\ & VCC)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & ((\Add1~9\) # (GND))) # (!\B[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\A[5]~input_o\ & (\B[5]~input_o\ & !\Add1~9\)) # (!\A[5]~input_o\ & ((\B[5]~input_o\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X10_Y28_N22
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\A[6]~input_o\ & ((!\Add1~11\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X10_Y28_N24
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \A[7]~input_o\ $ (\Add1~13\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X8_Y28_N14
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X8_Y28_N16
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\LessThan0~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X8_Y28_N18
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X8_Y28_N20
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X8_Y28_N22
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\LessThan0~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X8_Y28_N24
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X8_Y28_N26
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X8_Y28_N28
\LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\B[7]~input_o\ & ((\LessThan0~13_cout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (\LessThan0~13_cout\ & !\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X9_Y28_N10
\NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~1_combout\ = (\A[7]~input_o\ & ((\Add1~14_combout\ & (\LessThan0~14_combout\)) # (!\Add1~14_combout\ & ((!\B[7]~input_o\))))) # (!\A[7]~input_o\ & ((\Add1~14_combout\ & ((\B[7]~input_o\))) # (!\Add1~14_combout\ & (\LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add1~14_combout\,
	datac => \LessThan0~14_combout\,
	datad => \B[7]~input_o\,
	combout => \NZVC[1]~1_combout\);

-- Location: LCCOMB_X9_Y28_N4
\NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~2_combout\ = (\NZVC[1]~0_combout\) # ((\ALU_Sel[0]~input_o\ & \NZVC[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NZVC[1]~0_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \NZVC[1]~1_combout\,
	combout => \NZVC[1]~2_combout\);

-- Location: LCCOMB_X8_Y28_N8
\NZVC[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & (\NZVC[1]~2_combout\)) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\NZVC[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[1]~2_combout\,
	datac => \NZVC[1]$latch~combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \NZVC[1]$latch~combout\);

-- Location: LCCOMB_X9_Y28_N8
\NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~4_combout\ = (!\Add0~8_combout\ & (!\Add0~6_combout\ & (!\Add0~10_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~4_combout\,
	combout => \NZVC[2]~4_combout\);

-- Location: LCCOMB_X9_Y28_N6
\NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~3_combout\ = (!\Add0~14_combout\ & (!\ALU_Sel[0]~input_o\ & (!\Add0~2_combout\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \NZVC[2]~3_combout\);

-- Location: LCCOMB_X9_Y28_N2
\NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~5_combout\ = (!\Add0~12_combout\ & (\NZVC[2]~4_combout\ & \NZVC[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \NZVC[2]~4_combout\,
	datad => \NZVC[2]~3_combout\,
	combout => \NZVC[2]~5_combout\);

-- Location: LCCOMB_X9_Y28_N28
\NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~6_combout\ = (!\Add1~2_combout\ & (!\Add1~0_combout\ & (\ALU_Sel[0]~input_o\ & !\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~0_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Add1~14_combout\,
	combout => \NZVC[2]~6_combout\);

-- Location: LCCOMB_X10_Y28_N0
\NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~7_combout\ = (!\Add1~6_combout\ & (!\Add1~8_combout\ & (!\Add1~4_combout\ & !\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~10_combout\,
	combout => \NZVC[2]~7_combout\);

-- Location: LCCOMB_X10_Y28_N2
\NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~8_combout\ = (\NZVC[2]~5_combout\) # ((\NZVC[2]~6_combout\ & (!\Add1~12_combout\ & \NZVC[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[2]~5_combout\,
	datab => \NZVC[2]~6_combout\,
	datac => \Add1~12_combout\,
	datad => \NZVC[2]~7_combout\,
	combout => \NZVC[2]~8_combout\);

-- Location: LCCOMB_X9_Y28_N30
\NZVC[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & (\NZVC[2]~8_combout\)) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\NZVC[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[2]~8_combout\,
	datac => \NZVC[2]$latch~combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \NZVC[2]$latch~combout\);

-- Location: LCCOMB_X12_Y28_N26
\NZVC[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[3]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((\Add0|auto_generated|result_int[8]~16_combout\))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (\NZVC[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[3]$latch~combout\,
	datac => \Equal0~1clkctrl_outclk\,
	datad => \Add0|auto_generated|result_int[8]~16_combout\,
	combout => \NZVC[3]$latch~combout\);

-- Location: LCCOMB_X12_Y28_N14
\ALU_Result[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[0]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & (\Add0|auto_generated|result_int[1]~2_combout\)) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\ALU_Result[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|auto_generated|result_int[1]~2_combout\,
	datac => \ALU_Result[0]$latch~combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \ALU_Result[0]$latch~combout\);

-- Location: LCCOMB_X12_Y28_N22
\ALU_Result[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[1]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & (\Add0|auto_generated|result_int[2]~4_combout\)) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\ALU_Result[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0|auto_generated|result_int[2]~4_combout\,
	datac => \ALU_Result[1]$latch~combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \ALU_Result[1]$latch~combout\);

-- Location: LCCOMB_X12_Y28_N28
\ALU_Result[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[2]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((\Add0|auto_generated|result_int[3]~6_combout\))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (\ALU_Result[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[2]$latch~combout\,
	datac => \Add0|auto_generated|result_int[3]~6_combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \ALU_Result[2]$latch~combout\);

-- Location: LCCOMB_X12_Y28_N24
\ALU_Result[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[3]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((\Add0|auto_generated|result_int[4]~8_combout\))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (\ALU_Result[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[3]$latch~combout\,
	datac => \Add0|auto_generated|result_int[4]~8_combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \ALU_Result[3]$latch~combout\);

-- Location: LCCOMB_X11_Y28_N26
\ALU_Result[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[4]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & (\Add0|auto_generated|result_int[5]~10_combout\)) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\ALU_Result[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|auto_generated|result_int[5]~10_combout\,
	datac => \ALU_Result[4]$latch~combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \ALU_Result[4]$latch~combout\);

-- Location: LCCOMB_X11_Y28_N0
\ALU_Result[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[5]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((\Add0|auto_generated|result_int[6]~12_combout\))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (\ALU_Result[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[5]$latch~combout\,
	datac => \Equal0~1clkctrl_outclk\,
	datad => \Add0|auto_generated|result_int[6]~12_combout\,
	combout => \ALU_Result[5]$latch~combout\);

-- Location: LCCOMB_X11_Y28_N30
\ALU_Result[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[6]$latch~combout\ = (GLOBAL(\Equal0~1clkctrl_outclk\) & (\Add0|auto_generated|result_int[7]~14_combout\)) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\ALU_Result[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0|auto_generated|result_int[7]~14_combout\,
	datac => \ALU_Result[6]$latch~combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => \ALU_Result[6]$latch~combout\);

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;

ww_ALU_Result(0) <= \ALU_Result[0]~output_o\;

ww_ALU_Result(1) <= \ALU_Result[1]~output_o\;

ww_ALU_Result(2) <= \ALU_Result[2]~output_o\;

ww_ALU_Result(3) <= \ALU_Result[3]~output_o\;

ww_ALU_Result(4) <= \ALU_Result[4]~output_o\;

ww_ALU_Result(5) <= \ALU_Result[5]~output_o\;

ww_ALU_Result(6) <= \ALU_Result[6]~output_o\;

ww_ALU_Result(7) <= \ALU_Result[7]~output_o\;
END structure;


