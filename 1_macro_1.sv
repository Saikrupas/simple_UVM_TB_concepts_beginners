`include "uvm_macros.svh"
import uvm_pkg::*;
 
module tb;
 
initial begin
  `uvm_info("TB_TOP", "HELLO WORLD : using UVM_INFO macro", UVM_MEDIUM);//id, msg , verbosity
   $display("[TB_TOP]: HELO WORLD :using $display");
end
 
 
 
endmodule

/*
### The series of information that we get using a reporting macro is 

KERNEL: UVM_INFO (type of reporting macro) /home/runner/testbench.sv (specific file which is sending the message)
(11) (the line no. where we have our reporting macro) @ 0 (time at which it is triggered): 
reporter (path of the component in the hierarchy) [TB_TOP] (ID) 
HELLO WORLD : using UVM_INFO macro (message)

whereas if you consider $display --> we only get the  message we don't get any other information.

*/