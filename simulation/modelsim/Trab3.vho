-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/03/2023 10:49:56"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	divisor IS
    PORT (
	DD : IN std_logic_vector(3 DOWNTO 0);
	DS : IN std_logic_vector(3 DOWNTO 0);
	Start : IN std_logic;
	Rst : IN std_logic;
	Mclk : IN std_logic;
	Hex0 : BUFFER std_logic_vector(7 DOWNTO 0);
	Hex1 : BUFFER std_logic_vector(7 DOWNTO 0);
	Hex4 : BUFFER std_logic_vector(7 DOWNTO 0);
	Hex5 : BUFFER std_logic_vector(7 DOWNTO 0);
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	R : BUFFER std_logic_vector(3 DOWNTO 0);
	Rdy : BUFFER std_logic
	);
END divisor;

-- Design Ports Information
-- Hex0[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[4]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[7]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex5[7]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rdy	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DD[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DD[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DD[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DD[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS[2]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF divisor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Start : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Mclk : std_logic;
SIGNAL ww_Hex0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Hex1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Hex4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Hex5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Rdy : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Hex0[0]~output_o\ : std_logic;
SIGNAL \Hex0[1]~output_o\ : std_logic;
SIGNAL \Hex0[2]~output_o\ : std_logic;
SIGNAL \Hex0[3]~output_o\ : std_logic;
SIGNAL \Hex0[4]~output_o\ : std_logic;
SIGNAL \Hex0[5]~output_o\ : std_logic;
SIGNAL \Hex0[6]~output_o\ : std_logic;
SIGNAL \Hex0[7]~output_o\ : std_logic;
SIGNAL \Hex1[0]~output_o\ : std_logic;
SIGNAL \Hex1[1]~output_o\ : std_logic;
SIGNAL \Hex1[2]~output_o\ : std_logic;
SIGNAL \Hex1[3]~output_o\ : std_logic;
SIGNAL \Hex1[4]~output_o\ : std_logic;
SIGNAL \Hex1[5]~output_o\ : std_logic;
SIGNAL \Hex1[6]~output_o\ : std_logic;
SIGNAL \Hex1[7]~output_o\ : std_logic;
SIGNAL \Hex4[0]~output_o\ : std_logic;
SIGNAL \Hex4[1]~output_o\ : std_logic;
SIGNAL \Hex4[2]~output_o\ : std_logic;
SIGNAL \Hex4[3]~output_o\ : std_logic;
SIGNAL \Hex4[4]~output_o\ : std_logic;
SIGNAL \Hex4[5]~output_o\ : std_logic;
SIGNAL \Hex4[6]~output_o\ : std_logic;
SIGNAL \Hex4[7]~output_o\ : std_logic;
SIGNAL \Hex5[0]~output_o\ : std_logic;
SIGNAL \Hex5[1]~output_o\ : std_logic;
SIGNAL \Hex5[2]~output_o\ : std_logic;
SIGNAL \Hex5[3]~output_o\ : std_logic;
SIGNAL \Hex5[4]~output_o\ : std_logic;
SIGNAL \Hex5[5]~output_o\ : std_logic;
SIGNAL \Hex5[6]~output_o\ : std_logic;
SIGNAL \Hex5[7]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \Rdy~output_o\ : std_logic;
SIGNAL \Mclk~input_o\ : std_logic;
SIGNAL \Mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \asm|mux|Y~2_combout\ : std_logic;
SIGNAL \DS[3]~input_o\ : std_logic;
SIGNAL \data|r2|ff3|Q~0_combout\ : std_logic;
SIGNAL \asm|R~combout\ : std_logic;
SIGNAL \data|r2|ff3|Q~q\ : std_logic;
SIGNAL \DD[3]~input_o\ : std_logic;
SIGNAL \asm|RDY~1_combout\ : std_logic;
SIGNAL \data|sub|add|fa4|S~0_combout\ : std_logic;
SIGNAL \DS[2]~input_o\ : std_logic;
SIGNAL \data|r2|ff2|Q~0_combout\ : std_logic;
SIGNAL \data|r2|ff2|Q~q\ : std_logic;
SIGNAL \DD[2]~input_o\ : std_logic;
SIGNAL \data|sub|add|fa3|S~0_combout\ : std_logic;
SIGNAL \DS[0]~input_o\ : std_logic;
SIGNAL \data|r2|ff0|Q~0_combout\ : std_logic;
SIGNAL \data|r2|ff0|Q~q\ : std_logic;
SIGNAL \DS[1]~input_o\ : std_logic;
SIGNAL \data|r2|ff1|Q~0_combout\ : std_logic;
SIGNAL \data|r2|ff1|Q~q\ : std_logic;
SIGNAL \DD[1]~input_o\ : std_logic;
SIGNAL \DD[0]~input_o\ : std_logic;
SIGNAL \data|umux|Y[0]~3_combout\ : std_logic;
SIGNAL \asm|EDD~0_combout\ : std_logic;
SIGNAL \data|r1|ff0|Q~q\ : std_logic;
SIGNAL \data|sub|add|fa2|S~0_combout\ : std_logic;
SIGNAL \data|umux|Y[1]~5_combout\ : std_logic;
SIGNAL \data|r1|ff1|Q~q\ : std_logic;
SIGNAL \data|sub|add|fa2|Co~0_combout\ : std_logic;
SIGNAL \data|umux|Y[2]~4_combout\ : std_logic;
SIGNAL \data|r1|ff2|Q~q\ : std_logic;
SIGNAL \data|sub|add|fa3|Co~0_combout\ : std_logic;
SIGNAL \data|umux|Y[3]~2_combout\ : std_logic;
SIGNAL \data|r1|ff3|Q~q\ : std_logic;
SIGNAL \asm|mux|Y~1_combout\ : std_logic;
SIGNAL \asm|mux|Y~3_combout\ : std_logic;
SIGNAL \asm|reg|ff0|Q~q\ : std_logic;
SIGNAL \asm|mux|Y~0_combout\ : std_logic;
SIGNAL \asm|reg|ff1|Q~q\ : std_logic;
SIGNAL \data|hex|HEX0[0]~0_combout\ : std_logic;
SIGNAL \data|hex|HEX0[0]~1_combout\ : std_logic;
SIGNAL \data|hex|Ub|dec[1]~1_combout\ : std_logic;
SIGNAL \data|hex|Ub|dec[2]~0_combout\ : std_logic;
SIGNAL \data|hex|HEX0[1]~2_combout\ : std_logic;
SIGNAL \data|hex|HEX0[2]~3_combout\ : std_logic;
SIGNAL \data|hex|UR0|Ndout[3]~0_combout\ : std_logic;
SIGNAL \data|hex|HEX0[3]~4_combout\ : std_logic;
SIGNAL \data|hex|HEX0[4]~5_combout\ : std_logic;
SIGNAL \data|hex|HEX0[5]~6_combout\ : std_logic;
SIGNAL \data|hex|HEX0[5]~7_combout\ : std_logic;
SIGNAL \data|hex|HEX0[6]~8_combout\ : std_logic;
SIGNAL \data|hex|HEX0[6]~9_combout\ : std_logic;
SIGNAL \data|hex|HEX1[0]~0_combout\ : std_logic;
SIGNAL \data|counter|mux|Y~4_combout\ : std_logic;
SIGNAL \data|counter|reg|ff0|Q~q\ : std_logic;
SIGNAL \data|counter|mux|Y~3_combout\ : std_logic;
SIGNAL \data|counter|reg|ff1|Q~q\ : std_logic;
SIGNAL \data|counter|ad|fa2|Co~0_combout\ : std_logic;
SIGNAL \data|counter|mux|Y~5_combout\ : std_logic;
SIGNAL \data|counter|reg|ff2|Q~q\ : std_logic;
SIGNAL \data|counter|mux|Y~2_combout\ : std_logic;
SIGNAL \data|counter|reg|ff3|Q~q\ : std_logic;
SIGNAL \data|hex|HEX4[0]~0_combout\ : std_logic;
SIGNAL \data|hex|HEX4[0]~1_combout\ : std_logic;
SIGNAL \data|hex|Ua|dec[2]~0_combout\ : std_logic;
SIGNAL \data|hex|Ua|dec[1]~1_combout\ : std_logic;
SIGNAL \data|hex|HEX4[1]~2_combout\ : std_logic;
SIGNAL \data|hex|HEX4[2]~3_combout\ : std_logic;
SIGNAL \data|hex|UQ0|Ndout[3]~0_combout\ : std_logic;
SIGNAL \data|hex|HEX4[3]~4_combout\ : std_logic;
SIGNAL \data|hex|HEX4[4]~5_combout\ : std_logic;
SIGNAL \data|hex|HEX4[5]~6_combout\ : std_logic;
SIGNAL \data|hex|HEX4[5]~7_combout\ : std_logic;
SIGNAL \data|hex|HEX4[6]~8_combout\ : std_logic;
SIGNAL \data|hex|HEX4[6]~9_combout\ : std_logic;
SIGNAL \data|hex|HEX5[0]~0_combout\ : std_logic;
SIGNAL \asm|RDY~0_combout\ : std_logic;
SIGNAL \data|counter|reg|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \data|counter|reg|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \data|counter|reg|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \data|counter|reg|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \data|r1|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \data|r1|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \data|r1|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \data|r1|ff3|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DD <= DD;
ww_DS <= DS;
ww_Start <= Start;
ww_Rst <= Rst;
ww_Mclk <= Mclk;
Hex0 <= ww_Hex0;
Hex1 <= ww_Hex1;
Hex4 <= ww_Hex4;
Hex5 <= ww_Hex5;
Q <= ww_Q;
R <= ww_R;
Rdy <= ww_Rdy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mclk~input_o\);
\data|counter|reg|ff2|ALT_INV_Q~q\ <= NOT \data|counter|reg|ff2|Q~q\;
\data|counter|reg|ff0|ALT_INV_Q~q\ <= NOT \data|counter|reg|ff0|Q~q\;
\data|counter|reg|ff1|ALT_INV_Q~q\ <= NOT \data|counter|reg|ff1|Q~q\;
\data|counter|reg|ff3|ALT_INV_Q~q\ <= NOT \data|counter|reg|ff3|Q~q\;
\data|r1|ff2|ALT_INV_Q~q\ <= NOT \data|r1|ff2|Q~q\;
\data|r1|ff0|ALT_INV_Q~q\ <= NOT \data|r1|ff0|Q~q\;
\data|r1|ff1|ALT_INV_Q~q\ <= NOT \data|r1|ff1|Q~q\;
\data|r1|ff3|ALT_INV_Q~q\ <= NOT \data|r1|ff3|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X20_Y0_N16
\Hex0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX0[0]~1_combout\,
	devoe => ww_devoe,
	o => \Hex0[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Hex0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX0[1]~2_combout\,
	devoe => ww_devoe,
	o => \Hex0[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Hex0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX0[2]~3_combout\,
	devoe => ww_devoe,
	o => \Hex0[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Hex0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX0[3]~4_combout\,
	devoe => ww_devoe,
	o => \Hex0[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Hex0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX0[4]~5_combout\,
	devoe => ww_devoe,
	o => \Hex0[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\Hex0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX0[5]~7_combout\,
	devoe => ww_devoe,
	o => \Hex0[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Hex0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX0[6]~9_combout\,
	devoe => ww_devoe,
	o => \Hex0[6]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\Hex0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex0[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\Hex1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\Hex1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asm|reg|ff1|Q~q\,
	devoe => ww_devoe,
	o => \Hex1[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\Hex1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asm|reg|ff1|Q~q\,
	devoe => ww_devoe,
	o => \Hex1[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Hex1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Hex1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\Hex1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX1[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[5]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\Hex1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex1[6]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\Hex1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex1[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\Hex4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX4[0]~1_combout\,
	devoe => ww_devoe,
	o => \Hex4[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\Hex4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX4[1]~2_combout\,
	devoe => ww_devoe,
	o => \Hex4[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\Hex4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX4[2]~3_combout\,
	devoe => ww_devoe,
	o => \Hex4[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\Hex4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX4[3]~4_combout\,
	devoe => ww_devoe,
	o => \Hex4[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\Hex4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX4[4]~5_combout\,
	devoe => ww_devoe,
	o => \Hex4[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\Hex4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX4[5]~7_combout\,
	devoe => ww_devoe,
	o => \Hex4[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\Hex4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX4[6]~9_combout\,
	devoe => ww_devoe,
	o => \Hex4[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\Hex4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex4[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Hex5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX5[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex5[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\Hex5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asm|reg|ff1|Q~q\,
	devoe => ww_devoe,
	o => \Hex5[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\Hex5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asm|reg|ff1|Q~q\,
	devoe => ww_devoe,
	o => \Hex5[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Hex5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX5[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex5[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Hex5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX5[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex5[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\Hex5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|hex|HEX5[0]~0_combout\,
	devoe => ww_devoe,
	o => \Hex5[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Hex5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex5[6]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\Hex5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex5[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|counter|reg|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|counter|reg|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|counter|reg|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|counter|reg|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|r1|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|r1|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|r1|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|r1|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\Rdy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asm|RDY~0_combout\,
	devoe => ww_devoe,
	o => \Rdy~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\Mclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mclk,
	o => \Mclk~input_o\);

-- Location: CLKCTRL_G3
\Mclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mclk~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N1
\Rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\Start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X20_Y4_N10
\asm|mux|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|mux|Y~2_combout\ = (\Rst~input_o\ & (!\asm|reg|ff0|Q~q\)) # (!\Rst~input_o\ & (\asm|reg|ff0|Q~q\ & \Start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \asm|reg|ff0|Q~q\,
	datad => \Start~input_o\,
	combout => \asm|mux|Y~2_combout\);

-- Location: IOIBUF_X16_Y0_N22
\DS[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DS(3),
	o => \DS[3]~input_o\);

-- Location: LCCOMB_X20_Y4_N16
\data|r2|ff3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|r2|ff3|Q~0_combout\ = !\DS[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS[3]~input_o\,
	combout => \data|r2|ff3|Q~0_combout\);

-- Location: LCCOMB_X20_Y4_N14
\asm|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|R~combout\ = (\asm|reg|ff0|Q~q\ & \asm|reg|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asm|reg|ff0|Q~q\,
	datad => \asm|reg|ff1|Q~q\,
	combout => \asm|R~combout\);

-- Location: FF_X20_Y4_N17
\data|r2|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|r2|ff3|Q~0_combout\,
	ena => \asm|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r2|ff3|Q~q\);

-- Location: IOIBUF_X18_Y0_N22
\DD[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DD(3),
	o => \DD[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N0
\asm|RDY~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|RDY~1_combout\ = (!\asm|reg|ff0|Q~q\ & !\asm|reg|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff0|Q~q\,
	datad => \asm|reg|ff1|Q~q\,
	combout => \asm|RDY~1_combout\);

-- Location: LCCOMB_X19_Y4_N14
\data|sub|add|fa4|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|sub|add|fa4|S~0_combout\ = \data|r1|ff3|Q~q\ $ (\data|r2|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|r1|ff3|Q~q\,
	datad => \data|r2|ff3|Q~q\,
	combout => \data|sub|add|fa4|S~0_combout\);

-- Location: IOIBUF_X20_Y0_N29
\DS[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DS(2),
	o => \DS[2]~input_o\);

-- Location: LCCOMB_X20_Y4_N24
\data|r2|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|r2|ff2|Q~0_combout\ = !\DS[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS[2]~input_o\,
	combout => \data|r2|ff2|Q~0_combout\);

-- Location: FF_X20_Y4_N25
\data|r2|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|r2|ff2|Q~0_combout\,
	ena => \asm|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r2|ff2|Q~q\);

-- Location: IOIBUF_X16_Y0_N1
\DD[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DD(2),
	o => \DD[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N2
\data|sub|add|fa3|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|sub|add|fa3|S~0_combout\ = \data|r1|ff2|Q~q\ $ (\data|r2|ff2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data|r1|ff2|Q~q\,
	datad => \data|r2|ff2|Q~q\,
	combout => \data|sub|add|fa3|S~0_combout\);

-- Location: IOIBUF_X20_Y0_N22
\DS[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DS(0),
	o => \DS[0]~input_o\);

-- Location: LCCOMB_X20_Y4_N26
\data|r2|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|r2|ff0|Q~0_combout\ = !\DS[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS[0]~input_o\,
	combout => \data|r2|ff0|Q~0_combout\);

-- Location: FF_X20_Y4_N27
\data|r2|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|r2|ff0|Q~0_combout\,
	ena => \asm|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r2|ff0|Q~q\);

-- Location: IOIBUF_X24_Y0_N8
\DS[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DS(1),
	o => \DS[1]~input_o\);

-- Location: LCCOMB_X24_Y4_N4
\data|r2|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|r2|ff1|Q~0_combout\ = !\DS[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS[1]~input_o\,
	combout => \data|r2|ff1|Q~0_combout\);

-- Location: FF_X20_Y4_N9
\data|r2|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	asdata => \data|r2|ff1|Q~0_combout\,
	sload => VCC,
	ena => \asm|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r2|ff1|Q~q\);

-- Location: IOIBUF_X18_Y0_N29
\DD[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DD(1),
	o => \DD[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\DD[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DD(0),
	o => \DD[0]~input_o\);

-- Location: LCCOMB_X19_Y4_N24
\data|umux|Y[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|umux|Y[0]~3_combout\ = (\asm|RDY~1_combout\ & (\data|r2|ff0|Q~q\ $ (((!\data|r1|ff0|Q~q\))))) # (!\asm|RDY~1_combout\ & (((!\DD[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r2|ff0|Q~q\,
	datab => \DD[0]~input_o\,
	datac => \data|r1|ff0|Q~q\,
	datad => \asm|RDY~1_combout\,
	combout => \data|umux|Y[0]~3_combout\);

-- Location: LCCOMB_X19_Y4_N18
\asm|EDD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|EDD~0_combout\ = \asm|reg|ff0|Q~q\ $ (!\asm|reg|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff0|Q~q\,
	datad => \asm|reg|ff1|Q~q\,
	combout => \asm|EDD~0_combout\);

-- Location: FF_X19_Y4_N25
\data|r1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|umux|Y[0]~3_combout\,
	ena => \asm|EDD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r1|ff0|Q~q\);

-- Location: LCCOMB_X19_Y4_N20
\data|sub|add|fa2|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|sub|add|fa2|S~0_combout\ = \data|r1|ff1|Q~q\ $ (\data|r2|ff1|Q~q\ $ (((\data|r2|ff0|Q~q\) # (!\data|r1|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r2|ff0|Q~q\,
	datab => \data|r1|ff1|Q~q\,
	datac => \data|r2|ff1|Q~q\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|sub|add|fa2|S~0_combout\);

-- Location: LCCOMB_X19_Y4_N6
\data|umux|Y[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|umux|Y[1]~5_combout\ = (\asm|reg|ff0|Q~q\ & (((!\DD[1]~input_o\)))) # (!\asm|reg|ff0|Q~q\ & ((\asm|reg|ff1|Q~q\ & (!\DD[1]~input_o\)) # (!\asm|reg|ff1|Q~q\ & ((\data|sub|add|fa2|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff0|Q~q\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \DD[1]~input_o\,
	datad => \data|sub|add|fa2|S~0_combout\,
	combout => \data|umux|Y[1]~5_combout\);

-- Location: FF_X19_Y4_N7
\data|r1|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|umux|Y[1]~5_combout\,
	ena => \asm|EDD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r1|ff1|Q~q\);

-- Location: LCCOMB_X20_Y4_N0
\data|sub|add|fa2|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|sub|add|fa2|Co~0_combout\ = (\data|r2|ff1|Q~q\ & ((\data|r2|ff0|Q~q\) # ((!\data|r1|ff0|Q~q\) # (!\data|r1|ff1|Q~q\)))) # (!\data|r2|ff1|Q~q\ & (!\data|r1|ff1|Q~q\ & ((\data|r2|ff0|Q~q\) # (!\data|r1|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r2|ff0|Q~q\,
	datab => \data|r2|ff1|Q~q\,
	datac => \data|r1|ff1|Q~q\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|sub|add|fa2|Co~0_combout\);

-- Location: LCCOMB_X19_Y4_N22
\data|umux|Y[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|umux|Y[2]~4_combout\ = (\asm|RDY~1_combout\ & ((\data|sub|add|fa3|S~0_combout\ $ (\data|sub|add|fa2|Co~0_combout\)))) # (!\asm|RDY~1_combout\ & (!\DD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DD[2]~input_o\,
	datab => \data|sub|add|fa3|S~0_combout\,
	datac => \data|sub|add|fa2|Co~0_combout\,
	datad => \asm|RDY~1_combout\,
	combout => \data|umux|Y[2]~4_combout\);

-- Location: FF_X19_Y4_N23
\data|r1|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|umux|Y[2]~4_combout\,
	ena => \asm|EDD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r1|ff2|Q~q\);

-- Location: LCCOMB_X20_Y4_N6
\data|sub|add|fa3|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|sub|add|fa3|Co~0_combout\ = (\data|r2|ff2|Q~q\ & ((\data|sub|add|fa2|Co~0_combout\) # (!\data|r1|ff2|Q~q\))) # (!\data|r2|ff2|Q~q\ & (!\data|r1|ff2|Q~q\ & \data|sub|add|fa2|Co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|r2|ff2|Q~q\,
	datac => \data|r1|ff2|Q~q\,
	datad => \data|sub|add|fa2|Co~0_combout\,
	combout => \data|sub|add|fa3|Co~0_combout\);

-- Location: LCCOMB_X19_Y4_N16
\data|umux|Y[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|umux|Y[3]~2_combout\ = (\asm|RDY~1_combout\ & ((\data|sub|add|fa4|S~0_combout\ $ (\data|sub|add|fa3|Co~0_combout\)))) # (!\asm|RDY~1_combout\ & (!\DD[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DD[3]~input_o\,
	datab => \asm|RDY~1_combout\,
	datac => \data|sub|add|fa4|S~0_combout\,
	datad => \data|sub|add|fa3|Co~0_combout\,
	combout => \data|umux|Y[3]~2_combout\);

-- Location: FF_X19_Y4_N17
\data|r1|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|umux|Y[3]~2_combout\,
	ena => \asm|EDD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|r1|ff3|Q~q\);

-- Location: LCCOMB_X20_Y4_N12
\asm|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|mux|Y~1_combout\ = (\data|r2|ff3|Q~q\ & ((\data|sub|add|fa3|Co~0_combout\) # (!\data|r1|ff3|Q~q\))) # (!\data|r2|ff3|Q~q\ & (!\data|r1|ff3|Q~q\ & \data|sub|add|fa3|Co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|r2|ff3|Q~q\,
	datac => \data|r1|ff3|Q~q\,
	datad => \data|sub|add|fa3|Co~0_combout\,
	combout => \asm|mux|Y~1_combout\);

-- Location: LCCOMB_X20_Y4_N4
\asm|mux|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|mux|Y~3_combout\ = (\asm|mux|Y~2_combout\ & (((!\asm|reg|ff0|Q~q\)) # (!\asm|reg|ff1|Q~q\))) # (!\asm|mux|Y~2_combout\ & ((\asm|reg|ff0|Q~q\) # ((\asm|reg|ff1|Q~q\ & !\asm|mux|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|mux|Y~2_combout\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \asm|reg|ff0|Q~q\,
	datad => \asm|mux|Y~1_combout\,
	combout => \asm|mux|Y~3_combout\);

-- Location: FF_X20_Y4_N5
\asm|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \asm|mux|Y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \asm|reg|ff0|Q~q\);

-- Location: LCCOMB_X20_Y4_N28
\asm|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|mux|Y~0_combout\ = (\Rst~input_o\) # ((\asm|reg|ff0|Q~q\ & ((\asm|reg|ff1|Q~q\) # (!\Start~input_o\))) # (!\asm|reg|ff0|Q~q\ & (!\asm|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \asm|reg|ff0|Q~q\,
	datac => \asm|reg|ff1|Q~q\,
	datad => \Start~input_o\,
	combout => \asm|mux|Y~0_combout\);

-- Location: FF_X20_Y4_N29
\asm|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \asm|mux|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \asm|reg|ff1|Q~q\);

-- Location: LCCOMB_X20_Y4_N30
\data|hex|HEX0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[0]~0_combout\ = (\data|r1|ff2|Q~q\ & (!\data|r1|ff0|Q~q\ & (\data|r1|ff1|Q~q\ $ (!\data|r1|ff3|Q~q\)))) # (!\data|r1|ff2|Q~q\ & (\data|r1|ff0|Q~q\ & ((\data|r1|ff3|Q~q\) # (!\data|r1|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r1|ff1|Q~q\,
	datab => \data|r1|ff2|Q~q\,
	datac => \data|r1|ff3|Q~q\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|hex|HEX0[0]~0_combout\);

-- Location: LCCOMB_X21_Y4_N12
\data|hex|HEX0[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[0]~1_combout\ = (\asm|reg|ff1|Q~q\) # (\data|hex|HEX0[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asm|reg|ff1|Q~q\,
	datad => \data|hex|HEX0[0]~0_combout\,
	combout => \data|hex|HEX0[0]~1_combout\);

-- Location: LCCOMB_X19_Y4_N12
\data|hex|Ub|dec[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|Ub|dec[1]~1_combout\ = (\data|r1|ff1|Q~q\ & (!\data|r1|ff2|Q~q\ & !\data|r1|ff3|Q~q\)) # (!\data|r1|ff1|Q~q\ & ((\data|r1|ff3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r1|ff2|Q~q\,
	datac => \data|r1|ff1|Q~q\,
	datad => \data|r1|ff3|Q~q\,
	combout => \data|hex|Ub|dec[1]~1_combout\);

-- Location: LCCOMB_X20_Y4_N8
\data|hex|Ub|dec[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|Ub|dec[2]~0_combout\ = (!\data|r1|ff2|Q~q\ & ((\data|r1|ff3|Q~q\) # (!\data|r1|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r1|ff3|Q~q\,
	datab => \data|r1|ff2|Q~q\,
	datad => \data|r1|ff1|Q~q\,
	combout => \data|hex|Ub|dec[2]~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\data|hex|HEX0[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[1]~2_combout\ = (\asm|reg|ff1|Q~q\) # ((\data|hex|Ub|dec[2]~0_combout\ & (\data|hex|Ub|dec[1]~1_combout\ $ (!\data|r1|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|hex|Ub|dec[1]~1_combout\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \data|hex|Ub|dec[2]~0_combout\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|hex|HEX0[1]~2_combout\);

-- Location: LCCOMB_X19_Y4_N8
\data|hex|HEX0[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[2]~3_combout\ = (\asm|reg|ff1|Q~q\) # ((\data|hex|Ub|dec[1]~1_combout\ & (!\data|hex|Ub|dec[2]~0_combout\ & \data|r1|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|hex|Ub|dec[1]~1_combout\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \data|hex|Ub|dec[2]~0_combout\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|hex|HEX0[2]~3_combout\);

-- Location: LCCOMB_X20_Y4_N2
\data|hex|UR0|Ndout[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|UR0|Ndout[3]~0_combout\ = (\data|r1|ff0|Q~q\ & ((\data|r1|ff2|Q~q\) # (\data|r1|ff1|Q~q\ $ (\data|r1|ff3|Q~q\)))) # (!\data|r1|ff0|Q~q\ & (\data|r1|ff2|Q~q\ $ (((\data|r1|ff1|Q~q\) # (!\data|r1|ff3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r1|ff1|Q~q\,
	datab => \data|r1|ff2|Q~q\,
	datac => \data|r1|ff3|Q~q\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|hex|UR0|Ndout[3]~0_combout\);

-- Location: LCCOMB_X21_Y4_N10
\data|hex|HEX0[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[3]~4_combout\ = (\asm|reg|ff1|Q~q\) # (!\data|hex|UR0|Ndout[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asm|reg|ff1|Q~q\,
	datad => \data|hex|UR0|Ndout[3]~0_combout\,
	combout => \data|hex|HEX0[3]~4_combout\);

-- Location: LCCOMB_X19_Y4_N30
\data|hex|HEX0[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[4]~5_combout\ = (\asm|reg|ff1|Q~q\) # (((!\data|hex|Ub|dec[1]~1_combout\ & \data|hex|Ub|dec[2]~0_combout\)) # (!\data|r1|ff0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|hex|Ub|dec[1]~1_combout\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \data|hex|Ub|dec[2]~0_combout\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|hex|HEX0[4]~5_combout\);

-- Location: LCCOMB_X20_Y4_N20
\data|hex|HEX0[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[5]~6_combout\ = (\data|r1|ff1|Q~q\ & ((\data|r1|ff2|Q~q\ & (\data|r1|ff3|Q~q\ & !\data|r1|ff0|Q~q\)) # (!\data|r1|ff2|Q~q\ & (!\data|r1|ff3|Q~q\)))) # (!\data|r1|ff1|Q~q\ & ((\data|r1|ff2|Q~q\ & ((\data|r1|ff3|Q~q\) # (!\data|r1|ff0|Q~q\))) 
-- # (!\data|r1|ff2|Q~q\ & (\data|r1|ff3|Q~q\ & !\data|r1|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r1|ff1|Q~q\,
	datab => \data|r1|ff2|Q~q\,
	datac => \data|r1|ff3|Q~q\,
	datad => \data|r1|ff0|Q~q\,
	combout => \data|hex|HEX0[5]~6_combout\);

-- Location: LCCOMB_X21_Y4_N8
\data|hex|HEX0[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[5]~7_combout\ = (\asm|reg|ff1|Q~q\) # (\data|hex|HEX0[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asm|reg|ff1|Q~q\,
	datad => \data|hex|HEX0[5]~6_combout\,
	combout => \data|hex|HEX0[5]~7_combout\);

-- Location: LCCOMB_X19_Y4_N4
\data|hex|HEX0[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[6]~8_combout\ = (\data|r1|ff2|Q~q\ & ((\data|r1|ff1|Q~q\ $ (!\data|r1|ff3|Q~q\)))) # (!\data|r1|ff2|Q~q\ & (!\data|r1|ff0|Q~q\ & (!\data|r1|ff1|Q~q\ & \data|r1|ff3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r1|ff2|Q~q\,
	datab => \data|r1|ff0|Q~q\,
	datac => \data|r1|ff1|Q~q\,
	datad => \data|r1|ff3|Q~q\,
	combout => \data|hex|HEX0[6]~8_combout\);

-- Location: LCCOMB_X21_Y4_N22
\data|hex|HEX0[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX0[6]~9_combout\ = (\asm|reg|ff1|Q~q\) # (\data|hex|HEX0[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asm|reg|ff1|Q~q\,
	datad => \data|hex|HEX0[6]~8_combout\,
	combout => \data|hex|HEX0[6]~9_combout\);

-- Location: LCCOMB_X20_Y4_N18
\data|hex|HEX1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX1[0]~0_combout\ = (\asm|reg|ff1|Q~q\) # ((!\data|r1|ff3|Q~q\ & ((!\data|r1|ff2|Q~q\) # (!\data|r1|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|r1|ff1|Q~q\,
	datab => \data|r1|ff2|Q~q\,
	datac => \data|r1|ff3|Q~q\,
	datad => \asm|reg|ff1|Q~q\,
	combout => \data|hex|HEX1[0]~0_combout\);

-- Location: LCCOMB_X19_Y4_N28
\data|counter|mux|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|counter|mux|Y~4_combout\ = (\asm|reg|ff0|Q~q\ & ((\data|counter|reg|ff0|Q~q\) # (\asm|reg|ff1|Q~q\))) # (!\asm|reg|ff0|Q~q\ & (\data|counter|reg|ff0|Q~q\ $ (!\asm|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff0|Q~q\,
	datac => \data|counter|reg|ff0|Q~q\,
	datad => \asm|reg|ff1|Q~q\,
	combout => \data|counter|mux|Y~4_combout\);

-- Location: FF_X19_Y4_N29
\data|counter|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|counter|mux|Y~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|counter|reg|ff0|Q~q\);

-- Location: LCCOMB_X19_Y4_N26
\data|counter|mux|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|counter|mux|Y~3_combout\ = (\asm|reg|ff0|Q~q\ & ((\asm|reg|ff1|Q~q\) # ((\data|counter|reg|ff1|Q~q\)))) # (!\asm|reg|ff0|Q~q\ & (\data|counter|reg|ff1|Q~q\ $ (((!\asm|reg|ff1|Q~q\ & !\data|counter|reg|ff0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff0|Q~q\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff1|Q~q\,
	datad => \data|counter|reg|ff0|Q~q\,
	combout => \data|counter|mux|Y~3_combout\);

-- Location: FF_X19_Y4_N27
\data|counter|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|counter|mux|Y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|counter|reg|ff1|Q~q\);

-- Location: LCCOMB_X23_Y4_N6
\data|counter|ad|fa2|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|counter|ad|fa2|Co~0_combout\ = (!\data|counter|reg|ff0|Q~q\ & (!\data|counter|reg|ff1|Q~q\ & (!\asm|reg|ff0|Q~q\ & !\asm|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \asm|reg|ff0|Q~q\,
	datad => \asm|reg|ff1|Q~q\,
	combout => \data|counter|ad|fa2|Co~0_combout\);

-- Location: LCCOMB_X23_Y4_N14
\data|counter|mux|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|counter|mux|Y~5_combout\ = (\asm|reg|ff1|Q~q\ & ((\asm|reg|ff0|Q~q\) # (\data|counter|reg|ff2|Q~q\ $ (\data|counter|ad|fa2|Co~0_combout\)))) # (!\asm|reg|ff1|Q~q\ & ((\data|counter|reg|ff2|Q~q\ $ (\data|counter|ad|fa2|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff1|Q~q\,
	datab => \asm|reg|ff0|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|ad|fa2|Co~0_combout\,
	combout => \data|counter|mux|Y~5_combout\);

-- Location: FF_X23_Y4_N15
\data|counter|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|counter|mux|Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|counter|reg|ff2|Q~q\);

-- Location: LCCOMB_X23_Y4_N28
\data|counter|mux|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|counter|mux|Y~2_combout\ = (\asm|R~combout\) # (\data|counter|reg|ff3|Q~q\ $ (((!\data|counter|reg|ff2|Q~q\ & \data|counter|ad|fa2|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|R~combout\,
	datab => \data|counter|reg|ff2|Q~q\,
	datac => \data|counter|reg|ff3|Q~q\,
	datad => \data|counter|ad|fa2|Co~0_combout\,
	combout => \data|counter|mux|Y~2_combout\);

-- Location: FF_X23_Y4_N29
\data|counter|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \data|counter|mux|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|counter|reg|ff3|Q~q\);

-- Location: LCCOMB_X23_Y4_N0
\data|hex|HEX4[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[0]~0_combout\ = (\data|counter|reg|ff0|Q~q\ & (!\data|counter|reg|ff2|Q~q\ & ((\data|counter|reg|ff3|Q~q\) # (!\data|counter|reg|ff1|Q~q\)))) # (!\data|counter|reg|ff0|Q~q\ & (\data|counter|reg|ff2|Q~q\ & (\data|counter|reg|ff1|Q~q\ $ 
-- (!\data|counter|reg|ff3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|reg|ff3|Q~q\,
	combout => \data|hex|HEX4[0]~0_combout\);

-- Location: LCCOMB_X21_Y4_N4
\data|hex|HEX4[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[0]~1_combout\ = (\asm|reg|ff1|Q~q\) # (\data|hex|HEX4[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff1|Q~q\,
	datac => \data|hex|HEX4[0]~0_combout\,
	combout => \data|hex|HEX4[0]~1_combout\);

-- Location: LCCOMB_X23_Y4_N22
\data|hex|Ua|dec[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|Ua|dec[2]~0_combout\ = (!\data|counter|reg|ff2|Q~q\ & ((\data|counter|reg|ff3|Q~q\) # (!\data|counter|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|reg|ff3|Q~q\,
	combout => \data|hex|Ua|dec[2]~0_combout\);

-- Location: LCCOMB_X23_Y4_N16
\data|hex|Ua|dec[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|Ua|dec[1]~1_combout\ = (\data|counter|reg|ff1|Q~q\ & (!\data|counter|reg|ff2|Q~q\ & !\data|counter|reg|ff3|Q~q\)) # (!\data|counter|reg|ff1|Q~q\ & ((\data|counter|reg|ff3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|reg|ff3|Q~q\,
	combout => \data|hex|Ua|dec[1]~1_combout\);

-- Location: LCCOMB_X23_Y4_N2
\data|hex|HEX4[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[1]~2_combout\ = (\asm|reg|ff1|Q~q\) # ((\data|hex|Ua|dec[2]~0_combout\ & (\data|counter|reg|ff0|Q~q\ $ (!\data|hex|Ua|dec[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \data|hex|Ua|dec[2]~0_combout\,
	datad => \data|hex|Ua|dec[1]~1_combout\,
	combout => \data|hex|HEX4[1]~2_combout\);

-- Location: LCCOMB_X23_Y4_N8
\data|hex|HEX4[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[2]~3_combout\ = (\asm|reg|ff1|Q~q\) # ((\data|counter|reg|ff0|Q~q\ & (!\data|hex|Ua|dec[2]~0_combout\ & \data|hex|Ua|dec[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \data|hex|Ua|dec[2]~0_combout\,
	datad => \data|hex|Ua|dec[1]~1_combout\,
	combout => \data|hex|HEX4[2]~3_combout\);

-- Location: LCCOMB_X23_Y4_N10
\data|hex|UQ0|Ndout[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|UQ0|Ndout[3]~0_combout\ = (\data|counter|reg|ff0|Q~q\ & ((\data|counter|reg|ff2|Q~q\) # (\data|counter|reg|ff1|Q~q\ $ (\data|counter|reg|ff3|Q~q\)))) # (!\data|counter|reg|ff0|Q~q\ & (\data|counter|reg|ff2|Q~q\ $ (((\data|counter|reg|ff1|Q~q\) # 
-- (!\data|counter|reg|ff3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|reg|ff3|Q~q\,
	combout => \data|hex|UQ0|Ndout[3]~0_combout\);

-- Location: LCCOMB_X23_Y4_N4
\data|hex|HEX4[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[3]~4_combout\ = (\asm|reg|ff1|Q~q\) # (!\data|hex|UQ0|Ndout[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asm|reg|ff1|Q~q\,
	datad => \data|hex|UQ0|Ndout[3]~0_combout\,
	combout => \data|hex|HEX4[3]~4_combout\);

-- Location: LCCOMB_X23_Y4_N18
\data|hex|HEX4[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[4]~5_combout\ = ((\asm|reg|ff1|Q~q\) # ((\data|hex|Ua|dec[2]~0_combout\ & !\data|hex|Ua|dec[1]~1_combout\))) # (!\data|counter|reg|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \asm|reg|ff1|Q~q\,
	datac => \data|hex|Ua|dec[2]~0_combout\,
	datad => \data|hex|Ua|dec[1]~1_combout\,
	combout => \data|hex|HEX4[4]~5_combout\);

-- Location: LCCOMB_X23_Y4_N24
\data|hex|HEX4[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[5]~6_combout\ = (\data|counter|reg|ff1|Q~q\ & ((\data|counter|reg|ff2|Q~q\ & (!\data|counter|reg|ff0|Q~q\ & \data|counter|reg|ff3|Q~q\)) # (!\data|counter|reg|ff2|Q~q\ & ((!\data|counter|reg|ff3|Q~q\))))) # (!\data|counter|reg|ff1|Q~q\ & 
-- ((\data|counter|reg|ff0|Q~q\ & (\data|counter|reg|ff2|Q~q\ & \data|counter|reg|ff3|Q~q\)) # (!\data|counter|reg|ff0|Q~q\ & ((\data|counter|reg|ff2|Q~q\) # (\data|counter|reg|ff3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|reg|ff3|Q~q\,
	combout => \data|hex|HEX4[5]~6_combout\);

-- Location: LCCOMB_X23_Y4_N26
\data|hex|HEX4[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[5]~7_combout\ = (\asm|reg|ff1|Q~q\) # (\data|hex|HEX4[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asm|reg|ff1|Q~q\,
	datad => \data|hex|HEX4[5]~6_combout\,
	combout => \data|hex|HEX4[5]~7_combout\);

-- Location: LCCOMB_X23_Y4_N20
\data|hex|HEX4[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[6]~8_combout\ = (\data|counter|reg|ff2|Q~q\ & ((\data|counter|reg|ff1|Q~q\ $ (!\data|counter|reg|ff3|Q~q\)))) # (!\data|counter|reg|ff2|Q~q\ & (!\data|counter|reg|ff0|Q~q\ & (!\data|counter|reg|ff1|Q~q\ & \data|counter|reg|ff3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|counter|reg|ff0|Q~q\,
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|reg|ff3|Q~q\,
	combout => \data|hex|HEX4[6]~8_combout\);

-- Location: LCCOMB_X23_Y4_N30
\data|hex|HEX4[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX4[6]~9_combout\ = (\asm|reg|ff1|Q~q\) # (\data|hex|HEX4[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asm|reg|ff1|Q~q\,
	datad => \data|hex|HEX4[6]~8_combout\,
	combout => \data|hex|HEX4[6]~9_combout\);

-- Location: LCCOMB_X23_Y4_N12
\data|hex|HEX5[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data|hex|HEX5[0]~0_combout\ = (\asm|reg|ff1|Q~q\) # ((!\data|counter|reg|ff3|Q~q\ & ((!\data|counter|reg|ff2|Q~q\) # (!\data|counter|reg|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asm|reg|ff1|Q~q\,
	datab => \data|counter|reg|ff1|Q~q\,
	datac => \data|counter|reg|ff2|Q~q\,
	datad => \data|counter|reg|ff3|Q~q\,
	combout => \data|hex|HEX5[0]~0_combout\);

-- Location: LCCOMB_X20_Y4_N22
\asm|RDY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \asm|RDY~0_combout\ = (\asm|reg|ff0|Q~q\ & !\asm|reg|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asm|reg|ff0|Q~q\,
	datad => \asm|reg|ff1|Q~q\,
	combout => \asm|RDY~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Hex0(0) <= \Hex0[0]~output_o\;

ww_Hex0(1) <= \Hex0[1]~output_o\;

ww_Hex0(2) <= \Hex0[2]~output_o\;

ww_Hex0(3) <= \Hex0[3]~output_o\;

ww_Hex0(4) <= \Hex0[4]~output_o\;

ww_Hex0(5) <= \Hex0[5]~output_o\;

ww_Hex0(6) <= \Hex0[6]~output_o\;

ww_Hex0(7) <= \Hex0[7]~output_o\;

ww_Hex1(0) <= \Hex1[0]~output_o\;

ww_Hex1(1) <= \Hex1[1]~output_o\;

ww_Hex1(2) <= \Hex1[2]~output_o\;

ww_Hex1(3) <= \Hex1[3]~output_o\;

ww_Hex1(4) <= \Hex1[4]~output_o\;

ww_Hex1(5) <= \Hex1[5]~output_o\;

ww_Hex1(6) <= \Hex1[6]~output_o\;

ww_Hex1(7) <= \Hex1[7]~output_o\;

ww_Hex4(0) <= \Hex4[0]~output_o\;

ww_Hex4(1) <= \Hex4[1]~output_o\;

ww_Hex4(2) <= \Hex4[2]~output_o\;

ww_Hex4(3) <= \Hex4[3]~output_o\;

ww_Hex4(4) <= \Hex4[4]~output_o\;

ww_Hex4(5) <= \Hex4[5]~output_o\;

ww_Hex4(6) <= \Hex4[6]~output_o\;

ww_Hex4(7) <= \Hex4[7]~output_o\;

ww_Hex5(0) <= \Hex5[0]~output_o\;

ww_Hex5(1) <= \Hex5[1]~output_o\;

ww_Hex5(2) <= \Hex5[2]~output_o\;

ww_Hex5(3) <= \Hex5[3]~output_o\;

ww_Hex5(4) <= \Hex5[4]~output_o\;

ww_Hex5(5) <= \Hex5[5]~output_o\;

ww_Hex5(6) <= \Hex5[6]~output_o\;

ww_Hex5(7) <= \Hex5[7]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_Rdy <= \Rdy~output_o\;
END structure;


