LIBRARY ieee;
	Use ieee.std_logic_arith.all;
	Use ieee.std_logic_unsigned.all;
	Use ieee.std_logic_1164.all;

entity cronometro is
	port(start,stop,clk : in std_logic;
		saida : out std_logic_vector(7 downto 0)
		);
end cronometro;

architecture primeira of cronometro is
	type status is (contando, terminei);
	signal operando : status;
	signal contador : std_logic_vector(7 downto 0);
		begin
			process (clk, start, stop)
				begin
					if start = '1' then contador <= "00000000";
						operando <= contando;
					elsif rising_edge(clk) then
						if operando = contando then 
							   if stop = '0' then 
								   contador <= contador + "00000001";
								else
								   operando <= terminei;
									saida <= contador;
							   end if;	
					end if;			
					end if;
				end process;
			end primeira;