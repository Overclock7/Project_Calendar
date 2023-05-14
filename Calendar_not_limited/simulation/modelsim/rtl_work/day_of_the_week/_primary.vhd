library verilog;
use verilog.vl_types.all;
entity day_of_the_week is
    port(
        date            : in     vl_logic_vector(22 downto 0);
        ledr            : out    vl_logic_vector(4 downto 0);
        ledg            : out    vl_logic_vector(1 downto 0)
    );
end day_of_the_week;
