library verilog;
use verilog.vl_types.all;
entity clock is
    port(
        clock           : in     vl_logic;
        up              : in     vl_logic_vector(2 downto 0);
        set             : in     vl_logic;
        reset           : in     vl_logic;
        mode_ampm       : in     vl_logic;
        clock_carry     : out    vl_logic;
        clock_7seg      : out    vl_logic_vector(55 downto 0)
    );
end clock;
