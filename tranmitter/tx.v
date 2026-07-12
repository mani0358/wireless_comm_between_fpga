
module half_duplex_top(
    input [3:0] sw,
    input mode,

    input [3:0] rx_data,
    input vt,

    output reg [3:0] tx_data,

    output reg [6:0] seg,
    output an
);

reg [3:0] data;

// MODE CONTROL
always @(*) begin
    if (mode) begin
        tx_data = sw;        // TX MODE
        data = sw;
    end else begin
        tx_data = 4'b0000;   // RX MODE
        if (vt)
            data = rx_data;
        else
            data = 4'b0000;
    end
end

// DISPLAY
always @(*) begin
    case(data)
        4'h0: seg = 7'b1000000;
        4'h1: seg = 7'b1111001;
        4'h2: seg = 7'b0100100;
        4'h3: seg = 7'b0110000;
        4'h4: seg = 7'b0011001;
        4'h5: seg = 7'b0010010;
        4'h6: seg = 7'b0000010;
        4'h7: seg = 7'b1111000;
        4'h8: seg = 7'b0000000;
        4'h9: seg = 7'b0010000;
        default: seg = 7'b1111111;
    endcase
end

assign an = 0;
