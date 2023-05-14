library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        \in\            : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(2 downto 0)
    );
end demux;
