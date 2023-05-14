library verilog;
use verilog.vl_types.all;
entity led_control is
    port(
        clock           : in     vl_logic_vector(2 downto 0);
        led             : out    vl_logic_vector(5 downto 0)
    );
end led_control;
