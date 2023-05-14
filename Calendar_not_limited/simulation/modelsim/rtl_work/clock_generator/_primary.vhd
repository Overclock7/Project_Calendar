library verilog;
use verilog.vl_types.all;
entity clock_generator is
    generic(
        \MOD\           : integer := 25000000
    );
    port(
        clock_in        : in     vl_logic;
        reset           : in     vl_logic;
        clock_out       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \MOD\ : constant is 1;
end clock_generator;
