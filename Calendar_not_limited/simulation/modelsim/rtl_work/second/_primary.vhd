library verilog;
use verilog.vl_types.all;
entity second is
    generic(
        MODULO          : integer := 60;
        BITS            : integer := 6
    );
    port(
        clock           : in     vl_logic;
        up              : in     vl_logic;
        set             : in     vl_logic;
        reset           : in     vl_logic;
        sec_7seg        : out    vl_logic_vector(13 downto 0);
        sec_carry       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MODULO : constant is 1;
    attribute mti_svvh_generic_type of BITS : constant is 1;
end second;
