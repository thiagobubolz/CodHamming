LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY somador4 IS
	PORT (
		a, b: in std_logic_vector (0 to 3);
		s: out std_logic_vector (0 to 3);
		c3: out std_logic
		);
	END somador4;
	
	ARCHITECTURE ARQ_somador4 OF somador4 IS
	
	SIGNAL c: std_logic_vector (0 to 2);
	
	COMPONENT MS
		PORT (
		a0, b0: in std_logic;
		s0, c1: out std_logic
		);
	END COMPONENT;
	
	COMPONENT SC
		PORT (
		ai, bi, ci: in std_logic;
		si, cout: out std_logic
		);
	END COMPONENT;
	
	BEGIN
		
		SOMA1: MS
			port map(a0 => a(3), b0 => b(3), s0 => s(3), c1 => c(2));
		SOMA2: SC
			port map(ai => a(2), bi => b(2), ci => c(2), si => s(2), cout => c(1));
		SOMA3: SC
			port map (ai => a(1), bi => b(1), ci => c(1), si => s(1), cout => c(0));
		SOMA4: SC
			port map (ai => a(0), bi => b(0), ci => c(0), si => s(0), cout => c3);
			
	END ARQ_somador4;