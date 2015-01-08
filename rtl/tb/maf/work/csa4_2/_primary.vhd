library verilog;
use verilog.vl_types.all;
entity csa4_2 is
    generic(
        WIDTH           : integer := 32
    );
    port(
        ci              : in     vl_logic;
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        c               : in     vl_logic_vector;
        d               : in     vl_logic_vector;
        sum             : out    vl_logic_vector;
        carry           : out    vl_logic_vector
    );
end csa4_2;
