library verilog;
use verilog.vl_types.all;
entity somador4_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(0 to 3);
        b               : in     vl_logic_vector(0 to 3);
        sampler_tx      : out    vl_logic
    );
end somador4_vlg_sample_tst;
