LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY injeta_erro IS
	PORT (
		posi: in std_logic_vector (0 to 2);
		recebe_cod: in std_logic_vector (0 to 6);
		saida_erro: out std_logic_vector (0 to 6)
		);
	END injeta_erro;
	
	ARCHITECTURE ARQ_injeta_erro OF injeta_erro IS
	
	SIGNAL sinal_injetor: std_logic_vector (0 to 6);
	
	BEGIN
	
	with posi select
	
sinal_injetor <= 
			"0000001" when "111",
			"0000010" when "110",
		   "0000100" when "101",
		   "0001000" when "100",
		   "0010000" when "011",
		   "0100000" when "010",
		   "1000000" when "001",
		   "0000000" when others;
	
		saida_erro <= sinal_injetor XOR recebe_cod; 
		
	END ARQ_injeta_erro;