library verilog;
use verilog.vl_types.all;
entity RotateLeft is
    port(
        Y               : out    vl_logic_vector(3 downto 0);
        S0              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0)
    );
end RotateLeft;
