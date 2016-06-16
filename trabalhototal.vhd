LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY trabalhototal IS
	PORT (
		valor1, valor2 : in std_logic_vector (0 to 3);
		posicao: in std_logic_vector (0 to 2);
		saida_led, overflow: out std_logic;
		saida_seg14unic: out std_logic_vector (0 to 6);
		saida_seg14dezc: out std_logic_vector (0 to 6);
		saida_seg14unir: out std_logic_vector (0 to 6);
		saida_seg14dezr: out std_logic_vector (0 to 6);
		saida_posicao_n: out std_logic_vector (0 to 6)
		);
	END trabalhototal;
	
	ARCHITECTURE ARQ_trabalhototal OF trabalhototal IS
	
	SIGNAL sout: std_logic_vector (0 to 3);
	SIGNAL saida_cods: std_logic_vector (0 to 6);
	SIGNAL n_corrigidos: std_logic_vector (0 to 3);
	SIGNAL posi: std_logic_vector (0 to 2);
	SIGNAL recebido: std_logic_vector (0 to 3);
	SIGNAL saida_erros: std_logic_vector (0 to 6);
	SIGNAL LEDS: std_logic;
	SIGNAL saida_n_posicao: std_logic_vector (0 to 6);
	SIGNAL saidauniseg14_r: std_logic_vector (0 to 6);
	SIGNAL saidadezseg14_r: std_logic_vector (0 to 6);
	SIGNAL saidauniseg14_c: std_logic_vector (0 to 6);
	SIGNAL saidadezseg14_c: std_logic_vector (0 to 6);
	SIGNAL sinalposicaoentrada: std_logic_vector (0 to 2);
	
	COMPONENT somador4
		PORT (
		a, b: in std_logic_vector (0 to 3);
		s: out std_logic_vector (0 to 3);
		c3: out std_logic
		);
	END COMPONENT;
	
	COMPONENT cod_hamming
		PORT (
		entrada_cod: in std_logic_vector (0 to 3);
		saida_cod: out std_logic_vector (0 to 6)
		);
	END COMPONENT;
	
	
	COMPONENT injeta_erro
		PORT (
		posi: in std_logic_vector (0 to 2);
		recebe_cod: in std_logic_vector (0 to 6);
		saida_erro: out std_logic_vector (0 to 6)
		);
	END COMPONENT;
	
	COMPONENT decod_hamming
		PORT (
		entrada_dec: in std_logic_vector (0 to 6);
		n_corrigido: buffer std_logic_vector (0 to 6);
		saida_posicao: out std_logic_vector (0 to 2);
		saida_recebido: out std_logic_vector (0 to 3);
		saida_corrigido: out std_logic_vector (0 to 3);
		LED: out std_logic
		);
	END COMPONENT;
	
	COMPONENT seg7
		PORT (
		entrada_posicao: in std_logic_vector(0 to 2);
		saida_numero_posicao: out std_logic_vector(0 to 6)
		);
	END COMPONENT;
	
	COMPONENT seg14
		PORT (
		entrada_dec: in std_logic_vector(0 to 3);
		saida_uni: out std_logic_vector(0 to 6);
		saida_dez: out std_logic_vector(0 to 6)
		);
	END COMPONENT;
	
	BEGIN
	
		SAIDA1: somador4
			port map(a => valor1, b => valor2, c3 => overflow, s => sout);
		
		SAIDA2: cod_hamming
			port map(entrada_cod => sout, saida_cod => saida_cods);
		
		SAIDA3: injeta_erro
			port map(posi => sinalposicaoentrada, recebe_cod => saida_cods, saida_erro => saida_erros);
			
		SAIDA4: decod_hamming
			port map(entrada_dec => saida_erros, saida_posicao => posi, saida_corrigido => n_corrigidos, saida_recebido => recebido , LED => LEDS);
		
		SAIDA5: seg14
			port map(entrada_dec => recebido, saida_uni => saidauniseg14_r, saida_dez => saidadezseg14_r);
		
		SAIDA6: seg14
			port map(entrada_dec => n_corrigidos, saida_uni => saidauniseg14_c, saida_dez => saidadezseg14_c);
			
		SAIDA7: seg7
			port map(entrada_posicao => posi, saida_numero_posicao => saida_n_posicao);
			
		sinalposicaoentrada <= posicao;
		saida_led <= LEDS;
		saida_seg14unir <= saidauniseg14_r;
		saida_seg14dezr <= saidadezseg14_r;
		saida_seg14unic <= saidauniseg14_c; 
		saida_seg14dezc <= saidadezseg14_c;
		saida_posicao_n <= saida_n_posicao;
			
	END ARQ_trabalhototal;