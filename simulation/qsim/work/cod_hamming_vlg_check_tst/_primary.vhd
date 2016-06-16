library verilog;
use verilog.vl_types.all;
entity cod_hamming_vlg_check_tst is
    port(
        saida_cod       : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end cod_hamming_vlg_check_tst;
