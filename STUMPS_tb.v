`timescale 1ns / 1ps

module STUMPS_tb();

reg in1,in2,in3,rst,clk,TC;
wire Ao,Bo,Co;
wire [2:0]x;


STUMPS DUT(in1,in2,in3,rst,TC,clk,Ao,Bo,Co,x);

initial begin
#0 clk <= 0;
#0 in1 <=0;
#0 in2<=0;
#0 in3<=0;


#0 rst <=1;
#20 rst <=0;

end

// TC controls the functions clock
// each TC requires 3 system clocks to shift the LFSR value to teh scan chain 
// as scan chain is 3 bit
initial begin
#0 TC <=0;// scan in
#50 TC <=1;// function mode 3 clock cycle 
#10 TC<=0; // scan in again  
#50 TC<=1;// function mode again
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function
#10 TC<=0; // scan in again
#50 TC<=1;// function


end

always #10 clk= ~clk;


endmodule
