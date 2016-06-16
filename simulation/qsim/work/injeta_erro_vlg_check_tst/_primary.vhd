library verilog;
use verilog.vl_types.all;
entity injeta_erro_vlg_check_tst is
    port(
        saida_erro      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end injeta_erro_vlg_check_tst;
