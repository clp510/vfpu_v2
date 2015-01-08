library verilog;
use verilog.vl_types.all;
entity lza_32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        count           : out    vl_logic_vector(5 downto 0)
    );
end lza_32;
