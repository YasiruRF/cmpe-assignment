library verilog;
use verilog.vl_types.all;
entity AndOrXorXnor is
    port(
        G               : out    vl_logic_vector(3 downto 0);
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end AndOrXorXnor;
