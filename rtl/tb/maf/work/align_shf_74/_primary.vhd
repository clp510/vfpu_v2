library verilog;
use verilog.vl_types.all;
entity align_shf_74 is
    port(
        inv_mask        : in     vl_logic;
        c_frac          : in     vl_logic_vector(23 downto 0);
        shf_num         : in     vl_logic_vector(6 downto 0);
        shf_res         : out    vl_logic_vector(97 downto 0)
    );
end align_shf_74;
