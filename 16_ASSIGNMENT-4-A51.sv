/*
Assignment 4: A51

Create class extending uvm_object base 
class consisting of three data members (reg [3:0] a, reg [7:0] b, reg [15:0] c). 
Use the Random number facility of SV to generate a random number for b and c. 
Finally, print the value of all the data members on the Console.
  
 */ 

`include "uvm_macros.svh"
import uvm_pkg::*;

class transaction extends uvm_object;
  reg[3:0]  a = 4'b0000;
  rand reg[7:0]  b;
  rand reg[15:0] c;
  
  function new(string inst = "transaction");
    super.new(inst);
  endfunction
  
  `uvm_object_utils_begin(transaction)
  `uvm_field_int(a,UVM_DEFAULT)
  `uvm_field_int(b,UVM_DEFAULT)
  `uvm_field_int(c,UVM_DEFAULT)
  `uvm_object_utils_end
  
endclass

//////////////////////////////////////////////////////////////////////////

module tb;
  transaction tr;
  
  initial begin
    tr = transaction::type_id::create("tr");
    tr.randomize();
    tr.print();
  end
endmodule