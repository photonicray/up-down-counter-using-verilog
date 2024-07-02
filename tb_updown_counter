module tb_updown_counter;

reg clk;
reg reset;
reg up_down;
wire [3:0] count;

// Instantiate the Up-Down Counter
updown_counter UDC (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

// Clock generation
always #5 clk = ~clk; // 10ns clock period

initial begin
    // Initialize inputs
    clk = 0;
    reset = 0;
    up_down = 0;

    // Apply reset
    reset = 1;
    #10;
    reset = 0;

    // Test Up Counting
    up_down = 1; // Set to count up
    #100;        // Wait for 100ns

    // Test Down Counting
    up_down = 0; // Set to count down
    #100;        // Wait for 100ns

    // Apply reset again
    reset = 1;
    #10;
    reset = 0;

    // Test mixed counting
    up_down = 1; // Set to count up
    #50;
    up_down = 0; // Set to count down
    #50;

    // Finish simulation
    $finish;
end

// Monitor the outputs
initial begin
    $monitor("Time: %0t | Reset: %b | Up_Down: %b | Count: %d", $time, reset, up_down, count);
end

endmodule
