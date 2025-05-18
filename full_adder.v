module fa(input a,b,c, output sum,carry);
   assign sum=a^b^cin;
   assign carry=a&b|b&c|a&c;
endmodule

module fa(input a,b,c, output sum,carry);
   assign {carry,sum}=a+b;
endmodule 
