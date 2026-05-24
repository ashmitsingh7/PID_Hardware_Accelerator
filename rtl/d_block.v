module d_block(
input clk,
input signed [15:0] kd,
input signed [15:0] error,
output reg signed [31:0] d_out
);

reg signed [15:0] prev=0;

always @(posedge clk)
begin
    d_out <= kd*(error-prev);
    prev <= error;
end

endmodule