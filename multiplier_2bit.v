module multiplier_2bit (
    input  [1:0] a,    
    input  [1:0] b,    
    output [3:0] y     
);
    wire p0, p1, p2, p3, s1, c1;

    
    assign p0 = a[0] & b[0];
    assign p1 = a[0] & b[1];
    assign p2 = a[1] & b[0];
    assign p3 = a[1] & b[1];

    assign y[0] = p0;
    assign s1   = p1 ^ p2;
    assign c1   = p1 & p2;
    assign y[1] = s1;
    assign y[2] = p3 ^ c1;
    assign y[3] = p3 & c1;
endmodule


module multiplier_2bit (
    input  [1:0] a,    
    input  [1:0] b,    
    output [3:0] y     
);
  assign y=a*b;
endmodule 
