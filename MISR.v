`timescale 1ns / 1ps
// 3 bit primitive polynomial LRSR

module MISR(

input clk,
input rst,
input [2:0]M,
output reg [2:0]q
    );
    
 always @ (posedge clk,negedge rst) begin
 
 if (rst )  
 q[2:0]<=3'b000;// seed
 
 // q[0]=0
 // q[1]=0
 // q[2]=1
 else  begin
 q[2]<= q[0] ^ q[1] ^ M[2];// q[0]
 q[1]<=q[2]^M[1];
 q[0]<=q[1]^M[0];
 end

 end 
   

endmodule
