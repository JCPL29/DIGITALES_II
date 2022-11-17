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

-- DATE "11/16/2022 10:23:16"

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

ENTITY 	ALUtest IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : BUFFER std_logic_vector(3 DOWNTO 0);
	display0 : BUFFER std_logic_vector(6 DOWNTO 0);
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display_2 : BUFFER std_logic_vector(6 DOWNTO 0);
	display_3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ALUtest;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUtest IS
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
SIGNAL ww_display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \display0[0]~output_o\ : std_logic;
SIGNAL \display0[1]~output_o\ : std_logic;
SIGNAL \display0[2]~output_o\ : std_logic;
SIGNAL \display0[3]~output_o\ : std_logic;
SIGNAL \display0[4]~output_o\ : std_logic;
SIGNAL \display0[5]~output_o\ : std_logic;
SIGNAL \display0[6]~output_o\ : std_logic;
SIGNAL \display1[0]~output_o\ : std_logic;
SIGNAL \display1[1]~output_o\ : std_logic;
SIGNAL \display1[2]~output_o\ : std_logic;
SIGNAL \display1[3]~output_o\ : std_logic;
SIGNAL \display1[4]~output_o\ : std_logic;
SIGNAL \display1[5]~output_o\ : std_logic;
SIGNAL \display1[6]~output_o\ : std_logic;
SIGNAL \display_2[0]~output_o\ : std_logic;
SIGNAL \display_2[1]~output_o\ : std_logic;
SIGNAL \display_2[2]~output_o\ : std_logic;
SIGNAL \display_2[3]~output_o\ : std_logic;
SIGNAL \display_2[4]~output_o\ : std_logic;
SIGNAL \display_2[5]~output_o\ : std_logic;
SIGNAL \display_2[6]~output_o\ : std_logic;
SIGNAL \display_3[0]~output_o\ : std_logic;
SIGNAL \display_3[1]~output_o\ : std_logic;
SIGNAL \display_3[2]~output_o\ : std_logic;
SIGNAL \display_3[3]~output_o\ : std_logic;
SIGNAL \display_3[4]~output_o\ : std_logic;
SIGNAL \display_3[5]~output_o\ : std_logic;
SIGNAL \display_3[6]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|NZVC[1]~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_cout\ : std_logic;
SIGNAL \U1|LessThan0~3_cout\ : std_logic;
SIGNAL \U1|LessThan0~5_cout\ : std_logic;
SIGNAL \U1|LessThan0~7_cout\ : std_logic;
SIGNAL \U1|LessThan0~9_cout\ : std_logic;
SIGNAL \U1|LessThan0~11_cout\ : std_logic;
SIGNAL \U1|LessThan0~13_cout\ : std_logic;
SIGNAL \U1|LessThan0~14_combout\ : std_logic;
SIGNAL \U1|Add1~1\ : std_logic;
SIGNAL \U1|Add1~3\ : std_logic;
SIGNAL \U1|Add1~5\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~9\ : std_logic;
SIGNAL \U1|Add1~11\ : std_logic;
SIGNAL \U1|Add1~13\ : std_logic;
SIGNAL \U1|Add1~14_combout\ : std_logic;
SIGNAL \U1|NZVC[1]~1_combout\ : std_logic;
SIGNAL \U1|NZVC[1]~2_combout\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|NZVC[2]~6_combout\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|NZVC[2]~7_combout\ : std_logic;
SIGNAL \U1|Add1~12_combout\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|NZVC[2]~4_combout\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|NZVC[2]~3_combout\ : std_logic;
SIGNAL \U1|NZVC[2]~5_combout\ : std_logic;
SIGNAL \U1|NZVC[2]~8_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|Mux5~0_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \U1|Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \U3|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U5n|Mux6~0_combout\ : std_logic;
SIGNAL \U5n|Mux5~0_combout\ : std_logic;
SIGNAL \U5n|Mux4~0_combout\ : std_logic;
SIGNAL \U5n|Mux3~0_combout\ : std_logic;
SIGNAL \U5n|Mux2~0_combout\ : std_logic;
SIGNAL \U5n|Mux1~0_combout\ : std_logic;
SIGNAL \U5n|Mux0~0_combout\ : std_logic;
SIGNAL \U1|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U5n|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
display0 <= ww_display0;
display1 <= ww_display1;
display_2 <= ww_display_2;
display_3 <= ww_display_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|Equal0~1_combout\);
\U5n|ALT_INV_Mux6~0_combout\ <= NOT \U5n|Mux6~0_combout\;
\U4|ALT_INV_Mux6~0_combout\ <= NOT \U4|Mux6~0_combout\;
\U3|ALT_INV_Mux6~0_combout\ <= NOT \U3|Mux6~0_combout\;
\U2|ALT_INV_Mux6~0_combout\ <= NOT \U2|Mux6~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|NZVC\(0),
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|NZVC\(1),
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|NZVC\(2),
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|NZVC\(3),
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\display0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\display0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display0[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\display0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display0[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\display0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display0[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\display0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\display0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\display0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\display1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\display1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display1[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\display1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display1[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\display1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\display1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display1[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\display_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_2[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\display_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display_2[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\display_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display_2[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\display_2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display_2[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\display_2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display_2[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\display_2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display_2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\display_2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display_2[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\display_3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5n|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_3[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\display_3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5n|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display_3[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\display_3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5n|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display_3[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\display_3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5n|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display_3[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\display_3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5n|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display_3[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\display_3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5n|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display_3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\display_3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5n|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display_3[6]~output_o\);

-- Location: IOIBUF_X19_Y0_N22
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X20_Y1_N20
\U1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \U1|Equal0~1_combout\);

-- Location: CLKCTRL_G15
\U1|Equal0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|Equal0~1clkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: LCCOMB_X22_Y22_N16
\U1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \U1|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X22_Y22_N10
\U1|Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~0_combout\ = \B[7]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[7]~input_o\,
	combout => \U1|Add0|auto_generated|_~0_combout\);

-- Location: IOIBUF_X26_Y0_N29
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X22_Y22_N28
\U1|Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~1_combout\ = \B[6]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \B[6]~input_o\,
	combout => \U1|Add0|auto_generated|_~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X22_Y22_N30
\U1|Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~2_combout\ = \B[5]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U1|Add0|auto_generated|_~2_combout\);

-- Location: IOIBUF_X0_Y23_N8
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X22_Y22_N4
\U1|Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~3_combout\ = \B[4]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \U1|Add0|auto_generated|_~3_combout\);

-- Location: IOIBUF_X7_Y0_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X22_Y22_N14
\U1|Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~4_combout\ = \B[3]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \U1|Add0|auto_generated|_~4_combout\);

-- Location: IOIBUF_X0_Y27_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X22_Y22_N24
\U1|Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~5_combout\ = \B[2]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \U1|Add0|auto_generated|_~5_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X22_Y22_N6
\U1|Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~6_combout\ = \B[1]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \U1|Add0|auto_generated|_~6_combout\);

-- Location: IOIBUF_X19_Y0_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X22_Y22_N12
\U1|Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|_~7_combout\ = \B[0]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \U1|Add0|auto_generated|_~7_combout\);

-- Location: IOIBUF_X0_Y26_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X23_Y22_N4
\U1|Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[0]~1_cout\ = CARRY(!\U1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datad => VCC,
	cout => \U1|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X23_Y22_N6
\U1|Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[1]~2_combout\ = (\U1|Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (!\U1|Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\U1|Add0|auto_generated|result_int[0]~1_cout\) # (GND))))) # 
-- (!\U1|Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (\U1|Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\U1|Add0|auto_generated|result_int[0]~1_cout\))))
-- \U1|Add0|auto_generated|result_int[1]~3\ = CARRY((\U1|Add0|auto_generated|_~7_combout\ & ((!\U1|Add0|auto_generated|result_int[0]~1_cout\) # (!\A[0]~input_o\))) # (!\U1|Add0|auto_generated|_~7_combout\ & (!\A[0]~input_o\ & 
-- !\U1|Add0|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0|auto_generated|_~7_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \U1|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \U1|Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X23_Y22_N8
\U1|Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[2]~4_combout\ = ((\A[1]~input_o\ $ (\U1|Add0|auto_generated|_~6_combout\ $ (\U1|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \U1|Add0|auto_generated|result_int[2]~5\ = CARRY((\A[1]~input_o\ & ((!\U1|Add0|auto_generated|result_int[1]~3\) # (!\U1|Add0|auto_generated|_~6_combout\))) # (!\A[1]~input_o\ & (!\U1|Add0|auto_generated|_~6_combout\ & 
-- !\U1|Add0|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \U1|Add0|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[1]~3\,
	combout => \U1|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \U1|Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X23_Y22_N10
\U1|Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\U1|Add0|auto_generated|_~5_combout\ & (!\U1|Add0|auto_generated|result_int[2]~5\)) # (!\U1|Add0|auto_generated|_~5_combout\ & (\U1|Add0|auto_generated|result_int[2]~5\ & VCC)))) # 
-- (!\A[2]~input_o\ & ((\U1|Add0|auto_generated|_~5_combout\ & ((\U1|Add0|auto_generated|result_int[2]~5\) # (GND))) # (!\U1|Add0|auto_generated|_~5_combout\ & (!\U1|Add0|auto_generated|result_int[2]~5\))))
-- \U1|Add0|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (\U1|Add0|auto_generated|_~5_combout\ & !\U1|Add0|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((\U1|Add0|auto_generated|_~5_combout\) # 
-- (!\U1|Add0|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \U1|Add0|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[2]~5\,
	combout => \U1|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \U1|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X23_Y22_N12
\U1|Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[4]~8_combout\ = ((\U1|Add0|auto_generated|_~4_combout\ $ (\A[3]~input_o\ $ (\U1|Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \U1|Add0|auto_generated|result_int[4]~9\ = CARRY((\U1|Add0|auto_generated|_~4_combout\ & (\A[3]~input_o\ & !\U1|Add0|auto_generated|result_int[3]~7\)) # (!\U1|Add0|auto_generated|_~4_combout\ & ((\A[3]~input_o\) # 
-- (!\U1|Add0|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0|auto_generated|_~4_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[3]~7\,
	combout => \U1|Add0|auto_generated|result_int[4]~8_combout\,
	cout => \U1|Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X23_Y22_N14
\U1|Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[5]~10_combout\ = (\A[4]~input_o\ & ((\U1|Add0|auto_generated|_~3_combout\ & (!\U1|Add0|auto_generated|result_int[4]~9\)) # (!\U1|Add0|auto_generated|_~3_combout\ & (\U1|Add0|auto_generated|result_int[4]~9\ & VCC)))) # 
-- (!\A[4]~input_o\ & ((\U1|Add0|auto_generated|_~3_combout\ & ((\U1|Add0|auto_generated|result_int[4]~9\) # (GND))) # (!\U1|Add0|auto_generated|_~3_combout\ & (!\U1|Add0|auto_generated|result_int[4]~9\))))
-- \U1|Add0|auto_generated|result_int[5]~11\ = CARRY((\A[4]~input_o\ & (\U1|Add0|auto_generated|_~3_combout\ & !\U1|Add0|auto_generated|result_int[4]~9\)) # (!\A[4]~input_o\ & ((\U1|Add0|auto_generated|_~3_combout\) # 
-- (!\U1|Add0|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \U1|Add0|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[4]~9\,
	combout => \U1|Add0|auto_generated|result_int[5]~10_combout\,
	cout => \U1|Add0|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X23_Y22_N16
\U1|Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[6]~12_combout\ = ((\A[5]~input_o\ $ (\U1|Add0|auto_generated|_~2_combout\ $ (\U1|Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \U1|Add0|auto_generated|result_int[6]~13\ = CARRY((\A[5]~input_o\ & ((!\U1|Add0|auto_generated|result_int[5]~11\) # (!\U1|Add0|auto_generated|_~2_combout\))) # (!\A[5]~input_o\ & (!\U1|Add0|auto_generated|_~2_combout\ & 
-- !\U1|Add0|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \U1|Add0|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[5]~11\,
	combout => \U1|Add0|auto_generated|result_int[6]~12_combout\,
	cout => \U1|Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X23_Y22_N18
\U1|Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[7]~14_combout\ = (\U1|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (!\U1|Add0|auto_generated|result_int[6]~13\)) # (!\A[6]~input_o\ & ((\U1|Add0|auto_generated|result_int[6]~13\) # (GND))))) # 
-- (!\U1|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (\U1|Add0|auto_generated|result_int[6]~13\ & VCC)) # (!\A[6]~input_o\ & (!\U1|Add0|auto_generated|result_int[6]~13\))))
-- \U1|Add0|auto_generated|result_int[7]~15\ = CARRY((\U1|Add0|auto_generated|_~1_combout\ & ((!\U1|Add0|auto_generated|result_int[6]~13\) # (!\A[6]~input_o\))) # (!\U1|Add0|auto_generated|_~1_combout\ & (!\A[6]~input_o\ & 
-- !\U1|Add0|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0|auto_generated|_~1_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[6]~13\,
	combout => \U1|Add0|auto_generated|result_int[7]~14_combout\,
	cout => \U1|Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X23_Y22_N20
\U1|Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[8]~16_combout\ = ((\A[7]~input_o\ $ (\U1|Add0|auto_generated|_~0_combout\ $ (\U1|Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \U1|Add0|auto_generated|result_int[8]~17\ = CARRY((\A[7]~input_o\ & ((!\U1|Add0|auto_generated|result_int[7]~15\) # (!\U1|Add0|auto_generated|_~0_combout\))) # (!\A[7]~input_o\ & (!\U1|Add0|auto_generated|_~0_combout\ & 
-- !\U1|Add0|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \U1|Add0|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \U1|Add0|auto_generated|result_int[7]~15\,
	combout => \U1|Add0|auto_generated|result_int[8]~16_combout\,
	cout => \U1|Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X23_Y22_N22
\U1|Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0|auto_generated|result_int[9]~18_combout\ = \U1|Equal0~0_combout\ $ (!\U1|Add0|auto_generated|result_int[8]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	cin => \U1|Add0|auto_generated|result_int[8]~17\,
	combout => \U1|Add0|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X22_Y22_N26
\U1|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC\(0) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|Add0|auto_generated|result_int[9]~18_combout\))) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|NZVC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NZVC\(0),
	datac => \U1|Equal0~1clkctrl_outclk\,
	datad => \U1|Add0|auto_generated|result_int[9]~18_combout\,
	combout => \U1|NZVC\(0));

-- Location: LCCOMB_X27_Y22_N12
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \U1|Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X27_Y22_N14
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\U1|Add0~1\ & VCC)) # (!\B[1]~input_o\ & (!\U1|Add0~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\U1|Add0~1\)) # (!\B[1]~input_o\ & ((\U1|Add0~1\) # (GND)))))
-- \U1|Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\U1|Add0~1\)) # (!\A[1]~input_o\ & ((!\U1|Add0~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X27_Y22_N16
\U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\U1|Add0~3\)))) # (GND)
-- \U1|Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\U1|Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\U1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: LCCOMB_X27_Y22_N18
\U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\U1|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\U1|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\U1|Add0~5\)) # (!\B[3]~input_o\ & ((\U1|Add0~5\) # (GND)))))
-- \U1|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\U1|Add0~5\)) # (!\A[3]~input_o\ & ((!\U1|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X27_Y22_N20
\U1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\U1|Add0~7\)))) # (GND)
-- \U1|Add0~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\U1|Add0~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\U1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X27_Y22_N22
\U1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\U1|Add0~9\ & VCC)) # (!\A[5]~input_o\ & (!\U1|Add0~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\U1|Add0~9\)) # (!\A[5]~input_o\ & ((\U1|Add0~9\) # (GND)))))
-- \U1|Add0~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\U1|Add0~9\)) # (!\B[5]~input_o\ & ((!\U1|Add0~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: LCCOMB_X27_Y22_N24
\U1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\U1|Add0~11\)))) # (GND)
-- \U1|Add0~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\U1|Add0~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\U1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X27_Y22_N26
\U1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = \A[7]~input_o\ $ (\U1|Add0~13\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\);

-- Location: LCCOMB_X26_Y22_N4
\U1|NZVC[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[1]~0_combout\ = (!\ALU_Sel[0]~input_o\ & ((\U1|Add0~14_combout\ & (!\B[7]~input_o\ & !\A[7]~input_o\)) # (!\U1|Add0~14_combout\ & (\B[7]~input_o\ & \A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~14_combout\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \U1|NZVC[1]~0_combout\);

-- Location: LCCOMB_X24_Y22_N14
\U1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \U1|LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y22_N16
\U1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & ((!\U1|LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\U1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \U1|LessThan0~1_cout\,
	cout => \U1|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y22_N18
\U1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & ((!\U1|LessThan0~3_cout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & !\U1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \U1|LessThan0~3_cout\,
	cout => \U1|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y22_N20
\U1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\U1|LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\U1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \U1|LessThan0~5_cout\,
	cout => \U1|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y22_N22
\U1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\U1|LessThan0~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\U1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \U1|LessThan0~7_cout\,
	cout => \U1|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y22_N24
\U1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\U1|LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\U1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \U1|LessThan0~9_cout\,
	cout => \U1|LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y22_N26
\U1|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\U1|LessThan0~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\U1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \U1|LessThan0~11_cout\,
	cout => \U1|LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y22_N28
\U1|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~14_combout\ = (\A[7]~input_o\ & (\U1|LessThan0~13_cout\ & \B[7]~input_o\)) # (!\A[7]~input_o\ & ((\U1|LessThan0~13_cout\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \U1|LessThan0~13_cout\,
	combout => \U1|LessThan0~14_combout\);

-- Location: LCCOMB_X26_Y22_N10
\U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = (\A[0]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \U1|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \U1|Add1~0_combout\,
	cout => \U1|Add1~1\);

-- Location: LCCOMB_X26_Y22_N12
\U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (!\U1|Add1~1\)) # (!\B[1]~input_o\ & (\U1|Add1~1\ & VCC)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\U1|Add1~1\) # (GND))) # (!\B[1]~input_o\ & (!\U1|Add1~1\))))
-- \U1|Add1~3\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\U1|Add1~1\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\U1|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \U1|Add1~1\,
	combout => \U1|Add1~2_combout\,
	cout => \U1|Add1~3\);

-- Location: LCCOMB_X26_Y22_N14
\U1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\U1|Add1~3\)))) # (GND)
-- \U1|Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\U1|Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\U1|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \U1|Add1~3\,
	combout => \U1|Add1~4_combout\,
	cout => \U1|Add1~5\);

-- Location: LCCOMB_X26_Y22_N16
\U1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (!\U1|Add1~5\)) # (!\A[3]~input_o\ & ((\U1|Add1~5\) # (GND))))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (\U1|Add1~5\ & VCC)) # (!\A[3]~input_o\ & (!\U1|Add1~5\))))
-- \U1|Add1~7\ = CARRY((\B[3]~input_o\ & ((!\U1|Add1~5\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & !\U1|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \U1|Add1~5\,
	combout => \U1|Add1~6_combout\,
	cout => \U1|Add1~7\);

-- Location: LCCOMB_X26_Y22_N18
\U1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\U1|Add1~7\)))) # (GND)
-- \U1|Add1~9\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\U1|Add1~7\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\U1|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \U1|Add1~7\,
	combout => \U1|Add1~8_combout\,
	cout => \U1|Add1~9\);

-- Location: LCCOMB_X26_Y22_N20
\U1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\U1|Add1~9\)) # (!\A[5]~input_o\ & ((\U1|Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\U1|Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\U1|Add1~9\))))
-- \U1|Add1~11\ = CARRY((\B[5]~input_o\ & ((!\U1|Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\U1|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \U1|Add1~9\,
	combout => \U1|Add1~10_combout\,
	cout => \U1|Add1~11\);

-- Location: LCCOMB_X26_Y22_N22
\U1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (\U1|Add1~11\)))) # (GND)
-- \U1|Add1~13\ = CARRY((\B[6]~input_o\ & (\A[6]~input_o\ & !\U1|Add1~11\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (!\U1|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \U1|Add1~11\,
	combout => \U1|Add1~12_combout\,
	cout => \U1|Add1~13\);

-- Location: LCCOMB_X26_Y22_N24
\U1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~14_combout\ = \A[7]~input_o\ $ (\U1|Add1~13\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \U1|Add1~13\,
	combout => \U1|Add1~14_combout\);

-- Location: LCCOMB_X26_Y22_N6
\U1|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[1]~1_combout\ = (\A[7]~input_o\ & ((\U1|Add1~14_combout\ & (\U1|LessThan0~14_combout\)) # (!\U1|Add1~14_combout\ & ((!\B[7]~input_o\))))) # (!\A[7]~input_o\ & ((\U1|Add1~14_combout\ & ((\B[7]~input_o\))) # (!\U1|Add1~14_combout\ & 
-- (\U1|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~14_combout\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \U1|Add1~14_combout\,
	combout => \U1|NZVC[1]~1_combout\);

-- Location: LCCOMB_X26_Y22_N0
\U1|NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[1]~2_combout\ = (\U1|NZVC[1]~0_combout\) # ((\ALU_Sel[0]~input_o\ & \U1|NZVC[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[0]~input_o\,
	datac => \U1|NZVC[1]~0_combout\,
	datad => \U1|NZVC[1]~1_combout\,
	combout => \U1|NZVC[1]~2_combout\);

-- Location: LCCOMB_X21_Y22_N4
\U1|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC\(1) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|NZVC[1]~2_combout\)) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|NZVC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|NZVC[1]~2_combout\,
	datac => \U1|NZVC\(1),
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|NZVC\(1));

-- Location: LCCOMB_X26_Y22_N26
\U1|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[2]~6_combout\ = (!\U1|Add1~2_combout\ & (!\U1|Add1~14_combout\ & (!\U1|Add1~0_combout\ & \ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~2_combout\,
	datab => \U1|Add1~14_combout\,
	datac => \U1|Add1~0_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \U1|NZVC[2]~6_combout\);

-- Location: LCCOMB_X26_Y22_N28
\U1|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[2]~7_combout\ = (!\U1|Add1~10_combout\ & (!\U1|Add1~6_combout\ & (!\U1|Add1~4_combout\ & !\U1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~10_combout\,
	datab => \U1|Add1~6_combout\,
	datac => \U1|Add1~4_combout\,
	datad => \U1|Add1~8_combout\,
	combout => \U1|NZVC[2]~7_combout\);

-- Location: LCCOMB_X27_Y22_N8
\U1|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[2]~4_combout\ = (!\U1|Add0~6_combout\ & (!\U1|Add0~8_combout\ & (!\U1|Add0~10_combout\ & !\U1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~6_combout\,
	datab => \U1|Add0~8_combout\,
	datac => \U1|Add0~10_combout\,
	datad => \U1|Add0~4_combout\,
	combout => \U1|NZVC[2]~4_combout\);

-- Location: LCCOMB_X27_Y22_N10
\U1|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[2]~3_combout\ = (!\ALU_Sel[0]~input_o\ & (!\U1|Add0~2_combout\ & (!\U1|Add0~14_combout\ & !\U1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \U1|Add0~2_combout\,
	datac => \U1|Add0~14_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|NZVC[2]~3_combout\);

-- Location: LCCOMB_X27_Y22_N2
\U1|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[2]~5_combout\ = (!\U1|Add0~12_combout\ & (\U1|NZVC[2]~4_combout\ & \U1|NZVC[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~12_combout\,
	datac => \U1|NZVC[2]~4_combout\,
	datad => \U1|NZVC[2]~3_combout\,
	combout => \U1|NZVC[2]~5_combout\);

-- Location: LCCOMB_X26_Y22_N2
\U1|NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC[2]~8_combout\ = (\U1|NZVC[2]~5_combout\) # ((\U1|NZVC[2]~6_combout\ & (\U1|NZVC[2]~7_combout\ & !\U1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NZVC[2]~6_combout\,
	datab => \U1|NZVC[2]~7_combout\,
	datac => \U1|Add1~12_combout\,
	datad => \U1|NZVC[2]~5_combout\,
	combout => \U1|NZVC[2]~8_combout\);

-- Location: LCCOMB_X4_Y22_N20
\U1|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC\(2) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|NZVC[2]~8_combout\)) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|NZVC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NZVC[2]~8_combout\,
	datab => \U1|NZVC\(2),
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|NZVC\(2));

-- Location: LCCOMB_X23_Y22_N0
\U1|NZVC[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|NZVC\(3) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|Add0|auto_generated|result_int[8]~16_combout\))) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|NZVC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|NZVC\(3),
	datac => \U1|Equal0~1clkctrl_outclk\,
	datad => \U1|Add0|auto_generated|result_int[8]~16_combout\,
	combout => \U1|NZVC\(3));

-- Location: LCCOMB_X23_Y22_N24
\U1|ALU_Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ALU_Result\(2) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|Add0|auto_generated|result_int[3]~6_combout\)) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|ALU_Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0|auto_generated|result_int[3]~6_combout\,
	datac => \U1|ALU_Result\(2),
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|ALU_Result\(2));

-- Location: LCCOMB_X23_Y22_N26
\U1|ALU_Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ALU_Result\(1) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|Add0|auto_generated|result_int[2]~4_combout\)) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|ALU_Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0|auto_generated|result_int[2]~4_combout\,
	datac => \U1|ALU_Result\(1),
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|ALU_Result\(1));

-- Location: LCCOMB_X22_Y22_N20
\U1|ALU_Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ALU_Result\(0) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|Add0|auto_generated|result_int[1]~2_combout\)) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|ALU_Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0|auto_generated|result_int[1]~2_combout\,
	datab => \U1|ALU_Result\(0),
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|ALU_Result\(0));

-- Location: LCCOMB_X23_Y22_N2
\U1|ALU_Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ALU_Result\(3) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|Add0|auto_generated|result_int[4]~8_combout\))) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|ALU_Result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALU_Result\(3),
	datac => \U1|Add0|auto_generated|result_int[4]~8_combout\,
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|ALU_Result\(3));

-- Location: LCCOMB_X23_Y28_N0
\U2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux6~0_combout\ = (\U1|ALU_Result\(3) & ((\U1|ALU_Result\(0)) # (\U1|ALU_Result\(2) $ (\U1|ALU_Result\(1))))) # (!\U1|ALU_Result\(3) & ((\U1|ALU_Result\(2)) # (\U1|ALU_Result\(1) $ (\U1|ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(2),
	datab => \U1|ALU_Result\(1),
	datac => \U1|ALU_Result\(0),
	datad => \U1|ALU_Result\(3),
	combout => \U2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y28_N14
\U2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux5~0_combout\ = (\U1|ALU_Result\(2) & (!\U1|ALU_Result\(0) & ((\U1|ALU_Result\(3)) # (!\U1|ALU_Result\(1))))) # (!\U1|ALU_Result\(2) & (\U1|ALU_Result\(3) & (\U1|ALU_Result\(1) $ (!\U1|ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(2),
	datab => \U1|ALU_Result\(1),
	datac => \U1|ALU_Result\(0),
	datad => \U1|ALU_Result\(3),
	combout => \U2|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y28_N24
\U2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = (\U1|ALU_Result\(2) & (((!\U1|ALU_Result\(0) & \U1|ALU_Result\(3))))) # (!\U1|ALU_Result\(2) & ((\U1|ALU_Result\(1) & (!\U1|ALU_Result\(0))) # (!\U1|ALU_Result\(1) & ((\U1|ALU_Result\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(2),
	datab => \U1|ALU_Result\(1),
	datac => \U1|ALU_Result\(0),
	datad => \U1|ALU_Result\(3),
	combout => \U2|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y28_N22
\U2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\U1|ALU_Result\(3) & (\U1|ALU_Result\(2) $ ((!\U1|ALU_Result\(1))))) # (!\U1|ALU_Result\(3) & ((\U1|ALU_Result\(2) & (!\U1|ALU_Result\(1) & \U1|ALU_Result\(0))) # (!\U1|ALU_Result\(2) & (\U1|ALU_Result\(1) & !\U1|ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(2),
	datab => \U1|ALU_Result\(1),
	datac => \U1|ALU_Result\(0),
	datad => \U1|ALU_Result\(3),
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\U2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U1|ALU_Result\(1) & (\U1|ALU_Result\(0) & ((\U1|ALU_Result\(2)) # (!\U1|ALU_Result\(3))))) # (!\U1|ALU_Result\(1) & (\U1|ALU_Result\(2) & (!\U1|ALU_Result\(0) & !\U1|ALU_Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(2),
	datab => \U1|ALU_Result\(1),
	datac => \U1|ALU_Result\(0),
	datad => \U1|ALU_Result\(3),
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y28_N10
\U2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\U1|ALU_Result\(2) & ((\U1|ALU_Result\(3) & ((\U1|ALU_Result\(0)))) # (!\U1|ALU_Result\(3) & (\U1|ALU_Result\(1))))) # (!\U1|ALU_Result\(2) & (\U1|ALU_Result\(1) & (\U1|ALU_Result\(0) $ (\U1|ALU_Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(2),
	datab => \U1|ALU_Result\(1),
	datac => \U1|ALU_Result\(0),
	datad => \U1|ALU_Result\(3),
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\U2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\U1|ALU_Result\(1) & ((\U1|ALU_Result\(0) & (!\U1|ALU_Result\(2) & \U1|ALU_Result\(3))) # (!\U1|ALU_Result\(0) & ((!\U1|ALU_Result\(3)))))) # (!\U1|ALU_Result\(1) & (\U1|ALU_Result\(3) & (\U1|ALU_Result\(2) $ 
-- (!\U1|ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(2),
	datab => \U1|ALU_Result\(1),
	datac => \U1|ALU_Result\(0),
	datad => \U1|ALU_Result\(3),
	combout => \U2|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y22_N28
\U1|ALU_Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ALU_Result\(6) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|Add0|auto_generated|result_int[7]~14_combout\)) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|ALU_Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0|auto_generated|result_int[7]~14_combout\,
	datac => \U1|ALU_Result\(6),
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|ALU_Result\(6));

-- Location: LCCOMB_X23_Y22_N30
\U1|ALU_Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ALU_Result\(5) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|Add0|auto_generated|result_int[6]~12_combout\)) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|ALU_Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0|auto_generated|result_int[6]~12_combout\,
	datac => \U1|ALU_Result\(5),
	datad => \U1|Equal0~1clkctrl_outclk\,
	combout => \U1|ALU_Result\(5));

-- Location: LCCOMB_X24_Y22_N8
\U1|ALU_Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ALU_Result\(4) = (GLOBAL(\U1|Equal0~1clkctrl_outclk\) & ((\U1|Add0|auto_generated|result_int[5]~10_combout\))) # (!GLOBAL(\U1|Equal0~1clkctrl_outclk\) & (\U1|ALU_Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALU_Result\(4),
	datac => \U1|Equal0~1clkctrl_outclk\,
	datad => \U1|Add0|auto_generated|result_int[5]~10_combout\,
	combout => \U1|ALU_Result\(4));

-- Location: LCCOMB_X27_Y26_N4
\U3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux6~0_combout\ = (\U1|NZVC\(3) & ((\U1|ALU_Result\(4)) # (\U1|ALU_Result\(6) $ (\U1|ALU_Result\(5))))) # (!\U1|NZVC\(3) & ((\U1|ALU_Result\(6)) # (\U1|ALU_Result\(5) $ (\U1|ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(6),
	datab => \U1|NZVC\(3),
	datac => \U1|ALU_Result\(5),
	datad => \U1|ALU_Result\(4),
	combout => \U3|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y26_N10
\U3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux5~0_combout\ = (\U1|ALU_Result\(6) & (!\U1|ALU_Result\(4) & ((\U1|NZVC\(3)) # (!\U1|ALU_Result\(5))))) # (!\U1|ALU_Result\(6) & (\U1|NZVC\(3) & (\U1|ALU_Result\(5) $ (!\U1|ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(6),
	datab => \U1|NZVC\(3),
	datac => \U1|ALU_Result\(5),
	datad => \U1|ALU_Result\(4),
	combout => \U3|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y26_N24
\U3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux4~0_combout\ = (\U1|ALU_Result\(6) & (\U1|NZVC\(3) & ((!\U1|ALU_Result\(4))))) # (!\U1|ALU_Result\(6) & ((\U1|ALU_Result\(5) & ((!\U1|ALU_Result\(4)))) # (!\U1|ALU_Result\(5) & (\U1|NZVC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(6),
	datab => \U1|NZVC\(3),
	datac => \U1|ALU_Result\(5),
	datad => \U1|ALU_Result\(4),
	combout => \U3|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y26_N2
\U3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux3~0_combout\ = (\U1|NZVC\(3) & (\U1|ALU_Result\(6) $ ((!\U1|ALU_Result\(5))))) # (!\U1|NZVC\(3) & ((\U1|ALU_Result\(6) & (!\U1|ALU_Result\(5) & \U1|ALU_Result\(4))) # (!\U1|ALU_Result\(6) & (\U1|ALU_Result\(5) & !\U1|ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(6),
	datab => \U1|NZVC\(3),
	datac => \U1|ALU_Result\(5),
	datad => \U1|ALU_Result\(4),
	combout => \U3|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y26_N12
\U3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux2~0_combout\ = (\U1|ALU_Result\(5) & (\U1|ALU_Result\(4) & ((\U1|ALU_Result\(6)) # (!\U1|NZVC\(3))))) # (!\U1|ALU_Result\(5) & (\U1|ALU_Result\(6) & (!\U1|NZVC\(3) & !\U1|ALU_Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(6),
	datab => \U1|NZVC\(3),
	datac => \U1|ALU_Result\(5),
	datad => \U1|ALU_Result\(4),
	combout => \U3|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y26_N22
\U3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux1~0_combout\ = (\U1|ALU_Result\(6) & ((\U1|NZVC\(3) & ((\U1|ALU_Result\(4)))) # (!\U1|NZVC\(3) & (\U1|ALU_Result\(5))))) # (!\U1|ALU_Result\(6) & (\U1|ALU_Result\(5) & (\U1|NZVC\(3) $ (\U1|ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(6),
	datab => \U1|NZVC\(3),
	datac => \U1|ALU_Result\(5),
	datad => \U1|ALU_Result\(4),
	combout => \U3|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y26_N0
\U3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = (\U1|NZVC\(3) & ((\U1|ALU_Result\(6) & (!\U1|ALU_Result\(5) & \U1|ALU_Result\(4))) # (!\U1|ALU_Result\(6) & (\U1|ALU_Result\(5) $ (!\U1|ALU_Result\(4)))))) # (!\U1|NZVC\(3) & (((\U1|ALU_Result\(5) & !\U1|ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALU_Result\(6),
	datab => \U1|NZVC\(3),
	datac => \U1|ALU_Result\(5),
	datad => \U1|ALU_Result\(4),
	combout => \U3|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y25_N24
\U4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = (\B[3]~input_o\ & ((\B[0]~input_o\) # (\B[1]~input_o\ $ (\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\) # (\B[1]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U4|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y25_N6
\U4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = (\B[1]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (\B[0]~input_o\)))) # (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((\B[2]~input_o\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U4|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y25_N0
\U4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\ & !\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((!\B[0]~input_o\))) # (!\B[1]~input_o\ & (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U4|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y25_N10
\U4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\B[3]~input_o\ & (\B[1]~input_o\ $ ((!\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (!\B[2]~input_o\ & !\B[0]~input_o\)) # (!\B[1]~input_o\ & (\B[2]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y25_N4
\U4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & ((\B[2]~input_o\) # (!\B[3]~input_o\)))) # (!\B[1]~input_o\ & (\B[2]~input_o\ & (!\B[3]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U4|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y25_N14
\U4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\B[0]~input_o\))) # (!\B[3]~input_o\ & (\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\B[1]~input_o\ & (\B[3]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U4|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y25_N12
\U4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (!\B[2]~input_o\ & \B[0]~input_o\)) # (!\B[3]~input_o\ & ((!\B[0]~input_o\))))) # (!\B[1]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U4|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y22_N4
\U5n|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5n|Mux6~0_combout\ = (\B[7]~input_o\ & ((\B[4]~input_o\) # (\B[6]~input_o\ $ (\B[5]~input_o\)))) # (!\B[7]~input_o\ & ((\B[6]~input_o\) # (\B[4]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U5n|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y22_N6
\U5n|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5n|Mux5~0_combout\ = (\B[6]~input_o\ & (!\B[4]~input_o\ & ((\B[7]~input_o\) # (!\B[5]~input_o\)))) # (!\B[6]~input_o\ & (\B[7]~input_o\ & (\B[4]~input_o\ $ (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U5n|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y22_N28
\U5n|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5n|Mux4~0_combout\ = (\B[6]~input_o\ & (\B[7]~input_o\ & (!\B[4]~input_o\))) # (!\B[6]~input_o\ & ((\B[5]~input_o\ & ((!\B[4]~input_o\))) # (!\B[5]~input_o\ & (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U5n|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y22_N30
\U5n|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5n|Mux3~0_combout\ = (\B[7]~input_o\ & (\B[6]~input_o\ $ (((!\B[5]~input_o\))))) # (!\B[7]~input_o\ & ((\B[6]~input_o\ & (\B[4]~input_o\ & !\B[5]~input_o\)) # (!\B[6]~input_o\ & (!\B[4]~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U5n|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y22_N8
\U5n|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5n|Mux2~0_combout\ = (\B[4]~input_o\ & (\B[5]~input_o\ & ((\B[6]~input_o\) # (!\B[7]~input_o\)))) # (!\B[4]~input_o\ & (!\B[7]~input_o\ & (\B[6]~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U5n|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y22_N0
\U5n|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5n|Mux1~0_combout\ = (\B[6]~input_o\ & ((\B[7]~input_o\ & (\B[4]~input_o\)) # (!\B[7]~input_o\ & ((\B[5]~input_o\))))) # (!\B[6]~input_o\ & (\B[5]~input_o\ & (\B[7]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U5n|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y22_N30
\U5n|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5n|Mux0~0_combout\ = (\B[4]~input_o\ & (\B[7]~input_o\ & (\B[6]~input_o\ $ (\B[5]~input_o\)))) # (!\B[4]~input_o\ & ((\B[7]~input_o\ & (!\B[6]~input_o\ & !\B[5]~input_o\)) # (!\B[7]~input_o\ & ((\B[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[5]~input_o\,
	combout => \U5n|Mux0~0_combout\);

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;

ww_display0(0) <= \display0[0]~output_o\;

ww_display0(1) <= \display0[1]~output_o\;

ww_display0(2) <= \display0[2]~output_o\;

ww_display0(3) <= \display0[3]~output_o\;

ww_display0(4) <= \display0[4]~output_o\;

ww_display0(5) <= \display0[5]~output_o\;

ww_display0(6) <= \display0[6]~output_o\;

ww_display1(0) <= \display1[0]~output_o\;

ww_display1(1) <= \display1[1]~output_o\;

ww_display1(2) <= \display1[2]~output_o\;

ww_display1(3) <= \display1[3]~output_o\;

ww_display1(4) <= \display1[4]~output_o\;

ww_display1(5) <= \display1[5]~output_o\;

ww_display1(6) <= \display1[6]~output_o\;

ww_display_2(0) <= \display_2[0]~output_o\;

ww_display_2(1) <= \display_2[1]~output_o\;

ww_display_2(2) <= \display_2[2]~output_o\;

ww_display_2(3) <= \display_2[3]~output_o\;

ww_display_2(4) <= \display_2[4]~output_o\;

ww_display_2(5) <= \display_2[5]~output_o\;

ww_display_2(6) <= \display_2[6]~output_o\;

ww_display_3(0) <= \display_3[0]~output_o\;

ww_display_3(1) <= \display_3[1]~output_o\;

ww_display_3(2) <= \display_3[2]~output_o\;

ww_display_3(3) <= \display_3[3]~output_o\;

ww_display_3(4) <= \display_3[4]~output_o\;

ww_display_3(5) <= \display_3[5]~output_o\;

ww_display_3(6) <= \display_3[6]~output_o\;
END structure;


