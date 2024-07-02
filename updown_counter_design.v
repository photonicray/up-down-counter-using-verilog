module updown_counter (
    input clk,          // Clock input
    input reset,        // Reset input
    input up_down,      // Up/Down control input
    output reg [3:0] count // 4-bit counter output
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;  // Reset counter to 0
    else begin
        if (up_down)
            count <= count + 1; // Increment counter
        else
            count <= count - 1; // Decrement counter
    end
end

endmodule
