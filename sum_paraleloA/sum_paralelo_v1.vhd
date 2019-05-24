--***********************************************************************
-- Descripción de un sumador en paralelo usando arquitectura concurrente 
-- A y B son las entradas de cuatro bits; Cout, es el acarreo de salida
-- y Resul es la suma.
-- Fecha: Mayo 24 de 2019
-- Version: 1.0
-- Autor: Fernando Urbano
--********************************************************************
library IEEE;
	use ieee.std_logic_1164.all;
entity sum_paralelo_v1 is
	port
	(
		-- Puertos de entrada
		A,B	: in  std_logic_vector(3 downto 0);

		-- Puertos de Salida
		Cout	: out std_logic;
		Resul	: out std_logic_vector(3 downto 0)
	);
end sum_paralelo_v1;
architecture concurrente of sum_paralelo_v1 is
	signal c0,c1,c2: std_logic := '0';
begin
   -- Half-Adder (HA) -- semi - sumador
	c0 <= A(0) and B(0);
	Resul(0) <= A(0) xor B(0);
   -- Full-Adder (FA1) o sumador completo
   c1 <= (A(1) and B(1)) or (A(1) and c0) or (B(1) and c0);
	Resul(1) <= c0 xor A(1) xor B(1);
	--FA2
	c2 <= (A(2) and B(2)) or (A(2) and c1) or (B(2) and c1);
	Resul(2) <= c1 xor A(2) xor B(2);
	--FA2
	Cout <= (A(3) and B(3)) or (A(3) and c2) or (B(3) and c2);
	Resul(3) <= c2 xor A(3) xor B(3);
end concurrente;
