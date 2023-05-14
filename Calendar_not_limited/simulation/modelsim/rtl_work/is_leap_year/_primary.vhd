library verilog;
use verilog.vl_types.all;
entity is_leap_year is
    port(
        year_count      : in     vl_logic_vector(13 downto 0);
        leap_year       : out    vl_logic
    );
end is_leap_year;
