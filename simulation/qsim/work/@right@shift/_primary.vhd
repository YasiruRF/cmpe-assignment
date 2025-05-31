library verilog;
use verilog.vl_types.all;
entity RightShift is
    port(
        S0              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        Y               : out    vl_logic_vector(3 downto 0)
    );
end RightShift;
