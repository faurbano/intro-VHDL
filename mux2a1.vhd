--***********************************************************************
-- Descripción de un multiplexor de 2 a 1 usando la sintaxis when else
-- X, Y son entradas; Sel, la línea de selección; Y es salida.
-- Fecha: Febrero 20 de 2019
-- Version: 1.0
-- Autor: Fernando Aparicio Urbano-Molano
--********************************************************************
library IEEE;
use ieee.std_logic_1164.all;
entity mux2a1 is
	port
	(
		-- Pines de Entrada
		X, Y	: in  std_logic;
		Sel   : in  std_logic;   

		-- Pines de Salida
		Yout	: out std_logic
	);
end mux2a1;
architecture dataflow of mux2a1 is
begin
   Yout <= Y when sel = '1' else X ;
end dataflow;