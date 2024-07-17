`define W 10

module main(
    input wire clk,
    input wire rst,
);
    reg [`W-1:0] count;
    initial count = `W'b0000000000;
    always @(posedge clk) begin
        if (rst) begin
            count <= `W'b0000000000;
        end else begin
            count <= count + 1;
        end
    end

    always @(*) begin
        assert(count != `W'b1111111111);
    end

endmodule