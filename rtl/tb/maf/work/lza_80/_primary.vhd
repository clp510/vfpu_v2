library verilog;
use verilog.vl_types.all;
entity lza_80 is
    port(
        a               : in     vl_logic_vector(79 downto 0);
        count           : out    vl_logic_vector(6 downto 0)
    );
end lza_80;
