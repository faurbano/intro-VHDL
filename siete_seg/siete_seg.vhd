--***********************************************************************
-- Descripción de un decodificador de binario a siete segmentos usando la 
-- asignación with select.
--    a
--   --
-- f| g| b
--   --
-- e|  | c
--   --
--   d
-- Num es la entrada; Yout es la salida.
-- Fecha: Mayo 15 de 2019
-- Version: 1.0
-- Autor: Fernando Urbano
--********************************************************************
library IEEE;
use ieee.std_logic_1164.all;
entity siete_seg is
	port
	(
		-- Pines de Entrada
		num		: in  std_logic_vector(3 downto 0);
		
		-- Pines de Salida
		Yout	   : out std_logic_vector(6 downto 0)
	);
end siete_seg;
architecture concurrente of siete_seg is
begin
    with num select
	           --abcdefg
	    Yout<=  "1111110" when "0000",
		          "0110000" when "0001",
					    "1101101" when "0010",
					    "1111001" when "0011",
					    "0110011" when "0100",
					    "1011011" when "0101", 
					    "1011111" when "0110",
					    "1110000" when "0111",
					    "1111111" when "1000",
					    "1110011" when "1001", 
					    "1110111" when "1010", 
					    "0011111" when "1011", 
					    "1001110" when "1100", 
					    "0111101" when "1101", 
					    "1001111" when "1110", 
					    "1000111" when others; 
end concurrente;
