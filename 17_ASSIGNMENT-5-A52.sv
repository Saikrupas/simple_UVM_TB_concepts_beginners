// Code your testbench here
// or browse Examples

/*

Assignment-5: A52

Write a UVM code to use do_hook and create method.

*/

`include "uvm_macros.svh"
import uvm_pkg::*;

class my_transaction extends uvm_object;
  
  `uvm_object_utils(my_transaction)
  
  int a = 4;
  int b = 5;
  int c = 6;
  
  function new(string inst = "my_transaction");
    super.new(inst);
  endfunction
  
  virtual function void do_print (uvm_printer printer);
    super.do_print(printer);
    printer.print_field_int("a", a, $bits(a), UVM_DEC); 
    printer.print_field_int("b", b, $bits(b), UVM_DEC);
    printer.print_field_int("c", c, $bits(c), UVM_DEC);
    
  endfunction
endclass

//////////////////////////////////////////////////////////////////////////////////////

module tb;
  my_transaction t;
  
  initial begin
    t = my_transaction::type_id::create("t");
    t.print(uvm_default_printer);
  end
endmodule