LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY seg7 IS
  PORT(
  entrada_posicao: in std_logic_vector(0 to 2);
  saida_numero_posicao: out std_logic_vector(0 to 6)
  );
end seg7;

architecture arq_seg7 of seg7 is
begin 
  with entrada_posicao select
  
  saida_numero_posicao <= "1001111" when "001",
								  "0010010" when "010",
								  "0000110" when "011",
								  "1001100" when "100",
								  "0100100" when "101",
								  "0100000" when "110",
								  "0001111" when "111",     
								  "0000001" when others;
       
end arq_seg7;