library verilog;
use verilog.vl_types.all;
entity tb_counter is
    generic(
        \MOD\           : integer := 24;
        BITS            : integer := 5;
        CLK_PERIOD      : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \MOD\ : constant is 1;
    attribute mti_svvh_generic_type of BITS : constant is 1;
    attribute mti_svvh_generic_type of CLK_PERIOD : constant is 1;
end tb_counter;
