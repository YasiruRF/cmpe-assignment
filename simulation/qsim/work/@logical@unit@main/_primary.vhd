library verilog;
use verilog.vl_types.all;
entity LogicalUnitMain is
    port(
        Y               : out    vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end LogicalUnitMain;
