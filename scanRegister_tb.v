`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2018 07:27:18 PM
// Design Name: 
// Module Name: scanRegister_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module scanRegister_tb(

    );
    
    reg rst;
    reg clk;
    reg TC;
    reg SD;
    reg D;
    wire Q ;
    
    
    
    
    
    
    
    scanRegister DUT (rst, clk,TC, SD,D,Q); 
    
   
   
   initial begin
    #0 clk <= 0;
    
    
    #0 rst <=1;
    #20 rst <=0;
    
    end

    always begin


    #30 TC<=~TC;
    #50 D <= ~D;
    #60 SD <= ~SD;
end


    always begin
    #10 clk= ~clk;
    end

initial begin

#0 TC<=1;
#0 D <= 0;
#0 SD <= 0;

 
 



end
   
    
    
    
endmodule
