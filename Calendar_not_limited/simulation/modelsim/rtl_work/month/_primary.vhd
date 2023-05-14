library verilog;
use verilog.vl_types.all;
entity month is
    generic(
        MODULO          : integer := 12;
        BITS            : integer := 4
    );
    port(
        clock           : in     vl_logic;
        up              : in     vl_logic;
        set             : in     vl_logic;
        reset           : in     vl_logic;
        month_count     : out    vl_logic_vector(3 downto 0);
        month_carry     : out    vl_logic;
        month_7seg      : out    vl_logic_vector(13 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MODULO : constant is 1;
    attribute mti_svvh_generic_type of BITS : constant is 1;
end month;
