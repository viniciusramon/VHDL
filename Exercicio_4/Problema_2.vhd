entity problema_2 is
	port (a,b:in bit; m,n:out bit);
	end problema_2;
	architecture primeira of problema_2 is
	begin
	
	m<='1' when a = b else '0';
	
	n<='1' when a = (not b) else '0';
	
	end primeira;
	