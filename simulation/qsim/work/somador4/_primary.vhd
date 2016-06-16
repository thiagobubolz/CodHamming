library verilog;
use verilog.vl_types.all;
entity somador4 is
    port(
        a               : in     vl_logic_vector(0 to 3);
        b               : in     vl_logic_vector(0 to 3);
        s               : out    vl_logic_vector(0 to 3);
        c3              : out    vl_logic
    );
end somador4;
