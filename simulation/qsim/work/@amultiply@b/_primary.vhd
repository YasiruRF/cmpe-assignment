library verilog;
use verilog.vl_types.all;
entity AmultiplyB is
    port(
        A               : in     vl_logic_vector(1 downto 0);
        B               : in     vl_logic_vector(1 downto 0);
        P               : out    vl_logic_vector(3 downto 0)
    );
end AmultiplyB;
