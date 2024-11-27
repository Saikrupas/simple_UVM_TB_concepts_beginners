`include "uvm_macros.svh" //gives access to uvm_macros
import uvm_pkg::*; //gives access to all the base classes as well as the macros.



class obj extends uvm_object;
  
  `uvm_object_utils(obj) //macro to register a class created by using uvm_object to the factory.
  
  function new(string inst = "obj"); //standard constructor for uvm_object
    super.new(inst);
  endfunction
  
  
endclass

//////////////////////////////////////////////////////////////////////////////

module tb;
  obj o;
  
  initial begin
    o = new("o");
   end
  
endmodule

