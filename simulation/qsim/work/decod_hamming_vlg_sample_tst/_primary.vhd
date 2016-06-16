library verilog;
use verilog.vl_types.all;
entity decod_hamming_vlg_sample_tst is
    port(
        entrada_dec     : in     vl_logic_vector(0 to 6);
        sampler_tx      : out    vl_logic
    );
end decod_hamming_vlg_sample_tst;
