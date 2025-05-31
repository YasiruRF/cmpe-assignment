library verilog;
use verilog.vl_types.all;
entity RotateRight is
    port(
        Y3              : out    vl_logic;
        S0              : in     vl_logic;
        A0              : in     vl_logic;
        A3              : in     vl_logic;
        Y2              : out    vl_logic;
        A2              : in     vl_logic;
        Y1              : out    vl_logic;
        A1              : in     vl_logic;
        Y0              : out    vl_logic
    );
end RotateRight;
