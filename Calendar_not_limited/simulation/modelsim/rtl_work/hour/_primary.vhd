library verilog;
use verilog.vl_types.all;
entity hour is
    generic(
        MODULO          : integer := 24;
        BITS            : integer := 5
    );
    port(
        clock           : in     vl_logic;
        up              : in     vl_logic;
        set             : in     vl_logic;
        reset           : in     vl_logic;
        mode_ampm       : in     vl_logic;
        hour_7seg       : out    vl_logic_vector(27 downto 0);
        hour_carry      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MODULO : constant is 1;
    attribute mti_svvh_generic_type of BITS : constant is 1;
end hour;
