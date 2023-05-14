library verilog;
use verilog.vl_types.all;
entity date is
    port(
        clock_carry     : in     vl_logic;
        up              : in     vl_logic_vector(5 downto 0);
        set             : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        date_count      : out    vl_logic_vector(22 downto 0);
        date_7seg       : out    vl_logic_vector(55 downto 0)
    );
end date;
