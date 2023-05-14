library verilog;
use verilog.vl_types.all;
entity bcd_counter_7segment is
    port(
        clock_50M       : in     vl_logic;
        clock_1         : out    vl_logic;
        reset           : in     vl_logic;
        seven_zero      : out    vl_logic_vector(6 downto 0);
        seven_one       : out    vl_logic_vector(6 downto 0);
        seven_two       : out    vl_logic_vector(6 downto 0);
        seven_three     : out    vl_logic_vector(6 downto 0);
        led_out_one     : out    vl_logic_vector(5 downto 0);
        led_out_three   : out    vl_logic_vector(5 downto 0)
    );
end bcd_counter_7segment;
