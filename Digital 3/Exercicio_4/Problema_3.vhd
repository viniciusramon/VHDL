LIBRARY ieee;
Use ieee.std_logic_arith.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_1164.all;

ENTITY problema_3 is
PORT(
a:in std_logic_vector(7 downto 0);
b:in std_logic;
saida:out std_logic_vector(7 downto 0)
);
END problema_3;

ARCHITECTURE primeira of problema_3 is
BEGIN 

saida<= (a + "00000011") when b='1' else "ZZZZZZZZ";

END primeira;