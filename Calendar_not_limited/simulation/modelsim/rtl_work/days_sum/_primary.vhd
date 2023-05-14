library verilog;
use verilog.vl_types.all;
entity days_sum is
    port(
        date            : in     vl_logic_vector(22 downto 0);
        days            : out    vl_logic_vector(21 downto 0)
    );
end days_sum;
