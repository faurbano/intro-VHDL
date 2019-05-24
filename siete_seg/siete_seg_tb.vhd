--Banco de Pruebas para la funcion logica
library IEEE;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;

entity siete_seg_tb is
end entity;

architecture prueba of siete_seg_tb is

component siete_seg is
	port
	(
		-- Pines de Entrada
		num		: in  std_logic_vector(3 downto 0);
		
		-- Pines de Salida
		Yout	   : out std_logic_vector(6 downto 0)
	);
end component;

-- Declaracion de señales
signal num    : std_logic_vector(3 downto 0) := (others=>'0');
signal Yout   : std_logic_vector(6 downto 0) := (others=>'0');


begin
  decoder: siete_seg port map(num,Yout);

-- Generacion de estimulos
   num <= num + '1' after 10 ns;
end architecture;