library verilog;
use verilog.vl_types.all;
entity dcal is
    port(
        now_date        : in     vl_logic_vector(22 downto 0);
        set_date        : in     vl_logic_vector(22 downto 0);
        dcal_7seg       : out    vl_logic_vector(55 downto 0)
    );
end dcal;
