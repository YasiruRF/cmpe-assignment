library verilog;
use verilog.vl_types.all;
entity MainALU_vlg_check_tst is
    port(
        F               : in     vl_logic;
        N               : in     vl_logic;
        Y               : in     vl_logic_vector(3 downto 0);
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MainALU_vlg_check_tst;
