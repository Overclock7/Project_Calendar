library verilog;
use verilog.vl_types.all;
entity output_mux is
    generic(
        BLANK           : vl_logic_vector(0 to 6) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        in_0            : in     vl_logic_vector(55 downto 0);
        in_1            : in     vl_logic_vector(55 downto 0);
        in_2            : in     vl_logic_vector(55 downto 0);
        in_3            : in     vl_logic_vector(55 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        set_dday        : in     vl_logic;
        out_0           : out    vl_logic_vector(55 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BLANK : constant is 1;
end output_mux;
