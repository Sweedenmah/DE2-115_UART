LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
LIBRARY WORK;
USE WORK.ALL;

ENTITY UART_TX IS
PORT(	DATA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		SEND: IN STD_LOGIC;
		CLK: IN STD_LOGIC;
		ARST: IN STD_LOGIC;
		R232_TX: OUT STD_LOGIC;
		IDLE: OUT STD_LOGIC);
END ENTITY;


ARCHITECTURE DATAPATH OF UART_TX IS

	-- internal signals
	signal bauld_gen_rst: std_logic;
	signal bauld_gen_cnt: unsigned(31 downto 0);
	
	signal se_r232_tx: unsigned(3 downto 0);
	signal data_tx: std_logic;
	
	signal parity_bit_cnt: unsigned(3 downto 0);
	
	signal data_reg: std_logic_vector(7 downto 0);
	
	-- signal controlled by FSM
	signal en_bauld_cnt: std_logic;
	signal bauld_arst: std_logic;
	
	signal en_parity_cnt: std_logic;
	signal parity_cnt_arst: std_logic;
	
	signal en_bit_cnt: std_logic;
	signal bit_cnt_arst: std_logic;
	
	signal en_data_reg: std_logic;
	
	-- signal feeds to FSM
	signal ready: std_logic;
	signal stop: std_logic;
	
	type STATE_TYPE is (	state_idle, -- idle state
								state_resume_idle,-- to have idle state for one more baud rate 
								state_start, -- ready to send start bit
								state_wait_data_frame, -- sending start bit
								state_data_frame, -- ready to send data bit (still sending start bit)
								state_wait, -- sending data bit
								state_parity_bit, -- ready to send parity bit (still sending data bit)
								state_wait_done, -- sending parity bit
								state_done, -- ready to send done bit (still sending parity bit)
								state_wait_idle, -- sending done bit
								state_ready_idle); -- to synchrnoize the done bit (idle becomes one after done bit been sent for one baud rate)
								
	signal current_state: STATE_TYPE := state_idle;
	signal next_state: STATE_TYPE;
	
