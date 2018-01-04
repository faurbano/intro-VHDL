--********************************************************************
-- Implementacion de funciones logicas usando VHDL
-- X, Y, Z son entradas; F es salida.
-- Fecha: Septiembre 5 de 2017
-- Version: 1.0
-- Autor: Fernando Aparicio Urbano-Molano
--********************************************************************
library IEEE;
use ieee.std_logic_1164.all;
entity funcion_logica is
	port
	(
		-- Pines de Entrada
		X, Y, Z	: in  std_logic;

		-- Pines de Salida
		F	: out std_logic
	);
end funcion_logica;
architecture dataflow of funcion_logica is
begin
   F <= (X and Y) or ((X or Y) and Z);
end dataflow;
