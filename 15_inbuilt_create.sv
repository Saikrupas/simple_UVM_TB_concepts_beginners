// Code your testbench here
// or browse Examples

`include "uvm_macros.svh"
 import uvm_pkg::*;

/////////////////////////////////////////

////// For all the classes ---> create method to create the object
///// for TLM ports ---> new method

class transaction extends uvm_sequence_item; 
  /*
  uvm_sequence_item belongs to uvm_object category.
  */
  
  rand bit[3:0] a; //a and b are input port 
  rand bit[3:0] b;
  bit[4:0] y; // y is output port
  
  function new(input string inst = "transaction");
    super.new(inst);
  endfunction
  
  `uvm_object_utils_begin(transaction)
  `uvm_field_int(a,UVM_DEFAULT) //all the core methods are enabled.
  `uvm_field_int(b,UVM_DEFAULT)
  `uvm_field_int(y,UVM_DEFAULT)
  `uvm_object_utils_end

endclass

/////////////////////////////////////////

module tb;
  
  transaction tr;
// driver drv; // uvm component class for example
  
  initial begin
    tr = transaction::type_id::create("tr"); //create method to ceate an object
      //  drv = drv::type_id::create("drv", null);
    tr.randomize();
    tr.print();
  end
  
endmodule