// Code your testbench here
// or browse Examples
`include "uvm_macros.svh"
import uvm_pkg::*;

///// print, deep-copy, compare, clone, pack/unpack, record, create : CORE METHODS

////induilt implementation / do-hook.

///field macros.

class transaction extends uvm_sequence_item;
  
  rand bit[3:0] data;
  
  function new(string inst = "transaction"); //standard constructor for uvm_object class
    super.new(inst); 
  endfunction
  
  `uvm_object_utils_begin(transaction)
  `uvm_field_int(data, UVM_DEFAULT | UVM_DEC) 
  `uvm_object_utils_end
endclass

///////////////////////////////////////////////////////////////////////////////////////

module tb;
  transaction t;
  
  initial begin
    t = new("t");
    t.randomize();
    t.print(uvm_default_printer); //to change the format in which data display ---> tree, table (default), line format.
  end
endmodule