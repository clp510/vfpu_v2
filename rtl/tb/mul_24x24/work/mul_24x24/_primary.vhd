library verilog;
use verilog.vl_types.all;
entity mul_24x24 is
    port(
        a               : in     vl_logic_vector(23 downto 0);
        b               : in     vl_logic_vector(23 downto 0);
        carry           : out    vl_logic_vector(47 downto 0);
        sum             : out    vl_logic_vector(47 downto 0)
    );
end mul_24x24;
