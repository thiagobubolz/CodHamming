library verilog;
use verilog.vl_types.all;
entity decod_hamming_vlg_check_tst is
    port(
        LED             : in     vl_logic;
        n_corrigido     : in     vl_logic_vector(0 to 6);
        saida_corrigido : in     vl_logic_vector(0 to 3);
        saida_posicao   : in     vl_logic_vector(0 to 2);
        saida_recebido  : in     vl_logic_vector(0 to 3);
        sampler_rx      : in     vl_logic
    );
end decod_hamming_vlg_check_tst;
