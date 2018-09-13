`timescale 1ns / 1ps
// written for STUMPS exercise 
module STUMPS(
    input in1,
    input in2,
    input in3,
    input rst,
    input TC,
    input clk,
    output Ao,
    output Bo,
    output Co,
    // MISR ssignature
    output [2:0]x
    
    
    );
    
  // wires to connect
  
  wire A,B,X,Y,Z,D,E,U,V,W;
  wire [2:0]sd;  
  wire [2:0]m;
  
  
  // module declaration
  
  scanRegister A_unit (rst,clk,TC,sd[0],in1,A);
  scanRegister B_unit (rst,clk,TC,A,in2,B);
  scanRegister C_unit (rst,clk,TC,B,in3,m[2]);    
  
  combCloud CUT1 (A,B,m[2],X,Y,Z);
  //m[2]=C;
  
  
  
  scanRegister D_unit (rst,clk,TC,sd[1],X,D);
  scanRegister E_unit (rst,clk,TC,D,Y,E);
  scanRegister F_unit (rst,clk,TC,E,Z,m[1]);    
  //m[1]=F  
  
  combCloud CUT2 (D,E,m[1],U,V,W);
  
  scanRegister A0_unit (rst,clk,TC,sd[2],U,Ao);
  scanRegister B0_unit (rst,clk,TC,Ao,V,Bo);
  scanRegister C0_unit (rst,clk,TC,Bo,W,m[0]);
  
  assign Co=m[0];
  
  wire shift;
  
  // Lets call Mr LFSR
  
  LFSR lfsr (clk,rst,shift,sd);
  // lets call MISR
  assign shift = TC ? 0:1; // stop shifting if the curcuit is in function mode
  
  
  
 
  MISR misr (clk,rst,m,x);

    
endmodule
