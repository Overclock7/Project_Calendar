library verilog;
use verilog.vl_types.all;
entity last_day_of_month is
    port(
        month           : in     vl_logic_vector(3 downto 0);
        leap_year       : in     vl_logic;
        modulo_day      : out    vl_logic_vector(4 downto 0)
    );
end last_day_of_month;
