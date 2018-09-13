`timescale 1ns / 1ps


module  MISR_tb();


reg clk;
reg rst;
reg [2:0]M;


wire [2:0] q;

initial begin
#0 clk <= 0;
#0 M <= 3'd0;

#0 rst <=1;
#20 rst <=0;

end



MISR DUT (clk,rst,M,q);

always #10 clk= ~clk;





endmodule
