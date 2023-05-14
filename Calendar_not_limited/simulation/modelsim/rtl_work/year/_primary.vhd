library verilog;
use verilog.vl_types.all;
entity year is
    generic(
        MODULO          : integer := 10;
        BITS            : integer := 4
    );
    port(
        clock           : in     vl_logic;
        up              : in     vl_logic_vector(3 downto 0);
        set             : in     vl_logic;
        reset           : in     vl_logic;
        year_count      : out    vl_logic_vector(13 downto 0);
        year_7seg       : out    vl_logic_vector(27 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MODULO : constant is 1;
    attribute mti_svvh_generic_type of BITS : constant is 1;
end year;
