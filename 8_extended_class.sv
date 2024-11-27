// Code your testbench here
// or browse Examples

class add;  ///// BASE CLASS/ PARENT CLASS
  
  bit [3:0] a;
  bit [3:0] b;
  bit [4:0] c;
  
  function new(bit [3:0] a, bit [3:0] b);
    this.a = a;
    this.b = b;
    this.c = a + b;
  endfunction
  
endclass

//////////////////////////////////////////////////////////////////////////////

class mul extends add; //extended class / child class
  
  bit [3:0] p;
  bit [3:0] q;
  bit [7:0] r;
  
  function new(bit [3:0] p, bit [3:0] q); //can return addition and multiplication result
    super.new(p,q); //accessing parent class new method
    this.r = p * q;
  endfunction
  
endclass

/////////////////////////////////////////////////////////////////////////////

module tb;
  mul t; //creating handle/instance of child class, when we extend a child class we basically get an access to all the properties(data) and methods(fun./task) of base class.
  
  int a,m;
  
  initial begin
    t = new(4'b0001,4'b0010);
    a = t.c;
    m = t.r; 
    $display("value of add : %0d and mul : %0d", a,m);
  end
  
endmodule