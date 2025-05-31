library verilog;
use verilog.vl_types.all;
entity AndOrXorXnor_vlg_check_tst is
    port(
        G               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end AndOrXorXnor_vlg_check_tst;
