LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
LIBRARY WORK;
USE WORK.ALL;

-- This test case is for when reciever didnt recieve correct message

ENTITY TB2_MY_UART IS
END ENTITY;

ARCHITECTURE TEST OF TB2_MY_UART IS

	COMPONENT MY_UART IS 
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
	END COMPONENT;
	
	SIGNAL CLK1: STD_LOGIC := '1';
	
	SIGNAL U1_SEND: STD_LOGIC;
	SIGNAL U1_ARST: STD_LOGIC;
	SIGNAL U1_DATA_TXD: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL U1_DATA_RXD: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL U1_UART_TXD: STD_LOGIC;
	SIGNAL U1_UART_RXD: STD_LOGIC;
	SIGNAL U1_RECIEVER_IDLE: STD_LOGIC;
	SIGNAL U1_RECIEVER_VALID: STD_LOGIC;
	SIGNAL U1_RXD_IDLE: STD_LOGIC;
	SIGNAL U1_RXD_VALID: STD_LOGIC;
	SIGNAL U1_TXD_IDLE: STD_LOGIC;
	
	CONSTANT PERIOD: TIME := 10 NS;
	
BEGIN
	
	U1: MY_UART PORT MAP(CLK1, U1_SEND, U1_ARST, U1_DATA_TXD, U1_DATA_RXD, U1_UART_TXD, U1_UART_RXD, U1_RECIEVER_IDLE, U1_RECIEVER_VALID, U1_RXD_IDLE, U1_RXD_VALID, U1_TXD_IDLE);
	
	CLK1 <= NOT CLK1 AFTER PERIOD;
	
	PROCESS IS
	BEGIN
	
		U1_ARST <= '0';
		U1_SEND <= '0';
		
		U1_DATA_TXD <= "10101010";
		WAIT FOR 100 NS;
		U1_SEND <= '1';
		U1_RECIEVER_IDLE <= '1';
		U1_RECIEVER_VALID <= '0';
		WAIT FOR 100 NS;
		U1_SEND <= '0';
		WAIT FOR 1500000 NS;
		U1_DATA_TXD <= "01010101";
		U1_SEND <= '1';
		WAIT FOR 1000 NS;
		U1_SEND <= '0';
		U1_RECIEVER_IDLE <= '1';
		U1_RECIEVER_VALID <= '1';
		WAIT FOR 1500000 NS;
		
	END PROCESS;
END TEST;
	
	
	