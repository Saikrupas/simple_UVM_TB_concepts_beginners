/*
Assignment-2: A31

Assume that you have four variables initialized to the constant values as mentioned below. Use UVM_INFO to display the values of the variables on the Console in the hexadecimal Format. 1) reg [3:0] a = 4'b1010 2) reg [15:0 ] b = 16'h1122 3) integer c = 12; 4) reg d = 1;

*/

`include "uvm_macros.svh"
import uvm_pkg::*;

module tb;
  reg [3:0] a = 4'b1010;
  reg [15:0] b = 16'h1122;
  integer c = 12;
  reg d = 1;
  
  initial begin
    
   /* `uvm_info("TB_TOP", $sformatf("value of a : %h", a), UVM_MEDIUM);
    `uvm_info("TB_TOP", $sformatf("value of b : %h", b), UVM_NONE);
    `uvm_info("TB_TOP", $sformatf("value of c : %h", c), UVM_NONE);
    `uvm_info("TB_TOP", $sformatf("value of d : %h", d), UVM_MEDIUM); */
    
    `uvm_info("TB_TOP", $sformatf("value of a : %h, b :%h, c : %h, d : %h", a,b,c,d), UVM_MEDIUM)
  end
endmodule
  
  