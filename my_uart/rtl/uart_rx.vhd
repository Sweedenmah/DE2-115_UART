LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
LIBRARY WORK;
USE WORK.ALL;

ENTITY UART_RX IS
PORT(	R232_RX: IN STD_LOGIC;
		CLK: IN STD_LOGIC;
		ARST: IN STD_LOGIC;
		DATA_IN: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		IDLE: OUT STD_LOGIC;
		IS_VALID: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE DATAPATH OF UART_RX IS
	
	-- INTERNAL SIGNALS 
	signal uart_rx_t: std_logic;
	signal uart_rx_t1: std_logic;
	signal uart_rx_t2: std_logic;
	
	signal baud_cnt: unsigned(31 downto 0);
	signal baud_rst: std_logic;
	
	signal bit_cnt: unsigned(3 downto 0);
	
	signal parity_cnt_en_incr: std_logic;
	signal parity_cnt: unsigned(3 downto 0);
	signal parity_cnt_std: std_logic_vector(3 downto 0);
	signal recieved_parity_bit: std_logic;
	
	signal decoder_out: std_logic_vector(7 downto 0);
	signal en_data_reg_bus: std_logic_vector(7 downto 0);
	
	signal data_sample_cnt: unsigned(31 downto 0);
	
	signal parity_valid: std_logic;
	
	signal stop_bit: std_logic;
	
	signal DATA: std_logic_vector(7 downto 0);
	signal data_reg: std_logic_vector(7 downto 0);
	
	signal en_d0_reg: std_logic;
	signal en_d1_reg: std_logic;
	signal en_d2_reg: std_logic;
	signal en_d3_reg: std_logic;
	signal en_d4_reg: std_logic;
	signal en_d5_reg: std_logic;
	signal en_d6_reg: std_logic;
	signal en_d7_reg: std_logic;
	
	-- FSM CONTROLLED SIGNALS
	signal en_baud_cnt: std_logic;
	signal baud_arst: std_logic;
	
	signal en_bit_cnt: std_logic;
	signal bit_cnt_arst: std_logic;
	
	signal en_parity_cnt: std_logic;
	signal parity_cnt_arst: std_logic;
	signal en_parity_reg: std_logic;
	
	signal en_decoder: std_logic;
	signal output_arst: std_logic;
	
	signal en_data_sample_cnt: std_logic;
	signal data_sample_cnt_arst: std_logic;
	
	signal en_stop_bit_reg: std_logic;
	
	signal done: std_logic;
	
	signal en_all_data_reg: std_logic;
	
	-- SIGNALS FED TO SIGNAL
	signal start: std_logic;
	signal baud_ready: std_logic;
	signal sampling_ready: std_logic;
	signal stop: std_logic;
	
	
	-- FSM STATE
	type state_type is (	state_idle,
								state_start,
								state_data_frame, -- incr bit cnt
								state_sample_data, -- error tolerance
								state_update_parity, -- update parity cnt
								state_wait, -- baud rate
								state_sample_parity, -- error in tolerance
								state_parity_check, -- sample parity bit from input
								state_wait_done, -- baud rate
								state_sample_stop_bit,
								state_stop_bit_check, 
								state_wait_idle, -- wait and check for stop bit
								state_update_data, -- only gonna update data when input is valid
								state_arst);
								
	signal current_state: state_type:=state_idle;
	signal next_state: state_type;
	
BEGIN

	-- OUTPUT DATA REGISTER
	OUTPUT_DATA_REG: process(CLK)
	begin
		if rising_edge(CLK) then
			if en_all_data_reg = '1' then
				data_reg <= DATA;
			else
				data_reg <= data_reg;
			end if;
		end if;
	end process;
	
	DATA_IN <= data_reg;
			
	
	-- RX STABLE REG
	R232_RX_REG: process(CLK)
	begin
		if rising_edge(CLK) then
			uart_rx_t <= R232_RX;
			uart_rx_t1 <= uart_rx_t;
			uart_rx_t2 <= uart_rx_t1;
		end if;
	end process;
	
	start <= (not uart_rx_t1) and (uart_rx_t2);
	
	
	-- BAUD GENERATOR
	BAULD_COUNTER: process(CLK,baud_arst)
	begin
		if baud_arst = '1' then
			baud_cnt <= (others => '0');
		elsif rising_edge(CLK) then
			if baud_rst = '1' then
				baud_cnt <= (others => '0');
			elsif en_baud_cnt = '1' then
				baud_cnt <= baud_cnt + 1;
			else
				baud_cnt <= baud_cnt;
			end if;
		end if;
	end process;
	
	process(all)
	begin
		if baud_cnt = to_unsigned(5207,32) then
			baud_rst <= '1';
		else
			baud_rst <= '0';
		end if;
	end process;
	
	process(all)
	begin
		if baud_cnt = to_unsigned(5207,32) then
			baud_ready <= '1';
		else
			baud_ready <= '0';
		end if;
	end process;
	
	-- SAMPLING TIME COUNTER
	process(CLK, data_sample_cnt_arst)
	begin
		if data_sample_cnt_arst = '1' then
			data_sample_cnt <= (others => '0');
		elsif rising_edge(CLK) then
			if en_data_sample_cnt = '1' then
				data_sample_cnt <= data_sample_cnt + 1;
			else
				data_sample_cnt <= data_sample_cnt;
			end if;
		end if;
	end process;
	
	process(all)
	begin
		if data_sample_cnt = to_unsigned(104,32) then
			sampling_ready <= '1';
		else
			sampling_ready <= '0';
		end if;
	end process;
			
	
	
	-- BIT COUNTER
	BIT_COUNTER: process(clk, bit_cnt_arst)
	begin
		if bit_cnt_arst = '1' then
			bit_cnt <= (others => '0');
		elsif rising_edge(CLK) then
			if en_bit_cnt = '1' then
				bit_cnt <= bit_cnt + 1;
			else
				bit_cnt <= bit_cnt;
			end if;
		end if;
	end process;
	
	process(all)
	begin
		if bit_cnt = to_unsigned(8,4) then
			stop <= '1';
		else
			stop <= '0';
		end if;
	end process;
	
	
	--PARITY BIT CHECK
	PARITY_COUNTER: process(CLK, parity_cnt_arst)
	begin
		if parity_cnt_arst = '1' then
			parity_cnt <= (others => '0');
		elsif rising_edge(CLK) then
			if uart_rx_t2='1' and en_parity_cnt='1' then
				parity_cnt <= parity_cnt + 1;
			else
				parity_cnt <= parity_cnt;
			end if;
		end if;
	end process;
	
	PARITY_REGISTER: process(CLK)
	begin
		if rising_edge(CLK) then
			if en_parity_reg = '1' then
				recieved_parity_bit <= uart_rx_t2;
			else
				recieved_parity_bit <= recieved_parity_bit;
			end if;
		end if;
	end process;
	parity_cnt_std <= std_logic_vector(parity_cnt);
	parity_valid <= not(recieved_parity_bit xor parity_cnt_std(0));
	
	
	-- STOP BIT CHECK
	process(CLK)
	begin
		if rising_edge(CLK) then
			if en_stop_bit_reg = '1' then
				stop_bit <= uart_rx_t2;
			else
				stop_bit <= stop_bit;
			end if;
		end if;
	end process;
	
	
	-- VALID CHECK
	IS_VALID <= parity_valid and done and stop_bit;
	IDLE <= done;
	
	-- DATA OUTPUT SELECT
	DECODER: process(all)
	begin
		case bit_cnt is 
			when "0001" => decoder_out <= "00000001";
			when "0010" => decoder_out <= "00000010";
			when "0011" => decoder_out <= "00000100";
			when "0100" => decoder_out <= "00001000";
			when "0101" => decoder_out <= "00010000";
			when "0110" => decoder_out <= "00100000";
			when "0111" => decoder_out <= "01000000";
			when "1000" => decoder_out <= "10000000";
			when others => decoder_out <= "00000000";
		end case;
	end process;
	
	SE_DATA_BUS_MUX: process(all)
	begin
		if en_decoder = '1' then
			en_data_reg_bus <= decoder_out;
		else
			en_data_reg_bus <= (others => '0');
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(0) <= '0';
		elsif rising_edge(CLK) then
			if en_d0_reg = '1' then
				DATA(0) <= uart_rx_t2;
			else
				DATA(0) <= DATA(0);
			end if;
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(1) <= '0';
		elsif rising_edge(CLK) then
			if en_d1_reg = '1' then
				DATA(1) <= uart_rx_t2;
			else
				DATA(1) <= DATA(1);
			end if;
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(2) <= '0';
		elsif rising_edge(CLK) then
			if en_d2_reg = '1' then
				DATA(2) <= uart_rx_t2;
			else
				DATA(2) <= DATA(2);
			end if;
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(3) <= '0';
		elsif rising_edge(CLK) then
			if en_d3_reg = '1' then
				DATA(3) <= uart_rx_t2;
			else
				DATA(3) <= DATA(3);
			end if;
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(4) <= '0';
		elsif rising_edge(CLK) then
			if en_d4_reg = '1' then
				DATA(4) <= uart_rx_t2;
			else
				DATA(4) <= DATA(4);
			end if;
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(5) <= '0';
		elsif rising_edge(CLK) then
			if en_d5_reg = '1' then
				DATA(5) <= uart_rx_t2;
			else
				DATA(5) <= DATA(5);
			end if;
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(6) <= '0';
		elsif rising_edge(CLK) then
			if en_d6_reg = '1' then
				DATA(6) <= uart_rx_t2;
			else
				DATA(6) <= DATA(6);
			end if;
		end if;
	end process;
	
	process(CLK, output_arst)
	begin
		if output_arst = '1' then
			DATA(7) <= '0';
		elsif rising_edge(CLK) then
			if en_d7_reg = '1' then
				DATA(7) <= uart_rx_t2;
			else
				DATA(7) <= DATA(7);
			end if;
		end if;
	end process;
	
	en_d7_reg <= en_data_reg_bus(7);
	en_d6_reg <= en_data_reg_bus(6);
	en_d5_reg <= en_data_reg_bus(5);
	en_d4_reg <= en_data_reg_bus(4);
	en_d3_reg <= en_data_reg_bus(3);
	en_d2_reg <= en_data_reg_bus(2);
	en_d1_reg <= en_data_reg_bus(1);
	en_d0_reg <= en_data_reg_bus(0);
	
	
	--FSM
	FSM_LOGIC: process(all)
	begin
		case current_state is
			when state_idle =>	if start = '1' then
											next_state <= state_start;
										else
											next_state <= state_idle;
										end if;
										
			when state_start =>	if baud_ready = '1' then
											next_state <= state_data_frame;
										else
											next_state <= state_start;
										end if;
										
			when state_data_frame => next_state <= state_sample_data;
											
			when state_sample_data =>	if sampling_ready = '1' then
													next_state <= state_update_parity;
												else	
													next_state <= state_sample_data;
												end if;
												
			when state_update_parity => next_state <= state_wait;
												
			when state_wait =>	if baud_ready = '1' then
											if stop = '1' then
												next_state <= state_sample_parity;
											else
												next_state <= state_data_frame;
											end if;
										else
											next_state <= state_wait;
										end if;
										
			when state_sample_parity =>	if sampling_ready = '1' then
														next_state <= state_parity_check;
													else
														next_state <= state_sample_parity;
													end if;
													
			when state_parity_check => next_state <= state_wait_done;
			
			when state_wait_done =>	if baud_ready = '1' then
												next_state <= state_sample_stop_bit;
											else
												next_state <= state_wait_done;
											end if;
											
			when state_sample_stop_bit =>	if sampling_ready = '1' then
														next_state <= state_stop_bit_check;
													else
														next_state <= state_sample_stop_bit;
													end if;
													
			when state_stop_bit_check =>	next_state <= state_wait_idle;
											
			when state_wait_idle =>	if baud_ready = '1' then
												if (parity_valid and stop_bit) = '1' then
													next_state <= state_update_data;
												else
													next_state <= state_idle;
												end if;
											else
												next_state <= state_wait_idle;
											end if;
											
			when state_update_data => next_state <= state_idle;
												
			when state_arst => next_state <= state_idle;
			
			when others => next_state <= state_idle;
			
		end case;
	end process;
	
	
	FSM_REG: process(CLK, ARST)
	begin
		if ARST = '1' then
			current_state <= state_arst;
		elsif rising_edge(clk) then
			current_state <= next_state;
		end if;
	end process;
	
	
	FSM_OUTPUT: process(all)
	begin
		case current_state is
			when state_idle =>	en_baud_cnt <= '0';
										baud_arst <= '1';
										
										en_bit_cnt <= '0';
										bit_cnt_arst <= '1';
										
										en_parity_cnt <= '0';
										parity_cnt_arst <= '0';
										en_parity_reg <= '0';
										
										en_decoder <= '0';
										output_arst <= '0';
										
										en_data_sample_cnt <= '0';
										data_sample_cnt_arst <= '1';
										
										done <= '1';
										
			when state_start =>	en_baud_cnt <= '1';
										baud_arst <= '0';
										
										en_bit_cnt <= '0';
										bit_cnt_arst <= '0';
										
										en_parity_cnt <= '0';
										parity_cnt_arst <= '1';
										en_parity_reg <= '0';
										
										en_decoder <= '0';
										output_arst <= '1';
										
										en_data_sample_cnt <= '0';
										data_sample_cnt_arst <= '0';
										
										done <= '0';
										
			when state_data_frame => 	en_baud_cnt <= '1';
												baud_arst <= '0';
											
												en_bit_cnt <= '1';
												bit_cnt_arst <= '0';
												
												en_parity_cnt <= '0';
												parity_cnt_arst <= '0';
												en_parity_reg <= '0';
												
												en_decoder <= '0';
												output_arst <= '0';
												
												en_data_sample_cnt <= '1';
												data_sample_cnt_arst <= '0';
												
												done <= '0';
												
			when state_sample_data => 	en_baud_cnt <= '1';
												baud_arst <= '0';
											
												en_bit_cnt <= '0';
												bit_cnt_arst <= '0';
												
												en_parity_cnt <= '0';
												parity_cnt_arst <= '0';
												en_parity_reg <= '0';
												
												en_decoder <= '1';
												output_arst <= '0';
												
												en_data_sample_cnt <= '1';
												data_sample_cnt_arst <= '0';
												
												done <= '0';
												
			when state_update_parity =>	en_baud_cnt <= '1';
													baud_arst <= '0';
											
													en_bit_cnt <= '0';
													bit_cnt_arst <= '0';
												
													en_parity_cnt <= '1';
													parity_cnt_arst <= '0';
													en_parity_reg <= '0';
												
													en_decoder <= '0';
													output_arst <= '0';
												
													en_data_sample_cnt <= '0';
													data_sample_cnt_arst <= '1';
												
													done <= '0';
			
			when state_wait => 	en_baud_cnt <= '1';
										baud_arst <= '0';
								
										en_bit_cnt <= '0';
										bit_cnt_arst <= '0';
									
										en_parity_cnt <= '0';
										parity_cnt_arst <= '0';
										en_parity_reg <= '0';
									
										en_decoder <= '0';
										output_arst <= '0';
									
										en_data_sample_cnt <= '0';
										data_sample_cnt_arst <= '0';
									
										done <= '0';
										
			when state_sample_parity => 	en_baud_cnt <= '1';
													baud_arst <= '0';
								
													en_bit_cnt <= '0';
													bit_cnt_arst <= '0';
									
													en_parity_cnt <= '0';
													parity_cnt_arst <= '0';
													en_parity_reg <= '0';
									
													en_decoder <= '0';
													output_arst <= '0';
									
													en_data_sample_cnt <= '1';
													data_sample_cnt_arst <= '0';
									
													done <= '0';
													
			when state_parity_check =>		en_baud_cnt <= '1';
													baud_arst <= '0';
								
													en_bit_cnt <= '0';
													bit_cnt_arst <= '0';
									
													en_parity_cnt <= '0';
													parity_cnt_arst <= '0';
													en_parity_reg <= '1';
									
													en_decoder <= '0';
													output_arst <= '0';
									
													en_data_sample_cnt <= '0';
													data_sample_cnt_arst <= '1';
									
													done <= '0';
													
			when state_wait_done =>	en_baud_cnt <= '1';
											baud_arst <= '0';
								
											en_bit_cnt <= '0';
											bit_cnt_arst <= '0';
									
											en_parity_cnt <= '0';
											parity_cnt_arst <= '0';
											en_parity_reg <= '0';
									
											en_decoder <= '0';
											output_arst <= '0';
									
											en_data_sample_cnt <= '0';
											data_sample_cnt_arst <= '1';
									
											done <= '0';
											
			when state_sample_stop_bit =>	en_baud_cnt <= '1';
													baud_arst <= '0';
								
													en_bit_cnt <= '0';
													bit_cnt_arst <= '0';
									
													en_parity_cnt <= '0';
													parity_cnt_arst <= '0';
													en_parity_reg <= '0';
									
													en_decoder <= '0';
													output_arst <= '0';
									
													en_data_sample_cnt <= '1';
													data_sample_cnt_arst <= '0';
									
													done <= '0';
													
			when state_stop_bit_check =>	en_baud_cnt <= '1';
													baud_arst <= '0';
								
													en_bit_cnt <= '0';
													bit_cnt_arst <= '0';
									
													en_parity_cnt <= '0';
													parity_cnt_arst <= '0';
													en_parity_reg <= '0';
									
													en_decoder <= '0';
													output_arst <= '0';
									
													en_data_sample_cnt <= '0';
													data_sample_cnt_arst <= '1';
									
													done <= '0';
											
			when state_wait_idle =>	en_baud_cnt <= '1';
											baud_arst <= '0';
								
											en_bit_cnt <= '0';
											bit_cnt_arst <= '0';
									
											en_parity_cnt <= '0';
											parity_cnt_arst <= '0';
											en_parity_reg <= '0';
									
											en_decoder <= '0';
											output_arst <= '0';
									
											en_data_sample_cnt <= '0';
											data_sample_cnt_arst <= '1';
									
											done <= '0';
											
			when state_update_data => 	en_baud_cnt <= '0';
												baud_arst <= '0';
								
												en_bit_cnt <= '0';
												bit_cnt_arst <= '0';
									
												en_parity_cnt <= '0';
												parity_cnt_arst <= '0';
												en_parity_reg <= '0';
									
												en_decoder <= '0';
												output_arst <= '0';
									
												en_data_sample_cnt <= '0';
												data_sample_cnt_arst <= '1';
										
												done <= '0';
											
			when state_arst =>	en_baud_cnt <= '0';
										baud_arst <= '1';
								
										en_bit_cnt <= '0';
										bit_cnt_arst <= '1';
								
										en_parity_cnt <= '0';
										parity_cnt_arst <= '1';
										en_parity_reg <= '0';
								
										en_decoder <= '0';
										output_arst <= '1';
								
										en_data_sample_cnt <= '0';
										data_sample_cnt_arst <= '1';
								
										done <= '0';
											
			when others => en_baud_cnt <= '0';
								baud_arst <= '1';
								
								en_bit_cnt <= '0';
								bit_cnt_arst <= '1';
								
								en_parity_cnt <= '0';
								parity_cnt_arst <= '0';
								en_parity_reg <= '0';
								
								en_decoder <= '0';
								output_arst <= '0';
								
								en_data_sample_cnt <= '0';
								data_sample_cnt_arst <= '1';
								
								done <= '1';
								
		end case;
	end process;
	
	
	process(all)
	begin
		if current_state = state_stop_bit_check then
			en_stop_bit_reg <= '1';
		else
			en_stop_bit_reg <= '0';
		end if;
	end process;
	
	process(all)
	begin
		if current_state = state_update_data then
			en_all_data_reg <= '1';
		elsif current_state = state_start then
			en_all_data_reg <= '1';
		else
			en_all_data_reg <= '0';
		end if;
	end process;
		
		
		
END DATAPATH;
										
				
	
												
													
					
													
											
		
	
	
	
	
	
	
	
	
	
	
	