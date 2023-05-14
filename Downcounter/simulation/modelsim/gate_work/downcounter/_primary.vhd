library verilog;
use verilog.vl_types.all;
entity downcounter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0);
        carry           : out    vl_logic
    );
end downcounter;
