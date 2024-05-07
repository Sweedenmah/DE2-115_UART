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

-- DATE "04/17/2023 18:02:10"

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

ENTITY 	MY_UART IS
    PORT (
	CLK : IN std_logic;
	SEND : IN std_logic;
	ARST : IN std_logic;
	DATA_TXD : IN std_logic_vector(7 DOWNTO 0);
	DATA_RXD : OUT std_logic_vector(7 DOWNTO 0);
	UART_TXD : OUT std_logic;
	UART_RXD : IN std_logic;
	RECIEVER_IDLE : IN std_logic;
	RECIEVER_VALID : IN std_logic;
	RXD_IDLE : OUT std_logic;
	RXD_VALID : OUT std_logic;
	TXD_IDLE : OUT std_logic
	);
END MY_UART;

-- Design Ports Information
-- DATA_RXD[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RXD[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RXD[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RXD[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RXD[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RXD[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RXD[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RXD[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXD_IDLE	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXD_VALID	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TXD_IDLE	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEND	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RECIEVER_IDLE	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RECIEVER_VALID	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_TXD[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MY_UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SEND : std_logic;
SIGNAL ww_ARST : std_logic;
SIGNAL ww_DATA_TXD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_RXD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_RECIEVER_IDLE : std_logic;
SIGNAL ww_RECIEVER_VALID : std_logic;
SIGNAL ww_RXD_IDLE : std_logic;
SIGNAL ww_RXD_VALID : std_logic;
SIGNAL ww_TXD_IDLE : std_logic;
SIGNAL \ARST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_RXD[0]~output_o\ : std_logic;
SIGNAL \DATA_RXD[1]~output_o\ : std_logic;
SIGNAL \DATA_RXD[2]~output_o\ : std_logic;
SIGNAL \DATA_RXD[3]~output_o\ : std_logic;
SIGNAL \DATA_RXD[4]~output_o\ : std_logic;
SIGNAL \DATA_RXD[5]~output_o\ : std_logic;
SIGNAL \DATA_RXD[6]~output_o\ : std_logic;
SIGNAL \DATA_RXD[7]~output_o\ : std_logic;
SIGNAL \UART_TXD~output_o\ : std_logic;
SIGNAL \RXD_IDLE~output_o\ : std_logic;
SIGNAL \RXD_VALID~output_o\ : std_logic;
SIGNAL \TXD_IDLE~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RX|current_state.state_arst~feeder_combout\ : std_logic;
SIGNAL \ARST~input_o\ : std_logic;
SIGNAL \ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \RX|current_state.state_arst~q\ : std_logic;
SIGNAL \RX|bit_cnt[1]~4_combout\ : std_logic;
SIGNAL \RX|baud_arst~0_combout\ : std_logic;
SIGNAL \RX|bit_cnt[2]~3_combout\ : std_logic;
SIGNAL \RX|bit_cnt[3]~1_combout\ : std_logic;
SIGNAL \RX|bit_cnt[3]~2_combout\ : std_logic;
SIGNAL \RX|Equal3~0_combout\ : std_logic;
SIGNAL \RX|Selector5~0_combout\ : std_logic;
SIGNAL \RX|Selector3~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_sample_data~q\ : std_logic;
SIGNAL \RX|WideOr11~0_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[0]~37_combout\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \RX|uart_rx_t~q\ : std_logic;
SIGNAL \RX|uart_rx_t1~q\ : std_logic;
SIGNAL \RX|uart_rx_t2~feeder_combout\ : std_logic;
SIGNAL \RX|uart_rx_t2~q\ : std_logic;
SIGNAL \RX|Selector1~0_combout\ : std_logic;
SIGNAL \RX|Selector1~1_combout\ : std_logic;
SIGNAL \RX|current_state.state_start~q\ : std_logic;
SIGNAL \RX|WideOr11~combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[1]~31_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[1]~32\ : std_logic;
SIGNAL \RX|data_sample_cnt[2]~33_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[2]~34\ : std_logic;
SIGNAL \RX|data_sample_cnt[3]~35_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[3]~36\ : std_logic;
SIGNAL \RX|data_sample_cnt[4]~38_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[4]~39\ : std_logic;
SIGNAL \RX|data_sample_cnt[5]~40_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[5]~41\ : std_logic;
SIGNAL \RX|data_sample_cnt[6]~42_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[6]~43\ : std_logic;
SIGNAL \RX|data_sample_cnt[7]~44_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[7]~45\ : std_logic;
SIGNAL \RX|data_sample_cnt[8]~46_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[8]~47\ : std_logic;
SIGNAL \RX|data_sample_cnt[9]~48_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[9]~49\ : std_logic;
SIGNAL \RX|data_sample_cnt[10]~50_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[10]~51\ : std_logic;
SIGNAL \RX|data_sample_cnt[11]~52_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[11]~53\ : std_logic;
SIGNAL \RX|data_sample_cnt[12]~54_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[12]~55\ : std_logic;
SIGNAL \RX|data_sample_cnt[13]~56_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[13]~57\ : std_logic;
SIGNAL \RX|data_sample_cnt[14]~58_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[14]~59\ : std_logic;
SIGNAL \RX|data_sample_cnt[15]~60_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[15]~61\ : std_logic;
SIGNAL \RX|data_sample_cnt[16]~62_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[16]~63\ : std_logic;
SIGNAL \RX|data_sample_cnt[17]~64_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[17]~65\ : std_logic;
SIGNAL \RX|data_sample_cnt[18]~66_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[18]~67\ : std_logic;
SIGNAL \RX|data_sample_cnt[19]~68_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[19]~69\ : std_logic;
SIGNAL \RX|data_sample_cnt[20]~70_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[20]~71\ : std_logic;
SIGNAL \RX|data_sample_cnt[21]~72_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[21]~73\ : std_logic;
SIGNAL \RX|data_sample_cnt[22]~74_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[22]~75\ : std_logic;
SIGNAL \RX|data_sample_cnt[23]~76_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[23]~77\ : std_logic;
SIGNAL \RX|data_sample_cnt[24]~78_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[24]~79\ : std_logic;
SIGNAL \RX|data_sample_cnt[25]~80_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[25]~81\ : std_logic;
SIGNAL \RX|data_sample_cnt[26]~82_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[26]~83\ : std_logic;
SIGNAL \RX|data_sample_cnt[27]~84_combout\ : std_logic;
SIGNAL \RX|Equal2~8_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[27]~85\ : std_logic;
SIGNAL \RX|data_sample_cnt[28]~86_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[28]~87\ : std_logic;
SIGNAL \RX|data_sample_cnt[29]~88_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[29]~89\ : std_logic;
SIGNAL \RX|data_sample_cnt[30]~90_combout\ : std_logic;
SIGNAL \RX|data_sample_cnt[30]~91\ : std_logic;
SIGNAL \RX|data_sample_cnt[31]~92_combout\ : std_logic;
SIGNAL \RX|Equal2~9_combout\ : std_logic;
SIGNAL \RX|Equal2~5_combout\ : std_logic;
SIGNAL \RX|Equal2~6_combout\ : std_logic;
SIGNAL \RX|Equal2~7_combout\ : std_logic;
SIGNAL \RX|Equal2~2_combout\ : std_logic;
SIGNAL \RX|Equal2~1_combout\ : std_logic;
SIGNAL \RX|Equal2~3_combout\ : std_logic;
SIGNAL \RX|Equal2~0_combout\ : std_logic;
SIGNAL \RX|Equal2~4_combout\ : std_logic;
SIGNAL \RX|Equal2~10_combout\ : std_logic;
SIGNAL \RX|Selector5~1_combout\ : std_logic;
SIGNAL \RX|current_state.state_sample_parity~q\ : std_logic;
SIGNAL \RX|next_state.state_parity_check~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_parity_check~q\ : std_logic;
SIGNAL \RX|Selector6~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_wait_done~q\ : std_logic;
SIGNAL \RX|Selector7~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_sample_stop_bit~q\ : std_logic;
SIGNAL \RX|next_state.state_stop_bit_check~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_stop_bit_check~q\ : std_logic;
SIGNAL \RX|Selector8~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_wait_idle~q\ : std_logic;
SIGNAL \RX|stop_bit~0_combout\ : std_logic;
SIGNAL \RX|stop_bit~q\ : std_logic;
SIGNAL \RX|recieved_parity_bit~0_combout\ : std_logic;
SIGNAL \RX|recieved_parity_bit~q\ : std_logic;
SIGNAL \RX|next_state.state_update_parity~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_update_parity~q\ : std_logic;
SIGNAL \RX|parity_cnt[0]~0_combout\ : std_logic;
SIGNAL \RX|parity_cnt_arst~combout\ : std_logic;
SIGNAL \RX|IS_VALID~0_combout\ : std_logic;
SIGNAL \RX|next_state.state_update_data~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_update_data~q\ : std_logic;
SIGNAL \RX|Selector0~0_combout\ : std_logic;
SIGNAL \RX|Selector0~1_combout\ : std_logic;
SIGNAL \RX|current_state.state_idle~q\ : std_logic;
SIGNAL \RX|baud_cnt[31]~37_combout\ : std_logic;
SIGNAL \RX|baud_cnt[16]~36_combout\ : std_logic;
SIGNAL \RX|Add0~0_combout\ : std_logic;
SIGNAL \RX|baud_cnt[0]~34_combout\ : std_logic;
SIGNAL \RX|Add0~1\ : std_logic;
SIGNAL \RX|Add0~2_combout\ : std_logic;
SIGNAL \RX|baud_cnt[1]~33_combout\ : std_logic;
SIGNAL \RX|Add0~3\ : std_logic;
SIGNAL \RX|Add0~4_combout\ : std_logic;
SIGNAL \RX|baud_cnt[2]~32_combout\ : std_logic;
SIGNAL \RX|Add0~5\ : std_logic;
SIGNAL \RX|Add0~6_combout\ : std_logic;
SIGNAL \RX|baud_cnt[3]~35_combout\ : std_logic;
SIGNAL \RX|Add0~7\ : std_logic;
SIGNAL \RX|Add0~8_combout\ : std_logic;
SIGNAL \RX|baud_cnt[4]~29_combout\ : std_logic;
SIGNAL \RX|Add0~9\ : std_logic;
SIGNAL \RX|Add0~10_combout\ : std_logic;
SIGNAL \RX|baud_cnt[5]~31_combout\ : std_logic;
SIGNAL \RX|Add0~11\ : std_logic;
SIGNAL \RX|Add0~12_combout\ : std_logic;
SIGNAL \RX|baud_cnt[6]~28_combout\ : std_logic;
SIGNAL \RX|Add0~13\ : std_logic;
SIGNAL \RX|Add0~14_combout\ : std_logic;
SIGNAL \RX|baud_cnt[7]~30_combout\ : std_logic;
SIGNAL \RX|Add0~15\ : std_logic;
SIGNAL \RX|Add0~16_combout\ : std_logic;
SIGNAL \RX|baud_cnt[8]~27_combout\ : std_logic;
SIGNAL \RX|Add0~17\ : std_logic;
SIGNAL \RX|Add0~18_combout\ : std_logic;
SIGNAL \RX|baud_cnt[9]~26_combout\ : std_logic;
SIGNAL \RX|Add0~19\ : std_logic;
SIGNAL \RX|Add0~20_combout\ : std_logic;
SIGNAL \RX|baud_cnt[10]~24_combout\ : std_logic;
SIGNAL \RX|Add0~21\ : std_logic;
SIGNAL \RX|Add0~22_combout\ : std_logic;
SIGNAL \RX|baud_cnt[11]~25_combout\ : std_logic;
SIGNAL \RX|Add0~23\ : std_logic;
SIGNAL \RX|Add0~24_combout\ : std_logic;
SIGNAL \RX|baud_cnt[12]~20_combout\ : std_logic;
SIGNAL \RX|Add0~25\ : std_logic;
SIGNAL \RX|Add0~26_combout\ : std_logic;
SIGNAL \RX|baud_cnt[13]~23_combout\ : std_logic;
SIGNAL \RX|Add0~27\ : std_logic;
SIGNAL \RX|Add0~28_combout\ : std_logic;
SIGNAL \RX|baud_cnt[14]~22_combout\ : std_logic;
SIGNAL \RX|Add0~29\ : std_logic;
SIGNAL \RX|Add0~30_combout\ : std_logic;
SIGNAL \RX|baud_cnt[15]~21_combout\ : std_logic;
SIGNAL \RX|Equal1~5_combout\ : std_logic;
SIGNAL \RX|Equal1~6_combout\ : std_logic;
SIGNAL \RX|Add0~31\ : std_logic;
SIGNAL \RX|Add0~32_combout\ : std_logic;
SIGNAL \RX|baud_cnt[16]~19_combout\ : std_logic;
SIGNAL \RX|Add0~33\ : std_logic;
SIGNAL \RX|Add0~34_combout\ : std_logic;
SIGNAL \RX|baud_cnt[17]~18_combout\ : std_logic;
SIGNAL \RX|Add0~35\ : std_logic;
SIGNAL \RX|Add0~36_combout\ : std_logic;
SIGNAL \RX|baud_cnt[18]~17_combout\ : std_logic;
SIGNAL \RX|Add0~37\ : std_logic;
SIGNAL \RX|Add0~38_combout\ : std_logic;
SIGNAL \RX|baud_cnt[19]~16_combout\ : std_logic;
SIGNAL \RX|Add0~39\ : std_logic;
SIGNAL \RX|Add0~40_combout\ : std_logic;
SIGNAL \RX|baud_cnt[20]~15_combout\ : std_logic;
SIGNAL \RX|Add0~41\ : std_logic;
SIGNAL \RX|Add0~42_combout\ : std_logic;
SIGNAL \RX|baud_cnt[21]~14_combout\ : std_logic;
SIGNAL \RX|Add0~43\ : std_logic;
SIGNAL \RX|Add0~44_combout\ : std_logic;
SIGNAL \RX|baud_cnt[22]~13_combout\ : std_logic;
SIGNAL \RX|Add0~45\ : std_logic;
SIGNAL \RX|Add0~46_combout\ : std_logic;
SIGNAL \RX|baud_cnt[23]~12_combout\ : std_logic;
SIGNAL \RX|Add0~47\ : std_logic;
SIGNAL \RX|Add0~48_combout\ : std_logic;
SIGNAL \RX|baud_cnt[24]~11_combout\ : std_logic;
SIGNAL \RX|Add0~49\ : std_logic;
SIGNAL \RX|Add0~50_combout\ : std_logic;
SIGNAL \RX|baud_cnt[25]~10_combout\ : std_logic;
SIGNAL \RX|Add0~51\ : std_logic;
SIGNAL \RX|Add0~52_combout\ : std_logic;
SIGNAL \RX|baud_cnt[26]~9_combout\ : std_logic;
SIGNAL \RX|Add0~53\ : std_logic;
SIGNAL \RX|Add0~54_combout\ : std_logic;
SIGNAL \RX|baud_cnt[27]~8_combout\ : std_logic;
SIGNAL \RX|Add0~55\ : std_logic;
SIGNAL \RX|Add0~56_combout\ : std_logic;
SIGNAL \RX|baud_cnt[28]~7_combout\ : std_logic;
SIGNAL \RX|Add0~57\ : std_logic;
SIGNAL \RX|Add0~58_combout\ : std_logic;
SIGNAL \RX|baud_cnt[29]~6_combout\ : std_logic;
SIGNAL \RX|Add0~59\ : std_logic;
SIGNAL \RX|Add0~60_combout\ : std_logic;
SIGNAL \RX|baud_cnt[30]~5_combout\ : std_logic;
SIGNAL \RX|Add0~61\ : std_logic;
SIGNAL \RX|Add0~62_combout\ : std_logic;
SIGNAL \RX|baud_cnt[31]~4_combout\ : std_logic;
SIGNAL \RX|Equal1~0_combout\ : std_logic;
SIGNAL \RX|Equal1~1_combout\ : std_logic;
SIGNAL \RX|Equal1~3_combout\ : std_logic;
SIGNAL \RX|Equal1~2_combout\ : std_logic;
SIGNAL \RX|Equal1~4_combout\ : std_logic;
SIGNAL \RX|Equal1~8_combout\ : std_logic;
SIGNAL \RX|Equal1~7_combout\ : std_logic;
SIGNAL \RX|Equal1~9_combout\ : std_logic;
SIGNAL \RX|Equal1~10_combout\ : std_logic;
SIGNAL \RX|Selector4~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_wait~q\ : std_logic;
SIGNAL \RX|Selector2~0_combout\ : std_logic;
SIGNAL \RX|current_state.state_data_frame~q\ : std_logic;
SIGNAL \RX|bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \RX|en_data_reg_bus[0]~0_combout\ : std_logic;
SIGNAL \RX|DATA[0]~0_combout\ : std_logic;
SIGNAL \RX|data_reg[0]~feeder_combout\ : std_logic;
SIGNAL \RX|en_all_data_reg~0_combout\ : std_logic;
SIGNAL \RX|en_data_reg_bus[2]~1_combout\ : std_logic;
SIGNAL \RX|DATA[1]~1_combout\ : std_logic;
SIGNAL \RX|data_reg[1]~feeder_combout\ : std_logic;
SIGNAL \RX|DATA[2]~2_combout\ : std_logic;
SIGNAL \RX|data_reg[2]~feeder_combout\ : std_logic;
SIGNAL \RX|en_data_reg_bus[4]~2_combout\ : std_logic;
SIGNAL \RX|DATA[3]~3_combout\ : std_logic;
SIGNAL \RX|DATA[4]~4_combout\ : std_logic;
SIGNAL \RX|data_reg[4]~feeder_combout\ : std_logic;
SIGNAL \RX|en_data_reg_bus[6]~3_combout\ : std_logic;
SIGNAL \RX|DATA[5]~5_combout\ : std_logic;
SIGNAL \RX|data_reg[5]~feeder_combout\ : std_logic;
SIGNAL \RX|DATA[6]~6_combout\ : std_logic;
SIGNAL \RX|data_reg[6]~feeder_combout\ : std_logic;
SIGNAL \RX|DATA[7]~7_combout\ : std_logic;
SIGNAL \RX|data_reg[7]~feeder_combout\ : std_logic;
SIGNAL \TX|Add0~0_combout\ : std_logic;
SIGNAL \TX|Add0~1\ : std_logic;
SIGNAL \TX|Add0~2_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[1]~30_combout\ : std_logic;
SIGNAL \TX|WideOr10~0_combout\ : std_logic;
SIGNAL \TX|Add0~3\ : std_logic;
SIGNAL \TX|Add0~5\ : std_logic;
SIGNAL \TX|Add0~6_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[3]~31_combout\ : std_logic;
SIGNAL \TX|Add0~7\ : std_logic;
SIGNAL \TX|Add0~8_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[4]~26_combout\ : std_logic;
SIGNAL \TX|Add0~9\ : std_logic;
SIGNAL \TX|Add0~10_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[5]~28_combout\ : std_logic;
SIGNAL \TX|Add0~11\ : std_logic;
SIGNAL \TX|Add0~12_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[6]~25_combout\ : std_logic;
SIGNAL \TX|Add0~13\ : std_logic;
SIGNAL \TX|Add0~14_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[7]~27_combout\ : std_logic;
SIGNAL \TX|Add0~15\ : std_logic;
SIGNAL \TX|Add0~16_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[8]~24_combout\ : std_logic;
SIGNAL \TX|Add0~17\ : std_logic;
SIGNAL \TX|Add0~18_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[9]~23_combout\ : std_logic;
SIGNAL \TX|Add0~19\ : std_logic;
SIGNAL \TX|Add0~20_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[10]~21_combout\ : std_logic;
SIGNAL \TX|Add0~21\ : std_logic;
SIGNAL \TX|Add0~22_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[11]~22_combout\ : std_logic;
SIGNAL \TX|Add0~23\ : std_logic;
SIGNAL \TX|Add0~24_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[12]~17_combout\ : std_logic;
SIGNAL \TX|Add0~25\ : std_logic;
SIGNAL \TX|Add0~26_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[13]~20_combout\ : std_logic;
SIGNAL \TX|Add0~27\ : std_logic;
SIGNAL \TX|Add0~28_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[14]~19_combout\ : std_logic;
SIGNAL \TX|Add0~29\ : std_logic;
SIGNAL \TX|Add0~30_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[15]~18_combout\ : std_logic;
SIGNAL \TX|Equal0~5_combout\ : std_logic;
SIGNAL \TX|Add0~31\ : std_logic;
SIGNAL \TX|Add0~32_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[16]~16_combout\ : std_logic;
SIGNAL \TX|Add0~33\ : std_logic;
SIGNAL \TX|Add0~34_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[17]~15_combout\ : std_logic;
SIGNAL \TX|Add0~35\ : std_logic;
SIGNAL \TX|Add0~36_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[18]~14_combout\ : std_logic;
SIGNAL \TX|Add0~37\ : std_logic;
SIGNAL \TX|Add0~38_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[19]~13_combout\ : std_logic;
SIGNAL \TX|Add0~39\ : std_logic;
SIGNAL \TX|Add0~40_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[20]~12_combout\ : std_logic;
SIGNAL \TX|Add0~41\ : std_logic;
SIGNAL \TX|Add0~42_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[21]~11_combout\ : std_logic;
SIGNAL \TX|Add0~43\ : std_logic;
SIGNAL \TX|Add0~44_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[22]~10_combout\ : std_logic;
SIGNAL \TX|Add0~45\ : std_logic;
SIGNAL \TX|Add0~46_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[23]~9_combout\ : std_logic;
SIGNAL \TX|Equal0~2_combout\ : std_logic;
SIGNAL \TX|Add0~47\ : std_logic;
SIGNAL \TX|Add0~48_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[24]~8_combout\ : std_logic;
SIGNAL \TX|Add0~49\ : std_logic;
SIGNAL \TX|Add0~50_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[25]~7_combout\ : std_logic;
SIGNAL \TX|Add0~51\ : std_logic;
SIGNAL \TX|Add0~52_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[26]~6_combout\ : std_logic;
SIGNAL \TX|Add0~53\ : std_logic;
SIGNAL \TX|Add0~54_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[27]~5_combout\ : std_logic;
SIGNAL \TX|Add0~55\ : std_logic;
SIGNAL \TX|Add0~56_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[28]~4_combout\ : std_logic;
SIGNAL \TX|Add0~57\ : std_logic;
SIGNAL \TX|Add0~58_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[29]~3_combout\ : std_logic;
SIGNAL \TX|Add0~59\ : std_logic;
SIGNAL \TX|Add0~60_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[30]~2_combout\ : std_logic;
SIGNAL \TX|Add0~61\ : std_logic;
SIGNAL \TX|Add0~62_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[31]~1_combout\ : std_logic;
SIGNAL \TX|Equal0~0_combout\ : std_logic;
SIGNAL \TX|Equal0~3_combout\ : std_logic;
SIGNAL \TX|Equal0~1_combout\ : std_logic;
SIGNAL \TX|Equal0~4_combout\ : std_logic;
SIGNAL \TX|Equal0~6_combout\ : std_logic;
SIGNAL \TX|Equal0~10_combout\ : std_logic;
SIGNAL \TX|Selector6~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_wait_idle~q\ : std_logic;
SIGNAL \TX|next_state.state_ready_idle~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_ready_idle~q\ : std_logic;
SIGNAL \SEND~input_o\ : std_logic;
SIGNAL \RECIEVER_IDLE~input_o\ : std_logic;
SIGNAL \RECIEVER_VALID~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.state_sending~q\ : std_logic;
SIGNAL \max_waiting_time_cnt[0]~93_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[1]~31_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[1]~32\ : std_logic;
SIGNAL \max_waiting_time_cnt[2]~33_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[2]~34\ : std_logic;
SIGNAL \max_waiting_time_cnt[3]~35_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[3]~36\ : std_logic;
SIGNAL \max_waiting_time_cnt[4]~37_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[4]~38\ : std_logic;
SIGNAL \max_waiting_time_cnt[5]~39_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[5]~40\ : std_logic;
SIGNAL \max_waiting_time_cnt[6]~41_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[6]~42\ : std_logic;
SIGNAL \max_waiting_time_cnt[7]~43_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[7]~44\ : std_logic;
SIGNAL \max_waiting_time_cnt[8]~45_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[8]~46\ : std_logic;
SIGNAL \max_waiting_time_cnt[9]~47_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[9]~48\ : std_logic;
SIGNAL \max_waiting_time_cnt[10]~49_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[10]~50\ : std_logic;
SIGNAL \max_waiting_time_cnt[11]~51_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[11]~52\ : std_logic;
SIGNAL \max_waiting_time_cnt[12]~53_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[12]~54\ : std_logic;
SIGNAL \max_waiting_time_cnt[13]~55_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[13]~56\ : std_logic;
SIGNAL \max_waiting_time_cnt[14]~57_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[14]~58\ : std_logic;
SIGNAL \max_waiting_time_cnt[15]~59_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[15]~60\ : std_logic;
SIGNAL \max_waiting_time_cnt[16]~61_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[16]~62\ : std_logic;
SIGNAL \max_waiting_time_cnt[17]~63_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[17]~64\ : std_logic;
SIGNAL \max_waiting_time_cnt[18]~65_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[18]~66\ : std_logic;
SIGNAL \max_waiting_time_cnt[19]~67_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[19]~68\ : std_logic;
SIGNAL \max_waiting_time_cnt[20]~69_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[20]~70\ : std_logic;
SIGNAL \max_waiting_time_cnt[21]~71_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[21]~72\ : std_logic;
SIGNAL \max_waiting_time_cnt[22]~73_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[22]~74\ : std_logic;
SIGNAL \max_waiting_time_cnt[23]~75_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[23]~76\ : std_logic;
SIGNAL \max_waiting_time_cnt[24]~77_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[24]~78\ : std_logic;
SIGNAL \max_waiting_time_cnt[25]~79_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[25]~80\ : std_logic;
SIGNAL \max_waiting_time_cnt[26]~81_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[26]~82\ : std_logic;
SIGNAL \max_waiting_time_cnt[27]~83_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[27]~84\ : std_logic;
SIGNAL \max_waiting_time_cnt[28]~85_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[28]~86\ : std_logic;
SIGNAL \max_waiting_time_cnt[29]~87_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[29]~88\ : std_logic;
SIGNAL \max_waiting_time_cnt[30]~89_combout\ : std_logic;
SIGNAL \max_waiting_time_cnt[30]~90\ : std_logic;
SIGNAL \max_waiting_time_cnt[31]~91_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.state_waiting_handshake~q\ : std_logic;
SIGNAL \next_state.state_time_tolerance~0_combout\ : std_logic;
SIGNAL \current_state.state_time_tolerance~q\ : std_logic;
SIGNAL \current_state.state_error_detection~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \current_state.state_idle~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \current_state.state_send~q\ : std_logic;
SIGNAL \TX|Selector0~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_idle~q\ : std_logic;
SIGNAL \TX|Equal0~7_combout\ : std_logic;
SIGNAL \TX|Equal1~0_combout\ : std_logic;
SIGNAL \TX|Selector1~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_resume_idle~q\ : std_logic;
SIGNAL \TX|next_state.state_start~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_start~q\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[31]~0_combout\ : std_logic;
SIGNAL \TX|Add0~4_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[2]~29_combout\ : std_logic;
SIGNAL \TX|Equal0~8_combout\ : std_logic;
SIGNAL \TX|Equal0~9_combout\ : std_logic;
SIGNAL \TX|Equal0~11_combout\ : std_logic;
SIGNAL \TX|bauld_gen_cnt[0]~32_combout\ : std_logic;
SIGNAL \TX|Selector2~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_wait_data_frame~q\ : std_logic;
SIGNAL \TX|se_r232_tx[0]~3_combout\ : std_logic;
SIGNAL \TX|WideOr10~combout\ : std_logic;
SIGNAL \TX|se_r232_tx[2]~0_combout\ : std_logic;
SIGNAL \TX|Equal2~0_combout\ : std_logic;
SIGNAL \TX|Selector3~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_data_frame~q\ : std_logic;
SIGNAL \TX|Selector4~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_wait~q\ : std_logic;
SIGNAL \TX|next_state.state_parity_bit~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_parity_bit~q\ : std_logic;
SIGNAL \TX|Selector5~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_wait_done~q\ : std_logic;
SIGNAL \TX|next_state.state_done~0_combout\ : std_logic;
SIGNAL \TX|current_state.state_done~q\ : std_logic;
SIGNAL \TX|WideOr9~0_combout\ : std_logic;
SIGNAL \TX|se_r232_tx[1]~4_combout\ : std_logic;
SIGNAL \TX|se_r232_tx[3]~1_combout\ : std_logic;
SIGNAL \TX|se_r232_tx[3]~2_combout\ : std_logic;
SIGNAL \DATA_TXD[0]~input_o\ : std_logic;
SIGNAL \data_reg[0]~feeder_combout\ : std_logic;
SIGNAL \DATA_TXD[6]~input_o\ : std_logic;
SIGNAL \data_reg[6]~feeder_combout\ : std_logic;
SIGNAL \TX|Mux0~4_combout\ : std_logic;
SIGNAL \DATA_TXD[1]~input_o\ : std_logic;
SIGNAL \data_reg[1]~feeder_combout\ : std_logic;
SIGNAL \TX|Mux0~5_combout\ : std_logic;
SIGNAL \TX|parity_bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \DATA_TXD[7]~input_o\ : std_logic;
SIGNAL \data_reg[7]~feeder_combout\ : std_logic;
SIGNAL \TX|Mux0~0_combout\ : std_logic;
SIGNAL \DATA_TXD[4]~input_o\ : std_logic;
SIGNAL \DATA_TXD[3]~input_o\ : std_logic;
SIGNAL \data_reg[3]~feeder_combout\ : std_logic;
SIGNAL \DATA_TXD[2]~input_o\ : std_logic;
SIGNAL \data_reg[2]~feeder_combout\ : std_logic;
SIGNAL \TX|Mux0~1_combout\ : std_logic;
SIGNAL \DATA_TXD[5]~input_o\ : std_logic;
SIGNAL \data_reg[5]~feeder_combout\ : std_logic;
SIGNAL \TX|Mux0~2_combout\ : std_logic;
SIGNAL \TX|Mux0~3_combout\ : std_logic;
SIGNAL \TX|Mux0~6_combout\ : std_logic;
SIGNAL \RX|IS_VALID~combout\ : std_logic;
SIGNAL max_waiting_time_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \TX|parity_bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|data_sample_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TX|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RX|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \TX|se_r232_tx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|parity_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL data_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \RX|baud_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RX|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TX|bauld_gen_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \RX|ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \RX|ALT_INV_baud_arst~0_combout\ : std_logic;
SIGNAL \RX|ALT_INV_parity_cnt_arst~combout\ : std_logic;
SIGNAL \TX|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \TX|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \ALT_INV_current_state.state_idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_SEND <= SEND;
ww_ARST <= ARST;
ww_DATA_TXD <= DATA_TXD;
DATA_RXD <= ww_DATA_RXD;
UART_TXD <= ww_UART_TXD;
ww_UART_RXD <= UART_RXD;
ww_RECIEVER_IDLE <= RECIEVER_IDLE;
ww_RECIEVER_VALID <= RECIEVER_VALID;
RXD_IDLE <= ww_RXD_IDLE;
RXD_VALID <= ww_RXD_VALID;
TXD_IDLE <= ww_TXD_IDLE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ARST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ARST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_ARST~inputclkctrl_outclk\ <= NOT \ARST~inputclkctrl_outclk\;
\RX|ALT_INV_WideOr11~combout\ <= NOT \RX|WideOr11~combout\;
\RX|ALT_INV_baud_arst~0_combout\ <= NOT \RX|baud_arst~0_combout\;
\RX|ALT_INV_parity_cnt_arst~combout\ <= NOT \RX|parity_cnt_arst~combout\;
\TX|ALT_INV_WideOr10~0_combout\ <= NOT \TX|WideOr10~0_combout\;
\TX|ALT_INV_WideOr10~combout\ <= NOT \TX|WideOr10~combout\;
\ALT_INV_current_state.state_idle~q\ <= NOT \current_state.state_idle~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N23
\DATA_RXD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(0),
	devoe => ww_devoe,
	o => \DATA_RXD[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\DATA_RXD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(1),
	devoe => ww_devoe,
	o => \DATA_RXD[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\DATA_RXD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(2),
	devoe => ww_devoe,
	o => \DATA_RXD[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\DATA_RXD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(3),
	devoe => ww_devoe,
	o => \DATA_RXD[3]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\DATA_RXD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(4),
	devoe => ww_devoe,
	o => \DATA_RXD[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\DATA_RXD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(5),
	devoe => ww_devoe,
	o => \DATA_RXD[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\DATA_RXD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(6),
	devoe => ww_devoe,
	o => \DATA_RXD[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\DATA_RXD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data_reg\(7),
	devoe => ww_devoe,
	o => \DATA_RXD[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\UART_TXD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TX|Mux0~6_combout\,
	devoe => ww_devoe,
	o => \UART_TXD~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\RXD_IDLE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|current_state.state_idle~q\,
	devoe => ww_devoe,
	o => \RXD_IDLE~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\RXD_VALID~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|IS_VALID~combout\,
	devoe => ww_devoe,
	o => \RXD_VALID~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\TXD_IDLE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.state_idle~q\,
	devoe => ww_devoe,
	o => \TXD_IDLE~output_o\);

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

-- Location: LCCOMB_X48_Y69_N6
\RX|current_state.state_arst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|current_state.state_arst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RX|current_state.state_arst~feeder_combout\);

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

-- Location: FF_X48_Y69_N7
\RX|current_state.state_arst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|current_state.state_arst~feeder_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_arst~q\);

-- Location: LCCOMB_X50_Y69_N26
\RX|bit_cnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|bit_cnt[1]~4_combout\ = \RX|bit_cnt\(1) $ (((\RX|current_state.state_data_frame~q\ & \RX|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|current_state.state_data_frame~q\,
	datac => \RX|bit_cnt\(1),
	datad => \RX|bit_cnt\(0),
	combout => \RX|bit_cnt[1]~4_combout\);

-- Location: LCCOMB_X48_Y69_N2
\RX|baud_arst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_arst~0_combout\ = (\RX|current_state.state_idle~q\) # (!\RX|current_state.state_arst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|current_state.state_idle~q\,
	datad => \RX|current_state.state_arst~q\,
	combout => \RX|baud_arst~0_combout\);

-- Location: FF_X50_Y69_N27
\RX|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|bit_cnt[1]~4_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|bit_cnt\(1));

-- Location: LCCOMB_X50_Y69_N12
\RX|bit_cnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|bit_cnt[2]~3_combout\ = \RX|bit_cnt\(2) $ (((\RX|bit_cnt\(1) & (\RX|bit_cnt\(0) & \RX|current_state.state_data_frame~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(1),
	datab => \RX|bit_cnt\(0),
	datac => \RX|bit_cnt\(2),
	datad => \RX|current_state.state_data_frame~q\,
	combout => \RX|bit_cnt[2]~3_combout\);

-- Location: FF_X50_Y69_N13
\RX|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|bit_cnt[2]~3_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|bit_cnt\(2));

-- Location: LCCOMB_X50_Y69_N10
\RX|bit_cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|bit_cnt[3]~1_combout\ = (\RX|bit_cnt\(2) & (\RX|bit_cnt\(0) & (\RX|bit_cnt\(1) & \RX|current_state.state_data_frame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(2),
	datab => \RX|bit_cnt\(0),
	datac => \RX|bit_cnt\(1),
	datad => \RX|current_state.state_data_frame~q\,
	combout => \RX|bit_cnt[3]~1_combout\);

-- Location: LCCOMB_X50_Y69_N18
\RX|bit_cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|bit_cnt[3]~2_combout\ = \RX|bit_cnt\(3) $ (\RX|bit_cnt[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|bit_cnt\(3),
	datad => \RX|bit_cnt[3]~1_combout\,
	combout => \RX|bit_cnt[3]~2_combout\);

-- Location: FF_X50_Y69_N19
\RX|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|bit_cnt[3]~2_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|bit_cnt\(3));

-- Location: LCCOMB_X50_Y69_N8
\RX|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal3~0_combout\ = (!\RX|bit_cnt\(2) & (\RX|bit_cnt\(3) & (!\RX|bit_cnt\(1) & !\RX|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(2),
	datab => \RX|bit_cnt\(3),
	datac => \RX|bit_cnt\(1),
	datad => \RX|bit_cnt\(0),
	combout => \RX|Equal3~0_combout\);

-- Location: LCCOMB_X47_Y69_N2
\RX|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector5~0_combout\ = (\RX|current_state.state_wait~q\ & \RX|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|current_state.state_wait~q\,
	datad => \RX|Equal3~0_combout\,
	combout => \RX|Selector5~0_combout\);

-- Location: LCCOMB_X47_Y69_N16
\RX|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector3~0_combout\ = (\RX|current_state.state_data_frame~q\) # ((\RX|current_state.state_sample_data~q\ & !\RX|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_data_frame~q\,
	datac => \RX|current_state.state_sample_data~q\,
	datad => \RX|Equal2~10_combout\,
	combout => \RX|Selector3~0_combout\);

-- Location: FF_X47_Y69_N17
\RX|current_state.state_sample_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector3~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_sample_data~q\);

-- Location: LCCOMB_X47_Y69_N0
\RX|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|WideOr11~0_combout\ = (\RX|current_state.state_sample_parity~q\) # ((\RX|current_state.state_sample_data~q\) # ((\RX|current_state.state_data_frame~q\) # (\RX|current_state.state_sample_stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_sample_parity~q\,
	datab => \RX|current_state.state_sample_data~q\,
	datac => \RX|current_state.state_data_frame~q\,
	datad => \RX|current_state.state_sample_stop_bit~q\,
	combout => \RX|WideOr11~0_combout\);

-- Location: LCCOMB_X47_Y69_N8
\RX|data_sample_cnt[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[0]~37_combout\ = \RX|data_sample_cnt\(0) $ (\RX|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|data_sample_cnt\(0),
	datad => \RX|WideOr11~0_combout\,
	combout => \RX|data_sample_cnt[0]~37_combout\);

-- Location: IOIBUF_X47_Y73_N1
\UART_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: FF_X47_Y69_N31
\RX|uart_rx_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \UART_RXD~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|uart_rx_t~q\);

-- Location: FF_X48_Y69_N29
\RX|uart_rx_t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|uart_rx_t~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|uart_rx_t1~q\);

-- Location: LCCOMB_X48_Y69_N30
\RX|uart_rx_t2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|uart_rx_t2~feeder_combout\ = \RX|uart_rx_t1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|uart_rx_t1~q\,
	combout => \RX|uart_rx_t2~feeder_combout\);

-- Location: FF_X48_Y69_N31
\RX|uart_rx_t2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|uart_rx_t2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|uart_rx_t2~q\);

-- Location: LCCOMB_X48_Y69_N28
\RX|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector1~0_combout\ = (\RX|uart_rx_t2~q\ & !\RX|uart_rx_t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|uart_rx_t2~q\,
	datac => \RX|uart_rx_t1~q\,
	combout => \RX|Selector1~0_combout\);

-- Location: LCCOMB_X47_Y69_N24
\RX|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector1~1_combout\ = (\RX|Equal1~10_combout\ & (\RX|current_state.state_idle~q\ & ((\RX|Selector1~0_combout\)))) # (!\RX|Equal1~10_combout\ & ((\RX|current_state.state_start~q\) # ((\RX|current_state.state_idle~q\ & \RX|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal1~10_combout\,
	datab => \RX|current_state.state_idle~q\,
	datac => \RX|current_state.state_start~q\,
	datad => \RX|Selector1~0_combout\,
	combout => \RX|Selector1~1_combout\);

-- Location: FF_X47_Y69_N25
\RX|current_state.state_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector1~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_start~q\);

-- Location: LCCOMB_X47_Y69_N30
\RX|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|WideOr11~combout\ = (!\RX|current_state.state_wait~q\ & (!\RX|current_state.state_start~q\ & !\RX|WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_wait~q\,
	datab => \RX|current_state.state_start~q\,
	datad => \RX|WideOr11~0_combout\,
	combout => \RX|WideOr11~combout\);

-- Location: FF_X46_Y69_N1
\RX|data_sample_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|data_sample_cnt[0]~37_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(0));

-- Location: LCCOMB_X46_Y69_N2
\RX|data_sample_cnt[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[1]~31_combout\ = (\RX|data_sample_cnt\(0) & (\RX|data_sample_cnt\(1) $ (VCC))) # (!\RX|data_sample_cnt\(0) & (\RX|data_sample_cnt\(1) & VCC))
-- \RX|data_sample_cnt[1]~32\ = CARRY((\RX|data_sample_cnt\(0) & \RX|data_sample_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(0),
	datab => \RX|data_sample_cnt\(1),
	datad => VCC,
	combout => \RX|data_sample_cnt[1]~31_combout\,
	cout => \RX|data_sample_cnt[1]~32\);

-- Location: FF_X46_Y69_N3
\RX|data_sample_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[1]~31_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(1));

-- Location: LCCOMB_X46_Y69_N4
\RX|data_sample_cnt[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[2]~33_combout\ = (\RX|data_sample_cnt\(2) & (!\RX|data_sample_cnt[1]~32\)) # (!\RX|data_sample_cnt\(2) & ((\RX|data_sample_cnt[1]~32\) # (GND)))
-- \RX|data_sample_cnt[2]~34\ = CARRY((!\RX|data_sample_cnt[1]~32\) # (!\RX|data_sample_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(2),
	datad => VCC,
	cin => \RX|data_sample_cnt[1]~32\,
	combout => \RX|data_sample_cnt[2]~33_combout\,
	cout => \RX|data_sample_cnt[2]~34\);

-- Location: FF_X46_Y69_N5
\RX|data_sample_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[2]~33_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(2));

-- Location: LCCOMB_X46_Y69_N6
\RX|data_sample_cnt[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[3]~35_combout\ = (\RX|data_sample_cnt\(3) & (\RX|data_sample_cnt[2]~34\ $ (GND))) # (!\RX|data_sample_cnt\(3) & (!\RX|data_sample_cnt[2]~34\ & VCC))
-- \RX|data_sample_cnt[3]~36\ = CARRY((\RX|data_sample_cnt\(3) & !\RX|data_sample_cnt[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(3),
	datad => VCC,
	cin => \RX|data_sample_cnt[2]~34\,
	combout => \RX|data_sample_cnt[3]~35_combout\,
	cout => \RX|data_sample_cnt[3]~36\);

-- Location: FF_X46_Y69_N7
\RX|data_sample_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[3]~35_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(3));

-- Location: LCCOMB_X46_Y69_N8
\RX|data_sample_cnt[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[4]~38_combout\ = (\RX|data_sample_cnt\(4) & (!\RX|data_sample_cnt[3]~36\)) # (!\RX|data_sample_cnt\(4) & ((\RX|data_sample_cnt[3]~36\) # (GND)))
-- \RX|data_sample_cnt[4]~39\ = CARRY((!\RX|data_sample_cnt[3]~36\) # (!\RX|data_sample_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(4),
	datad => VCC,
	cin => \RX|data_sample_cnt[3]~36\,
	combout => \RX|data_sample_cnt[4]~38_combout\,
	cout => \RX|data_sample_cnt[4]~39\);

-- Location: FF_X46_Y69_N9
\RX|data_sample_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[4]~38_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(4));

-- Location: LCCOMB_X46_Y69_N10
\RX|data_sample_cnt[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[5]~40_combout\ = (\RX|data_sample_cnt\(5) & (\RX|data_sample_cnt[4]~39\ $ (GND))) # (!\RX|data_sample_cnt\(5) & (!\RX|data_sample_cnt[4]~39\ & VCC))
-- \RX|data_sample_cnt[5]~41\ = CARRY((\RX|data_sample_cnt\(5) & !\RX|data_sample_cnt[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(5),
	datad => VCC,
	cin => \RX|data_sample_cnt[4]~39\,
	combout => \RX|data_sample_cnt[5]~40_combout\,
	cout => \RX|data_sample_cnt[5]~41\);

-- Location: FF_X46_Y69_N11
\RX|data_sample_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[5]~40_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(5));

-- Location: LCCOMB_X46_Y69_N12
\RX|data_sample_cnt[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[6]~42_combout\ = (\RX|data_sample_cnt\(6) & (!\RX|data_sample_cnt[5]~41\)) # (!\RX|data_sample_cnt\(6) & ((\RX|data_sample_cnt[5]~41\) # (GND)))
-- \RX|data_sample_cnt[6]~43\ = CARRY((!\RX|data_sample_cnt[5]~41\) # (!\RX|data_sample_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(6),
	datad => VCC,
	cin => \RX|data_sample_cnt[5]~41\,
	combout => \RX|data_sample_cnt[6]~42_combout\,
	cout => \RX|data_sample_cnt[6]~43\);

-- Location: FF_X46_Y69_N13
\RX|data_sample_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[6]~42_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(6));

-- Location: LCCOMB_X46_Y69_N14
\RX|data_sample_cnt[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[7]~44_combout\ = (\RX|data_sample_cnt\(7) & (\RX|data_sample_cnt[6]~43\ $ (GND))) # (!\RX|data_sample_cnt\(7) & (!\RX|data_sample_cnt[6]~43\ & VCC))
-- \RX|data_sample_cnt[7]~45\ = CARRY((\RX|data_sample_cnt\(7) & !\RX|data_sample_cnt[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(7),
	datad => VCC,
	cin => \RX|data_sample_cnt[6]~43\,
	combout => \RX|data_sample_cnt[7]~44_combout\,
	cout => \RX|data_sample_cnt[7]~45\);

-- Location: FF_X46_Y69_N15
\RX|data_sample_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[7]~44_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(7));

-- Location: LCCOMB_X46_Y69_N16
\RX|data_sample_cnt[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[8]~46_combout\ = (\RX|data_sample_cnt\(8) & (!\RX|data_sample_cnt[7]~45\)) # (!\RX|data_sample_cnt\(8) & ((\RX|data_sample_cnt[7]~45\) # (GND)))
-- \RX|data_sample_cnt[8]~47\ = CARRY((!\RX|data_sample_cnt[7]~45\) # (!\RX|data_sample_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(8),
	datad => VCC,
	cin => \RX|data_sample_cnt[7]~45\,
	combout => \RX|data_sample_cnt[8]~46_combout\,
	cout => \RX|data_sample_cnt[8]~47\);

-- Location: FF_X46_Y69_N17
\RX|data_sample_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[8]~46_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(8));

-- Location: LCCOMB_X46_Y69_N18
\RX|data_sample_cnt[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[9]~48_combout\ = (\RX|data_sample_cnt\(9) & (\RX|data_sample_cnt[8]~47\ $ (GND))) # (!\RX|data_sample_cnt\(9) & (!\RX|data_sample_cnt[8]~47\ & VCC))
-- \RX|data_sample_cnt[9]~49\ = CARRY((\RX|data_sample_cnt\(9) & !\RX|data_sample_cnt[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(9),
	datad => VCC,
	cin => \RX|data_sample_cnt[8]~47\,
	combout => \RX|data_sample_cnt[9]~48_combout\,
	cout => \RX|data_sample_cnt[9]~49\);

-- Location: FF_X46_Y69_N19
\RX|data_sample_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[9]~48_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(9));

-- Location: LCCOMB_X46_Y69_N20
\RX|data_sample_cnt[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[10]~50_combout\ = (\RX|data_sample_cnt\(10) & (!\RX|data_sample_cnt[9]~49\)) # (!\RX|data_sample_cnt\(10) & ((\RX|data_sample_cnt[9]~49\) # (GND)))
-- \RX|data_sample_cnt[10]~51\ = CARRY((!\RX|data_sample_cnt[9]~49\) # (!\RX|data_sample_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(10),
	datad => VCC,
	cin => \RX|data_sample_cnt[9]~49\,
	combout => \RX|data_sample_cnt[10]~50_combout\,
	cout => \RX|data_sample_cnt[10]~51\);

-- Location: FF_X46_Y69_N21
\RX|data_sample_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[10]~50_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(10));

-- Location: LCCOMB_X46_Y69_N22
\RX|data_sample_cnt[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[11]~52_combout\ = (\RX|data_sample_cnt\(11) & (\RX|data_sample_cnt[10]~51\ $ (GND))) # (!\RX|data_sample_cnt\(11) & (!\RX|data_sample_cnt[10]~51\ & VCC))
-- \RX|data_sample_cnt[11]~53\ = CARRY((\RX|data_sample_cnt\(11) & !\RX|data_sample_cnt[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(11),
	datad => VCC,
	cin => \RX|data_sample_cnt[10]~51\,
	combout => \RX|data_sample_cnt[11]~52_combout\,
	cout => \RX|data_sample_cnt[11]~53\);

-- Location: FF_X46_Y69_N23
\RX|data_sample_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[11]~52_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(11));

-- Location: LCCOMB_X46_Y69_N24
\RX|data_sample_cnt[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[12]~54_combout\ = (\RX|data_sample_cnt\(12) & (!\RX|data_sample_cnt[11]~53\)) # (!\RX|data_sample_cnt\(12) & ((\RX|data_sample_cnt[11]~53\) # (GND)))
-- \RX|data_sample_cnt[12]~55\ = CARRY((!\RX|data_sample_cnt[11]~53\) # (!\RX|data_sample_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(12),
	datad => VCC,
	cin => \RX|data_sample_cnt[11]~53\,
	combout => \RX|data_sample_cnt[12]~54_combout\,
	cout => \RX|data_sample_cnt[12]~55\);

-- Location: FF_X46_Y69_N25
\RX|data_sample_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[12]~54_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(12));

-- Location: LCCOMB_X46_Y69_N26
\RX|data_sample_cnt[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[13]~56_combout\ = (\RX|data_sample_cnt\(13) & (\RX|data_sample_cnt[12]~55\ $ (GND))) # (!\RX|data_sample_cnt\(13) & (!\RX|data_sample_cnt[12]~55\ & VCC))
-- \RX|data_sample_cnt[13]~57\ = CARRY((\RX|data_sample_cnt\(13) & !\RX|data_sample_cnt[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(13),
	datad => VCC,
	cin => \RX|data_sample_cnt[12]~55\,
	combout => \RX|data_sample_cnt[13]~56_combout\,
	cout => \RX|data_sample_cnt[13]~57\);

-- Location: FF_X46_Y69_N27
\RX|data_sample_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[13]~56_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(13));

-- Location: LCCOMB_X46_Y69_N28
\RX|data_sample_cnt[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[14]~58_combout\ = (\RX|data_sample_cnt\(14) & (!\RX|data_sample_cnt[13]~57\)) # (!\RX|data_sample_cnt\(14) & ((\RX|data_sample_cnt[13]~57\) # (GND)))
-- \RX|data_sample_cnt[14]~59\ = CARRY((!\RX|data_sample_cnt[13]~57\) # (!\RX|data_sample_cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(14),
	datad => VCC,
	cin => \RX|data_sample_cnt[13]~57\,
	combout => \RX|data_sample_cnt[14]~58_combout\,
	cout => \RX|data_sample_cnt[14]~59\);

-- Location: FF_X46_Y69_N29
\RX|data_sample_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[14]~58_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(14));

-- Location: LCCOMB_X46_Y69_N30
\RX|data_sample_cnt[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[15]~60_combout\ = (\RX|data_sample_cnt\(15) & (\RX|data_sample_cnt[14]~59\ $ (GND))) # (!\RX|data_sample_cnt\(15) & (!\RX|data_sample_cnt[14]~59\ & VCC))
-- \RX|data_sample_cnt[15]~61\ = CARRY((\RX|data_sample_cnt\(15) & !\RX|data_sample_cnt[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(15),
	datad => VCC,
	cin => \RX|data_sample_cnt[14]~59\,
	combout => \RX|data_sample_cnt[15]~60_combout\,
	cout => \RX|data_sample_cnt[15]~61\);

-- Location: FF_X46_Y69_N31
\RX|data_sample_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[15]~60_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(15));

-- Location: LCCOMB_X46_Y68_N0
\RX|data_sample_cnt[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[16]~62_combout\ = (\RX|data_sample_cnt\(16) & (!\RX|data_sample_cnt[15]~61\)) # (!\RX|data_sample_cnt\(16) & ((\RX|data_sample_cnt[15]~61\) # (GND)))
-- \RX|data_sample_cnt[16]~63\ = CARRY((!\RX|data_sample_cnt[15]~61\) # (!\RX|data_sample_cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(16),
	datad => VCC,
	cin => \RX|data_sample_cnt[15]~61\,
	combout => \RX|data_sample_cnt[16]~62_combout\,
	cout => \RX|data_sample_cnt[16]~63\);

-- Location: FF_X46_Y68_N1
\RX|data_sample_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[16]~62_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(16));

-- Location: LCCOMB_X46_Y68_N2
\RX|data_sample_cnt[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[17]~64_combout\ = (\RX|data_sample_cnt\(17) & (\RX|data_sample_cnt[16]~63\ $ (GND))) # (!\RX|data_sample_cnt\(17) & (!\RX|data_sample_cnt[16]~63\ & VCC))
-- \RX|data_sample_cnt[17]~65\ = CARRY((\RX|data_sample_cnt\(17) & !\RX|data_sample_cnt[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(17),
	datad => VCC,
	cin => \RX|data_sample_cnt[16]~63\,
	combout => \RX|data_sample_cnt[17]~64_combout\,
	cout => \RX|data_sample_cnt[17]~65\);

-- Location: FF_X46_Y68_N3
\RX|data_sample_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[17]~64_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(17));

-- Location: LCCOMB_X46_Y68_N4
\RX|data_sample_cnt[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[18]~66_combout\ = (\RX|data_sample_cnt\(18) & (!\RX|data_sample_cnt[17]~65\)) # (!\RX|data_sample_cnt\(18) & ((\RX|data_sample_cnt[17]~65\) # (GND)))
-- \RX|data_sample_cnt[18]~67\ = CARRY((!\RX|data_sample_cnt[17]~65\) # (!\RX|data_sample_cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(18),
	datad => VCC,
	cin => \RX|data_sample_cnt[17]~65\,
	combout => \RX|data_sample_cnt[18]~66_combout\,
	cout => \RX|data_sample_cnt[18]~67\);

-- Location: FF_X46_Y68_N5
\RX|data_sample_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[18]~66_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(18));

-- Location: LCCOMB_X46_Y68_N6
\RX|data_sample_cnt[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[19]~68_combout\ = (\RX|data_sample_cnt\(19) & (\RX|data_sample_cnt[18]~67\ $ (GND))) # (!\RX|data_sample_cnt\(19) & (!\RX|data_sample_cnt[18]~67\ & VCC))
-- \RX|data_sample_cnt[19]~69\ = CARRY((\RX|data_sample_cnt\(19) & !\RX|data_sample_cnt[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(19),
	datad => VCC,
	cin => \RX|data_sample_cnt[18]~67\,
	combout => \RX|data_sample_cnt[19]~68_combout\,
	cout => \RX|data_sample_cnt[19]~69\);

-- Location: FF_X46_Y68_N7
\RX|data_sample_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[19]~68_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(19));

-- Location: LCCOMB_X46_Y68_N8
\RX|data_sample_cnt[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[20]~70_combout\ = (\RX|data_sample_cnt\(20) & (!\RX|data_sample_cnt[19]~69\)) # (!\RX|data_sample_cnt\(20) & ((\RX|data_sample_cnt[19]~69\) # (GND)))
-- \RX|data_sample_cnt[20]~71\ = CARRY((!\RX|data_sample_cnt[19]~69\) # (!\RX|data_sample_cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(20),
	datad => VCC,
	cin => \RX|data_sample_cnt[19]~69\,
	combout => \RX|data_sample_cnt[20]~70_combout\,
	cout => \RX|data_sample_cnt[20]~71\);

-- Location: FF_X46_Y68_N9
\RX|data_sample_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[20]~70_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(20));

-- Location: LCCOMB_X46_Y68_N10
\RX|data_sample_cnt[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[21]~72_combout\ = (\RX|data_sample_cnt\(21) & (\RX|data_sample_cnt[20]~71\ $ (GND))) # (!\RX|data_sample_cnt\(21) & (!\RX|data_sample_cnt[20]~71\ & VCC))
-- \RX|data_sample_cnt[21]~73\ = CARRY((\RX|data_sample_cnt\(21) & !\RX|data_sample_cnt[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(21),
	datad => VCC,
	cin => \RX|data_sample_cnt[20]~71\,
	combout => \RX|data_sample_cnt[21]~72_combout\,
	cout => \RX|data_sample_cnt[21]~73\);

-- Location: FF_X46_Y68_N11
\RX|data_sample_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[21]~72_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(21));

-- Location: LCCOMB_X46_Y68_N12
\RX|data_sample_cnt[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[22]~74_combout\ = (\RX|data_sample_cnt\(22) & (!\RX|data_sample_cnt[21]~73\)) # (!\RX|data_sample_cnt\(22) & ((\RX|data_sample_cnt[21]~73\) # (GND)))
-- \RX|data_sample_cnt[22]~75\ = CARRY((!\RX|data_sample_cnt[21]~73\) # (!\RX|data_sample_cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(22),
	datad => VCC,
	cin => \RX|data_sample_cnt[21]~73\,
	combout => \RX|data_sample_cnt[22]~74_combout\,
	cout => \RX|data_sample_cnt[22]~75\);

-- Location: FF_X46_Y68_N13
\RX|data_sample_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[22]~74_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(22));

-- Location: LCCOMB_X46_Y68_N14
\RX|data_sample_cnt[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[23]~76_combout\ = (\RX|data_sample_cnt\(23) & (\RX|data_sample_cnt[22]~75\ $ (GND))) # (!\RX|data_sample_cnt\(23) & (!\RX|data_sample_cnt[22]~75\ & VCC))
-- \RX|data_sample_cnt[23]~77\ = CARRY((\RX|data_sample_cnt\(23) & !\RX|data_sample_cnt[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(23),
	datad => VCC,
	cin => \RX|data_sample_cnt[22]~75\,
	combout => \RX|data_sample_cnt[23]~76_combout\,
	cout => \RX|data_sample_cnt[23]~77\);

-- Location: FF_X46_Y68_N15
\RX|data_sample_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[23]~76_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(23));

-- Location: LCCOMB_X46_Y68_N16
\RX|data_sample_cnt[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[24]~78_combout\ = (\RX|data_sample_cnt\(24) & (!\RX|data_sample_cnt[23]~77\)) # (!\RX|data_sample_cnt\(24) & ((\RX|data_sample_cnt[23]~77\) # (GND)))
-- \RX|data_sample_cnt[24]~79\ = CARRY((!\RX|data_sample_cnt[23]~77\) # (!\RX|data_sample_cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(24),
	datad => VCC,
	cin => \RX|data_sample_cnt[23]~77\,
	combout => \RX|data_sample_cnt[24]~78_combout\,
	cout => \RX|data_sample_cnt[24]~79\);

-- Location: FF_X46_Y68_N17
\RX|data_sample_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[24]~78_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(24));

-- Location: LCCOMB_X46_Y68_N18
\RX|data_sample_cnt[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[25]~80_combout\ = (\RX|data_sample_cnt\(25) & (\RX|data_sample_cnt[24]~79\ $ (GND))) # (!\RX|data_sample_cnt\(25) & (!\RX|data_sample_cnt[24]~79\ & VCC))
-- \RX|data_sample_cnt[25]~81\ = CARRY((\RX|data_sample_cnt\(25) & !\RX|data_sample_cnt[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(25),
	datad => VCC,
	cin => \RX|data_sample_cnt[24]~79\,
	combout => \RX|data_sample_cnt[25]~80_combout\,
	cout => \RX|data_sample_cnt[25]~81\);

-- Location: FF_X46_Y68_N19
\RX|data_sample_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[25]~80_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(25));

-- Location: LCCOMB_X46_Y68_N20
\RX|data_sample_cnt[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[26]~82_combout\ = (\RX|data_sample_cnt\(26) & (!\RX|data_sample_cnt[25]~81\)) # (!\RX|data_sample_cnt\(26) & ((\RX|data_sample_cnt[25]~81\) # (GND)))
-- \RX|data_sample_cnt[26]~83\ = CARRY((!\RX|data_sample_cnt[25]~81\) # (!\RX|data_sample_cnt\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(26),
	datad => VCC,
	cin => \RX|data_sample_cnt[25]~81\,
	combout => \RX|data_sample_cnt[26]~82_combout\,
	cout => \RX|data_sample_cnt[26]~83\);

-- Location: FF_X46_Y68_N21
\RX|data_sample_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[26]~82_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(26));

-- Location: LCCOMB_X46_Y68_N22
\RX|data_sample_cnt[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[27]~84_combout\ = (\RX|data_sample_cnt\(27) & (\RX|data_sample_cnt[26]~83\ $ (GND))) # (!\RX|data_sample_cnt\(27) & (!\RX|data_sample_cnt[26]~83\ & VCC))
-- \RX|data_sample_cnt[27]~85\ = CARRY((\RX|data_sample_cnt\(27) & !\RX|data_sample_cnt[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(27),
	datad => VCC,
	cin => \RX|data_sample_cnt[26]~83\,
	combout => \RX|data_sample_cnt[27]~84_combout\,
	cout => \RX|data_sample_cnt[27]~85\);

-- Location: FF_X46_Y68_N23
\RX|data_sample_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[27]~84_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(27));

-- Location: LCCOMB_X47_Y68_N14
\RX|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~8_combout\ = (!\RX|data_sample_cnt\(26) & (!\RX|data_sample_cnt\(25) & (!\RX|data_sample_cnt\(24) & !\RX|data_sample_cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(26),
	datab => \RX|data_sample_cnt\(25),
	datac => \RX|data_sample_cnt\(24),
	datad => \RX|data_sample_cnt\(27),
	combout => \RX|Equal2~8_combout\);

-- Location: LCCOMB_X46_Y68_N24
\RX|data_sample_cnt[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[28]~86_combout\ = (\RX|data_sample_cnt\(28) & (!\RX|data_sample_cnt[27]~85\)) # (!\RX|data_sample_cnt\(28) & ((\RX|data_sample_cnt[27]~85\) # (GND)))
-- \RX|data_sample_cnt[28]~87\ = CARRY((!\RX|data_sample_cnt[27]~85\) # (!\RX|data_sample_cnt\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(28),
	datad => VCC,
	cin => \RX|data_sample_cnt[27]~85\,
	combout => \RX|data_sample_cnt[28]~86_combout\,
	cout => \RX|data_sample_cnt[28]~87\);

-- Location: FF_X46_Y68_N25
\RX|data_sample_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[28]~86_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(28));

-- Location: LCCOMB_X46_Y68_N26
\RX|data_sample_cnt[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[29]~88_combout\ = (\RX|data_sample_cnt\(29) & (\RX|data_sample_cnt[28]~87\ $ (GND))) # (!\RX|data_sample_cnt\(29) & (!\RX|data_sample_cnt[28]~87\ & VCC))
-- \RX|data_sample_cnt[29]~89\ = CARRY((\RX|data_sample_cnt\(29) & !\RX|data_sample_cnt[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(29),
	datad => VCC,
	cin => \RX|data_sample_cnt[28]~87\,
	combout => \RX|data_sample_cnt[29]~88_combout\,
	cout => \RX|data_sample_cnt[29]~89\);

-- Location: FF_X46_Y68_N27
\RX|data_sample_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[29]~88_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(29));

-- Location: LCCOMB_X46_Y68_N28
\RX|data_sample_cnt[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[30]~90_combout\ = (\RX|data_sample_cnt\(30) & (!\RX|data_sample_cnt[29]~89\)) # (!\RX|data_sample_cnt\(30) & ((\RX|data_sample_cnt[29]~89\) # (GND)))
-- \RX|data_sample_cnt[30]~91\ = CARRY((!\RX|data_sample_cnt[29]~89\) # (!\RX|data_sample_cnt\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|data_sample_cnt\(30),
	datad => VCC,
	cin => \RX|data_sample_cnt[29]~89\,
	combout => \RX|data_sample_cnt[30]~90_combout\,
	cout => \RX|data_sample_cnt[30]~91\);

-- Location: FF_X46_Y68_N29
\RX|data_sample_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[30]~90_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(30));

-- Location: LCCOMB_X46_Y68_N30
\RX|data_sample_cnt[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_sample_cnt[31]~92_combout\ = \RX|data_sample_cnt\(31) $ (!\RX|data_sample_cnt[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(31),
	cin => \RX|data_sample_cnt[30]~91\,
	combout => \RX|data_sample_cnt[31]~92_combout\);

-- Location: FF_X46_Y68_N31
\RX|data_sample_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_sample_cnt[31]~92_combout\,
	clrn => \RX|ALT_INV_WideOr11~combout\,
	ena => \RX|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_sample_cnt\(31));

-- Location: LCCOMB_X47_Y68_N28
\RX|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~9_combout\ = (!\RX|data_sample_cnt\(31) & (!\RX|data_sample_cnt\(30) & (!\RX|data_sample_cnt\(29) & !\RX|data_sample_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(31),
	datab => \RX|data_sample_cnt\(30),
	datac => \RX|data_sample_cnt\(29),
	datad => \RX|data_sample_cnt\(28),
	combout => \RX|Equal2~9_combout\);

-- Location: LCCOMB_X47_Y68_N12
\RX|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~5_combout\ = (!\RX|data_sample_cnt\(16) & !\RX|data_sample_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|data_sample_cnt\(16),
	datad => \RX|data_sample_cnt\(17),
	combout => \RX|Equal2~5_combout\);

-- Location: LCCOMB_X47_Y68_N18
\RX|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~6_combout\ = (!\RX|data_sample_cnt\(21) & (!\RX|data_sample_cnt\(22) & (!\RX|data_sample_cnt\(23) & !\RX|data_sample_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(21),
	datab => \RX|data_sample_cnt\(22),
	datac => \RX|data_sample_cnt\(23),
	datad => \RX|data_sample_cnt\(20),
	combout => \RX|Equal2~6_combout\);

-- Location: LCCOMB_X47_Y68_N0
\RX|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~7_combout\ = (\RX|Equal2~5_combout\ & (!\RX|data_sample_cnt\(19) & (!\RX|data_sample_cnt\(18) & \RX|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal2~5_combout\,
	datab => \RX|data_sample_cnt\(19),
	datac => \RX|data_sample_cnt\(18),
	datad => \RX|Equal2~6_combout\,
	combout => \RX|Equal2~7_combout\);

-- Location: LCCOMB_X47_Y69_N6
\RX|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~2_combout\ = (!\RX|data_sample_cnt\(11) & (!\RX|data_sample_cnt\(10) & (!\RX|data_sample_cnt\(8) & !\RX|data_sample_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(11),
	datab => \RX|data_sample_cnt\(10),
	datac => \RX|data_sample_cnt\(8),
	datad => \RX|data_sample_cnt\(9),
	combout => \RX|Equal2~2_combout\);

-- Location: LCCOMB_X47_Y69_N28
\RX|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~1_combout\ = (!\RX|data_sample_cnt\(7) & (\RX|data_sample_cnt\(5) & (\RX|data_sample_cnt\(6) & !\RX|data_sample_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(7),
	datab => \RX|data_sample_cnt\(5),
	datac => \RX|data_sample_cnt\(6),
	datad => \RX|data_sample_cnt\(4),
	combout => \RX|Equal2~1_combout\);

-- Location: LCCOMB_X47_Y69_N4
\RX|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~3_combout\ = (!\RX|data_sample_cnt\(15) & (!\RX|data_sample_cnt\(12) & (!\RX|data_sample_cnt\(13) & !\RX|data_sample_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(15),
	datab => \RX|data_sample_cnt\(12),
	datac => \RX|data_sample_cnt\(13),
	datad => \RX|data_sample_cnt\(14),
	combout => \RX|Equal2~3_combout\);

-- Location: LCCOMB_X46_Y69_N0
\RX|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~0_combout\ = (\RX|data_sample_cnt\(3) & (!\RX|data_sample_cnt\(2) & (!\RX|data_sample_cnt\(0) & !\RX|data_sample_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data_sample_cnt\(3),
	datab => \RX|data_sample_cnt\(2),
	datac => \RX|data_sample_cnt\(0),
	datad => \RX|data_sample_cnt\(1),
	combout => \RX|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y69_N10
\RX|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~4_combout\ = (\RX|Equal2~2_combout\ & (\RX|Equal2~1_combout\ & (\RX|Equal2~3_combout\ & \RX|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal2~2_combout\,
	datab => \RX|Equal2~1_combout\,
	datac => \RX|Equal2~3_combout\,
	datad => \RX|Equal2~0_combout\,
	combout => \RX|Equal2~4_combout\);

-- Location: LCCOMB_X47_Y69_N20
\RX|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal2~10_combout\ = (\RX|Equal2~8_combout\ & (\RX|Equal2~9_combout\ & (\RX|Equal2~7_combout\ & \RX|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal2~8_combout\,
	datab => \RX|Equal2~9_combout\,
	datac => \RX|Equal2~7_combout\,
	datad => \RX|Equal2~4_combout\,
	combout => \RX|Equal2~10_combout\);

-- Location: LCCOMB_X47_Y69_N12
\RX|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector5~1_combout\ = (\RX|Equal1~10_combout\ & ((\RX|Selector5~0_combout\) # ((\RX|current_state.state_sample_parity~q\ & !\RX|Equal2~10_combout\)))) # (!\RX|Equal1~10_combout\ & (((\RX|current_state.state_sample_parity~q\ & 
-- !\RX|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal1~10_combout\,
	datab => \RX|Selector5~0_combout\,
	datac => \RX|current_state.state_sample_parity~q\,
	datad => \RX|Equal2~10_combout\,
	combout => \RX|Selector5~1_combout\);

-- Location: FF_X47_Y69_N13
\RX|current_state.state_sample_parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector5~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_sample_parity~q\);

-- Location: LCCOMB_X48_Y69_N12
\RX|next_state.state_parity_check~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|next_state.state_parity_check~0_combout\ = (\RX|current_state.state_sample_parity~q\ & \RX|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_sample_parity~q\,
	datad => \RX|Equal2~10_combout\,
	combout => \RX|next_state.state_parity_check~0_combout\);

-- Location: FF_X48_Y69_N13
\RX|current_state.state_parity_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|next_state.state_parity_check~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_parity_check~q\);

-- Location: LCCOMB_X48_Y69_N24
\RX|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector6~0_combout\ = (\RX|current_state.state_parity_check~q\) # ((\RX|current_state.state_wait_done~q\ & !\RX|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_parity_check~q\,
	datac => \RX|current_state.state_wait_done~q\,
	datad => \RX|Equal1~10_combout\,
	combout => \RX|Selector6~0_combout\);

-- Location: FF_X48_Y69_N25
\RX|current_state.state_wait_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector6~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_wait_done~q\);

-- Location: LCCOMB_X47_Y69_N18
\RX|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector7~0_combout\ = (\RX|Equal1~10_combout\ & ((\RX|current_state.state_wait_done~q\) # ((\RX|current_state.state_sample_stop_bit~q\ & !\RX|Equal2~10_combout\)))) # (!\RX|Equal1~10_combout\ & (((\RX|current_state.state_sample_stop_bit~q\ & 
-- !\RX|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal1~10_combout\,
	datab => \RX|current_state.state_wait_done~q\,
	datac => \RX|current_state.state_sample_stop_bit~q\,
	datad => \RX|Equal2~10_combout\,
	combout => \RX|Selector7~0_combout\);

-- Location: FF_X47_Y69_N19
\RX|current_state.state_sample_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector7~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_sample_stop_bit~q\);

-- Location: LCCOMB_X48_Y69_N18
\RX|next_state.state_stop_bit_check~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|next_state.state_stop_bit_check~0_combout\ = (\RX|current_state.state_sample_stop_bit~q\ & \RX|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|current_state.state_sample_stop_bit~q\,
	datad => \RX|Equal2~10_combout\,
	combout => \RX|next_state.state_stop_bit_check~0_combout\);

-- Location: FF_X48_Y69_N19
\RX|current_state.state_stop_bit_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|next_state.state_stop_bit_check~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_stop_bit_check~q\);

-- Location: LCCOMB_X48_Y69_N22
\RX|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector8~0_combout\ = (\RX|current_state.state_stop_bit_check~q\) # ((\RX|current_state.state_wait_idle~q\ & !\RX|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|current_state.state_stop_bit_check~q\,
	datac => \RX|current_state.state_wait_idle~q\,
	datad => \RX|Equal1~10_combout\,
	combout => \RX|Selector8~0_combout\);

-- Location: FF_X48_Y69_N23
\RX|current_state.state_wait_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector8~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_wait_idle~q\);

-- Location: LCCOMB_X48_Y69_N26
\RX|stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|stop_bit~0_combout\ = (\RX|current_state.state_stop_bit_check~q\ & (\RX|uart_rx_t2~q\)) # (!\RX|current_state.state_stop_bit_check~q\ & ((\RX|stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|uart_rx_t2~q\,
	datac => \RX|stop_bit~q\,
	datad => \RX|current_state.state_stop_bit_check~q\,
	combout => \RX|stop_bit~0_combout\);

-- Location: FF_X48_Y69_N27
\RX|stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|stop_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|stop_bit~q\);

-- Location: LCCOMB_X48_Y69_N0
\RX|recieved_parity_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|recieved_parity_bit~0_combout\ = (\RX|current_state.state_parity_check~q\ & (\RX|uart_rx_t2~q\)) # (!\RX|current_state.state_parity_check~q\ & ((\RX|recieved_parity_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|uart_rx_t2~q\,
	datac => \RX|recieved_parity_bit~q\,
	datad => \RX|current_state.state_parity_check~q\,
	combout => \RX|recieved_parity_bit~0_combout\);

-- Location: FF_X48_Y69_N1
\RX|recieved_parity_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|recieved_parity_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|recieved_parity_bit~q\);

-- Location: LCCOMB_X47_Y69_N14
\RX|next_state.state_update_parity~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|next_state.state_update_parity~0_combout\ = (\RX|current_state.state_sample_data~q\ & \RX|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_sample_data~q\,
	datad => \RX|Equal2~10_combout\,
	combout => \RX|next_state.state_update_parity~0_combout\);

-- Location: FF_X47_Y69_N15
\RX|current_state.state_update_parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|next_state.state_update_parity~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_update_parity~q\);

-- Location: LCCOMB_X49_Y69_N28
\RX|parity_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|parity_cnt[0]~0_combout\ = \RX|parity_cnt\(0) $ (((\RX|uart_rx_t2~q\ & \RX|current_state.state_update_parity~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|parity_cnt\(0),
	datad => \RX|current_state.state_update_parity~q\,
	combout => \RX|parity_cnt[0]~0_combout\);

-- Location: LCCOMB_X49_Y69_N0
\RX|parity_cnt_arst\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|parity_cnt_arst~combout\ = (\RX|current_state.state_start~q\) # (!\RX|current_state.state_arst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|current_state.state_arst~q\,
	datad => \RX|current_state.state_start~q\,
	combout => \RX|parity_cnt_arst~combout\);

-- Location: FF_X49_Y69_N29
\RX|parity_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|parity_cnt[0]~0_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|parity_cnt\(0));

-- Location: LCCOMB_X48_Y69_N20
\RX|IS_VALID~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|IS_VALID~0_combout\ = (\RX|stop_bit~q\ & (\RX|recieved_parity_bit~q\ $ (!\RX|parity_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|stop_bit~q\,
	datab => \RX|recieved_parity_bit~q\,
	datad => \RX|parity_cnt\(0),
	combout => \RX|IS_VALID~0_combout\);

-- Location: LCCOMB_X48_Y69_N8
\RX|next_state.state_update_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|next_state.state_update_data~0_combout\ = (\RX|current_state.state_wait_idle~q\ & (\RX|IS_VALID~0_combout\ & \RX|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_wait_idle~q\,
	datac => \RX|IS_VALID~0_combout\,
	datad => \RX|Equal1~10_combout\,
	combout => \RX|next_state.state_update_data~0_combout\);

-- Location: FF_X48_Y69_N9
\RX|current_state.state_update_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|next_state.state_update_data~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_update_data~q\);

-- Location: LCCOMB_X48_Y69_N16
\RX|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector0~0_combout\ = ((\RX|current_state.state_update_data~q\) # ((\RX|current_state.state_idle~q\ & !\RX|Selector1~0_combout\))) # (!\RX|current_state.state_arst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_idle~q\,
	datab => \RX|Selector1~0_combout\,
	datac => \RX|current_state.state_arst~q\,
	datad => \RX|current_state.state_update_data~q\,
	combout => \RX|Selector0~0_combout\);

-- Location: LCCOMB_X48_Y69_N4
\RX|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector0~1_combout\ = (\RX|Selector0~0_combout\) # ((\RX|current_state.state_wait_idle~q\ & (!\RX|IS_VALID~0_combout\ & \RX|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_wait_idle~q\,
	datab => \RX|Selector0~0_combout\,
	datac => \RX|IS_VALID~0_combout\,
	datad => \RX|Equal1~10_combout\,
	combout => \RX|Selector0~1_combout\);

-- Location: FF_X48_Y69_N5
\RX|current_state.state_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector0~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_idle~q\);

-- Location: LCCOMB_X48_Y71_N30
\RX|baud_cnt[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[31]~37_combout\ = ((\RX|current_state.state_idle~q\) # ((\RX|current_state.state_update_data~q\) # (\RX|Equal1~10_combout\))) # (!\RX|current_state.state_arst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_arst~q\,
	datab => \RX|current_state.state_idle~q\,
	datac => \RX|current_state.state_update_data~q\,
	datad => \RX|Equal1~10_combout\,
	combout => \RX|baud_cnt[31]~37_combout\);

-- Location: LCCOMB_X48_Y71_N0
\RX|baud_cnt[16]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[16]~36_combout\ = (!\RX|Equal1~10_combout\ & (((\RX|current_state.state_idle~q\) # (\RX|current_state.state_update_data~q\)) # (!\RX|current_state.state_arst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_arst~q\,
	datab => \RX|current_state.state_idle~q\,
	datac => \RX|current_state.state_update_data~q\,
	datad => \RX|Equal1~10_combout\,
	combout => \RX|baud_cnt[16]~36_combout\);

-- Location: LCCOMB_X49_Y71_N0
\RX|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~0_combout\ = \RX|baud_cnt\(0) $ (VCC)
-- \RX|Add0~1\ = CARRY(\RX|baud_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(0),
	datad => VCC,
	combout => \RX|Add0~0_combout\,
	cout => \RX|Add0~1\);

-- Location: LCCOMB_X48_Y71_N16
\RX|baud_cnt[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[0]~34_combout\ = (\RX|Add0~0_combout\ & (((\RX|baud_cnt\(0) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~0_combout\ & (\RX|baud_cnt\(0) & ((\RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~0_combout\,
	datab => \RX|baud_cnt\(0),
	datac => \RX|baud_cnt[31]~37_combout\,
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[0]~34_combout\);

-- Location: FF_X49_Y71_N1
\RX|baud_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|baud_cnt[0]~34_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(0));

-- Location: LCCOMB_X49_Y71_N2
\RX|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~2_combout\ = (\RX|baud_cnt\(1) & (!\RX|Add0~1\)) # (!\RX|baud_cnt\(1) & ((\RX|Add0~1\) # (GND)))
-- \RX|Add0~3\ = CARRY((!\RX|Add0~1\) # (!\RX|baud_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(1),
	datad => VCC,
	cin => \RX|Add0~1\,
	combout => \RX|Add0~2_combout\,
	cout => \RX|Add0~3\);

-- Location: LCCOMB_X48_Y71_N26
\RX|baud_cnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[1]~33_combout\ = (\RX|baud_cnt\(1) & ((\RX|baud_cnt[16]~36_combout\) # ((\RX|Add0~2_combout\ & !\RX|baud_cnt[31]~37_combout\)))) # (!\RX|baud_cnt\(1) & (\RX|Add0~2_combout\ & (!\RX|baud_cnt[31]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(1),
	datab => \RX|Add0~2_combout\,
	datac => \RX|baud_cnt[31]~37_combout\,
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[1]~33_combout\);

-- Location: FF_X49_Y71_N3
\RX|baud_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|baud_cnt[1]~33_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(1));

-- Location: LCCOMB_X49_Y71_N4
\RX|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~4_combout\ = (\RX|baud_cnt\(2) & (\RX|Add0~3\ $ (GND))) # (!\RX|baud_cnt\(2) & (!\RX|Add0~3\ & VCC))
-- \RX|Add0~5\ = CARRY((\RX|baud_cnt\(2) & !\RX|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(2),
	datad => VCC,
	cin => \RX|Add0~3\,
	combout => \RX|Add0~4_combout\,
	cout => \RX|Add0~5\);

-- Location: LCCOMB_X48_Y71_N4
\RX|baud_cnt[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[2]~32_combout\ = (\RX|Add0~4_combout\ & (((\RX|baud_cnt\(2) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~4_combout\ & (\RX|baud_cnt\(2) & ((\RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~4_combout\,
	datab => \RX|baud_cnt\(2),
	datac => \RX|baud_cnt[31]~37_combout\,
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[2]~32_combout\);

-- Location: FF_X49_Y71_N13
\RX|baud_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|baud_cnt[2]~32_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(2));

-- Location: LCCOMB_X49_Y71_N6
\RX|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~6_combout\ = (\RX|baud_cnt\(3) & (!\RX|Add0~5\)) # (!\RX|baud_cnt\(3) & ((\RX|Add0~5\) # (GND)))
-- \RX|Add0~7\ = CARRY((!\RX|Add0~5\) # (!\RX|baud_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(3),
	datad => VCC,
	cin => \RX|Add0~5\,
	combout => \RX|Add0~6_combout\,
	cout => \RX|Add0~7\);

-- Location: LCCOMB_X48_Y71_N6
\RX|baud_cnt[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[3]~35_combout\ = (\RX|Add0~6_combout\ & (((\RX|baud_cnt\(3) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~6_combout\ & (\RX|baud_cnt\(3) & ((\RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~6_combout\,
	datab => \RX|baud_cnt\(3),
	datac => \RX|baud_cnt[31]~37_combout\,
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[3]~35_combout\);

-- Location: FF_X49_Y71_N29
\RX|baud_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|baud_cnt[3]~35_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(3));

-- Location: LCCOMB_X49_Y71_N8
\RX|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~8_combout\ = (\RX|baud_cnt\(4) & (\RX|Add0~7\ $ (GND))) # (!\RX|baud_cnt\(4) & (!\RX|Add0~7\ & VCC))
-- \RX|Add0~9\ = CARRY((\RX|baud_cnt\(4) & !\RX|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(4),
	datad => VCC,
	cin => \RX|Add0~7\,
	combout => \RX|Add0~8_combout\,
	cout => \RX|Add0~9\);

-- Location: LCCOMB_X48_Y71_N22
\RX|baud_cnt[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[4]~29_combout\ = (\RX|Add0~8_combout\ & (((\RX|baud_cnt\(4) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~8_combout\ & (\RX|baud_cnt\(4) & ((\RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~8_combout\,
	datab => \RX|baud_cnt\(4),
	datac => \RX|baud_cnt[31]~37_combout\,
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[4]~29_combout\);

-- Location: FF_X49_Y71_N7
\RX|baud_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|baud_cnt[4]~29_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(4));

-- Location: LCCOMB_X49_Y71_N10
\RX|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~10_combout\ = (\RX|baud_cnt\(5) & (!\RX|Add0~9\)) # (!\RX|baud_cnt\(5) & ((\RX|Add0~9\) # (GND)))
-- \RX|Add0~11\ = CARRY((!\RX|Add0~9\) # (!\RX|baud_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(5),
	datad => VCC,
	cin => \RX|Add0~9\,
	combout => \RX|Add0~10_combout\,
	cout => \RX|Add0~11\);

-- Location: LCCOMB_X50_Y71_N20
\RX|baud_cnt[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[5]~31_combout\ = (\RX|Add0~10_combout\ & (((\RX|baud_cnt\(5) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~10_combout\ & (((\RX|baud_cnt\(5) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~10_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(5),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[5]~31_combout\);

-- Location: FF_X50_Y71_N21
\RX|baud_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[5]~31_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(5));

-- Location: LCCOMB_X49_Y71_N12
\RX|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~12_combout\ = (\RX|baud_cnt\(6) & (\RX|Add0~11\ $ (GND))) # (!\RX|baud_cnt\(6) & (!\RX|Add0~11\ & VCC))
-- \RX|Add0~13\ = CARRY((\RX|baud_cnt\(6) & !\RX|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(6),
	datad => VCC,
	cin => \RX|Add0~11\,
	combout => \RX|Add0~12_combout\,
	cout => \RX|Add0~13\);

-- Location: LCCOMB_X50_Y71_N12
\RX|baud_cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[6]~28_combout\ = (\RX|Add0~12_combout\ & (((\RX|baud_cnt\(6) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~12_combout\ & (((\RX|baud_cnt\(6) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~12_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(6),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[6]~28_combout\);

-- Location: FF_X50_Y71_N13
\RX|baud_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[6]~28_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(6));

-- Location: LCCOMB_X49_Y71_N14
\RX|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~14_combout\ = (\RX|baud_cnt\(7) & (!\RX|Add0~13\)) # (!\RX|baud_cnt\(7) & ((\RX|Add0~13\) # (GND)))
-- \RX|Add0~15\ = CARRY((!\RX|Add0~13\) # (!\RX|baud_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(7),
	datad => VCC,
	cin => \RX|Add0~13\,
	combout => \RX|Add0~14_combout\,
	cout => \RX|Add0~15\);

-- Location: LCCOMB_X50_Y71_N10
\RX|baud_cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[7]~30_combout\ = (\RX|Add0~14_combout\ & (((\RX|baud_cnt\(7) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~14_combout\ & (((\RX|baud_cnt\(7) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~14_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(7),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[7]~30_combout\);

-- Location: FF_X50_Y71_N11
\RX|baud_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[7]~30_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(7));

-- Location: LCCOMB_X49_Y71_N16
\RX|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~16_combout\ = (\RX|baud_cnt\(8) & (\RX|Add0~15\ $ (GND))) # (!\RX|baud_cnt\(8) & (!\RX|Add0~15\ & VCC))
-- \RX|Add0~17\ = CARRY((\RX|baud_cnt\(8) & !\RX|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(8),
	datad => VCC,
	cin => \RX|Add0~15\,
	combout => \RX|Add0~16_combout\,
	cout => \RX|Add0~17\);

-- Location: LCCOMB_X50_Y71_N28
\RX|baud_cnt[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[8]~27_combout\ = (\RX|Add0~16_combout\ & (((\RX|baud_cnt\(8) & \RX|baud_cnt[16]~36_combout\)) # (!\RX|baud_cnt[31]~37_combout\))) # (!\RX|Add0~16_combout\ & (((\RX|baud_cnt\(8) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Add0~16_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(8),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[8]~27_combout\);

-- Location: FF_X50_Y71_N29
\RX|baud_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[8]~27_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(8));

-- Location: LCCOMB_X49_Y71_N18
\RX|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~18_combout\ = (\RX|baud_cnt\(9) & (!\RX|Add0~17\)) # (!\RX|baud_cnt\(9) & ((\RX|Add0~17\) # (GND)))
-- \RX|Add0~19\ = CARRY((!\RX|Add0~17\) # (!\RX|baud_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(9),
	datad => VCC,
	cin => \RX|Add0~17\,
	combout => \RX|Add0~18_combout\,
	cout => \RX|Add0~19\);

-- Location: LCCOMB_X50_Y71_N22
\RX|baud_cnt[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[9]~26_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(9) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~18_combout\) # ((\RX|baud_cnt\(9) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~18_combout\,
	datac => \RX|baud_cnt\(9),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[9]~26_combout\);

-- Location: FF_X50_Y71_N23
\RX|baud_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[9]~26_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(9));

-- Location: LCCOMB_X49_Y71_N20
\RX|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~20_combout\ = (\RX|baud_cnt\(10) & (\RX|Add0~19\ $ (GND))) # (!\RX|baud_cnt\(10) & (!\RX|Add0~19\ & VCC))
-- \RX|Add0~21\ = CARRY((\RX|baud_cnt\(10) & !\RX|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(10),
	datad => VCC,
	cin => \RX|Add0~19\,
	combout => \RX|Add0~20_combout\,
	cout => \RX|Add0~21\);

-- Location: LCCOMB_X50_Y71_N2
\RX|baud_cnt[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[10]~24_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(10) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~20_combout\) # ((\RX|baud_cnt\(10) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~20_combout\,
	datac => \RX|baud_cnt\(10),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[10]~24_combout\);

-- Location: FF_X50_Y71_N3
\RX|baud_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[10]~24_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(10));

-- Location: LCCOMB_X49_Y71_N22
\RX|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~22_combout\ = (\RX|baud_cnt\(11) & (!\RX|Add0~21\)) # (!\RX|baud_cnt\(11) & ((\RX|Add0~21\) # (GND)))
-- \RX|Add0~23\ = CARRY((!\RX|Add0~21\) # (!\RX|baud_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(11),
	datad => VCC,
	cin => \RX|Add0~21\,
	combout => \RX|Add0~22_combout\,
	cout => \RX|Add0~23\);

-- Location: LCCOMB_X50_Y71_N4
\RX|baud_cnt[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[11]~25_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(11) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~22_combout\) # ((\RX|baud_cnt\(11) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~22_combout\,
	datac => \RX|baud_cnt\(11),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[11]~25_combout\);

-- Location: FF_X50_Y71_N5
\RX|baud_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[11]~25_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(11));

-- Location: LCCOMB_X49_Y71_N24
\RX|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~24_combout\ = (\RX|baud_cnt\(12) & (\RX|Add0~23\ $ (GND))) # (!\RX|baud_cnt\(12) & (!\RX|Add0~23\ & VCC))
-- \RX|Add0~25\ = CARRY((\RX|baud_cnt\(12) & !\RX|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(12),
	datad => VCC,
	cin => \RX|Add0~23\,
	combout => \RX|Add0~24_combout\,
	cout => \RX|Add0~25\);

-- Location: LCCOMB_X48_Y71_N14
\RX|baud_cnt[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[12]~20_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(12)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~24_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(12),
	datad => \RX|Add0~24_combout\,
	combout => \RX|baud_cnt[12]~20_combout\);

-- Location: FF_X48_Y71_N15
\RX|baud_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[12]~20_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(12));

-- Location: LCCOMB_X49_Y71_N26
\RX|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~26_combout\ = (\RX|baud_cnt\(13) & (!\RX|Add0~25\)) # (!\RX|baud_cnt\(13) & ((\RX|Add0~25\) # (GND)))
-- \RX|Add0~27\ = CARRY((!\RX|Add0~25\) # (!\RX|baud_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(13),
	datad => VCC,
	cin => \RX|Add0~25\,
	combout => \RX|Add0~26_combout\,
	cout => \RX|Add0~27\);

-- Location: LCCOMB_X48_Y71_N24
\RX|baud_cnt[13]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[13]~23_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(13)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~26_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(13),
	datad => \RX|Add0~26_combout\,
	combout => \RX|baud_cnt[13]~23_combout\);

-- Location: FF_X48_Y71_N25
\RX|baud_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[13]~23_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(13));

-- Location: LCCOMB_X49_Y71_N28
\RX|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~28_combout\ = (\RX|baud_cnt\(14) & (\RX|Add0~27\ $ (GND))) # (!\RX|baud_cnt\(14) & (!\RX|Add0~27\ & VCC))
-- \RX|Add0~29\ = CARRY((\RX|baud_cnt\(14) & !\RX|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(14),
	datad => VCC,
	cin => \RX|Add0~27\,
	combout => \RX|Add0~28_combout\,
	cout => \RX|Add0~29\);

-- Location: LCCOMB_X48_Y71_N2
\RX|baud_cnt[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[14]~22_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(14) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~28_combout\) # ((\RX|baud_cnt\(14) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~28_combout\,
	datac => \RX|baud_cnt\(14),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[14]~22_combout\);

-- Location: FF_X48_Y71_N3
\RX|baud_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[14]~22_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(14));

-- Location: LCCOMB_X49_Y71_N30
\RX|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~30_combout\ = (\RX|baud_cnt\(15) & (!\RX|Add0~29\)) # (!\RX|baud_cnt\(15) & ((\RX|Add0~29\) # (GND)))
-- \RX|Add0~31\ = CARRY((!\RX|Add0~29\) # (!\RX|baud_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(15),
	datad => VCC,
	cin => \RX|Add0~29\,
	combout => \RX|Add0~30_combout\,
	cout => \RX|Add0~31\);

-- Location: LCCOMB_X48_Y71_N20
\RX|baud_cnt[15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[15]~21_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(15) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~30_combout\) # ((\RX|baud_cnt\(15) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~30_combout\,
	datac => \RX|baud_cnt\(15),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[15]~21_combout\);

-- Location: FF_X48_Y71_N21
\RX|baud_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[15]~21_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(15));

-- Location: LCCOMB_X48_Y71_N10
\RX|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~5_combout\ = (!\RX|baud_cnt\(13) & (!\RX|baud_cnt\(14) & (\RX|baud_cnt\(12) & !\RX|baud_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(13),
	datab => \RX|baud_cnt\(14),
	datac => \RX|baud_cnt\(12),
	datad => \RX|baud_cnt\(15),
	combout => \RX|Equal1~5_combout\);

-- Location: LCCOMB_X50_Y71_N26
\RX|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~6_combout\ = (!\RX|baud_cnt\(9) & (!\RX|baud_cnt\(8) & (!\RX|baud_cnt\(11) & \RX|baud_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(9),
	datab => \RX|baud_cnt\(8),
	datac => \RX|baud_cnt\(11),
	datad => \RX|baud_cnt\(10),
	combout => \RX|Equal1~6_combout\);

-- Location: LCCOMB_X49_Y70_N0
\RX|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~32_combout\ = (\RX|baud_cnt\(16) & (\RX|Add0~31\ $ (GND))) # (!\RX|baud_cnt\(16) & (!\RX|Add0~31\ & VCC))
-- \RX|Add0~33\ = CARRY((\RX|baud_cnt\(16) & !\RX|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(16),
	datad => VCC,
	cin => \RX|Add0~31\,
	combout => \RX|Add0~32_combout\,
	cout => \RX|Add0~33\);

-- Location: LCCOMB_X48_Y70_N6
\RX|baud_cnt[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[16]~19_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(16) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~32_combout\) # ((\RX|baud_cnt\(16) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~32_combout\,
	datac => \RX|baud_cnt\(16),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[16]~19_combout\);

-- Location: FF_X48_Y70_N7
\RX|baud_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[16]~19_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(16));

-- Location: LCCOMB_X49_Y70_N2
\RX|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~34_combout\ = (\RX|baud_cnt\(17) & (!\RX|Add0~33\)) # (!\RX|baud_cnt\(17) & ((\RX|Add0~33\) # (GND)))
-- \RX|Add0~35\ = CARRY((!\RX|Add0~33\) # (!\RX|baud_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(17),
	datad => VCC,
	cin => \RX|Add0~33\,
	combout => \RX|Add0~34_combout\,
	cout => \RX|Add0~35\);

-- Location: LCCOMB_X48_Y70_N16
\RX|baud_cnt[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[17]~18_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(17)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~34_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(17),
	datad => \RX|Add0~34_combout\,
	combout => \RX|baud_cnt[17]~18_combout\);

-- Location: FF_X48_Y70_N17
\RX|baud_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[17]~18_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(17));

-- Location: LCCOMB_X49_Y70_N4
\RX|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~36_combout\ = (\RX|baud_cnt\(18) & (\RX|Add0~35\ $ (GND))) # (!\RX|baud_cnt\(18) & (!\RX|Add0~35\ & VCC))
-- \RX|Add0~37\ = CARRY((\RX|baud_cnt\(18) & !\RX|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(18),
	datad => VCC,
	cin => \RX|Add0~35\,
	combout => \RX|Add0~36_combout\,
	cout => \RX|Add0~37\);

-- Location: LCCOMB_X48_Y70_N22
\RX|baud_cnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[18]~17_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(18)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~36_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(18),
	datad => \RX|Add0~36_combout\,
	combout => \RX|baud_cnt[18]~17_combout\);

-- Location: FF_X48_Y70_N23
\RX|baud_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[18]~17_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(18));

-- Location: LCCOMB_X49_Y70_N6
\RX|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~38_combout\ = (\RX|baud_cnt\(19) & (!\RX|Add0~37\)) # (!\RX|baud_cnt\(19) & ((\RX|Add0~37\) # (GND)))
-- \RX|Add0~39\ = CARRY((!\RX|Add0~37\) # (!\RX|baud_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(19),
	datad => VCC,
	cin => \RX|Add0~37\,
	combout => \RX|Add0~38_combout\,
	cout => \RX|Add0~39\);

-- Location: LCCOMB_X48_Y70_N28
\RX|baud_cnt[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[19]~16_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(19)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~38_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(19),
	datad => \RX|Add0~38_combout\,
	combout => \RX|baud_cnt[19]~16_combout\);

-- Location: FF_X48_Y70_N29
\RX|baud_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[19]~16_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(19));

-- Location: LCCOMB_X49_Y70_N8
\RX|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~40_combout\ = (\RX|baud_cnt\(20) & (\RX|Add0~39\ $ (GND))) # (!\RX|baud_cnt\(20) & (!\RX|Add0~39\ & VCC))
-- \RX|Add0~41\ = CARRY((\RX|baud_cnt\(20) & !\RX|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(20),
	datad => VCC,
	cin => \RX|Add0~39\,
	combout => \RX|Add0~40_combout\,
	cout => \RX|Add0~41\);

-- Location: LCCOMB_X48_Y70_N20
\RX|baud_cnt[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[20]~15_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(20) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~40_combout\) # ((\RX|baud_cnt\(20) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~40_combout\,
	datac => \RX|baud_cnt\(20),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[20]~15_combout\);

-- Location: FF_X48_Y70_N21
\RX|baud_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[20]~15_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(20));

-- Location: LCCOMB_X49_Y70_N10
\RX|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~42_combout\ = (\RX|baud_cnt\(21) & (!\RX|Add0~41\)) # (!\RX|baud_cnt\(21) & ((\RX|Add0~41\) # (GND)))
-- \RX|Add0~43\ = CARRY((!\RX|Add0~41\) # (!\RX|baud_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(21),
	datad => VCC,
	cin => \RX|Add0~41\,
	combout => \RX|Add0~42_combout\,
	cout => \RX|Add0~43\);

-- Location: LCCOMB_X48_Y70_N18
\RX|baud_cnt[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[21]~14_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(21) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~42_combout\) # ((\RX|baud_cnt\(21) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~42_combout\,
	datac => \RX|baud_cnt\(21),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[21]~14_combout\);

-- Location: FF_X48_Y70_N19
\RX|baud_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[21]~14_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(21));

-- Location: LCCOMB_X49_Y70_N12
\RX|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~44_combout\ = (\RX|baud_cnt\(22) & (\RX|Add0~43\ $ (GND))) # (!\RX|baud_cnt\(22) & (!\RX|Add0~43\ & VCC))
-- \RX|Add0~45\ = CARRY((\RX|baud_cnt\(22) & !\RX|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(22),
	datad => VCC,
	cin => \RX|Add0~43\,
	combout => \RX|Add0~44_combout\,
	cout => \RX|Add0~45\);

-- Location: LCCOMB_X48_Y70_N4
\RX|baud_cnt[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[22]~13_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(22) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~44_combout\) # ((\RX|baud_cnt\(22) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~44_combout\,
	datac => \RX|baud_cnt\(22),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[22]~13_combout\);

-- Location: FF_X48_Y70_N5
\RX|baud_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[22]~13_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(22));

-- Location: LCCOMB_X49_Y70_N14
\RX|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~46_combout\ = (\RX|baud_cnt\(23) & (!\RX|Add0~45\)) # (!\RX|baud_cnt\(23) & ((\RX|Add0~45\) # (GND)))
-- \RX|Add0~47\ = CARRY((!\RX|Add0~45\) # (!\RX|baud_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(23),
	datad => VCC,
	cin => \RX|Add0~45\,
	combout => \RX|Add0~46_combout\,
	cout => \RX|Add0~47\);

-- Location: LCCOMB_X48_Y70_N30
\RX|baud_cnt[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[23]~12_combout\ = (\RX|baud_cnt[31]~37_combout\ & (((\RX|baud_cnt\(23) & \RX|baud_cnt[16]~36_combout\)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~46_combout\) # ((\RX|baud_cnt\(23) & \RX|baud_cnt[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|Add0~46_combout\,
	datac => \RX|baud_cnt\(23),
	datad => \RX|baud_cnt[16]~36_combout\,
	combout => \RX|baud_cnt[23]~12_combout\);

-- Location: FF_X48_Y70_N31
\RX|baud_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[23]~12_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(23));

-- Location: LCCOMB_X49_Y70_N16
\RX|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~48_combout\ = (\RX|baud_cnt\(24) & (\RX|Add0~47\ $ (GND))) # (!\RX|baud_cnt\(24) & (!\RX|Add0~47\ & VCC))
-- \RX|Add0~49\ = CARRY((\RX|baud_cnt\(24) & !\RX|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(24),
	datad => VCC,
	cin => \RX|Add0~47\,
	combout => \RX|Add0~48_combout\,
	cout => \RX|Add0~49\);

-- Location: LCCOMB_X48_Y70_N26
\RX|baud_cnt[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[24]~11_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(24)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~48_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(24),
	datad => \RX|Add0~48_combout\,
	combout => \RX|baud_cnt[24]~11_combout\);

-- Location: FF_X48_Y70_N27
\RX|baud_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[24]~11_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(24));

-- Location: LCCOMB_X49_Y70_N18
\RX|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~50_combout\ = (\RX|baud_cnt\(25) & (!\RX|Add0~49\)) # (!\RX|baud_cnt\(25) & ((\RX|Add0~49\) # (GND)))
-- \RX|Add0~51\ = CARRY((!\RX|Add0~49\) # (!\RX|baud_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(25),
	datad => VCC,
	cin => \RX|Add0~49\,
	combout => \RX|Add0~50_combout\,
	cout => \RX|Add0~51\);

-- Location: LCCOMB_X48_Y70_N12
\RX|baud_cnt[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[25]~10_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(25)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~50_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(25),
	datad => \RX|Add0~50_combout\,
	combout => \RX|baud_cnt[25]~10_combout\);

-- Location: FF_X48_Y70_N13
\RX|baud_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[25]~10_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(25));

-- Location: LCCOMB_X49_Y70_N20
\RX|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~52_combout\ = (\RX|baud_cnt\(26) & (\RX|Add0~51\ $ (GND))) # (!\RX|baud_cnt\(26) & (!\RX|Add0~51\ & VCC))
-- \RX|Add0~53\ = CARRY((\RX|baud_cnt\(26) & !\RX|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(26),
	datad => VCC,
	cin => \RX|Add0~51\,
	combout => \RX|Add0~52_combout\,
	cout => \RX|Add0~53\);

-- Location: LCCOMB_X48_Y70_N14
\RX|baud_cnt[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[26]~9_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(26)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~52_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(26),
	datad => \RX|Add0~52_combout\,
	combout => \RX|baud_cnt[26]~9_combout\);

-- Location: FF_X48_Y70_N15
\RX|baud_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[26]~9_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(26));

-- Location: LCCOMB_X49_Y70_N22
\RX|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~54_combout\ = (\RX|baud_cnt\(27) & (!\RX|Add0~53\)) # (!\RX|baud_cnt\(27) & ((\RX|Add0~53\) # (GND)))
-- \RX|Add0~55\ = CARRY((!\RX|Add0~53\) # (!\RX|baud_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(27),
	datad => VCC,
	cin => \RX|Add0~53\,
	combout => \RX|Add0~54_combout\,
	cout => \RX|Add0~55\);

-- Location: LCCOMB_X48_Y70_N24
\RX|baud_cnt[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[27]~8_combout\ = (\RX|baud_cnt[31]~37_combout\ & (\RX|baud_cnt[16]~36_combout\ & (\RX|baud_cnt\(27)))) # (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~54_combout\) # ((\RX|baud_cnt[16]~36_combout\ & \RX|baud_cnt\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[31]~37_combout\,
	datab => \RX|baud_cnt[16]~36_combout\,
	datac => \RX|baud_cnt\(27),
	datad => \RX|Add0~54_combout\,
	combout => \RX|baud_cnt[27]~8_combout\);

-- Location: FF_X48_Y70_N25
\RX|baud_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[27]~8_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(27));

-- Location: LCCOMB_X49_Y70_N24
\RX|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~56_combout\ = (\RX|baud_cnt\(28) & (\RX|Add0~55\ $ (GND))) # (!\RX|baud_cnt\(28) & (!\RX|Add0~55\ & VCC))
-- \RX|Add0~57\ = CARRY((\RX|baud_cnt\(28) & !\RX|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(28),
	datad => VCC,
	cin => \RX|Add0~55\,
	combout => \RX|Add0~56_combout\,
	cout => \RX|Add0~57\);

-- Location: LCCOMB_X50_Y71_N18
\RX|baud_cnt[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[28]~7_combout\ = (\RX|baud_cnt[16]~36_combout\ & ((\RX|baud_cnt\(28)) # ((!\RX|baud_cnt[31]~37_combout\ & \RX|Add0~56_combout\)))) # (!\RX|baud_cnt[16]~36_combout\ & (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[16]~36_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(28),
	datad => \RX|Add0~56_combout\,
	combout => \RX|baud_cnt[28]~7_combout\);

-- Location: FF_X50_Y71_N19
\RX|baud_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[28]~7_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(28));

-- Location: LCCOMB_X49_Y70_N26
\RX|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~58_combout\ = (\RX|baud_cnt\(29) & (!\RX|Add0~57\)) # (!\RX|baud_cnt\(29) & ((\RX|Add0~57\) # (GND)))
-- \RX|Add0~59\ = CARRY((!\RX|Add0~57\) # (!\RX|baud_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(29),
	datad => VCC,
	cin => \RX|Add0~57\,
	combout => \RX|Add0~58_combout\,
	cout => \RX|Add0~59\);

-- Location: LCCOMB_X50_Y71_N24
\RX|baud_cnt[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[29]~6_combout\ = (\RX|baud_cnt[16]~36_combout\ & ((\RX|baud_cnt\(29)) # ((!\RX|baud_cnt[31]~37_combout\ & \RX|Add0~58_combout\)))) # (!\RX|baud_cnt[16]~36_combout\ & (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[16]~36_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(29),
	datad => \RX|Add0~58_combout\,
	combout => \RX|baud_cnt[29]~6_combout\);

-- Location: FF_X50_Y71_N25
\RX|baud_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[29]~6_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(29));

-- Location: LCCOMB_X49_Y70_N28
\RX|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~60_combout\ = (\RX|baud_cnt\(30) & (\RX|Add0~59\ $ (GND))) # (!\RX|baud_cnt\(30) & (!\RX|Add0~59\ & VCC))
-- \RX|Add0~61\ = CARRY((\RX|baud_cnt\(30) & !\RX|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|baud_cnt\(30),
	datad => VCC,
	cin => \RX|Add0~59\,
	combout => \RX|Add0~60_combout\,
	cout => \RX|Add0~61\);

-- Location: LCCOMB_X50_Y71_N30
\RX|baud_cnt[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[30]~5_combout\ = (\RX|baud_cnt[16]~36_combout\ & ((\RX|baud_cnt\(30)) # ((!\RX|baud_cnt[31]~37_combout\ & \RX|Add0~60_combout\)))) # (!\RX|baud_cnt[16]~36_combout\ & (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[16]~36_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(30),
	datad => \RX|Add0~60_combout\,
	combout => \RX|baud_cnt[30]~5_combout\);

-- Location: FF_X50_Y71_N31
\RX|baud_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[30]~5_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(30));

-- Location: LCCOMB_X49_Y70_N30
\RX|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Add0~62_combout\ = \RX|Add0~61\ $ (\RX|baud_cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RX|baud_cnt\(31),
	cin => \RX|Add0~61\,
	combout => \RX|Add0~62_combout\);

-- Location: LCCOMB_X50_Y71_N8
\RX|baud_cnt[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|baud_cnt[31]~4_combout\ = (\RX|baud_cnt[16]~36_combout\ & ((\RX|baud_cnt\(31)) # ((!\RX|baud_cnt[31]~37_combout\ & \RX|Add0~62_combout\)))) # (!\RX|baud_cnt[16]~36_combout\ & (!\RX|baud_cnt[31]~37_combout\ & ((\RX|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt[16]~36_combout\,
	datab => \RX|baud_cnt[31]~37_combout\,
	datac => \RX|baud_cnt\(31),
	datad => \RX|Add0~62_combout\,
	combout => \RX|baud_cnt[31]~4_combout\);

-- Location: FF_X50_Y71_N9
\RX|baud_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|baud_cnt[31]~4_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|baud_cnt\(31));

-- Location: LCCOMB_X50_Y71_N16
\RX|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~0_combout\ = (!\RX|baud_cnt\(30) & (!\RX|baud_cnt\(29) & (!\RX|baud_cnt\(31) & !\RX|baud_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(30),
	datab => \RX|baud_cnt\(29),
	datac => \RX|baud_cnt\(31),
	datad => \RX|baud_cnt\(28),
	combout => \RX|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y70_N0
\RX|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~1_combout\ = (!\RX|baud_cnt\(25) & (!\RX|baud_cnt\(26) & (!\RX|baud_cnt\(24) & !\RX|baud_cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(25),
	datab => \RX|baud_cnt\(26),
	datac => \RX|baud_cnt\(24),
	datad => \RX|baud_cnt\(27),
	combout => \RX|Equal1~1_combout\);

-- Location: LCCOMB_X48_Y70_N8
\RX|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~3_combout\ = (!\RX|baud_cnt\(16) & (!\RX|baud_cnt\(19) & (!\RX|baud_cnt\(18) & !\RX|baud_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(16),
	datab => \RX|baud_cnt\(19),
	datac => \RX|baud_cnt\(18),
	datad => \RX|baud_cnt\(17),
	combout => \RX|Equal1~3_combout\);

-- Location: LCCOMB_X48_Y70_N2
\RX|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~2_combout\ = (!\RX|baud_cnt\(23) & (!\RX|baud_cnt\(21) & (!\RX|baud_cnt\(22) & !\RX|baud_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(23),
	datab => \RX|baud_cnt\(21),
	datac => \RX|baud_cnt\(22),
	datad => \RX|baud_cnt\(20),
	combout => \RX|Equal1~2_combout\);

-- Location: LCCOMB_X48_Y71_N8
\RX|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~4_combout\ = (\RX|Equal1~0_combout\ & (\RX|Equal1~1_combout\ & (\RX|Equal1~3_combout\ & \RX|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal1~0_combout\,
	datab => \RX|Equal1~1_combout\,
	datac => \RX|Equal1~3_combout\,
	datad => \RX|Equal1~2_combout\,
	combout => \RX|Equal1~4_combout\);

-- Location: LCCOMB_X48_Y71_N12
\RX|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~8_combout\ = (\RX|baud_cnt\(0) & \RX|baud_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|baud_cnt\(0),
	datad => \RX|baud_cnt\(1),
	combout => \RX|Equal1~8_combout\);

-- Location: LCCOMB_X50_Y71_N14
\RX|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~7_combout\ = (!\RX|baud_cnt\(7) & (!\RX|baud_cnt\(5) & (\RX|baud_cnt\(6) & \RX|baud_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|baud_cnt\(7),
	datab => \RX|baud_cnt\(5),
	datac => \RX|baud_cnt\(6),
	datad => \RX|baud_cnt\(4),
	combout => \RX|Equal1~7_combout\);

-- Location: LCCOMB_X48_Y71_N18
\RX|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~9_combout\ = (\RX|Equal1~8_combout\ & (!\RX|baud_cnt\(3) & (\RX|baud_cnt\(2) & \RX|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal1~8_combout\,
	datab => \RX|baud_cnt\(3),
	datac => \RX|baud_cnt\(2),
	datad => \RX|Equal1~7_combout\,
	combout => \RX|Equal1~9_combout\);

-- Location: LCCOMB_X48_Y71_N28
\RX|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Equal1~10_combout\ = (\RX|Equal1~5_combout\ & (\RX|Equal1~6_combout\ & (\RX|Equal1~4_combout\ & \RX|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal1~5_combout\,
	datab => \RX|Equal1~6_combout\,
	datac => \RX|Equal1~4_combout\,
	datad => \RX|Equal1~9_combout\,
	combout => \RX|Equal1~10_combout\);

-- Location: LCCOMB_X47_Y69_N26
\RX|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector4~0_combout\ = (\RX|current_state.state_update_parity~q\) # ((!\RX|Equal1~10_combout\ & \RX|current_state.state_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Equal1~10_combout\,
	datab => \RX|current_state.state_update_parity~q\,
	datac => \RX|current_state.state_wait~q\,
	combout => \RX|Selector4~0_combout\);

-- Location: FF_X47_Y69_N27
\RX|current_state.state_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector4~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_wait~q\);

-- Location: LCCOMB_X47_Y69_N22
\RX|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|Selector2~0_combout\ = (\RX|Equal1~10_combout\ & ((\RX|current_state.state_start~q\) # ((\RX|current_state.state_wait~q\ & !\RX|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_wait~q\,
	datab => \RX|current_state.state_start~q\,
	datac => \RX|Equal1~10_combout\,
	datad => \RX|Equal3~0_combout\,
	combout => \RX|Selector2~0_combout\);

-- Location: FF_X47_Y69_N23
\RX|current_state.state_data_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|Selector2~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|current_state.state_data_frame~q\);

-- Location: LCCOMB_X50_Y69_N20
\RX|bit_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|bit_cnt[0]~0_combout\ = \RX|bit_cnt\(0) $ (\RX|current_state.state_data_frame~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|bit_cnt\(0),
	datad => \RX|current_state.state_data_frame~q\,
	combout => \RX|bit_cnt[0]~0_combout\);

-- Location: FF_X50_Y69_N21
\RX|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|bit_cnt[0]~0_combout\,
	clrn => \RX|ALT_INV_baud_arst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|bit_cnt\(0));

-- Location: LCCOMB_X50_Y69_N28
\RX|en_data_reg_bus[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|en_data_reg_bus[0]~0_combout\ = (!\RX|bit_cnt\(2) & (\RX|current_state.state_sample_data~q\ & (!\RX|bit_cnt\(1) & !\RX|bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(2),
	datab => \RX|current_state.state_sample_data~q\,
	datac => \RX|bit_cnt\(1),
	datad => \RX|bit_cnt\(3),
	combout => \RX|en_data_reg_bus[0]~0_combout\);

-- Location: LCCOMB_X49_Y69_N18
\RX|DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[0]~0_combout\ = (\RX|bit_cnt\(0) & ((\RX|en_data_reg_bus[0]~0_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|en_data_reg_bus[0]~0_combout\ & ((\RX|DATA\(0)))))) # (!\RX|bit_cnt\(0) & (((\RX|DATA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(0),
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(0),
	datad => \RX|en_data_reg_bus[0]~0_combout\,
	combout => \RX|DATA[0]~0_combout\);

-- Location: FF_X49_Y69_N19
\RX|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[0]~0_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(0));

-- Location: LCCOMB_X49_Y69_N6
\RX|data_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_reg[0]~feeder_combout\ = \RX|DATA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|DATA\(0),
	combout => \RX|data_reg[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y69_N12
\RX|en_all_data_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|en_all_data_reg~0_combout\ = \RX|current_state.state_update_data~q\ $ (\RX|current_state.state_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_update_data~q\,
	datad => \RX|current_state.state_start~q\,
	combout => \RX|en_all_data_reg~0_combout\);

-- Location: FF_X49_Y69_N7
\RX|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_reg[0]~feeder_combout\,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(0));

-- Location: LCCOMB_X50_Y69_N2
\RX|en_data_reg_bus[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|en_data_reg_bus[2]~1_combout\ = (!\RX|bit_cnt\(2) & (\RX|current_state.state_sample_data~q\ & (\RX|bit_cnt\(1) & !\RX|bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(2),
	datab => \RX|current_state.state_sample_data~q\,
	datac => \RX|bit_cnt\(1),
	datad => \RX|bit_cnt\(3),
	combout => \RX|en_data_reg_bus[2]~1_combout\);

-- Location: LCCOMB_X49_Y69_N24
\RX|DATA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[1]~1_combout\ = (\RX|bit_cnt\(0) & (((\RX|DATA\(1))))) # (!\RX|bit_cnt\(0) & ((\RX|en_data_reg_bus[2]~1_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|en_data_reg_bus[2]~1_combout\ & ((\RX|DATA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(0),
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(1),
	datad => \RX|en_data_reg_bus[2]~1_combout\,
	combout => \RX|DATA[1]~1_combout\);

-- Location: FF_X49_Y69_N25
\RX|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[1]~1_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(1));

-- Location: LCCOMB_X49_Y69_N22
\RX|data_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_reg[1]~feeder_combout\ = \RX|DATA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|DATA\(1),
	combout => \RX|data_reg[1]~feeder_combout\);

-- Location: FF_X49_Y69_N23
\RX|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_reg[1]~feeder_combout\,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(1));

-- Location: LCCOMB_X49_Y69_N10
\RX|DATA[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[2]~2_combout\ = (\RX|bit_cnt\(0) & ((\RX|en_data_reg_bus[2]~1_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|en_data_reg_bus[2]~1_combout\ & ((\RX|DATA\(2)))))) # (!\RX|bit_cnt\(0) & (((\RX|DATA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(0),
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(2),
	datad => \RX|en_data_reg_bus[2]~1_combout\,
	combout => \RX|DATA[2]~2_combout\);

-- Location: FF_X49_Y69_N11
\RX|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[2]~2_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(2));

-- Location: LCCOMB_X49_Y69_N2
\RX|data_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_reg[2]~feeder_combout\ = \RX|DATA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|DATA\(2),
	combout => \RX|data_reg[2]~feeder_combout\);

-- Location: FF_X49_Y69_N3
\RX|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_reg[2]~feeder_combout\,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(2));

-- Location: LCCOMB_X50_Y69_N4
\RX|en_data_reg_bus[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|en_data_reg_bus[4]~2_combout\ = (\RX|bit_cnt\(2) & (\RX|current_state.state_sample_data~q\ & (!\RX|bit_cnt\(1) & !\RX|bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(2),
	datab => \RX|current_state.state_sample_data~q\,
	datac => \RX|bit_cnt\(1),
	datad => \RX|bit_cnt\(3),
	combout => \RX|en_data_reg_bus[4]~2_combout\);

-- Location: LCCOMB_X49_Y69_N26
\RX|DATA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[3]~3_combout\ = (\RX|bit_cnt\(0) & (((\RX|DATA\(3))))) # (!\RX|bit_cnt\(0) & ((\RX|en_data_reg_bus[4]~2_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|en_data_reg_bus[4]~2_combout\ & ((\RX|DATA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(0),
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(3),
	datad => \RX|en_data_reg_bus[4]~2_combout\,
	combout => \RX|DATA[3]~3_combout\);

-- Location: FF_X49_Y69_N27
\RX|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[3]~3_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(3));

-- Location: FF_X49_Y69_N1
\RX|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RX|DATA\(3),
	sload => VCC,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(3));

-- Location: LCCOMB_X49_Y69_N8
\RX|DATA[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[4]~4_combout\ = (\RX|bit_cnt\(0) & ((\RX|en_data_reg_bus[4]~2_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|en_data_reg_bus[4]~2_combout\ & ((\RX|DATA\(4)))))) # (!\RX|bit_cnt\(0) & (((\RX|DATA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(0),
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(4),
	datad => \RX|en_data_reg_bus[4]~2_combout\,
	combout => \RX|DATA[4]~4_combout\);

-- Location: FF_X49_Y69_N9
\RX|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[4]~4_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(4));

-- Location: LCCOMB_X50_Y69_N16
\RX|data_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_reg[4]~feeder_combout\ = \RX|DATA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|DATA\(4),
	combout => \RX|data_reg[4]~feeder_combout\);

-- Location: FF_X50_Y69_N17
\RX|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_reg[4]~feeder_combout\,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(4));

-- Location: LCCOMB_X50_Y69_N22
\RX|en_data_reg_bus[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|en_data_reg_bus[6]~3_combout\ = (\RX|bit_cnt\(2) & (\RX|current_state.state_sample_data~q\ & (\RX|bit_cnt\(1) & !\RX|bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(2),
	datab => \RX|current_state.state_sample_data~q\,
	datac => \RX|bit_cnt\(1),
	datad => \RX|bit_cnt\(3),
	combout => \RX|en_data_reg_bus[6]~3_combout\);

-- Location: LCCOMB_X49_Y69_N16
\RX|DATA[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[5]~5_combout\ = (\RX|bit_cnt\(0) & (((\RX|DATA\(5))))) # (!\RX|bit_cnt\(0) & ((\RX|en_data_reg_bus[6]~3_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|en_data_reg_bus[6]~3_combout\ & ((\RX|DATA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(0),
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(5),
	datad => \RX|en_data_reg_bus[6]~3_combout\,
	combout => \RX|DATA[5]~5_combout\);

-- Location: FF_X49_Y69_N17
\RX|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[5]~5_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(5));

-- Location: LCCOMB_X49_Y69_N14
\RX|data_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_reg[5]~feeder_combout\ = \RX|DATA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|DATA\(5),
	combout => \RX|data_reg[5]~feeder_combout\);

-- Location: FF_X49_Y69_N15
\RX|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_reg[5]~feeder_combout\,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(5));

-- Location: LCCOMB_X49_Y69_N20
\RX|DATA[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[6]~6_combout\ = (\RX|bit_cnt\(0) & ((\RX|en_data_reg_bus[6]~3_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|en_data_reg_bus[6]~3_combout\ & ((\RX|DATA\(6)))))) # (!\RX|bit_cnt\(0) & (((\RX|DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|bit_cnt\(0),
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(6),
	datad => \RX|en_data_reg_bus[6]~3_combout\,
	combout => \RX|DATA[6]~6_combout\);

-- Location: FF_X49_Y69_N21
\RX|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[6]~6_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(6));

-- Location: LCCOMB_X49_Y69_N4
\RX|data_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_reg[6]~feeder_combout\ = \RX|DATA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|DATA\(6),
	combout => \RX|data_reg[6]~feeder_combout\);

-- Location: FF_X49_Y69_N5
\RX|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_reg[6]~feeder_combout\,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(6));

-- Location: LCCOMB_X49_Y69_N30
\RX|DATA[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|DATA[7]~7_combout\ = (\RX|current_state.state_sample_data~q\ & ((\RX|Equal3~0_combout\ & (\RX|uart_rx_t2~q\)) # (!\RX|Equal3~0_combout\ & ((\RX|DATA\(7)))))) # (!\RX|current_state.state_sample_data~q\ & (((\RX|DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|current_state.state_sample_data~q\,
	datab => \RX|uart_rx_t2~q\,
	datac => \RX|DATA\(7),
	datad => \RX|Equal3~0_combout\,
	combout => \RX|DATA[7]~7_combout\);

-- Location: FF_X49_Y69_N31
\RX|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|DATA[7]~7_combout\,
	clrn => \RX|ALT_INV_parity_cnt_arst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|DATA\(7));

-- Location: LCCOMB_X50_Y69_N6
\RX|data_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|data_reg[7]~feeder_combout\ = \RX|DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|DATA\(7),
	combout => \RX|data_reg[7]~feeder_combout\);

-- Location: FF_X50_Y69_N7
\RX|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX|data_reg[7]~feeder_combout\,
	ena => \RX|en_all_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data_reg\(7));

-- Location: LCCOMB_X42_Y71_N0
\TX|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~0_combout\ = \TX|bauld_gen_cnt\(0) $ (VCC)
-- \TX|Add0~1\ = CARRY(\TX|bauld_gen_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(0),
	datad => VCC,
	combout => \TX|Add0~0_combout\,
	cout => \TX|Add0~1\);

-- Location: LCCOMB_X42_Y71_N2
\TX|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~2_combout\ = (\TX|bauld_gen_cnt\(1) & (!\TX|Add0~1\)) # (!\TX|bauld_gen_cnt\(1) & ((\TX|Add0~1\) # (GND)))
-- \TX|Add0~3\ = CARRY((!\TX|Add0~1\) # (!\TX|bauld_gen_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(1),
	datad => VCC,
	cin => \TX|Add0~1\,
	combout => \TX|Add0~2_combout\,
	cout => \TX|Add0~3\);

-- Location: LCCOMB_X41_Y71_N0
\TX|bauld_gen_cnt[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[1]~30_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~2_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(1),
	datad => \TX|Add0~2_combout\,
	combout => \TX|bauld_gen_cnt[1]~30_combout\);

-- Location: LCCOMB_X41_Y71_N28
\TX|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|WideOr10~0_combout\ = (\TX|current_state.state_ready_idle~q\) # (!\TX|current_state.state_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX|current_state.state_ready_idle~q\,
	datad => \TX|current_state.state_idle~q\,
	combout => \TX|WideOr10~0_combout\);

-- Location: FF_X41_Y71_N1
\TX|bauld_gen_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[1]~30_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(1));

-- Location: LCCOMB_X42_Y71_N4
\TX|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~4_combout\ = (\TX|bauld_gen_cnt\(2) & (\TX|Add0~3\ $ (GND))) # (!\TX|bauld_gen_cnt\(2) & (!\TX|Add0~3\ & VCC))
-- \TX|Add0~5\ = CARRY((\TX|bauld_gen_cnt\(2) & !\TX|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(2),
	datad => VCC,
	cin => \TX|Add0~3\,
	combout => \TX|Add0~4_combout\,
	cout => \TX|Add0~5\);

-- Location: LCCOMB_X42_Y71_N6
\TX|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~6_combout\ = (\TX|bauld_gen_cnt\(3) & (!\TX|Add0~5\)) # (!\TX|bauld_gen_cnt\(3) & ((\TX|Add0~5\) # (GND)))
-- \TX|Add0~7\ = CARRY((!\TX|Add0~5\) # (!\TX|bauld_gen_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(3),
	datad => VCC,
	cin => \TX|Add0~5\,
	combout => \TX|Add0~6_combout\,
	cout => \TX|Add0~7\);

-- Location: LCCOMB_X41_Y71_N18
\TX|bauld_gen_cnt[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[3]~31_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~6_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(3),
	datad => \TX|Add0~6_combout\,
	combout => \TX|bauld_gen_cnt[3]~31_combout\);

-- Location: FF_X41_Y71_N19
\TX|bauld_gen_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[3]~31_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(3));

-- Location: LCCOMB_X42_Y71_N8
\TX|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~8_combout\ = (\TX|bauld_gen_cnt\(4) & (\TX|Add0~7\ $ (GND))) # (!\TX|bauld_gen_cnt\(4) & (!\TX|Add0~7\ & VCC))
-- \TX|Add0~9\ = CARRY((\TX|bauld_gen_cnt\(4) & !\TX|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(4),
	datad => VCC,
	cin => \TX|Add0~7\,
	combout => \TX|Add0~8_combout\,
	cout => \TX|Add0~9\);

-- Location: LCCOMB_X40_Y71_N22
\TX|bauld_gen_cnt[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[4]~26_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~8_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Add0~8_combout\,
	datac => \TX|bauld_gen_cnt\(4),
	datad => \TX|Equal0~11_combout\,
	combout => \TX|bauld_gen_cnt[4]~26_combout\);

-- Location: FF_X40_Y71_N23
\TX|bauld_gen_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[4]~26_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(4));

-- Location: LCCOMB_X42_Y71_N10
\TX|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~10_combout\ = (\TX|bauld_gen_cnt\(5) & (!\TX|Add0~9\)) # (!\TX|bauld_gen_cnt\(5) & ((\TX|Add0~9\) # (GND)))
-- \TX|Add0~11\ = CARRY((!\TX|Add0~9\) # (!\TX|bauld_gen_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(5),
	datad => VCC,
	cin => \TX|Add0~9\,
	combout => \TX|Add0~10_combout\,
	cout => \TX|Add0~11\);

-- Location: LCCOMB_X40_Y71_N10
\TX|bauld_gen_cnt[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[5]~28_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~10_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Add0~10_combout\,
	datac => \TX|bauld_gen_cnt\(5),
	datad => \TX|Equal0~11_combout\,
	combout => \TX|bauld_gen_cnt[5]~28_combout\);

-- Location: FF_X40_Y71_N11
\TX|bauld_gen_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[5]~28_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(5));

-- Location: LCCOMB_X42_Y71_N12
\TX|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~12_combout\ = (\TX|bauld_gen_cnt\(6) & (\TX|Add0~11\ $ (GND))) # (!\TX|bauld_gen_cnt\(6) & (!\TX|Add0~11\ & VCC))
-- \TX|Add0~13\ = CARRY((\TX|bauld_gen_cnt\(6) & !\TX|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(6),
	datad => VCC,
	cin => \TX|Add0~11\,
	combout => \TX|Add0~12_combout\,
	cout => \TX|Add0~13\);

-- Location: LCCOMB_X41_Y71_N4
\TX|bauld_gen_cnt[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[6]~25_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~12_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|Add0~12_combout\,
	datac => \TX|bauld_gen_cnt\(6),
	datad => \TX|bauld_gen_cnt[31]~0_combout\,
	combout => \TX|bauld_gen_cnt[6]~25_combout\);

-- Location: FF_X41_Y71_N5
\TX|bauld_gen_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[6]~25_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(6));

-- Location: LCCOMB_X42_Y71_N14
\TX|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~14_combout\ = (\TX|bauld_gen_cnt\(7) & (!\TX|Add0~13\)) # (!\TX|bauld_gen_cnt\(7) & ((\TX|Add0~13\) # (GND)))
-- \TX|Add0~15\ = CARRY((!\TX|Add0~13\) # (!\TX|bauld_gen_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(7),
	datad => VCC,
	cin => \TX|Add0~13\,
	combout => \TX|Add0~14_combout\,
	cout => \TX|Add0~15\);

-- Location: LCCOMB_X40_Y71_N24
\TX|bauld_gen_cnt[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[7]~27_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~14_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(7),
	datad => \TX|Add0~14_combout\,
	combout => \TX|bauld_gen_cnt[7]~27_combout\);

-- Location: FF_X40_Y71_N25
\TX|bauld_gen_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[7]~27_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(7));

-- Location: LCCOMB_X42_Y71_N16
\TX|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~16_combout\ = (\TX|bauld_gen_cnt\(8) & (\TX|Add0~15\ $ (GND))) # (!\TX|bauld_gen_cnt\(8) & (!\TX|Add0~15\ & VCC))
-- \TX|Add0~17\ = CARRY((\TX|bauld_gen_cnt\(8) & !\TX|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(8),
	datad => VCC,
	cin => \TX|Add0~15\,
	combout => \TX|Add0~16_combout\,
	cout => \TX|Add0~17\);

-- Location: LCCOMB_X41_Y71_N2
\TX|bauld_gen_cnt[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[8]~24_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~16_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(8),
	datad => \TX|Add0~16_combout\,
	combout => \TX|bauld_gen_cnt[8]~24_combout\);

-- Location: FF_X41_Y71_N3
\TX|bauld_gen_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[8]~24_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(8));

-- Location: LCCOMB_X42_Y71_N18
\TX|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~18_combout\ = (\TX|bauld_gen_cnt\(9) & (!\TX|Add0~17\)) # (!\TX|bauld_gen_cnt\(9) & ((\TX|Add0~17\) # (GND)))
-- \TX|Add0~19\ = CARRY((!\TX|Add0~17\) # (!\TX|bauld_gen_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(9),
	datad => VCC,
	cin => \TX|Add0~17\,
	combout => \TX|Add0~18_combout\,
	cout => \TX|Add0~19\);

-- Location: LCCOMB_X41_Y71_N24
\TX|bauld_gen_cnt[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[9]~23_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~18_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(9),
	datad => \TX|Add0~18_combout\,
	combout => \TX|bauld_gen_cnt[9]~23_combout\);

-- Location: FF_X41_Y71_N25
\TX|bauld_gen_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[9]~23_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(9));

-- Location: LCCOMB_X42_Y71_N20
\TX|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~20_combout\ = (\TX|bauld_gen_cnt\(10) & (\TX|Add0~19\ $ (GND))) # (!\TX|bauld_gen_cnt\(10) & (!\TX|Add0~19\ & VCC))
-- \TX|Add0~21\ = CARRY((\TX|bauld_gen_cnt\(10) & !\TX|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(10),
	datad => VCC,
	cin => \TX|Add0~19\,
	combout => \TX|Add0~20_combout\,
	cout => \TX|Add0~21\);

-- Location: LCCOMB_X41_Y71_N16
\TX|bauld_gen_cnt[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[10]~21_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~20_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Add0~20_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(10),
	datad => \TX|bauld_gen_cnt[31]~0_combout\,
	combout => \TX|bauld_gen_cnt[10]~21_combout\);

-- Location: FF_X41_Y71_N17
\TX|bauld_gen_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[10]~21_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(10));

-- Location: LCCOMB_X42_Y71_N22
\TX|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~22_combout\ = (\TX|bauld_gen_cnt\(11) & (!\TX|Add0~21\)) # (!\TX|bauld_gen_cnt\(11) & ((\TX|Add0~21\) # (GND)))
-- \TX|Add0~23\ = CARRY((!\TX|Add0~21\) # (!\TX|bauld_gen_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(11),
	datad => VCC,
	cin => \TX|Add0~21\,
	combout => \TX|Add0~22_combout\,
	cout => \TX|Add0~23\);

-- Location: LCCOMB_X41_Y71_N22
\TX|bauld_gen_cnt[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[11]~22_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~22_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(11),
	datad => \TX|Add0~22_combout\,
	combout => \TX|bauld_gen_cnt[11]~22_combout\);

-- Location: FF_X41_Y71_N23
\TX|bauld_gen_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[11]~22_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(11));

-- Location: LCCOMB_X42_Y71_N24
\TX|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~24_combout\ = (\TX|bauld_gen_cnt\(12) & (\TX|Add0~23\ $ (GND))) # (!\TX|bauld_gen_cnt\(12) & (!\TX|Add0~23\ & VCC))
-- \TX|Add0~25\ = CARRY((\TX|bauld_gen_cnt\(12) & !\TX|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(12),
	datad => VCC,
	cin => \TX|Add0~23\,
	combout => \TX|Add0~24_combout\,
	cout => \TX|Add0~25\);

-- Location: LCCOMB_X40_Y71_N12
\TX|bauld_gen_cnt[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[12]~17_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~24_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(12),
	datad => \TX|Add0~24_combout\,
	combout => \TX|bauld_gen_cnt[12]~17_combout\);

-- Location: FF_X40_Y71_N13
\TX|bauld_gen_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[12]~17_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(12));

-- Location: LCCOMB_X42_Y71_N26
\TX|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~26_combout\ = (\TX|bauld_gen_cnt\(13) & (!\TX|Add0~25\)) # (!\TX|bauld_gen_cnt\(13) & ((\TX|Add0~25\) # (GND)))
-- \TX|Add0~27\ = CARRY((!\TX|Add0~25\) # (!\TX|bauld_gen_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(13),
	datad => VCC,
	cin => \TX|Add0~25\,
	combout => \TX|Add0~26_combout\,
	cout => \TX|Add0~27\);

-- Location: LCCOMB_X40_Y71_N2
\TX|bauld_gen_cnt[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[13]~20_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~26_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(13),
	datad => \TX|Add0~26_combout\,
	combout => \TX|bauld_gen_cnt[13]~20_combout\);

-- Location: FF_X40_Y71_N3
\TX|bauld_gen_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[13]~20_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(13));

-- Location: LCCOMB_X42_Y71_N28
\TX|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~28_combout\ = (\TX|bauld_gen_cnt\(14) & (\TX|Add0~27\ $ (GND))) # (!\TX|bauld_gen_cnt\(14) & (!\TX|Add0~27\ & VCC))
-- \TX|Add0~29\ = CARRY((\TX|bauld_gen_cnt\(14) & !\TX|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(14),
	datad => VCC,
	cin => \TX|Add0~27\,
	combout => \TX|Add0~28_combout\,
	cout => \TX|Add0~29\);

-- Location: LCCOMB_X40_Y71_N4
\TX|bauld_gen_cnt[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[14]~19_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~28_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(14),
	datad => \TX|Add0~28_combout\,
	combout => \TX|bauld_gen_cnt[14]~19_combout\);

-- Location: FF_X40_Y71_N5
\TX|bauld_gen_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[14]~19_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(14));

-- Location: LCCOMB_X42_Y71_N30
\TX|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~30_combout\ = (\TX|bauld_gen_cnt\(15) & (!\TX|Add0~29\)) # (!\TX|bauld_gen_cnt\(15) & ((\TX|Add0~29\) # (GND)))
-- \TX|Add0~31\ = CARRY((!\TX|Add0~29\) # (!\TX|bauld_gen_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(15),
	datad => VCC,
	cin => \TX|Add0~29\,
	combout => \TX|Add0~30_combout\,
	cout => \TX|Add0~31\);

-- Location: LCCOMB_X40_Y71_N6
\TX|bauld_gen_cnt[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[15]~18_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~30_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(15),
	datad => \TX|Add0~30_combout\,
	combout => \TX|bauld_gen_cnt[15]~18_combout\);

-- Location: FF_X40_Y71_N7
\TX|bauld_gen_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[15]~18_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(15));

-- Location: LCCOMB_X40_Y71_N28
\TX|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~5_combout\ = (!\TX|bauld_gen_cnt\(15) & (!\TX|bauld_gen_cnt\(13) & (!\TX|bauld_gen_cnt\(14) & \TX|bauld_gen_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(15),
	datab => \TX|bauld_gen_cnt\(13),
	datac => \TX|bauld_gen_cnt\(14),
	datad => \TX|bauld_gen_cnt\(12),
	combout => \TX|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y70_N0
\TX|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~32_combout\ = (\TX|bauld_gen_cnt\(16) & (\TX|Add0~31\ $ (GND))) # (!\TX|bauld_gen_cnt\(16) & (!\TX|Add0~31\ & VCC))
-- \TX|Add0~33\ = CARRY((\TX|bauld_gen_cnt\(16) & !\TX|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(16),
	datad => VCC,
	cin => \TX|Add0~31\,
	combout => \TX|Add0~32_combout\,
	cout => \TX|Add0~33\);

-- Location: LCCOMB_X41_Y71_N14
\TX|bauld_gen_cnt[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[16]~16_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~32_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(16),
	datad => \TX|Add0~32_combout\,
	combout => \TX|bauld_gen_cnt[16]~16_combout\);

-- Location: FF_X41_Y71_N15
\TX|bauld_gen_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[16]~16_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(16));

-- Location: LCCOMB_X42_Y70_N2
\TX|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~34_combout\ = (\TX|bauld_gen_cnt\(17) & (!\TX|Add0~33\)) # (!\TX|bauld_gen_cnt\(17) & ((\TX|Add0~33\) # (GND)))
-- \TX|Add0~35\ = CARRY((!\TX|Add0~33\) # (!\TX|bauld_gen_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(17),
	datad => VCC,
	cin => \TX|Add0~33\,
	combout => \TX|Add0~34_combout\,
	cout => \TX|Add0~35\);

-- Location: LCCOMB_X41_Y71_N20
\TX|bauld_gen_cnt[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[17]~15_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~34_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(17),
	datad => \TX|Add0~34_combout\,
	combout => \TX|bauld_gen_cnt[17]~15_combout\);

-- Location: FF_X41_Y71_N21
\TX|bauld_gen_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[17]~15_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(17));

-- Location: LCCOMB_X42_Y70_N4
\TX|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~36_combout\ = (\TX|bauld_gen_cnt\(18) & (\TX|Add0~35\ $ (GND))) # (!\TX|bauld_gen_cnt\(18) & (!\TX|Add0~35\ & VCC))
-- \TX|Add0~37\ = CARRY((\TX|bauld_gen_cnt\(18) & !\TX|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(18),
	datad => VCC,
	cin => \TX|Add0~35\,
	combout => \TX|Add0~36_combout\,
	cout => \TX|Add0~37\);

-- Location: LCCOMB_X41_Y71_N30
\TX|bauld_gen_cnt[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[18]~14_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~36_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|Add0~36_combout\,
	datac => \TX|bauld_gen_cnt\(18),
	datad => \TX|bauld_gen_cnt[31]~0_combout\,
	combout => \TX|bauld_gen_cnt[18]~14_combout\);

-- Location: FF_X41_Y71_N31
\TX|bauld_gen_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[18]~14_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(18));

-- Location: LCCOMB_X42_Y70_N6
\TX|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~38_combout\ = (\TX|bauld_gen_cnt\(19) & (!\TX|Add0~37\)) # (!\TX|bauld_gen_cnt\(19) & ((\TX|Add0~37\) # (GND)))
-- \TX|Add0~39\ = CARRY((!\TX|Add0~37\) # (!\TX|bauld_gen_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(19),
	datad => VCC,
	cin => \TX|Add0~37\,
	combout => \TX|Add0~38_combout\,
	cout => \TX|Add0~39\);

-- Location: LCCOMB_X41_Y71_N12
\TX|bauld_gen_cnt[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[19]~13_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~38_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(19),
	datad => \TX|Add0~38_combout\,
	combout => \TX|bauld_gen_cnt[19]~13_combout\);

-- Location: FF_X41_Y71_N13
\TX|bauld_gen_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[19]~13_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(19));

-- Location: LCCOMB_X42_Y70_N8
\TX|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~40_combout\ = (\TX|bauld_gen_cnt\(20) & (\TX|Add0~39\ $ (GND))) # (!\TX|bauld_gen_cnt\(20) & (!\TX|Add0~39\ & VCC))
-- \TX|Add0~41\ = CARRY((\TX|bauld_gen_cnt\(20) & !\TX|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(20),
	datad => VCC,
	cin => \TX|Add0~39\,
	combout => \TX|Add0~40_combout\,
	cout => \TX|Add0~41\);

-- Location: LCCOMB_X41_Y71_N26
\TX|bauld_gen_cnt[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[20]~12_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~40_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|Add0~40_combout\,
	datac => \TX|bauld_gen_cnt\(20),
	datad => \TX|bauld_gen_cnt[31]~0_combout\,
	combout => \TX|bauld_gen_cnt[20]~12_combout\);

-- Location: FF_X41_Y71_N27
\TX|bauld_gen_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[20]~12_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(20));

-- Location: LCCOMB_X42_Y70_N10
\TX|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~42_combout\ = (\TX|bauld_gen_cnt\(21) & (!\TX|Add0~41\)) # (!\TX|bauld_gen_cnt\(21) & ((\TX|Add0~41\) # (GND)))
-- \TX|Add0~43\ = CARRY((!\TX|Add0~41\) # (!\TX|bauld_gen_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(21),
	datad => VCC,
	cin => \TX|Add0~41\,
	combout => \TX|Add0~42_combout\,
	cout => \TX|Add0~43\);

-- Location: LCCOMB_X41_Y70_N16
\TX|bauld_gen_cnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[21]~11_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~42_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Add0~42_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(21),
	datad => \TX|Equal0~11_combout\,
	combout => \TX|bauld_gen_cnt[21]~11_combout\);

-- Location: FF_X41_Y70_N17
\TX|bauld_gen_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[21]~11_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(21));

-- Location: LCCOMB_X42_Y70_N12
\TX|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~44_combout\ = (\TX|bauld_gen_cnt\(22) & (\TX|Add0~43\ $ (GND))) # (!\TX|bauld_gen_cnt\(22) & (!\TX|Add0~43\ & VCC))
-- \TX|Add0~45\ = CARRY((\TX|bauld_gen_cnt\(22) & !\TX|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(22),
	datad => VCC,
	cin => \TX|Add0~43\,
	combout => \TX|Add0~44_combout\,
	cout => \TX|Add0~45\);

-- Location: LCCOMB_X41_Y70_N6
\TX|bauld_gen_cnt[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[22]~10_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~44_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(22),
	datad => \TX|Add0~44_combout\,
	combout => \TX|bauld_gen_cnt[22]~10_combout\);

-- Location: FF_X41_Y70_N7
\TX|bauld_gen_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[22]~10_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(22));

-- Location: LCCOMB_X42_Y70_N14
\TX|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~46_combout\ = (\TX|bauld_gen_cnt\(23) & (!\TX|Add0~45\)) # (!\TX|bauld_gen_cnt\(23) & ((\TX|Add0~45\) # (GND)))
-- \TX|Add0~47\ = CARRY((!\TX|Add0~45\) # (!\TX|bauld_gen_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(23),
	datad => VCC,
	cin => \TX|Add0~45\,
	combout => \TX|Add0~46_combout\,
	cout => \TX|Add0~47\);

-- Location: LCCOMB_X41_Y70_N12
\TX|bauld_gen_cnt[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[23]~9_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~46_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(23),
	datad => \TX|Add0~46_combout\,
	combout => \TX|bauld_gen_cnt[23]~9_combout\);

-- Location: FF_X41_Y70_N13
\TX|bauld_gen_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[23]~9_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(23));

-- Location: LCCOMB_X41_Y70_N10
\TX|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~2_combout\ = (!\TX|bauld_gen_cnt\(22) & (!\TX|bauld_gen_cnt\(21) & (!\TX|bauld_gen_cnt\(20) & !\TX|bauld_gen_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(22),
	datab => \TX|bauld_gen_cnt\(21),
	datac => \TX|bauld_gen_cnt\(20),
	datad => \TX|bauld_gen_cnt\(23),
	combout => \TX|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y70_N16
\TX|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~48_combout\ = (\TX|bauld_gen_cnt\(24) & (\TX|Add0~47\ $ (GND))) # (!\TX|bauld_gen_cnt\(24) & (!\TX|Add0~47\ & VCC))
-- \TX|Add0~49\ = CARRY((\TX|bauld_gen_cnt\(24) & !\TX|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(24),
	datad => VCC,
	cin => \TX|Add0~47\,
	combout => \TX|Add0~48_combout\,
	cout => \TX|Add0~49\);

-- Location: LCCOMB_X41_Y70_N28
\TX|bauld_gen_cnt[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[24]~8_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~48_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(24),
	datad => \TX|Add0~48_combout\,
	combout => \TX|bauld_gen_cnt[24]~8_combout\);

-- Location: FF_X41_Y70_N29
\TX|bauld_gen_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[24]~8_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(24));

-- Location: LCCOMB_X42_Y70_N18
\TX|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~50_combout\ = (\TX|bauld_gen_cnt\(25) & (!\TX|Add0~49\)) # (!\TX|bauld_gen_cnt\(25) & ((\TX|Add0~49\) # (GND)))
-- \TX|Add0~51\ = CARRY((!\TX|Add0~49\) # (!\TX|bauld_gen_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(25),
	datad => VCC,
	cin => \TX|Add0~49\,
	combout => \TX|Add0~50_combout\,
	cout => \TX|Add0~51\);

-- Location: LCCOMB_X41_Y70_N14
\TX|bauld_gen_cnt[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[25]~7_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~50_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(25),
	datad => \TX|Add0~50_combout\,
	combout => \TX|bauld_gen_cnt[25]~7_combout\);

-- Location: FF_X41_Y70_N15
\TX|bauld_gen_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[25]~7_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(25));

-- Location: LCCOMB_X42_Y70_N20
\TX|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~52_combout\ = (\TX|bauld_gen_cnt\(26) & (\TX|Add0~51\ $ (GND))) # (!\TX|bauld_gen_cnt\(26) & (!\TX|Add0~51\ & VCC))
-- \TX|Add0~53\ = CARRY((\TX|bauld_gen_cnt\(26) & !\TX|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(26),
	datad => VCC,
	cin => \TX|Add0~51\,
	combout => \TX|Add0~52_combout\,
	cout => \TX|Add0~53\);

-- Location: LCCOMB_X41_Y70_N24
\TX|bauld_gen_cnt[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[26]~6_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~52_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Add0~52_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(26),
	datad => \TX|Equal0~11_combout\,
	combout => \TX|bauld_gen_cnt[26]~6_combout\);

-- Location: FF_X41_Y70_N25
\TX|bauld_gen_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[26]~6_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(26));

-- Location: LCCOMB_X42_Y70_N22
\TX|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~54_combout\ = (\TX|bauld_gen_cnt\(27) & (!\TX|Add0~53\)) # (!\TX|bauld_gen_cnt\(27) & ((\TX|Add0~53\) # (GND)))
-- \TX|Add0~55\ = CARRY((!\TX|Add0~53\) # (!\TX|bauld_gen_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(27),
	datad => VCC,
	cin => \TX|Add0~53\,
	combout => \TX|Add0~54_combout\,
	cout => \TX|Add0~55\);

-- Location: LCCOMB_X41_Y70_N26
\TX|bauld_gen_cnt[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[27]~5_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~54_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(27),
	datad => \TX|Add0~54_combout\,
	combout => \TX|bauld_gen_cnt[27]~5_combout\);

-- Location: FF_X41_Y70_N27
\TX|bauld_gen_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[27]~5_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(27));

-- Location: LCCOMB_X42_Y70_N24
\TX|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~56_combout\ = (\TX|bauld_gen_cnt\(28) & (\TX|Add0~55\ $ (GND))) # (!\TX|bauld_gen_cnt\(28) & (!\TX|Add0~55\ & VCC))
-- \TX|Add0~57\ = CARRY((\TX|bauld_gen_cnt\(28) & !\TX|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(28),
	datad => VCC,
	cin => \TX|Add0~55\,
	combout => \TX|Add0~56_combout\,
	cout => \TX|Add0~57\);

-- Location: LCCOMB_X41_Y70_N22
\TX|bauld_gen_cnt[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[28]~4_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~56_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(28),
	datad => \TX|Add0~56_combout\,
	combout => \TX|bauld_gen_cnt[28]~4_combout\);

-- Location: FF_X41_Y70_N23
\TX|bauld_gen_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[28]~4_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(28));

-- Location: LCCOMB_X42_Y70_N26
\TX|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~58_combout\ = (\TX|bauld_gen_cnt\(29) & (!\TX|Add0~57\)) # (!\TX|bauld_gen_cnt\(29) & ((\TX|Add0~57\) # (GND)))
-- \TX|Add0~59\ = CARRY((!\TX|Add0~57\) # (!\TX|bauld_gen_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(29),
	datad => VCC,
	cin => \TX|Add0~57\,
	combout => \TX|Add0~58_combout\,
	cout => \TX|Add0~59\);

-- Location: LCCOMB_X41_Y70_N0
\TX|bauld_gen_cnt[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[29]~3_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~58_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(29),
	datad => \TX|Add0~58_combout\,
	combout => \TX|bauld_gen_cnt[29]~3_combout\);

-- Location: FF_X41_Y70_N1
\TX|bauld_gen_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[29]~3_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(29));

-- Location: LCCOMB_X42_Y70_N28
\TX|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~60_combout\ = (\TX|bauld_gen_cnt\(30) & (\TX|Add0~59\ $ (GND))) # (!\TX|bauld_gen_cnt\(30) & (!\TX|Add0~59\ & VCC))
-- \TX|Add0~61\ = CARRY((\TX|bauld_gen_cnt\(30) & !\TX|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(30),
	datad => VCC,
	cin => \TX|Add0~59\,
	combout => \TX|Add0~60_combout\,
	cout => \TX|Add0~61\);

-- Location: LCCOMB_X41_Y70_N2
\TX|bauld_gen_cnt[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[30]~2_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~60_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(30),
	datad => \TX|Add0~60_combout\,
	combout => \TX|bauld_gen_cnt[30]~2_combout\);

-- Location: FF_X41_Y70_N3
\TX|bauld_gen_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[30]~2_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(30));

-- Location: LCCOMB_X42_Y70_N30
\TX|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Add0~62_combout\ = \TX|bauld_gen_cnt\(31) $ (\TX|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(31),
	cin => \TX|Add0~61\,
	combout => \TX|Add0~62_combout\);

-- Location: LCCOMB_X41_Y70_N4
\TX|bauld_gen_cnt[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[31]~1_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~62_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt[31]~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(31),
	datad => \TX|Add0~62_combout\,
	combout => \TX|bauld_gen_cnt[31]~1_combout\);

-- Location: FF_X41_Y70_N5
\TX|bauld_gen_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[31]~1_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(31));

-- Location: LCCOMB_X41_Y70_N20
\TX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~0_combout\ = (!\TX|bauld_gen_cnt\(28) & (!\TX|bauld_gen_cnt\(30) & (!\TX|bauld_gen_cnt\(31) & !\TX|bauld_gen_cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(28),
	datab => \TX|bauld_gen_cnt\(30),
	datac => \TX|bauld_gen_cnt\(31),
	datad => \TX|bauld_gen_cnt\(29),
	combout => \TX|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y70_N8
\TX|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~3_combout\ = (!\TX|bauld_gen_cnt\(18) & (!\TX|bauld_gen_cnt\(17) & (!\TX|bauld_gen_cnt\(16) & !\TX|bauld_gen_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(18),
	datab => \TX|bauld_gen_cnt\(17),
	datac => \TX|bauld_gen_cnt\(16),
	datad => \TX|bauld_gen_cnt\(19),
	combout => \TX|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y70_N18
\TX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~1_combout\ = (!\TX|bauld_gen_cnt\(27) & (!\TX|bauld_gen_cnt\(26) & (!\TX|bauld_gen_cnt\(25) & !\TX|bauld_gen_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(27),
	datab => \TX|bauld_gen_cnt\(26),
	datac => \TX|bauld_gen_cnt\(25),
	datad => \TX|bauld_gen_cnt\(24),
	combout => \TX|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y70_N30
\TX|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~4_combout\ = (\TX|Equal0~2_combout\ & (\TX|Equal0~0_combout\ & (\TX|Equal0~3_combout\ & \TX|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~2_combout\,
	datab => \TX|Equal0~0_combout\,
	datac => \TX|Equal0~3_combout\,
	datad => \TX|Equal0~1_combout\,
	combout => \TX|Equal0~4_combout\);

-- Location: LCCOMB_X41_Y69_N28
\TX|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~6_combout\ = (\TX|bauld_gen_cnt\(10) & (!\TX|bauld_gen_cnt\(9) & (!\TX|bauld_gen_cnt\(8) & !\TX|bauld_gen_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(10),
	datab => \TX|bauld_gen_cnt\(9),
	datac => \TX|bauld_gen_cnt\(8),
	datad => \TX|bauld_gen_cnt\(11),
	combout => \TX|Equal0~6_combout\);

-- Location: LCCOMB_X41_Y69_N26
\TX|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~10_combout\ = (\TX|Equal0~5_combout\ & (\TX|Equal0~9_combout\ & (\TX|Equal0~4_combout\ & \TX|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~5_combout\,
	datab => \TX|Equal0~9_combout\,
	datac => \TX|Equal0~4_combout\,
	datad => \TX|Equal0~6_combout\,
	combout => \TX|Equal0~10_combout\);

-- Location: LCCOMB_X41_Y69_N6
\TX|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Selector6~0_combout\ = (\TX|current_state.state_done~q\) # ((\TX|current_state.state_wait_idle~q\ & ((\TX|bauld_gen_cnt\(0)) # (!\TX|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|current_state.state_done~q\,
	datab => \TX|bauld_gen_cnt\(0),
	datac => \TX|current_state.state_wait_idle~q\,
	datad => \TX|Equal0~10_combout\,
	combout => \TX|Selector6~0_combout\);

-- Location: FF_X41_Y69_N7
\TX|current_state.state_wait_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|Selector6~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_wait_idle~q\);

-- Location: LCCOMB_X41_Y71_N8
\TX|next_state.state_ready_idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|next_state.state_ready_idle~0_combout\ = (\TX|current_state.state_wait_idle~q\ & (!\TX|bauld_gen_cnt\(0) & \TX|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX|current_state.state_wait_idle~q\,
	datac => \TX|bauld_gen_cnt\(0),
	datad => \TX|Equal0~10_combout\,
	combout => \TX|next_state.state_ready_idle~0_combout\);

-- Location: FF_X41_Y71_N9
\TX|current_state.state_ready_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|next_state.state_ready_idle~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_ready_idle~q\);

-- Location: IOIBUF_X52_Y0_N22
\SEND~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEND,
	o => \SEND~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\RECIEVER_IDLE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RECIEVER_IDLE,
	o => \RECIEVER_IDLE~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\RECIEVER_VALID~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RECIEVER_VALID,
	o => \RECIEVER_VALID~input_o\);

-- Location: LCCOMB_X52_Y19_N4
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\RECIEVER_IDLE~input_o\ & !\RECIEVER_VALID~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RECIEVER_IDLE~input_o\,
	datad => \RECIEVER_VALID~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X52_Y19_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\RECIEVER_IDLE~input_o\ & \current_state.state_waiting_handshake~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RECIEVER_IDLE~input_o\,
	datac => \current_state.state_waiting_handshake~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X52_Y19_N22
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.state_send~q\) # ((\current_state.state_sending~q\ & \TX|current_state.state_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_send~q\,
	datac => \current_state.state_sending~q\,
	datad => \TX|current_state.state_idle~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X52_Y19_N23
\current_state.state_sending\ : dffeas
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
	q => \current_state.state_sending~q\);

-- Location: LCCOMB_X52_Y19_N28
\max_waiting_time_cnt[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[0]~93_combout\ = !max_waiting_time_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => max_waiting_time_cnt(0),
	combout => \max_waiting_time_cnt[0]~93_combout\);

-- Location: FF_X52_Y19_N29
\max_waiting_time_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[0]~93_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(0));

-- Location: LCCOMB_X53_Y19_N2
\max_waiting_time_cnt[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[1]~31_combout\ = (max_waiting_time_cnt(0) & (max_waiting_time_cnt(1) $ (VCC))) # (!max_waiting_time_cnt(0) & (max_waiting_time_cnt(1) & VCC))
-- \max_waiting_time_cnt[1]~32\ = CARRY((max_waiting_time_cnt(0) & max_waiting_time_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(0),
	datab => max_waiting_time_cnt(1),
	datad => VCC,
	combout => \max_waiting_time_cnt[1]~31_combout\,
	cout => \max_waiting_time_cnt[1]~32\);

-- Location: FF_X53_Y19_N3
\max_waiting_time_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[1]~31_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(1));

-- Location: LCCOMB_X53_Y19_N4
\max_waiting_time_cnt[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[2]~33_combout\ = (max_waiting_time_cnt(2) & (!\max_waiting_time_cnt[1]~32\)) # (!max_waiting_time_cnt(2) & ((\max_waiting_time_cnt[1]~32\) # (GND)))
-- \max_waiting_time_cnt[2]~34\ = CARRY((!\max_waiting_time_cnt[1]~32\) # (!max_waiting_time_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(2),
	datad => VCC,
	cin => \max_waiting_time_cnt[1]~32\,
	combout => \max_waiting_time_cnt[2]~33_combout\,
	cout => \max_waiting_time_cnt[2]~34\);

-- Location: FF_X53_Y19_N5
\max_waiting_time_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[2]~33_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(2));

-- Location: LCCOMB_X53_Y19_N6
\max_waiting_time_cnt[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[3]~35_combout\ = (max_waiting_time_cnt(3) & (\max_waiting_time_cnt[2]~34\ $ (GND))) # (!max_waiting_time_cnt(3) & (!\max_waiting_time_cnt[2]~34\ & VCC))
-- \max_waiting_time_cnt[3]~36\ = CARRY((max_waiting_time_cnt(3) & !\max_waiting_time_cnt[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(3),
	datad => VCC,
	cin => \max_waiting_time_cnt[2]~34\,
	combout => \max_waiting_time_cnt[3]~35_combout\,
	cout => \max_waiting_time_cnt[3]~36\);

-- Location: FF_X53_Y19_N7
\max_waiting_time_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[3]~35_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(3));

-- Location: LCCOMB_X53_Y19_N8
\max_waiting_time_cnt[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[4]~37_combout\ = (max_waiting_time_cnt(4) & (!\max_waiting_time_cnt[3]~36\)) # (!max_waiting_time_cnt(4) & ((\max_waiting_time_cnt[3]~36\) # (GND)))
-- \max_waiting_time_cnt[4]~38\ = CARRY((!\max_waiting_time_cnt[3]~36\) # (!max_waiting_time_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(4),
	datad => VCC,
	cin => \max_waiting_time_cnt[3]~36\,
	combout => \max_waiting_time_cnt[4]~37_combout\,
	cout => \max_waiting_time_cnt[4]~38\);

-- Location: FF_X53_Y19_N9
\max_waiting_time_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[4]~37_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(4));

-- Location: LCCOMB_X53_Y19_N10
\max_waiting_time_cnt[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[5]~39_combout\ = (max_waiting_time_cnt(5) & (\max_waiting_time_cnt[4]~38\ $ (GND))) # (!max_waiting_time_cnt(5) & (!\max_waiting_time_cnt[4]~38\ & VCC))
-- \max_waiting_time_cnt[5]~40\ = CARRY((max_waiting_time_cnt(5) & !\max_waiting_time_cnt[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(5),
	datad => VCC,
	cin => \max_waiting_time_cnt[4]~38\,
	combout => \max_waiting_time_cnt[5]~39_combout\,
	cout => \max_waiting_time_cnt[5]~40\);

-- Location: FF_X53_Y19_N11
\max_waiting_time_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[5]~39_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(5));

-- Location: LCCOMB_X53_Y19_N12
\max_waiting_time_cnt[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[6]~41_combout\ = (max_waiting_time_cnt(6) & (!\max_waiting_time_cnt[5]~40\)) # (!max_waiting_time_cnt(6) & ((\max_waiting_time_cnt[5]~40\) # (GND)))
-- \max_waiting_time_cnt[6]~42\ = CARRY((!\max_waiting_time_cnt[5]~40\) # (!max_waiting_time_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(6),
	datad => VCC,
	cin => \max_waiting_time_cnt[5]~40\,
	combout => \max_waiting_time_cnt[6]~41_combout\,
	cout => \max_waiting_time_cnt[6]~42\);

-- Location: FF_X53_Y19_N13
\max_waiting_time_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[6]~41_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(6));

-- Location: LCCOMB_X53_Y19_N14
\max_waiting_time_cnt[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[7]~43_combout\ = (max_waiting_time_cnt(7) & (\max_waiting_time_cnt[6]~42\ $ (GND))) # (!max_waiting_time_cnt(7) & (!\max_waiting_time_cnt[6]~42\ & VCC))
-- \max_waiting_time_cnt[7]~44\ = CARRY((max_waiting_time_cnt(7) & !\max_waiting_time_cnt[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(7),
	datad => VCC,
	cin => \max_waiting_time_cnt[6]~42\,
	combout => \max_waiting_time_cnt[7]~43_combout\,
	cout => \max_waiting_time_cnt[7]~44\);

-- Location: FF_X53_Y19_N15
\max_waiting_time_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[7]~43_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(7));

-- Location: LCCOMB_X53_Y19_N16
\max_waiting_time_cnt[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[8]~45_combout\ = (max_waiting_time_cnt(8) & (!\max_waiting_time_cnt[7]~44\)) # (!max_waiting_time_cnt(8) & ((\max_waiting_time_cnt[7]~44\) # (GND)))
-- \max_waiting_time_cnt[8]~46\ = CARRY((!\max_waiting_time_cnt[7]~44\) # (!max_waiting_time_cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(8),
	datad => VCC,
	cin => \max_waiting_time_cnt[7]~44\,
	combout => \max_waiting_time_cnt[8]~45_combout\,
	cout => \max_waiting_time_cnt[8]~46\);

-- Location: FF_X53_Y19_N17
\max_waiting_time_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[8]~45_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(8));

-- Location: LCCOMB_X53_Y19_N18
\max_waiting_time_cnt[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[9]~47_combout\ = (max_waiting_time_cnt(9) & (\max_waiting_time_cnt[8]~46\ $ (GND))) # (!max_waiting_time_cnt(9) & (!\max_waiting_time_cnt[8]~46\ & VCC))
-- \max_waiting_time_cnt[9]~48\ = CARRY((max_waiting_time_cnt(9) & !\max_waiting_time_cnt[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(9),
	datad => VCC,
	cin => \max_waiting_time_cnt[8]~46\,
	combout => \max_waiting_time_cnt[9]~47_combout\,
	cout => \max_waiting_time_cnt[9]~48\);

-- Location: FF_X53_Y19_N19
\max_waiting_time_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[9]~47_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(9));

-- Location: LCCOMB_X53_Y19_N20
\max_waiting_time_cnt[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[10]~49_combout\ = (max_waiting_time_cnt(10) & (!\max_waiting_time_cnt[9]~48\)) # (!max_waiting_time_cnt(10) & ((\max_waiting_time_cnt[9]~48\) # (GND)))
-- \max_waiting_time_cnt[10]~50\ = CARRY((!\max_waiting_time_cnt[9]~48\) # (!max_waiting_time_cnt(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(10),
	datad => VCC,
	cin => \max_waiting_time_cnt[9]~48\,
	combout => \max_waiting_time_cnt[10]~49_combout\,
	cout => \max_waiting_time_cnt[10]~50\);

-- Location: FF_X53_Y19_N21
\max_waiting_time_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[10]~49_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(10));

-- Location: LCCOMB_X53_Y19_N22
\max_waiting_time_cnt[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[11]~51_combout\ = (max_waiting_time_cnt(11) & (\max_waiting_time_cnt[10]~50\ $ (GND))) # (!max_waiting_time_cnt(11) & (!\max_waiting_time_cnt[10]~50\ & VCC))
-- \max_waiting_time_cnt[11]~52\ = CARRY((max_waiting_time_cnt(11) & !\max_waiting_time_cnt[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(11),
	datad => VCC,
	cin => \max_waiting_time_cnt[10]~50\,
	combout => \max_waiting_time_cnt[11]~51_combout\,
	cout => \max_waiting_time_cnt[11]~52\);

-- Location: FF_X53_Y19_N23
\max_waiting_time_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[11]~51_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(11));

-- Location: LCCOMB_X53_Y19_N24
\max_waiting_time_cnt[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[12]~53_combout\ = (max_waiting_time_cnt(12) & (!\max_waiting_time_cnt[11]~52\)) # (!max_waiting_time_cnt(12) & ((\max_waiting_time_cnt[11]~52\) # (GND)))
-- \max_waiting_time_cnt[12]~54\ = CARRY((!\max_waiting_time_cnt[11]~52\) # (!max_waiting_time_cnt(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(12),
	datad => VCC,
	cin => \max_waiting_time_cnt[11]~52\,
	combout => \max_waiting_time_cnt[12]~53_combout\,
	cout => \max_waiting_time_cnt[12]~54\);

-- Location: FF_X53_Y19_N25
\max_waiting_time_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[12]~53_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(12));

-- Location: LCCOMB_X53_Y19_N26
\max_waiting_time_cnt[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[13]~55_combout\ = (max_waiting_time_cnt(13) & (\max_waiting_time_cnt[12]~54\ $ (GND))) # (!max_waiting_time_cnt(13) & (!\max_waiting_time_cnt[12]~54\ & VCC))
-- \max_waiting_time_cnt[13]~56\ = CARRY((max_waiting_time_cnt(13) & !\max_waiting_time_cnt[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(13),
	datad => VCC,
	cin => \max_waiting_time_cnt[12]~54\,
	combout => \max_waiting_time_cnt[13]~55_combout\,
	cout => \max_waiting_time_cnt[13]~56\);

-- Location: FF_X53_Y19_N27
\max_waiting_time_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[13]~55_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(13));

-- Location: LCCOMB_X53_Y19_N28
\max_waiting_time_cnt[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[14]~57_combout\ = (max_waiting_time_cnt(14) & (!\max_waiting_time_cnt[13]~56\)) # (!max_waiting_time_cnt(14) & ((\max_waiting_time_cnt[13]~56\) # (GND)))
-- \max_waiting_time_cnt[14]~58\ = CARRY((!\max_waiting_time_cnt[13]~56\) # (!max_waiting_time_cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(14),
	datad => VCC,
	cin => \max_waiting_time_cnt[13]~56\,
	combout => \max_waiting_time_cnt[14]~57_combout\,
	cout => \max_waiting_time_cnt[14]~58\);

-- Location: FF_X53_Y19_N29
\max_waiting_time_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[14]~57_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(14));

-- Location: LCCOMB_X53_Y19_N30
\max_waiting_time_cnt[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[15]~59_combout\ = (max_waiting_time_cnt(15) & (\max_waiting_time_cnt[14]~58\ $ (GND))) # (!max_waiting_time_cnt(15) & (!\max_waiting_time_cnt[14]~58\ & VCC))
-- \max_waiting_time_cnt[15]~60\ = CARRY((max_waiting_time_cnt(15) & !\max_waiting_time_cnt[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(15),
	datad => VCC,
	cin => \max_waiting_time_cnt[14]~58\,
	combout => \max_waiting_time_cnt[15]~59_combout\,
	cout => \max_waiting_time_cnt[15]~60\);

-- Location: FF_X53_Y19_N31
\max_waiting_time_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[15]~59_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(15));

-- Location: LCCOMB_X52_Y19_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (((!max_waiting_time_cnt(12)) # (!max_waiting_time_cnt(15))) # (!max_waiting_time_cnt(14))) # (!max_waiting_time_cnt(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(13),
	datab => max_waiting_time_cnt(14),
	datac => max_waiting_time_cnt(15),
	datad => max_waiting_time_cnt(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X52_Y19_N16
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (((!max_waiting_time_cnt(6)) # (!max_waiting_time_cnt(4))) # (!max_waiting_time_cnt(5))) # (!max_waiting_time_cnt(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(7),
	datab => max_waiting_time_cnt(5),
	datac => max_waiting_time_cnt(4),
	datad => max_waiting_time_cnt(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X52_Y19_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (((!max_waiting_time_cnt(11)) # (!max_waiting_time_cnt(10))) # (!max_waiting_time_cnt(8))) # (!max_waiting_time_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(9),
	datab => max_waiting_time_cnt(8),
	datac => max_waiting_time_cnt(10),
	datad => max_waiting_time_cnt(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X52_Y19_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!max_waiting_time_cnt(3)) # (!max_waiting_time_cnt(2))) # (!max_waiting_time_cnt(0))) # (!max_waiting_time_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(1),
	datab => max_waiting_time_cnt(0),
	datac => max_waiting_time_cnt(2),
	datad => max_waiting_time_cnt(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X52_Y19_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\) # ((\Equal0~1_combout\) # ((\Equal0~2_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X53_Y18_N0
\max_waiting_time_cnt[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[16]~61_combout\ = (max_waiting_time_cnt(16) & (!\max_waiting_time_cnt[15]~60\)) # (!max_waiting_time_cnt(16) & ((\max_waiting_time_cnt[15]~60\) # (GND)))
-- \max_waiting_time_cnt[16]~62\ = CARRY((!\max_waiting_time_cnt[15]~60\) # (!max_waiting_time_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(16),
	datad => VCC,
	cin => \max_waiting_time_cnt[15]~60\,
	combout => \max_waiting_time_cnt[16]~61_combout\,
	cout => \max_waiting_time_cnt[16]~62\);

-- Location: FF_X53_Y18_N1
\max_waiting_time_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[16]~61_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(16));

-- Location: LCCOMB_X53_Y18_N2
\max_waiting_time_cnt[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[17]~63_combout\ = (max_waiting_time_cnt(17) & (\max_waiting_time_cnt[16]~62\ $ (GND))) # (!max_waiting_time_cnt(17) & (!\max_waiting_time_cnt[16]~62\ & VCC))
-- \max_waiting_time_cnt[17]~64\ = CARRY((max_waiting_time_cnt(17) & !\max_waiting_time_cnt[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(17),
	datad => VCC,
	cin => \max_waiting_time_cnt[16]~62\,
	combout => \max_waiting_time_cnt[17]~63_combout\,
	cout => \max_waiting_time_cnt[17]~64\);

-- Location: FF_X53_Y18_N3
\max_waiting_time_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[17]~63_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(17));

-- Location: LCCOMB_X53_Y18_N4
\max_waiting_time_cnt[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[18]~65_combout\ = (max_waiting_time_cnt(18) & (!\max_waiting_time_cnt[17]~64\)) # (!max_waiting_time_cnt(18) & ((\max_waiting_time_cnt[17]~64\) # (GND)))
-- \max_waiting_time_cnt[18]~66\ = CARRY((!\max_waiting_time_cnt[17]~64\) # (!max_waiting_time_cnt(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(18),
	datad => VCC,
	cin => \max_waiting_time_cnt[17]~64\,
	combout => \max_waiting_time_cnt[18]~65_combout\,
	cout => \max_waiting_time_cnt[18]~66\);

-- Location: FF_X53_Y18_N5
\max_waiting_time_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[18]~65_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(18));

-- Location: LCCOMB_X53_Y18_N6
\max_waiting_time_cnt[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[19]~67_combout\ = (max_waiting_time_cnt(19) & (\max_waiting_time_cnt[18]~66\ $ (GND))) # (!max_waiting_time_cnt(19) & (!\max_waiting_time_cnt[18]~66\ & VCC))
-- \max_waiting_time_cnt[19]~68\ = CARRY((max_waiting_time_cnt(19) & !\max_waiting_time_cnt[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(19),
	datad => VCC,
	cin => \max_waiting_time_cnt[18]~66\,
	combout => \max_waiting_time_cnt[19]~67_combout\,
	cout => \max_waiting_time_cnt[19]~68\);

-- Location: FF_X53_Y18_N7
\max_waiting_time_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[19]~67_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(19));

-- Location: LCCOMB_X53_Y18_N8
\max_waiting_time_cnt[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[20]~69_combout\ = (max_waiting_time_cnt(20) & (!\max_waiting_time_cnt[19]~68\)) # (!max_waiting_time_cnt(20) & ((\max_waiting_time_cnt[19]~68\) # (GND)))
-- \max_waiting_time_cnt[20]~70\ = CARRY((!\max_waiting_time_cnt[19]~68\) # (!max_waiting_time_cnt(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(20),
	datad => VCC,
	cin => \max_waiting_time_cnt[19]~68\,
	combout => \max_waiting_time_cnt[20]~69_combout\,
	cout => \max_waiting_time_cnt[20]~70\);

-- Location: FF_X53_Y18_N9
\max_waiting_time_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[20]~69_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(20));

-- Location: LCCOMB_X53_Y18_N10
\max_waiting_time_cnt[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[21]~71_combout\ = (max_waiting_time_cnt(21) & (\max_waiting_time_cnt[20]~70\ $ (GND))) # (!max_waiting_time_cnt(21) & (!\max_waiting_time_cnt[20]~70\ & VCC))
-- \max_waiting_time_cnt[21]~72\ = CARRY((max_waiting_time_cnt(21) & !\max_waiting_time_cnt[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(21),
	datad => VCC,
	cin => \max_waiting_time_cnt[20]~70\,
	combout => \max_waiting_time_cnt[21]~71_combout\,
	cout => \max_waiting_time_cnt[21]~72\);

-- Location: FF_X53_Y18_N11
\max_waiting_time_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[21]~71_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(21));

-- Location: LCCOMB_X53_Y18_N12
\max_waiting_time_cnt[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[22]~73_combout\ = (max_waiting_time_cnt(22) & (!\max_waiting_time_cnt[21]~72\)) # (!max_waiting_time_cnt(22) & ((\max_waiting_time_cnt[21]~72\) # (GND)))
-- \max_waiting_time_cnt[22]~74\ = CARRY((!\max_waiting_time_cnt[21]~72\) # (!max_waiting_time_cnt(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(22),
	datad => VCC,
	cin => \max_waiting_time_cnt[21]~72\,
	combout => \max_waiting_time_cnt[22]~73_combout\,
	cout => \max_waiting_time_cnt[22]~74\);

-- Location: FF_X53_Y18_N13
\max_waiting_time_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[22]~73_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(22));

-- Location: LCCOMB_X53_Y18_N14
\max_waiting_time_cnt[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[23]~75_combout\ = (max_waiting_time_cnt(23) & (\max_waiting_time_cnt[22]~74\ $ (GND))) # (!max_waiting_time_cnt(23) & (!\max_waiting_time_cnt[22]~74\ & VCC))
-- \max_waiting_time_cnt[23]~76\ = CARRY((max_waiting_time_cnt(23) & !\max_waiting_time_cnt[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(23),
	datad => VCC,
	cin => \max_waiting_time_cnt[22]~74\,
	combout => \max_waiting_time_cnt[23]~75_combout\,
	cout => \max_waiting_time_cnt[23]~76\);

-- Location: FF_X53_Y18_N15
\max_waiting_time_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[23]~75_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(23));

-- Location: LCCOMB_X54_Y18_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (((!max_waiting_time_cnt(21)) # (!max_waiting_time_cnt(23))) # (!max_waiting_time_cnt(20))) # (!max_waiting_time_cnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(22),
	datab => max_waiting_time_cnt(20),
	datac => max_waiting_time_cnt(23),
	datad => max_waiting_time_cnt(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X54_Y18_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (((!max_waiting_time_cnt(17)) # (!max_waiting_time_cnt(18))) # (!max_waiting_time_cnt(19))) # (!max_waiting_time_cnt(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(16),
	datab => max_waiting_time_cnt(19),
	datac => max_waiting_time_cnt(18),
	datad => max_waiting_time_cnt(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X54_Y18_N0
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\) # (\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X53_Y18_N16
\max_waiting_time_cnt[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[24]~77_combout\ = (max_waiting_time_cnt(24) & (!\max_waiting_time_cnt[23]~76\)) # (!max_waiting_time_cnt(24) & ((\max_waiting_time_cnt[23]~76\) # (GND)))
-- \max_waiting_time_cnt[24]~78\ = CARRY((!\max_waiting_time_cnt[23]~76\) # (!max_waiting_time_cnt(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(24),
	datad => VCC,
	cin => \max_waiting_time_cnt[23]~76\,
	combout => \max_waiting_time_cnt[24]~77_combout\,
	cout => \max_waiting_time_cnt[24]~78\);

-- Location: FF_X53_Y18_N17
\max_waiting_time_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[24]~77_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(24));

-- Location: LCCOMB_X53_Y18_N18
\max_waiting_time_cnt[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[25]~79_combout\ = (max_waiting_time_cnt(25) & (\max_waiting_time_cnt[24]~78\ $ (GND))) # (!max_waiting_time_cnt(25) & (!\max_waiting_time_cnt[24]~78\ & VCC))
-- \max_waiting_time_cnt[25]~80\ = CARRY((max_waiting_time_cnt(25) & !\max_waiting_time_cnt[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(25),
	datad => VCC,
	cin => \max_waiting_time_cnt[24]~78\,
	combout => \max_waiting_time_cnt[25]~79_combout\,
	cout => \max_waiting_time_cnt[25]~80\);

-- Location: FF_X53_Y18_N19
\max_waiting_time_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[25]~79_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(25));

-- Location: LCCOMB_X53_Y18_N20
\max_waiting_time_cnt[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[26]~81_combout\ = (max_waiting_time_cnt(26) & (!\max_waiting_time_cnt[25]~80\)) # (!max_waiting_time_cnt(26) & ((\max_waiting_time_cnt[25]~80\) # (GND)))
-- \max_waiting_time_cnt[26]~82\ = CARRY((!\max_waiting_time_cnt[25]~80\) # (!max_waiting_time_cnt(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(26),
	datad => VCC,
	cin => \max_waiting_time_cnt[25]~80\,
	combout => \max_waiting_time_cnt[26]~81_combout\,
	cout => \max_waiting_time_cnt[26]~82\);

-- Location: FF_X53_Y18_N21
\max_waiting_time_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[26]~81_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(26));

-- Location: LCCOMB_X53_Y18_N22
\max_waiting_time_cnt[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[27]~83_combout\ = (max_waiting_time_cnt(27) & (\max_waiting_time_cnt[26]~82\ $ (GND))) # (!max_waiting_time_cnt(27) & (!\max_waiting_time_cnt[26]~82\ & VCC))
-- \max_waiting_time_cnt[27]~84\ = CARRY((max_waiting_time_cnt(27) & !\max_waiting_time_cnt[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(27),
	datad => VCC,
	cin => \max_waiting_time_cnt[26]~82\,
	combout => \max_waiting_time_cnt[27]~83_combout\,
	cout => \max_waiting_time_cnt[27]~84\);

-- Location: FF_X53_Y18_N23
\max_waiting_time_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[27]~83_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(27));

-- Location: LCCOMB_X53_Y18_N24
\max_waiting_time_cnt[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[28]~85_combout\ = (max_waiting_time_cnt(28) & (!\max_waiting_time_cnt[27]~84\)) # (!max_waiting_time_cnt(28) & ((\max_waiting_time_cnt[27]~84\) # (GND)))
-- \max_waiting_time_cnt[28]~86\ = CARRY((!\max_waiting_time_cnt[27]~84\) # (!max_waiting_time_cnt(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(28),
	datad => VCC,
	cin => \max_waiting_time_cnt[27]~84\,
	combout => \max_waiting_time_cnt[28]~85_combout\,
	cout => \max_waiting_time_cnt[28]~86\);

-- Location: FF_X53_Y18_N25
\max_waiting_time_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[28]~85_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(28));

-- Location: LCCOMB_X53_Y18_N26
\max_waiting_time_cnt[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[29]~87_combout\ = (max_waiting_time_cnt(29) & (\max_waiting_time_cnt[28]~86\ $ (GND))) # (!max_waiting_time_cnt(29) & (!\max_waiting_time_cnt[28]~86\ & VCC))
-- \max_waiting_time_cnt[29]~88\ = CARRY((max_waiting_time_cnt(29) & !\max_waiting_time_cnt[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(29),
	datad => VCC,
	cin => \max_waiting_time_cnt[28]~86\,
	combout => \max_waiting_time_cnt[29]~87_combout\,
	cout => \max_waiting_time_cnt[29]~88\);

-- Location: FF_X53_Y18_N27
\max_waiting_time_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[29]~87_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(29));

-- Location: LCCOMB_X53_Y18_N28
\max_waiting_time_cnt[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[30]~89_combout\ = (max_waiting_time_cnt(30) & (!\max_waiting_time_cnt[29]~88\)) # (!max_waiting_time_cnt(30) & ((\max_waiting_time_cnt[29]~88\) # (GND)))
-- \max_waiting_time_cnt[30]~90\ = CARRY((!\max_waiting_time_cnt[29]~88\) # (!max_waiting_time_cnt(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_waiting_time_cnt(30),
	datad => VCC,
	cin => \max_waiting_time_cnt[29]~88\,
	combout => \max_waiting_time_cnt[30]~89_combout\,
	cout => \max_waiting_time_cnt[30]~90\);

-- Location: FF_X53_Y18_N29
\max_waiting_time_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[30]~89_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(30));

-- Location: LCCOMB_X53_Y18_N30
\max_waiting_time_cnt[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \max_waiting_time_cnt[31]~91_combout\ = max_waiting_time_cnt(31) $ (!\max_waiting_time_cnt[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(31),
	cin => \max_waiting_time_cnt[30]~90\,
	combout => \max_waiting_time_cnt[31]~91_combout\);

-- Location: FF_X53_Y18_N31
\max_waiting_time_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \max_waiting_time_cnt[31]~91_combout\,
	clrn => \current_state.state_waiting_handshake~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_waiting_time_cnt(31));

-- Location: LCCOMB_X52_Y18_N2
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (((!max_waiting_time_cnt(28)) # (!max_waiting_time_cnt(31))) # (!max_waiting_time_cnt(30))) # (!max_waiting_time_cnt(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(29),
	datab => max_waiting_time_cnt(30),
	datac => max_waiting_time_cnt(31),
	datad => max_waiting_time_cnt(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X52_Y18_N0
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (((!max_waiting_time_cnt(25)) # (!max_waiting_time_cnt(26))) # (!max_waiting_time_cnt(24))) # (!max_waiting_time_cnt(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_waiting_time_cnt(27),
	datab => max_waiting_time_cnt(24),
	datac => max_waiting_time_cnt(26),
	datad => max_waiting_time_cnt(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X52_Y19_N20
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\) # ((\Equal0~7_combout\) # ((\Equal0~9_combout\) # (\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X53_Y19_N0
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\ & ((\Equal0~10_combout\) # ((\current_state.state_sending~q\ & !\TX|current_state.state_idle~q\)))) # (!\Selector3~0_combout\ & (\current_state.state_sending~q\ & (!\TX|current_state.state_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \current_state.state_sending~q\,
	datac => \TX|current_state.state_idle~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X53_Y19_N1
\current_state.state_waiting_handshake\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_waiting_handshake~q\);

-- Location: LCCOMB_X52_Y19_N8
\next_state.state_time_tolerance~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_time_tolerance~0_combout\ = (\RECIEVER_IDLE~input_o\ & \current_state.state_waiting_handshake~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RECIEVER_IDLE~input_o\,
	datac => \current_state.state_waiting_handshake~q\,
	combout => \next_state.state_time_tolerance~0_combout\);

-- Location: FF_X52_Y19_N9
\current_state.state_time_tolerance\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_time_tolerance~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_time_tolerance~q\);

-- Location: FF_X52_Y19_N7
\current_state.state_error_detection\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \current_state.state_time_tolerance~q\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_error_detection~q\);

-- Location: LCCOMB_X52_Y19_N6
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\SEND~input_o\ & (!\Selector1~0_combout\ & (\current_state.state_error_detection~q\))) # (!\SEND~input_o\ & (((!\Selector1~0_combout\ & \current_state.state_error_detection~q\)) # (!\current_state.state_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEND~input_o\,
	datab => \Selector1~0_combout\,
	datac => \current_state.state_error_detection~q\,
	datad => \current_state.state_idle~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X52_Y19_N24
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\Selector0~2_combout\ & (((\RECIEVER_IDLE~input_o\) # (\Equal0~10_combout\)) # (!\current_state.state_waiting_handshake~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \current_state.state_waiting_handshake~q\,
	datac => \RECIEVER_IDLE~input_o\,
	datad => \Equal0~10_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X52_Y19_N25
\current_state.state_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_idle~q\);

-- Location: LCCOMB_X52_Y19_N26
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\SEND~input_o\ & (((\Selector1~0_combout\ & \current_state.state_error_detection~q\)) # (!\current_state.state_idle~q\))) # (!\SEND~input_o\ & (\Selector1~0_combout\ & (\current_state.state_error_detection~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEND~input_o\,
	datab => \Selector1~0_combout\,
	datac => \current_state.state_error_detection~q\,
	datad => \current_state.state_idle~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X52_Y19_N27
\current_state.state_send\ : dffeas
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
	q => \current_state.state_send~q\);

-- Location: LCCOMB_X41_Y71_N10
\TX|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Selector0~0_combout\ = (!\TX|current_state.state_ready_idle~q\ & ((\TX|current_state.state_idle~q\) # (\current_state.state_send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX|current_state.state_ready_idle~q\,
	datac => \TX|current_state.state_idle~q\,
	datad => \current_state.state_send~q\,
	combout => \TX|Selector0~0_combout\);

-- Location: FF_X41_Y71_N11
\TX|current_state.state_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|Selector0~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_idle~q\);

-- Location: LCCOMB_X41_Y69_N10
\TX|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~7_combout\ = (\TX|Equal0~5_combout\ & \TX|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX|Equal0~5_combout\,
	datad => \TX|Equal0~6_combout\,
	combout => \TX|Equal0~7_combout\);

-- Location: LCCOMB_X41_Y69_N20
\TX|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal1~0_combout\ = (\TX|Equal0~7_combout\ & (!\TX|bauld_gen_cnt\(0) & (\TX|Equal0~4_combout\ & \TX|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~7_combout\,
	datab => \TX|bauld_gen_cnt\(0),
	datac => \TX|Equal0~4_combout\,
	datad => \TX|Equal0~9_combout\,
	combout => \TX|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y69_N14
\TX|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Selector1~0_combout\ = (\TX|current_state.state_idle~q\ & (!\TX|Equal1~0_combout\ & (\TX|current_state.state_resume_idle~q\))) # (!\TX|current_state.state_idle~q\ & ((\current_state.state_send~q\) # ((!\TX|Equal1~0_combout\ & 
-- \TX|current_state.state_resume_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|current_state.state_idle~q\,
	datab => \TX|Equal1~0_combout\,
	datac => \TX|current_state.state_resume_idle~q\,
	datad => \current_state.state_send~q\,
	combout => \TX|Selector1~0_combout\);

-- Location: FF_X41_Y69_N15
\TX|current_state.state_resume_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|Selector1~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_resume_idle~q\);

-- Location: LCCOMB_X41_Y69_N16
\TX|next_state.state_start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|next_state.state_start~0_combout\ = (\TX|current_state.state_resume_idle~q\ & (\TX|Equal0~10_combout\ & !\TX|bauld_gen_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX|current_state.state_resume_idle~q\,
	datac => \TX|Equal0~10_combout\,
	datad => \TX|bauld_gen_cnt\(0),
	combout => \TX|next_state.state_start~0_combout\);

-- Location: FF_X41_Y69_N17
\TX|current_state.state_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|next_state.state_start~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_start~q\);

-- Location: LCCOMB_X42_Y69_N4
\TX|bauld_gen_cnt[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[31]~0_combout\ = (!\TX|current_state.state_start~q\ & (\TX|current_state.state_idle~q\ & !\TX|current_state.state_ready_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|current_state.state_start~q\,
	datab => \TX|current_state.state_idle~q\,
	datad => \TX|current_state.state_ready_idle~q\,
	combout => \TX|bauld_gen_cnt[31]~0_combout\);

-- Location: LCCOMB_X41_Y71_N6
\TX|bauld_gen_cnt[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[2]~29_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|Add0~4_combout\))) # (!\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|bauld_gen_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~11_combout\,
	datab => \TX|bauld_gen_cnt[31]~0_combout\,
	datac => \TX|bauld_gen_cnt\(2),
	datad => \TX|Add0~4_combout\,
	combout => \TX|bauld_gen_cnt[2]~29_combout\);

-- Location: FF_X41_Y71_N7
\TX|bauld_gen_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[2]~29_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(2));

-- Location: LCCOMB_X40_Y71_N16
\TX|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~8_combout\ = (!\TX|bauld_gen_cnt\(5) & (!\TX|bauld_gen_cnt\(7) & (\TX|bauld_gen_cnt\(4) & \TX|bauld_gen_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(5),
	datab => \TX|bauld_gen_cnt\(7),
	datac => \TX|bauld_gen_cnt\(4),
	datad => \TX|bauld_gen_cnt\(6),
	combout => \TX|Equal0~8_combout\);

-- Location: LCCOMB_X40_Y71_N26
\TX|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~9_combout\ = (\TX|bauld_gen_cnt\(2) & (\TX|bauld_gen_cnt\(1) & (!\TX|bauld_gen_cnt\(3) & \TX|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(2),
	datab => \TX|bauld_gen_cnt\(1),
	datac => \TX|bauld_gen_cnt\(3),
	datad => \TX|Equal0~8_combout\,
	combout => \TX|Equal0~9_combout\);

-- Location: LCCOMB_X41_Y69_N0
\TX|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal0~11_combout\ = (\TX|bauld_gen_cnt\(0) & (\TX|Equal0~9_combout\ & (\TX|Equal0~4_combout\ & \TX|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(0),
	datab => \TX|Equal0~9_combout\,
	datac => \TX|Equal0~4_combout\,
	datad => \TX|Equal0~7_combout\,
	combout => \TX|Equal0~11_combout\);

-- Location: LCCOMB_X43_Y71_N4
\TX|bauld_gen_cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|bauld_gen_cnt[0]~32_combout\ = (!\TX|Equal0~11_combout\ & ((\TX|bauld_gen_cnt[31]~0_combout\ & (\TX|Add0~0_combout\)) # (!\TX|bauld_gen_cnt[31]~0_combout\ & ((\TX|bauld_gen_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Add0~0_combout\,
	datab => \TX|Equal0~11_combout\,
	datac => \TX|bauld_gen_cnt\(0),
	datad => \TX|bauld_gen_cnt[31]~0_combout\,
	combout => \TX|bauld_gen_cnt[0]~32_combout\);

-- Location: FF_X43_Y71_N5
\TX|bauld_gen_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|bauld_gen_cnt[0]~32_combout\,
	clrn => \TX|ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|bauld_gen_cnt\(0));

-- Location: LCCOMB_X41_Y69_N22
\TX|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Selector2~0_combout\ = (\TX|current_state.state_start~q\) # ((\TX|current_state.state_wait_data_frame~q\ & ((\TX|bauld_gen_cnt\(0)) # (!\TX|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~10_combout\,
	datab => \TX|bauld_gen_cnt\(0),
	datac => \TX|current_state.state_wait_data_frame~q\,
	datad => \TX|current_state.state_start~q\,
	combout => \TX|Selector2~0_combout\);

-- Location: FF_X41_Y69_N23
\TX|current_state.state_wait_data_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|Selector2~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_wait_data_frame~q\);

-- Location: LCCOMB_X42_Y69_N8
\TX|se_r232_tx[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|se_r232_tx[0]~3_combout\ = \TX|se_r232_tx\(0) $ (\TX|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX|se_r232_tx\(0),
	datad => \TX|WideOr9~0_combout\,
	combout => \TX|se_r232_tx[0]~3_combout\);

-- Location: LCCOMB_X42_Y69_N14
\TX|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|WideOr10~combout\ = (\TX|current_state.state_ready_idle~q\) # ((\TX|current_state.state_resume_idle~q\) # (!\TX|current_state.state_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|current_state.state_ready_idle~q\,
	datab => \TX|current_state.state_resume_idle~q\,
	datad => \TX|current_state.state_idle~q\,
	combout => \TX|WideOr10~combout\);

-- Location: FF_X42_Y69_N9
\TX|se_r232_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|se_r232_tx[0]~3_combout\,
	clrn => \TX|ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|se_r232_tx\(0));

-- Location: LCCOMB_X42_Y69_N16
\TX|se_r232_tx[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|se_r232_tx[2]~0_combout\ = \TX|se_r232_tx\(2) $ (((\TX|WideOr9~0_combout\ & (\TX|se_r232_tx\(0) & \TX|se_r232_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|WideOr9~0_combout\,
	datab => \TX|se_r232_tx\(0),
	datac => \TX|se_r232_tx\(2),
	datad => \TX|se_r232_tx\(1),
	combout => \TX|se_r232_tx[2]~0_combout\);

-- Location: FF_X42_Y69_N17
\TX|se_r232_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|se_r232_tx[2]~0_combout\,
	clrn => \TX|ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|se_r232_tx\(2));

-- Location: LCCOMB_X42_Y69_N18
\TX|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Equal2~0_combout\ = (!\TX|se_r232_tx\(1) & (\TX|se_r232_tx\(3) & (\TX|se_r232_tx\(0) & !\TX|se_r232_tx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|se_r232_tx\(1),
	datab => \TX|se_r232_tx\(3),
	datac => \TX|se_r232_tx\(0),
	datad => \TX|se_r232_tx\(2),
	combout => \TX|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y69_N4
\TX|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Selector3~0_combout\ = (\TX|Equal1~0_combout\ & ((\TX|current_state.state_wait_data_frame~q\) # ((!\TX|Equal2~0_combout\ & \TX|current_state.state_wait~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|current_state.state_wait_data_frame~q\,
	datab => \TX|Equal2~0_combout\,
	datac => \TX|current_state.state_wait~q\,
	datad => \TX|Equal1~0_combout\,
	combout => \TX|Selector3~0_combout\);

-- Location: FF_X41_Y69_N5
\TX|current_state.state_data_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|Selector3~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_data_frame~q\);

-- Location: LCCOMB_X41_Y69_N8
\TX|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Selector4~0_combout\ = (\TX|current_state.state_data_frame~q\) # ((\TX|current_state.state_wait~q\ & ((\TX|bauld_gen_cnt\(0)) # (!\TX|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~10_combout\,
	datab => \TX|current_state.state_data_frame~q\,
	datac => \TX|current_state.state_wait~q\,
	datad => \TX|bauld_gen_cnt\(0),
	combout => \TX|Selector4~0_combout\);

-- Location: FF_X41_Y69_N9
\TX|current_state.state_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|Selector4~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_wait~q\);

-- Location: LCCOMB_X41_Y69_N18
\TX|next_state.state_parity_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|next_state.state_parity_bit~0_combout\ = (!\TX|bauld_gen_cnt\(0) & (\TX|current_state.state_wait~q\ & (\TX|Equal0~10_combout\ & \TX|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|bauld_gen_cnt\(0),
	datab => \TX|current_state.state_wait~q\,
	datac => \TX|Equal0~10_combout\,
	datad => \TX|Equal2~0_combout\,
	combout => \TX|next_state.state_parity_bit~0_combout\);

-- Location: FF_X41_Y69_N19
\TX|current_state.state_parity_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|next_state.state_parity_bit~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_parity_bit~q\);

-- Location: LCCOMB_X41_Y69_N24
\TX|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Selector5~0_combout\ = (\TX|current_state.state_parity_bit~q\) # ((\TX|current_state.state_wait_done~q\ & ((\TX|bauld_gen_cnt\(0)) # (!\TX|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Equal0~10_combout\,
	datab => \TX|bauld_gen_cnt\(0),
	datac => \TX|current_state.state_wait_done~q\,
	datad => \TX|current_state.state_parity_bit~q\,
	combout => \TX|Selector5~0_combout\);

-- Location: FF_X41_Y69_N25
\TX|current_state.state_wait_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|Selector5~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_wait_done~q\);

-- Location: LCCOMB_X41_Y69_N30
\TX|next_state.state_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|next_state.state_done~0_combout\ = (!\TX|bauld_gen_cnt\(0) & (\TX|Equal0~10_combout\ & \TX|current_state.state_wait_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX|bauld_gen_cnt\(0),
	datac => \TX|Equal0~10_combout\,
	datad => \TX|current_state.state_wait_done~q\,
	combout => \TX|next_state.state_done~0_combout\);

-- Location: FF_X41_Y69_N31
\TX|current_state.state_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|next_state.state_done~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|current_state.state_done~q\);

-- Location: LCCOMB_X41_Y69_N12
\TX|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|WideOr9~0_combout\ = (\TX|current_state.state_done~q\) # ((\TX|current_state.state_parity_bit~q\) # ((\TX|current_state.state_data_frame~q\) # (\TX|current_state.state_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|current_state.state_done~q\,
	datab => \TX|current_state.state_parity_bit~q\,
	datac => \TX|current_state.state_data_frame~q\,
	datad => \TX|current_state.state_start~q\,
	combout => \TX|WideOr9~0_combout\);

-- Location: LCCOMB_X42_Y69_N10
\TX|se_r232_tx[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|se_r232_tx[1]~4_combout\ = \TX|se_r232_tx\(1) $ (((\TX|WideOr9~0_combout\ & \TX|se_r232_tx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|WideOr9~0_combout\,
	datab => \TX|se_r232_tx\(0),
	datac => \TX|se_r232_tx\(1),
	combout => \TX|se_r232_tx[1]~4_combout\);

-- Location: FF_X42_Y69_N11
\TX|se_r232_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|se_r232_tx[1]~4_combout\,
	clrn => \TX|ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|se_r232_tx\(1));

-- Location: LCCOMB_X42_Y69_N24
\TX|se_r232_tx[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|se_r232_tx[3]~1_combout\ = (\TX|se_r232_tx\(1) & (\TX|WideOr9~0_combout\ & (\TX|se_r232_tx\(0) & \TX|se_r232_tx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|se_r232_tx\(1),
	datab => \TX|WideOr9~0_combout\,
	datac => \TX|se_r232_tx\(0),
	datad => \TX|se_r232_tx\(2),
	combout => \TX|se_r232_tx[3]~1_combout\);

-- Location: LCCOMB_X42_Y69_N6
\TX|se_r232_tx[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|se_r232_tx[3]~2_combout\ = \TX|se_r232_tx\(3) $ (\TX|se_r232_tx[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX|se_r232_tx\(3),
	datad => \TX|se_r232_tx[3]~1_combout\,
	combout => \TX|se_r232_tx[3]~2_combout\);

-- Location: FF_X42_Y69_N7
\TX|se_r232_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|se_r232_tx[3]~2_combout\,
	clrn => \TX|ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|se_r232_tx\(3));

-- Location: IOIBUF_X38_Y73_N22
\DATA_TXD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(0),
	o => \DATA_TXD[0]~input_o\);

-- Location: LCCOMB_X43_Y69_N0
\data_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[0]~feeder_combout\ = \DATA_TXD[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_TXD[0]~input_o\,
	combout => \data_reg[0]~feeder_combout\);

-- Location: FF_X43_Y69_N1
\data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[0]~feeder_combout\,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(0));

-- Location: FF_X42_Y69_N5
\TX|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(0),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(0));

-- Location: IOIBUF_X42_Y73_N8
\DATA_TXD[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(6),
	o => \DATA_TXD[6]~input_o\);

-- Location: LCCOMB_X43_Y69_N30
\data_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[6]~feeder_combout\ = \DATA_TXD[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_TXD[6]~input_o\,
	combout => \data_reg[6]~feeder_combout\);

-- Location: FF_X43_Y69_N31
\data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[6]~feeder_combout\,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(6));

-- Location: FF_X42_Y69_N27
\TX|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(6),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(6));

-- Location: LCCOMB_X42_Y69_N26
\TX|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Mux0~4_combout\ = (\TX|se_r232_tx\(3) & (((\TX|data_reg\(6) & !\TX|se_r232_tx\(1))))) # (!\TX|se_r232_tx\(3) & ((\TX|data_reg\(0)) # ((!\TX|se_r232_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|se_r232_tx\(3),
	datab => \TX|data_reg\(0),
	datac => \TX|data_reg\(6),
	datad => \TX|se_r232_tx\(1),
	combout => \TX|Mux0~4_combout\);

-- Location: IOIBUF_X38_Y73_N15
\DATA_TXD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(1),
	o => \DATA_TXD[1]~input_o\);

-- Location: LCCOMB_X43_Y69_N10
\data_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[1]~feeder_combout\ = \DATA_TXD[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_TXD[1]~input_o\,
	combout => \data_reg[1]~feeder_combout\);

-- Location: FF_X43_Y69_N11
\data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[1]~feeder_combout\,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(1));

-- Location: FF_X42_Y69_N31
\TX|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(1),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(1));

-- Location: LCCOMB_X42_Y69_N30
\TX|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Mux0~5_combout\ = (\TX|se_r232_tx\(0) & (((\TX|data_reg\(1) & \TX|se_r232_tx\(1))))) # (!\TX|se_r232_tx\(0) & (\TX|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Mux0~4_combout\,
	datab => \TX|se_r232_tx\(0),
	datac => \TX|data_reg\(1),
	datad => \TX|se_r232_tx\(1),
	combout => \TX|Mux0~5_combout\);

-- Location: LCCOMB_X42_Y69_N12
\TX|parity_bit_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|parity_bit_cnt[0]~0_combout\ = \TX|parity_bit_cnt\(0) $ (((\TX|Mux0~6_combout\ & ((\TX|current_state.state_data_frame~q\) # (\TX|current_state.state_parity_bit~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|current_state.state_data_frame~q\,
	datab => \TX|current_state.state_parity_bit~q\,
	datac => \TX|parity_bit_cnt\(0),
	datad => \TX|Mux0~6_combout\,
	combout => \TX|parity_bit_cnt[0]~0_combout\);

-- Location: FF_X42_Y69_N13
\TX|parity_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX|parity_bit_cnt[0]~0_combout\,
	clrn => \TX|ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|parity_bit_cnt\(0));

-- Location: IOIBUF_X35_Y73_N15
\DATA_TXD[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(7),
	o => \DATA_TXD[7]~input_o\);

-- Location: LCCOMB_X43_Y69_N8
\data_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[7]~feeder_combout\ = \DATA_TXD[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_TXD[7]~input_o\,
	combout => \data_reg[7]~feeder_combout\);

-- Location: FF_X43_Y69_N9
\data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[7]~feeder_combout\,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(7));

-- Location: FF_X42_Y69_N23
\TX|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(7),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(7));

-- Location: LCCOMB_X42_Y69_N22
\TX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Mux0~0_combout\ = (\TX|se_r232_tx\(0) & (((\TX|data_reg\(7)) # (\TX|se_r232_tx\(1))))) # (!\TX|se_r232_tx\(0) & (\TX|parity_bit_cnt\(0) & ((\TX|se_r232_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|parity_bit_cnt\(0),
	datab => \TX|se_r232_tx\(0),
	datac => \TX|data_reg\(7),
	datad => \TX|se_r232_tx\(1),
	combout => \TX|Mux0~0_combout\);

-- Location: IOIBUF_X38_Y73_N1
\DATA_TXD[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(4),
	o => \DATA_TXD[4]~input_o\);

-- Location: FF_X43_Y69_N19
\data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_TXD[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(4));

-- Location: FF_X42_Y69_N1
\TX|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(4),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(4));

-- Location: IOIBUF_X40_Y73_N8
\DATA_TXD[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(3),
	o => \DATA_TXD[3]~input_o\);

-- Location: LCCOMB_X43_Y69_N12
\data_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[3]~feeder_combout\ = \DATA_TXD[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_TXD[3]~input_o\,
	combout => \data_reg[3]~feeder_combout\);

-- Location: FF_X43_Y69_N13
\data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[3]~feeder_combout\,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(3));

-- Location: FF_X42_Y69_N15
\TX|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(3),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(3));

-- Location: IOIBUF_X42_Y73_N1
\DATA_TXD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(2),
	o => \DATA_TXD[2]~input_o\);

-- Location: LCCOMB_X43_Y69_N14
\data_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[2]~feeder_combout\ = \DATA_TXD[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_TXD[2]~input_o\,
	combout => \data_reg[2]~feeder_combout\);

-- Location: FF_X43_Y69_N15
\data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[2]~feeder_combout\,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(2));

-- Location: FF_X42_Y69_N21
\TX|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(2),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(2));

-- Location: LCCOMB_X42_Y69_N20
\TX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Mux0~1_combout\ = (\TX|se_r232_tx\(0) & ((\TX|data_reg\(3)) # ((\TX|se_r232_tx\(1))))) # (!\TX|se_r232_tx\(0) & (((\TX|data_reg\(2) & !\TX|se_r232_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|se_r232_tx\(0),
	datab => \TX|data_reg\(3),
	datac => \TX|data_reg\(2),
	datad => \TX|se_r232_tx\(1),
	combout => \TX|Mux0~1_combout\);

-- Location: IOIBUF_X38_Y73_N8
\DATA_TXD[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_TXD(5),
	o => \DATA_TXD[5]~input_o\);

-- Location: LCCOMB_X43_Y69_N20
\data_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[5]~feeder_combout\ = \DATA_TXD[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_TXD[5]~input_o\,
	combout => \data_reg[5]~feeder_combout\);

-- Location: FF_X43_Y69_N21
\data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[5]~feeder_combout\,
	ena => \ALT_INV_current_state.state_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(5));

-- Location: FF_X42_Y69_N3
\TX|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => data_reg(5),
	sload => VCC,
	ena => \TX|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX|data_reg\(5));

-- Location: LCCOMB_X42_Y69_N2
\TX|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Mux0~2_combout\ = (\TX|Mux0~1_combout\ & (((\TX|data_reg\(5)) # (!\TX|se_r232_tx\(1))))) # (!\TX|Mux0~1_combout\ & (\TX|data_reg\(4) & ((\TX|se_r232_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|data_reg\(4),
	datab => \TX|Mux0~1_combout\,
	datac => \TX|data_reg\(5),
	datad => \TX|se_r232_tx\(1),
	combout => \TX|Mux0~2_combout\);

-- Location: LCCOMB_X42_Y69_N28
\TX|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Mux0~3_combout\ = (\TX|se_r232_tx\(3) & ((\TX|Mux0~0_combout\) # ((\TX|se_r232_tx\(2))))) # (!\TX|se_r232_tx\(3) & (((\TX|Mux0~2_combout\ & \TX|se_r232_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Mux0~0_combout\,
	datab => \TX|Mux0~2_combout\,
	datac => \TX|se_r232_tx\(3),
	datad => \TX|se_r232_tx\(2),
	combout => \TX|Mux0~3_combout\);

-- Location: LCCOMB_X42_Y69_N0
\TX|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX|Mux0~6_combout\ = (\TX|Mux0~3_combout\) # ((\TX|Mux0~5_combout\ & !\TX|se_r232_tx\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX|Mux0~5_combout\,
	datab => \TX|se_r232_tx\(2),
	datad => \TX|Mux0~3_combout\,
	combout => \TX|Mux0~6_combout\);

-- Location: LCCOMB_X48_Y69_N10
\RX|IS_VALID\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX|IS_VALID~combout\ = (\RX|stop_bit~q\ & (\RX|current_state.state_idle~q\ & (\RX|recieved_parity_bit~q\ $ (!\RX|parity_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|stop_bit~q\,
	datab => \RX|recieved_parity_bit~q\,
	datac => \RX|current_state.state_idle~q\,
	datad => \RX|parity_cnt\(0),
	combout => \RX|IS_VALID~combout\);

ww_DATA_RXD(0) <= \DATA_RXD[0]~output_o\;

ww_DATA_RXD(1) <= \DATA_RXD[1]~output_o\;

ww_DATA_RXD(2) <= \DATA_RXD[2]~output_o\;

ww_DATA_RXD(3) <= \DATA_RXD[3]~output_o\;

ww_DATA_RXD(4) <= \DATA_RXD[4]~output_o\;

ww_DATA_RXD(5) <= \DATA_RXD[5]~output_o\;

ww_DATA_RXD(6) <= \DATA_RXD[6]~output_o\;

ww_DATA_RXD(7) <= \DATA_RXD[7]~output_o\;

ww_UART_TXD <= \UART_TXD~output_o\;

ww_RXD_IDLE <= \RXD_IDLE~output_o\;

ww_RXD_VALID <= \RXD_VALID~output_o\;

ww_TXD_IDLE <= \TXD_IDLE~output_o\;
END structure;


