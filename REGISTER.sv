module REGISTER #(
    parameter integer WIDTH = 32
) (
    input  wire             clk_i,
    input  wire             rst_i,
    input  wire [WIDTH-1:0] data_i,
    output wire [WIDTH-1:0] data_o
);

    reg [WIDTH-1:0] data;

    assign data_o = data;

    always_ff @(posedge clk_i) begin
        if (rst_i) data <= '0;
        if (!clk_gated_i) begin
            data <= data_i;
        end
    end

endmodule
