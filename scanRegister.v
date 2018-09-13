`timescale 1ns / 1ps

module scanRegister(
input rst,
input clk,
input TC,
input SD,
input D,
output reg Q 
);


wire temp;

assign temp = TC  ?  D : SD  ;

always @ (posedge clk, negedge rst)
   begin
   
   if(rst)
     Q<=0;
   
   else 
     Q<=temp;

end



endmodule
