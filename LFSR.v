`timescale 1ns / 1ps
// 3 bit primitive polynomial LFSR

module LFSR(

input clk,
input rst,
input shift,
output reg [2:0]q
    );
    // 
 always @ (posedge clk,negedge rst) begin
 
 if (rst )  
 q[2:0]<=3'b001;// seed
 
 // q[0]=0
 // q[1]=0
 // q[2]=1
 else if (shift)begin
 q[2]<= q[0] ^ q[1];// q[0]
 q[1]<=q[2];
 q[0]<=q[1];
 end
 
 
 
 
 
 
 
 
 
 end 
   
 
 
    
    
    
    
endmodule
