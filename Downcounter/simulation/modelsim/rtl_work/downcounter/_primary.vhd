library verilog;
use verilog.vl_types.all;
entity downcounter is
    generic(
        \MOD\           : integer := 10;
        BITS            : integer := 4
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
end downcounter;
