// Code your testbench here
// or browse Examples
`include "uvm_macros.svh"
import uvm_pkg::*;

class transaction extends uvm_sequence_item;
  
  `uvm_object_utils(transaction)
  
  rand bit[3:0] data;
  
  function new(string inst = "transaction");
    super.new(inst);
  endfunction
  
  virtual function void do_print (uvm_printer printer);
    super.do_print(printer);
    printer.print_field_int("data", data, $bits(data), UVM_DEC); 
   //printer.print_field("data", data, $bits(data), UVM_DEC);
    
  endfunction
endclass

//////////////////////////////////////////////////////////////////////////////////////

module tb;
  transaction t;
  
  initial begin
    t = new("t");
    t.randomize();
    t.print(uvm_default_line_printer);
  end
endmodule