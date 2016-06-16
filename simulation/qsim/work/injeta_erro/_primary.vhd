library verilog;
use verilog.vl_types.all;
entity injeta_erro is
    port(
        posi            : in     vl_logic_vector(0 to 2);
        recebe_cod      : in     vl_logic_vector(0 to 6);
        saida_erro      : out    vl_logic_vector(0 to 6)
    );
end injeta_erro;
