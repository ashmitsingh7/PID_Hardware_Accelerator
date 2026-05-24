module p_block(
input signed [15:0] kp,
input signed [15:0] error,
output signed [31:0] p_out
);

assign p_out = kp*error;

endmodule