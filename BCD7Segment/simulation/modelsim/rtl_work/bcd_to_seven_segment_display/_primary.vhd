library verilog;
use verilog.vl_types.all;
entity bcd_to_seven_segment_display is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        display         : out    vl_logic_vector(6 downto 0);
        leading_zero    : in     vl_logic
    );
end bcd_to_seven_segment_display;
