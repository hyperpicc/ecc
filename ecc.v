//yu.zhang100@gmail.com
module ecc(clk, rst, enable, din, dx, dy, done);
//ecc_top(clk, rst, enable, din, dx, dy, done);

input clk;
input rst;
input enable;
//input [162:0]k;
input [162:0]din;
output [162:0]dx;
output [162:0]dy;
output done;

ecc_top ecc_top_ins(.clk(clk), .rst(rst), .enable(enable), .reg_done(done),  .dx(dx), .dy(dy), .din(din));

endmodule
