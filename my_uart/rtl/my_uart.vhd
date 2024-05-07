LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
LIBRARY WORK;
USE WORK.ALL;

ENTITY MY_UART IS 
PORT(	CLK: IN STD_LOGIC;
		
		-- OPERATIONAL SIGNALS
		SEND: IN STD_LOGIC;
		ARST: IN STD_LOGIC;
		
		-- INPUT AND OUTPUT DATA
		DATA_TXD: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		DATA_RXD: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		-- UART_TX AND UART_RX 
		UART_TXD: OUT STD_LOGIC;
		UART_RXD: IN STD_LOGIC;
		
		-- HANDSHAKE SIGNALS FROM ANOTHER RECIEVER
		RECIEVER_IDLE: IN STD_LOGIC;
		RECIEVER_VALID: IN STD_LOGIC;
		
		-- HANDSHAKE SIGNALS TO ANOTHER TRANSIMITTER
		RXD_IDLE: OUT STD_LOGIC;
		RXD_VALID: OUT STD_LOGIC;
		
		--TX IDLE SIGNAL 
		TXD_IDLE: OUT STD_LOGIC );
END ENTITY;

ARCHITECTURE DATAPATH OF MY_UART IS

	COMPONENT UART_TX IS
	PORT(	DATA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			SEND: IN STD_LOGIC;
			CLK: IN STD_LOGIC;
			ARST: IN STD_LOGIC;
			R232_TX: OUT STD_LOGIC;
			IDLE: OUT STD_LOGIC);
	END COMPONENT;
	
	
	COMPONENT UART_RX IS
	PORT(	R232_RX: IN STD_LOGIC;
			CLK: IN STD_LOGIC;
			ARST: IN STD_LOGIC;
			DATA_IN: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			IDLE: OUT STD_LOGIC;
			IS_VALID: OUT STD_LOGIC);
	END COMPONENT;
	
	
	-- INTERNAL SIGNALS
	signal data_reg: std_logic_vector(7 downto 0);
	signal max_waiting_time_cnt: unsigned(31 downto 0);
	signal max_time: unsigned(31 downto 0);
	
	-- FSM CONTROLLED SIGNAL
	signal en_data_reg: std_logic;
	signal controller_send: std_logic;
	signal max_waiting_time_cnt_arst: std_logic;
	
	-- SIGNAL FED TO FSM
	signal has_error: std_logic;
	signal tx_idle: std_logic;
	signal reaches_max_time: std_logic;
	
	-- CONTROLLER
	type state_type is (	state_idle,
								state_send,
								state_sending,
								state_waiting_handshake,
								state_time_tolerance,
								state_error_detection);
								
	signal current_state: state_type := state_idle;
	signal next_state: state_type;
	
	
BEGIN
	
	-- TXD AND RXD MODULES MAPPING
	TX: UART_TX port map(data_reg, controller_send, CLK, ARST, UART_TXD, tx_idle);
	
	RX: UART_RX port map(UART_RXD, CLK, ARST, DATA_RXD, RXD_IDLE, RXD_VALID);
	
	
	-- INPUT DATA REG
	INPUT_DATA_REGISTER: process(CLK)
	begin
		if rising_edge(CLK) then
			if en_data_reg = '1' then
				data_reg <= DATA_TXD;
			else
				data_reg <= data_reg;
			end if;
		end if;
	end process;
	
	
	-- MAX WAITING TIME COUNTER
	process(CLK, max_waiting_time_cnt_arst)
	begin
		if max_waiting_time_cnt_arst = '1' then
			max_waiting_time_cnt <= (others => '0');
		elsif rising_edge(CLK) then
			max_waiting_time_cnt <= max_waiting_time_cnt + 1;
		end if;
	end process;
	
	process(all)
	begin
		if max_waiting_time_cnt = max_time then
			reaches_max_time <= '1';
		else
			reaches_max_time <= '0';
		end if;
	end process;
	
	
	-- ERROR DETECTION
	has_error <= RECIEVER_IDLE and ( not RECIEVER_VALID );
	
	-- OTHERS
	max_time <= (others => '1');
	
	
	-- FSM
	FSM_LOGIC: process(all)
	begin
		case current_state is 
			when state_idle =>	if SEND = '1' then
											next_state <= state_send;
										else
											next_state <= state_idle;
										end if;
										
			when state_send => next_state <= state_sending;
			
			when state_sending =>	if tx_idle = '1' then
												next_state <= state_waiting_handshake;
											else
												next_state <= state_sending;
											end if;
											
			when state_waiting_handshake =>	if RECIEVER_IDLE = '1' then
															next_state <= state_time_tolerance;
														elsif reaches_max_time = '1' then
															next_state <= state_idle;
														else
															next_state <= state_waiting_handshake;
														end if;
														
			when state_time_tolerance => next_state <= state_error_detection;
														
			when state_error_detection =>	if has_error = '1' then
														next_state <= state_send;
													else
														next_state <= state_idle;
													end if;
													
			when others => next_state <= state_idle;
		
		end case;
	end process;
	
	
	FSM_REGISTER: process(CLK, ARST)
	begin
		if ARST='1' then
			current_state <= state_idle;
		elsif rising_edge(CLK) then
			current_state <= next_state;
		end if;
	end process;
	
	
	FSM_OUTPUT: process(all)
	begin
		case current_state is
			when state_idle =>	en_data_reg <= '1';
										controller_send <= '0';
										max_waiting_time_cnt_arst <= '1';
										TXD_IDLE <= '1';
										
			when state_send =>	en_data_reg <= '0';
										controller_send <= '1';
										max_waiting_time_cnt_arst <= '1';
										TXD_IDLE <= '0';
										
			when state_sending => 	en_data_reg <= '0';
											controller_send <= '0';
											max_waiting_time_cnt_arst <= '1';
											TXD_IDLE <= '0';
											
			when state_waiting_handshake =>	en_data_reg <= '0';
														controller_send <= '0';
														max_waiting_time_cnt_arst <= '0';
														TXD_IDLE <= '0';
														
			when state_time_tolerance =>	en_data_reg <= '0';
													controller_send <= '0';
													max_waiting_time_cnt_arst <= '1';
													TXD_IDLE <= '0';
														
			when state_error_detection =>	en_data_reg <= '0';
													controller_send <= '0';
													max_waiting_time_cnt_arst <= '1';
													TXD_IDLE <= '0';
													
			when others => en_data_reg <= '1';
								controller_send <= '0';
								max_waiting_time_cnt_arst <= '1';
								TXD_IDLE <= '1';
								
		end case;
	end process;
	
END DATAPATH;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	