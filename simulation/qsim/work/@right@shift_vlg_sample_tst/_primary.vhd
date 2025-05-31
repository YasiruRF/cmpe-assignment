library verilog;
use verilog.vl_types.all;
entity RightShift_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        S0              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RightShift_vlg_sample_tst;
