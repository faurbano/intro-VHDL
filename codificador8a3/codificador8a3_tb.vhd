--Banco de Pruebas para la funcion logica
library IEEE;
use ieee.std_logic_1164.all;

entity codificador8a3_tb is
end entity;

architecture prueba of codificador8a3_tb is

component codificador8a3 is
	port
	(
		-- Pines de Entrada
		num		: in  std_logic_vector(7 downto 0);
		
		-- Pines de Salida
		GS      : out std_logic;
		Yout	   : out std_logic_vector(2 downto 0)
	);
end component;

-- Declaracion de señales
signal num    : std_logic_vector(7 downto 0) := (others=>'0');
signal GS     : std_logic := '0';
signal Yout   : std_logic_vector(2 downto 0) := "000";


begin
  encoder: codificador8a3  port map(num,GS,Yout);

-- Generacion de estimulos
   num <= "00000001" after 10 ns,"00000010" after 20 ns,"00000100" after 30 ns,"00001000" after 40 ns,"00010000" after 50 ns,"00100000" after 60 ns,"01000000" after 70 ns,"10000000" after 80 ns,"10010001" after 90 ns,"11111001" after 100 ns;
end architecture;