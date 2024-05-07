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

-- DATE "04/13/2023 22:03:45"

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

ENTITY 	UART_TX IS
    PORT (
	DATA : IN std_logic_vector(7 DOWNTO 0);
	SEND : IN std_logic;
	CLK : IN std_logic;
	ARST : IN std_logic;
	R232_TX : OUT std_logic;
	IDLE : OUT std_logic
	);
END UART_TX;

-- Design Ports Information
-- R232_TX	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDLE	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEND	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_TX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEND : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ARST : std_logic;
SIGNAL ww_R232_TX : std_logic;
SIGNAL ww_IDLE : std_logic;
SIGNAL \ARST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R232_TX~output_o\ : std_logic;
SIGNAL \IDLE~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \bauld_gen_cnt[31]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[31]~5_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[19]~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[1]~32_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[2]~31_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[3]~33_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[4]~28_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[5]~30_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[6]~27_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[7]~29_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[8]~26_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[9]~25_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[10]~23_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[11]~24_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[12]~19_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[13]~22_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[14]~21_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[15]~20_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[16]~18_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[17]~17_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[18]~16_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[19]~15_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[20]~14_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[21]~13_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[22]~12_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[23]~11_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[24]~10_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[25]~9_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[26]~8_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[27]~7_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[28]~6_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[29]~3_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[30]~2_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[31]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \bauld_gen_cnt[0]~34_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \ARST~input_o\ : std_logic;
SIGNAL \ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.state_wait_data_frame~q\ : std_logic;
SIGNAL \se_r232_tx[0]~3_combout\ : std_logic;
SIGNAL \WideOr10~combout\ : std_logic;
SIGNAL \se_r232_tx[2]~0_combout\ : std_logic;
SIGNAL \se_r232_tx[3]~1_combout\ : std_logic;
SIGNAL \se_r232_tx[3]~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \current_state.state_data_frame~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.state_wait~q\ : std_logic;
SIGNAL \next_state.state_parity_bit~0_combout\ : std_logic;
SIGNAL \current_state.state_parity_bit~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \current_state.state_wait_done~q\ : std_logic;
SIGNAL \next_state.state_done~0_combout\ : std_logic;
SIGNAL \current_state.state_done~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \current_state.state_wait_idle~q\ : std_logic;
SIGNAL \next_state.state_ready_idle~0_combout\ : std_logic;
SIGNAL \current_state.state_ready_idle~q\ : std_logic;
SIGNAL \SEND~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.state_idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.state_resume_idle~q\ : std_logic;
SIGNAL \next_state.state_start~0_combout\ : std_logic;
SIGNAL \current_state.state_start~q\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \se_r232_tx[1]~4_combout\ : std_logic;
SIGNAL \parity_bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \data_reg[0]~feeder_combout\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL se_r232_tx : std_logic_vector(3 DOWNTO 0);
SIGNAL parity_bit_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL data_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL bauld_gen_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \ALT_INV_current_state.state_idle~q\ : std_logic;
SIGNAL \ALT_INV_ARST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DATA <= DATA;
ww_SEND <= SEND;
ww_CLK <= CLK;
ww_ARST <= ARST;
R232_TX <= ww_R232_TX;
IDLE <= ww_IDLE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ARST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ARST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_WideOr10~0_combout\ <= NOT \WideOr10~0_combout\;
\ALT_INV_WideOr10~combout\ <= NOT \WideOr10~combout\;
\ALT_INV_current_state.state_idle~q\ <= NOT \current_state.state_idle~q\;
\ALT_INV_ARST~inputclkctrl_outclk\ <= NOT \ARST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y73_N2
\R232_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~6_combout\,
	devoe => ww_devoe,
	o => \R232_TX~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\IDLE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.state_idle~q\,
	devoe => ww_devoe,
	o => \IDLE~output_o\);

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

