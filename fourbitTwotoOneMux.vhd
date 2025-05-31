library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourbitTwotoOneMux is 
    Port (
        S  : in  STD_LOGIC; 
        I0 : in  STD_LOGIC; 
        I1 : in  STD_LOGIC; 
        F  : out STD_LOGIC  
    );
end fourbitTwotoOneMux;

architecture Behavioral of fourbitTwotoOneMux is
begin
    F <= I0 when (S = '1') else I1;
end Behavioral;