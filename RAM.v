module RAM (
    input [ADDRESS_WIDTH-1:0] address,
    input [DATA_WIDTH-1:0] data_in,
    input write_enable,
    input clock,
    output reg [DATA_WIDTH-1:0] data_out
);
    reg [DATA_WIDTH-1:0] ram [0:2**ADDRESS_WIDTH-1];

    always @(posedge clock) begin
        if (write_enable)
            ram[address] <= data_in;
        data_out <= ram[address];
    end
endmodule