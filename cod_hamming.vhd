LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY cod_hamming IS
	PORT (
		entrada_cod: in std_logic_vector (0 to 3);
		saida_cod: out std_logic_vector (0 to 6)
		);
	END cod_hamming;
	
	ARCHITECTURE ARQ_cod_hamming OF cod_hamming IS
	
	BEGIN
	
	saida_cod(0) <= entrada_cod(0) xor entrada_cod(1) xor entrada_cod(3);
	saida_cod(1) <= entrada_cod(0) xor entrada_cod(2) xor entrada_cod(3);
	saida_cod(2) <= entrada_cod(0);
	saida_cod(3) <= entrada_cod(1) xor entrada_cod(2) xor entrada_cod(3);
	saida_cod(4) <= entrada_cod(1);
	saida_cod(5) <= entrada_cod(2);
	saida_cod(6) <= entrada_cod(3);
	
	END ARQ_cod_hamming;