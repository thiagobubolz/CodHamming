LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY seg14 IS
  PORT(
  entrada_dec: in std_logic_vector(0 to 3);
  saida_uni: out std_logic_vector(0 to 6);
  saida_dez: out std_logic_vector(0 to 6)
  );
end seg14;

architecture arq_seg14 of seg14 is

SIGNAL s_uni: std_logic_vector(0 to 6);
SIGNAL s_dez: std_logic_vector(0 to 6);

begin 
  with entrada_dec select
  
  s_uni <=  "1001111" when "0001",
				"1001111" when "1011",
				"0010010" when "0010",
				"0010010" when "1100",
				"0000110" when "0011",
				"0000110" when "1101",
				"1001100" when "0100",
				"1001100" when "1110",
				"0100100" when "0101",
				"0100100" when "1111",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0000100" when "1001",
				"0000001" when others;
		  
		with entrada_dec select
		
  s_dez <=  "1001111" when "1010",
				"1001111" when "1011",
				"1001111" when "1100",
				"1001111" when "1101",
				"1001111" when "1110",
				"1001111" when "1111",
				"0000001" when others;
				
		saida_uni <= s_uni;
		saida_dez <= s_dez;
end arq_seg14;