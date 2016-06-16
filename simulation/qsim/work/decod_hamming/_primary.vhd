library verilog;
use verilog.vl_types.all;
entity decod_hamming is
    port(
        entrada_dec     : in     vl_logic_vector(0 to 6);
        n_corrigido     : out    vl_logic_vector(0 to 6);
        saida_posicao   : out    vl_logic_vector(0 to 2);
        saida_recebido  : out    vl_logic_vector(0 to 3);
        saida_corrigido : out    vl_logic_vector(0 to 3);
        LED             : out    vl_logic
    );
end decod_hamming;
