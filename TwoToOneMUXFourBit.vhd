library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoToOneMUXFourBit is 
    Port (
        S  : in  STD_LOGIC; 
        I0 : in  STD_LOGIC_VECTOR(3 downto 0); 
        I1 : in  STD_LOGIC_VECTOR(3 downto 0); 
        F  : out STD_LOGIC_VECTOR(3 downto 0)  
    );
end TwoToOneMUXFourBit;

architecture Behavioral of TwoToOneMUXFourBit is
begin
    F <= I0 when (S = '0') else I1;
end Behavioral;
