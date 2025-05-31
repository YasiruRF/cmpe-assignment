library verilog;
use verilog.vl_types.all;
entity Transfer is
    port(
        Y               : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(3 downto 0)
    );
end Transfer;
