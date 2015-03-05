library verilog;
use verilog.vl_types.all;
entity DW01_csa is
    generic(
        width           : integer := 4
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        c               : in     vl_logic_vector;
        ci              : in     vl_logic;
        carry           : out    vl_logic_vector;
        sum             : out    vl_logic_vector;
        co              : out    vl_logic
    );
end DW01_csa;
