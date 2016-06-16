LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MS IS
	PORT (
		a0, b0: in std_logic;
		s0, c1: out std_logic
		);
	END MS;
	
	ARCHITECTURE ARQ_MS OF MS IS
	BEGIN
	
	s0 <= a0 XOR b0;
	c1 <= a0 AND b0;
	
	END ARQ_MS;