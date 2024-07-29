`define WL 64
`define WS 32

module main(
    input wire iex,
    input wire [`WS-1:0] ix,
    input wire iey,
    input wire [`WS-1:0] iy,
);
    reg x = 1, y = 1;
    reg [`WL-1:0] ma = `WL'b0;
    reg [`WL-1:0] mb = `WL'b0;
    reg [`WS-1:0] na = `WS'b0;
    reg [`WS-1:0] nb = `WS'b0;
    reg [`WS-1:0] nc = `WS'b0;
    reg [`WS-1:0] nd = `WS'b0;
    always @(posedge clk) begin
        ma <= na * nb;
        if (x || y)
            mb <= nc * nd;
        if (iex) begin
            na <= ix;
            nc <= ix;
        end
        if (iey) begin
            nb <= iy;
            nd <= iy;
        end
        x <= iex;
        y <= iey;
    end

     assert property ( ma == mb );

endmodule
