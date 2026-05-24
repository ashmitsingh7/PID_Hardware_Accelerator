module i_block(
input clk,
input signed [15:0] ki,
input signed [15:0] error,
output reg signed [31:0] i_out
);

reg signed [31:0] integral=0;

always @(posedge clk)
begin
    integral <= integral + error;
    i_out <= ki*integral;
end

endmodule