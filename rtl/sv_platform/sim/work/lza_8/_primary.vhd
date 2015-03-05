library verilog;
use verilog.vl_types.all;
entity lza_8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        count           : out    vl_logic_vector(3 downto 0)
    );
end lza_8;
