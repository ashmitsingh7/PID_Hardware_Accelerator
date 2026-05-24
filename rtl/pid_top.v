module pid_top(

input clk,

input signed [15:0] kp,
input signed [15:0] ki,
input signed [15:0] kd,

input signed [15:0] setpoint,
input signed [15:0] feedback,

output signed [31:0] control
);

wire signed [15:0] error;
wire signed [31:0] p;
wire signed [31:0] i;
wire signed [31:0] d;

error_calc EC(
.setpoint(setpoint),
.feedback(feedback),
.error(error)
);

p_block PB(
.kp(kp),
.error(error),
.p_out(p)
);

i_block IB(
.clk(clk),
.ki(ki),
.error(error),
.i_out(i)
);

d_block DB(
.clk(clk),
.kd(kd),
.error(error),
.d_out(d)
);

assign control=p+i+d;

endmodule