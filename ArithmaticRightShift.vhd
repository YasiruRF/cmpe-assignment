library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArithmaticRightShift is
    port (
        S0 : in  STD_LOGIC;
        A  : in  STD_LOGIC_VECTOR (3 downto 0);
        Y  : out STD_LOGIC_VECTOR (3 downto 0)
    );
end ArithmaticRightShift;

architecture Behavioral of ArithmaticRightShift is
    signal not_S0 : std_logic;

begin
    not_S0 <= not S0;

    Y(3) <= (S0 and A(3)) or (not_S0 and A(3));
    Y(2) <= (S0 and A(2)) or (not_S0 and A(3));
    Y(1) <= (S0 and A(1)) or (not_S0 and A(2));
    Y(0) <= (S0 and A(0)) or (not_S0 and A(1)); 
end Behavioral;