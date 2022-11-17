library verilog;
use verilog.vl_types.all;
entity ram is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        writen          : in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end ram;
