--Banco de Pruebas para la funcion logica
library IEEE;
  use ieee.std_logic_1164.all;
entity sum_paralelo_v2_tb is
  generic
  (
     m: natural := 4
   );
end entity;

architecture prueba of sum_paralelo_v2_tb is

component sum_paralelo_v2 is
	port
	(
		-- Puertos de entrada
		A,B	: in  std_logic_vector(m-1 downto 0);

		-- Puertos de Salida
		Cout	: out std_logic;
		Resul	: out std_logic_vector(m-1 downto 0)
	);
end component;

-- Declaracion de señales
signal A,B: std_logic_vector(m-1 downto 0) := (others=>'0');
signal Cout: std_logic := '0';
signal Resul: std_logic_vector(m-1 downto 0) := (others=>'0');


begin
  suma: sum_paralelo_v2 port map(A,B,Cout,Resul);

-- Generacion de estimulos
   A <= "1011" after 10 ns, "1100" after 20 ns;
   B <= "1001" after 10 ns, "1010" after 20 ns; 
end architecture;