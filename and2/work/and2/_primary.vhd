library verilog;
use verilog.vl_types.all;
entity and2 is
    port(
        y               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end and2;
