--***********************************************************************
-- Descripcion de un codificador de 8 a 3 usando la asignación with select
-- Num es la entrada; Yout es la salida.
-- Fecha: Mayo 9 de 2019
-- Version: 1.0
-- Autor: Fernando Urbano
--********************************************************************
library IEEE;
use ieee.std_logic_1164.all;
entity codificador8a3 is
	port
	(
		-- Pines de Entrada
		num		: in  std_logic_vector(7 downto 0);
		
		-- Pines de Salida
		GS       : out std_logic;
		Yout	   : out std_logic_vector(2 downto 0)
	);
end codificador8a3;
architecture concurrente of codificador8a3 is
	signal temp: std_logic_vector(3 downto 0) := (others => '0');
begin
    with num select
	    temp <= "0000" when "00000001",
		          "0001" when "00000010",
					    "0010" when "00000100",
					    "0011" when "00001000",
					    "0100" when "00010000",
					    "0101" when "00100000",
					    "0110" when "01000000",
					    "0111" when "10000000",
					    "1000" when others;
	 GS <= temp(3);
	 Yout <= temp(2 downto 0);
end concurrente;
