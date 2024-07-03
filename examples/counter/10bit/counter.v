`define W 10

module main(
    input wire clk,
);
    reg [`W-1:0] count;
    initial count = `W'b0000000000;
    always @(posedge clk) begin
        count <= count + 1;
    end

    wire prop = (count != `W'b1111111111);
    assert property ( prop );

endmodule