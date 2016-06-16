library verilog;
use verilog.vl_types.all;
entity cod_hamming_vlg_sample_tst is
    port(
        entrada_cod     : in     vl_logic_vector(0 to 3);
        sampler_tx      : out    vl_logic
    );
end cod_hamming_vlg_sample_tst;
