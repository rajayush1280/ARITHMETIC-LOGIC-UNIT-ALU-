module basic_alu(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] sel,
    output reg [3:0] result,
    output reg carry_out
);

reg [4:0] temp;   // temporary variable to store arithmetic result

always @(*) begin
    temp = 5'b00000;   // default

    case(sel)

        3'b000: begin
            temp = A + B;
            result = temp[3:0];
            carry_out = temp[4];
        end

        3'b001: begin
            temp = A - B;
            result = temp[3:0];
            carry_out = temp[4];
        end

        3'b010: begin
            result = A & B;
            carry_out = 1'b0;
        end

        3'b011: begin
            result = A | B;
            carry_out = 1'b0;
        end

        3'b100: begin
            result = ~A;
            carry_out = 1'b0;
        end

        default: begin
            result = 4'b0000;
            carry_out = 1'b0;
        end

    endcase
end
