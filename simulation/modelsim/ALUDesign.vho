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

-- DATE "05/15/2023 12:56:10"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDesign IS
    PORT (
	DR : IN std_logic_vector(15 DOWNTO 0);
	AC : IN std_logic_vector(15 DOWNTO 0);
	inp : IN std_logic_vector(7 DOWNTO 0);
	ld : IN std_logic;
	S5 : IN std_logic;
	S4 : IN std_logic;
	S3 : IN std_logic;
	ALU_Select : IN std_logic_vector(2 DOWNTO 0);
	alu_sonuc : OUT std_logic_vector(15 DOWNTO 0);
	ALU_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDesign;

-- Design Ports Information
-- inp[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[4]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Select[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Select[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Select[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[12]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sonuc[15]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_out[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[2]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[9]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[10]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[12]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[12]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[15]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDesign IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_inp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ld : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_ALU_Select : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_sonuc : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ALU_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \inp[4]~input_o\ : std_logic;
SIGNAL \inp[5]~input_o\ : std_logic;
SIGNAL \inp[6]~input_o\ : std_logic;
SIGNAL \inp[7]~input_o\ : std_logic;
SIGNAL \ALU_Select[0]~input_o\ : std_logic;
SIGNAL \ALU_Select[1]~input_o\ : std_logic;
SIGNAL \ALU_Select[2]~input_o\ : std_logic;
SIGNAL \alu_sonuc[0]~output_o\ : std_logic;
SIGNAL \alu_sonuc[1]~output_o\ : std_logic;
SIGNAL \alu_sonuc[2]~output_o\ : std_logic;
SIGNAL \alu_sonuc[3]~output_o\ : std_logic;
SIGNAL \alu_sonuc[4]~output_o\ : std_logic;
SIGNAL \alu_sonuc[5]~output_o\ : std_logic;
SIGNAL \alu_sonuc[6]~output_o\ : std_logic;
SIGNAL \alu_sonuc[7]~output_o\ : std_logic;
SIGNAL \alu_sonuc[8]~output_o\ : std_logic;
SIGNAL \alu_sonuc[9]~output_o\ : std_logic;
SIGNAL \alu_sonuc[10]~output_o\ : std_logic;
SIGNAL \alu_sonuc[11]~output_o\ : std_logic;
SIGNAL \alu_sonuc[12]~output_o\ : std_logic;
SIGNAL \alu_sonuc[13]~output_o\ : std_logic;
SIGNAL \alu_sonuc[14]~output_o\ : std_logic;
SIGNAL \alu_sonuc[15]~output_o\ : std_logic;
SIGNAL \ALU_out[0]~output_o\ : std_logic;
SIGNAL \ALU_out[1]~output_o\ : std_logic;
SIGNAL \ALU_out[2]~output_o\ : std_logic;
SIGNAL \ALU_out[3]~output_o\ : std_logic;
SIGNAL \ALU_out[4]~output_o\ : std_logic;
SIGNAL \ALU_out[5]~output_o\ : std_logic;
SIGNAL \ALU_out[6]~output_o\ : std_logic;
SIGNAL \ALU_out[7]~output_o\ : std_logic;
SIGNAL \S4~input_o\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \S3~input_o\ : std_logic;
SIGNAL \AC[0]~input_o\ : std_logic;
SIGNAL \DR[0]~input_o\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \S5~input_o\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \AC[1]~input_o\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \DR[1]~input_o\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \temp~12_combout\ : std_logic;
SIGNAL \AC[2]~input_o\ : std_logic;
SIGNAL \temp~11_combout\ : std_logic;
SIGNAL \temp~13_combout\ : std_logic;
SIGNAL \AC[3]~input_o\ : std_logic;
SIGNAL \DR[2]~input_o\ : std_logic;
SIGNAL \temp~14_combout\ : std_logic;
SIGNAL \temp~15_combout\ : std_logic;
SIGNAL \temp~16_combout\ : std_logic;
SIGNAL \temp~17_combout\ : std_logic;
SIGNAL \AC[4]~input_o\ : std_logic;
SIGNAL \DR[3]~input_o\ : std_logic;
SIGNAL \temp~18_combout\ : std_logic;
SIGNAL \temp~19_combout\ : std_logic;
SIGNAL \temp~20_combout\ : std_logic;
SIGNAL \temp~21_combout\ : std_logic;
SIGNAL \DR[4]~input_o\ : std_logic;
SIGNAL \temp~22_combout\ : std_logic;
SIGNAL \temp~23_combout\ : std_logic;
SIGNAL \temp~24_combout\ : std_logic;
SIGNAL \AC[5]~input_o\ : std_logic;
SIGNAL \temp~25_combout\ : std_logic;
SIGNAL \DR[5]~input_o\ : std_logic;
SIGNAL \temp~26_combout\ : std_logic;
SIGNAL \temp~27_combout\ : std_logic;
SIGNAL \temp~28_combout\ : std_logic;
SIGNAL \AC[6]~input_o\ : std_logic;
SIGNAL \temp~29_combout\ : std_logic;
SIGNAL \DR[6]~input_o\ : std_logic;
SIGNAL \temp~30_combout\ : std_logic;
SIGNAL \temp~31_combout\ : std_logic;
SIGNAL \temp~32_combout\ : std_logic;
SIGNAL \AC[7]~input_o\ : std_logic;
SIGNAL \temp~33_combout\ : std_logic;
SIGNAL \DR[7]~input_o\ : std_logic;
SIGNAL \temp~34_combout\ : std_logic;
SIGNAL \temp~35_combout\ : std_logic;
SIGNAL \temp~36_combout\ : std_logic;
SIGNAL \AC[8]~input_o\ : std_logic;
SIGNAL \temp~37_combout\ : std_logic;
SIGNAL \AC[9]~input_o\ : std_logic;
SIGNAL \DR[8]~input_o\ : std_logic;
SIGNAL \temp~38_combout\ : std_logic;
SIGNAL \temp~39_combout\ : std_logic;
SIGNAL \temp~40_combout\ : std_logic;
SIGNAL \temp~41_combout\ : std_logic;
SIGNAL \AC[10]~input_o\ : std_logic;
SIGNAL \DR[9]~input_o\ : std_logic;
SIGNAL \temp~42_combout\ : std_logic;
SIGNAL \temp~43_combout\ : std_logic;
SIGNAL \temp~44_combout\ : std_logic;
SIGNAL \temp~45_combout\ : std_logic;
SIGNAL \AC[11]~input_o\ : std_logic;
SIGNAL \DR[10]~input_o\ : std_logic;
SIGNAL \temp~46_combout\ : std_logic;
SIGNAL \temp~47_combout\ : std_logic;
SIGNAL \temp~48_combout\ : std_logic;
SIGNAL \temp~49_combout\ : std_logic;
SIGNAL \AC[12]~input_o\ : std_logic;
SIGNAL \DR[11]~input_o\ : std_logic;
SIGNAL \temp~50_combout\ : std_logic;
SIGNAL \temp~51_combout\ : std_logic;
SIGNAL \temp~52_combout\ : std_logic;
SIGNAL \temp~53_combout\ : std_logic;
SIGNAL \DR[12]~input_o\ : std_logic;
SIGNAL \temp~54_combout\ : std_logic;
SIGNAL \temp~55_combout\ : std_logic;
SIGNAL \temp~56_combout\ : std_logic;
SIGNAL \AC[13]~input_o\ : std_logic;
SIGNAL \temp~57_combout\ : std_logic;
SIGNAL \DR[13]~input_o\ : std_logic;
SIGNAL \temp~58_combout\ : std_logic;
SIGNAL \temp~59_combout\ : std_logic;
SIGNAL \temp~60_combout\ : std_logic;
SIGNAL \AC[14]~input_o\ : std_logic;
SIGNAL \temp~61_combout\ : std_logic;
SIGNAL \DR[14]~input_o\ : std_logic;
SIGNAL \temp~62_combout\ : std_logic;
SIGNAL \temp~63_combout\ : std_logic;
SIGNAL \temp~64_combout\ : std_logic;
SIGNAL \AC[15]~input_o\ : std_logic;
SIGNAL \temp~65_combout\ : std_logic;
SIGNAL \DR[15]~input_o\ : std_logic;
SIGNAL \temp~66_combout\ : std_logic;
SIGNAL \temp~67_combout\ : std_logic;
SIGNAL \temp~68_combout\ : std_logic;
SIGNAL \temp~69_combout\ : std_logic;

BEGIN

ww_DR <= DR;
ww_AC <= AC;
ww_inp <= inp;
ww_ld <= ld;
ww_S5 <= S5;
ww_S4 <= S4;
ww_S3 <= S3;
ww_ALU_Select <= ALU_Select;
alu_sonuc <= ww_alu_sonuc;
ALU_out <= ww_ALU_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X34_Y41_N2
\alu_sonuc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~6_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[0]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\alu_sonuc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~13_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[1]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\alu_sonuc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~17_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[2]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\alu_sonuc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~21_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[3]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\alu_sonuc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~25_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[4]~output_o\);

-- Location: IOOBUF_X5_Y41_N2
\alu_sonuc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~29_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[5]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\alu_sonuc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~33_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[6]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\alu_sonuc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~37_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[7]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\alu_sonuc[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~41_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[8]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\alu_sonuc[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~45_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[9]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\alu_sonuc[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~49_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[10]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\alu_sonuc[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~53_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[11]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\alu_sonuc[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~57_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[12]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\alu_sonuc[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~61_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[13]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\alu_sonuc[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~65_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[14]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\alu_sonuc[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~69_combout\,
	devoe => ww_devoe,
	o => \alu_sonuc[15]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\ALU_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[0]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\ALU_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\ALU_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\ALU_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[3]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\ALU_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\ALU_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[5]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\ALU_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\ALU_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_out[7]~output_o\);

-- Location: IOIBUF_X23_Y41_N1
\S4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S4,
	o => \S4~input_o\);

-- Location: IOIBUF_X31_Y41_N15
\ld~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: LCCOMB_X27_Y40_N6
\temp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = (\S4~input_o\ & \ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S4~input_o\,
	datad => \ld~input_o\,
	combout => \temp~4_combout\);

-- Location: IOIBUF_X31_Y41_N22
\S3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S3,
	o => \S3~input_o\);

-- Location: IOIBUF_X7_Y41_N15
\AC[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(0),
	o => \AC[0]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\DR[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(0),
	o => \DR[0]~input_o\);

-- Location: LCCOMB_X27_Y40_N24
\temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = (\S3~input_o\ & ((\AC[0]~input_o\) # (\DR[0]~input_o\))) # (!\S3~input_o\ & (\AC[0]~input_o\ & \DR[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datac => \AC[0]~input_o\,
	datad => \DR[0]~input_o\,
	combout => \temp~0_combout\);

-- Location: IOIBUF_X31_Y41_N1
\S5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S5,
	o => \S5~input_o\);

-- Location: LCCOMB_X25_Y40_N0
\temp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = (!\S3~input_o\ & !\S5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datad => \S5~input_o\,
	combout => \temp~2_combout\);

-- Location: IOIBUF_X29_Y41_N8
\AC[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(1),
	o => \AC[1]~input_o\);

-- Location: LCCOMB_X27_Y40_N18
\temp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = (\AC[1]~input_o\ & (\S5~input_o\ & \S3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[1]~input_o\,
	datab => \S5~input_o\,
	datac => \S3~input_o\,
	combout => \temp~1_combout\);

-- Location: LCCOMB_X27_Y40_N4
\temp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = (\temp~1_combout\) # ((\temp~2_combout\ & (\AC[0]~input_o\ $ (\DR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~2_combout\,
	datab => \temp~1_combout\,
	datac => \AC[0]~input_o\,
	datad => \DR[0]~input_o\,
	combout => \temp~3_combout\);

-- Location: LCCOMB_X27_Y40_N0
\temp~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~5_combout\ = (!\S5~input_o\ & (!\S4~input_o\ & \ld~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S5~input_o\,
	datac => \S4~input_o\,
	datad => \ld~input_o\,
	combout => \temp~5_combout\);

-- Location: LCCOMB_X27_Y40_N10
\temp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = (\temp~4_combout\ & ((\temp~3_combout\) # ((\temp~0_combout\ & \temp~5_combout\)))) # (!\temp~4_combout\ & (\temp~0_combout\ & ((\temp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~4_combout\,
	datab => \temp~0_combout\,
	datac => \temp~3_combout\,
	datad => \temp~5_combout\,
	combout => \temp~6_combout\);

-- Location: LCCOMB_X27_Y40_N22
\temp~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = (\S5~input_o\) # ((!\S3~input_o\ & \S4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datab => \S5~input_o\,
	datac => \S4~input_o\,
	combout => \temp~8_combout\);

-- Location: IOIBUF_X36_Y41_N1
\DR[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(1),
	o => \DR[1]~input_o\);

-- Location: LCCOMB_X27_Y40_N20
\temp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = (!\S4~input_o\ & ((\DR[1]~input_o\) # (\AC[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S4~input_o\,
	datac => \DR[1]~input_o\,
	datad => \AC[1]~input_o\,
	combout => \temp~7_combout\);

-- Location: LCCOMB_X27_Y40_N16
\temp~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = (\temp~8_combout\ & (\AC[0]~input_o\ & (\S3~input_o\))) # (!\temp~8_combout\ & (((\temp~7_combout\) # (!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \AC[0]~input_o\,
	datac => \S3~input_o\,
	datad => \temp~7_combout\,
	combout => \temp~9_combout\);

-- Location: LCCOMB_X27_Y40_N2
\temp~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (\temp~2_combout\ & ((\temp~9_combout\ & (\DR[1]~input_o\ & \AC[1]~input_o\)) # (!\temp~9_combout\ & (\DR[1]~input_o\ $ (\AC[1]~input_o\))))) # (!\temp~2_combout\ & (\temp~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~2_combout\,
	datab => \temp~9_combout\,
	datac => \DR[1]~input_o\,
	datad => \AC[1]~input_o\,
	combout => \temp~10_combout\);

-- Location: LCCOMB_X27_Y40_N14
\temp~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~12_combout\ = (\S3~input_o\ & (\S5~input_o\ & (\S4~input_o\ & \ld~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datab => \S5~input_o\,
	datac => \S4~input_o\,
	datad => \ld~input_o\,
	combout => \temp~12_combout\);

-- Location: IOIBUF_X46_Y41_N1
\AC[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(2),
	o => \AC[2]~input_o\);

-- Location: LCCOMB_X27_Y40_N28
\temp~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~11_combout\ = (\ld~input_o\ & (((!\S4~input_o\) # (!\S5~input_o\)) # (!\S3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datab => \S5~input_o\,
	datac => \S4~input_o\,
	datad => \ld~input_o\,
	combout => \temp~11_combout\);

-- Location: LCCOMB_X26_Y40_N0
\temp~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~13_combout\ = (\temp~10_combout\ & ((\temp~11_combout\) # ((\temp~12_combout\ & \AC[2]~input_o\)))) # (!\temp~10_combout\ & (\temp~12_combout\ & (\AC[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \temp~12_combout\,
	datac => \AC[2]~input_o\,
	datad => \temp~11_combout\,
	combout => \temp~13_combout\);

-- Location: IOIBUF_X38_Y41_N1
\AC[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(3),
	o => \AC[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\DR[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(2),
	o => \DR[2]~input_o\);

-- Location: LCCOMB_X26_Y40_N2
\temp~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~14_combout\ = (!\S4~input_o\ & ((\AC[2]~input_o\) # (\DR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S4~input_o\,
	datac => \AC[2]~input_o\,
	datad => \DR[2]~input_o\,
	combout => \temp~14_combout\);

-- Location: LCCOMB_X26_Y40_N4
\temp~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~15_combout\ = (\temp~8_combout\ & (\AC[1]~input_o\ & ((\S3~input_o\)))) # (!\temp~8_combout\ & (((\temp~14_combout\) # (!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[1]~input_o\,
	datab => \temp~14_combout\,
	datac => \temp~8_combout\,
	datad => \S3~input_o\,
	combout => \temp~15_combout\);

-- Location: LCCOMB_X26_Y40_N14
\temp~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~16_combout\ = (\temp~2_combout\ & ((\temp~15_combout\ & (\AC[2]~input_o\ & \DR[2]~input_o\)) # (!\temp~15_combout\ & (\AC[2]~input_o\ $ (\DR[2]~input_o\))))) # (!\temp~2_combout\ & (\temp~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~2_combout\,
	datab => \temp~15_combout\,
	datac => \AC[2]~input_o\,
	datad => \DR[2]~input_o\,
	combout => \temp~16_combout\);

-- Location: LCCOMB_X26_Y40_N8
\temp~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~17_combout\ = (\AC[3]~input_o\ & ((\temp~12_combout\) # ((\temp~16_combout\ & \temp~11_combout\)))) # (!\AC[3]~input_o\ & (((\temp~16_combout\ & \temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[3]~input_o\,
	datab => \temp~12_combout\,
	datac => \temp~16_combout\,
	datad => \temp~11_combout\,
	combout => \temp~17_combout\);

-- Location: IOIBUF_X34_Y41_N8
\AC[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(4),
	o => \AC[4]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\DR[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(3),
	o => \DR[3]~input_o\);

-- Location: LCCOMB_X26_Y40_N26
\temp~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~18_combout\ = (!\S4~input_o\ & ((\AC[3]~input_o\) # (\DR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[3]~input_o\,
	datab => \DR[3]~input_o\,
	datac => \S4~input_o\,
	combout => \temp~18_combout\);

-- Location: LCCOMB_X26_Y40_N20
\temp~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~19_combout\ = (\S3~input_o\ & ((\temp~8_combout\ & ((\AC[2]~input_o\))) # (!\temp~8_combout\ & (\temp~18_combout\)))) # (!\S3~input_o\ & (((!\temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~18_combout\,
	datab => \S3~input_o\,
	datac => \AC[2]~input_o\,
	datad => \temp~8_combout\,
	combout => \temp~19_combout\);

-- Location: LCCOMB_X26_Y40_N30
\temp~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~20_combout\ = (\temp~19_combout\ & (((\AC[3]~input_o\ & \DR[3]~input_o\)) # (!\temp~2_combout\))) # (!\temp~19_combout\ & (\temp~2_combout\ & (\AC[3]~input_o\ $ (\DR[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[3]~input_o\,
	datab => \temp~19_combout\,
	datac => \temp~2_combout\,
	datad => \DR[3]~input_o\,
	combout => \temp~20_combout\);

-- Location: LCCOMB_X26_Y40_N16
\temp~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~21_combout\ = (\AC[4]~input_o\ & ((\temp~12_combout\) # ((\temp~20_combout\ & \temp~11_combout\)))) # (!\AC[4]~input_o\ & (((\temp~20_combout\ & \temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[4]~input_o\,
	datab => \temp~12_combout\,
	datac => \temp~20_combout\,
	datad => \temp~11_combout\,
	combout => \temp~21_combout\);

-- Location: IOIBUF_X41_Y41_N8
\DR[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(4),
	o => \DR[4]~input_o\);

-- Location: LCCOMB_X26_Y40_N18
\temp~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~22_combout\ = (!\S4~input_o\ & ((\AC[4]~input_o\) # (\DR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[4]~input_o\,
	datac => \S4~input_o\,
	datad => \DR[4]~input_o\,
	combout => \temp~22_combout\);

-- Location: LCCOMB_X26_Y40_N28
\temp~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~23_combout\ = (\temp~8_combout\ & (\AC[3]~input_o\ & ((\S3~input_o\)))) # (!\temp~8_combout\ & (((\temp~22_combout\) # (!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[3]~input_o\,
	datab => \temp~22_combout\,
	datac => \temp~8_combout\,
	datad => \S3~input_o\,
	combout => \temp~23_combout\);

-- Location: LCCOMB_X26_Y40_N6
\temp~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~24_combout\ = (\temp~23_combout\ & (((\AC[4]~input_o\ & \DR[4]~input_o\)) # (!\temp~2_combout\))) # (!\temp~23_combout\ & (\temp~2_combout\ & (\AC[4]~input_o\ $ (\DR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[4]~input_o\,
	datab => \temp~23_combout\,
	datac => \temp~2_combout\,
	datad => \DR[4]~input_o\,
	combout => \temp~24_combout\);

-- Location: IOIBUF_X27_Y41_N1
\AC[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(5),
	o => \AC[5]~input_o\);

-- Location: LCCOMB_X26_Y40_N24
\temp~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~25_combout\ = (\temp~24_combout\ & ((\temp~11_combout\) # ((\temp~12_combout\ & \AC[5]~input_o\)))) # (!\temp~24_combout\ & (\temp~12_combout\ & (\AC[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~24_combout\,
	datab => \temp~12_combout\,
	datac => \AC[5]~input_o\,
	datad => \temp~11_combout\,
	combout => \temp~25_combout\);

-- Location: IOIBUF_X27_Y41_N8
\DR[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(5),
	o => \DR[5]~input_o\);

-- Location: LCCOMB_X26_Y40_N10
\temp~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~26_combout\ = (!\S4~input_o\ & ((\AC[5]~input_o\) # (\DR[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S4~input_o\,
	datac => \AC[5]~input_o\,
	datad => \DR[5]~input_o\,
	combout => \temp~26_combout\);

-- Location: LCCOMB_X26_Y40_N12
\temp~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~27_combout\ = (\S3~input_o\ & ((\temp~8_combout\ & ((\AC[4]~input_o\))) # (!\temp~8_combout\ & (\temp~26_combout\)))) # (!\S3~input_o\ & (((!\temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~26_combout\,
	datab => \S3~input_o\,
	datac => \temp~8_combout\,
	datad => \AC[4]~input_o\,
	combout => \temp~27_combout\);

-- Location: LCCOMB_X26_Y40_N22
\temp~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~28_combout\ = (\temp~2_combout\ & ((\DR[5]~input_o\ & (\AC[5]~input_o\ $ (!\temp~27_combout\))) # (!\DR[5]~input_o\ & (\AC[5]~input_o\ & !\temp~27_combout\)))) # (!\temp~2_combout\ & (((\temp~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~2_combout\,
	datab => \DR[5]~input_o\,
	datac => \AC[5]~input_o\,
	datad => \temp~27_combout\,
	combout => \temp~28_combout\);

-- Location: IOIBUF_X21_Y0_N1
\AC[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(6),
	o => \AC[6]~input_o\);

-- Location: LCCOMB_X24_Y40_N8
\temp~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~29_combout\ = (\temp~12_combout\ & ((\AC[6]~input_o\) # ((\temp~28_combout\ & \temp~11_combout\)))) # (!\temp~12_combout\ & (\temp~28_combout\ & ((\temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~12_combout\,
	datab => \temp~28_combout\,
	datac => \AC[6]~input_o\,
	datad => \temp~11_combout\,
	combout => \temp~29_combout\);

-- Location: IOIBUF_X12_Y41_N1
\DR[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(6),
	o => \DR[6]~input_o\);

-- Location: LCCOMB_X24_Y40_N10
\temp~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~30_combout\ = (!\S4~input_o\ & ((\AC[6]~input_o\) # (\DR[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[6]~input_o\,
	datac => \DR[6]~input_o\,
	datad => \S4~input_o\,
	combout => \temp~30_combout\);

-- Location: LCCOMB_X24_Y40_N12
\temp~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~31_combout\ = (\temp~8_combout\ & (((\AC[5]~input_o\ & \S3~input_o\)))) # (!\temp~8_combout\ & ((\temp~30_combout\) # ((!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~30_combout\,
	datab => \temp~8_combout\,
	datac => \AC[5]~input_o\,
	datad => \S3~input_o\,
	combout => \temp~31_combout\);

-- Location: LCCOMB_X24_Y40_N22
\temp~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~32_combout\ = (\temp~2_combout\ & ((\AC[6]~input_o\ & (\DR[6]~input_o\ $ (!\temp~31_combout\))) # (!\AC[6]~input_o\ & (\DR[6]~input_o\ & !\temp~31_combout\)))) # (!\temp~2_combout\ & (((\temp~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[6]~input_o\,
	datab => \temp~2_combout\,
	datac => \DR[6]~input_o\,
	datad => \temp~31_combout\,
	combout => \temp~32_combout\);

-- Location: IOIBUF_X43_Y41_N1
\AC[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(7),
	o => \AC[7]~input_o\);

-- Location: LCCOMB_X24_Y40_N0
\temp~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~33_combout\ = (\temp~32_combout\ & ((\temp~11_combout\) # ((\AC[7]~input_o\ & \temp~12_combout\)))) # (!\temp~32_combout\ & (((\AC[7]~input_o\ & \temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~32_combout\,
	datab => \temp~11_combout\,
	datac => \AC[7]~input_o\,
	datad => \temp~12_combout\,
	combout => \temp~33_combout\);

-- Location: IOIBUF_X25_Y0_N1
\DR[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(7),
	o => \DR[7]~input_o\);

-- Location: LCCOMB_X24_Y40_N26
\temp~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~34_combout\ = (!\S4~input_o\ & ((\AC[7]~input_o\) # (\DR[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S4~input_o\,
	datac => \AC[7]~input_o\,
	datad => \DR[7]~input_o\,
	combout => \temp~34_combout\);

-- Location: LCCOMB_X24_Y40_N20
\temp~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~35_combout\ = (\temp~8_combout\ & (((\AC[6]~input_o\ & \S3~input_o\)))) # (!\temp~8_combout\ & ((\temp~34_combout\) # ((!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~34_combout\,
	datab => \temp~8_combout\,
	datac => \AC[6]~input_o\,
	datad => \S3~input_o\,
	combout => \temp~35_combout\);

-- Location: LCCOMB_X24_Y40_N30
\temp~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~36_combout\ = (\temp~35_combout\ & (((\AC[7]~input_o\ & \DR[7]~input_o\)) # (!\temp~2_combout\))) # (!\temp~35_combout\ & (\temp~2_combout\ & (\AC[7]~input_o\ $ (\DR[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[7]~input_o\,
	datab => \temp~35_combout\,
	datac => \temp~2_combout\,
	datad => \DR[7]~input_o\,
	combout => \temp~36_combout\);

-- Location: IOIBUF_X21_Y0_N8
\AC[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(8),
	o => \AC[8]~input_o\);

-- Location: LCCOMB_X24_Y40_N24
\temp~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~37_combout\ = (\temp~36_combout\ & ((\temp~11_combout\) # ((\AC[8]~input_o\ & \temp~12_combout\)))) # (!\temp~36_combout\ & (((\AC[8]~input_o\ & \temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~36_combout\,
	datab => \temp~11_combout\,
	datac => \AC[8]~input_o\,
	datad => \temp~12_combout\,
	combout => \temp~37_combout\);

-- Location: IOIBUF_X7_Y41_N22
\AC[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(9),
	o => \AC[9]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\DR[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(8),
	o => \DR[8]~input_o\);

-- Location: LCCOMB_X24_Y40_N2
\temp~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~38_combout\ = (!\S4~input_o\ & ((\AC[8]~input_o\) # (\DR[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S4~input_o\,
	datac => \AC[8]~input_o\,
	datad => \DR[8]~input_o\,
	combout => \temp~38_combout\);

-- Location: LCCOMB_X24_Y40_N4
\temp~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~39_combout\ = (\S3~input_o\ & ((\temp~8_combout\ & (\AC[7]~input_o\)) # (!\temp~8_combout\ & ((\temp~38_combout\))))) # (!\S3~input_o\ & (!\temp~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datab => \temp~8_combout\,
	datac => \AC[7]~input_o\,
	datad => \temp~38_combout\,
	combout => \temp~39_combout\);

-- Location: LCCOMB_X24_Y40_N14
\temp~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~40_combout\ = (\temp~2_combout\ & ((\AC[8]~input_o\ & (\temp~39_combout\ $ (!\DR[8]~input_o\))) # (!\AC[8]~input_o\ & (!\temp~39_combout\ & \DR[8]~input_o\)))) # (!\temp~2_combout\ & (((\temp~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[8]~input_o\,
	datab => \temp~2_combout\,
	datac => \temp~39_combout\,
	datad => \DR[8]~input_o\,
	combout => \temp~40_combout\);

-- Location: LCCOMB_X24_Y40_N16
\temp~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~41_combout\ = (\AC[9]~input_o\ & ((\temp~12_combout\) # ((\temp~11_combout\ & \temp~40_combout\)))) # (!\AC[9]~input_o\ & (\temp~11_combout\ & (\temp~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[9]~input_o\,
	datab => \temp~11_combout\,
	datac => \temp~40_combout\,
	datad => \temp~12_combout\,
	combout => \temp~41_combout\);

-- Location: IOIBUF_X16_Y41_N1
\AC[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(10),
	o => \AC[10]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\DR[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(9),
	o => \DR[9]~input_o\);

-- Location: LCCOMB_X24_Y40_N18
\temp~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~42_combout\ = (!\S4~input_o\ & ((\DR[9]~input_o\) # (\AC[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DR[9]~input_o\,
	datac => \AC[9]~input_o\,
	datad => \S4~input_o\,
	combout => \temp~42_combout\);

-- Location: LCCOMB_X24_Y40_N28
\temp~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~43_combout\ = (\S3~input_o\ & ((\temp~8_combout\ & ((\AC[8]~input_o\))) # (!\temp~8_combout\ & (\temp~42_combout\)))) # (!\S3~input_o\ & (((!\temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datab => \temp~42_combout\,
	datac => \AC[8]~input_o\,
	datad => \temp~8_combout\,
	combout => \temp~43_combout\);

-- Location: LCCOMB_X24_Y40_N6
\temp~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~44_combout\ = (\temp~43_combout\ & (((\AC[9]~input_o\ & \DR[9]~input_o\)) # (!\temp~2_combout\))) # (!\temp~43_combout\ & (\temp~2_combout\ & (\AC[9]~input_o\ $ (\DR[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[9]~input_o\,
	datab => \temp~43_combout\,
	datac => \temp~2_combout\,
	datad => \DR[9]~input_o\,
	combout => \temp~44_combout\);

-- Location: LCCOMB_X23_Y40_N24
\temp~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~45_combout\ = (\AC[10]~input_o\ & ((\temp~12_combout\) # ((\temp~11_combout\ & \temp~44_combout\)))) # (!\AC[10]~input_o\ & (((\temp~11_combout\ & \temp~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[10]~input_o\,
	datab => \temp~12_combout\,
	datac => \temp~11_combout\,
	datad => \temp~44_combout\,
	combout => \temp~45_combout\);

-- Location: IOIBUF_X25_Y41_N8
\AC[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(11),
	o => \AC[11]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\DR[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(10),
	o => \DR[10]~input_o\);

-- Location: LCCOMB_X23_Y40_N10
\temp~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~46_combout\ = (!\S4~input_o\ & ((\DR[10]~input_o\) # (\AC[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DR[10]~input_o\,
	datac => \AC[10]~input_o\,
	datad => \S4~input_o\,
	combout => \temp~46_combout\);

-- Location: LCCOMB_X23_Y40_N12
\temp~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~47_combout\ = (\temp~8_combout\ & (\AC[9]~input_o\ & (\S3~input_o\))) # (!\temp~8_combout\ & (((\temp~46_combout\) # (!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[9]~input_o\,
	datab => \temp~8_combout\,
	datac => \S3~input_o\,
	datad => \temp~46_combout\,
	combout => \temp~47_combout\);

-- Location: LCCOMB_X23_Y40_N6
\temp~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~48_combout\ = (\temp~47_combout\ & (((\AC[10]~input_o\ & \DR[10]~input_o\)) # (!\temp~2_combout\))) # (!\temp~47_combout\ & (\temp~2_combout\ & (\AC[10]~input_o\ $ (\DR[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~47_combout\,
	datab => \AC[10]~input_o\,
	datac => \DR[10]~input_o\,
	datad => \temp~2_combout\,
	combout => \temp~48_combout\);

-- Location: LCCOMB_X23_Y40_N8
\temp~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~49_combout\ = (\AC[11]~input_o\ & ((\temp~12_combout\) # ((\temp~11_combout\ & \temp~48_combout\)))) # (!\AC[11]~input_o\ & (((\temp~11_combout\ & \temp~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[11]~input_o\,
	datab => \temp~12_combout\,
	datac => \temp~11_combout\,
	datad => \temp~48_combout\,
	combout => \temp~49_combout\);

-- Location: IOIBUF_X46_Y41_N8
\AC[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(12),
	o => \AC[12]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\DR[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(11),
	o => \DR[11]~input_o\);

-- Location: LCCOMB_X23_Y40_N2
\temp~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~50_combout\ = (!\S4~input_o\ & ((\DR[11]~input_o\) # (\AC[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S4~input_o\,
	datac => \DR[11]~input_o\,
	datad => \AC[11]~input_o\,
	combout => \temp~50_combout\);

-- Location: LCCOMB_X23_Y40_N28
\temp~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~51_combout\ = (\S3~input_o\ & ((\temp~8_combout\ & (\AC[10]~input_o\)) # (!\temp~8_combout\ & ((\temp~50_combout\))))) # (!\S3~input_o\ & (((!\temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[10]~input_o\,
	datab => \temp~50_combout\,
	datac => \S3~input_o\,
	datad => \temp~8_combout\,
	combout => \temp~51_combout\);

-- Location: LCCOMB_X23_Y40_N22
\temp~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~52_combout\ = (\temp~2_combout\ & ((\temp~51_combout\ & (\DR[11]~input_o\ & \AC[11]~input_o\)) # (!\temp~51_combout\ & (\DR[11]~input_o\ $ (\AC[11]~input_o\))))) # (!\temp~2_combout\ & (\temp~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~2_combout\,
	datab => \temp~51_combout\,
	datac => \DR[11]~input_o\,
	datad => \AC[11]~input_o\,
	combout => \temp~52_combout\);

-- Location: LCCOMB_X23_Y40_N0
\temp~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~53_combout\ = (\temp~11_combout\ & ((\temp~52_combout\) # ((\temp~12_combout\ & \AC[12]~input_o\)))) # (!\temp~11_combout\ & (\temp~12_combout\ & (\AC[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~11_combout\,
	datab => \temp~12_combout\,
	datac => \AC[12]~input_o\,
	datad => \temp~52_combout\,
	combout => \temp~53_combout\);

-- Location: IOIBUF_X10_Y41_N1
\DR[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(12),
	o => \DR[12]~input_o\);

-- Location: LCCOMB_X25_Y40_N2
\temp~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~54_combout\ = (!\S4~input_o\ & ((\AC[12]~input_o\) # (\DR[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AC[12]~input_o\,
	datac => \S4~input_o\,
	datad => \DR[12]~input_o\,
	combout => \temp~54_combout\);

-- Location: LCCOMB_X25_Y40_N12
\temp~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~55_combout\ = (\temp~8_combout\ & (\AC[11]~input_o\ & ((\S3~input_o\)))) # (!\temp~8_combout\ & (((\temp~54_combout\) # (!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[11]~input_o\,
	datab => \temp~54_combout\,
	datac => \temp~8_combout\,
	datad => \S3~input_o\,
	combout => \temp~55_combout\);

-- Location: LCCOMB_X25_Y40_N6
\temp~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~56_combout\ = (\temp~55_combout\ & (((\AC[12]~input_o\ & \DR[12]~input_o\)) # (!\temp~2_combout\))) # (!\temp~55_combout\ & (\temp~2_combout\ & (\AC[12]~input_o\ $ (\DR[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~55_combout\,
	datab => \temp~2_combout\,
	datac => \AC[12]~input_o\,
	datad => \DR[12]~input_o\,
	combout => \temp~56_combout\);

-- Location: IOIBUF_X10_Y41_N8
\AC[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(13),
	o => \AC[13]~input_o\);

-- Location: LCCOMB_X25_Y40_N8
\temp~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~57_combout\ = (\temp~56_combout\ & ((\temp~11_combout\) # ((\AC[13]~input_o\ & \temp~12_combout\)))) # (!\temp~56_combout\ & (\AC[13]~input_o\ & ((\temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~56_combout\,
	datab => \AC[13]~input_o\,
	datac => \temp~11_combout\,
	datad => \temp~12_combout\,
	combout => \temp~57_combout\);

-- Location: IOIBUF_X21_Y41_N8
\DR[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(13),
	o => \DR[13]~input_o\);

-- Location: LCCOMB_X25_Y40_N18
\temp~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~58_combout\ = (!\S4~input_o\ & ((\AC[13]~input_o\) # (\DR[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AC[13]~input_o\,
	datac => \S4~input_o\,
	datad => \DR[13]~input_o\,
	combout => \temp~58_combout\);

-- Location: LCCOMB_X25_Y40_N20
\temp~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~59_combout\ = (\temp~8_combout\ & (((\AC[12]~input_o\ & \S3~input_o\)))) # (!\temp~8_combout\ & ((\temp~58_combout\) # ((!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \temp~58_combout\,
	datac => \AC[12]~input_o\,
	datad => \S3~input_o\,
	combout => \temp~59_combout\);

-- Location: LCCOMB_X25_Y40_N22
\temp~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~60_combout\ = (\temp~59_combout\ & (((\DR[13]~input_o\ & \AC[13]~input_o\)) # (!\temp~2_combout\))) # (!\temp~59_combout\ & (\temp~2_combout\ & (\DR[13]~input_o\ $ (\AC[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DR[13]~input_o\,
	datab => \temp~59_combout\,
	datac => \AC[13]~input_o\,
	datad => \temp~2_combout\,
	combout => \temp~60_combout\);

-- Location: IOIBUF_X7_Y41_N1
\AC[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(14),
	o => \AC[14]~input_o\);

-- Location: LCCOMB_X25_Y40_N24
\temp~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~61_combout\ = (\temp~60_combout\ & ((\temp~11_combout\) # ((\AC[14]~input_o\ & \temp~12_combout\)))) # (!\temp~60_combout\ & (\AC[14]~input_o\ & ((\temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~60_combout\,
	datab => \AC[14]~input_o\,
	datac => \temp~11_combout\,
	datad => \temp~12_combout\,
	combout => \temp~61_combout\);

-- Location: IOIBUF_X14_Y41_N1
\DR[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(14),
	o => \DR[14]~input_o\);

-- Location: LCCOMB_X25_Y40_N10
\temp~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~62_combout\ = (!\S4~input_o\ & ((\AC[14]~input_o\) # (\DR[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AC[14]~input_o\,
	datac => \S4~input_o\,
	datad => \DR[14]~input_o\,
	combout => \temp~62_combout\);

-- Location: LCCOMB_X25_Y40_N28
\temp~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~63_combout\ = (\temp~8_combout\ & (((\AC[13]~input_o\ & \S3~input_o\)))) # (!\temp~8_combout\ & ((\temp~62_combout\) # ((!\S3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~62_combout\,
	datab => \AC[13]~input_o\,
	datac => \temp~8_combout\,
	datad => \S3~input_o\,
	combout => \temp~63_combout\);

-- Location: LCCOMB_X25_Y40_N30
\temp~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~64_combout\ = (\temp~63_combout\ & (((\DR[14]~input_o\ & \AC[14]~input_o\)) # (!\temp~2_combout\))) # (!\temp~63_combout\ & (\temp~2_combout\ & (\DR[14]~input_o\ $ (\AC[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DR[14]~input_o\,
	datab => \temp~63_combout\,
	datac => \AC[14]~input_o\,
	datad => \temp~2_combout\,
	combout => \temp~64_combout\);

-- Location: IOIBUF_X25_Y41_N1
\AC[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AC(15),
	o => \AC[15]~input_o\);

-- Location: LCCOMB_X25_Y40_N16
\temp~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~65_combout\ = (\temp~64_combout\ & ((\temp~11_combout\) # ((\AC[15]~input_o\ & \temp~12_combout\)))) # (!\temp~64_combout\ & (\AC[15]~input_o\ & ((\temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~64_combout\,
	datab => \AC[15]~input_o\,
	datac => \temp~11_combout\,
	datad => \temp~12_combout\,
	combout => \temp~65_combout\);

-- Location: IOIBUF_X36_Y41_N8
\DR[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DR(15),
	o => \DR[15]~input_o\);

-- Location: LCCOMB_X27_Y40_N8
\temp~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~66_combout\ = (\temp~2_combout\ & (\temp~4_combout\ & (\DR[15]~input_o\ $ (\AC[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~2_combout\,
	datab => \DR[15]~input_o\,
	datac => \AC[15]~input_o\,
	datad => \temp~4_combout\,
	combout => \temp~66_combout\);

-- Location: LCCOMB_X27_Y40_N26
\temp~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~67_combout\ = (\temp~5_combout\ & ((\S3~input_o\ & ((\AC[15]~input_o\) # (\DR[15]~input_o\))) # (!\S3~input_o\ & (\AC[15]~input_o\ & \DR[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datab => \temp~5_combout\,
	datac => \AC[15]~input_o\,
	datad => \DR[15]~input_o\,
	combout => \temp~67_combout\);

-- Location: LCCOMB_X27_Y40_N12
\temp~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~68_combout\ = (\S3~input_o\ & (\S5~input_o\ & (!\S4~input_o\ & \ld~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datab => \S5~input_o\,
	datac => \S4~input_o\,
	datad => \ld~input_o\,
	combout => \temp~68_combout\);

-- Location: LCCOMB_X27_Y40_N30
\temp~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~69_combout\ = (\temp~66_combout\) # ((\temp~67_combout\) # ((\AC[14]~input_o\ & \temp~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[14]~input_o\,
	datab => \temp~66_combout\,
	datac => \temp~67_combout\,
	datad => \temp~68_combout\,
	combout => \temp~69_combout\);

-- Location: IOIBUF_X52_Y16_N8
\inp[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\inp[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\inp[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\inp[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\inp[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(4),
	o => \inp[4]~input_o\);

-- Location: IOIBUF_X52_Y9_N1
\inp[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(5),
	o => \inp[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\inp[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(6),
	o => \inp[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\inp[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(7),
	o => \inp[7]~input_o\);

-- Location: IOIBUF_X52_Y10_N8
\ALU_Select[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Select(0),
	o => \ALU_Select[0]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\ALU_Select[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Select(1),
	o => \ALU_Select[1]~input_o\);

-- Location: IOIBUF_X7_Y41_N8
\ALU_Select[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Select(2),
	o => \ALU_Select[2]~input_o\);

ww_alu_sonuc(0) <= \alu_sonuc[0]~output_o\;

ww_alu_sonuc(1) <= \alu_sonuc[1]~output_o\;

ww_alu_sonuc(2) <= \alu_sonuc[2]~output_o\;

ww_alu_sonuc(3) <= \alu_sonuc[3]~output_o\;

ww_alu_sonuc(4) <= \alu_sonuc[4]~output_o\;

ww_alu_sonuc(5) <= \alu_sonuc[5]~output_o\;

ww_alu_sonuc(6) <= \alu_sonuc[6]~output_o\;

ww_alu_sonuc(7) <= \alu_sonuc[7]~output_o\;

ww_alu_sonuc(8) <= \alu_sonuc[8]~output_o\;

ww_alu_sonuc(9) <= \alu_sonuc[9]~output_o\;

ww_alu_sonuc(10) <= \alu_sonuc[10]~output_o\;

ww_alu_sonuc(11) <= \alu_sonuc[11]~output_o\;

ww_alu_sonuc(12) <= \alu_sonuc[12]~output_o\;

ww_alu_sonuc(13) <= \alu_sonuc[13]~output_o\;

ww_alu_sonuc(14) <= \alu_sonuc[14]~output_o\;

ww_alu_sonuc(15) <= \alu_sonuc[15]~output_o\;

ww_ALU_out(0) <= \ALU_out[0]~output_o\;

ww_ALU_out(1) <= \ALU_out[1]~output_o\;

ww_ALU_out(2) <= \ALU_out[2]~output_o\;

ww_ALU_out(3) <= \ALU_out[3]~output_o\;

ww_ALU_out(4) <= \ALU_out[4]~output_o\;

ww_ALU_out(5) <= \ALU_out[5]~output_o\;

ww_ALU_out(6) <= \ALU_out[6]~output_o\;

ww_ALU_out(7) <= \ALU_out[7]~output_o\;
END structure;


