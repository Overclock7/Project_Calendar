library verilog;
use verilog.vl_types.all;
entity binary_to_bcd_24bit is
    port(
        binary          : in     vl_logic_vector(24 downto 0);
        bcd_final       : out    vl_logic_vector(19 downto 0)
    );
end binary_to_bcd_24bit;
