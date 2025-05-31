library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxEighttoOne is
    Port (
        I0 : in STD_LOGIC_VECTOR(3 downto 0);
        I1 : in STD_LOGIC_VECTOR(3 downto 0);
        I2 : in STD_LOGIC_VECTOR(3 downto 0);
        I3 : in STD_LOGIC_VECTOR(3 downto 0);
        I4 : in STD_LOGIC_VECTOR(3 downto 0);
        I5 : in STD_LOGIC;                     -- single-bit input
        I6 : in STD_LOGIC_VECTOR(3 downto 0);
        I7 : in STD_LOGIC_VECTOR(3 downto 0);
        S  : in STD_LOGIC_VECTOR(2 downto 0);
        Y  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end MuxEighttoOne;

architecture Behavioral of MuxEighttoOne is
begin
    process(S, I0, I1, I2, I3, I4, I5, I6, I7)
    begin
        case S is
            when "000" => Y <= I0;
            when "001" => Y <= I1;
            when "010" => Y <= I2;
            when "011" => Y <= I3;
            when "100" => Y <= I4;
            when "101" => Y <= "000" & I5;  -- Extend 1-bit I5 to 4 bits
            when "110" => Y <= I6;
            when others => Y <= I7;
        end case;
    end process;
end Behavioral;
