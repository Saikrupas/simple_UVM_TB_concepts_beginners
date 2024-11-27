// Code your testbench here
// or browse Examples


`include "uvm_macros.svh"
import uvm_pkg::*;

////// $sformatf / core method / do-hooks  -- > base classes //////

module tb;
   int data = 276;
  
  initial begin
    // uvm_top.set_report_verbosity_level(UVM_HIGH);
    //`uvm_info("TB_TOP", "INFORMATIVE MESSAGE", UVM_HIGH);
    
    `uvm_info("TB_TOP", $sformatf ("Value of the variable data : %h",data), UVM_MEDIUM); //default radix - decimal format
      
  end
endmodule