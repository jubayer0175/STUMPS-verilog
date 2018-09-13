`timescale 1ns / 1ps


module LFSR_tb();


reg clk;
reg rst;



wire [2:0] q;

initial begin
#0 clk <= 0;


#0 rst <=1;
#20 rst <=0;

end



LFSR DUT (clk,rst,q);

always #10 clk= ~clk;





endmodule
