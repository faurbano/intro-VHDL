--Se describe el comportamiento de las compuertas AND, OR y NOT.
-- A, B son entradas; Yand, Yor, Ynot salidas.
-- Fecha: Diciembre 17 de 2016
-- Versión: 1.0
-- Autor: Fernando Aparicio Urbano-Molano
--********************************************************************
library IEEE;
 use ieee.std_logic_1164.all;
entity compuertas is
	port
	(
		-- Pines Entrada
		A,B	: in  std_logic;

		-- Pines de Salida
		Yand, Yor, Ynot	: out std_logic
	);
end compuertas;
architecture dataflow of compuertas is
begin
   Yand <= A and B;
	Yor <= A or B;
	Ynot <= not A;
end dataflow;