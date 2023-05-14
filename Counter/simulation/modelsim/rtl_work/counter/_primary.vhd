library verilog;
use verilog.vl_types.all;
entity counter is
    generic(
        \MOD\           : integer := 24;
        BITS            : integer := 5
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        count           : out    vl_logic_vector;
        carry           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \MOD\ : constant is 1;
    attribute mti_svvh_generic_type of BITS : constant is 1;
end counter;
