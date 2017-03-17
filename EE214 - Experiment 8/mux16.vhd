library ieee;
use ieee.std_logic_1164.all;

entity mux16 is
	port(mx1, my1: in std_ulogic_vector(15 downto 0);
			mo1: out std_ulogic_vector(15 downto 0);
			sel1: in std_ulogic);
end entity;

architecture choose of mux16 is
component mux8 is
	port(mx, my: in std_ulogic_vector(7 downto 0);
			mo: out std_ulogic_vector(7 downto 0);
			sel: in std_ulogic);
end component;
begin
	mux81: mux8 port map (mx1(15 downto 8), my1(15 downto 8), mo1(15 downto 8), sel1);
	mux82: mux8 port map (mx1(7 downto 0), my1(7 downto 0), mo1(7 downto 0), sel1);
end choose;