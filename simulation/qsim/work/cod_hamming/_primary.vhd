library verilog;
use verilog.vl_types.all;
entity cod_hamming is
    port(
        entrada_cod     : in     vl_logic_vector(0 to 3);
        saida_cod       : out    vl_logic_vector(0 to 6)
    );
end cod_hamming;
