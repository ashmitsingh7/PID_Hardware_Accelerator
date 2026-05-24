module error_calc(
input signed [15:0] setpoint,
input signed [15:0] feedback,
output signed [15:0] error
);

assign error = setpoint - feedback;

endmodule