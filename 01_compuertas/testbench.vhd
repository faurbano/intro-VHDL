--Banco de Pruebas para las compuertas AND, OR y NOT
library IEEE;
use ieee.std_logic_1164.all;

entity testbench is
end entity;

architecture prueba of testbench is

component compuertas  is
  port
	(
		-- Pines Entrada
		A,B	: in  std_logic;

		-- Pines de Salida
		Yand, Yor, Ynot	: out std_logic
	);

end component;

-- Declaracion de señales
signal A,B: std_logic := '0';
signal Yand,Yor,Ynot: std_logic := '0';


begin
  comp: compuertas  port map(A,B,Yand,Yor,Ynot);

-- Generacion de estimulos
   B <= '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
   A <= '1' after 20 ns;
end architecture;