--Banco de Pruebas para la funcion logica
library IEEE;
use ieee.std_logic_1164.all;

entity mux4a1_tb is
end entity;

architecture prueba of mux4a1_tb is

component mux4a1 is
	port
	(
		-- Pines de Entrada
		W, X, Y, Z	: in  std_logic;
		Sel     : in  std_logic_vector(1 downto 0);   

		-- Pines de Salida
		Yout	   : out std_logic
	);

end component;

-- Declaracion de señales
signal W,X,Y,Z: std_logic := '0';
signal Sel    : std_logic_vector(1 downto 0):= "00";
signal Yout   : std_logic := '0';


begin
  mux: mux4a1  port map(W,X,Y,Z,Sel,Yout);

-- Generacion de estimulos
   Sel <= "01" after 20 ns, "10" after 40 ns, "11" after 60 ns;
   W <= '1' after 10 ns, '0' after 20 ns;
   X <= '1' after 20 ns, '0' after 40 ns;
   Y <= '1' after 40 ns, '0' after 60 ns;
   Z <= '1' after 60 ns, '0' after 80 ns;
end architecture;