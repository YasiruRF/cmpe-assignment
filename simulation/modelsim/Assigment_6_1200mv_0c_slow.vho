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

-- DATE "05/23/2025 13:30:51"

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

ENTITY 	fourbitAU IS
    PORT (
	F0 : OUT std_logic;
	S1 : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S0 : IN std_logic;
	N : OUT std_logic;
	G : OUT std_logic_vector(3 DOWNTO 0);
	Z : OUT std_logic
	);
END fourbitAU;

-- Design Ports Information
-- F0	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourbitAU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S0 : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \F0~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst22|C_out~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst22|C_out~1_combout\ : std_logic;
SIGNAL \inst21|C_out~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst4|C_out~0_combout\ : std_logic;
SIGNAL \inst5|C_out~0_combout\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \inst10|F~0_combout\ : std_logic;
SIGNAL \inst5|sum~0_combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst4|sum~0_combout\ : std_logic;
SIGNAL \inst21|sum~combout\ : std_logic;
SIGNAL \inst22|sum~0_combout\ : std_logic;

BEGIN

F0 <= ww_F0;
ww_S1 <= S1;
ww_A <= A;
ww_B <= B;
ww_S0 <= S0;
N <= ww_N;
G <= ww_G;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y9_N23
\F0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|F~0_combout\,
	devoe => ww_devoe,
	o => \F0~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sum~0_combout\,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sum~0_combout\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|sum~combout\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|sum~0_combout\,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\S0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y10_N12
inst7 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~combout\ = \B[1]~input_o\ $ (\S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \S0~input_o\,
	combout => \inst7~combout\);

-- Location: IOIBUF_X0_Y10_N8
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\inst22|C_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|C_out~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \S0~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst22|C_out~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y10_N2
\inst22|C_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|C_out~1_combout\ = (\S0~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst22|C_out~1_combout\);

-- Location: LCCOMB_X1_Y10_N22
\inst21|C_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|C_out~0_combout\ = (\inst7~combout\ & ((\inst22|C_out~0_combout\) # ((\A[1]~input_o\) # (\inst22|C_out~1_combout\)))) # (!\inst7~combout\ & (\A[1]~input_o\ & ((\inst22|C_out~0_combout\) # (\inst22|C_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~combout\,
	datab => \inst22|C_out~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst22|C_out~1_combout\,
	combout => \inst21|C_out~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y10_N0
\inst4|C_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|C_out~0_combout\ = (\A[2]~input_o\ & ((\inst21|C_out~0_combout\) # (\S0~input_o\ $ (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\inst21|C_out~0_combout\ & (\S0~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[2]~input_o\,
	datac => \inst21|C_out~0_combout\,
	datad => \B[2]~input_o\,
	combout => \inst4|C_out~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\inst5|C_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|C_out~0_combout\ = (\A[3]~input_o\ & ((\inst4|C_out~0_combout\) # (\B[3]~input_o\ $ (\S0~input_o\)))) # (!\A[3]~input_o\ & (\inst4|C_out~0_combout\ & (\B[3]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \S0~input_o\,
	datad => \inst4|C_out~0_combout\,
	combout => \inst5|C_out~0_combout\);

-- Location: IOIBUF_X7_Y0_N29
\S1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X1_Y10_N4
\inst10|F~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|F~0_combout\ = \inst5|C_out~0_combout\ $ (((\inst4|C_out~0_combout\ & !\S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|C_out~0_combout\,
	datab => \inst4|C_out~0_combout\,
	datad => \S1~input_o\,
	combout => \inst10|F~0_combout\);

-- Location: LCCOMB_X1_Y10_N6
\inst5|sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|sum~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\S0~input_o\ $ (\inst4|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \S0~input_o\,
	datad => \inst4|C_out~0_combout\,
	combout => \inst5|sum~0_combout\);

-- Location: LCCOMB_X1_Y10_N8
inst : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\inst5|sum~0_combout\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sum~0_combout\,
	datad => \S1~input_o\,
	combout => \inst~combout\);

-- Location: LCCOMB_X1_Y10_N26
\inst4|sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sum~0_combout\ = \S0~input_o\ $ (\A[2]~input_o\ $ (\inst21|C_out~0_combout\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[2]~input_o\,
	datac => \inst21|C_out~0_combout\,
	datad => \B[2]~input_o\,
	combout => \inst4|sum~0_combout\);

-- Location: LCCOMB_X1_Y10_N20
\inst21|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|sum~combout\ = \inst7~combout\ $ (\A[1]~input_o\ $ (((\inst22|C_out~0_combout\) # (\inst22|C_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~combout\,
	datab => \inst22|C_out~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst22|C_out~1_combout\,
	combout => \inst21|sum~combout\);

-- Location: LCCOMB_X1_Y10_N30
\inst22|sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|sum~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst22|sum~0_combout\);

ww_F0 <= \F0~output_o\;

ww_N <= \N~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_Z <= \Z~output_o\;
END structure;


