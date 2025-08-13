////// Multiplexer 8 to 1 //////

module mux_8to1(
    input i0, i1, i2, i3, i4, i5, i6, i7, 
    input sel1, sel2, sel3,
    output y
);
    wire w0, w1, w2, w3, w4, w5, w6, w7;
    wire not_sel1, not_sel2, not_sel3;
    
    // Invert select signals
    not n1(not_sel1, sel1);
    not n2(not_sel2, sel2);
    not n3(not_sel3, sel3);
    
    // AND gates for each input
    and a0(w0, not_sel1, not_sel2, not_sel3, i0);
    and a1(w1, not_sel1, not_sel2,     sel3, i1);
    and a2(w2, not_sel1,     sel2, not_sel3, i2);
    and a3(w3, not_sel1,     sel2,     sel3, i3);
    and a4(w4,     sel1, not_sel2, not_sel3, i4);
    and a5(w5,     sel1, not_sel2,     sel3, i5);
    and a6(w6,     sel1,     sel2, not_sel3, i6);
    and a7(w7,     sel1,     sel2,     sel3, i7);
    
    // OR gate combining all AND outputs
    or o1(y, w0, w1, w2, w3, w4, w5, w6, w7);
endmodule