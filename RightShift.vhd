library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RightShift is
    port (
        S0 : in  STD_LOGIC;
        A  : in  STD_LOGIC_VECTOR (3 downto 0);
        Y  : out STD_LOGIC_VECTOR (3 downto 0)
    );
end RightShift;

architecture Behavioral of RightShift is
    signal not_S0 : std_logic;

begin
    not_S0 <= not S0;

    Y(3) <= (not_S0 and A(3)) or (S0 and '0'); 
    Y(2) <= (not_S0 and A(2)) or (S0 and A(3));
    Y(1) <= (not_S0 and A(1)) or (S0 and A(2));
    Y(0) <= (not_S0 and A(0)) or (S0 and A(1));

end Behavioral;