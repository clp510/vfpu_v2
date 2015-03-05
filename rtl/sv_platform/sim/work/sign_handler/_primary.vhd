library verilog;
use verilog.vl_types.all;
entity sign_handler is
    port(
        sa              : in     vl_logic;
        sb              : in     vl_logic;
        sc              : in     vl_logic;
        s_tmp           : out    vl_logic;
        final_m         : out    vl_logic
    );
end sign_handler;
