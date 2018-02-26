--********************************************************************
-- Descripción de un multiplexor de 2 a 1 usando compuertas
-- X, Y son entradas; Sel, la línea de selección; Y es salida.
-- Fecha: Febrero 8 de 2018
-- Version: 1.0
-- Autor: Fernando Aparicio Urbano-Molano
--********************************************************************
library IEEE;
use ieee.std_logic_1164.all;
entity mux2a1A is
	port
	(
		-- Pines de Entrada
		X, Y	: in  std_logic;
		Sel   : in  std_logic;   

		-- Pines de Salida
		Yout	: out std_logic
	);
end mux2a1A;
architecture dataflow of mux2a1A is
begin
   Yout <= (not Sel and X) or (Sel and Y) ;
end dataflow;