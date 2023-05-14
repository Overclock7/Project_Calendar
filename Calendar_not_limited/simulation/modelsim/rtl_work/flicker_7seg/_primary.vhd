library verilog;
use verilog.vl_types.all;
entity flicker_7seg is
    port(
        clock_4Hz       : in     vl_logic;
        input_7seg      : in     vl_logic_vector(6 downto 0);
        \select\        : in     vl_logic_vector(2 downto 0);
        hex             : out    vl_logic_vector(6 downto 0)
    );
end flicker_7seg;
