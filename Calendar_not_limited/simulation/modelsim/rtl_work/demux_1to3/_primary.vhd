library verilog;
use verilog.vl_types.all;
entity demux_1to3 is
    port(
        key             : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        on_off          : in     vl_logic;
        up              : out    vl_logic_vector(2 downto 0);
        \select\        : out    vl_logic_vector(2 downto 0)
    );
end demux_1to3;
