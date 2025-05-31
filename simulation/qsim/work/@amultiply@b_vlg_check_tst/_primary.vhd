library verilog;
use verilog.vl_types.all;
entity AmultiplyB_vlg_check_tst is
    port(
        P               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end AmultiplyB_vlg_check_tst;
