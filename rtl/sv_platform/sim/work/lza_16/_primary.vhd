library verilog;
use verilog.vl_types.all;
entity lza_16 is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        count           : out    vl_logic_vector(4 downto 0)
    );
end lza_16;
