--***********************************************************************
-- Descripción de un multiplexor de 4 a 1 usando la sintaxis with select
-- X, Y, Z, W son entradas; Sel, la línea de selección; Y es salida.
-- Fecha: Marzo 21 de 2019
-- Version: 1.0
-- Autor: Fernando Aparicio Urbano-Molano
--********************************************************************
library IEEE;
use ieee.std_logic_1164.all;
entity mux4a1 is
	port
	(
		-- Pines de Entrada
		W, X, Y, Z	: in  std_logic;
		Sel         : in  std_logic_vector(1 downto 0);   

		-- Pines de Salida
		Yout	: out std_logic
	);
end mux4a1;
architecture concurrente of mux4a1 is
begin
   with sel select
      Yout <= W when "00",
		          X when "01",
				      Y when "10",
				      Z when others;
end concurrente;