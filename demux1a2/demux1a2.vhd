--***********************************************************************
-- Descripción de un demultiplexor de 1 a 2 usando la sintaxis when else
-- X es la entradas Sel, la línea de selección; Y0 y Y1 salidas.
-- Fecha: Abril 8 de 2019
-- Version: 1.0
-- Autor: Fernando Urbano
--********************************************************************
library IEEE;
use ieee.std_logic_1164.all;
entity demux1a2 is
	port
	(
		-- Pines de Entrada
		X  	: in  std_logic;
		Sel   : in  std_logic;   

		-- Pines de Salida
		Y1,Y0	: out std_logic
	);
end demux1a2;
architecture concurrente of demux1a2 is
begin
   Y1 <= X when sel = '1' else '0';
	Y0 <= X when sel = '0' else '0';
end concurrente;