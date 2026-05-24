`timescale 1ns/1ps

module pid_tb();

reg clk;

reg signed [15:0] kp;
reg signed [15:0] ki;
reg signed [15:0] kd;

reg signed [15:0] setpoint;
reg signed [15:0] feedback;

wire signed [31:0] control;

pid_top DUT(

.clk(clk),

.kp(kp),
.ki(ki),
.kd(kd),

.setpoint(setpoint),
.feedback(feedback),

.control(control)
);

always #5 clk=~clk;

initial
begin

clk=0;

kp=2;
ki=1;
kd=1;

setpoint=100;
feedback=0;

#50;

feedback=20;

#50;

feedback=50;

#50;

feedback=80;

#50;

feedback=100;

#50;

$stop;

end

endmodule