`include "uvm_macros.svh"
import uvm_pkg::*;

module tb;
   int verbosity = 0;
  
  initial begin
    
    
    //----- To check the default verbosity level -----
    
    //verbosity = uvm_top.get_report_verbosity_level();
    $display("default verbosity level : %0d",verbosity);
    
    
    
    // -------To change the default verbosity level -------
    
    uvm_top.set_report_verbosity_level(UVM_HIGH); //set default verbosity levle, as the function returns void.
    
        
    //`uvm_info("TB_TOP", "informative message", UVM_LOW);
    `uvm_info("TB_TOP", "informative message", UVM_HIGH);
    `uvm_warning ("TB_TOP", "WARNING" );
    
        
  end
endmodule