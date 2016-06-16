library verilog;
use verilog.vl_types.all;
entity injeta_erro_vlg_sample_tst is
    port(
        posi            : in     vl_logic_vector(0 to 2);
        recebe_cod      : in     vl_logic_vector(0 to 6);
        sampler_tx      : out    vl_logic
    );
end injeta_erro_vlg_sample_tst;
