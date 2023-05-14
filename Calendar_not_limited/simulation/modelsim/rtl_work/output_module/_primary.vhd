library verilog;
use verilog.vl_types.all;
entity output_module is
    port(
        clock_4Hz       : in     vl_logic;
        clock_7seg      : in     vl_logic_vector(55 downto 0);
        date_7seg       : in     vl_logic_vector(55 downto 0);
        dcal_7seg       : in     vl_logic_vector(55 downto 0);
        dset_7seg       : in     vl_logic_vector(55 downto 0);
        mode            : in     vl_logic_vector(2 downto 0);
        set_dday        : in     vl_logic;
        \select\        : in     vl_logic_vector(14 downto 0);
        hex0            : out    vl_logic_vector(6 downto 0);
        hex1            : out    vl_logic_vector(6 downto 0);
        hex2            : out    vl_logic_vector(6 downto 0);
        hex3            : out    vl_logic_vector(6 downto 0);
        hex4            : out    vl_logic_vector(6 downto 0);
        hex5            : out    vl_logic_vector(6 downto 0);
        hex6            : out    vl_logic_vector(6 downto 0);
        hex7            : out    vl_logic_vector(6 downto 0)
    );
end output_module;
