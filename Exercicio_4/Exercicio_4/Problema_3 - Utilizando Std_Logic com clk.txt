LIBRARY ieee;
Use ieee.std_logic_arith.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_1164.all;

ENTITY problema_4 is
	PORT(
		clk:in std_logic;
		reset:in std_logic;
		saida:out std_logic);
	END problema_4;

ARCHITECTURE primeira of problema_4 is
	signal meuff:std_logic;
BEGIN 
	process(clk)
		begin
			if reset='1' then
			meuff<='0';
			elsif rising_edge(clk) then
				meuff<=not meuff;
			end if;
	end process;
	
	saida<=meuff;

END primeira;