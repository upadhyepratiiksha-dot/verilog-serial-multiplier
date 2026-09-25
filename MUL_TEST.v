module MUL_test;
reg [15:0] data_in;
reg clk, start, reset;
wire done, eqz;
wire LdA, LdB, LdP, clrP, decB;
wire [15:0] product;

MUL_datapath DP (
    .eqz     (eqz),
    .product (product),
    .LdA     (LdA),
    .LdB     (LdB),
    .LdP     (LdP),
    .clrP    (clrP),
    .decB    (decB),
    .data_in (data_in),
    .clk     (clk)
);

controller CON (
    .LdA   (LdA),
    .LdB   (LdB),
    .LdP   (LdP),
    .clrP  (clrP),
    .decB  (decB),
    .done  (done),
    .clk   (clk),
    .eqz   (eqz),
    .start (start),
    .reset (reset)
);

initial begin
    clk   = 1'b0;
    reset = 1'b1;
    start = 1'b0;
    #10 reset = 1'b0;
    #3  start = 1'b1;
    #500 $finish;
end

always #5 clk = ~clk;

initial begin
    data_in = 17;
    #17 data_in = 17;
    #10 data_in = 5;
end

initial begin
    $monitor($time, " product=%d done=%b eqz=%b", product, done, eqz);
    $dumpfile("mul.vcd");
    $dumpvars(0, MUL_test);
end
endmodule
