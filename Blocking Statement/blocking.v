module blocking_example;
  reg [7:0] a, b, c;

  initial begin
    a = 5;
    b = 10;

    c = a + b;   
    a = c + 2;  
    b = a + 3;  

    $display("After blocking assignments: a = %0d, b = %0d, c = %0d", a, b, c);
  end
endmodule