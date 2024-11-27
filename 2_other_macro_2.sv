`include "uvm_macros.svh"
import uvm_pkg::*;
 
module tb;
 
initial begin
   
  `uvm_info("TB_TOP", "THIS IS INFORMATIVE MESSAGE", UVM_MEDIUM);//id, msg , verbosity >= default(UVM_MEDIUM)
  
  #10;
  `uvm_warning("TB_TOP", "THIS IS WARNING"); //id,msg
  #10;
  `uvm_error("TB_TOP", "THIS IS ERROR"); //id, msg
  #10;
  `uvm_fatal("TB_TOP","THIS IS FATAL ERROR, STOPPING THE SIMULATION");// id, msg
  
end
 
 
 
endmodule

