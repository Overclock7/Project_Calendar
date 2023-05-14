library verilog;
use verilog.vl_types.all;
entity tb_counter is
    generic(
        \MOD\           : integer := 10;
        BITS            : integer := 4;
        CLOCK_PERIOD    : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \MOD\ : constant is 1;
    attribute mti_svvh_generic_type of BITS : constant is 1;
    attribute mti_svvh_generic_type of CLOCK_PERIOD : constant is 1;
end tb_counter;
