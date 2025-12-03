module halfAdder_tb;
reg a,b,cin;
wire sum,cout;

fullAdder FA(.A(a), .B(b), .Cin(cin), .Sum(sum), .Cout(cout));

initial begin
$monitor("Time=%0t; A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b",$time,a,b,cin,sum,cout);
end

initial begin
a=0; b=0; cin=0; #5;
a=0; b=0; cin=1; #5;
a=0; b=1; cin=0; #5;
a=0; b=1; cin=1; #5;
a=1; b=0; cin=0; #5;
a=1; b=0; cin=1; #5;
a=1; b=1; cin=0; #5;
a=1; b=1; cin=1; #5;
$stop;
end
endmodule