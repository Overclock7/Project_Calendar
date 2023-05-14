library verilog;
use verilog.vl_types.all;
entity binary_to_bcd_4bit is
    port(
        binary          : in     vl_logic_vector(3 downto 0);
        bcd             : out    vl_logic_vector(7 downto 0)
    );
end binary_to_bcd_4bit;
