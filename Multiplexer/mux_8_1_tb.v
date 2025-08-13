/// Multiplexer testbench 8 to 1

module mux_8to1_tb;
    reg i0,i1,i2,i3,i4,i5,i6,i7;
    reg sel1,sel2,sel3;
    wire y;  
    
    mux_8to1 dut(
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .i4(i4), .i5(i5), .i6(i6), .i7(i7),
        .sel1(sel1), .sel2(sel2), .sel3(sel3),
        .y(y)
    );
    
    initial begin
        // Initialize all inputs
        i0=1; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
        sel1=0; sel2=0; sel3=0;
        #10;
        
        i0=0; i1=1; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
        sel1=0; sel2=0; sel3=1;
        #10;
        
        i0=0; i1=0; i2=1; i3=0; i4=0; i5=0; i6=0; i7=0;
        sel1=0; sel2=1; sel3=0;
        #10;
        
        i0=0; i1=0; i2=0; i3=1; i4=0; i5=0; i6=0; i7=0;
        sel1=0; sel2=1; sel3=1;
        #10;
        
        i0=0; i1=0; i2=0; i3=0; i4=1; i5=0; i6=0; i7=0;
        sel1=1; sel2=0; sel3=0;
        #10;
        
        i0=0; i1=0; i2=0; i3=0; i4=0; i5=1; i6=0; i7=0;
        sel1=1; sel2=0; sel3=1;
        #10;
        
        i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=1; i7=0;
        sel1=1; sel2=1; sel3=0;
        #10;
        
        i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=1;
        sel1=1; sel2=1; sel3=1;
        #10;
        
        $stop;
    end
endmodule
