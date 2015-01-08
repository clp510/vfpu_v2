library verilog;
use verilog.vl_types.all;
entity round_stage is
    port(
        nj_mode         : in     vl_logic;
        s_final         : in     vl_logic;
        exp_norm        : in     vl_logic_vector(9 downto 0);
        frac_inter_norm : in     vl_logic_vector(26 downto 0);
        denorm_m        : in     vl_logic;
        zero_m          : in     vl_logic;
        res             : out    vl_logic_vector(31 downto 0)
    );
end round_stage;
