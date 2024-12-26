// Code your testbench here
// or browse Examples

`include "uvm_macros.svh"
import uvm_pkg::*;

class temp extends uvm_object;
  `uvm_object_utils(temp) //factory registeration
 
  bit[3:0] data_temp;
  
  function new(string inst = "temp");
    super.new(inst);
  endfunction
  
 ////DO-HOOK : print implementation
  
  virtual function void do_print(uvm_printer printer);
    super.do_print(printer);
    printer.print_field("data_temp", data_temp, $bits(data_temp), UVM_DEC);
  endfunction
  
 
endclass

//////////////////////////////////////////////////////////////////////////////

// --------MAIN CLASS------------
class transaction extends uvm_sequence_item;
  
  `uvm_object_utils(transaction)
  
  rand bit[3:0] data;
  temp t;
  
  function new(string inst = "transaction");
    super.new(inst);
    t = new("t");
  endfunction
  
  virtual function void do_print(uvm_printer printer);
    super.do_print(printer);
    printer.print_field("data", data, $bits(data), UVM_DEC);
    printer.print_object("t", t);
  endfunction
  
  
  ////// DO-HOOKS : copy implementation
   virtual function void do_copy (uvm_object rhs);
     transaction tr; //instance of transaction class
     super.do_copy(rhs);
     $cast(tr, rhs);
     data = tr.data;
     t.data_temp = tr.t.data_temp;
   endfunction
  
endclass

//////////////////////////////////////////////////////////////////////////////

module tb;
  transaction tr_a, tr_b;
  
  initial begin
    ////////////////adding constructor to both the instances
    tr_a = new("tr_a");
    tr_b = new("tr_b");
    
    //////////////generate random data to one of the instance
    tr_a.randomize();
    tr_a.t.data_temp = 4'b0100; //manually add an value to the data_temp
    tr_a.print();
    
    ////////////copy the content of instance of a to b
    tr_b.copy(tr_a);
    tr_b.print();
    
    /////////////update the content from any one instance
    tr_b.t.data_temp = 4'b0000;
    tr_a.print();
    tr_b.print();
  end
  
endmodule

////////////////////////////////////////////////////////////////////////////