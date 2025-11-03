module nonblocking_example;
  reg [7:0] a, b, c;

  initial begin
    a = 5;
    b = 10;
    c = 8;

    c <= a + b;   // Scheduled → z will be updated to 15 later
    a <= c + 2;   // Scheduled → a will be updated to (old c + 2) = 10 later
    b <= a + 3;   // Scheduled → b will be updated to (old a + 3) = 8 later

    #1; // wait for updates to take effect

    $display("After non-blocking assignments:a = %0d, b = %0d, c = %0d", a, b, c);
  end
endmodule
