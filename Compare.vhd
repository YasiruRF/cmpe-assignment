library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Compare is
    Port (
        A  : in  STD_LOGIC_VECTOR (3 downto 0);
        B  : in  STD_LOGIC_VECTOR (3 downto 0);
        Y  : out STD_LOGIC
    );
end Compare;

architecture Behavioral of Compare is
    -- Equality check signals
    signal A3_xnor_B3, A2_xnor_B2, A1_xnor_B1 : STD_LOGIC;

    -- Inverted B bits
    signal not_B0, not_B1, not_B2, not_B3 : STD_LOGIC;

    -- Comparison expressions
    signal exp0, exp1, exp2, exp3 : STD_LOGIC;
begin
    -- Invert B bits
    not_B0 <= not B(0);
    not_B1 <= not B(1);
    not_B2 <= not B(2);
    not_B3 <= not B(3);

    -- Equality checks (XNORs)
    A3_xnor_B3 <= A(3) xnor B(3);
    A2_xnor_B2 <= A(2) xnor B(2);
    A1_xnor_B1 <= A(1) xnor B(1);

    -- Expressions for determining A > B
    exp3 <= A(3) and not_B3;
    exp2 <= A3_xnor_B3 and A(2) and not_B2;
    exp1 <= A3_xnor_B3 and A2_xnor_B2 and A(1) and not_B1;
    exp0 <= A3_xnor_B3 and A2_xnor_B2 and A1_xnor_B1 and A(0) and not_B0;

    -- Final output
    Y <= exp0 or exp1 or exp2 or exp3;
end Behavioral;