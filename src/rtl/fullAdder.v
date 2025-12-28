module halfAdder(
  input a,b,
  output sum,carry
);

assign sum = a ^ b;
assign carry = a & b;
endmodule


module fullAdder(
  input A,B,Cin,
  output Sum,Cout
);

wire s1,c1,c2;

halfAdder HA1(.a(A), .b(B), .sum(s1), .carry(c1));
halfAdder HA2(.a(s1), .b(Cin), .sum(Sum), .carry(c2));

assign Cout = c1 | c2;
endmodule

