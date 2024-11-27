// Code your testbench here
// or browse Examples

/*
Assignment-3: A32

Write UVM code to throw a warning at 50 nsec, error at 100 nsec, and forcefully stop the simulation at 200 nsec from testbench top.

*/

`include "uvm_macros.svh"
import uvm_pkg::*;

module tb;
  
  initial begin
    #50;
    `uvm_warning("TB_TOP", "WARNING MESSAGE")
    #50;
    `uvm_error("TB_TOP", "ERROR MESSAGE")
    #100;
    `uvm_fatal("TB_TOP", "FATAL --> STOP SIMULATION ")
  end
  
  
endmodule