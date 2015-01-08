library verilog;
use verilog.vl_types.all;
entity maf is
    port(
        clk             : in     vl_logic;
        nj_mode         : in     vl_logic;
        op_vld          : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c               : in     vl_logic_vector(31 downto 0);
        res             : out    vl_logic_vector(31 downto 0);
        res_rdy         : out    vl_logic
    );
end maf;
