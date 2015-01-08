library verilog;
use verilog.vl_types.all;
entity spec_handler is
    port(
        nj_mode         : in     vl_logic;
        inv_mask        : in     vl_logic;
        operand_a       : in     vl_logic_vector(31 downto 0);
        operand_b       : in     vl_logic_vector(31 downto 0);
        operand_c       : in     vl_logic_vector(31 downto 0);
        sa              : in     vl_logic;
        sb              : in     vl_logic;
        sc              : in     vl_logic;
        exp_a_bias      : in     vl_logic_vector(7 downto 0);
        exp_b_bias      : in     vl_logic_vector(7 downto 0);
        exp_c_bias      : in     vl_logic_vector(7 downto 0);
        manti_a         : in     vl_logic_vector(22 downto 0);
        manti_b         : in     vl_logic_vector(22 downto 0);
        manti_c         : in     vl_logic_vector(22 downto 0);
        exp_ab          : in     vl_logic_vector(8 downto 0);
        spec_mask       : out    vl_logic;
        res_spec        : out    vl_logic_vector(31 downto 0)
    );
end spec_handler;
