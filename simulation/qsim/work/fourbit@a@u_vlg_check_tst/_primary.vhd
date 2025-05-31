library verilog;
use verilog.vl_types.all;
entity fourbitAU_vlg_check_tst is
    port(
        F0              : in     vl_logic;
        G               : in     vl_logic_vector(3 downto 0);
        N               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fourbitAU_vlg_check_tst;
