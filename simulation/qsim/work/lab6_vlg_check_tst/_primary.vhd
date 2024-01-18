library verilog;
use verilog.vl_types.all;
entity lab6_vlg_check_tst is
    port(
        currentState    : in     vl_logic_vector(0 to 3);
        OPERATOR        : in     vl_logic_vector(0 to 15);
        R1Binary        : in     vl_logic_vector(0 to 3);
        R2Binary        : in     vl_logic_vector(0 to 3);
        R_first_four    : in     vl_logic_vector(1 to 7);
        R_last_four     : in     vl_logic_vector(1 to 7);
        Sign            : in     vl_logic_vector(1 to 7);
        student_id      : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end lab6_vlg_check_tst;