-- Location: LCCOMB_X56_Y69_N14
\bauld_gen_cnt[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[31]~0_combout\ = (\current_state.state_idle~q\ & (!\current_state.state_start~q\ & !\current_state.state_ready_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_idle~q\,
	datac => \current_state.state_start~q\,
	datad => \current_state.state_ready_idle~q\,
	combout => \bauld_gen_cnt[31]~0_combout\);

-- Location: LCCOMB_X58_Y69_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = bauld_gen_cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(bauld_gen_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X56_Y69_N22
\bauld_gen_cnt[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[31]~5_combout\ = ((bauld_gen_cnt(0) & \Equal0~9_combout\)) # (!\bauld_gen_cnt[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(0),
	datac => \bauld_gen_cnt[31]~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \bauld_gen_cnt[31]~5_combout\);

-- Location: LCCOMB_X56_Y69_N28
\bauld_gen_cnt[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[19]~4_combout\ = (!\bauld_gen_cnt[31]~0_combout\ & ((!\Equal0~9_combout\) # (!bauld_gen_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(0),
	datac => \bauld_gen_cnt[31]~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \bauld_gen_cnt[19]~4_combout\);

-- Location: LCCOMB_X58_Y69_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (bauld_gen_cnt(1) & (!\Add0~1\)) # (!bauld_gen_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!bauld_gen_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X57_Y69_N26
\bauld_gen_cnt[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[1]~32_combout\ = (\Add0~2_combout\ & (((bauld_gen_cnt(1) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~2_combout\ & (((bauld_gen_cnt(1) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(1),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[1]~32_combout\);

-- Location: LCCOMB_X56_Y69_N4
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\current_state.state_ready_idle~q\) # (!\current_state.state_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.state_ready_idle~q\,
	datad => \current_state.state_idle~q\,
	combout => \WideOr10~0_combout\);

-- Location: FF_X57_Y69_N27
\bauld_gen_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[1]~32_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(1));

-- Location: LCCOMB_X58_Y69_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (bauld_gen_cnt(2) & (\Add0~3\ $ (GND))) # (!bauld_gen_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((bauld_gen_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X57_Y69_N12
\bauld_gen_cnt[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[2]~31_combout\ = (\Add0~4_combout\ & (((bauld_gen_cnt(2) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~4_combout\ & (((bauld_gen_cnt(2) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(2),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[2]~31_combout\);

-- Location: FF_X57_Y69_N13
\bauld_gen_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[2]~31_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(2));

-- Location: LCCOMB_X58_Y69_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (bauld_gen_cnt(3) & (!\Add0~5\)) # (!bauld_gen_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!bauld_gen_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X57_Y69_N4
\bauld_gen_cnt[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[3]~33_combout\ = (\Add0~6_combout\ & (((bauld_gen_cnt(3) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~6_combout\ & (((bauld_gen_cnt(3) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(3),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[3]~33_combout\);

-- Location: FF_X57_Y69_N5
\bauld_gen_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[3]~33_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(3));

-- Location: LCCOMB_X58_Y69_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (bauld_gen_cnt(4) & (\Add0~7\ $ (GND))) # (!bauld_gen_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((bauld_gen_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X57_Y69_N0
\bauld_gen_cnt[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[4]~28_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (((bauld_gen_cnt(4) & \bauld_gen_cnt[19]~4_combout\)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~8_combout\) # ((bauld_gen_cnt(4) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \Add0~8_combout\,
	datac => bauld_gen_cnt(4),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[4]~28_combout\);

-- Location: FF_X57_Y69_N1
\bauld_gen_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[4]~28_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(4));

-- Location: LCCOMB_X58_Y69_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (bauld_gen_cnt(5) & (!\Add0~9\)) # (!bauld_gen_cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!bauld_gen_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X57_Y69_N16
\bauld_gen_cnt[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[5]~30_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (((bauld_gen_cnt(5) & \bauld_gen_cnt[19]~4_combout\)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~10_combout\) # ((bauld_gen_cnt(5) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \Add0~10_combout\,
	datac => bauld_gen_cnt(5),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[5]~30_combout\);

-- Location: FF_X57_Y69_N17
\bauld_gen_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[5]~30_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(5));

-- Location: LCCOMB_X58_Y69_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (bauld_gen_cnt(6) & (\Add0~11\ $ (GND))) # (!bauld_gen_cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((bauld_gen_cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X57_Y69_N10
\bauld_gen_cnt[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[6]~27_combout\ = (\Add0~12_combout\ & (((bauld_gen_cnt(6) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~12_combout\ & (((bauld_gen_cnt(6) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(6),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[6]~27_combout\);

-- Location: FF_X57_Y69_N11
\bauld_gen_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[6]~27_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(6));

-- Location: LCCOMB_X58_Y69_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (bauld_gen_cnt(7) & (!\Add0~13\)) # (!bauld_gen_cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!bauld_gen_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X57_Y69_N22
\bauld_gen_cnt[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[7]~29_combout\ = (\Add0~14_combout\ & (((bauld_gen_cnt(7) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~14_combout\ & (((bauld_gen_cnt(7) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(7),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[7]~29_combout\);

-- Location: FF_X57_Y69_N23
\bauld_gen_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[7]~29_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(7));

-- Location: LCCOMB_X58_Y69_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (bauld_gen_cnt(8) & (\Add0~15\ $ (GND))) # (!bauld_gen_cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((bauld_gen_cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X57_Y69_N24
\bauld_gen_cnt[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[8]~26_combout\ = (\Add0~16_combout\ & (((bauld_gen_cnt(8) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~16_combout\ & (((bauld_gen_cnt(8) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(8),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[8]~26_combout\);

-- Location: FF_X57_Y69_N25
\bauld_gen_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[8]~26_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(8));

-- Location: LCCOMB_X58_Y69_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (bauld_gen_cnt(9) & (!\Add0~17\)) # (!bauld_gen_cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!bauld_gen_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X56_Y69_N0
\bauld_gen_cnt[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[9]~25_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (((bauld_gen_cnt(9) & \bauld_gen_cnt[19]~4_combout\)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~18_combout\) # ((bauld_gen_cnt(9) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \Add0~18_combout\,
	datac => bauld_gen_cnt(9),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[9]~25_combout\);

-- Location: FF_X56_Y69_N1
\bauld_gen_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[9]~25_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(9));

-- Location: LCCOMB_X58_Y69_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (bauld_gen_cnt(10) & (\Add0~19\ $ (GND))) # (!bauld_gen_cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((bauld_gen_cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X56_Y69_N20
\bauld_gen_cnt[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[10]~23_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (((bauld_gen_cnt(10) & \bauld_gen_cnt[19]~4_combout\)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~20_combout\) # ((bauld_gen_cnt(10) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \Add0~20_combout\,
	datac => bauld_gen_cnt(10),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[10]~23_combout\);

-- Location: FF_X56_Y69_N21
\bauld_gen_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[10]~23_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(10));

-- Location: LCCOMB_X58_Y69_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (bauld_gen_cnt(11) & (!\Add0~21\)) # (!bauld_gen_cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!bauld_gen_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X56_Y69_N6
\bauld_gen_cnt[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[11]~24_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(11)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~22_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(11),
	datad => \Add0~22_combout\,
	combout => \bauld_gen_cnt[11]~24_combout\);

-- Location: FF_X56_Y69_N7
\bauld_gen_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[11]~24_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(11));

-- Location: LCCOMB_X56_Y69_N2
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!bauld_gen_cnt(11) & (bauld_gen_cnt(10) & (!bauld_gen_cnt(9) & !bauld_gen_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(11),
	datab => bauld_gen_cnt(10),
	datac => bauld_gen_cnt(9),
	datad => bauld_gen_cnt(8),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X58_Y69_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (bauld_gen_cnt(12) & (\Add0~23\ $ (GND))) # (!bauld_gen_cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((bauld_gen_cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X56_Y69_N30
\bauld_gen_cnt[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[12]~19_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (((bauld_gen_cnt(12) & \bauld_gen_cnt[19]~4_combout\)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~24_combout\) # ((bauld_gen_cnt(12) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \Add0~24_combout\,
	datac => bauld_gen_cnt(12),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[12]~19_combout\);

-- Location: FF_X56_Y69_N31
\bauld_gen_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[12]~19_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(12));

-- Location: LCCOMB_X58_Y69_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (bauld_gen_cnt(13) & (!\Add0~25\)) # (!bauld_gen_cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!bauld_gen_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X56_Y69_N16
\bauld_gen_cnt[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[13]~22_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (((bauld_gen_cnt(13) & \bauld_gen_cnt[19]~4_combout\)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~26_combout\) # ((bauld_gen_cnt(13) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \Add0~26_combout\,
	datac => bauld_gen_cnt(13),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[13]~22_combout\);

-- Location: FF_X56_Y69_N17
\bauld_gen_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[13]~22_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(13));

-- Location: LCCOMB_X58_Y69_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (bauld_gen_cnt(14) & (\Add0~27\ $ (GND))) # (!bauld_gen_cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((bauld_gen_cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X56_Y69_N10
\bauld_gen_cnt[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[14]~21_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(14)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~28_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(14),
	datad => \Add0~28_combout\,
	combout => \bauld_gen_cnt[14]~21_combout\);

-- Location: FF_X56_Y69_N11
\bauld_gen_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[14]~21_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(14));

-- Location: LCCOMB_X58_Y69_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (bauld_gen_cnt(15) & (!\Add0~29\)) # (!bauld_gen_cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!bauld_gen_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X56_Y69_N8
\bauld_gen_cnt[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[15]~20_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(15)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~30_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(15),
	datad => \Add0~30_combout\,
	combout => \bauld_gen_cnt[15]~20_combout\);

-- Location: FF_X56_Y69_N9
\bauld_gen_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[15]~20_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(15));

-- Location: LCCOMB_X56_Y69_N18
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (bauld_gen_cnt(12) & (!bauld_gen_cnt(14) & (!bauld_gen_cnt(15) & !bauld_gen_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(12),
	datab => bauld_gen_cnt(14),
	datac => bauld_gen_cnt(15),
	datad => bauld_gen_cnt(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X57_Y69_N2
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (bauld_gen_cnt(6) & (bauld_gen_cnt(4) & (!bauld_gen_cnt(7) & !bauld_gen_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(6),
	datab => bauld_gen_cnt(4),
	datac => bauld_gen_cnt(7),
	datad => bauld_gen_cnt(5),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X57_Y69_N30
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (bauld_gen_cnt(2) & (!bauld_gen_cnt(3) & (bauld_gen_cnt(1) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(2),
	datab => bauld_gen_cnt(3),
	datac => bauld_gen_cnt(1),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X58_Y68_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (bauld_gen_cnt(16) & (\Add0~31\ $ (GND))) # (!bauld_gen_cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((bauld_gen_cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X57_Y68_N16
\bauld_gen_cnt[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[16]~18_combout\ = (\bauld_gen_cnt[19]~4_combout\ & ((bauld_gen_cnt(16)) # ((\Add0~32_combout\ & !\bauld_gen_cnt[31]~5_combout\)))) # (!\bauld_gen_cnt[19]~4_combout\ & (\Add0~32_combout\ & ((!\bauld_gen_cnt[31]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[19]~4_combout\,
	datab => \Add0~32_combout\,
	datac => bauld_gen_cnt(16),
	datad => \bauld_gen_cnt[31]~5_combout\,
	combout => \bauld_gen_cnt[16]~18_combout\);

-- Location: FF_X57_Y68_N17
\bauld_gen_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[16]~18_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(16));

-- Location: LCCOMB_X58_Y68_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (bauld_gen_cnt(17) & (!\Add0~33\)) # (!bauld_gen_cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!bauld_gen_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X57_Y68_N10
\bauld_gen_cnt[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[17]~17_combout\ = (\Add0~34_combout\ & (((bauld_gen_cnt(17) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~34_combout\ & (((bauld_gen_cnt(17) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(17),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[17]~17_combout\);

-- Location: FF_X57_Y68_N11
\bauld_gen_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[17]~17_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(17));

-- Location: LCCOMB_X58_Y68_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (bauld_gen_cnt(18) & (\Add0~35\ $ (GND))) # (!bauld_gen_cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((bauld_gen_cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X57_Y68_N20
\bauld_gen_cnt[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[18]~16_combout\ = (\Add0~36_combout\ & (((bauld_gen_cnt(18) & \bauld_gen_cnt[19]~4_combout\)) # (!\bauld_gen_cnt[31]~5_combout\))) # (!\Add0~36_combout\ & (((bauld_gen_cnt(18) & \bauld_gen_cnt[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(18),
	datad => \bauld_gen_cnt[19]~4_combout\,
	combout => \bauld_gen_cnt[18]~16_combout\);

-- Location: FF_X57_Y68_N21
\bauld_gen_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[18]~16_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(18));

-- Location: LCCOMB_X58_Y68_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (bauld_gen_cnt(19) & (!\Add0~37\)) # (!bauld_gen_cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!bauld_gen_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X57_Y68_N30
\bauld_gen_cnt[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[19]~15_combout\ = (\bauld_gen_cnt[19]~4_combout\ & ((bauld_gen_cnt(19)) # ((!\bauld_gen_cnt[31]~5_combout\ & \Add0~38_combout\)))) # (!\bauld_gen_cnt[19]~4_combout\ & (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[19]~4_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(19),
	datad => \Add0~38_combout\,
	combout => \bauld_gen_cnt[19]~15_combout\);

-- Location: FF_X57_Y68_N31
\bauld_gen_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[19]~15_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(19));

-- Location: LCCOMB_X57_Y68_N26
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!bauld_gen_cnt(17) & (!bauld_gen_cnt(18) & (!bauld_gen_cnt(19) & !bauld_gen_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(17),
	datab => bauld_gen_cnt(18),
	datac => bauld_gen_cnt(19),
	datad => bauld_gen_cnt(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X56_Y68_N20
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (bauld_gen_cnt(0) & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(0),
	datac => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X58_Y68_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (bauld_gen_cnt(20) & (\Add0~39\ $ (GND))) # (!bauld_gen_cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((bauld_gen_cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X57_Y69_N14
\bauld_gen_cnt[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[20]~14_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(20)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~40_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(20),
	datad => \Add0~40_combout\,
	combout => \bauld_gen_cnt[20]~14_combout\);

-- Location: FF_X57_Y69_N15
\bauld_gen_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[20]~14_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(20));

-- Location: LCCOMB_X58_Y68_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (bauld_gen_cnt(21) & (!\Add0~41\)) # (!bauld_gen_cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!bauld_gen_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X57_Y68_N6
\bauld_gen_cnt[21]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[21]~13_combout\ = (\bauld_gen_cnt[19]~4_combout\ & ((bauld_gen_cnt(21)) # ((!\bauld_gen_cnt[31]~5_combout\ & \Add0~42_combout\)))) # (!\bauld_gen_cnt[19]~4_combout\ & (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[19]~4_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(21),
	datad => \Add0~42_combout\,
	combout => \bauld_gen_cnt[21]~13_combout\);

-- Location: FF_X57_Y68_N7
\bauld_gen_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[21]~13_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(21));

-- Location: LCCOMB_X58_Y68_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (bauld_gen_cnt(22) & (\Add0~43\ $ (GND))) # (!bauld_gen_cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((bauld_gen_cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X57_Y68_N4
\bauld_gen_cnt[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[22]~12_combout\ = (\bauld_gen_cnt[19]~4_combout\ & ((bauld_gen_cnt(22)) # ((!\bauld_gen_cnt[31]~5_combout\ & \Add0~44_combout\)))) # (!\bauld_gen_cnt[19]~4_combout\ & (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[19]~4_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(22),
	datad => \Add0~44_combout\,
	combout => \bauld_gen_cnt[22]~12_combout\);

-- Location: FF_X57_Y68_N5
\bauld_gen_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[22]~12_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(22));

-- Location: LCCOMB_X58_Y68_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (bauld_gen_cnt(23) & (!\Add0~45\)) # (!bauld_gen_cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!bauld_gen_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X57_Y68_N18
\bauld_gen_cnt[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[23]~11_combout\ = (\bauld_gen_cnt[19]~4_combout\ & ((bauld_gen_cnt(23)) # ((!\bauld_gen_cnt[31]~5_combout\ & \Add0~46_combout\)))) # (!\bauld_gen_cnt[19]~4_combout\ & (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[19]~4_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(23),
	datad => \Add0~46_combout\,
	combout => \bauld_gen_cnt[23]~11_combout\);

-- Location: FF_X57_Y68_N19
\bauld_gen_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[23]~11_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(23));

-- Location: LCCOMB_X58_Y68_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (bauld_gen_cnt(24) & (\Add0~47\ $ (GND))) # (!bauld_gen_cnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((bauld_gen_cnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X57_Y69_N18
\bauld_gen_cnt[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[24]~10_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(24)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~48_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(24),
	datad => \Add0~48_combout\,
	combout => \bauld_gen_cnt[24]~10_combout\);

-- Location: FF_X57_Y69_N19
\bauld_gen_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[24]~10_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(24));

-- Location: LCCOMB_X58_Y68_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (bauld_gen_cnt(25) & (!\Add0~49\)) # (!bauld_gen_cnt(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!bauld_gen_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X57_Y69_N8
\bauld_gen_cnt[25]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[25]~9_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(25)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~50_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(25),
	datad => \Add0~50_combout\,
	combout => \bauld_gen_cnt[25]~9_combout\);

-- Location: FF_X57_Y69_N9
\bauld_gen_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[25]~9_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(25));

-- Location: LCCOMB_X58_Y68_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (bauld_gen_cnt(26) & (\Add0~51\ $ (GND))) # (!bauld_gen_cnt(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((bauld_gen_cnt(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X57_Y69_N6
\bauld_gen_cnt[26]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[26]~8_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(26)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~52_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(26),
	datad => \Add0~52_combout\,
	combout => \bauld_gen_cnt[26]~8_combout\);

-- Location: FF_X57_Y69_N7
\bauld_gen_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[26]~8_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(26));

-- Location: LCCOMB_X58_Y68_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (bauld_gen_cnt(27) & (!\Add0~53\)) # (!bauld_gen_cnt(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!bauld_gen_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X57_Y69_N28
\bauld_gen_cnt[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[27]~7_combout\ = (\bauld_gen_cnt[31]~5_combout\ & (\bauld_gen_cnt[19]~4_combout\ & (bauld_gen_cnt(27)))) # (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~54_combout\) # ((\bauld_gen_cnt[19]~4_combout\ & bauld_gen_cnt(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~5_combout\,
	datab => \bauld_gen_cnt[19]~4_combout\,
	datac => bauld_gen_cnt(27),
	datad => \Add0~54_combout\,
	combout => \bauld_gen_cnt[27]~7_combout\);

-- Location: FF_X57_Y69_N29
\bauld_gen_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[27]~7_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(27));

-- Location: LCCOMB_X58_Y68_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (bauld_gen_cnt(28) & (\Add0~55\ $ (GND))) # (!bauld_gen_cnt(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((bauld_gen_cnt(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bauld_gen_cnt(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X57_Y68_N22
\bauld_gen_cnt[28]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[28]~6_combout\ = (\bauld_gen_cnt[19]~4_combout\ & ((bauld_gen_cnt(28)) # ((!\bauld_gen_cnt[31]~5_combout\ & \Add0~56_combout\)))) # (!\bauld_gen_cnt[19]~4_combout\ & (!\bauld_gen_cnt[31]~5_combout\ & ((\Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[19]~4_combout\,
	datab => \bauld_gen_cnt[31]~5_combout\,
	datac => bauld_gen_cnt(28),
	datad => \Add0~56_combout\,
	combout => \bauld_gen_cnt[28]~6_combout\);

-- Location: FF_X57_Y68_N23
\bauld_gen_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[28]~6_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(28));

-- Location: LCCOMB_X58_Y68_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (bauld_gen_cnt(29) & (!\Add0~57\)) # (!bauld_gen_cnt(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!bauld_gen_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X57_Y68_N12
\bauld_gen_cnt[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[29]~3_combout\ = (!\Equal0~10_combout\ & ((\bauld_gen_cnt[31]~0_combout\ & ((\Add0~58_combout\))) # (!\bauld_gen_cnt[31]~0_combout\ & (bauld_gen_cnt(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~0_combout\,
	datab => \Equal0~10_combout\,
	datac => bauld_gen_cnt(29),
	datad => \Add0~58_combout\,
	combout => \bauld_gen_cnt[29]~3_combout\);

-- Location: FF_X57_Y68_N13
\bauld_gen_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[29]~3_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(29));

-- Location: LCCOMB_X58_Y68_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (bauld_gen_cnt(30) & (\Add0~59\ $ (GND))) # (!bauld_gen_cnt(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((bauld_gen_cnt(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X57_Y68_N2
\bauld_gen_cnt[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[30]~2_combout\ = (!\Equal0~10_combout\ & ((\bauld_gen_cnt[31]~0_combout\ & ((\Add0~60_combout\))) # (!\bauld_gen_cnt[31]~0_combout\ & (bauld_gen_cnt(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~0_combout\,
	datab => \Equal0~10_combout\,
	datac => bauld_gen_cnt(30),
	datad => \Add0~60_combout\,
	combout => \bauld_gen_cnt[30]~2_combout\);

-- Location: FF_X57_Y68_N3
\bauld_gen_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[30]~2_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(30));

-- Location: LCCOMB_X58_Y68_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (bauld_gen_cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bauld_gen_cnt(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X57_Y68_N8
\bauld_gen_cnt[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[31]~1_combout\ = (!\Equal0~10_combout\ & ((\bauld_gen_cnt[31]~0_combout\ & (\Add0~62_combout\)) # (!\bauld_gen_cnt[31]~0_combout\ & ((bauld_gen_cnt(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \bauld_gen_cnt[31]~0_combout\,
	datac => bauld_gen_cnt(31),
	datad => \Equal0~10_combout\,
	combout => \bauld_gen_cnt[31]~1_combout\);

-- Location: FF_X57_Y68_N9
\bauld_gen_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[31]~1_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(31));

-- Location: LCCOMB_X57_Y68_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!bauld_gen_cnt(29) & (!bauld_gen_cnt(31) & (!bauld_gen_cnt(28) & !bauld_gen_cnt(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(29),
	datab => bauld_gen_cnt(31),
	datac => bauld_gen_cnt(28),
	datad => bauld_gen_cnt(30),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X57_Y69_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!bauld_gen_cnt(26) & (!bauld_gen_cnt(27) & (!bauld_gen_cnt(25) & !bauld_gen_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(26),
	datab => bauld_gen_cnt(27),
	datac => bauld_gen_cnt(25),
	datad => bauld_gen_cnt(24),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X57_Y68_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!bauld_gen_cnt(21) & (!bauld_gen_cnt(22) & (!bauld_gen_cnt(23) & !bauld_gen_cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(21),
	datab => bauld_gen_cnt(22),
	datac => bauld_gen_cnt(23),
	datad => bauld_gen_cnt(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X57_Y68_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X57_Y68_N14
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X56_Y69_N24
\bauld_gen_cnt[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bauld_gen_cnt[0]~34_combout\ = (\bauld_gen_cnt[31]~0_combout\ & (\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!bauld_gen_cnt(0))))) # (!\bauld_gen_cnt[31]~0_combout\ & (((bauld_gen_cnt(0) & !\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bauld_gen_cnt[31]~0_combout\,
	datab => \Add0~0_combout\,
	datac => bauld_gen_cnt(0),
	datad => \Equal0~9_combout\,
	combout => \bauld_gen_cnt[0]~34_combout\);

-- Location: FF_X56_Y69_N25
\bauld_gen_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bauld_gen_cnt[0]~34_combout\,
	clrn => \ALT_INV_WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bauld_gen_cnt(0));

-- Location: LCCOMB_X59_Y69_N22
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.state_start~q\) # ((\current_state.state_wait_data_frame~q\ & ((bauld_gen_cnt(0)) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(0),
	datab => \current_state.state_start~q\,
	datac => \current_state.state_wait_data_frame~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector2~0_combout\);

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

-- Location: FF_X59_Y69_N23
\current_state.state_wait_data_frame\ : dffeas
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
	q => \current_state.state_wait_data_frame~q\);

-- Location: LCCOMB_X60_Y69_N16
\se_r232_tx[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \se_r232_tx[0]~3_combout\ = \WideOr9~0_combout\ $ (se_r232_tx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~0_combout\,
	datac => se_r232_tx(0),
	combout => \se_r232_tx[0]~3_combout\);

-- Location: LCCOMB_X60_Y69_N4
WideOr10 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~combout\ = (\current_state.state_resume_idle~q\) # ((\current_state.state_ready_idle~q\) # (!\current_state.state_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_resume_idle~q\,
	datab => \current_state.state_ready_idle~q\,
	datad => \current_state.state_idle~q\,
	combout => \WideOr10~combout\);

-- Location: FF_X60_Y69_N17
\se_r232_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \se_r232_tx[0]~3_combout\,
	clrn => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => se_r232_tx(0));

-- Location: LCCOMB_X60_Y69_N8
\se_r232_tx[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \se_r232_tx[2]~0_combout\ = se_r232_tx(2) $ (((\WideOr9~0_combout\ & (se_r232_tx(0) & se_r232_tx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~0_combout\,
	datab => se_r232_tx(0),
	datac => se_r232_tx(2),
	datad => se_r232_tx(1),
	combout => \se_r232_tx[2]~0_combout\);

-- Location: FF_X60_Y69_N9
\se_r232_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \se_r232_tx[2]~0_combout\,
	clrn => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => se_r232_tx(2));

-- Location: LCCOMB_X60_Y69_N0
\se_r232_tx[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \se_r232_tx[3]~1_combout\ = (se_r232_tx(1) & (se_r232_tx(2) & (\WideOr9~0_combout\ & se_r232_tx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => se_r232_tx(1),
	datab => se_r232_tx(2),
	datac => \WideOr9~0_combout\,
	datad => se_r232_tx(0),
	combout => \se_r232_tx[3]~1_combout\);

-- Location: LCCOMB_X60_Y69_N22
\se_r232_tx[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \se_r232_tx[3]~2_combout\ = se_r232_tx(3) $ (\se_r232_tx[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => se_r232_tx(3),
	datad => \se_r232_tx[3]~1_combout\,
	combout => \se_r232_tx[3]~2_combout\);

-- Location: FF_X60_Y69_N23
\se_r232_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \se_r232_tx[3]~2_combout\,
	clrn => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => se_r232_tx(3));

-- Location: LCCOMB_X60_Y69_N30
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (se_r232_tx(3) & (!se_r232_tx(2) & (!se_r232_tx(1) & se_r232_tx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => se_r232_tx(3),
	datab => se_r232_tx(2),
	datac => se_r232_tx(1),
	datad => se_r232_tx(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X59_Y69_N20
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!bauld_gen_cnt(0) & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bauld_gen_cnt(0),
	datad => \Equal0~9_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X59_Y69_N24
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Equal1~0_combout\ & ((\current_state.state_wait_data_frame~q\) # ((\current_state.state_wait~q\ & !\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_wait_data_frame~q\,
	datab => \current_state.state_wait~q\,
	datac => \Equal2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X59_Y69_N25
\current_state.state_data_frame\ : dffeas
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
	q => \current_state.state_data_frame~q\);

-- Location: LCCOMB_X59_Y69_N4
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.state_data_frame~q\) # ((\current_state.state_wait~q\ & ((bauld_gen_cnt(0)) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(0),
	datab => \current_state.state_data_frame~q\,
	datac => \current_state.state_wait~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X59_Y69_N5
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

-- Location: LCCOMB_X59_Y69_N18
\next_state.state_parity_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_parity_bit~0_combout\ = (!bauld_gen_cnt(0) & (\current_state.state_wait~q\ & (\Equal2~0_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(0),
	datab => \current_state.state_wait~q\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \next_state.state_parity_bit~0_combout\);

-- Location: FF_X59_Y69_N19
\current_state.state_parity_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_parity_bit~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_parity_bit~q\);

-- Location: LCCOMB_X59_Y69_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.state_parity_bit~q\) # ((\current_state.state_wait_done~q\ & ((bauld_gen_cnt(0)) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bauld_gen_cnt(0),
	datab => \current_state.state_parity_bit~q\,
	datac => \current_state.state_wait_done~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X59_Y69_N11
\current_state.state_wait_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_wait_done~q\);

-- Location: LCCOMB_X59_Y69_N30
\next_state.state_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_done~0_combout\ = (\current_state.state_wait_done~q\ & (!bauld_gen_cnt(0) & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_wait_done~q\,
	datac => bauld_gen_cnt(0),
	datad => \Equal0~9_combout\,
	combout => \next_state.state_done~0_combout\);

-- Location: FF_X59_Y69_N31
\current_state.state_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_done~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_done~q\);

-- Location: LCCOMB_X59_Y69_N8
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\current_state.state_done~q\) # ((\current_state.state_wait_idle~q\ & ((bauld_gen_cnt(0)) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_done~q\,
	datab => bauld_gen_cnt(0),
	datac => \current_state.state_wait_idle~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X59_Y69_N9
\current_state.state_wait_idle\ : dffeas
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
	q => \current_state.state_wait_idle~q\);

-- Location: LCCOMB_X56_Y69_N26
\next_state.state_ready_idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_ready_idle~0_combout\ = (\current_state.state_wait_idle~q\ & (!bauld_gen_cnt(0) & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_wait_idle~q\,
	datab => bauld_gen_cnt(0),
	datad => \Equal0~9_combout\,
	combout => \next_state.state_ready_idle~0_combout\);

-- Location: FF_X56_Y69_N27
\current_state.state_ready_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_ready_idle~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_ready_idle~q\);

-- Location: IOIBUF_X58_Y73_N22
\SEND~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEND,
	o => \SEND~input_o\);

-- Location: LCCOMB_X56_Y69_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\current_state.state_ready_idle~q\ & ((\current_state.state_idle~q\) # (\SEND~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_ready_idle~q\,
	datac => \current_state.state_idle~q\,
	datad => \SEND~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X56_Y69_N13
\current_state.state_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_idle~q\);

-- Location: LCCOMB_X59_Y69_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.state_idle~q\ & (((\current_state.state_resume_idle~q\ & !\Equal1~0_combout\)))) # (!\current_state.state_idle~q\ & ((\SEND~input_o\) # ((\current_state.state_resume_idle~q\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_idle~q\,
	datab => \SEND~input_o\,
	datac => \current_state.state_resume_idle~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X59_Y69_N15
\current_state.state_resume_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_resume_idle~q\);

-- Location: LCCOMB_X59_Y69_N28
\next_state.state_start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.state_start~0_combout\ = (\current_state.state_resume_idle~q\ & (!bauld_gen_cnt(0) & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.state_resume_idle~q\,
	datac => bauld_gen_cnt(0),
	datad => \Equal0~9_combout\,
	combout => \next_state.state_start~0_combout\);

-- Location: FF_X59_Y69_N29
\current_state.state_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.state_start~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.state_start~q\);

-- Location: LCCOMB_X59_Y69_N16
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\current_state.state_start~q\) # ((\current_state.state_parity_bit~q\) # ((\current_state.state_done~q\) # (\current_state.state_data_frame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.state_start~q\,
	datab => \current_state.state_parity_bit~q\,
	datac => \current_state.state_done~q\,
	datad => \current_state.state_data_frame~q\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X60_Y69_N26
\se_r232_tx[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \se_r232_tx[1]~4_combout\ = se_r232_tx(1) $ (((\WideOr9~0_combout\ & se_r232_tx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~0_combout\,
	datac => se_r232_tx(1),
	datad => se_r232_tx(0),
	combout => \se_r232_tx[1]~4_combout\);

-- Location: FF_X60_Y69_N27
\se_r232_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \se_r232_tx[1]~4_combout\,
	clrn => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => se_r232_tx(1));

-- Location: LCCOMB_X60_Y69_N28
\parity_bit_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \parity_bit_cnt[0]~0_combout\ = parity_bit_cnt(0) $ (((\Mux0~6_combout\ & ((\current_state.state_data_frame~q\) # (\current_state.state_parity_bit~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \current_state.state_data_frame~q\,
	datac => parity_bit_cnt(0),
	datad => \current_state.state_parity_bit~q\,
	combout => \parity_bit_cnt[0]~0_combout\);

-- Location: FF_X60_Y69_N29
\parity_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \parity_bit_cnt[0]~0_combout\,
	clrn => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => parity_bit_cnt(0));

-- Location: IOIBUF_X62_Y73_N15
\DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(7),
	o => \DATA[7]~input_o\);

-- Location: FF_X60_Y69_N11
\data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[7]~input_o\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(7));

-- Location: LCCOMB_X60_Y69_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (se_r232_tx(1) & ((parity_bit_cnt(0)) # ((se_r232_tx(0))))) # (!se_r232_tx(1) & (((data_reg(7) & se_r232_tx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => se_r232_tx(1),
	datab => parity_bit_cnt(0),
	datac => data_reg(7),
	datad => se_r232_tx(0),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(3),
	o => \DATA[3]~input_o\);

-- Location: FF_X60_Y69_N19
\data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[3]~input_o\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(3));

-- Location: IOIBUF_X60_Y73_N15
\DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(2),
	o => \DATA[2]~input_o\);

-- Location: FF_X60_Y69_N25
\data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[2]~input_o\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(2));

-- Location: LCCOMB_X60_Y69_N24
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (se_r232_tx(1) & (((se_r232_tx(0))))) # (!se_r232_tx(1) & ((se_r232_tx(0) & (data_reg(3))) # (!se_r232_tx(0) & ((data_reg(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => se_r232_tx(1),
	datab => data_reg(3),
	datac => data_reg(2),
	datad => se_r232_tx(0),
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X60_Y73_N22
\DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(5),
	o => \DATA[5]~input_o\);

-- Location: FF_X60_Y69_N3
\data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[5]~input_o\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(5));

-- Location: IOIBUF_X60_Y73_N1
\DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(4),
	o => \DATA[4]~input_o\);

-- Location: FF_X60_Y69_N5
\data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[4]~input_o\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(4));

-- Location: LCCOMB_X60_Y69_N2
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (se_r232_tx(1) & ((\Mux0~1_combout\ & (data_reg(5))) # (!\Mux0~1_combout\ & ((data_reg(4)))))) # (!se_r232_tx(1) & (\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => se_r232_tx(1),
	datab => \Mux0~1_combout\,
	datac => data_reg(5),
	datad => data_reg(4),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X60_Y69_N12
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (se_r232_tx(2) & (((se_r232_tx(3)) # (\Mux0~2_combout\)))) # (!se_r232_tx(2) & (\Mux0~0_combout\ & (se_r232_tx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => se_r232_tx(2),
	datac => se_r232_tx(3),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X62_Y73_N22
\DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(1),
	o => \DATA[1]~input_o\);

-- Location: FF_X60_Y69_N7
\data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[1]~input_o\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(1));

-- Location: IOIBUF_X58_Y73_N15
\DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(0),
	o => \DATA[0]~input_o\);

-- Location: LCCOMB_X59_Y69_N12
\data_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[0]~feeder_combout\ = \DATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[0]~input_o\,
	combout => \data_reg[0]~feeder_combout\);

-- Location: FF_X59_Y69_N13
\data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \data_reg[0]~feeder_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(0));

-- Location: IOIBUF_X58_Y73_N8
\DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(6),
	o => \DATA[6]~input_o\);

-- Location: FF_X59_Y69_N3
\data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[6]~input_o\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(6));

-- Location: LCCOMB_X59_Y69_N2
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (se_r232_tx(3) & (((data_reg(6) & !se_r232_tx(1))))) # (!se_r232_tx(3) & ((data_reg(0)) # ((!se_r232_tx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(0),
	datab => se_r232_tx(3),
	datac => data_reg(6),
	datad => se_r232_tx(1),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X60_Y69_N6
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (se_r232_tx(0) & (se_r232_tx(1) & (data_reg(1)))) # (!se_r232_tx(0) & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => se_r232_tx(1),
	datab => se_r232_tx(0),
	datac => data_reg(1),
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X60_Y69_N18
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~3_combout\) # ((!se_r232_tx(2) & \Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => se_r232_tx(2),
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

ww_R232_TX <= \R232_TX~output_o\;

ww_IDLE <= \IDLE~output_o\;
END structure;


