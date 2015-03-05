library verilog;
use verilog.vl_types.all;
entity add_stage is
    port(
        c_frac_align_h  : in     vl_logic_vector(25 downto 0);
        c_frac_align_m  : in     vl_logic_vector(47 downto 0);
        c_frac_align_l  : in     vl_logic_vector(23 downto 0);
        carry           : in     vl_logic_vector(47 downto 0);
        sum             : in     vl_logic_vector(47 downto 0);
        inv_mask        : in     vl_logic;
        frac_inter_h_s  : out    vl_logic;
        frac_inter      : out    vl_logic_vector(74 downto 0)
    );
end add_stage;
