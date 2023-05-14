library verilog;
use verilog.vl_types.all;
entity input_module is
    port(
        clock_50MHz     : in     vl_logic;
        key             : in     vl_logic_vector(2 downto 0);
        sw              : in     vl_logic_vector(4 downto 0);
        up              : out    vl_logic_vector(14 downto 0);
        set             : out    vl_logic_vector(2 downto 0);
        reset           : out    vl_logic;
        \select\        : out    vl_logic_vector(14 downto 0);
        mode_ampm       : out    vl_logic;
        clock_out       : out    vl_logic;
        clock_4Hz       : out    vl_logic
    );
end input_module;
