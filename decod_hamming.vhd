LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY decod_hamming IS
	PORT (
		entrada_dec: in std_logic_vector (0 to 6);
		n_corrigido: buffer std_logic_vector (0 to 6);
		saida_posicao: out std_logic_vector (0 to 2);
		saida_recebido: out std_logic_vector (0 to 3);
		saida_corrigido: out std_logic_vector (0 to 3);
		LED: out std_logic
		);
	END decod_hamming;
	
	ARCHITECTURE ARQ_decod_hamming OF decod_hamming IS
	
	SIGNAL bit_troca: std_logic_vector (0 to 6);
	SIGNAL posicao: std_logic_vector (0 to 2);
	SIGNAL n_recebido: std_logic_vector (0 to 3);
	
	BEGIN
	
	n_recebido(0) <= entrada_dec(2);
	n_recebido(1) <= entrada_dec(4);
	n_recebido(2) <= entrada_dec(5);
	n_recebido(3) <= entrada_dec(6);
	
	posicao(0) <= entrada_dec(3) XOR entrada_dec(4) XOR entrada_dec(5) XOR entrada_dec(6);
	posicao(1) <= entrada_dec(1) XOR entrada_dec(2) XOR entrada_dec(5) XOR entrada_dec(6);
	posicao(2) <= entrada_dec(0) XOR entrada_dec(2) XOR entrada_dec(4) XOR entrada_dec(6);
	
	with posicao select
	
	LED <= '0' when "000",
			 '1' when others;
	
	with posicao select
	
	bit_troca <= "1000000" when "001",
					 "0100000" when "010",
					 "0010000" when "011",
					 "0001000" when "100",
					 "0000100" when "101",
					 "0000010" when "110",
					 "0000001" when "111",
					 "0000000" when others;
	
	n_corrigido <= bit_troca XOR entrada_dec;
	saida_corrigido(0) <= n_corrigido(2);
	saida_corrigido(1) <= n_corrigido(4);
	saida_corrigido(2) <= n_corrigido(5);
	saida_corrigido(3) <= n_corrigido(6);
	
	saida_posicao <= posicao;
	saida_recebido <= n_recebido;
	
		
	END ARQ_decod_hamming;