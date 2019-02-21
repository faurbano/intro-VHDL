--Banco de Pruebas para la funcion logica
library IEEE;
use ieee.std_logic_1164.all;

entity mux2a1_tb is
end entity;

architecture prueba of mux2a1_tb is

component mux2a1 is
	port
	(
		-- Pines de Entrada
		X, Y	: in  std_logic;
		Sel   : in  std_logic;   

		-- Pines de Salida
		Yout	: out std_logic
	);

end component;

-- Declaracion de señales
signal X,Y,Sel: std_logic := '0';
signal Yout: std_logic := '0';


begin
  mux: mux2a1  port map(X,Y,Sel,Yout);

-- Generacion de estimulos
   Sel <= '1' after 40 ns;
   Y <= '0' after 20 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns;
   X <= '1' after 20 ns, '0' after 40 ns;
end architecture;