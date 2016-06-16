library verilog;
use verilog.vl_types.all;
entity somador4_vlg_check_tst is
    port(
        c3              : in     vl_logic;
        s               : in     vl_logic_vector(0 to 3);
        sampler_rx      : in     vl_logic
    );
end somador4_vlg_check_tst;
