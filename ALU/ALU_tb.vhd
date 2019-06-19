--Banco de Pruebas para la funcion logica
library IEEE;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;

entity ALU_tb is
end entity;

architecture prueba of ALU_tb is

component ALU is
	port
	(
		-- Pines de Entrada
		A,B		: in  std_logic_vector(3 downto 0);
		
		opcode   : in  std_logic_vector(2 downto 0);
		
		-- Pines de Salida
		Cout     : out std_logic;
		Yout	   : out std_logic_vector(3 downto 0)
	);
end component;

-- Declaracion de señales
signal A: std_logic_vector(3 downto 0) := "1011";
signal B: std_logic_vector(3 downto 0) := "1001";
signal opcode: std_logic_vector(2 downto 0) := (others=>'0');
signal Cout: std_logic := '0';
signal Resul: std_logic_vector(3 downto 0) := (others=>'0');


begin
  ULA: ALU port map(A,B,opcode,Cout,Resul);

-- Generacion de estimulos
   A <= "1100" after 80 ns;
   B <= "1010" after 80 ns;
   opcode <= opcode + '1' after 10 ns; 
end architecture;