LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SC IS
	PORT (
		ai, bi, ci: in std_logic;
		si, cout: out std_logic
		);
	END SC;
	
	ARCHITECTURE ARQ_SC OF SC IS
	BEGIN
	
	si <= ci XOR ai XOR bi;
	cout <= (ai AND bi) OR (ai AND ci) OR (bi AND ci);
	
	END ARQ_SC;