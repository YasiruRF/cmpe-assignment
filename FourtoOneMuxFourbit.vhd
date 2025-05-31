library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourtoOneMuxFourbit is 
    Port (
        S0 : in STD_LOGIC; 
        S1 : in STD_LOGIC;
        I0 : in STD_LOGIC_VECTOR(3 downto 0); 
        I1 : in STD_LOGIC_VECTOR(3 downto 0);
        I2 : in STD_LOGIC_VECTOR(3 downto 0);
        I3 : in STD_LOGIC_VECTOR(3 downto 0);
        F  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end FourtoOneMuxFourbit;

architecture Behavioral of FourtoOneMuxFourbit is
begin
    process(S0, S1, I0, I1, I2, I3)
    begin
        if (S0 = '0' and S1 = '0') then
            F <= I0;
        elsif (S0 = '1' and S1 = '0') then
            F <= I1;
        elsif (S0 = '0' and S1 = '1') then
            F <= I2;
        else
            F <= I3;
        end if;
    end process;
end Behavioral;
