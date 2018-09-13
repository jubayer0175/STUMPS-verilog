`timescale 1ns / 1ps

module combCloud(

input A,
input B,
input C,
output p1,
output p2,
output p3

    );
    
 
assign p1= (A^C) | (A^B);
assign p3= ~(C|B);
assign p2= p1^p3;    
    

    
endmodule
