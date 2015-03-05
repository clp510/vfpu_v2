library verilog;
use verilog.vl_types.all;
entity norm_stage is
    port(
        s_tmp           : in     vl_logic;
        final_m         : in     vl_logic;
        frac_inter_h_s  : in     vl_logic;
        exp_tmp         : in     vl_logic_vector(9 downto 0);
        frac_inter      : in     vl_logic_vector(74 downto 0);
        s_final         : out    vl_logic;
        exp_norm        : out    vl_logic_vector(9 downto 0);
        frac_inter_norm : out    vl_logic_vector(26 downto 0);
        zero_m          : out    vl_logic;
        denorm_m        : out    vl_logic
    );
end norm_stage;
