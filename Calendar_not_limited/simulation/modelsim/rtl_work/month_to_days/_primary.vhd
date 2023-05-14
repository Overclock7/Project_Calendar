library verilog;
use verilog.vl_types.all;
entity month_to_days is
    port(
        month           : in     vl_logic_vector(3 downto 0);
        leap_year       : in     vl_logic;
        result          : out    vl_logic_vector(8 downto 0)
    );
end month_to_days;
