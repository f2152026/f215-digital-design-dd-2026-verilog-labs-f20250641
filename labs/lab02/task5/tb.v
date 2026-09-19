module tb;
    reg [3:0] A;
    reg [3:0] B;
    reg op;
    wire [3:0] result;

    alu uut(
        A,
        B,
        op,
        result
    );

    integer i, j;

    initial begin
        A = 7; B = 3; op = 0; #5;
        op = 1; #5;

        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                {A, B} = {i[3:0], j[3:0]};
                op = 0; #5;
                op = 1; #5;
            end
        end
        $finish;
    end

    initial
        $monitor("A=%d B=%d op=%b result=%d", A, B, op, result);

endmodule