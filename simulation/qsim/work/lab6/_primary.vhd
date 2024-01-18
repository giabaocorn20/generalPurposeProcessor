library verilog;
use verilog.vl_types.all;
entity lab6 is
    port(
        currentState    : out    vl_logic_vector(0 to 3);
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        OPERATOR        : out    vl_logic_vector(0 to 15);
        Enable_Decoder  : in     vl_logic;
        R1Binary        : out    vl_logic_vector(0 to 3);
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        R2Binary        : out    vl_logic_vector(0 to 3);
        R_first_four    : out    vl_logic_vector(1 to 7);
        R_last_four     : out    vl_logic_vector(1 to 7);
        Sign            : out    vl_logic_vector(1 to 7);
        student_id      : out    vl_logic_vector(1 to 7)
    );
end lab6;
