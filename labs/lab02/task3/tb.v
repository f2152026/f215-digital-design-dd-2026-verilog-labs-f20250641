// tb.v
// Starter testbench template -- YOU complete this file.

module tb;
    reg[1:0] A;
    reg[1:0] B;
    wire GT;
    wire LT;
    wire EQ;

    comp2 uut(
        A,
        B,
        GT,
        LT,
        EQ
    );

    initial begin
        {A,B}=0000; #5;
        {A,B}=0001; #5;
        {A,B}=0010; #5;
        {A,B}=0011; #5;
        {A,B}=0100; #5;
        {A,B}=0101; #5;
        {A,B}=0110; #5;
        {A,B}=0111; #5;
        {A,B}=1000; #5;
        {A,B}=1001; #5;
        {A,B}=1010; #5;
        {A,B}=1011; #5;
        {A,B}=1100; #5;
        {A,B}=1101; #5;
        {A,B}=1110; #5;
        {A,B}=1111; #5;
    end

    initial
        $monitor("GT %b/LT %b/EQ %b", GT, LT, EQ);

endmodule