--Banco de Pruebas para la funcion logica
library IEEE;
use ieee.std_logic_1164.all;

entity demux1a2_tb is
end entity;

architecture prueba of demux1a2_tb is

component demux1a2 is
	port
	(
		-- Pines de Entrada
		X    	: in  std_logic;
		Sel   : in  std_logic;   

		-- Pines de Salida
		Y1,Y0	: out std_logic
	);

end component;

-- Declaracion de señales
signal X,Sel: std_logic := '0';
signal Y1,Y0: std_logic := '0';


begin
  demux: demux1a2  port map(X,Sel,Y1,Y0);

-- Generacion de estimulos
   Sel <= not Sel after 20 ns;
   X <= '1' after 10 ns, '0' after 40 ns, '1' after 60 ns;
end architecture;