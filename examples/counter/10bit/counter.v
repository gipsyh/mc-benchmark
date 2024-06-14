module main(
    input wire clk,
);
    reg [9:0] count;
    initial count = 10'b0000000000;
    always @(posedge clk) begin
        count <= count + 1;
    end

    wire prop = (count != 10'b1111111111);
    assert property ( prop );

endmodule