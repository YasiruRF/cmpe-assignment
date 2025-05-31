library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AmultiplyB is
    port (
        A : in  STD_LOGIC_VECTOR (1 downto 0);
        B : in  STD_LOGIC_VECTOR (1 downto 0);
        P : out STD_LOGIC_VECTOR (3 downto 0)
    );
end AmultiplyB;

architecture Behavioral of AmultiplyB is
    signal ua, ub : UNSIGNED(1 downto 0);
    signal result : UNSIGNED(3 downto 0);
    signal partial0, partial1 : UNSIGNED(3 downto 0);
begin
    ua <= UNSIGNED(A);
    ub <= UNSIGNED(B);

    process(ua, ub)
    begin
        -- Partial products
        if ub(0) = '1' then
            partial0 <= ("00" & ua);  -- shift by 0
        else
            partial0 <= (others => '0');
        end if;

        if ub(1) = '1' then
            partial1 <= ("0" & ua & '0'); -- shift by 1
        else
            partial1 <= (others => '0');
        end if;

        result <= partial0 + partial1;
    end process;

    P <= STD_LOGIC_VECTOR(result);
end Behavioral;
