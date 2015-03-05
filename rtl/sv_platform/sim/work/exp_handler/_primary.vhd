library verilog;
use verilog.vl_types.all;
entity exp_handler is
    port(
        exp_a           : in     vl_logic_vector(7 downto 0);
        exp_b           : in     vl_logic_vector(7 downto 0);
        exp_c           : in     vl_logic_vector(7 downto 0);
        exp_tmp         : out    vl_logic_vector(9 downto 0);
        shf_num         : out    vl_logic_vector(6 downto 0);
        exp_ab          : out    vl_logic_vector(8 downto 0)
    );
end exp_handler;
