library verilog;
use verilog.vl_types.all;
entity exp_adjust is
    port(
        exp_tmp         : in     vl_logic_vector(9 downto 0);
        lz_count        : in     vl_logic_vector(6 downto 0);
        exp_norm        : out    vl_logic_vector(9 downto 0)
    );
end exp_adjust;
