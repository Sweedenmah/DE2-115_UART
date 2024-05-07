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

-- DATE "04/17/2023 17:58:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART_RX IS
    PORT (
	R232_RX : IN std_logic;
	CLK : IN std_logic;
	ARST : IN std_logic;
	DATA_IN : OUT std_logic_vector(7 DOWNTO 0);
	IDLE : OUT std_logic;
	IS_VALID : OUT std_logic
	);
END UART_RX;

-- Design Ports Information
-- DATA_IN[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDLE	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IS_VALID	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R232_RX	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_RX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R232_RX : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ARST : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IDLE : std_logic;
SIGNAL ww_IS_VALID : std_logic;
SIGNAL \ARST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_IN[0]~output_o\ : std_logic;
SIGNAL \DATA_IN[1]~output_o\ : std_logic;
SIGNAL \DATA_IN[2]~output_o\ : std_logic;
SIGNAL \DATA_IN[3]~output_o\ : std_logic;
SIGNAL \DATA_IN[4]~output_o\ : std_logic;
SIGNAL \DATA_IN[5]~output_o\ : std_logic;
SIGNAL \DATA_IN[6]~output_o\ : std_logic;
SIGNAL \DATA_IN[7]~output_o\ : std_logic;
SIGNAL \IDLE~output_o\ : std_logic;
SIGNAL \IS_VALID~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \current_state.state_arst~feeder_combout\ : std_logic;
SIGNAL \ARST~input_o\ : std_logic;
SIGNAL \ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.state_arst~q\ : std_logic;
SIGNAL \baud_arst~0_combout\ : std_logic;
SIGNAL \bit_cnt[1]~4_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \current_state.state_sample_parity~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \current_state.state_sample_data~q\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \data_sample_cnt[0]~37_combout\ : std_logic;
SIGNAL \R232_RX~input_o\ : std_logic;
SIGNAL \uart_rx_t~feeder_combout\ : std_logic;
SIGNAL \uart_rx_t~q\ : std_logic;
SIGNAL \uart_rx_t1~q\ : std_logic;
SIGNAL \uart_rx_t2~feeder_combout\ : std_logic;
SIGNAL \uart_rx_t2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \current_state.state_start~q\ : std_logic;
SIGNAL \WideOr11~combout\ : std_logic;
SIGNAL \data_sample_cnt[1]~31_combout\ : std_logic;
SIGNAL \data_sample_cnt[1]~32\ : std_logic;
SIGNAL \data_sample_cnt[2]~33_combout\ : std_logic;
SIGNAL \data_sample_cnt[2]~34\ : std_logic;
SIGNAL \data_sample_cnt[3]~35_combout\ : std_logic;
SIGNAL \data_sample_cnt[3]~36\ : std_logic;
SIGNAL \data_sample_cnt[4]~38_combout\ : std_logic;
SIGNAL \data_sample_cnt[4]~39\ : std_logic;
SIGNAL \data_sample_cnt[5]~40_combout\ : std_logic;
SIGNAL \data_sample_cnt[5]~41\ : std_logic;
SIGNAL \data_sample_cnt[6]~42_combout\ : std_logic;
SIGNAL \data_sample_cnt[6]~43\ : std_logic;
SIGNAL \data_sample_cnt[7]~44_combout\ : std_logic;
SIGNAL \data_sample_cnt[7]~45\ : std_logic;
SIGNAL \data_sample_cnt[8]~46_combout\ : std_logic;
SIGNAL \data_sample_cnt[8]~47\ : std_logic;
SIGNAL \data_sample_cnt[9]~48_combout\ : std_logic;
SIGNAL \data_sample_cnt[9]~49\ : std_logic;
SIGNAL \data_sample_cnt[10]~50_combout\ : std_logic;
SIGNAL \data_sample_cnt[10]~51\ : std_logic;
SIGNAL \data_sample_cnt[11]~52_combout\ : std_logic;
SIGNAL \data_sample_cnt[11]~53\ : std_logic;
SIGNAL \data_sample_cnt[12]~54_combout\ : std_logic;
SIGNAL \data_sample_cnt[12]~55\ : std_logic;
SIGNAL \data_sample_cnt[13]~56_combout\ : std_logic;
SIGNAL \data_sample_cnt[13]~57\ : std_logic;
SIGNAL \data_sample_cnt[14]~58_combout\ : std_logic;
SIGNAL \data_sample_cnt[14]~59\ : std_logic;
SIGNAL \data_sample_cnt[15]~60_combout\ : std_logic;
SIGNAL \data_sample_cnt[15]~61\ : std_logic;
SIGNAL \data_sample_cnt[16]~62_combout\ : std_logic;
SIGNAL \data_sample_cnt[16]~63\ : std_logic;
SIGNAL \data_sample_cnt[17]~64_combout\ : std_logic;
SIGNAL \data_sample_cnt[17]~65\ : std_logic;
SIGNAL \data_sample_cnt[18]~66_combout\ : std_logic;
SIGNAL \data_sample_cnt[18]~67\ : std_logic;
SIGNAL \data_sample_cnt[19]~68_combout\ : std_logic;
SIGNAL \data_sample_cnt[19]~69\ : std_logic;
SIGNAL \data_sample_cnt[20]~70_combout\ : std_logic;
SIGNAL \data_sample_cnt[20]~71\ : std_logic;
SIGNAL \data_sample_cnt[21]~72_combout\ : std_logic;
SIGNAL \data_sample_cnt[21]~73\ : std_logic;
SIGNAL \data_sample_cnt[22]~74_combout\ : std_logic;
SIGNAL \data_sample_cnt[22]~75\ : std_logic;
SIGNAL \data_sample_cnt[23]~76_combout\ : std_logic;
SIGNAL \data_sample_cnt[23]~77\ : std_logic;
SIGNAL \data_sample_cnt[24]~78_combout\ : std_logic;
SIGNAL \data_sample_cnt[24]~79\ : std_logic;
SIGNAL \data_sample_cnt[25]~80_combout\ : std_logic;
SIGNAL \data_sample_cnt[25]~81\ : std_logic;
SIGNAL \data_sample_cnt[26]~82_combout\ : std_logic;
SIGNAL \data_sample_cnt[26]~83\ : std_logic;
SIGNAL \data_sample_cnt[27]~84_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \data_sample_cnt[27]~85\ : std_logic;
SIGNAL \data_sample_cnt[28]~86_combout\ : std_logic;
SIGNAL \data_sample_cnt[28]~87\ : std_logic;
SIGNAL \data_sample_cnt[29]~88_combout\ : std_logic;
SIGNAL \data_sample_cnt[29]~89\ : std_logic;
SIGNAL \data_sample_cnt[30]~90_combout\ : std_logic;
SIGNAL \data_sample_cnt[30]~91\ : std_logic;
SIGNAL \data_sample_cnt[31]~92_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \next_state.state_parity_check~0_combout\ : std_logic;
SIGNAL \current_state.state_parity_check~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \current_state.state_wait_done~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \current_state.state_sample_stop_bit~q\ : std_logic;
SIGNAL \next_state.state_stop_bit_check~0_combout\ : std_logic;
SIGNAL \current_state.state_stop_bit_check~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \current_state.state_wait_idle~q\ : std_logic;
SIGNAL \stop_bit~0_combout\ : std_logic;
SIGNAL \stop_bit~q\ : std_logic;
SIGNAL \recieved_parity_bit~0_combout\ : std_logic;
SIGNAL \recieved_parity_bit~q\ : std_logic;
SIGNAL \next_state.state_update_parity~0_combout\ : std_logic;
SIGNAL \current_state.state_update_parity~q\ : std_logic;
SIGNAL \parity_cnt[0]~0_combout\ : std_logic;
SIGNAL \parity_cnt_arst~combout\ : std_logic;
SIGNAL \IS_VALID~1_combout\ : std_logic;
SIGNAL \next_state.state_update_data~0_combout\ : std_logic;
SIGNAL \current_state.state_update_data~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \current_state.state_idle~q\ : std_logic;
SIGNAL \baud_cnt[31]~37_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \baud_cnt[27]~36_combout\ : std_logic;
SIGNAL \baud_cnt[0]~34_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \baud_cnt[1]~33_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \baud_cnt[2]~32_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \baud_cnt[3]~35_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \baud_cnt[4]~29_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \baud_cnt[5]~31_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \baud_cnt[6]~28_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \baud_cnt[7]~30_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \baud_cnt[8]~26_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \baud_cnt[9]~25_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \baud_cnt[10]~23_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \baud_cnt[11]~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \baud_cnt[12]~22_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \baud_cnt[13]~27_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \baud_cnt[14]~21_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \baud_cnt[15]~20_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \baud_cnt[16]~19_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \baud_cnt[17]~18_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \baud_cnt[18]~17_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \baud_cnt[19]~16_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \baud_cnt[20]~15_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \baud_cnt[21]~14_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \baud_cnt[22]~13_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \baud_cnt[23]~12_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \baud_cnt[24]~11_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \baud_cnt[25]~10_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \baud_cnt[26]~9_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \baud_cnt[27]~8_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \baud_cnt[28]~7_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \baud_cnt[29]~6_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \baud_cnt[30]~5_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \baud_cnt[31]~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.state_wait~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.state_data_frame~q\ : std_logic;
SIGNAL \bit_cnt[2]~3_combout\ : std_logic;
SIGNAL \bit_cnt[3]~1_combout\ : std_logic;
SIGNAL \bit_cnt[3]~2_combout\ : std_logic;
SIGNAL \en_data_reg_bus[0]~0_combout\ : std_logic;
SIGNAL \DATA[0]~0_combout\ : std_logic;
SIGNAL \data_reg[0]~feeder_combout\ : std_logic;
SIGNAL \en_all_data_reg~0_combout\ : std_logic;
SIGNAL \en_data_reg_bus[2]~1_combout\ : std_logic;
SIGNAL \DATA[1]~1_combout\ : std_logic;
SIGNAL \data_reg[1]~feeder_combout\ : std_logic;
SIGNAL \DATA[2]~2_combout\ : std_logic;
SIGNAL \data_reg[2]~feeder_combout\ : std_logic;
SIGNAL \en_data_reg_bus[4]~2_combout\ : std_logic;
SIGNAL \DATA[3]~3_combout\ : std_logic;
SIGNAL \DATA[4]~4_combout\ : std_logic;
SIGNAL \data_reg[4]~feeder_combout\ : std_logic;
SIGNAL \en_data_reg_bus[6]~3_combout\ : std_logic;
SIGNAL \DATA[5]~5_combout\ : std_logic;
SIGNAL \data_reg[5]~feeder_combout\ : std_logic;
SIGNAL \DATA[6]~6_combout\ : std_logic;
SIGNAL \data_reg[6]~feeder_combout\ : std_logic;
SIGNAL \DATA[7]~7_combout\ : std_logic;
SIGNAL \IS_VALID~0_combout\ : std_logic;
SIGNAL data_sample_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL data_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL parity_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL baud_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \ALT_INV_baud_arst~0_combout\ : std_logic;
SIGNAL \ALT_INV_parity_cnt_arst~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_R232_RX <= R232_RX;
ww_CLK <= CLK;
ww_ARST <= ARST;
DATA_IN <= ww_DATA_IN;
IDLE <= ww_IDLE;
IS_VALID <= ww_IS_VALID;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ARST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ARST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_ARST~inputclkctrl_outclk\ <= NOT \ARST~inputclkctrl_outclk\;
\ALT_INV_WideOr11~combout\ <= NOT \WideOr11~combout\;
\ALT_INV_baud_arst~0_combout\ <= NOT \baud_arst~0_combout\;
\ALT_INV_parity_cnt_arst~combout\ <= NOT \parity_cnt_arst~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X56_Y0_N2
\DATA_IN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(0),
	devoe => ww_devoe,
	o => \DATA_IN[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\DATA_IN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(1),
	devoe => ww_devoe,
	o => \DATA_IN[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\DATA_IN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(2),
	devoe => ww_devoe,
	o => \DATA_IN[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\DATA_IN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(3),
	devoe => ww_devoe,
	o => \DATA_IN[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\DATA_IN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(4),
	devoe => ww_devoe,
	o => \DATA_IN[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\DATA_IN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(5),
	devoe => ww_devoe,
	o => \DATA_IN[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\DATA_IN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(6),
	devoe => ww_devoe,
	o => \DATA_IN[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\DATA_IN[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(7),
	devoe => ww_devoe,
	o => \DATA_IN[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\IDLE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.state_idle~q\,
	devoe => ww_devoe,
	o => \IDLE~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\IS_VALID~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IS_VALID~0_combout\,
	devoe => ww_devoe,
	o => \IS_VALID~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X56_Y31_N18
\bit_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~0_combout\ = \current_state.state_data_frame~q\ $ (bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_data_frame~q\,
	datac => bit_cnt(0),
	combout => \bit_cnt[0]~0_combout\);

-- Location: LCCOMB_X55_Y31_N2
\current_state.state_arst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.state_arst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \current_state.state_arst~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\ARST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARST,
	o => \ARST~input_o\);

-- Location: CLKCTRL_G4
\ARST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ARST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ARST~inputclkctrl_outclk\);

-- Location: FF_X55_Y31_N3
\current_state.state_arst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_state.state_arst~feeder_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_arst~q\);

-- Location: LCCOMB_X55_Y31_N30
\baud_arst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_arst~0_combout\ = (\current_state.state_idle~q\) # (!\current_state.state_arst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_idle~q\,
	datad => \current_state.state_arst~q\,
	combout => \baud_arst~0_combout\);

-- Location: FF_X56_Y31_N19
\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit_cnt[0]~0_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

-- Location: LCCOMB_X56_Y31_N14
\bit_cnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[1]~4_combout\ = bit_cnt(1) $ (((bit_cnt(0) & \current_state.state_data_frame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(0),
	datac => bit_cnt(1),
	datad => \current_state.state_data_frame~q\,
	combout => \bit_cnt[1]~4_combout\);

-- Location: FF_X56_Y31_N15
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit_cnt[1]~4_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: LCCOMB_X56_Y31_N20
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!bit_cnt(2) & (!bit_cnt(1) & (bit_cnt(3) & !bit_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datab => bit_cnt(1),
	datac => bit_cnt(3),
	datad => bit_cnt(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X56_Y31_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.state_wait~q\ & (\Equal3~0_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_wait~q\,
	datab => \Equal3~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X56_Y31_N22
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((!\Equal2~10_combout\ & \current_state.state_sample_parity~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datac => \current_state.state_sample_parity~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X56_Y31_N23
\current_state.state_sample_parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_sample_parity~q\);

-- Location: LCCOMB_X56_Y31_N8
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\current_state.state_data_frame~q\) # ((\current_state.state_sample_data~q\ & !\Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_data_frame~q\,
	datac => \current_state.state_sample_data~q\,
	datad => \Equal2~10_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X56_Y31_N9
\current_state.state_sample_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_sample_data~q\);

-- Location: LCCOMB_X56_Y31_N24
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (\current_state.state_sample_parity~q\) # ((\current_state.state_sample_data~q\) # ((\current_state.state_data_frame~q\) # (\current_state.state_sample_stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_sample_parity~q\,
	datab => \current_state.state_sample_data~q\,
	datac => \current_state.state_data_frame~q\,
	datad => \current_state.state_sample_stop_bit~q\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X55_Y32_N0
\data_sample_cnt[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[0]~37_combout\ = data_sample_cnt(0) $ (\WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_sample_cnt(0),
	datad => \WideOr11~0_combout\,
	combout => \data_sample_cnt[0]~37_combout\);

-- Location: IOIBUF_X54_Y0_N15
\R232_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R232_RX,
	o => \R232_RX~input_o\);

-- Location: LCCOMB_X55_Y27_N22
\uart_rx_t~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_t~feeder_combout\ = \R232_RX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R232_RX~input_o\,
	combout => \uart_rx_t~feeder_combout\);

-- Location: FF_X55_Y27_N23
uart_rx_t : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \uart_rx_t~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_t~q\);

-- Location: FF_X55_Y27_N13
uart_rx_t1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \uart_rx_t~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_t1~q\);

-- Location: LCCOMB_X55_Y27_N18
\uart_rx_t2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_t2~feeder_combout\ = \uart_rx_t1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_t1~q\,
	combout => \uart_rx_t2~feeder_combout\);

-- Location: FF_X55_Y27_N19
uart_rx_t2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \uart_rx_t2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_t2~q\);

-- Location: LCCOMB_X55_Y27_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\uart_rx_t1~q\ & \uart_rx_t2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_t1~q\,
	datad => \uart_rx_t2~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X55_Y31_N4
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Equal1~10_combout\ & (\Selector1~0_combout\ & ((\current_state.state_idle~q\)))) # (!\Equal1~10_combout\ & ((\current_state.state_start~q\) # ((\Selector1~0_combout\ & \current_state.state_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \Selector1~0_combout\,
	datac => \current_state.state_start~q\,
	datad => \current_state.state_idle~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X55_Y31_N5
\current_state.state_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_start~q\);

-- Location: LCCOMB_X55_Y31_N0
WideOr11 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~combout\ = (!\current_state.state_start~q\ & (!\current_state.state_wait~q\ & !\WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_start~q\,
	datac => \current_state.state_wait~q\,
	datad => \WideOr11~0_combout\,
	combout => \WideOr11~combout\);

-- Location: FF_X54_Y32_N1
\data_sample_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data_sample_cnt[0]~37_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(0));

-- Location: LCCOMB_X54_Y32_N2
\data_sample_cnt[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[1]~31_combout\ = (data_sample_cnt(1) & (data_sample_cnt(0) $ (VCC))) # (!data_sample_cnt(1) & (data_sample_cnt(0) & VCC))
-- \data_sample_cnt[1]~32\ = CARRY((data_sample_cnt(1) & data_sample_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(1),
	datab => data_sample_cnt(0),
	datad => VCC,
	combout => \data_sample_cnt[1]~31_combout\,
	cout => \data_sample_cnt[1]~32\);

-- Location: FF_X54_Y32_N3
\data_sample_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[1]~31_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(1));

-- Location: LCCOMB_X54_Y32_N4
\data_sample_cnt[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[2]~33_combout\ = (data_sample_cnt(2) & (!\data_sample_cnt[1]~32\)) # (!data_sample_cnt(2) & ((\data_sample_cnt[1]~32\) # (GND)))
-- \data_sample_cnt[2]~34\ = CARRY((!\data_sample_cnt[1]~32\) # (!data_sample_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(2),
	datad => VCC,
	cin => \data_sample_cnt[1]~32\,
	combout => \data_sample_cnt[2]~33_combout\,
	cout => \data_sample_cnt[2]~34\);

-- Location: FF_X54_Y32_N5
\data_sample_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[2]~33_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(2));

-- Location: LCCOMB_X54_Y32_N6
\data_sample_cnt[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[3]~35_combout\ = (data_sample_cnt(3) & (\data_sample_cnt[2]~34\ $ (GND))) # (!data_sample_cnt(3) & (!\data_sample_cnt[2]~34\ & VCC))
-- \data_sample_cnt[3]~36\ = CARRY((data_sample_cnt(3) & !\data_sample_cnt[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(3),
	datad => VCC,
	cin => \data_sample_cnt[2]~34\,
	combout => \data_sample_cnt[3]~35_combout\,
	cout => \data_sample_cnt[3]~36\);

-- Location: FF_X54_Y32_N7
\data_sample_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[3]~35_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(3));

-- Location: LCCOMB_X54_Y32_N8
\data_sample_cnt[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[4]~38_combout\ = (data_sample_cnt(4) & (!\data_sample_cnt[3]~36\)) # (!data_sample_cnt(4) & ((\data_sample_cnt[3]~36\) # (GND)))
-- \data_sample_cnt[4]~39\ = CARRY((!\data_sample_cnt[3]~36\) # (!data_sample_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(4),
	datad => VCC,
	cin => \data_sample_cnt[3]~36\,
	combout => \data_sample_cnt[4]~38_combout\,
	cout => \data_sample_cnt[4]~39\);

-- Location: FF_X54_Y32_N9
\data_sample_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[4]~38_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(4));

-- Location: LCCOMB_X54_Y32_N10
\data_sample_cnt[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[5]~40_combout\ = (data_sample_cnt(5) & (\data_sample_cnt[4]~39\ $ (GND))) # (!data_sample_cnt(5) & (!\data_sample_cnt[4]~39\ & VCC))
-- \data_sample_cnt[5]~41\ = CARRY((data_sample_cnt(5) & !\data_sample_cnt[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(5),
	datad => VCC,
	cin => \data_sample_cnt[4]~39\,
	combout => \data_sample_cnt[5]~40_combout\,
	cout => \data_sample_cnt[5]~41\);

-- Location: FF_X54_Y32_N11
\data_sample_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[5]~40_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(5));

-- Location: LCCOMB_X54_Y32_N12
\data_sample_cnt[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[6]~42_combout\ = (data_sample_cnt(6) & (!\data_sample_cnt[5]~41\)) # (!data_sample_cnt(6) & ((\data_sample_cnt[5]~41\) # (GND)))
-- \data_sample_cnt[6]~43\ = CARRY((!\data_sample_cnt[5]~41\) # (!data_sample_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(6),
	datad => VCC,
	cin => \data_sample_cnt[5]~41\,
	combout => \data_sample_cnt[6]~42_combout\,
	cout => \data_sample_cnt[6]~43\);

-- Location: FF_X54_Y32_N13
\data_sample_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[6]~42_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(6));

-- Location: LCCOMB_X54_Y32_N14
\data_sample_cnt[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[7]~44_combout\ = (data_sample_cnt(7) & (\data_sample_cnt[6]~43\ $ (GND))) # (!data_sample_cnt(7) & (!\data_sample_cnt[6]~43\ & VCC))
-- \data_sample_cnt[7]~45\ = CARRY((data_sample_cnt(7) & !\data_sample_cnt[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(7),
	datad => VCC,
	cin => \data_sample_cnt[6]~43\,
	combout => \data_sample_cnt[7]~44_combout\,
	cout => \data_sample_cnt[7]~45\);

-- Location: FF_X54_Y32_N15
\data_sample_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[7]~44_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(7));

-- Location: LCCOMB_X54_Y32_N16
\data_sample_cnt[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[8]~46_combout\ = (data_sample_cnt(8) & (!\data_sample_cnt[7]~45\)) # (!data_sample_cnt(8) & ((\data_sample_cnt[7]~45\) # (GND)))
-- \data_sample_cnt[8]~47\ = CARRY((!\data_sample_cnt[7]~45\) # (!data_sample_cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(8),
	datad => VCC,
	cin => \data_sample_cnt[7]~45\,
	combout => \data_sample_cnt[8]~46_combout\,
	cout => \data_sample_cnt[8]~47\);

-- Location: FF_X54_Y32_N17
\data_sample_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[8]~46_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(8));

-- Location: LCCOMB_X54_Y32_N18
\data_sample_cnt[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[9]~48_combout\ = (data_sample_cnt(9) & (\data_sample_cnt[8]~47\ $ (GND))) # (!data_sample_cnt(9) & (!\data_sample_cnt[8]~47\ & VCC))
-- \data_sample_cnt[9]~49\ = CARRY((data_sample_cnt(9) & !\data_sample_cnt[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(9),
	datad => VCC,
	cin => \data_sample_cnt[8]~47\,
	combout => \data_sample_cnt[9]~48_combout\,
	cout => \data_sample_cnt[9]~49\);

-- Location: FF_X54_Y32_N19
\data_sample_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[9]~48_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(9));

-- Location: LCCOMB_X54_Y32_N20
\data_sample_cnt[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[10]~50_combout\ = (data_sample_cnt(10) & (!\data_sample_cnt[9]~49\)) # (!data_sample_cnt(10) & ((\data_sample_cnt[9]~49\) # (GND)))
-- \data_sample_cnt[10]~51\ = CARRY((!\data_sample_cnt[9]~49\) # (!data_sample_cnt(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(10),
	datad => VCC,
	cin => \data_sample_cnt[9]~49\,
	combout => \data_sample_cnt[10]~50_combout\,
	cout => \data_sample_cnt[10]~51\);

-- Location: FF_X54_Y32_N21
\data_sample_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[10]~50_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(10));

-- Location: LCCOMB_X54_Y32_N22
\data_sample_cnt[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[11]~52_combout\ = (data_sample_cnt(11) & (\data_sample_cnt[10]~51\ $ (GND))) # (!data_sample_cnt(11) & (!\data_sample_cnt[10]~51\ & VCC))
-- \data_sample_cnt[11]~53\ = CARRY((data_sample_cnt(11) & !\data_sample_cnt[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(11),
	datad => VCC,
	cin => \data_sample_cnt[10]~51\,
	combout => \data_sample_cnt[11]~52_combout\,
	cout => \data_sample_cnt[11]~53\);

-- Location: FF_X54_Y32_N23
\data_sample_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[11]~52_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(11));

-- Location: LCCOMB_X54_Y32_N24
\data_sample_cnt[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[12]~54_combout\ = (data_sample_cnt(12) & (!\data_sample_cnt[11]~53\)) # (!data_sample_cnt(12) & ((\data_sample_cnt[11]~53\) # (GND)))
-- \data_sample_cnt[12]~55\ = CARRY((!\data_sample_cnt[11]~53\) # (!data_sample_cnt(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(12),
	datad => VCC,
	cin => \data_sample_cnt[11]~53\,
	combout => \data_sample_cnt[12]~54_combout\,
	cout => \data_sample_cnt[12]~55\);

-- Location: FF_X54_Y32_N25
\data_sample_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[12]~54_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(12));

-- Location: LCCOMB_X54_Y32_N26
\data_sample_cnt[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[13]~56_combout\ = (data_sample_cnt(13) & (\data_sample_cnt[12]~55\ $ (GND))) # (!data_sample_cnt(13) & (!\data_sample_cnt[12]~55\ & VCC))
-- \data_sample_cnt[13]~57\ = CARRY((data_sample_cnt(13) & !\data_sample_cnt[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(13),
	datad => VCC,
	cin => \data_sample_cnt[12]~55\,
	combout => \data_sample_cnt[13]~56_combout\,
	cout => \data_sample_cnt[13]~57\);

-- Location: FF_X54_Y32_N27
\data_sample_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[13]~56_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(13));

-- Location: LCCOMB_X54_Y32_N28
\data_sample_cnt[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[14]~58_combout\ = (data_sample_cnt(14) & (!\data_sample_cnt[13]~57\)) # (!data_sample_cnt(14) & ((\data_sample_cnt[13]~57\) # (GND)))
-- \data_sample_cnt[14]~59\ = CARRY((!\data_sample_cnt[13]~57\) # (!data_sample_cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(14),
	datad => VCC,
	cin => \data_sample_cnt[13]~57\,
	combout => \data_sample_cnt[14]~58_combout\,
	cout => \data_sample_cnt[14]~59\);

-- Location: FF_X54_Y32_N29
\data_sample_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[14]~58_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(14));

-- Location: LCCOMB_X54_Y32_N30
\data_sample_cnt[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[15]~60_combout\ = (data_sample_cnt(15) & (\data_sample_cnt[14]~59\ $ (GND))) # (!data_sample_cnt(15) & (!\data_sample_cnt[14]~59\ & VCC))
-- \data_sample_cnt[15]~61\ = CARRY((data_sample_cnt(15) & !\data_sample_cnt[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(15),
	datad => VCC,
	cin => \data_sample_cnt[14]~59\,
	combout => \data_sample_cnt[15]~60_combout\,
	cout => \data_sample_cnt[15]~61\);

-- Location: FF_X54_Y32_N31
\data_sample_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[15]~60_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(15));

-- Location: LCCOMB_X54_Y31_N0
\data_sample_cnt[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[16]~62_combout\ = (data_sample_cnt(16) & (!\data_sample_cnt[15]~61\)) # (!data_sample_cnt(16) & ((\data_sample_cnt[15]~61\) # (GND)))
-- \data_sample_cnt[16]~63\ = CARRY((!\data_sample_cnt[15]~61\) # (!data_sample_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(16),
	datad => VCC,
	cin => \data_sample_cnt[15]~61\,
	combout => \data_sample_cnt[16]~62_combout\,
	cout => \data_sample_cnt[16]~63\);

-- Location: FF_X54_Y31_N1
\data_sample_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[16]~62_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(16));

-- Location: LCCOMB_X54_Y31_N2
\data_sample_cnt[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[17]~64_combout\ = (data_sample_cnt(17) & (\data_sample_cnt[16]~63\ $ (GND))) # (!data_sample_cnt(17) & (!\data_sample_cnt[16]~63\ & VCC))
-- \data_sample_cnt[17]~65\ = CARRY((data_sample_cnt(17) & !\data_sample_cnt[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(17),
	datad => VCC,
	cin => \data_sample_cnt[16]~63\,
	combout => \data_sample_cnt[17]~64_combout\,
	cout => \data_sample_cnt[17]~65\);

-- Location: FF_X54_Y31_N3
\data_sample_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[17]~64_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(17));

-- Location: LCCOMB_X54_Y31_N4
\data_sample_cnt[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[18]~66_combout\ = (data_sample_cnt(18) & (!\data_sample_cnt[17]~65\)) # (!data_sample_cnt(18) & ((\data_sample_cnt[17]~65\) # (GND)))
-- \data_sample_cnt[18]~67\ = CARRY((!\data_sample_cnt[17]~65\) # (!data_sample_cnt(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(18),
	datad => VCC,
	cin => \data_sample_cnt[17]~65\,
	combout => \data_sample_cnt[18]~66_combout\,
	cout => \data_sample_cnt[18]~67\);

-- Location: FF_X54_Y31_N5
\data_sample_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[18]~66_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(18));

-- Location: LCCOMB_X54_Y31_N6
\data_sample_cnt[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[19]~68_combout\ = (data_sample_cnt(19) & (\data_sample_cnt[18]~67\ $ (GND))) # (!data_sample_cnt(19) & (!\data_sample_cnt[18]~67\ & VCC))
-- \data_sample_cnt[19]~69\ = CARRY((data_sample_cnt(19) & !\data_sample_cnt[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(19),
	datad => VCC,
	cin => \data_sample_cnt[18]~67\,
	combout => \data_sample_cnt[19]~68_combout\,
	cout => \data_sample_cnt[19]~69\);

-- Location: FF_X54_Y31_N7
\data_sample_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[19]~68_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(19));

-- Location: LCCOMB_X54_Y31_N8
\data_sample_cnt[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[20]~70_combout\ = (data_sample_cnt(20) & (!\data_sample_cnt[19]~69\)) # (!data_sample_cnt(20) & ((\data_sample_cnt[19]~69\) # (GND)))
-- \data_sample_cnt[20]~71\ = CARRY((!\data_sample_cnt[19]~69\) # (!data_sample_cnt(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(20),
	datad => VCC,
	cin => \data_sample_cnt[19]~69\,
	combout => \data_sample_cnt[20]~70_combout\,
	cout => \data_sample_cnt[20]~71\);

-- Location: FF_X54_Y31_N9
\data_sample_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[20]~70_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(20));

-- Location: LCCOMB_X54_Y31_N10
\data_sample_cnt[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[21]~72_combout\ = (data_sample_cnt(21) & (\data_sample_cnt[20]~71\ $ (GND))) # (!data_sample_cnt(21) & (!\data_sample_cnt[20]~71\ & VCC))
-- \data_sample_cnt[21]~73\ = CARRY((data_sample_cnt(21) & !\data_sample_cnt[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(21),
	datad => VCC,
	cin => \data_sample_cnt[20]~71\,
	combout => \data_sample_cnt[21]~72_combout\,
	cout => \data_sample_cnt[21]~73\);

-- Location: FF_X54_Y31_N11
\data_sample_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[21]~72_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(21));

-- Location: LCCOMB_X54_Y31_N12
\data_sample_cnt[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[22]~74_combout\ = (data_sample_cnt(22) & (!\data_sample_cnt[21]~73\)) # (!data_sample_cnt(22) & ((\data_sample_cnt[21]~73\) # (GND)))
-- \data_sample_cnt[22]~75\ = CARRY((!\data_sample_cnt[21]~73\) # (!data_sample_cnt(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(22),
	datad => VCC,
	cin => \data_sample_cnt[21]~73\,
	combout => \data_sample_cnt[22]~74_combout\,
	cout => \data_sample_cnt[22]~75\);

-- Location: FF_X54_Y31_N13
\data_sample_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[22]~74_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(22));

-- Location: LCCOMB_X54_Y31_N14
\data_sample_cnt[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[23]~76_combout\ = (data_sample_cnt(23) & (\data_sample_cnt[22]~75\ $ (GND))) # (!data_sample_cnt(23) & (!\data_sample_cnt[22]~75\ & VCC))
-- \data_sample_cnt[23]~77\ = CARRY((data_sample_cnt(23) & !\data_sample_cnt[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(23),
	datad => VCC,
	cin => \data_sample_cnt[22]~75\,
	combout => \data_sample_cnt[23]~76_combout\,
	cout => \data_sample_cnt[23]~77\);

-- Location: FF_X54_Y31_N15
\data_sample_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[23]~76_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(23));

-- Location: LCCOMB_X54_Y31_N16
\data_sample_cnt[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[24]~78_combout\ = (data_sample_cnt(24) & (!\data_sample_cnt[23]~77\)) # (!data_sample_cnt(24) & ((\data_sample_cnt[23]~77\) # (GND)))
-- \data_sample_cnt[24]~79\ = CARRY((!\data_sample_cnt[23]~77\) # (!data_sample_cnt(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(24),
	datad => VCC,
	cin => \data_sample_cnt[23]~77\,
	combout => \data_sample_cnt[24]~78_combout\,
	cout => \data_sample_cnt[24]~79\);

-- Location: FF_X54_Y31_N17
\data_sample_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[24]~78_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(24));

-- Location: LCCOMB_X54_Y31_N18
\data_sample_cnt[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[25]~80_combout\ = (data_sample_cnt(25) & (\data_sample_cnt[24]~79\ $ (GND))) # (!data_sample_cnt(25) & (!\data_sample_cnt[24]~79\ & VCC))
-- \data_sample_cnt[25]~81\ = CARRY((data_sample_cnt(25) & !\data_sample_cnt[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(25),
	datad => VCC,
	cin => \data_sample_cnt[24]~79\,
	combout => \data_sample_cnt[25]~80_combout\,
	cout => \data_sample_cnt[25]~81\);

-- Location: FF_X54_Y31_N19
\data_sample_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[25]~80_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(25));

-- Location: LCCOMB_X54_Y31_N20
\data_sample_cnt[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[26]~82_combout\ = (data_sample_cnt(26) & (!\data_sample_cnt[25]~81\)) # (!data_sample_cnt(26) & ((\data_sample_cnt[25]~81\) # (GND)))
-- \data_sample_cnt[26]~83\ = CARRY((!\data_sample_cnt[25]~81\) # (!data_sample_cnt(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(26),
	datad => VCC,
	cin => \data_sample_cnt[25]~81\,
	combout => \data_sample_cnt[26]~82_combout\,
	cout => \data_sample_cnt[26]~83\);

-- Location: FF_X54_Y31_N21
\data_sample_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[26]~82_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(26));

-- Location: LCCOMB_X54_Y31_N22
\data_sample_cnt[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[27]~84_combout\ = (data_sample_cnt(27) & (\data_sample_cnt[26]~83\ $ (GND))) # (!data_sample_cnt(27) & (!\data_sample_cnt[26]~83\ & VCC))
-- \data_sample_cnt[27]~85\ = CARRY((data_sample_cnt(27) & !\data_sample_cnt[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(27),
	datad => VCC,
	cin => \data_sample_cnt[26]~83\,
	combout => \data_sample_cnt[27]~84_combout\,
	cout => \data_sample_cnt[27]~85\);

-- Location: FF_X54_Y31_N23
\data_sample_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[27]~84_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(27));

-- Location: LCCOMB_X55_Y31_N6
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!data_sample_cnt(26) & (!data_sample_cnt(27) & (!data_sample_cnt(24) & !data_sample_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(26),
	datab => data_sample_cnt(27),
	datac => data_sample_cnt(24),
	datad => data_sample_cnt(25),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X54_Y31_N24
\data_sample_cnt[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[28]~86_combout\ = (data_sample_cnt(28) & (!\data_sample_cnt[27]~85\)) # (!data_sample_cnt(28) & ((\data_sample_cnt[27]~85\) # (GND)))
-- \data_sample_cnt[28]~87\ = CARRY((!\data_sample_cnt[27]~85\) # (!data_sample_cnt(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(28),
	datad => VCC,
	cin => \data_sample_cnt[27]~85\,
	combout => \data_sample_cnt[28]~86_combout\,
	cout => \data_sample_cnt[28]~87\);

-- Location: FF_X54_Y31_N25
\data_sample_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[28]~86_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(28));

-- Location: LCCOMB_X54_Y31_N26
\data_sample_cnt[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[29]~88_combout\ = (data_sample_cnt(29) & (\data_sample_cnt[28]~87\ $ (GND))) # (!data_sample_cnt(29) & (!\data_sample_cnt[28]~87\ & VCC))
-- \data_sample_cnt[29]~89\ = CARRY((data_sample_cnt(29) & !\data_sample_cnt[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(29),
	datad => VCC,
	cin => \data_sample_cnt[28]~87\,
	combout => \data_sample_cnt[29]~88_combout\,
	cout => \data_sample_cnt[29]~89\);

-- Location: FF_X54_Y31_N27
\data_sample_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[29]~88_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(29));

-- Location: LCCOMB_X54_Y31_N28
\data_sample_cnt[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[30]~90_combout\ = (data_sample_cnt(30) & (!\data_sample_cnt[29]~89\)) # (!data_sample_cnt(30) & ((\data_sample_cnt[29]~89\) # (GND)))
-- \data_sample_cnt[30]~91\ = CARRY((!\data_sample_cnt[29]~89\) # (!data_sample_cnt(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_sample_cnt(30),
	datad => VCC,
	cin => \data_sample_cnt[29]~89\,
	combout => \data_sample_cnt[30]~90_combout\,
	cout => \data_sample_cnt[30]~91\);

-- Location: FF_X54_Y31_N29
\data_sample_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[30]~90_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(30));

-- Location: LCCOMB_X54_Y31_N30
\data_sample_cnt[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample_cnt[31]~92_combout\ = data_sample_cnt(31) $ (!\data_sample_cnt[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(31),
	cin => \data_sample_cnt[30]~91\,
	combout => \data_sample_cnt[31]~92_combout\);

-- Location: FF_X54_Y31_N31
\data_sample_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_sample_cnt[31]~92_combout\,
	clrn => \ALT_INV_WideOr11~combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample_cnt(31));

-- Location: LCCOMB_X55_Y31_N20
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!data_sample_cnt(28) & (!data_sample_cnt(30) & (!data_sample_cnt(29) & !data_sample_cnt(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(28),
	datab => data_sample_cnt(30),
	datac => data_sample_cnt(29),
	datad => data_sample_cnt(31),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X55_Y32_N6
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!data_sample_cnt(10) & (!data_sample_cnt(11) & (!data_sample_cnt(8) & !data_sample_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(10),
	datab => data_sample_cnt(11),
	datac => data_sample_cnt(8),
	datad => data_sample_cnt(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X54_Y32_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (data_sample_cnt(3) & (!data_sample_cnt(2) & (!data_sample_cnt(0) & !data_sample_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(3),
	datab => data_sample_cnt(2),
	datac => data_sample_cnt(0),
	datad => data_sample_cnt(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X55_Y32_N8
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!data_sample_cnt(15) & (!data_sample_cnt(14) & (!data_sample_cnt(13) & !data_sample_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(15),
	datab => data_sample_cnt(14),
	datac => data_sample_cnt(13),
	datad => data_sample_cnt(12),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X55_Y32_N28
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!data_sample_cnt(7) & (!data_sample_cnt(4) & (data_sample_cnt(5) & data_sample_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(7),
	datab => data_sample_cnt(4),
	datac => data_sample_cnt(5),
	datad => data_sample_cnt(6),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X55_Y32_N30
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~0_combout\ & (\Equal2~3_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X55_Y31_N24
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!data_sample_cnt(16) & (!data_sample_cnt(19) & (!data_sample_cnt(18) & !data_sample_cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(16),
	datab => data_sample_cnt(19),
	datac => data_sample_cnt(18),
	datad => data_sample_cnt(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X57_Y31_N28
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!data_sample_cnt(23) & !data_sample_cnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_sample_cnt(23),
	datad => data_sample_cnt(22),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X57_Y31_N2
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!data_sample_cnt(20) & (!data_sample_cnt(21) & (\Equal2~5_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_sample_cnt(20),
	datab => data_sample_cnt(21),
	datac => \Equal2~5_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X56_Y31_N6
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~8_combout\ & (\Equal2~9_combout\ & (\Equal2~4_combout\ & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~9_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X56_Y31_N28
\next_state.state_parity_check~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_parity_check~0_combout\ = (\current_state.state_sample_parity~q\ & \Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.state_sample_parity~q\,
	datad => \Equal2~10_combout\,
	combout => \next_state.state_parity_check~0_combout\);

-- Location: FF_X56_Y31_N29
\current_state.state_parity_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_parity_check~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_parity_check~q\);

-- Location: LCCOMB_X55_Y31_N22
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\current_state.state_parity_check~q\) # ((!\Equal1~10_combout\ & \current_state.state_wait_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datac => \current_state.state_wait_done~q\,
	datad => \current_state.state_parity_check~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X55_Y31_N23
\current_state.state_wait_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_wait_done~q\);

-- Location: LCCOMB_X56_Y31_N0
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Equal2~10_combout\ & (\current_state.state_wait_done~q\ & ((\Equal1~10_combout\)))) # (!\Equal2~10_combout\ & ((\current_state.state_sample_stop_bit~q\) # ((\current_state.state_wait_done~q\ & \Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \current_state.state_wait_done~q\,
	datac => \current_state.state_sample_stop_bit~q\,
	datad => \Equal1~10_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X56_Y31_N1
\current_state.state_sample_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_sample_stop_bit~q\);

-- Location: LCCOMB_X56_Y31_N12
\next_state.state_stop_bit_check~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_stop_bit_check~0_combout\ = (\current_state.state_sample_stop_bit~q\ & \Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_sample_stop_bit~q\,
	datad => \Equal2~10_combout\,
	combout => \next_state.state_stop_bit_check~0_combout\);

-- Location: FF_X56_Y31_N13
\current_state.state_stop_bit_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_stop_bit_check~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_stop_bit_check~q\);

-- Location: LCCOMB_X55_Y31_N26
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\current_state.state_stop_bit_check~q\) # ((!\Equal1~10_combout\ & \current_state.state_wait_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \current_state.state_stop_bit_check~q\,
	datac => \current_state.state_wait_idle~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X55_Y31_N27
\current_state.state_wait_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_wait_idle~q\);

-- Location: LCCOMB_X55_Y31_N10
\stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_bit~0_combout\ = (\current_state.state_stop_bit_check~q\ & (\uart_rx_t2~q\)) # (!\current_state.state_stop_bit_check~q\ & ((\stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_t2~q\,
	datab => \current_state.state_stop_bit_check~q\,
	datac => \stop_bit~q\,
	combout => \stop_bit~0_combout\);

-- Location: FF_X55_Y31_N11
stop_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \stop_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_bit~q\);

-- Location: LCCOMB_X55_Y31_N8
\recieved_parity_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved_parity_bit~0_combout\ = (\current_state.state_parity_check~q\ & (\uart_rx_t2~q\)) # (!\current_state.state_parity_check~q\ & ((\recieved_parity_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_t2~q\,
	datac => \recieved_parity_bit~q\,
	datad => \current_state.state_parity_check~q\,
	combout => \recieved_parity_bit~0_combout\);

-- Location: FF_X55_Y31_N9
recieved_parity_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \recieved_parity_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \recieved_parity_bit~q\);

-- Location: LCCOMB_X56_Y31_N10
\next_state.state_update_parity~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_update_parity~0_combout\ = (\current_state.state_sample_data~q\ & \Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_sample_data~q\,
	datad => \Equal2~10_combout\,
	combout => \next_state.state_update_parity~0_combout\);

-- Location: FF_X56_Y31_N11
\current_state.state_update_parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_update_parity~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_update_parity~q\);

-- Location: LCCOMB_X56_Y27_N2
\parity_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \parity_cnt[0]~0_combout\ = parity_cnt(0) $ (((\uart_rx_t2~q\ & \current_state.state_update_parity~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_t2~q\,
	datac => parity_cnt(0),
	datad => \current_state.state_update_parity~q\,
	combout => \parity_cnt[0]~0_combout\);

-- Location: LCCOMB_X56_Y27_N12
parity_cnt_arst : cycloneive_lcell_comb
-- Equation(s):
-- \parity_cnt_arst~combout\ = (\current_state.state_start~q\) # (!\current_state.state_arst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_start~q\,
	datad => \current_state.state_arst~q\,
	combout => \parity_cnt_arst~combout\);

-- Location: FF_X56_Y27_N3
\parity_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \parity_cnt[0]~0_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => parity_cnt(0));

-- Location: LCCOMB_X55_Y31_N28
\IS_VALID~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IS_VALID~1_combout\ = (\stop_bit~q\ & (\recieved_parity_bit~q\ $ (!parity_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_bit~q\,
	datac => \recieved_parity_bit~q\,
	datad => parity_cnt(0),
	combout => \IS_VALID~1_combout\);

-- Location: LCCOMB_X53_Y31_N4
\next_state.state_update_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_update_data~0_combout\ = (\current_state.state_wait_idle~q\ & (\IS_VALID~1_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_wait_idle~q\,
	datac => \IS_VALID~1_combout\,
	datad => \Equal1~10_combout\,
	combout => \next_state.state_update_data~0_combout\);

-- Location: FF_X53_Y31_N5
\current_state.state_update_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_update_data~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_update_data~q\);

-- Location: LCCOMB_X55_Y31_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\current_state.state_update_data~q\) # ((\current_state.state_idle~q\ & !\Selector1~0_combout\))) # (!\current_state.state_arst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_idle~q\,
	datab => \current_state.state_arst~q\,
	datac => \Selector1~0_combout\,
	datad => \current_state.state_update_data~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X55_Y31_N12
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\current_state.state_wait_idle~q\ & (!\IS_VALID~1_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_wait_idle~q\,
	datab => \IS_VALID~1_combout\,
	datac => \Equal1~10_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X55_Y31_N13
\current_state.state_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_idle~q\);

-- Location: LCCOMB_X53_Y31_N14
\baud_cnt[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[31]~37_combout\ = (\current_state.state_idle~q\) # ((\current_state.state_update_data~q\) # ((\Equal1~10_combout\) # (!\current_state.state_arst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_idle~q\,
	datab => \current_state.state_update_data~q\,
	datac => \current_state.state_arst~q\,
	datad => \Equal1~10_combout\,
	combout => \baud_cnt[31]~37_combout\);

-- Location: LCCOMB_X52_Y31_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = baud_cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(baud_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X53_Y31_N28
\baud_cnt[27]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[27]~36_combout\ = (!\Equal1~10_combout\ & ((\current_state.state_idle~q\) # ((\current_state.state_update_data~q\) # (!\current_state.state_arst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_idle~q\,
	datab => \current_state.state_update_data~q\,
	datac => \current_state.state_arst~q\,
	datad => \Equal1~10_combout\,
	combout => \baud_cnt[27]~36_combout\);

-- Location: LCCOMB_X53_Y31_N30
\baud_cnt[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[0]~34_combout\ = (\Add0~0_combout\ & (((baud_cnt(0) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~0_combout\ & (baud_cnt(0) & ((\baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => baud_cnt(0),
	datac => \baud_cnt[31]~37_combout\,
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[0]~34_combout\);

-- Location: FF_X52_Y31_N9
\baud_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_cnt[0]~34_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(0));

-- Location: LCCOMB_X52_Y31_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (baud_cnt(1) & (!\Add0~1\)) # (!baud_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!baud_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X53_Y31_N8
\baud_cnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[1]~33_combout\ = (\Add0~2_combout\ & (((baud_cnt(1) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~2_combout\ & (baud_cnt(1) & ((\baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => baud_cnt(1),
	datac => \baud_cnt[31]~37_combout\,
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[1]~33_combout\);

-- Location: FF_X52_Y31_N19
\baud_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_cnt[1]~33_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(1));

-- Location: LCCOMB_X52_Y31_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (baud_cnt(2) & (\Add0~3\ $ (GND))) # (!baud_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((baud_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X53_Y31_N20
\baud_cnt[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[2]~32_combout\ = (\baud_cnt[31]~37_combout\ & (((baud_cnt(2) & \baud_cnt[27]~36_combout\)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~4_combout\) # ((baud_cnt(2) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \Add0~4_combout\,
	datac => baud_cnt(2),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[2]~32_combout\);

-- Location: FF_X53_Y31_N21
\baud_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[2]~32_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(2));

-- Location: LCCOMB_X52_Y31_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (baud_cnt(3) & (!\Add0~5\)) # (!baud_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!baud_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X53_Y31_N6
\baud_cnt[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[3]~35_combout\ = (\Add0~6_combout\ & (((baud_cnt(3) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~6_combout\ & (((baud_cnt(3) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(3),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[3]~35_combout\);

-- Location: FF_X53_Y31_N7
\baud_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[3]~35_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(3));

-- Location: LCCOMB_X52_Y31_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (baud_cnt(4) & (\Add0~7\ $ (GND))) # (!baud_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((baud_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X53_Y31_N16
\baud_cnt[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[4]~29_combout\ = (\Add0~8_combout\ & (((baud_cnt(4) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~8_combout\ & (((baud_cnt(4) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(4),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[4]~29_combout\);

-- Location: FF_X53_Y31_N17
\baud_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[4]~29_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(4));

-- Location: LCCOMB_X52_Y31_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (baud_cnt(5) & (!\Add0~9\)) # (!baud_cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!baud_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X53_Y31_N12
\baud_cnt[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[5]~31_combout\ = (\Add0~10_combout\ & (((baud_cnt(5) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~10_combout\ & (((baud_cnt(5) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(5),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[5]~31_combout\);

-- Location: FF_X53_Y31_N13
\baud_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[5]~31_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(5));

-- Location: LCCOMB_X52_Y31_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (baud_cnt(6) & (\Add0~11\ $ (GND))) # (!baud_cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((baud_cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X53_Y31_N22
\baud_cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[6]~28_combout\ = (\Add0~12_combout\ & (((baud_cnt(6) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~12_combout\ & (((baud_cnt(6) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(6),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[6]~28_combout\);

-- Location: FF_X53_Y31_N23
\baud_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[6]~28_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(6));

-- Location: LCCOMB_X52_Y31_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (baud_cnt(7) & (!\Add0~13\)) # (!baud_cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!baud_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X53_Y31_N10
\baud_cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[7]~30_combout\ = (\Add0~14_combout\ & (((baud_cnt(7) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~14_combout\ & (((baud_cnt(7) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(7),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[7]~30_combout\);

-- Location: FF_X53_Y31_N11
\baud_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[7]~30_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(7));

-- Location: LCCOMB_X53_Y31_N26
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (baud_cnt(4) & (!baud_cnt(5) & (baud_cnt(6) & !baud_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(4),
	datab => baud_cnt(5),
	datac => baud_cnt(6),
	datad => baud_cnt(7),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X53_Y31_N24
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!baud_cnt(3) & (baud_cnt(2) & (baud_cnt(0) & baud_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(3),
	datab => baud_cnt(2),
	datac => baud_cnt(0),
	datad => baud_cnt(1),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X52_Y31_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (baud_cnt(8) & (\Add0~15\ $ (GND))) # (!baud_cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((baud_cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X52_Y32_N16
\baud_cnt[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[8]~26_combout\ = (\Add0~16_combout\ & (((baud_cnt(8) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~16_combout\ & (((baud_cnt(8) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(8),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[8]~26_combout\);

-- Location: FF_X52_Y32_N17
\baud_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[8]~26_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(8));

-- Location: LCCOMB_X52_Y31_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (baud_cnt(9) & (!\Add0~17\)) # (!baud_cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!baud_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X52_Y32_N10
\baud_cnt[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[9]~25_combout\ = (\Add0~18_combout\ & (((baud_cnt(9) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~18_combout\ & (((baud_cnt(9) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(9),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[9]~25_combout\);

-- Location: FF_X52_Y32_N11
\baud_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[9]~25_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(9));

-- Location: LCCOMB_X52_Y31_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (baud_cnt(10) & (\Add0~19\ $ (GND))) # (!baud_cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((baud_cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X52_Y32_N30
\baud_cnt[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[10]~23_combout\ = (\Add0~20_combout\ & (((baud_cnt(10) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~20_combout\ & (((baud_cnt(10) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(10),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[10]~23_combout\);

-- Location: FF_X52_Y32_N31
\baud_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[10]~23_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(10));

-- Location: LCCOMB_X52_Y31_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (baud_cnt(11) & (!\Add0~21\)) # (!baud_cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!baud_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X52_Y32_N4
\baud_cnt[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[11]~24_combout\ = (\Add0~22_combout\ & (((baud_cnt(11) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~22_combout\ & (((baud_cnt(11) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(11),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[11]~24_combout\);

-- Location: FF_X52_Y32_N5
\baud_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[11]~24_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(11));

-- Location: LCCOMB_X52_Y31_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (baud_cnt(12) & (\Add0~23\ $ (GND))) # (!baud_cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((baud_cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X52_Y32_N24
\baud_cnt[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[12]~22_combout\ = (\Add0~24_combout\ & (((baud_cnt(12) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~24_combout\ & (((baud_cnt(12) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(12),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[12]~22_combout\);

-- Location: FF_X52_Y32_N25
\baud_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[12]~22_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(12));

-- Location: LCCOMB_X52_Y31_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (baud_cnt(13) & (!\Add0~25\)) # (!baud_cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!baud_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X52_Y32_N12
\baud_cnt[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[13]~27_combout\ = (\Add0~26_combout\ & (((baud_cnt(13) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~26_combout\ & (((baud_cnt(13) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(13),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[13]~27_combout\);

-- Location: FF_X52_Y32_N13
\baud_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[13]~27_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(13));

-- Location: LCCOMB_X52_Y32_N26
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!baud_cnt(9) & (!baud_cnt(11) & (baud_cnt(10) & !baud_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(9),
	datab => baud_cnt(11),
	datac => baud_cnt(10),
	datad => baud_cnt(8),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X52_Y31_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (baud_cnt(14) & (\Add0~27\ $ (GND))) # (!baud_cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((baud_cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X52_Y32_N0
\baud_cnt[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[14]~21_combout\ = (\Add0~28_combout\ & (((baud_cnt(14) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~28_combout\ & (((baud_cnt(14) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(14),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[14]~21_combout\);

-- Location: FF_X52_Y32_N1
\baud_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[14]~21_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(14));

-- Location: LCCOMB_X52_Y31_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (baud_cnt(15) & (!\Add0~29\)) # (!baud_cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!baud_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X52_Y32_N14
\baud_cnt[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[15]~20_combout\ = (\Add0~30_combout\ & (((baud_cnt(15) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~30_combout\ & (((baud_cnt(15) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(15),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[15]~20_combout\);

-- Location: FF_X52_Y32_N15
\baud_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[15]~20_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(15));

-- Location: LCCOMB_X52_Y32_N18
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!baud_cnt(15) & !baud_cnt(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => baud_cnt(15),
	datad => baud_cnt(14),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X52_Y32_N6
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!baud_cnt(13) & (baud_cnt(12) & (\Equal1~6_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(13),
	datab => baud_cnt(12),
	datac => \Equal1~6_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X52_Y30_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (baud_cnt(16) & (\Add0~31\ $ (GND))) # (!baud_cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((baud_cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X53_Y30_N30
\baud_cnt[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[16]~19_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(16)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~32_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(16),
	datad => \Add0~32_combout\,
	combout => \baud_cnt[16]~19_combout\);

-- Location: FF_X53_Y30_N31
\baud_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[16]~19_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(16));

-- Location: LCCOMB_X52_Y30_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (baud_cnt(17) & (!\Add0~33\)) # (!baud_cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!baud_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X53_Y30_N4
\baud_cnt[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[17]~18_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(17)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~34_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(17),
	datad => \Add0~34_combout\,
	combout => \baud_cnt[17]~18_combout\);

-- Location: FF_X53_Y30_N5
\baud_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[17]~18_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(17));

-- Location: LCCOMB_X52_Y30_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (baud_cnt(18) & (\Add0~35\ $ (GND))) # (!baud_cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((baud_cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X53_Y30_N6
\baud_cnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[18]~17_combout\ = (\baud_cnt[31]~37_combout\ & (((baud_cnt(18) & \baud_cnt[27]~36_combout\)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~36_combout\) # ((baud_cnt(18) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \Add0~36_combout\,
	datac => baud_cnt(18),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[18]~17_combout\);

-- Location: FF_X53_Y30_N7
\baud_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[18]~17_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(18));

-- Location: LCCOMB_X52_Y30_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (baud_cnt(19) & (!\Add0~37\)) # (!baud_cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!baud_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X53_Y30_N28
\baud_cnt[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[19]~16_combout\ = (\baud_cnt[31]~37_combout\ & (((baud_cnt(19) & \baud_cnt[27]~36_combout\)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~38_combout\) # ((baud_cnt(19) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \Add0~38_combout\,
	datac => baud_cnt(19),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[19]~16_combout\);

-- Location: FF_X53_Y30_N29
\baud_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[19]~16_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(19));

-- Location: LCCOMB_X52_Y30_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (baud_cnt(20) & (\Add0~39\ $ (GND))) # (!baud_cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((baud_cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X52_Y32_N2
\baud_cnt[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[20]~15_combout\ = (\Add0~40_combout\ & (((baud_cnt(20) & \baud_cnt[27]~36_combout\)) # (!\baud_cnt[31]~37_combout\))) # (!\Add0~40_combout\ & (((baud_cnt(20) & \baud_cnt[27]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(20),
	datad => \baud_cnt[27]~36_combout\,
	combout => \baud_cnt[20]~15_combout\);

-- Location: FF_X52_Y32_N3
\baud_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[20]~15_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(20));

-- Location: LCCOMB_X52_Y30_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (baud_cnt(21) & (!\Add0~41\)) # (!baud_cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!baud_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X52_Y32_N8
\baud_cnt[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[21]~14_combout\ = (\baud_cnt[27]~36_combout\ & ((baud_cnt(21)) # ((!\baud_cnt[31]~37_combout\ & \Add0~42_combout\)))) # (!\baud_cnt[27]~36_combout\ & (!\baud_cnt[31]~37_combout\ & ((\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[27]~36_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(21),
	datad => \Add0~42_combout\,
	combout => \baud_cnt[21]~14_combout\);

-- Location: FF_X52_Y32_N9
\baud_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[21]~14_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(21));

-- Location: LCCOMB_X52_Y30_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (baud_cnt(22) & (\Add0~43\ $ (GND))) # (!baud_cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((baud_cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X52_Y32_N22
\baud_cnt[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[22]~13_combout\ = (\baud_cnt[27]~36_combout\ & ((baud_cnt(22)) # ((!\baud_cnt[31]~37_combout\ & \Add0~44_combout\)))) # (!\baud_cnt[27]~36_combout\ & (!\baud_cnt[31]~37_combout\ & ((\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[27]~36_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(22),
	datad => \Add0~44_combout\,
	combout => \baud_cnt[22]~13_combout\);

-- Location: FF_X52_Y32_N23
\baud_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[22]~13_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(22));

-- Location: LCCOMB_X52_Y30_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (baud_cnt(23) & (!\Add0~45\)) # (!baud_cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!baud_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X52_Y32_N20
\baud_cnt[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[23]~12_combout\ = (\baud_cnt[27]~36_combout\ & ((baud_cnt(23)) # ((!\baud_cnt[31]~37_combout\ & \Add0~46_combout\)))) # (!\baud_cnt[27]~36_combout\ & (!\baud_cnt[31]~37_combout\ & ((\Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[27]~36_combout\,
	datab => \baud_cnt[31]~37_combout\,
	datac => baud_cnt(23),
	datad => \Add0~46_combout\,
	combout => \baud_cnt[23]~12_combout\);

-- Location: FF_X52_Y32_N21
\baud_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[23]~12_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(23));

-- Location: LCCOMB_X52_Y30_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (baud_cnt(24) & (\Add0~47\ $ (GND))) # (!baud_cnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((baud_cnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X53_Y30_N0
\baud_cnt[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[24]~11_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(24)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~48_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(24),
	datad => \Add0~48_combout\,
	combout => \baud_cnt[24]~11_combout\);

-- Location: FF_X53_Y30_N1
\baud_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[24]~11_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(24));

-- Location: LCCOMB_X52_Y30_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (baud_cnt(25) & (!\Add0~49\)) # (!baud_cnt(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!baud_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X53_Y30_N22
\baud_cnt[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[25]~10_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(25)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~50_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(25),
	datad => \Add0~50_combout\,
	combout => \baud_cnt[25]~10_combout\);

-- Location: FF_X53_Y30_N23
\baud_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[25]~10_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(25));

-- Location: LCCOMB_X52_Y30_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (baud_cnt(26) & (\Add0~51\ $ (GND))) # (!baud_cnt(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((baud_cnt(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X53_Y30_N24
\baud_cnt[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[26]~9_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(26)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~52_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(26),
	datad => \Add0~52_combout\,
	combout => \baud_cnt[26]~9_combout\);

-- Location: FF_X53_Y30_N25
\baud_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[26]~9_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(26));

-- Location: LCCOMB_X52_Y30_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (baud_cnt(27) & (!\Add0~53\)) # (!baud_cnt(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!baud_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X53_Y30_N10
\baud_cnt[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[27]~8_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(27)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~54_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(27),
	datad => \Add0~54_combout\,
	combout => \baud_cnt[27]~8_combout\);

-- Location: FF_X53_Y30_N11
\baud_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[27]~8_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(27));

-- Location: LCCOMB_X53_Y30_N26
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!baud_cnt(27) & (!baud_cnt(24) & (!baud_cnt(25) & !baud_cnt(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(27),
	datab => baud_cnt(24),
	datac => baud_cnt(25),
	datad => baud_cnt(26),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X52_Y30_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (baud_cnt(28) & (\Add0~55\ $ (GND))) # (!baud_cnt(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((baud_cnt(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X53_Y30_N18
\baud_cnt[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[28]~7_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(28)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~56_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(28),
	datad => \Add0~56_combout\,
	combout => \baud_cnt[28]~7_combout\);

-- Location: FF_X53_Y30_N19
\baud_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[28]~7_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(28));

-- Location: LCCOMB_X52_Y30_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (baud_cnt(29) & (!\Add0~57\)) # (!baud_cnt(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!baud_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X53_Y30_N12
\baud_cnt[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[29]~6_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(29)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~58_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(29),
	datad => \Add0~58_combout\,
	combout => \baud_cnt[29]~6_combout\);

-- Location: FF_X53_Y30_N13
\baud_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[29]~6_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(29));

-- Location: LCCOMB_X52_Y30_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (baud_cnt(30) & (\Add0~59\ $ (GND))) # (!baud_cnt(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((baud_cnt(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X53_Y30_N2
\baud_cnt[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[30]~5_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(30)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~60_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(30),
	datad => \Add0~60_combout\,
	combout => \baud_cnt[30]~5_combout\);

-- Location: FF_X53_Y30_N3
\baud_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[30]~5_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(30));

-- Location: LCCOMB_X52_Y30_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = baud_cnt(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X53_Y30_N8
\baud_cnt[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[31]~4_combout\ = (\baud_cnt[31]~37_combout\ & (\baud_cnt[27]~36_combout\ & (baud_cnt(31)))) # (!\baud_cnt[31]~37_combout\ & ((\Add0~62_combout\) # ((\baud_cnt[27]~36_combout\ & baud_cnt(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cnt[31]~37_combout\,
	datab => \baud_cnt[27]~36_combout\,
	datac => baud_cnt(31),
	datad => \Add0~62_combout\,
	combout => \baud_cnt[31]~4_combout\);

-- Location: FF_X53_Y30_N9
\baud_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[31]~4_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(31));

-- Location: LCCOMB_X53_Y30_N16
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!baud_cnt(29) & (!baud_cnt(30) & (!baud_cnt(31) & !baud_cnt(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(29),
	datab => baud_cnt(30),
	datac => baud_cnt(31),
	datad => baud_cnt(28),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X52_Y32_N28
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!baud_cnt(22) & (!baud_cnt(23) & (!baud_cnt(21) & !baud_cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(22),
	datab => baud_cnt(23),
	datac => baud_cnt(21),
	datad => baud_cnt(20),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X53_Y30_N20
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!baud_cnt(16) & (!baud_cnt(19) & (!baud_cnt(17) & !baud_cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(16),
	datab => baud_cnt(19),
	datac => baud_cnt(17),
	datad => baud_cnt(18),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X53_Y30_N14
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X53_Y31_N18
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~8_combout\ & (\Equal1~9_combout\ & (\Equal1~7_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X55_Y31_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.state_update_parity~q\) # ((!\Equal1~10_combout\ & \current_state.state_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \current_state.state_update_parity~q\,
	datac => \current_state.state_wait~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X55_Y31_N15
\current_state.state_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_wait~q\);

-- Location: LCCOMB_X56_Y31_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal1~10_combout\ & ((\current_state.state_start~q\) # ((\current_state.state_wait~q\ & !\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_wait~q\,
	datab => \Equal3~0_combout\,
	datac => \current_state.state_start~q\,
	datad => \Equal1~10_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X56_Y31_N5
\current_state.state_data_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_data_frame~q\);

-- Location: LCCOMB_X56_Y31_N16
\bit_cnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~3_combout\ = bit_cnt(2) $ (((\current_state.state_data_frame~q\ & (bit_cnt(1) & bit_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_data_frame~q\,
	datab => bit_cnt(1),
	datac => bit_cnt(2),
	datad => bit_cnt(0),
	combout => \bit_cnt[2]~3_combout\);

-- Location: FF_X56_Y31_N17
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit_cnt[2]~3_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X56_Y31_N30
\bit_cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~1_combout\ = (bit_cnt(2) & (bit_cnt(1) & (\current_state.state_data_frame~q\ & bit_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datab => bit_cnt(1),
	datac => \current_state.state_data_frame~q\,
	datad => bit_cnt(0),
	combout => \bit_cnt[3]~1_combout\);

-- Location: LCCOMB_X56_Y31_N26
\bit_cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~2_combout\ = \bit_cnt[3]~1_combout\ $ (bit_cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cnt[3]~1_combout\,
	datac => bit_cnt(3),
	combout => \bit_cnt[3]~2_combout\);

-- Location: FF_X56_Y31_N27
\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit_cnt[3]~2_combout\,
	clrn => \ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

-- Location: LCCOMB_X56_Y27_N30
\en_data_reg_bus[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_data_reg_bus[0]~0_combout\ = (!bit_cnt(3) & (\current_state.state_sample_data~q\ & (!bit_cnt(1) & !bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => \current_state.state_sample_data~q\,
	datac => bit_cnt(1),
	datad => bit_cnt(2),
	combout => \en_data_reg_bus[0]~0_combout\);

-- Location: LCCOMB_X56_Y27_N0
\DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[0]~0_combout\ = (\en_data_reg_bus[0]~0_combout\ & ((bit_cnt(0) & (\uart_rx_t2~q\)) # (!bit_cnt(0) & ((DATA(0)))))) # (!\en_data_reg_bus[0]~0_combout\ & (((DATA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_data_reg_bus[0]~0_combout\,
	datab => \uart_rx_t2~q\,
	datac => DATA(0),
	datad => bit_cnt(0),
	combout => \DATA[0]~0_combout\);

-- Location: FF_X56_Y27_N1
\DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[0]~0_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(0));

-- Location: LCCOMB_X56_Y27_N18
\data_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[0]~feeder_combout\ = DATA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(0),
	combout => \data_reg[0]~feeder_combout\);

-- Location: LCCOMB_X56_Y27_N6
\en_all_data_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_all_data_reg~0_combout\ = \current_state.state_start~q\ $ (\current_state.state_update_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_start~q\,
	datad => \current_state.state_update_data~q\,
	combout => \en_all_data_reg~0_combout\);

-- Location: FF_X56_Y27_N19
\data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[0]~feeder_combout\,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(0));

-- Location: LCCOMB_X56_Y27_N10
\en_data_reg_bus[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_data_reg_bus[2]~1_combout\ = (!bit_cnt(3) & (\current_state.state_sample_data~q\ & (bit_cnt(1) & !bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => \current_state.state_sample_data~q\,
	datac => bit_cnt(1),
	datad => bit_cnt(2),
	combout => \en_data_reg_bus[2]~1_combout\);

-- Location: LCCOMB_X56_Y27_N16
\DATA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[1]~1_combout\ = (\en_data_reg_bus[2]~1_combout\ & ((bit_cnt(0) & ((DATA(1)))) # (!bit_cnt(0) & (\uart_rx_t2~q\)))) # (!\en_data_reg_bus[2]~1_combout\ & (((DATA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_data_reg_bus[2]~1_combout\,
	datab => \uart_rx_t2~q\,
	datac => DATA(1),
	datad => bit_cnt(0),
	combout => \DATA[1]~1_combout\);

-- Location: FF_X56_Y27_N17
\DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[1]~1_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(1));

-- Location: LCCOMB_X55_Y27_N4
\data_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[1]~feeder_combout\ = DATA(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(1),
	combout => \data_reg[1]~feeder_combout\);

-- Location: FF_X55_Y27_N5
\data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[1]~feeder_combout\,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(1));

-- Location: LCCOMB_X56_Y27_N20
\DATA[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[2]~2_combout\ = (\en_data_reg_bus[2]~1_combout\ & ((bit_cnt(0) & (\uart_rx_t2~q\)) # (!bit_cnt(0) & ((DATA(2)))))) # (!\en_data_reg_bus[2]~1_combout\ & (((DATA(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_data_reg_bus[2]~1_combout\,
	datab => \uart_rx_t2~q\,
	datac => DATA(2),
	datad => bit_cnt(0),
	combout => \DATA[2]~2_combout\);

-- Location: FF_X56_Y27_N21
\DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[2]~2_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(2));

-- Location: LCCOMB_X55_Y27_N6
\data_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[2]~feeder_combout\ = DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(2),
	combout => \data_reg[2]~feeder_combout\);

-- Location: FF_X55_Y27_N7
\data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[2]~feeder_combout\,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(2));

-- Location: LCCOMB_X56_Y27_N28
\en_data_reg_bus[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_data_reg_bus[4]~2_combout\ = (!bit_cnt(3) & (\current_state.state_sample_data~q\ & (!bit_cnt(1) & bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => \current_state.state_sample_data~q\,
	datac => bit_cnt(1),
	datad => bit_cnt(2),
	combout => \en_data_reg_bus[4]~2_combout\);

-- Location: LCCOMB_X56_Y27_N4
\DATA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[3]~3_combout\ = (\en_data_reg_bus[4]~2_combout\ & ((bit_cnt(0) & ((DATA(3)))) # (!bit_cnt(0) & (\uart_rx_t2~q\)))) # (!\en_data_reg_bus[4]~2_combout\ & (((DATA(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_data_reg_bus[4]~2_combout\,
	datab => \uart_rx_t2~q\,
	datac => DATA(3),
	datad => bit_cnt(0),
	combout => \DATA[3]~3_combout\);

-- Location: FF_X56_Y27_N5
\DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[3]~3_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(3));

-- Location: FF_X56_Y27_N13
\data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => DATA(3),
	sload => VCC,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(3));

-- Location: LCCOMB_X56_Y27_N24
\DATA[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[4]~4_combout\ = (\en_data_reg_bus[4]~2_combout\ & ((bit_cnt(0) & (\uart_rx_t2~q\)) # (!bit_cnt(0) & ((DATA(4)))))) # (!\en_data_reg_bus[4]~2_combout\ & (((DATA(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_data_reg_bus[4]~2_combout\,
	datab => \uart_rx_t2~q\,
	datac => DATA(4),
	datad => bit_cnt(0),
	combout => \DATA[4]~4_combout\);

-- Location: FF_X56_Y27_N25
\DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[4]~4_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(4));

-- Location: LCCOMB_X55_Y27_N20
\data_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[4]~feeder_combout\ = DATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(4),
	combout => \data_reg[4]~feeder_combout\);

-- Location: FF_X55_Y27_N21
\data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[4]~feeder_combout\,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(4));

-- Location: LCCOMB_X56_Y27_N22
\en_data_reg_bus[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_data_reg_bus[6]~3_combout\ = (!bit_cnt(3) & (\current_state.state_sample_data~q\ & (bit_cnt(1) & bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => \current_state.state_sample_data~q\,
	datac => bit_cnt(1),
	datad => bit_cnt(2),
	combout => \en_data_reg_bus[6]~3_combout\);

-- Location: LCCOMB_X56_Y27_N8
\DATA[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[5]~5_combout\ = (\en_data_reg_bus[6]~3_combout\ & ((bit_cnt(0) & ((DATA(5)))) # (!bit_cnt(0) & (\uart_rx_t2~q\)))) # (!\en_data_reg_bus[6]~3_combout\ & (((DATA(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_data_reg_bus[6]~3_combout\,
	datab => \uart_rx_t2~q\,
	datac => DATA(5),
	datad => bit_cnt(0),
	combout => \DATA[5]~5_combout\);

-- Location: FF_X56_Y27_N9
\DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[5]~5_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(5));

-- Location: LCCOMB_X55_Y27_N14
\data_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[5]~feeder_combout\ = DATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(5),
	combout => \data_reg[5]~feeder_combout\);

-- Location: FF_X55_Y27_N15
\data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[5]~feeder_combout\,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(5));

-- Location: LCCOMB_X56_Y27_N26
\DATA[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[6]~6_combout\ = (\en_data_reg_bus[6]~3_combout\ & ((bit_cnt(0) & (\uart_rx_t2~q\)) # (!bit_cnt(0) & ((DATA(6)))))) # (!\en_data_reg_bus[6]~3_combout\ & (((DATA(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_data_reg_bus[6]~3_combout\,
	datab => \uart_rx_t2~q\,
	datac => DATA(6),
	datad => bit_cnt(0),
	combout => \DATA[6]~6_combout\);

-- Location: FF_X56_Y27_N27
\DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[6]~6_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(6));

-- Location: LCCOMB_X55_Y27_N28
\data_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[6]~feeder_combout\ = DATA(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(6),
	combout => \data_reg[6]~feeder_combout\);

-- Location: FF_X55_Y27_N29
\data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[6]~feeder_combout\,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(6));

-- Location: LCCOMB_X56_Y27_N14
\DATA[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[7]~7_combout\ = (\Equal3~0_combout\ & ((\current_state.state_sample_data~q\ & ((\uart_rx_t2~q\))) # (!\current_state.state_sample_data~q\ & (DATA(7))))) # (!\Equal3~0_combout\ & (((DATA(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \current_state.state_sample_data~q\,
	datac => DATA(7),
	datad => \uart_rx_t2~q\,
	combout => \DATA[7]~7_combout\);

-- Location: FF_X56_Y27_N15
\DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATA[7]~7_combout\,
	clrn => \ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(7));

-- Location: FF_X56_Y27_N7
\data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => DATA(7),
	sload => VCC,
	ena => \en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(7));

-- Location: LCCOMB_X55_Y31_N18
\IS_VALID~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IS_VALID~0_combout\ = (\stop_bit~q\ & (\current_state.state_idle~q\ & (\recieved_parity_bit~q\ $ (!parity_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_bit~q\,
	datab => \recieved_parity_bit~q\,
	datac => \current_state.state_idle~q\,
	datad => parity_cnt(0),
	combout => \IS_VALID~0_combout\);

ww_DATA_IN(0) <= \DATA_IN[0]~output_o\;

ww_DATA_IN(1) <= \DATA_IN[1]~output_o\;

ww_DATA_IN(2) <= \DATA_IN[2]~output_o\;

ww_DATA_IN(3) <= \DATA_IN[3]~output_o\;

ww_DATA_IN(4) <= \DATA_IN[4]~output_o\;

ww_DATA_IN(5) <= \DATA_IN[5]~output_o\;

ww_DATA_IN(6) <= \DATA_IN[6]~output_o\;

ww_DATA_IN(7) <= \DATA_IN[7]~output_o\;

ww_IDLE <= \IDLE~output_o\;

ww_IS_VALID <= \IS_VALID~output_o\;
END structure;


