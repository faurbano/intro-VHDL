--***********************************************************************
-- Descripción de un sumador en paralelo usando arquitectura concurrente
-- y la asignación For Generate 
-- A y B son las entradas de cuatro bits; Cout, es el acarreo de salida
-- y Resul es la suma.
-- Fecha: Mayo 24 de 2019
-- Version: 1.0
-- Autor: Fernando Urbano
--********************************************************************
library IEEE;
	use ieee.std_logic_1164.all;
entity sum_paralelo_v2 is
  generic
  (
     m: natural := 4
   ); 
	port
	(
		-- Puertos de entrada
		A,B	: in  std_logic_vector(m-1 downto 0);

		-- Puertos de Salida
		Cout	: out std_logic;
		Resul	: out std_logic_vector(m-1 downto 0)
	);
end sum_paralelo_v2;
architecture concurrente of sum_paralelo_v2 is
	signal c: std_logic_vector(m-1 downto 0) := (others => '0');
begin
   -- Half-Adder (HA) -- semi - sumador
	c(0) <= A(0) and B(0);
	Resul(0) <= A(0) xor B(0);
   -- Full-Adder (FA) o sumador completo
  sumador:
  for i in 1 to m-1 generate
    c(i) <= (A(i) and B(i)) or (A(i) and c(i-1)) or (B(i) and c(i-1));
	  Resul(i) <= c(i-1) xor A(i) xor B(i);
	end generate;
	Cout <= c(m-1);
end concurrente;
