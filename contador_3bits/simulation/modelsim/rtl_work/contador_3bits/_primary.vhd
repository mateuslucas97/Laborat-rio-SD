library verilog;
use verilog.vl_types.all;
entity contador_3bits is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0)
    );
end contador_3bits;