begin

	R232_TX <= data_tx;
	
	-- BAULD GENERATOR
	BAULD_COUNTER: process(CLK, bauld_arst)
	begin
		if bauld_arst = '1' then
			bauld_gen_cnt <= (others => '0');
		elsif rising_edge(CLK) then
			if bauld_gen_rst = '1' then
				bauld_gen_cnt <= (others => '0');
			elsif en_bauld_cnt = '1' then
				bauld_gen_cnt <= bauld_gen_cnt + 1;
			else
				bauld_gen_cnt <= bauld_gen_cnt;
			end if;
		end if;
	end process;
	
	process(all)
	begin
		if bauld_gen_cnt = to_unsigned(5207, 32) then
			bauld_gen_rst <= '1';
		else
			bauld_gen_rst <= '0';
		end if;
	end process;
	
	process(all)
	begin
		if bauld_gen_cnt = to_unsigned(5206, 32) then
			ready <= '1';
		else
			ready <= '0';
		end if;
	end process;
	
	
	-- TRANSIMITTER
	TRANSIMITTER: process(all)
	begin
		case se_r232_tx is
			when "0000" => data_tx <= '1';
			when "0001" => data_tx <= '0';
			when "0010" => data_tx <= data_reg(0);
			when "0011" => data_tx <= data_reg(1);
			when "0100" => data_tx <= data_reg(2);
			when "0101" => data_tx <= data_reg(3);
			when "0110" => data_tx <= data_reg(4);
			when "0111" => data_tx <= data_reg(5);
			when "1000" => data_tx <= data_reg(6);
			when "1001" => data_tx <= data_reg(7);
			when "1010" => data_tx <= parity_bit_cnt(0);
			when "1011" => data_tx <= '1';
			when others => data_tx <= '1';
		end case;
	end process;
	
	
	-- PARITY BIT GENERATOR
	PARITY_BIT_COUNTER: process(CLK, parity_cnt_arst)
	begin
		if parity_cnt_arst = '1' then
			parity_bit_cnt <= (others => '0');
		elsif rising_edge(CLK) then
			if (en_parity_cnt and data_tx) = '1' then
				parity_bit_cnt <= parity_bit_cnt + 1;
			else
				parity_bit_cnt <= parity_bit_cnt;
			end if;
		end if;
	end process; 
	
	
	-- BIT_COUNTER
	BIT_COUNTER: process(CLK, bit_cnt_arst)
	begin
		if bit_cnt_arst = '1' then
			se_r232_tx <= (others => '0');
		elsif rising_edge(CLK) then
			if en_bit_cnt = '1' then
				se_r232_tx <= se_r232_tx + 1;
			else
				se_r232_tx <= se_r232_tx;
			end if;
		end if;
	end process;
	
	process(all)
	begin
		if se_r232_tx = to_unsigned(9,4) then
			stop <= '1';
		else
			stop <= '0';
		end if;
	end process;
	
	
	-- DATA_REG
	DATA_REGISTER: process(CLK)
	begin
		if rising_edge(CLK) then
			if en_data_reg = '1' then
				data_reg <= DATA;
			else
				data_reg <= data_reg;
			end if;
		end if;
	end process;
	
	-- FSM
	FSM_LOGIC: process(all)
	begin	
		case current_state is 
			when state_idle =>	if SEND = '1' then
											next_state <= state_resume_idle;
										else
											next_state <= state_idle;
										end if;
										
			when state_resume_idle =>	if ready = '1' then
													next_state <= state_start;
												else
													next_state <= state_resume_idle;
												end if;
										
			when state_start =>	next_state <= state_wait_data_frame;
			
			when state_wait_data_frame =>	if ready = '1' then
														next_state <= state_data_frame;
													else
														next_state <= state_wait_data_frame;
													end if;
			
			when state_data_frame => next_state <= state_wait;
			
			when state_wait =>	if ready = '0' then
											next_state <= state_wait;
										else
											if stop = '1' then
												next_state <= state_parity_bit;
											else
												next_state <= state_data_frame;
											end if;
										end if;
										
			when state_parity_bit => next_state <= state_wait_done;
			
			when state_wait_done =>	if ready = '1' then
												next_state <= state_done;
											else
												next_state <= state_wait_done;
											end if;
											
			when state_done => next_state <= state_wait_idle;
			
			when state_wait_idle =>	if ready = '1' then
												next_state <= state_ready_idle;
											else
												next_state <= state_wait_idle;
											end if;
											
			when state_ready_idle => next_state <= state_idle;
											
			when others => next_state <= state_idle;
		
		end case;
	end process;
	
	
	FSM_REG: process(CLK, ARST)
	begin
		if ARST = '1' then
			current_state <= state_idle;
		elsif rising_edge(CLK) then
			current_state <= next_state;
		end if;
	end process;
	
	
	FSM_OUTPUT: process(all)
	begin
		case current_state is
		
			when state_idle =>	en_bauld_cnt <= '0';
										bauld_arst <= '1';
										
										en_parity_cnt <= '0';
										parity_cnt_arst <= '1';
										
										en_bit_cnt <= '0';
										bit_cnt_arst <= '1';
										
										en_data_reg <= '1';
														
										IDLE <= '1';
										
			when state_resume_idle =>	en_bauld_cnt <= '1';
												bauld_arst <= '0';
										
												en_parity_cnt <= '0';
												parity_cnt_arst <= '1';
										
												en_bit_cnt <= '0';
												bit_cnt_arst <= '1';
										
												en_data_reg <= '0';
														
												IDLE <= '0';
										
			when state_start =>	en_bauld_cnt <= '0';
										bauld_arst <= '0';
										
										en_parity_cnt <= '0';
										parity_cnt_arst <= '0';
										
										en_bit_cnt <= '1';
										bit_cnt_arst <= '0';
										
										en_data_reg <= '0';
														
										IDLE <= '0';
										
			when state_wait_data_frame =>	en_bauld_cnt <= '1';
													bauld_arst <= '0';
													
													en_parity_cnt <= '0';
													parity_cnt_arst <= '0';
													
													en_bit_cnt <= '0';
													bit_cnt_arst <= '0';
													
													en_data_reg <= '0';
																	
													IDLE <= '0';
													
			when state_data_frame => 	en_bauld_cnt <= '1';
												bauld_arst <= '0';
													
												en_parity_cnt <= '1';
												parity_cnt_arst <= '0';
												
												en_bit_cnt <= '1';
												bit_cnt_arst <= '0';
												
												en_data_reg <= '0';
																
												IDLE <= '0';
												
			when state_wait =>	en_bauld_cnt <= '1';
										bauld_arst <= '0';
										
										en_parity_cnt <= '0';
										parity_cnt_arst <= '0';
										
										en_bit_cnt <= '0';
										bit_cnt_arst <= '0';
										
										en_data_reg <= '0';
														
										IDLE <= '0';
										
			when state_parity_bit =>	en_bauld_cnt <= '1';
												bauld_arst <= '0';
										
												en_parity_cnt <= '1';
												parity_cnt_arst <= '0';
												
												en_bit_cnt <= '1';
												bit_cnt_arst <= '0';
												
												en_data_reg <= '0';
																
												IDLE <= '0';
												
			when state_wait_done => en_bauld_cnt <= '1';
											bauld_arst <= '0';
										
											en_parity_cnt <= '0';
											parity_cnt_arst <= '0';
											
											en_bit_cnt <= '0';
											bit_cnt_arst <= '0';
											
											en_data_reg <= '0';
															
											IDLE <= '0';
											
			when state_done =>	en_bauld_cnt <= '1';
										bauld_arst <= '0';
									
										en_parity_cnt <= '0';
										parity_cnt_arst <= '0';
										
										en_bit_cnt <= '1';
										bit_cnt_arst <= '0';
										
										en_data_reg <= '0';
														
										IDLE <= '0';
										
			when state_wait_idle =>	en_bauld_cnt <= '1';
											bauld_arst <= '0';
										
											en_parity_cnt <= '0';
											parity_cnt_arst <= '0';
											
											en_bit_cnt <= '0';
											bit_cnt_arst <= '0';
											
											en_data_reg <= '0';
															
											IDLE <= '0';
											
			when state_ready_idle => 	en_bauld_cnt <= '0';
												bauld_arst <= '1';
								
												en_parity_cnt <= '0';
												parity_cnt_arst <= '1';
												
												en_bit_cnt <= '0';
												bit_cnt_arst <= '1';
												
												en_data_reg <= '1';
																
												IDLE <= '0';
																						
			when others => en_bauld_cnt <= '0';
								bauld_arst <= '1';
								
								en_parity_cnt <= '0';
								parity_cnt_arst <= '1';
								
								en_bit_cnt <= '0';
								bit_cnt_arst <= '1';
								
								en_data_reg <= '1';
												
								IDLE <= '1';
								
		end case;
	end process;
		
	
	
end DATAPATH;
	
	
			
				
		