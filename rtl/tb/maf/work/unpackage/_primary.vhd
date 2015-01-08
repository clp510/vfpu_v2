library verilog;
use verilog.vl_types.all;
entity unpackage is
    port(
        nj_mode         : in     vl_logic;
        operand         : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic;
        exp_bias        : out    vl_logic_vector(7 downto 0);
        exp             : out    vl_logic_vector(7 downto 0);
        frac            : out    vl_logic_vector(23 downto 0)
    );
end unpackage;
