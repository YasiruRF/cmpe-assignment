library verilog;
use verilog.vl_types.all;
entity MainALU is
    port(
        Z               : out    vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        F               : out    vl_logic;
        N               : out    vl_logic;
        Y               : out    vl_logic_vector(3 downto 0)
    );
end MainALU;
