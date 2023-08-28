-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "08/28/2023 21:47:52"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	DigitalClock IS
    PORT (
	KEY_0 : IN std_logic;
	KEY_1 : IN std_logic;
	SW_9 : IN std_logic;
	CLK_FPGA : IN std_logic;
	HEX_5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX_1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END DigitalClock;

-- Design Ports Information
-- HEX_5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK_FPGA	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW_9	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY_0	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- KEY_1	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF DigitalClock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY_0 : std_logic;
SIGNAL ww_KEY_1 : std_logic;
SIGNAL ww_SW_9 : std_logic;
SIGNAL ww_CLK_FPGA : std_logic;
SIGNAL ww_HEX_5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \one_hz|one_hz_clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_incrementer|min_clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_incrementer|hour_clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_FPGA~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX_5[0]~output_o\ : std_logic;
SIGNAL \HEX_5[1]~output_o\ : std_logic;
SIGNAL \HEX_5[2]~output_o\ : std_logic;
SIGNAL \HEX_5[3]~output_o\ : std_logic;
SIGNAL \HEX_5[4]~output_o\ : std_logic;
SIGNAL \HEX_5[5]~output_o\ : std_logic;
SIGNAL \HEX_5[6]~output_o\ : std_logic;
SIGNAL \HEX_4[0]~output_o\ : std_logic;
SIGNAL \HEX_4[1]~output_o\ : std_logic;
SIGNAL \HEX_4[2]~output_o\ : std_logic;
SIGNAL \HEX_4[3]~output_o\ : std_logic;
SIGNAL \HEX_4[4]~output_o\ : std_logic;
SIGNAL \HEX_4[5]~output_o\ : std_logic;
SIGNAL \HEX_4[6]~output_o\ : std_logic;
SIGNAL \HEX_3[0]~output_o\ : std_logic;
SIGNAL \HEX_3[1]~output_o\ : std_logic;
SIGNAL \HEX_3[2]~output_o\ : std_logic;
SIGNAL \HEX_3[3]~output_o\ : std_logic;
SIGNAL \HEX_3[4]~output_o\ : std_logic;
SIGNAL \HEX_3[5]~output_o\ : std_logic;
SIGNAL \HEX_3[6]~output_o\ : std_logic;
SIGNAL \HEX_2[0]~output_o\ : std_logic;
SIGNAL \HEX_2[1]~output_o\ : std_logic;
SIGNAL \HEX_2[2]~output_o\ : std_logic;
SIGNAL \HEX_2[3]~output_o\ : std_logic;
SIGNAL \HEX_2[4]~output_o\ : std_logic;
SIGNAL \HEX_2[5]~output_o\ : std_logic;
SIGNAL \HEX_2[6]~output_o\ : std_logic;
SIGNAL \HEX_1[0]~output_o\ : std_logic;
SIGNAL \HEX_1[1]~output_o\ : std_logic;
SIGNAL \HEX_1[2]~output_o\ : std_logic;
SIGNAL \HEX_1[3]~output_o\ : std_logic;
SIGNAL \HEX_1[4]~output_o\ : std_logic;
SIGNAL \HEX_1[5]~output_o\ : std_logic;
SIGNAL \HEX_1[6]~output_o\ : std_logic;
SIGNAL \CLK_FPGA~input_o\ : std_logic;
SIGNAL \CLK_FPGA~inputclkctrl_outclk\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[0]~27_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[0]~28\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[1]~29_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[1]~30\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[2]~31_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[2]~32\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[3]~33_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[3]~34\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[4]~35_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[4]~36\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[5]~37_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[5]~38\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[6]~39_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[6]~40\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[7]~41_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[7]~42\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[8]~43_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[8]~44\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[9]~45_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[9]~46\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[10]~47_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[10]~48\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[11]~49_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[11]~50\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[12]~51_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[12]~52\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[13]~53_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[13]~54\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[14]~55_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[14]~56\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[15]~57_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[15]~58\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[16]~59_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[16]~60\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[17]~61_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[17]~62\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[18]~63_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[18]~64\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[19]~65_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[19]~66\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[20]~67_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[20]~68\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[21]~69_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[21]~70\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[22]~71_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[22]~72\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[23]~73_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[23]~74\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[24]~75_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[24]~76\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[25]~77_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[25]~78\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count[26]~79_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~6_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~0_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~1_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~2_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~4_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~3_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~5_combout\ : std_logic;
SIGNAL \one_hz|LessThan0~7_combout\ : std_logic;
SIGNAL \one_hz|one_hz_clk_out~q\ : std_logic;
SIGNAL \one_hz|one_hz_clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \SW_9~input_o\ : std_logic;
SIGNAL \seconds~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \seconds~5_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \seconds~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \seconds~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \seconds~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \seconds~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \update_count~0_combout\ : std_logic;
SIGNAL \update_count~q\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[0]~27_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[0]~28\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[1]~29_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[1]~30\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[2]~31_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[2]~32\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[3]~33_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[3]~34\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[4]~35_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[4]~36\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[5]~37_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[5]~38\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[6]~39_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[6]~40\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[7]~41_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[7]~42\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[8]~43_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[8]~44\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[9]~45_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[9]~46\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[10]~47_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[10]~48\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[11]~49_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[11]~50\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[12]~51_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[12]~52\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[13]~53_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[13]~54\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[14]~55_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[14]~56\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[15]~57_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[15]~58\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[16]~59_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[16]~60\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[17]~61_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[17]~62\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[18]~63_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[18]~64\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[19]~65_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[19]~66\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[20]~67_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[20]~68\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[21]~69_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[21]~70\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[22]~71_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[22]~72\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[23]~73_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[23]~74\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[24]~75_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[24]~76\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[25]~77_combout\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[25]~78\ : std_logic;
SIGNAL \one_hz|fpga_cycle_count_2[26]~79_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~5_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~4_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~6_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~2_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~0_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~1_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~3_combout\ : std_logic;
SIGNAL \one_hz|LessThan1~7_combout\ : std_logic;
SIGNAL \one_hz|two_hz_clk_out~q\ : std_logic;
SIGNAL \KEY_0~input_o\ : std_logic;
SIGNAL \KEY_1~input_o\ : std_logic;
SIGNAL \increment_minute~0_combout\ : std_logic;
SIGNAL \increment_minute~q\ : std_logic;
SIGNAL \t_incrementer|min_clk_in~combout\ : std_logic;
SIGNAL \t_incrementer|min_clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_unit_out[0]~2_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_unit_out[0]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|Add0~0_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_unit_out[2]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_unit_out~0_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_unit_out[1]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_unit_out~1_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_unit_out[3]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|Equal0~0_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_tens_out[0]~2_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_tens_out[0]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_tens_out~1_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_tens_out[2]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|Add1~0_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_tens_out[3]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_tens_out~0_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|min_tens_out[1]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|Equal1~0_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|incr_hour~0_combout\ : std_logic;
SIGNAL \t_incrementer|min_controller|incr_hour~q\ : std_logic;
SIGNAL \increment_hour~0_combout\ : std_logic;
SIGNAL \increment_hour~q\ : std_logic;
SIGNAL \t_incrementer|hour_clk_in~combout\ : std_logic;
SIGNAL \t_incrementer|hour_clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \t_incrementer|hr_controller|Add0~1_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out[3]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_unit_out[0]~7_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_unit_out[0]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out~1_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_unit_out~5_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_unit_out[1]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_unit_out~6_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|Add1~0_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_unit_out~4_combout\ : std_logic;
SIGNAL \t_buffer|hour_unit_out[3]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out~2_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out~3_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out~4_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out~0_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out[0]~feeder_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|Add0~0_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out[2]~feeder_combout\ : std_logic;
SIGNAL \hour_tens_seg|Mux6~0_combout\ : std_logic;
SIGNAL \hour_tens_seg|Mux5~0_combout\ : std_logic;
SIGNAL \hour_tens_seg|Mux4~0_combout\ : std_logic;
SIGNAL \hour_tens_seg|Mux3~0_combout\ : std_logic;
SIGNAL \hour_tens_seg|Mux2~0_combout\ : std_logic;
SIGNAL \hour_tens_seg|Mux1~0_combout\ : std_logic;
SIGNAL \hour_tens_seg|Mux0~0_combout\ : std_logic;
SIGNAL \hour_unit_seg|Mux6~0_combout\ : std_logic;
SIGNAL \hour_unit_seg|Mux5~0_combout\ : std_logic;
SIGNAL \hour_unit_seg|Mux4~0_combout\ : std_logic;
SIGNAL \hour_unit_seg|Mux3~0_combout\ : std_logic;
SIGNAL \hour_unit_seg|Mux2~0_combout\ : std_logic;
SIGNAL \hour_unit_seg|Mux1~0_combout\ : std_logic;
SIGNAL \hour_unit_seg|Mux0~0_combout\ : std_logic;
SIGNAL \s_ind|point~0_combout\ : std_logic;
SIGNAL \s_ind|point~q\ : std_logic;
SIGNAL \min_tens_seg|Mux6~0_combout\ : std_logic;
SIGNAL \min_tens_seg|Mux5~0_combout\ : std_logic;
SIGNAL \min_tens_seg|Mux4~0_combout\ : std_logic;
SIGNAL \min_tens_seg|Mux3~0_combout\ : std_logic;
SIGNAL \min_tens_seg|Mux2~0_combout\ : std_logic;
SIGNAL \min_tens_seg|Mux1~0_combout\ : std_logic;
SIGNAL \min_tens_seg|Mux0~0_combout\ : std_logic;
SIGNAL \min_unit_seg|Mux6~0_combout\ : std_logic;
SIGNAL \min_unit_seg|Mux5~0_combout\ : std_logic;
SIGNAL \min_unit_seg|Mux4~0_combout\ : std_logic;
SIGNAL \min_unit_seg|Mux3~0_combout\ : std_logic;
SIGNAL \min_unit_seg|Mux2~0_combout\ : std_logic;
SIGNAL \min_unit_seg|Mux1~0_combout\ : std_logic;
SIGNAL \min_unit_seg|Mux0~0_combout\ : std_logic;
SIGNAL \t_incrementer|hr_controller|hr_tens_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_buffer|min_unit_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \one_hz|fpga_cycle_count_2\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \t_buffer|min_tens_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \one_hz|fpga_cycle_count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \t_buffer|hour_tens_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_buffer|hour_unit_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_incrementer|min_controller|min_tens_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_incrementer|hr_controller|hr_unit_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_incrementer|min_controller|min_unit_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL seconds : std_logic_vector(6 DOWNTO 0);
SIGNAL \min_unit_seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \min_tens_seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \s_ind|ALT_INV_point~q\ : std_logic;
SIGNAL \hour_unit_seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hour_tens_seg|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY_0 <= KEY_0;
ww_KEY_1 <= KEY_1;
ww_SW_9 <= SW_9;
ww_CLK_FPGA <= CLK_FPGA;
HEX_5 <= ww_HEX_5;
HEX_4 <= ww_HEX_4;
HEX_3 <= ww_HEX_3;
HEX_2 <= ww_HEX_2;
HEX_1 <= ww_HEX_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\one_hz|one_hz_clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \one_hz|one_hz_clk_out~q\);

\t_incrementer|min_clk_in~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \t_incrementer|min_clk_in~combout\);

\t_incrementer|hour_clk_in~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \t_incrementer|hour_clk_in~combout\);

