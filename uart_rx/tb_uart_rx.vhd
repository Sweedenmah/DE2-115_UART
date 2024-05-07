LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
LIBRARY WORK;
USE WORK.ALL;

ENTITY TB_UART_RX IS
END ENTITY;

ARCHITECTURE TEST OF TB_UART_RX IS
	
	COMPONENT UART_RX IS
	PORT(	R232_RX: IN STD_LOGIC;
			CLK: IN STD_LOGIC;
			ARST: IN STD_LOGIC;
			DATA_IN: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			IDLE: OUT STD_LOGIC;
			IS_VALID: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL CLK: STD_LOGIC:='0';
	SIGNAL R232_RX: STD_LOGIC;
	SIGNAL ARST:STD_LOGIC;
	SIGNAL DATA_IN:STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL IDLE: STD_LOGIC;
	SIGNAL IS_VALID: STD_LOGIC;
	
	CONSTANT PERIOD: TIME:= 10 NS;
	
BEGIN

	DUT: UART_RX PORT MAP(R232_RX, CLK, ARST, DATA_IN, IDLE, IS_VALID);
	
	CLK <= NOT CLK AFTER PERIOD;
	
	PROCESS IS
	BEGIN
		
		ARST <= '0';
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 220000 NS;
		
		-- next message
		-- parity bit wrong
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 220000 NS;
		
		-- next message
		-- parity done wrong
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '1';
		WAIT FOR 104160 NS;
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		
		R232_RX <= '0';
		WAIT FOR 104160 NS;
		
		R232_RX <= '0';
		WAIT FOR 220000 NS;
		
		
		
	END PROCESS;
END TEST;
