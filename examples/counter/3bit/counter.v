module main(
    input wire clk,
);
    reg [2:0] count;
    initial count = 3'b000;
    always @(posedge clk) begin
        count <= count + 1;
    end

    assert property ( count != 3'b111 );

endmodule