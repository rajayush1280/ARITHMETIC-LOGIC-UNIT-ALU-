`timescale 1ns / 1ps

module alu_tb;

// Inputs
reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

// Outputs
wire [3:0] result;
wire carry_out;

// Instantiate the ALU
basic_alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry_out(carry_out)
);

// Task to apply test values
task apply_test;
input [3:0] a_in;
input [3:0] b_in;
input [2:0] sel_in;
begin
    A = a_in;
    B = b_in;
    sel = sel_in;
    #10;
end
endtask

initial begin

    $monitor("Time=%0t | A=%b B=%b sel=%b | result=%b carry=%b",
              $time, A, B, sel, result, carry_out);

    // Test cases
    apply_test(4'b0101, 4'b0011, 3'b000); // Addition
    apply_test(4'b0101, 4'b0011, 3'b001); // Subtraction
    apply_test(4'b1100, 4'b1010, 3'b010); // AND
    apply_test(4'b1100, 4'b1010, 3'b011); // OR
    apply_test(4'b1100, 4'b0000, 3'b100); // NOT A

    $finish;

end

endmodule
