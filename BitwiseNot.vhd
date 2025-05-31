library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitwiseNot is
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0)
    );
end BitwiseNot;

architecture Behavioral of BitwiseNot is
begin
    Y <= not A;
end Behavioral;
