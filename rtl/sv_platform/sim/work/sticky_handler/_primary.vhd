library verilog;
use verilog.vl_types.all;
entity sticky_handler is
    port(
        c_frac_align_l  : in     vl_logic_vector(23 downto 0);
        inv_mask        : in     vl_logic;
        compen_bit      : out    vl_logic;
        st1             : out    vl_logic
    );
end sticky_handler;
