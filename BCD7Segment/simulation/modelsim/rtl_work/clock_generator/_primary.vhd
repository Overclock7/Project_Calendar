library verilog;
use verilog.vl_types.all;
entity clock_generator is
    port(
        clock_in        : in     vl_logic;
        reset           : in     vl_logic;
        clock_out       : out    vl_logic
    );
end clock_generator;
