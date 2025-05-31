library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OnebitFullAdder is
	port ( 
		x0 : in STD_LOGIC;
		y0 : in STD_LOGIC;
		cin : in STD_LOGIC;
		sum : out STD_LOGIC;
		C_out : out STD_LOGIC
	);
end OnebitFullAdder;

architecture Behavioral of OnebitFullAdder is
begin
	sum <= x0 XOR y0 XOR cin;
	C_out <= (x0 AND y0) OR (cin AND x0) OR (cin AND y0);
end Behavioral;