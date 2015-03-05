library verilog;
use verilog.vl_types.all;
entity denorm_handler is
    port(
        frac_inter_norm_t1: in     vl_logic_vector(74 downto 0);
        exp_norm        : in     vl_logic_vector(9 downto 0);
        frac_inter_norm_t2: out    vl_logic_vector(74 downto 0);
        denorm_m        : out    vl_logic;
        zero_m          : out    vl_logic
    );
end denorm_handler;
