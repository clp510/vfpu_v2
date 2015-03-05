library verilog;
use verilog.vl_types.all;
entity mul_stage is
    port(
        sa              : in     vl_logic;
        sb              : in     vl_logic;
        sc              : in     vl_logic;
        exp_a           : in     vl_logic_vector(7 downto 0);
        exp_b           : in     vl_logic_vector(7 downto 0);
        exp_c           : in     vl_logic_vector(7 downto 0);
        a_frac          : in     vl_logic_vector(23 downto 0);
        b_frac          : in     vl_logic_vector(23 downto 0);
        c_frac          : in     vl_logic_vector(23 downto 0);
        inv_mask        : out    vl_logic;
        s_tmp           : out    vl_logic;
        final_m         : out    vl_logic;
        exp_tmp         : out    vl_logic_vector(9 downto 0);
        c_frac_align_h  : out    vl_logic_vector(25 downto 0);
        c_frac_align_m  : out    vl_logic_vector(47 downto 0);
        c_frac_align_l  : out    vl_logic_vector(23 downto 0);
        carry           : out    vl_logic_vector(47 downto 0);
        sum             : out    vl_logic_vector(47 downto 0);
        exp_ab          : out    vl_logic_vector(8 downto 0)
    );
end mul_stage;
