

entity nand2fiel is
	port(
		a : in bit;
		b : in bit;
		saida : out bit
	);
end nand2fiel;

architecture primeira of nand2fiel is

begin

saida <= '0' when a = '1' and b = '1' else '1';

end primeira;