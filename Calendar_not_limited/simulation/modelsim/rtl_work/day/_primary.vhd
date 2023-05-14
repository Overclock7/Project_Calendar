library verilog;
use verilog.vl_types.all;
entity day is
    port(
        clock           : in     vl_logic;
        up              : in     vl_logic;
        set             : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        day_case        : in     vl_logic_vector(4 downto 0);
        day_count       : out    vl_logic_vector(4 downto 0);
        day_carry       : out    vl_logic;
        day_7seg        : out    vl_logic_vector(13 downto 0)
    );
end day;
