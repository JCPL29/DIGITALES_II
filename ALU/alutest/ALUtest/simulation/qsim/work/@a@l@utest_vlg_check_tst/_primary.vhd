library verilog;
use verilog.vl_types.all;
entity ALUtest_vlg_check_tst is
    port(
        display0        : in     vl_logic_vector(6 downto 0);
        display1        : in     vl_logic_vector(6 downto 0);
        display_2       : in     vl_logic_vector(6 downto 0);
        display_3       : in     vl_logic_vector(6 downto 0);
        NZVC            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALUtest_vlg_check_tst;