\CLK_FPGA~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_FPGA~input_o\);
\min_unit_seg|ALT_INV_Mux0~0_combout\ <= NOT \min_unit_seg|Mux0~0_combout\;
\min_tens_seg|ALT_INV_Mux0~0_combout\ <= NOT \min_tens_seg|Mux0~0_combout\;
\s_ind|ALT_INV_point~q\ <= NOT \s_ind|point~q\;
\hour_unit_seg|ALT_INV_Mux0~0_combout\ <= NOT \hour_unit_seg|Mux0~0_combout\;
\hour_tens_seg|ALT_INV_Mux0~0_combout\ <= NOT \hour_tens_seg|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X78_Y45_N9
\HEX_5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_tens_seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX_5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX_5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_tens_seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX_5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX_5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_tens_seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX_5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX_5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_tens_seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX_5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX_5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_tens_seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX_5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX_5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_tens_seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX_5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX_5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_tens_seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX_5[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX_4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_unit_seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX_4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX_4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_unit_seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX_4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX_4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_unit_seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX_4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX_4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_unit_seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX_4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX_4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_unit_seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX_4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX_4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_unit_seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX_4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX_4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_unit_seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX_4[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX_3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX_3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX_3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX_3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX_3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX_3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX_3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX_3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX_3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_ind|ALT_INV_point~q\,
	devoe => ww_devoe,
	o => \HEX_3[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX_2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tens_seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX_2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX_2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tens_seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX_2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX_2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tens_seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX_2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX_2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tens_seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX_2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX_2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tens_seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX_2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX_2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tens_seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX_2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX_2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tens_seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX_2[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_unit_seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX_1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_unit_seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX_1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_unit_seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX_1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_unit_seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX_1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_unit_seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX_1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_unit_seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX_1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_unit_seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX_1[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK_FPGA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_FPGA,
	o => \CLK_FPGA~input_o\);

-- Location: CLKCTRL_G19
\CLK_FPGA~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_FPGA~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_FPGA~inputclkctrl_outclk\);

-- Location: LCCOMB_X65_Y51_N6
\one_hz|fpga_cycle_count[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[0]~27_combout\ = \one_hz|fpga_cycle_count\(0) $ (VCC)
-- \one_hz|fpga_cycle_count[0]~28\ = CARRY(\one_hz|fpga_cycle_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(0),
	datad => VCC,
	combout => \one_hz|fpga_cycle_count[0]~27_combout\,
	cout => \one_hz|fpga_cycle_count[0]~28\);

-- Location: FF_X65_Y51_N7
\one_hz|fpga_cycle_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[0]~27_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(0));

-- Location: LCCOMB_X65_Y51_N8
\one_hz|fpga_cycle_count[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[1]~29_combout\ = (\one_hz|fpga_cycle_count\(1) & (!\one_hz|fpga_cycle_count[0]~28\)) # (!\one_hz|fpga_cycle_count\(1) & ((\one_hz|fpga_cycle_count[0]~28\) # (GND)))
-- \one_hz|fpga_cycle_count[1]~30\ = CARRY((!\one_hz|fpga_cycle_count[0]~28\) # (!\one_hz|fpga_cycle_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(1),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[0]~28\,
	combout => \one_hz|fpga_cycle_count[1]~29_combout\,
	cout => \one_hz|fpga_cycle_count[1]~30\);

-- Location: FF_X65_Y51_N9
\one_hz|fpga_cycle_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[1]~29_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(1));

-- Location: LCCOMB_X65_Y51_N10
\one_hz|fpga_cycle_count[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[2]~31_combout\ = (\one_hz|fpga_cycle_count\(2) & (\one_hz|fpga_cycle_count[1]~30\ $ (GND))) # (!\one_hz|fpga_cycle_count\(2) & (!\one_hz|fpga_cycle_count[1]~30\ & VCC))
-- \one_hz|fpga_cycle_count[2]~32\ = CARRY((\one_hz|fpga_cycle_count\(2) & !\one_hz|fpga_cycle_count[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(2),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[1]~30\,
	combout => \one_hz|fpga_cycle_count[2]~31_combout\,
	cout => \one_hz|fpga_cycle_count[2]~32\);

-- Location: FF_X65_Y51_N11
\one_hz|fpga_cycle_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[2]~31_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(2));

-- Location: LCCOMB_X65_Y51_N12
\one_hz|fpga_cycle_count[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[3]~33_combout\ = (\one_hz|fpga_cycle_count\(3) & (!\one_hz|fpga_cycle_count[2]~32\)) # (!\one_hz|fpga_cycle_count\(3) & ((\one_hz|fpga_cycle_count[2]~32\) # (GND)))
-- \one_hz|fpga_cycle_count[3]~34\ = CARRY((!\one_hz|fpga_cycle_count[2]~32\) # (!\one_hz|fpga_cycle_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(3),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[2]~32\,
	combout => \one_hz|fpga_cycle_count[3]~33_combout\,
	cout => \one_hz|fpga_cycle_count[3]~34\);

-- Location: FF_X65_Y51_N13
\one_hz|fpga_cycle_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[3]~33_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(3));

-- Location: LCCOMB_X65_Y51_N14
\one_hz|fpga_cycle_count[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[4]~35_combout\ = (\one_hz|fpga_cycle_count\(4) & (\one_hz|fpga_cycle_count[3]~34\ $ (GND))) # (!\one_hz|fpga_cycle_count\(4) & (!\one_hz|fpga_cycle_count[3]~34\ & VCC))
-- \one_hz|fpga_cycle_count[4]~36\ = CARRY((\one_hz|fpga_cycle_count\(4) & !\one_hz|fpga_cycle_count[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(4),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[3]~34\,
	combout => \one_hz|fpga_cycle_count[4]~35_combout\,
	cout => \one_hz|fpga_cycle_count[4]~36\);

-- Location: FF_X65_Y51_N15
\one_hz|fpga_cycle_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[4]~35_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(4));

-- Location: LCCOMB_X65_Y51_N16
\one_hz|fpga_cycle_count[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[5]~37_combout\ = (\one_hz|fpga_cycle_count\(5) & (!\one_hz|fpga_cycle_count[4]~36\)) # (!\one_hz|fpga_cycle_count\(5) & ((\one_hz|fpga_cycle_count[4]~36\) # (GND)))
-- \one_hz|fpga_cycle_count[5]~38\ = CARRY((!\one_hz|fpga_cycle_count[4]~36\) # (!\one_hz|fpga_cycle_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(5),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[4]~36\,
	combout => \one_hz|fpga_cycle_count[5]~37_combout\,
	cout => \one_hz|fpga_cycle_count[5]~38\);

-- Location: FF_X65_Y51_N17
\one_hz|fpga_cycle_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[5]~37_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(5));

-- Location: LCCOMB_X65_Y51_N18
\one_hz|fpga_cycle_count[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[6]~39_combout\ = (\one_hz|fpga_cycle_count\(6) & (\one_hz|fpga_cycle_count[5]~38\ $ (GND))) # (!\one_hz|fpga_cycle_count\(6) & (!\one_hz|fpga_cycle_count[5]~38\ & VCC))
-- \one_hz|fpga_cycle_count[6]~40\ = CARRY((\one_hz|fpga_cycle_count\(6) & !\one_hz|fpga_cycle_count[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(6),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[5]~38\,
	combout => \one_hz|fpga_cycle_count[6]~39_combout\,
	cout => \one_hz|fpga_cycle_count[6]~40\);

-- Location: FF_X65_Y51_N19
\one_hz|fpga_cycle_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[6]~39_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(6));

-- Location: LCCOMB_X65_Y51_N20
\one_hz|fpga_cycle_count[7]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[7]~41_combout\ = (\one_hz|fpga_cycle_count\(7) & (!\one_hz|fpga_cycle_count[6]~40\)) # (!\one_hz|fpga_cycle_count\(7) & ((\one_hz|fpga_cycle_count[6]~40\) # (GND)))
-- \one_hz|fpga_cycle_count[7]~42\ = CARRY((!\one_hz|fpga_cycle_count[6]~40\) # (!\one_hz|fpga_cycle_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(7),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[6]~40\,
	combout => \one_hz|fpga_cycle_count[7]~41_combout\,
	cout => \one_hz|fpga_cycle_count[7]~42\);

-- Location: FF_X65_Y51_N21
\one_hz|fpga_cycle_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[7]~41_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(7));

-- Location: LCCOMB_X65_Y51_N22
\one_hz|fpga_cycle_count[8]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[8]~43_combout\ = (\one_hz|fpga_cycle_count\(8) & (\one_hz|fpga_cycle_count[7]~42\ $ (GND))) # (!\one_hz|fpga_cycle_count\(8) & (!\one_hz|fpga_cycle_count[7]~42\ & VCC))
-- \one_hz|fpga_cycle_count[8]~44\ = CARRY((\one_hz|fpga_cycle_count\(8) & !\one_hz|fpga_cycle_count[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(8),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[7]~42\,
	combout => \one_hz|fpga_cycle_count[8]~43_combout\,
	cout => \one_hz|fpga_cycle_count[8]~44\);

-- Location: FF_X65_Y51_N23
\one_hz|fpga_cycle_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[8]~43_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(8));

-- Location: LCCOMB_X65_Y51_N24
\one_hz|fpga_cycle_count[9]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[9]~45_combout\ = (\one_hz|fpga_cycle_count\(9) & (!\one_hz|fpga_cycle_count[8]~44\)) # (!\one_hz|fpga_cycle_count\(9) & ((\one_hz|fpga_cycle_count[8]~44\) # (GND)))
-- \one_hz|fpga_cycle_count[9]~46\ = CARRY((!\one_hz|fpga_cycle_count[8]~44\) # (!\one_hz|fpga_cycle_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(9),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[8]~44\,
	combout => \one_hz|fpga_cycle_count[9]~45_combout\,
	cout => \one_hz|fpga_cycle_count[9]~46\);

-- Location: FF_X65_Y51_N25
\one_hz|fpga_cycle_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[9]~45_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(9));

-- Location: LCCOMB_X65_Y51_N26
\one_hz|fpga_cycle_count[10]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[10]~47_combout\ = (\one_hz|fpga_cycle_count\(10) & (\one_hz|fpga_cycle_count[9]~46\ $ (GND))) # (!\one_hz|fpga_cycle_count\(10) & (!\one_hz|fpga_cycle_count[9]~46\ & VCC))
-- \one_hz|fpga_cycle_count[10]~48\ = CARRY((\one_hz|fpga_cycle_count\(10) & !\one_hz|fpga_cycle_count[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(10),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[9]~46\,
	combout => \one_hz|fpga_cycle_count[10]~47_combout\,
	cout => \one_hz|fpga_cycle_count[10]~48\);

-- Location: FF_X65_Y51_N27
\one_hz|fpga_cycle_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[10]~47_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(10));

-- Location: LCCOMB_X65_Y51_N28
\one_hz|fpga_cycle_count[11]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[11]~49_combout\ = (\one_hz|fpga_cycle_count\(11) & (!\one_hz|fpga_cycle_count[10]~48\)) # (!\one_hz|fpga_cycle_count\(11) & ((\one_hz|fpga_cycle_count[10]~48\) # (GND)))
-- \one_hz|fpga_cycle_count[11]~50\ = CARRY((!\one_hz|fpga_cycle_count[10]~48\) # (!\one_hz|fpga_cycle_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(11),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[10]~48\,
	combout => \one_hz|fpga_cycle_count[11]~49_combout\,
	cout => \one_hz|fpga_cycle_count[11]~50\);

-- Location: FF_X65_Y51_N29
\one_hz|fpga_cycle_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[11]~49_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(11));

-- Location: LCCOMB_X65_Y51_N30
\one_hz|fpga_cycle_count[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[12]~51_combout\ = (\one_hz|fpga_cycle_count\(12) & (\one_hz|fpga_cycle_count[11]~50\ $ (GND))) # (!\one_hz|fpga_cycle_count\(12) & (!\one_hz|fpga_cycle_count[11]~50\ & VCC))
-- \one_hz|fpga_cycle_count[12]~52\ = CARRY((\one_hz|fpga_cycle_count\(12) & !\one_hz|fpga_cycle_count[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(12),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[11]~50\,
	combout => \one_hz|fpga_cycle_count[12]~51_combout\,
	cout => \one_hz|fpga_cycle_count[12]~52\);

-- Location: FF_X65_Y51_N31
\one_hz|fpga_cycle_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[12]~51_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(12));

-- Location: LCCOMB_X65_Y50_N0
\one_hz|fpga_cycle_count[13]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[13]~53_combout\ = (\one_hz|fpga_cycle_count\(13) & (!\one_hz|fpga_cycle_count[12]~52\)) # (!\one_hz|fpga_cycle_count\(13) & ((\one_hz|fpga_cycle_count[12]~52\) # (GND)))
-- \one_hz|fpga_cycle_count[13]~54\ = CARRY((!\one_hz|fpga_cycle_count[12]~52\) # (!\one_hz|fpga_cycle_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(13),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[12]~52\,
	combout => \one_hz|fpga_cycle_count[13]~53_combout\,
	cout => \one_hz|fpga_cycle_count[13]~54\);

-- Location: FF_X65_Y50_N1
\one_hz|fpga_cycle_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[13]~53_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(13));

-- Location: LCCOMB_X65_Y50_N2
\one_hz|fpga_cycle_count[14]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[14]~55_combout\ = (\one_hz|fpga_cycle_count\(14) & (\one_hz|fpga_cycle_count[13]~54\ $ (GND))) # (!\one_hz|fpga_cycle_count\(14) & (!\one_hz|fpga_cycle_count[13]~54\ & VCC))
-- \one_hz|fpga_cycle_count[14]~56\ = CARRY((\one_hz|fpga_cycle_count\(14) & !\one_hz|fpga_cycle_count[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(14),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[13]~54\,
	combout => \one_hz|fpga_cycle_count[14]~55_combout\,
	cout => \one_hz|fpga_cycle_count[14]~56\);

-- Location: FF_X65_Y50_N3
\one_hz|fpga_cycle_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[14]~55_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(14));

-- Location: LCCOMB_X65_Y50_N4
\one_hz|fpga_cycle_count[15]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[15]~57_combout\ = (\one_hz|fpga_cycle_count\(15) & (!\one_hz|fpga_cycle_count[14]~56\)) # (!\one_hz|fpga_cycle_count\(15) & ((\one_hz|fpga_cycle_count[14]~56\) # (GND)))
-- \one_hz|fpga_cycle_count[15]~58\ = CARRY((!\one_hz|fpga_cycle_count[14]~56\) # (!\one_hz|fpga_cycle_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(15),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[14]~56\,
	combout => \one_hz|fpga_cycle_count[15]~57_combout\,
	cout => \one_hz|fpga_cycle_count[15]~58\);

-- Location: FF_X65_Y50_N5
\one_hz|fpga_cycle_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[15]~57_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(15));

-- Location: LCCOMB_X65_Y50_N6
\one_hz|fpga_cycle_count[16]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[16]~59_combout\ = (\one_hz|fpga_cycle_count\(16) & (\one_hz|fpga_cycle_count[15]~58\ $ (GND))) # (!\one_hz|fpga_cycle_count\(16) & (!\one_hz|fpga_cycle_count[15]~58\ & VCC))
-- \one_hz|fpga_cycle_count[16]~60\ = CARRY((\one_hz|fpga_cycle_count\(16) & !\one_hz|fpga_cycle_count[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(16),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[15]~58\,
	combout => \one_hz|fpga_cycle_count[16]~59_combout\,
	cout => \one_hz|fpga_cycle_count[16]~60\);

-- Location: FF_X65_Y50_N7
\one_hz|fpga_cycle_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[16]~59_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(16));

-- Location: LCCOMB_X65_Y50_N8
\one_hz|fpga_cycle_count[17]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[17]~61_combout\ = (\one_hz|fpga_cycle_count\(17) & (!\one_hz|fpga_cycle_count[16]~60\)) # (!\one_hz|fpga_cycle_count\(17) & ((\one_hz|fpga_cycle_count[16]~60\) # (GND)))
-- \one_hz|fpga_cycle_count[17]~62\ = CARRY((!\one_hz|fpga_cycle_count[16]~60\) # (!\one_hz|fpga_cycle_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(17),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[16]~60\,
	combout => \one_hz|fpga_cycle_count[17]~61_combout\,
	cout => \one_hz|fpga_cycle_count[17]~62\);

-- Location: FF_X65_Y50_N9
\one_hz|fpga_cycle_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[17]~61_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(17));

-- Location: LCCOMB_X65_Y50_N10
\one_hz|fpga_cycle_count[18]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[18]~63_combout\ = (\one_hz|fpga_cycle_count\(18) & (\one_hz|fpga_cycle_count[17]~62\ $ (GND))) # (!\one_hz|fpga_cycle_count\(18) & (!\one_hz|fpga_cycle_count[17]~62\ & VCC))
-- \one_hz|fpga_cycle_count[18]~64\ = CARRY((\one_hz|fpga_cycle_count\(18) & !\one_hz|fpga_cycle_count[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(18),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[17]~62\,
	combout => \one_hz|fpga_cycle_count[18]~63_combout\,
	cout => \one_hz|fpga_cycle_count[18]~64\);

-- Location: FF_X65_Y50_N11
\one_hz|fpga_cycle_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[18]~63_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(18));

-- Location: LCCOMB_X65_Y50_N12
\one_hz|fpga_cycle_count[19]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[19]~65_combout\ = (\one_hz|fpga_cycle_count\(19) & (!\one_hz|fpga_cycle_count[18]~64\)) # (!\one_hz|fpga_cycle_count\(19) & ((\one_hz|fpga_cycle_count[18]~64\) # (GND)))
-- \one_hz|fpga_cycle_count[19]~66\ = CARRY((!\one_hz|fpga_cycle_count[18]~64\) # (!\one_hz|fpga_cycle_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(19),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[18]~64\,
	combout => \one_hz|fpga_cycle_count[19]~65_combout\,
	cout => \one_hz|fpga_cycle_count[19]~66\);

-- Location: FF_X65_Y50_N13
\one_hz|fpga_cycle_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[19]~65_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(19));

-- Location: LCCOMB_X65_Y50_N14
\one_hz|fpga_cycle_count[20]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[20]~67_combout\ = (\one_hz|fpga_cycle_count\(20) & (\one_hz|fpga_cycle_count[19]~66\ $ (GND))) # (!\one_hz|fpga_cycle_count\(20) & (!\one_hz|fpga_cycle_count[19]~66\ & VCC))
-- \one_hz|fpga_cycle_count[20]~68\ = CARRY((\one_hz|fpga_cycle_count\(20) & !\one_hz|fpga_cycle_count[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(20),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[19]~66\,
	combout => \one_hz|fpga_cycle_count[20]~67_combout\,
	cout => \one_hz|fpga_cycle_count[20]~68\);

-- Location: FF_X65_Y50_N15
\one_hz|fpga_cycle_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[20]~67_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(20));

-- Location: LCCOMB_X65_Y50_N16
\one_hz|fpga_cycle_count[21]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[21]~69_combout\ = (\one_hz|fpga_cycle_count\(21) & (!\one_hz|fpga_cycle_count[20]~68\)) # (!\one_hz|fpga_cycle_count\(21) & ((\one_hz|fpga_cycle_count[20]~68\) # (GND)))
-- \one_hz|fpga_cycle_count[21]~70\ = CARRY((!\one_hz|fpga_cycle_count[20]~68\) # (!\one_hz|fpga_cycle_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(21),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[20]~68\,
	combout => \one_hz|fpga_cycle_count[21]~69_combout\,
	cout => \one_hz|fpga_cycle_count[21]~70\);

-- Location: FF_X65_Y50_N17
\one_hz|fpga_cycle_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[21]~69_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(21));

-- Location: LCCOMB_X65_Y50_N18
\one_hz|fpga_cycle_count[22]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[22]~71_combout\ = (\one_hz|fpga_cycle_count\(22) & (\one_hz|fpga_cycle_count[21]~70\ $ (GND))) # (!\one_hz|fpga_cycle_count\(22) & (!\one_hz|fpga_cycle_count[21]~70\ & VCC))
-- \one_hz|fpga_cycle_count[22]~72\ = CARRY((\one_hz|fpga_cycle_count\(22) & !\one_hz|fpga_cycle_count[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(22),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[21]~70\,
	combout => \one_hz|fpga_cycle_count[22]~71_combout\,
	cout => \one_hz|fpga_cycle_count[22]~72\);

-- Location: FF_X65_Y50_N19
\one_hz|fpga_cycle_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[22]~71_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(22));

-- Location: LCCOMB_X65_Y50_N20
\one_hz|fpga_cycle_count[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[23]~73_combout\ = (\one_hz|fpga_cycle_count\(23) & (!\one_hz|fpga_cycle_count[22]~72\)) # (!\one_hz|fpga_cycle_count\(23) & ((\one_hz|fpga_cycle_count[22]~72\) # (GND)))
-- \one_hz|fpga_cycle_count[23]~74\ = CARRY((!\one_hz|fpga_cycle_count[22]~72\) # (!\one_hz|fpga_cycle_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(23),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[22]~72\,
	combout => \one_hz|fpga_cycle_count[23]~73_combout\,
	cout => \one_hz|fpga_cycle_count[23]~74\);

-- Location: FF_X65_Y50_N21
\one_hz|fpga_cycle_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[23]~73_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(23));

-- Location: LCCOMB_X65_Y50_N22
\one_hz|fpga_cycle_count[24]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[24]~75_combout\ = (\one_hz|fpga_cycle_count\(24) & (\one_hz|fpga_cycle_count[23]~74\ $ (GND))) # (!\one_hz|fpga_cycle_count\(24) & (!\one_hz|fpga_cycle_count[23]~74\ & VCC))
-- \one_hz|fpga_cycle_count[24]~76\ = CARRY((\one_hz|fpga_cycle_count\(24) & !\one_hz|fpga_cycle_count[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(24),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[23]~74\,
	combout => \one_hz|fpga_cycle_count[24]~75_combout\,
	cout => \one_hz|fpga_cycle_count[24]~76\);

-- Location: FF_X65_Y50_N23
\one_hz|fpga_cycle_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[24]~75_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(24));

-- Location: LCCOMB_X65_Y50_N24
\one_hz|fpga_cycle_count[25]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[25]~77_combout\ = (\one_hz|fpga_cycle_count\(25) & (!\one_hz|fpga_cycle_count[24]~76\)) # (!\one_hz|fpga_cycle_count\(25) & ((\one_hz|fpga_cycle_count[24]~76\) # (GND)))
-- \one_hz|fpga_cycle_count[25]~78\ = CARRY((!\one_hz|fpga_cycle_count[24]~76\) # (!\one_hz|fpga_cycle_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(25),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count[24]~76\,
	combout => \one_hz|fpga_cycle_count[25]~77_combout\,
	cout => \one_hz|fpga_cycle_count[25]~78\);

-- Location: FF_X65_Y50_N25
\one_hz|fpga_cycle_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[25]~77_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(25));

-- Location: LCCOMB_X65_Y50_N26
\one_hz|fpga_cycle_count[26]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count[26]~79_combout\ = \one_hz|fpga_cycle_count\(26) $ (!\one_hz|fpga_cycle_count[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(26),
	cin => \one_hz|fpga_cycle_count[25]~78\,
	combout => \one_hz|fpga_cycle_count[26]~79_combout\);

-- Location: FF_X65_Y50_N27
\one_hz|fpga_cycle_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count[26]~79_combout\,
	sclr => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count\(26));

-- Location: LCCOMB_X64_Y50_N18
\one_hz|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~6_combout\ = (!\one_hz|fpga_cycle_count\(16) & (!\one_hz|fpga_cycle_count\(18) & !\one_hz|fpga_cycle_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(16),
	datac => \one_hz|fpga_cycle_count\(18),
	datad => \one_hz|fpga_cycle_count\(24),
	combout => \one_hz|LessThan0~6_combout\);

-- Location: LCCOMB_X64_Y50_N0
\one_hz|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~0_combout\ = (((!\one_hz|fpga_cycle_count\(17) & !\one_hz|fpga_cycle_count\(18))) # (!\one_hz|fpga_cycle_count\(20))) # (!\one_hz|fpga_cycle_count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(17),
	datab => \one_hz|fpga_cycle_count\(18),
	datac => \one_hz|fpga_cycle_count\(19),
	datad => \one_hz|fpga_cycle_count\(20),
	combout => \one_hz|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y50_N28
\one_hz|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~1_combout\ = ((!\one_hz|fpga_cycle_count\(22)) # (!\one_hz|fpga_cycle_count\(23))) # (!\one_hz|fpga_cycle_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(21),
	datac => \one_hz|fpga_cycle_count\(23),
	datad => \one_hz|fpga_cycle_count\(22),
	combout => \one_hz|LessThan0~1_combout\);

-- Location: LCCOMB_X65_Y51_N4
\one_hz|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~2_combout\ = ((!\one_hz|fpga_cycle_count\(24) & ((\one_hz|LessThan0~0_combout\) # (\one_hz|LessThan0~1_combout\)))) # (!\one_hz|fpga_cycle_count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(25),
	datab => \one_hz|fpga_cycle_count\(24),
	datac => \one_hz|LessThan0~0_combout\,
	datad => \one_hz|LessThan0~1_combout\,
	combout => \one_hz|LessThan0~2_combout\);

-- Location: LCCOMB_X64_Y51_N16
\one_hz|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~4_combout\ = (!\one_hz|fpga_cycle_count\(7) & (!\one_hz|fpga_cycle_count\(8) & (!\one_hz|fpga_cycle_count\(10) & !\one_hz|fpga_cycle_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(7),
	datab => \one_hz|fpga_cycle_count\(8),
	datac => \one_hz|fpga_cycle_count\(10),
	datad => \one_hz|fpga_cycle_count\(9),
	combout => \one_hz|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y50_N30
\one_hz|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~3_combout\ = (((!\one_hz|fpga_cycle_count\(12)) # (!\one_hz|fpga_cycle_count\(14))) # (!\one_hz|fpga_cycle_count\(13))) # (!\one_hz|fpga_cycle_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(15),
	datab => \one_hz|fpga_cycle_count\(13),
	datac => \one_hz|fpga_cycle_count\(14),
	datad => \one_hz|fpga_cycle_count\(12),
	combout => \one_hz|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y51_N2
\one_hz|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~5_combout\ = (\one_hz|LessThan0~3_combout\) # ((!\one_hz|fpga_cycle_count\(11) & \one_hz|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count\(11),
	datac => \one_hz|LessThan0~4_combout\,
	datad => \one_hz|LessThan0~3_combout\,
	combout => \one_hz|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y51_N0
\one_hz|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan0~7_combout\ = (\one_hz|fpga_cycle_count\(26)) # ((!\one_hz|LessThan0~2_combout\ & ((!\one_hz|LessThan0~5_combout\) # (!\one_hz|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count\(26),
	datab => \one_hz|LessThan0~6_combout\,
	datac => \one_hz|LessThan0~2_combout\,
	datad => \one_hz|LessThan0~5_combout\,
	combout => \one_hz|LessThan0~7_combout\);

-- Location: FF_X65_Y51_N1
\one_hz|one_hz_clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|one_hz_clk_out~q\);

-- Location: CLKCTRL_G12
\one_hz|one_hz_clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \one_hz|one_hz_clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \one_hz|one_hz_clk_out~clkctrl_outclk\);

-- Location: IOIBUF_X69_Y54_N1
\SW_9~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_9,
	o => \SW_9~input_o\);

-- Location: LCCOMB_X69_Y52_N4
\seconds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~2_combout\ = (\SW_9~input_o\ & (\LessThan0~0_combout\ & (!\Add0~12_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_9~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~6_combout\,
	combout => \seconds~2_combout\);

-- Location: FF_X69_Y52_N5
\seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|one_hz_clk_out~clkctrl_outclk\,
	d => \seconds~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(3));

-- Location: LCCOMB_X69_Y52_N14
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = seconds(0) $ (VCC)
-- \Add0~1\ = CARRY(seconds(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X69_Y52_N6
\seconds~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~5_combout\ = (\SW_9~input_o\ & (\Add0~0_combout\ & (!\Add0~12_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_9~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \LessThan0~0_combout\,
	combout => \seconds~5_combout\);

-- Location: FF_X69_Y52_N7
\seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|one_hz_clk_out~clkctrl_outclk\,
	d => \seconds~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(0));

-- Location: LCCOMB_X69_Y52_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (seconds(1) & (!\Add0~1\)) # (!seconds(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!seconds(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seconds(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X69_Y52_N10
\seconds~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~4_combout\ = (\SW_9~input_o\ & (\LessThan0~0_combout\ & (!\Add0~12_combout\ & \Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_9~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~2_combout\,
	combout => \seconds~4_combout\);

-- Location: FF_X69_Y52_N11
\seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|one_hz_clk_out~clkctrl_outclk\,
	d => \seconds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(1));

-- Location: LCCOMB_X69_Y52_N18
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (seconds(2) & (\Add0~3\ $ (GND))) # (!seconds(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((seconds(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seconds(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X69_Y52_N12
\seconds~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~3_combout\ = (\SW_9~input_o\ & (\LessThan0~0_combout\ & (!\Add0~12_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_9~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~4_combout\,
	combout => \seconds~3_combout\);

-- Location: FF_X69_Y52_N13
\seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|one_hz_clk_out~clkctrl_outclk\,
	d => \seconds~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(2));

-- Location: LCCOMB_X69_Y52_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (seconds(3) & (!\Add0~5\)) # (!seconds(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!seconds(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X69_Y52_N8
\seconds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~1_combout\ = (\SW_9~input_o\ & (\LessThan0~0_combout\ & (!\Add0~12_combout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_9~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~8_combout\,
	combout => \seconds~1_combout\);

-- Location: FF_X69_Y52_N9
\seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|one_hz_clk_out~clkctrl_outclk\,
	d => \seconds~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(4));

-- Location: LCCOMB_X69_Y52_N22
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (seconds(4) & (\Add0~7\ $ (GND))) # (!seconds(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((seconds(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X69_Y52_N24
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (seconds(5) & (!\Add0~9\)) # (!seconds(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!seconds(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X69_Y52_N28
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!\Add0~10_combout\) # (!\Add0~8_combout\)) # (!\Add0~4_combout\)) # (!\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~10_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X69_Y52_N2
\seconds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~0_combout\ = (\SW_9~input_o\ & (\LessThan0~0_combout\ & (!\Add0~12_combout\ & \Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_9~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~10_combout\,
	combout => \seconds~0_combout\);

-- Location: FF_X69_Y52_N3
\seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|one_hz_clk_out~clkctrl_outclk\,
	d => \seconds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(5));

-- Location: LCCOMB_X69_Y52_N26
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = !\Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X69_Y52_N30
\update_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_count~0_combout\ = (\SW_9~input_o\ & ((\Add0~12_combout\) # ((!\LessThan0~0_combout\)))) # (!\SW_9~input_o\ & (((\update_count~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \SW_9~input_o\,
	datac => \update_count~q\,
	datad => \LessThan0~0_combout\,
	combout => \update_count~0_combout\);

-- Location: FF_X69_Y52_N31
update_count : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|one_hz_clk_out~q\,
	d => \update_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \update_count~q\);

-- Location: LCCOMB_X67_Y48_N6
\one_hz|fpga_cycle_count_2[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[0]~27_combout\ = \one_hz|fpga_cycle_count_2\(0) $ (VCC)
-- \one_hz|fpga_cycle_count_2[0]~28\ = CARRY(\one_hz|fpga_cycle_count_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(0),
	datad => VCC,
	combout => \one_hz|fpga_cycle_count_2[0]~27_combout\,
	cout => \one_hz|fpga_cycle_count_2[0]~28\);

-- Location: FF_X67_Y48_N7
\one_hz|fpga_cycle_count_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[0]~27_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(0));

-- Location: LCCOMB_X67_Y48_N8
\one_hz|fpga_cycle_count_2[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[1]~29_combout\ = (\one_hz|fpga_cycle_count_2\(1) & (!\one_hz|fpga_cycle_count_2[0]~28\)) # (!\one_hz|fpga_cycle_count_2\(1) & ((\one_hz|fpga_cycle_count_2[0]~28\) # (GND)))
-- \one_hz|fpga_cycle_count_2[1]~30\ = CARRY((!\one_hz|fpga_cycle_count_2[0]~28\) # (!\one_hz|fpga_cycle_count_2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(1),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[0]~28\,
	combout => \one_hz|fpga_cycle_count_2[1]~29_combout\,
	cout => \one_hz|fpga_cycle_count_2[1]~30\);

-- Location: FF_X67_Y48_N9
\one_hz|fpga_cycle_count_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[1]~29_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(1));

-- Location: LCCOMB_X67_Y48_N10
\one_hz|fpga_cycle_count_2[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[2]~31_combout\ = (\one_hz|fpga_cycle_count_2\(2) & (\one_hz|fpga_cycle_count_2[1]~30\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(2) & (!\one_hz|fpga_cycle_count_2[1]~30\ & VCC))
-- \one_hz|fpga_cycle_count_2[2]~32\ = CARRY((\one_hz|fpga_cycle_count_2\(2) & !\one_hz|fpga_cycle_count_2[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(2),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[1]~30\,
	combout => \one_hz|fpga_cycle_count_2[2]~31_combout\,
	cout => \one_hz|fpga_cycle_count_2[2]~32\);

-- Location: FF_X67_Y48_N11
\one_hz|fpga_cycle_count_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[2]~31_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(2));

-- Location: LCCOMB_X67_Y48_N12
\one_hz|fpga_cycle_count_2[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[3]~33_combout\ = (\one_hz|fpga_cycle_count_2\(3) & (!\one_hz|fpga_cycle_count_2[2]~32\)) # (!\one_hz|fpga_cycle_count_2\(3) & ((\one_hz|fpga_cycle_count_2[2]~32\) # (GND)))
-- \one_hz|fpga_cycle_count_2[3]~34\ = CARRY((!\one_hz|fpga_cycle_count_2[2]~32\) # (!\one_hz|fpga_cycle_count_2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(3),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[2]~32\,
	combout => \one_hz|fpga_cycle_count_2[3]~33_combout\,
	cout => \one_hz|fpga_cycle_count_2[3]~34\);

-- Location: FF_X67_Y48_N13
\one_hz|fpga_cycle_count_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[3]~33_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(3));

-- Location: LCCOMB_X67_Y48_N14
\one_hz|fpga_cycle_count_2[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[4]~35_combout\ = (\one_hz|fpga_cycle_count_2\(4) & (\one_hz|fpga_cycle_count_2[3]~34\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(4) & (!\one_hz|fpga_cycle_count_2[3]~34\ & VCC))
-- \one_hz|fpga_cycle_count_2[4]~36\ = CARRY((\one_hz|fpga_cycle_count_2\(4) & !\one_hz|fpga_cycle_count_2[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(4),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[3]~34\,
	combout => \one_hz|fpga_cycle_count_2[4]~35_combout\,
	cout => \one_hz|fpga_cycle_count_2[4]~36\);

-- Location: FF_X67_Y48_N15
\one_hz|fpga_cycle_count_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[4]~35_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(4));

-- Location: LCCOMB_X67_Y48_N16
\one_hz|fpga_cycle_count_2[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[5]~37_combout\ = (\one_hz|fpga_cycle_count_2\(5) & (!\one_hz|fpga_cycle_count_2[4]~36\)) # (!\one_hz|fpga_cycle_count_2\(5) & ((\one_hz|fpga_cycle_count_2[4]~36\) # (GND)))
-- \one_hz|fpga_cycle_count_2[5]~38\ = CARRY((!\one_hz|fpga_cycle_count_2[4]~36\) # (!\one_hz|fpga_cycle_count_2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(5),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[4]~36\,
	combout => \one_hz|fpga_cycle_count_2[5]~37_combout\,
	cout => \one_hz|fpga_cycle_count_2[5]~38\);

-- Location: FF_X67_Y48_N17
\one_hz|fpga_cycle_count_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[5]~37_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(5));

-- Location: LCCOMB_X67_Y48_N18
\one_hz|fpga_cycle_count_2[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[6]~39_combout\ = (\one_hz|fpga_cycle_count_2\(6) & (\one_hz|fpga_cycle_count_2[5]~38\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(6) & (!\one_hz|fpga_cycle_count_2[5]~38\ & VCC))
-- \one_hz|fpga_cycle_count_2[6]~40\ = CARRY((\one_hz|fpga_cycle_count_2\(6) & !\one_hz|fpga_cycle_count_2[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(6),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[5]~38\,
	combout => \one_hz|fpga_cycle_count_2[6]~39_combout\,
	cout => \one_hz|fpga_cycle_count_2[6]~40\);

-- Location: FF_X67_Y48_N19
\one_hz|fpga_cycle_count_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[6]~39_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(6));

-- Location: LCCOMB_X67_Y48_N20
\one_hz|fpga_cycle_count_2[7]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[7]~41_combout\ = (\one_hz|fpga_cycle_count_2\(7) & (!\one_hz|fpga_cycle_count_2[6]~40\)) # (!\one_hz|fpga_cycle_count_2\(7) & ((\one_hz|fpga_cycle_count_2[6]~40\) # (GND)))
-- \one_hz|fpga_cycle_count_2[7]~42\ = CARRY((!\one_hz|fpga_cycle_count_2[6]~40\) # (!\one_hz|fpga_cycle_count_2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(7),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[6]~40\,
	combout => \one_hz|fpga_cycle_count_2[7]~41_combout\,
	cout => \one_hz|fpga_cycle_count_2[7]~42\);

-- Location: FF_X67_Y48_N21
\one_hz|fpga_cycle_count_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[7]~41_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(7));

-- Location: LCCOMB_X67_Y48_N22
\one_hz|fpga_cycle_count_2[8]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[8]~43_combout\ = (\one_hz|fpga_cycle_count_2\(8) & (\one_hz|fpga_cycle_count_2[7]~42\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(8) & (!\one_hz|fpga_cycle_count_2[7]~42\ & VCC))
-- \one_hz|fpga_cycle_count_2[8]~44\ = CARRY((\one_hz|fpga_cycle_count_2\(8) & !\one_hz|fpga_cycle_count_2[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(8),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[7]~42\,
	combout => \one_hz|fpga_cycle_count_2[8]~43_combout\,
	cout => \one_hz|fpga_cycle_count_2[8]~44\);

-- Location: FF_X67_Y48_N23
\one_hz|fpga_cycle_count_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[8]~43_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(8));

-- Location: LCCOMB_X67_Y48_N24
\one_hz|fpga_cycle_count_2[9]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[9]~45_combout\ = (\one_hz|fpga_cycle_count_2\(9) & (!\one_hz|fpga_cycle_count_2[8]~44\)) # (!\one_hz|fpga_cycle_count_2\(9) & ((\one_hz|fpga_cycle_count_2[8]~44\) # (GND)))
-- \one_hz|fpga_cycle_count_2[9]~46\ = CARRY((!\one_hz|fpga_cycle_count_2[8]~44\) # (!\one_hz|fpga_cycle_count_2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(9),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[8]~44\,
	combout => \one_hz|fpga_cycle_count_2[9]~45_combout\,
	cout => \one_hz|fpga_cycle_count_2[9]~46\);

-- Location: FF_X67_Y48_N25
\one_hz|fpga_cycle_count_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[9]~45_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(9));

-- Location: LCCOMB_X67_Y48_N26
\one_hz|fpga_cycle_count_2[10]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[10]~47_combout\ = (\one_hz|fpga_cycle_count_2\(10) & (\one_hz|fpga_cycle_count_2[9]~46\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(10) & (!\one_hz|fpga_cycle_count_2[9]~46\ & VCC))
-- \one_hz|fpga_cycle_count_2[10]~48\ = CARRY((\one_hz|fpga_cycle_count_2\(10) & !\one_hz|fpga_cycle_count_2[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(10),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[9]~46\,
	combout => \one_hz|fpga_cycle_count_2[10]~47_combout\,
	cout => \one_hz|fpga_cycle_count_2[10]~48\);

-- Location: FF_X67_Y48_N27
\one_hz|fpga_cycle_count_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[10]~47_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(10));

-- Location: LCCOMB_X67_Y48_N28
\one_hz|fpga_cycle_count_2[11]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[11]~49_combout\ = (\one_hz|fpga_cycle_count_2\(11) & (!\one_hz|fpga_cycle_count_2[10]~48\)) # (!\one_hz|fpga_cycle_count_2\(11) & ((\one_hz|fpga_cycle_count_2[10]~48\) # (GND)))
-- \one_hz|fpga_cycle_count_2[11]~50\ = CARRY((!\one_hz|fpga_cycle_count_2[10]~48\) # (!\one_hz|fpga_cycle_count_2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(11),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[10]~48\,
	combout => \one_hz|fpga_cycle_count_2[11]~49_combout\,
	cout => \one_hz|fpga_cycle_count_2[11]~50\);

-- Location: FF_X67_Y48_N29
\one_hz|fpga_cycle_count_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[11]~49_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(11));

-- Location: LCCOMB_X67_Y48_N30
\one_hz|fpga_cycle_count_2[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[12]~51_combout\ = (\one_hz|fpga_cycle_count_2\(12) & (\one_hz|fpga_cycle_count_2[11]~50\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(12) & (!\one_hz|fpga_cycle_count_2[11]~50\ & VCC))
-- \one_hz|fpga_cycle_count_2[12]~52\ = CARRY((\one_hz|fpga_cycle_count_2\(12) & !\one_hz|fpga_cycle_count_2[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(12),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[11]~50\,
	combout => \one_hz|fpga_cycle_count_2[12]~51_combout\,
	cout => \one_hz|fpga_cycle_count_2[12]~52\);

-- Location: FF_X67_Y48_N31
\one_hz|fpga_cycle_count_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[12]~51_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(12));

-- Location: LCCOMB_X67_Y47_N0
\one_hz|fpga_cycle_count_2[13]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[13]~53_combout\ = (\one_hz|fpga_cycle_count_2\(13) & (!\one_hz|fpga_cycle_count_2[12]~52\)) # (!\one_hz|fpga_cycle_count_2\(13) & ((\one_hz|fpga_cycle_count_2[12]~52\) # (GND)))
-- \one_hz|fpga_cycle_count_2[13]~54\ = CARRY((!\one_hz|fpga_cycle_count_2[12]~52\) # (!\one_hz|fpga_cycle_count_2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(13),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[12]~52\,
	combout => \one_hz|fpga_cycle_count_2[13]~53_combout\,
	cout => \one_hz|fpga_cycle_count_2[13]~54\);

-- Location: FF_X67_Y47_N1
\one_hz|fpga_cycle_count_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[13]~53_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(13));

-- Location: LCCOMB_X67_Y47_N2
\one_hz|fpga_cycle_count_2[14]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[14]~55_combout\ = (\one_hz|fpga_cycle_count_2\(14) & (\one_hz|fpga_cycle_count_2[13]~54\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(14) & (!\one_hz|fpga_cycle_count_2[13]~54\ & VCC))
-- \one_hz|fpga_cycle_count_2[14]~56\ = CARRY((\one_hz|fpga_cycle_count_2\(14) & !\one_hz|fpga_cycle_count_2[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(14),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[13]~54\,
	combout => \one_hz|fpga_cycle_count_2[14]~55_combout\,
	cout => \one_hz|fpga_cycle_count_2[14]~56\);

-- Location: FF_X67_Y47_N3
\one_hz|fpga_cycle_count_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[14]~55_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(14));

-- Location: LCCOMB_X67_Y47_N4
\one_hz|fpga_cycle_count_2[15]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[15]~57_combout\ = (\one_hz|fpga_cycle_count_2\(15) & (!\one_hz|fpga_cycle_count_2[14]~56\)) # (!\one_hz|fpga_cycle_count_2\(15) & ((\one_hz|fpga_cycle_count_2[14]~56\) # (GND)))
-- \one_hz|fpga_cycle_count_2[15]~58\ = CARRY((!\one_hz|fpga_cycle_count_2[14]~56\) # (!\one_hz|fpga_cycle_count_2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(15),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[14]~56\,
	combout => \one_hz|fpga_cycle_count_2[15]~57_combout\,
	cout => \one_hz|fpga_cycle_count_2[15]~58\);

-- Location: FF_X67_Y47_N5
\one_hz|fpga_cycle_count_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[15]~57_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(15));

-- Location: LCCOMB_X67_Y47_N6
\one_hz|fpga_cycle_count_2[16]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[16]~59_combout\ = (\one_hz|fpga_cycle_count_2\(16) & (\one_hz|fpga_cycle_count_2[15]~58\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(16) & (!\one_hz|fpga_cycle_count_2[15]~58\ & VCC))
-- \one_hz|fpga_cycle_count_2[16]~60\ = CARRY((\one_hz|fpga_cycle_count_2\(16) & !\one_hz|fpga_cycle_count_2[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(16),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[15]~58\,
	combout => \one_hz|fpga_cycle_count_2[16]~59_combout\,
	cout => \one_hz|fpga_cycle_count_2[16]~60\);

-- Location: FF_X66_Y48_N21
\one_hz|fpga_cycle_count_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \one_hz|fpga_cycle_count_2[16]~59_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(16));

-- Location: LCCOMB_X67_Y47_N8
\one_hz|fpga_cycle_count_2[17]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[17]~61_combout\ = (\one_hz|fpga_cycle_count_2\(17) & (!\one_hz|fpga_cycle_count_2[16]~60\)) # (!\one_hz|fpga_cycle_count_2\(17) & ((\one_hz|fpga_cycle_count_2[16]~60\) # (GND)))
-- \one_hz|fpga_cycle_count_2[17]~62\ = CARRY((!\one_hz|fpga_cycle_count_2[16]~60\) # (!\one_hz|fpga_cycle_count_2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(17),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[16]~60\,
	combout => \one_hz|fpga_cycle_count_2[17]~61_combout\,
	cout => \one_hz|fpga_cycle_count_2[17]~62\);

-- Location: FF_X67_Y47_N9
\one_hz|fpga_cycle_count_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[17]~61_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(17));

-- Location: LCCOMB_X67_Y47_N10
\one_hz|fpga_cycle_count_2[18]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[18]~63_combout\ = (\one_hz|fpga_cycle_count_2\(18) & (\one_hz|fpga_cycle_count_2[17]~62\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(18) & (!\one_hz|fpga_cycle_count_2[17]~62\ & VCC))
-- \one_hz|fpga_cycle_count_2[18]~64\ = CARRY((\one_hz|fpga_cycle_count_2\(18) & !\one_hz|fpga_cycle_count_2[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(18),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[17]~62\,
	combout => \one_hz|fpga_cycle_count_2[18]~63_combout\,
	cout => \one_hz|fpga_cycle_count_2[18]~64\);

-- Location: FF_X66_Y48_N19
\one_hz|fpga_cycle_count_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \one_hz|fpga_cycle_count_2[18]~63_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(18));

-- Location: LCCOMB_X67_Y47_N12
\one_hz|fpga_cycle_count_2[19]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[19]~65_combout\ = (\one_hz|fpga_cycle_count_2\(19) & (!\one_hz|fpga_cycle_count_2[18]~64\)) # (!\one_hz|fpga_cycle_count_2\(19) & ((\one_hz|fpga_cycle_count_2[18]~64\) # (GND)))
-- \one_hz|fpga_cycle_count_2[19]~66\ = CARRY((!\one_hz|fpga_cycle_count_2[18]~64\) # (!\one_hz|fpga_cycle_count_2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(19),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[18]~64\,
	combout => \one_hz|fpga_cycle_count_2[19]~65_combout\,
	cout => \one_hz|fpga_cycle_count_2[19]~66\);

-- Location: FF_X67_Y47_N13
\one_hz|fpga_cycle_count_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[19]~65_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(19));

-- Location: LCCOMB_X67_Y47_N14
\one_hz|fpga_cycle_count_2[20]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[20]~67_combout\ = (\one_hz|fpga_cycle_count_2\(20) & (\one_hz|fpga_cycle_count_2[19]~66\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(20) & (!\one_hz|fpga_cycle_count_2[19]~66\ & VCC))
-- \one_hz|fpga_cycle_count_2[20]~68\ = CARRY((\one_hz|fpga_cycle_count_2\(20) & !\one_hz|fpga_cycle_count_2[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(20),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[19]~66\,
	combout => \one_hz|fpga_cycle_count_2[20]~67_combout\,
	cout => \one_hz|fpga_cycle_count_2[20]~68\);

-- Location: FF_X67_Y47_N15
\one_hz|fpga_cycle_count_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[20]~67_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(20));

-- Location: LCCOMB_X67_Y47_N16
\one_hz|fpga_cycle_count_2[21]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[21]~69_combout\ = (\one_hz|fpga_cycle_count_2\(21) & (!\one_hz|fpga_cycle_count_2[20]~68\)) # (!\one_hz|fpga_cycle_count_2\(21) & ((\one_hz|fpga_cycle_count_2[20]~68\) # (GND)))
-- \one_hz|fpga_cycle_count_2[21]~70\ = CARRY((!\one_hz|fpga_cycle_count_2[20]~68\) # (!\one_hz|fpga_cycle_count_2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(21),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[20]~68\,
	combout => \one_hz|fpga_cycle_count_2[21]~69_combout\,
	cout => \one_hz|fpga_cycle_count_2[21]~70\);

-- Location: FF_X67_Y47_N17
\one_hz|fpga_cycle_count_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[21]~69_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(21));

-- Location: LCCOMB_X67_Y47_N18
\one_hz|fpga_cycle_count_2[22]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[22]~71_combout\ = (\one_hz|fpga_cycle_count_2\(22) & (\one_hz|fpga_cycle_count_2[21]~70\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(22) & (!\one_hz|fpga_cycle_count_2[21]~70\ & VCC))
-- \one_hz|fpga_cycle_count_2[22]~72\ = CARRY((\one_hz|fpga_cycle_count_2\(22) & !\one_hz|fpga_cycle_count_2[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(22),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[21]~70\,
	combout => \one_hz|fpga_cycle_count_2[22]~71_combout\,
	cout => \one_hz|fpga_cycle_count_2[22]~72\);

-- Location: FF_X67_Y47_N19
\one_hz|fpga_cycle_count_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[22]~71_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(22));

-- Location: LCCOMB_X67_Y47_N20
\one_hz|fpga_cycle_count_2[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[23]~73_combout\ = (\one_hz|fpga_cycle_count_2\(23) & (!\one_hz|fpga_cycle_count_2[22]~72\)) # (!\one_hz|fpga_cycle_count_2\(23) & ((\one_hz|fpga_cycle_count_2[22]~72\) # (GND)))
-- \one_hz|fpga_cycle_count_2[23]~74\ = CARRY((!\one_hz|fpga_cycle_count_2[22]~72\) # (!\one_hz|fpga_cycle_count_2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(23),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[22]~72\,
	combout => \one_hz|fpga_cycle_count_2[23]~73_combout\,
	cout => \one_hz|fpga_cycle_count_2[23]~74\);

-- Location: FF_X67_Y47_N21
\one_hz|fpga_cycle_count_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[23]~73_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(23));

-- Location: LCCOMB_X67_Y47_N22
\one_hz|fpga_cycle_count_2[24]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[24]~75_combout\ = (\one_hz|fpga_cycle_count_2\(24) & (\one_hz|fpga_cycle_count_2[23]~74\ $ (GND))) # (!\one_hz|fpga_cycle_count_2\(24) & (!\one_hz|fpga_cycle_count_2[23]~74\ & VCC))
-- \one_hz|fpga_cycle_count_2[24]~76\ = CARRY((\one_hz|fpga_cycle_count_2\(24) & !\one_hz|fpga_cycle_count_2[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(24),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[23]~74\,
	combout => \one_hz|fpga_cycle_count_2[24]~75_combout\,
	cout => \one_hz|fpga_cycle_count_2[24]~76\);

-- Location: FF_X67_Y47_N23
\one_hz|fpga_cycle_count_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[24]~75_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(24));

-- Location: LCCOMB_X67_Y47_N24
\one_hz|fpga_cycle_count_2[25]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[25]~77_combout\ = (\one_hz|fpga_cycle_count_2\(25) & (!\one_hz|fpga_cycle_count_2[24]~76\)) # (!\one_hz|fpga_cycle_count_2\(25) & ((\one_hz|fpga_cycle_count_2[24]~76\) # (GND)))
-- \one_hz|fpga_cycle_count_2[25]~78\ = CARRY((!\one_hz|fpga_cycle_count_2[24]~76\) # (!\one_hz|fpga_cycle_count_2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(25),
	datad => VCC,
	cin => \one_hz|fpga_cycle_count_2[24]~76\,
	combout => \one_hz|fpga_cycle_count_2[25]~77_combout\,
	cout => \one_hz|fpga_cycle_count_2[25]~78\);

-- Location: FF_X67_Y47_N25
\one_hz|fpga_cycle_count_2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[25]~77_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(25));

-- Location: LCCOMB_X67_Y47_N26
\one_hz|fpga_cycle_count_2[26]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|fpga_cycle_count_2[26]~79_combout\ = \one_hz|fpga_cycle_count_2\(26) $ (!\one_hz|fpga_cycle_count_2[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(26),
	cin => \one_hz|fpga_cycle_count_2[25]~78\,
	combout => \one_hz|fpga_cycle_count_2[26]~79_combout\);

-- Location: FF_X67_Y47_N27
\one_hz|fpga_cycle_count_2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|fpga_cycle_count_2[26]~79_combout\,
	sclr => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|fpga_cycle_count_2\(26));

-- Location: LCCOMB_X66_Y48_N30
\one_hz|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~5_combout\ = ((!\one_hz|fpga_cycle_count_2\(20)) # (!\one_hz|fpga_cycle_count_2\(22))) # (!\one_hz|fpga_cycle_count_2\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(21),
	datac => \one_hz|fpga_cycle_count_2\(22),
	datad => \one_hz|fpga_cycle_count_2\(20),
	combout => \one_hz|LessThan1~5_combout\);

-- Location: LCCOMB_X66_Y48_N28
\one_hz|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~4_combout\ = (((!\one_hz|fpga_cycle_count_2\(16) & !\one_hz|fpga_cycle_count_2\(17))) # (!\one_hz|fpga_cycle_count_2\(19))) # (!\one_hz|fpga_cycle_count_2\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(18),
	datab => \one_hz|fpga_cycle_count_2\(16),
	datac => \one_hz|fpga_cycle_count_2\(19),
	datad => \one_hz|fpga_cycle_count_2\(17),
	combout => \one_hz|LessThan1~4_combout\);

-- Location: LCCOMB_X66_Y48_N4
\one_hz|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~6_combout\ = ((!\one_hz|fpga_cycle_count_2\(23) & ((\one_hz|LessThan1~5_combout\) # (\one_hz|LessThan1~4_combout\)))) # (!\one_hz|fpga_cycle_count_2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(24),
	datab => \one_hz|fpga_cycle_count_2\(23),
	datac => \one_hz|LessThan1~5_combout\,
	datad => \one_hz|LessThan1~4_combout\,
	combout => \one_hz|LessThan1~6_combout\);

-- Location: LCCOMB_X67_Y48_N4
\one_hz|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~2_combout\ = (!\one_hz|fpga_cycle_count_2\(7) & (!\one_hz|fpga_cycle_count_2\(6) & (!\one_hz|fpga_cycle_count_2\(8) & !\one_hz|fpga_cycle_count_2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(7),
	datab => \one_hz|fpga_cycle_count_2\(6),
	datac => \one_hz|fpga_cycle_count_2\(8),
	datad => \one_hz|fpga_cycle_count_2\(9),
	combout => \one_hz|LessThan1~2_combout\);

-- Location: LCCOMB_X67_Y47_N28
\one_hz|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~0_combout\ = (!\one_hz|fpga_cycle_count_2\(15) & (!\one_hz|fpga_cycle_count_2\(17) & !\one_hz|fpga_cycle_count_2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \one_hz|fpga_cycle_count_2\(15),
	datac => \one_hz|fpga_cycle_count_2\(17),
	datad => \one_hz|fpga_cycle_count_2\(23),
	combout => \one_hz|LessThan1~0_combout\);

-- Location: LCCOMB_X67_Y47_N30
\one_hz|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~1_combout\ = (((!\one_hz|fpga_cycle_count_2\(13)) # (!\one_hz|fpga_cycle_count_2\(12))) # (!\one_hz|fpga_cycle_count_2\(14))) # (!\one_hz|fpga_cycle_count_2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(11),
	datab => \one_hz|fpga_cycle_count_2\(14),
	datac => \one_hz|fpga_cycle_count_2\(12),
	datad => \one_hz|fpga_cycle_count_2\(13),
	combout => \one_hz|LessThan1~1_combout\);

-- Location: LCCOMB_X67_Y48_N0
\one_hz|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~3_combout\ = (\one_hz|LessThan1~0_combout\ & ((\one_hz|LessThan1~1_combout\) # ((!\one_hz|fpga_cycle_count_2\(10) & \one_hz|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(10),
	datab => \one_hz|LessThan1~2_combout\,
	datac => \one_hz|LessThan1~0_combout\,
	datad => \one_hz|LessThan1~1_combout\,
	combout => \one_hz|LessThan1~3_combout\);

-- Location: LCCOMB_X67_Y48_N2
\one_hz|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \one_hz|LessThan1~7_combout\ = (\one_hz|fpga_cycle_count_2\(25)) # ((\one_hz|fpga_cycle_count_2\(26)) # ((!\one_hz|LessThan1~6_combout\ & !\one_hz|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one_hz|fpga_cycle_count_2\(25),
	datab => \one_hz|fpga_cycle_count_2\(26),
	datac => \one_hz|LessThan1~6_combout\,
	datad => \one_hz|LessThan1~3_combout\,
	combout => \one_hz|LessThan1~7_combout\);

-- Location: FF_X67_Y48_N3
\one_hz|two_hz_clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \one_hz|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_hz|two_hz_clk_out~q\);

-- Location: IOIBUF_X46_Y54_N29
\KEY_0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_0,
	o => \KEY_0~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\KEY_1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_1,
	o => \KEY_1~input_o\);

-- Location: LCCOMB_X70_Y51_N26
\increment_minute~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \increment_minute~0_combout\ = (\SW_9~input_o\ & (((\increment_minute~q\)))) # (!\SW_9~input_o\ & (!\KEY_0~input_o\ & ((\KEY_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_0~input_o\,
	datab => \SW_9~input_o\,
	datac => \increment_minute~q\,
	datad => \KEY_1~input_o\,
	combout => \increment_minute~0_combout\);

-- Location: FF_X70_Y51_N27
increment_minute : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|two_hz_clk_out~q\,
	d => \increment_minute~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \increment_minute~q\);

-- Location: LCCOMB_X70_Y51_N18
\t_incrementer|min_clk_in\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_clk_in~combout\ = LCELL((\SW_9~input_o\ & (\update_count~q\)) # (!\SW_9~input_o\ & ((\increment_minute~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \update_count~q\,
	datac => \increment_minute~q\,
	datad => \SW_9~input_o\,
	combout => \t_incrementer|min_clk_in~combout\);

-- Location: CLKCTRL_G11
\t_incrementer|min_clk_in~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \t_incrementer|min_clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \t_incrementer|min_clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X69_Y51_N0
\t_incrementer|min_controller|min_unit_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_unit_out[0]~2_combout\ = !\t_buffer|min_unit_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t_buffer|min_unit_out\(0),
	combout => \t_incrementer|min_controller|min_unit_out[0]~2_combout\);

-- Location: LCCOMB_X69_Y51_N30
\t_incrementer|min_controller|min_unit_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_unit_out[0]~feeder_combout\ = \t_incrementer|min_controller|min_unit_out[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_incrementer|min_controller|min_unit_out[0]~2_combout\,
	combout => \t_incrementer|min_controller|min_unit_out[0]~feeder_combout\);

-- Location: FF_X69_Y51_N31
\t_incrementer|min_controller|min_unit_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_unit_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_unit_out\(0));

-- Location: FF_X69_Y51_N21
\t_buffer|min_unit_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_unit_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_unit_out\(0));

-- Location: LCCOMB_X69_Y51_N18
\t_incrementer|min_controller|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|Add0~0_combout\ = \t_buffer|min_unit_out\(2) $ (((\t_buffer|min_unit_out\(1) & \t_buffer|min_unit_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(1),
	datac => \t_buffer|min_unit_out\(2),
	datad => \t_buffer|min_unit_out\(0),
	combout => \t_incrementer|min_controller|Add0~0_combout\);

-- Location: LCCOMB_X69_Y51_N4
\t_incrementer|min_controller|min_unit_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_unit_out[2]~feeder_combout\ = \t_incrementer|min_controller|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_incrementer|min_controller|Add0~0_combout\,
	combout => \t_incrementer|min_controller|min_unit_out[2]~feeder_combout\);

-- Location: FF_X69_Y51_N5
\t_incrementer|min_controller|min_unit_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_unit_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_unit_out\(2));

-- Location: FF_X69_Y51_N17
\t_buffer|min_unit_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_unit_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_unit_out\(2));

-- Location: LCCOMB_X69_Y51_N12
\t_incrementer|min_controller|min_unit_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_unit_out~0_combout\ = (\t_buffer|min_unit_out\(1) & (!\t_buffer|min_unit_out\(0))) # (!\t_buffer|min_unit_out\(1) & (\t_buffer|min_unit_out\(0) & ((\t_buffer|min_unit_out\(2)) # (!\t_buffer|min_unit_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(1),
	datab => \t_buffer|min_unit_out\(0),
	datac => \t_buffer|min_unit_out\(2),
	datad => \t_buffer|min_unit_out\(3),
	combout => \t_incrementer|min_controller|min_unit_out~0_combout\);

-- Location: LCCOMB_X69_Y51_N14
\t_incrementer|min_controller|min_unit_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_unit_out[1]~feeder_combout\ = \t_incrementer|min_controller|min_unit_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_incrementer|min_controller|min_unit_out~0_combout\,
	combout => \t_incrementer|min_controller|min_unit_out[1]~feeder_combout\);

-- Location: FF_X69_Y51_N15
\t_incrementer|min_controller|min_unit_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_unit_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_unit_out\(1));

-- Location: FF_X69_Y51_N9
\t_buffer|min_unit_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_unit_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_unit_out\(1));

-- Location: LCCOMB_X69_Y51_N10
\t_incrementer|min_controller|min_unit_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_unit_out~1_combout\ = (\t_buffer|min_unit_out\(1) & (\t_buffer|min_unit_out\(3) $ (((\t_buffer|min_unit_out\(2) & \t_buffer|min_unit_out\(0)))))) # (!\t_buffer|min_unit_out\(1) & (\t_buffer|min_unit_out\(3) & 
-- ((\t_buffer|min_unit_out\(2)) # (!\t_buffer|min_unit_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(1),
	datab => \t_buffer|min_unit_out\(3),
	datac => \t_buffer|min_unit_out\(2),
	datad => \t_buffer|min_unit_out\(0),
	combout => \t_incrementer|min_controller|min_unit_out~1_combout\);

-- Location: LCCOMB_X69_Y51_N22
\t_incrementer|min_controller|min_unit_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_unit_out[3]~feeder_combout\ = \t_incrementer|min_controller|min_unit_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_incrementer|min_controller|min_unit_out~1_combout\,
	combout => \t_incrementer|min_controller|min_unit_out[3]~feeder_combout\);

-- Location: FF_X69_Y51_N23
\t_incrementer|min_controller|min_unit_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_unit_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_unit_out\(3));

-- Location: FF_X69_Y51_N27
\t_buffer|min_unit_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_unit_out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_unit_out\(3));

-- Location: LCCOMB_X69_Y51_N6
\t_incrementer|min_controller|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|Equal0~0_combout\ = (\t_buffer|min_unit_out\(3) & (!\t_buffer|min_unit_out\(2) & (!\t_buffer|min_unit_out\(1) & \t_buffer|min_unit_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(3),
	datab => \t_buffer|min_unit_out\(2),
	datac => \t_buffer|min_unit_out\(1),
	datad => \t_buffer|min_unit_out\(0),
	combout => \t_incrementer|min_controller|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y51_N10
\t_incrementer|min_controller|min_tens_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_tens_out[0]~2_combout\ = !\t_buffer|min_tens_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_buffer|min_tens_out\(0),
	combout => \t_incrementer|min_controller|min_tens_out[0]~2_combout\);

-- Location: LCCOMB_X71_Y51_N14
\t_incrementer|min_controller|min_tens_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_tens_out[0]~feeder_combout\ = \t_incrementer|min_controller|min_tens_out[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_incrementer|min_controller|min_tens_out[0]~2_combout\,
	combout => \t_incrementer|min_controller|min_tens_out[0]~feeder_combout\);

-- Location: FF_X71_Y51_N15
\t_incrementer|min_controller|min_tens_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_tens_out[0]~feeder_combout\,
	ena => \t_incrementer|min_controller|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_tens_out\(0));

-- Location: FF_X71_Y51_N25
\t_buffer|min_tens_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_tens_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_tens_out\(0));

-- Location: LCCOMB_X71_Y51_N6
\t_incrementer|min_controller|min_tens_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_tens_out~1_combout\ = (\t_buffer|min_tens_out\(0) & ((\t_buffer|min_tens_out\(1) & ((!\t_buffer|min_tens_out\(2)))) # (!\t_buffer|min_tens_out\(1) & (\t_buffer|min_tens_out\(3) & \t_buffer|min_tens_out\(2))))) # 
-- (!\t_buffer|min_tens_out\(0) & (((\t_buffer|min_tens_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(0),
	datab => \t_buffer|min_tens_out\(1),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(2),
	combout => \t_incrementer|min_controller|min_tens_out~1_combout\);

-- Location: LCCOMB_X71_Y51_N22
\t_incrementer|min_controller|min_tens_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_tens_out[2]~feeder_combout\ = \t_incrementer|min_controller|min_tens_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_incrementer|min_controller|min_tens_out~1_combout\,
	combout => \t_incrementer|min_controller|min_tens_out[2]~feeder_combout\);

-- Location: FF_X71_Y51_N23
\t_incrementer|min_controller|min_tens_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_tens_out[2]~feeder_combout\,
	ena => \t_incrementer|min_controller|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_tens_out\(2));

-- Location: FF_X71_Y51_N3
\t_buffer|min_tens_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_tens_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_tens_out\(2));

-- Location: LCCOMB_X71_Y51_N18
\t_incrementer|min_controller|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|Add1~0_combout\ = \t_buffer|min_tens_out\(3) $ (((\t_buffer|min_tens_out\(0) & (\t_buffer|min_tens_out\(1) & \t_buffer|min_tens_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(0),
	datab => \t_buffer|min_tens_out\(1),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(2),
	combout => \t_incrementer|min_controller|Add1~0_combout\);

-- Location: LCCOMB_X71_Y51_N4
\t_incrementer|min_controller|min_tens_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_tens_out[3]~feeder_combout\ = \t_incrementer|min_controller|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_incrementer|min_controller|Add1~0_combout\,
	combout => \t_incrementer|min_controller|min_tens_out[3]~feeder_combout\);

-- Location: FF_X71_Y51_N5
\t_incrementer|min_controller|min_tens_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_tens_out[3]~feeder_combout\,
	ena => \t_incrementer|min_controller|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_tens_out\(3));

-- Location: FF_X71_Y51_N9
\t_buffer|min_tens_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_tens_out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_tens_out\(3));

-- Location: LCCOMB_X71_Y51_N0
\t_incrementer|min_controller|min_tens_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_tens_out~0_combout\ = (\t_buffer|min_tens_out\(0) & (!\t_buffer|min_tens_out\(1) & ((\t_buffer|min_tens_out\(3)) # (!\t_buffer|min_tens_out\(2))))) # (!\t_buffer|min_tens_out\(0) & (\t_buffer|min_tens_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(0),
	datab => \t_buffer|min_tens_out\(1),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(2),
	combout => \t_incrementer|min_controller|min_tens_out~0_combout\);

-- Location: LCCOMB_X71_Y51_N26
\t_incrementer|min_controller|min_tens_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|min_tens_out[1]~feeder_combout\ = \t_incrementer|min_controller|min_tens_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_incrementer|min_controller|min_tens_out~0_combout\,
	combout => \t_incrementer|min_controller|min_tens_out[1]~feeder_combout\);

-- Location: FF_X71_Y51_N27
\t_incrementer|min_controller|min_tens_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~clkctrl_outclk\,
	d => \t_incrementer|min_controller|min_tens_out[1]~feeder_combout\,
	ena => \t_incrementer|min_controller|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|min_tens_out\(1));

-- Location: FF_X71_Y51_N31
\t_buffer|min_tens_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|min_controller|min_tens_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|min_tens_out\(1));

-- Location: LCCOMB_X71_Y51_N16
\t_incrementer|min_controller|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|Equal1~0_combout\ = (!\t_buffer|min_tens_out\(1) & (\t_buffer|min_tens_out\(2) & (!\t_buffer|min_tens_out\(3) & \t_buffer|min_tens_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(1),
	datab => \t_buffer|min_tens_out\(2),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(0),
	combout => \t_incrementer|min_controller|Equal1~0_combout\);

-- Location: LCCOMB_X70_Y51_N6
\t_incrementer|min_controller|incr_hour~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|min_controller|incr_hour~0_combout\ = (\t_incrementer|min_controller|Equal0~0_combout\ & \t_incrementer|min_controller|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_incrementer|min_controller|Equal0~0_combout\,
	datad => \t_incrementer|min_controller|Equal1~0_combout\,
	combout => \t_incrementer|min_controller|incr_hour~0_combout\);

-- Location: FF_X70_Y51_N7
\t_incrementer|min_controller|incr_hour\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|min_clk_in~combout\,
	d => \t_incrementer|min_controller|incr_hour~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|min_controller|incr_hour~q\);

-- Location: LCCOMB_X70_Y51_N22
\increment_hour~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \increment_hour~0_combout\ = (\SW_9~input_o\ & (((\increment_hour~q\)))) # (!\SW_9~input_o\ & (\KEY_0~input_o\ & ((!\KEY_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_0~input_o\,
	datab => \SW_9~input_o\,
	datac => \increment_hour~q\,
	datad => \KEY_1~input_o\,
	combout => \increment_hour~0_combout\);

-- Location: FF_X70_Y51_N23
increment_hour : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|two_hz_clk_out~q\,
	d => \increment_hour~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \increment_hour~q\);

-- Location: LCCOMB_X70_Y51_N30
\t_incrementer|hour_clk_in\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hour_clk_in~combout\ = LCELL((\SW_9~input_o\ & (\t_incrementer|min_controller|incr_hour~q\)) # (!\SW_9~input_o\ & ((\increment_hour~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_incrementer|min_controller|incr_hour~q\,
	datac => \increment_hour~q\,
	datad => \SW_9~input_o\,
	combout => \t_incrementer|hour_clk_in~combout\);

-- Location: CLKCTRL_G13
\t_incrementer|hour_clk_in~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \t_incrementer|hour_clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \t_incrementer|hour_clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X76_Y38_N20
\t_incrementer|hr_controller|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|Add0~1_combout\ = \t_buffer|hour_tens_out\(3) $ (((\t_buffer|hour_tens_out\(2) & (\t_buffer|hour_tens_out\(0) & \t_buffer|hour_tens_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(2),
	datab => \t_buffer|hour_tens_out\(0),
	datac => \t_buffer|hour_tens_out\(3),
	datad => \t_buffer|hour_tens_out\(1),
	combout => \t_incrementer|hr_controller|Add0~1_combout\);

-- Location: LCCOMB_X76_Y38_N30
\t_incrementer|hr_controller|hr_tens_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out[3]~feeder_combout\ = \t_incrementer|hr_controller|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_incrementer|hr_controller|Add0~1_combout\,
	combout => \t_incrementer|hr_controller|hr_tens_out[3]~feeder_combout\);

-- Location: LCCOMB_X77_Y38_N12
\t_incrementer|hr_controller|hr_unit_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_unit_out[0]~7_combout\ = !\t_buffer|hour_unit_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t_buffer|hour_unit_out\(0),
	combout => \t_incrementer|hr_controller|hr_unit_out[0]~7_combout\);

-- Location: LCCOMB_X77_Y38_N8
\t_incrementer|hr_controller|hr_unit_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_unit_out[0]~feeder_combout\ = \t_incrementer|hr_controller|hr_unit_out[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t_incrementer|hr_controller|hr_unit_out[0]~7_combout\,
	combout => \t_incrementer|hr_controller|hr_unit_out[0]~feeder_combout\);

-- Location: FF_X77_Y38_N9
\t_incrementer|hr_controller|hr_unit_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	d => \t_incrementer|hr_controller|hr_unit_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_unit_out\(0));

-- Location: FF_X77_Y38_N3
\t_buffer|hour_unit_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_unit_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_unit_out\(0));

-- Location: LCCOMB_X76_Y38_N6
\t_incrementer|hr_controller|hr_tens_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out~1_combout\ = (\t_buffer|hour_tens_out\(3)) # ((\t_buffer|hour_tens_out\(2)) # ((\t_buffer|hour_tens_out\(0)) # (!\t_buffer|hour_tens_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(3),
	datab => \t_buffer|hour_tens_out\(2),
	datac => \t_buffer|hour_tens_out\(0),
	datad => \t_buffer|hour_tens_out\(1),
	combout => \t_incrementer|hr_controller|hr_tens_out~1_combout\);

-- Location: LCCOMB_X77_Y38_N18
\t_incrementer|hr_controller|hr_unit_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_unit_out~5_combout\ = (\t_buffer|hour_unit_out\(1) & (((!\t_buffer|hour_unit_out\(0))))) # (!\t_buffer|hour_unit_out\(1) & (\t_buffer|hour_unit_out\(0) & ((!\t_incrementer|hr_controller|hr_tens_out~1_combout\) # 
-- (!\t_incrementer|hr_controller|hr_tens_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(1),
	datab => \t_incrementer|hr_controller|hr_tens_out~2_combout\,
	datac => \t_incrementer|hr_controller|hr_tens_out~1_combout\,
	datad => \t_buffer|hour_unit_out\(0),
	combout => \t_incrementer|hr_controller|hr_unit_out~5_combout\);

-- Location: LCCOMB_X77_Y38_N22
\t_incrementer|hr_controller|hr_unit_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_unit_out[1]~feeder_combout\ = \t_incrementer|hr_controller|hr_unit_out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_incrementer|hr_controller|hr_unit_out~5_combout\,
	combout => \t_incrementer|hr_controller|hr_unit_out[1]~feeder_combout\);

-- Location: FF_X77_Y38_N23
\t_incrementer|hr_controller|hr_unit_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	d => \t_incrementer|hr_controller|hr_unit_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_unit_out\(1));

-- Location: FF_X77_Y38_N13
\t_buffer|hour_unit_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_unit_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_unit_out\(1));

-- Location: LCCOMB_X77_Y38_N14
\t_incrementer|hr_controller|hr_unit_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_unit_out~6_combout\ = (!\t_incrementer|hr_controller|hr_tens_out~3_combout\ & (\t_buffer|hour_unit_out\(2) $ (((\t_buffer|hour_unit_out\(1) & \t_buffer|hour_unit_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(1),
	datab => \t_incrementer|hr_controller|hr_tens_out~3_combout\,
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(2),
	combout => \t_incrementer|hr_controller|hr_unit_out~6_combout\);

-- Location: FF_X77_Y38_N15
\t_incrementer|hr_controller|hr_unit_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	d => \t_incrementer|hr_controller|hr_unit_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_unit_out\(2));

-- Location: FF_X77_Y38_N21
\t_buffer|hour_unit_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_unit_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_unit_out\(2));

-- Location: LCCOMB_X77_Y38_N20
\t_incrementer|hr_controller|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|Add1~0_combout\ = (\t_buffer|hour_unit_out\(0) & \t_buffer|hour_unit_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(1),
	combout => \t_incrementer|hr_controller|Add1~0_combout\);

-- Location: LCCOMB_X77_Y38_N10
\t_incrementer|hr_controller|hr_unit_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_unit_out~4_combout\ = (!\t_incrementer|hr_controller|hr_tens_out~3_combout\ & (\t_buffer|hour_unit_out\(3) $ (((\t_incrementer|hr_controller|Add1~0_combout\ & \t_buffer|hour_unit_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_incrementer|hr_controller|Add1~0_combout\,
	datab => \t_incrementer|hr_controller|hr_tens_out~3_combout\,
	datac => \t_buffer|hour_unit_out\(3),
	datad => \t_buffer|hour_unit_out\(2),
	combout => \t_incrementer|hr_controller|hr_unit_out~4_combout\);

-- Location: FF_X77_Y38_N11
\t_incrementer|hr_controller|hr_unit_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	d => \t_incrementer|hr_controller|hr_unit_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_unit_out\(3));

-- Location: LCCOMB_X77_Y38_N26
\t_buffer|hour_unit_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_buffer|hour_unit_out[3]~feeder_combout\ = \t_incrementer|hr_controller|hr_unit_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t_incrementer|hr_controller|hr_unit_out\(3),
	combout => \t_buffer|hour_unit_out[3]~feeder_combout\);

-- Location: FF_X77_Y38_N27
\t_buffer|hour_unit_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	d => \t_buffer|hour_unit_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_unit_out\(3));

-- Location: LCCOMB_X77_Y38_N28
\t_incrementer|hr_controller|hr_tens_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out~2_combout\ = (!\t_buffer|hour_unit_out\(2) & (\t_buffer|hour_unit_out\(1) $ (\t_buffer|hour_unit_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datac => \t_buffer|hour_unit_out\(1),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \t_incrementer|hr_controller|hr_tens_out~2_combout\);

-- Location: LCCOMB_X76_Y38_N12
\t_incrementer|hr_controller|hr_tens_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out~3_combout\ = (\t_buffer|hour_unit_out\(0) & (\t_incrementer|hr_controller|hr_tens_out~2_combout\ & (\t_incrementer|hr_controller|hr_tens_out~1_combout\ $ (\t_buffer|hour_unit_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(0),
	datab => \t_incrementer|hr_controller|hr_tens_out~2_combout\,
	datac => \t_incrementer|hr_controller|hr_tens_out~1_combout\,
	datad => \t_buffer|hour_unit_out\(1),
	combout => \t_incrementer|hr_controller|hr_tens_out~3_combout\);

-- Location: FF_X76_Y38_N31
\t_incrementer|hr_controller|hr_tens_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	d => \t_incrementer|hr_controller|hr_tens_out[3]~feeder_combout\,
	ena => \t_incrementer|hr_controller|hr_tens_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_tens_out\(3));

-- Location: FF_X76_Y38_N3
\t_buffer|hour_tens_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_tens_out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_tens_out\(3));

-- Location: LCCOMB_X76_Y38_N24
\t_incrementer|hr_controller|hr_tens_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out~4_combout\ = (\t_buffer|hour_tens_out\(0) & (((!\t_buffer|hour_tens_out\(1))))) # (!\t_buffer|hour_tens_out\(0) & (\t_buffer|hour_tens_out\(1) & ((\t_buffer|hour_tens_out\(2)) # (\t_buffer|hour_tens_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(2),
	datab => \t_buffer|hour_tens_out\(0),
	datac => \t_buffer|hour_tens_out\(3),
	datad => \t_buffer|hour_tens_out\(1),
	combout => \t_incrementer|hr_controller|hr_tens_out~4_combout\);

-- Location: FF_X76_Y38_N15
\t_incrementer|hr_controller|hr_tens_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_tens_out~4_combout\,
	sload => VCC,
	ena => \t_incrementer|hr_controller|hr_tens_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_tens_out\(1));

-- Location: FF_X76_Y38_N19
\t_buffer|hour_tens_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_tens_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_tens_out\(1));

-- Location: LCCOMB_X76_Y38_N26
\t_incrementer|hr_controller|hr_tens_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out~0_combout\ = (!\t_buffer|hour_tens_out\(0) & ((\t_buffer|hour_tens_out\(2)) # ((\t_buffer|hour_tens_out\(3)) # (!\t_buffer|hour_tens_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(2),
	datab => \t_buffer|hour_tens_out\(1),
	datac => \t_buffer|hour_tens_out\(3),
	datad => \t_buffer|hour_tens_out\(0),
	combout => \t_incrementer|hr_controller|hr_tens_out~0_combout\);

-- Location: LCCOMB_X76_Y38_N8
\t_incrementer|hr_controller|hr_tens_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out[0]~feeder_combout\ = \t_incrementer|hr_controller|hr_tens_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_incrementer|hr_controller|hr_tens_out~0_combout\,
	combout => \t_incrementer|hr_controller|hr_tens_out[0]~feeder_combout\);

-- Location: FF_X76_Y38_N9
\t_incrementer|hr_controller|hr_tens_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	d => \t_incrementer|hr_controller|hr_tens_out[0]~feeder_combout\,
	ena => \t_incrementer|hr_controller|hr_tens_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_tens_out\(0));

-- Location: FF_X76_Y38_N11
\t_buffer|hour_tens_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_tens_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_tens_out\(0));

-- Location: LCCOMB_X76_Y38_N2
\t_incrementer|hr_controller|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|Add0~0_combout\ = \t_buffer|hour_tens_out\(2) $ (((\t_buffer|hour_tens_out\(0) & \t_buffer|hour_tens_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(2),
	datab => \t_buffer|hour_tens_out\(0),
	datad => \t_buffer|hour_tens_out\(1),
	combout => \t_incrementer|hr_controller|Add0~0_combout\);

-- Location: LCCOMB_X76_Y38_N22
\t_incrementer|hr_controller|hr_tens_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t_incrementer|hr_controller|hr_tens_out[2]~feeder_combout\ = \t_incrementer|hr_controller|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_incrementer|hr_controller|Add0~0_combout\,
	combout => \t_incrementer|hr_controller|hr_tens_out[2]~feeder_combout\);

-- Location: FF_X76_Y38_N23
\t_incrementer|hr_controller|hr_tens_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t_incrementer|hour_clk_in~clkctrl_outclk\,
	d => \t_incrementer|hr_controller|hr_tens_out[2]~feeder_combout\,
	ena => \t_incrementer|hr_controller|hr_tens_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_incrementer|hr_controller|hr_tens_out\(2));

-- Location: FF_X76_Y38_N1
\t_buffer|hour_tens_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_FPGA~inputclkctrl_outclk\,
	asdata => \t_incrementer|hr_controller|hr_tens_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_buffer|hour_tens_out\(2));

-- Location: LCCOMB_X76_Y38_N16
\hour_tens_seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_tens_seg|Mux6~0_combout\ = (!\t_buffer|hour_tens_out\(1) & (!\t_buffer|hour_tens_out\(3) & (\t_buffer|hour_tens_out\(2) $ (\t_buffer|hour_tens_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(2),
	datab => \t_buffer|hour_tens_out\(1),
	datac => \t_buffer|hour_tens_out\(0),
	datad => \t_buffer|hour_tens_out\(3),
	combout => \hour_tens_seg|Mux6~0_combout\);

-- Location: LCCOMB_X76_Y38_N4
\hour_tens_seg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_tens_seg|Mux5~0_combout\ = (\t_buffer|hour_tens_out\(2) & ((\t_buffer|hour_tens_out\(3)) # (\t_buffer|hour_tens_out\(1) $ (\t_buffer|hour_tens_out\(0))))) # (!\t_buffer|hour_tens_out\(2) & (\t_buffer|hour_tens_out\(1) & 
-- ((\t_buffer|hour_tens_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(2),
	datab => \t_buffer|hour_tens_out\(1),
	datac => \t_buffer|hour_tens_out\(0),
	datad => \t_buffer|hour_tens_out\(3),
	combout => \hour_tens_seg|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y38_N4
\hour_tens_seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_tens_seg|Mux4~0_combout\ = (\t_buffer|hour_tens_out\(2) & (\t_buffer|hour_tens_out\(3))) # (!\t_buffer|hour_tens_out\(2) & (\t_buffer|hour_tens_out\(1) & ((\t_buffer|hour_tens_out\(3)) # (!\t_buffer|hour_tens_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(3),
	datab => \t_buffer|hour_tens_out\(1),
	datac => \t_buffer|hour_tens_out\(2),
	datad => \t_buffer|hour_tens_out\(0),
	combout => \hour_tens_seg|Mux4~0_combout\);

-- Location: LCCOMB_X76_Y38_N10
\hour_tens_seg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_tens_seg|Mux3~0_combout\ = (\t_buffer|hour_tens_out\(2) & (!\t_buffer|hour_tens_out\(3) & (\t_buffer|hour_tens_out\(1) $ (!\t_buffer|hour_tens_out\(0))))) # (!\t_buffer|hour_tens_out\(2) & (((!\t_buffer|hour_tens_out\(1) & 
-- \t_buffer|hour_tens_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(3),
	datab => \t_buffer|hour_tens_out\(1),
	datac => \t_buffer|hour_tens_out\(0),
	datad => \t_buffer|hour_tens_out\(2),
	combout => \hour_tens_seg|Mux3~0_combout\);

-- Location: LCCOMB_X76_Y38_N28
\hour_tens_seg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_tens_seg|Mux2~0_combout\ = (\t_buffer|hour_tens_out\(1) & (((\t_buffer|hour_tens_out\(0) & !\t_buffer|hour_tens_out\(3))))) # (!\t_buffer|hour_tens_out\(1) & ((\t_buffer|hour_tens_out\(2) & ((!\t_buffer|hour_tens_out\(3)))) # 
-- (!\t_buffer|hour_tens_out\(2) & (\t_buffer|hour_tens_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(2),
	datab => \t_buffer|hour_tens_out\(1),
	datac => \t_buffer|hour_tens_out\(0),
	datad => \t_buffer|hour_tens_out\(3),
	combout => \hour_tens_seg|Mux2~0_combout\);

-- Location: LCCOMB_X76_Y38_N0
\hour_tens_seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_tens_seg|Mux1~0_combout\ = (!\t_buffer|hour_tens_out\(3) & ((\t_buffer|hour_tens_out\(0) & ((\t_buffer|hour_tens_out\(1)) # (!\t_buffer|hour_tens_out\(2)))) # (!\t_buffer|hour_tens_out\(0) & (!\t_buffer|hour_tens_out\(2) & 
-- \t_buffer|hour_tens_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(3),
	datab => \t_buffer|hour_tens_out\(0),
	datac => \t_buffer|hour_tens_out\(2),
	datad => \t_buffer|hour_tens_out\(1),
	combout => \hour_tens_seg|Mux1~0_combout\);

-- Location: LCCOMB_X76_Y38_N18
\hour_tens_seg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_tens_seg|Mux0~0_combout\ = (\t_buffer|hour_tens_out\(3)) # ((\t_buffer|hour_tens_out\(1) & ((!\t_buffer|hour_tens_out\(2)) # (!\t_buffer|hour_tens_out\(0)))) # (!\t_buffer|hour_tens_out\(1) & ((\t_buffer|hour_tens_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_tens_out\(3),
	datab => \t_buffer|hour_tens_out\(0),
	datac => \t_buffer|hour_tens_out\(1),
	datad => \t_buffer|hour_tens_out\(2),
	combout => \hour_tens_seg|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y38_N2
\hour_unit_seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_unit_seg|Mux6~0_combout\ = (!\t_buffer|hour_unit_out\(1) & (!\t_buffer|hour_unit_out\(3) & (\t_buffer|hour_unit_out\(2) $ (\t_buffer|hour_unit_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datab => \t_buffer|hour_unit_out\(1),
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \hour_unit_seg|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y38_N6
\hour_unit_seg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_unit_seg|Mux5~0_combout\ = (\t_buffer|hour_unit_out\(2) & ((\t_buffer|hour_unit_out\(3)) # (\t_buffer|hour_unit_out\(1) $ (\t_buffer|hour_unit_out\(0))))) # (!\t_buffer|hour_unit_out\(2) & (\t_buffer|hour_unit_out\(1) & 
-- ((\t_buffer|hour_unit_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datab => \t_buffer|hour_unit_out\(1),
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \hour_unit_seg|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y38_N24
\hour_unit_seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_unit_seg|Mux4~0_combout\ = (\t_buffer|hour_unit_out\(2) & (((\t_buffer|hour_unit_out\(3))))) # (!\t_buffer|hour_unit_out\(2) & (\t_buffer|hour_unit_out\(1) & ((\t_buffer|hour_unit_out\(3)) # (!\t_buffer|hour_unit_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datab => \t_buffer|hour_unit_out\(1),
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \hour_unit_seg|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y38_N30
\hour_unit_seg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_unit_seg|Mux3~0_combout\ = (\t_buffer|hour_unit_out\(2) & (!\t_buffer|hour_unit_out\(3) & (\t_buffer|hour_unit_out\(1) $ (!\t_buffer|hour_unit_out\(0))))) # (!\t_buffer|hour_unit_out\(2) & (!\t_buffer|hour_unit_out\(1) & 
-- (\t_buffer|hour_unit_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datab => \t_buffer|hour_unit_out\(1),
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \hour_unit_seg|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y38_N16
\hour_unit_seg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_unit_seg|Mux2~0_combout\ = (\t_buffer|hour_unit_out\(1) & (((\t_buffer|hour_unit_out\(0) & !\t_buffer|hour_unit_out\(3))))) # (!\t_buffer|hour_unit_out\(1) & ((\t_buffer|hour_unit_out\(2) & ((!\t_buffer|hour_unit_out\(3)))) # 
-- (!\t_buffer|hour_unit_out\(2) & (\t_buffer|hour_unit_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datab => \t_buffer|hour_unit_out\(1),
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \hour_unit_seg|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y38_N0
\hour_unit_seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_unit_seg|Mux1~0_combout\ = (!\t_buffer|hour_unit_out\(3) & ((\t_buffer|hour_unit_out\(2) & (\t_buffer|hour_unit_out\(1) & \t_buffer|hour_unit_out\(0))) # (!\t_buffer|hour_unit_out\(2) & ((\t_buffer|hour_unit_out\(1)) # 
-- (\t_buffer|hour_unit_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datab => \t_buffer|hour_unit_out\(1),
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \hour_unit_seg|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y38_N4
\hour_unit_seg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_unit_seg|Mux0~0_combout\ = (\t_buffer|hour_unit_out\(3)) # ((\t_buffer|hour_unit_out\(2) & ((!\t_buffer|hour_unit_out\(0)) # (!\t_buffer|hour_unit_out\(1)))) # (!\t_buffer|hour_unit_out\(2) & (\t_buffer|hour_unit_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|hour_unit_out\(2),
	datab => \t_buffer|hour_unit_out\(1),
	datac => \t_buffer|hour_unit_out\(0),
	datad => \t_buffer|hour_unit_out\(3),
	combout => \hour_unit_seg|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y51_N0
\s_ind|point~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_ind|point~0_combout\ = (!\SW_9~input_o\) # (!\s_ind|point~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_ind|point~q\,
	datad => \SW_9~input_o\,
	combout => \s_ind|point~0_combout\);

-- Location: FF_X70_Y51_N1
\s_ind|point\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \one_hz|two_hz_clk_out~q\,
	d => \s_ind|point~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_ind|point~q\);

-- Location: LCCOMB_X71_Y51_N12
\min_tens_seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_tens_seg|Mux6~0_combout\ = (!\t_buffer|min_tens_out\(3) & (!\t_buffer|min_tens_out\(1) & (\t_buffer|min_tens_out\(0) $ (\t_buffer|min_tens_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(0),
	datab => \t_buffer|min_tens_out\(2),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(1),
	combout => \min_tens_seg|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y51_N28
\min_tens_seg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_tens_seg|Mux5~0_combout\ = (\t_buffer|min_tens_out\(2) & ((\t_buffer|min_tens_out\(3)) # (\t_buffer|min_tens_out\(0) $ (\t_buffer|min_tens_out\(1))))) # (!\t_buffer|min_tens_out\(2) & (((\t_buffer|min_tens_out\(3) & \t_buffer|min_tens_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(0),
	datab => \t_buffer|min_tens_out\(2),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(1),
	combout => \min_tens_seg|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y51_N20
\min_tens_seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_tens_seg|Mux4~0_combout\ = (\t_buffer|min_tens_out\(2) & (((\t_buffer|min_tens_out\(3))))) # (!\t_buffer|min_tens_out\(2) & (\t_buffer|min_tens_out\(1) & ((\t_buffer|min_tens_out\(3)) # (!\t_buffer|min_tens_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(0),
	datab => \t_buffer|min_tens_out\(2),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(1),
	combout => \min_tens_seg|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y51_N24
\min_tens_seg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_tens_seg|Mux3~0_combout\ = (\t_buffer|min_tens_out\(2) & (!\t_buffer|min_tens_out\(3) & (\t_buffer|min_tens_out\(0) $ (!\t_buffer|min_tens_out\(1))))) # (!\t_buffer|min_tens_out\(2) & (((\t_buffer|min_tens_out\(0) & !\t_buffer|min_tens_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(3),
	datab => \t_buffer|min_tens_out\(2),
	datac => \t_buffer|min_tens_out\(0),
	datad => \t_buffer|min_tens_out\(1),
	combout => \min_tens_seg|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y51_N30
\min_tens_seg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_tens_seg|Mux2~0_combout\ = (\t_buffer|min_tens_out\(1) & (!\t_buffer|min_tens_out\(3) & (\t_buffer|min_tens_out\(0)))) # (!\t_buffer|min_tens_out\(1) & ((\t_buffer|min_tens_out\(2) & (!\t_buffer|min_tens_out\(3))) # (!\t_buffer|min_tens_out\(2) & 
-- ((\t_buffer|min_tens_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(3),
	datab => \t_buffer|min_tens_out\(0),
	datac => \t_buffer|min_tens_out\(1),
	datad => \t_buffer|min_tens_out\(2),
	combout => \min_tens_seg|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y51_N2
\min_tens_seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_tens_seg|Mux1~0_combout\ = (!\t_buffer|min_tens_out\(3) & ((\t_buffer|min_tens_out\(0) & ((\t_buffer|min_tens_out\(1)) # (!\t_buffer|min_tens_out\(2)))) # (!\t_buffer|min_tens_out\(0) & (!\t_buffer|min_tens_out\(2) & \t_buffer|min_tens_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(3),
	datab => \t_buffer|min_tens_out\(0),
	datac => \t_buffer|min_tens_out\(2),
	datad => \t_buffer|min_tens_out\(1),
	combout => \min_tens_seg|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y51_N8
\min_tens_seg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_tens_seg|Mux0~0_combout\ = (\t_buffer|min_tens_out\(3)) # ((\t_buffer|min_tens_out\(2) & ((!\t_buffer|min_tens_out\(1)) # (!\t_buffer|min_tens_out\(0)))) # (!\t_buffer|min_tens_out\(2) & ((\t_buffer|min_tens_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_tens_out\(0),
	datab => \t_buffer|min_tens_out\(2),
	datac => \t_buffer|min_tens_out\(3),
	datad => \t_buffer|min_tens_out\(1),
	combout => \min_tens_seg|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y51_N2
\min_unit_seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_unit_seg|Mux6~0_combout\ = (!\t_buffer|min_unit_out\(3) & (!\t_buffer|min_unit_out\(1) & (\t_buffer|min_unit_out\(2) $ (\t_buffer|min_unit_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(2),
	datab => \t_buffer|min_unit_out\(3),
	datac => \t_buffer|min_unit_out\(0),
	datad => \t_buffer|min_unit_out\(1),
	combout => \min_unit_seg|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y51_N24
\min_unit_seg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_unit_seg|Mux5~0_combout\ = (\t_buffer|min_unit_out\(2) & ((\t_buffer|min_unit_out\(3)) # (\t_buffer|min_unit_out\(0) $ (\t_buffer|min_unit_out\(1))))) # (!\t_buffer|min_unit_out\(2) & (\t_buffer|min_unit_out\(3) & ((\t_buffer|min_unit_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(2),
	datab => \t_buffer|min_unit_out\(3),
	datac => \t_buffer|min_unit_out\(0),
	datad => \t_buffer|min_unit_out\(1),
	combout => \min_unit_seg|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y51_N28
\min_unit_seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_unit_seg|Mux4~0_combout\ = (\t_buffer|min_unit_out\(2) & (((\t_buffer|min_unit_out\(3))))) # (!\t_buffer|min_unit_out\(2) & (\t_buffer|min_unit_out\(1) & ((\t_buffer|min_unit_out\(3)) # (!\t_buffer|min_unit_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(1),
	datab => \t_buffer|min_unit_out\(0),
	datac => \t_buffer|min_unit_out\(3),
	datad => \t_buffer|min_unit_out\(2),
	combout => \min_unit_seg|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y51_N20
\min_unit_seg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_unit_seg|Mux3~0_combout\ = (\t_buffer|min_unit_out\(2) & (!\t_buffer|min_unit_out\(3) & (\t_buffer|min_unit_out\(1) $ (!\t_buffer|min_unit_out\(0))))) # (!\t_buffer|min_unit_out\(2) & (!\t_buffer|min_unit_out\(1) & ((\t_buffer|min_unit_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(1),
	datab => \t_buffer|min_unit_out\(3),
	datac => \t_buffer|min_unit_out\(0),
	datad => \t_buffer|min_unit_out\(2),
	combout => \min_unit_seg|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y51_N8
\min_unit_seg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_unit_seg|Mux2~0_combout\ = (\t_buffer|min_unit_out\(1) & (!\t_buffer|min_unit_out\(3) & (\t_buffer|min_unit_out\(0)))) # (!\t_buffer|min_unit_out\(1) & ((\t_buffer|min_unit_out\(2) & (!\t_buffer|min_unit_out\(3))) # (!\t_buffer|min_unit_out\(2) & 
-- ((\t_buffer|min_unit_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(3),
	datab => \t_buffer|min_unit_out\(0),
	datac => \t_buffer|min_unit_out\(1),
	datad => \t_buffer|min_unit_out\(2),
	combout => \min_unit_seg|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y51_N16
\min_unit_seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_unit_seg|Mux1~0_combout\ = (!\t_buffer|min_unit_out\(3) & ((\t_buffer|min_unit_out\(1) & ((\t_buffer|min_unit_out\(0)) # (!\t_buffer|min_unit_out\(2)))) # (!\t_buffer|min_unit_out\(1) & (\t_buffer|min_unit_out\(0) & !\t_buffer|min_unit_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(1),
	datab => \t_buffer|min_unit_out\(0),
	datac => \t_buffer|min_unit_out\(2),
	datad => \t_buffer|min_unit_out\(3),
	combout => \min_unit_seg|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y51_N26
\min_unit_seg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_unit_seg|Mux0~0_combout\ = (\t_buffer|min_unit_out\(3)) # ((\t_buffer|min_unit_out\(1) & ((!\t_buffer|min_unit_out\(2)) # (!\t_buffer|min_unit_out\(0)))) # (!\t_buffer|min_unit_out\(1) & ((\t_buffer|min_unit_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_buffer|min_unit_out\(1),
	datab => \t_buffer|min_unit_out\(0),
	datac => \t_buffer|min_unit_out\(3),
	datad => \t_buffer|min_unit_out\(2),
	combout => \min_unit_seg|Mux0~0_combout\);

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

ww_HEX_5(0) <= \HEX_5[0]~output_o\;

ww_HEX_5(1) <= \HEX_5[1]~output_o\;

ww_HEX_5(2) <= \HEX_5[2]~output_o\;

ww_HEX_5(3) <= \HEX_5[3]~output_o\;

ww_HEX_5(4) <= \HEX_5[4]~output_o\;

ww_HEX_5(5) <= \HEX_5[5]~output_o\;

ww_HEX_5(6) <= \HEX_5[6]~output_o\;

ww_HEX_4(0) <= \HEX_4[0]~output_o\;

ww_HEX_4(1) <= \HEX_4[1]~output_o\;

ww_HEX_4(2) <= \HEX_4[2]~output_o\;

ww_HEX_4(3) <= \HEX_4[3]~output_o\;

ww_HEX_4(4) <= \HEX_4[4]~output_o\;

ww_HEX_4(5) <= \HEX_4[5]~output_o\;

ww_HEX_4(6) <= \HEX_4[6]~output_o\;

ww_HEX_3(0) <= \HEX_3[0]~output_o\;

ww_HEX_3(1) <= \HEX_3[1]~output_o\;

ww_HEX_3(2) <= \HEX_3[2]~output_o\;

ww_HEX_3(3) <= \HEX_3[3]~output_o\;

ww_HEX_3(4) <= \HEX_3[4]~output_o\;

ww_HEX_3(5) <= \HEX_3[5]~output_o\;

ww_HEX_3(6) <= \HEX_3[6]~output_o\;

ww_HEX_2(0) <= \HEX_2[0]~output_o\;

ww_HEX_2(1) <= \HEX_2[1]~output_o\;

ww_HEX_2(2) <= \HEX_2[2]~output_o\;

ww_HEX_2(3) <= \HEX_2[3]~output_o\;

ww_HEX_2(4) <= \HEX_2[4]~output_o\;

ww_HEX_2(5) <= \HEX_2[5]~output_o\;

ww_HEX_2(6) <= \HEX_2[6]~output_o\;

ww_HEX_1(0) <= \HEX_1[0]~output_o\;

ww_HEX_1(1) <= \HEX_1[1]~output_o\;

ww_HEX_1(2) <= \HEX_1[2]~output_o\;

ww_HEX_1(3) <= \HEX_1[3]~output_o\;

ww_HEX_1(4) <= \HEX_1[4]~output_o\;

ww_HEX_1(5) <= \HEX_1[5]~output_o\;

ww_HEX_1(6) <= \HEX_1[6]~output_o\;
END structure;


