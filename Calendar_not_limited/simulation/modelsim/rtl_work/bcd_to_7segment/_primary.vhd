library verilog;
use verilog.vl_types.all;
entity bcd_to_7segment is
    generic(
        ZERO            : vl_logic_vector(0 to 6) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        ONE             : vl_logic_vector(0 to 6) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1);
        TWO             : vl_logic_vector(0 to 6) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        THREE           : vl_logic_vector(0 to 6) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0);
        FOUR            : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        FIVE            : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        SIX             : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        SEVEN           : vl_logic_vector(0 to 6) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0);
        EIGHT           : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        NINE            : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        BLANK           : vl_logic_vector(0 to 6) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        seg             : out    vl_logic_vector(6 downto 0);
        leading_zero    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ZERO : constant is 1;
    attribute mti_svvh_generic_type of ONE : constant is 1;
    attribute mti_svvh_generic_type of TWO : constant is 1;
    attribute mti_svvh_generic_type of THREE : constant is 1;
    attribute mti_svvh_generic_type of FOUR : constant is 1;
    attribute mti_svvh_generic_type of FIVE : constant is 1;
    attribute mti_svvh_generic_type of SIX : constant is 1;
    attribute mti_svvh_generic_type of SEVEN : constant is 1;
    attribute mti_svvh_generic_type of EIGHT : constant is 1;
    attribute mti_svvh_generic_type of NINE : constant is 1;
    attribute mti_svvh_generic_type of BLANK : constant is 1;
end bcd_to_7segment;
