module twos_compliment(
        input[7:0]A,
        output[7:0]Y);
        
        wire[7:0]string;
        genvar i;
        generate
            full_adder lsb(
            .A(~A[0]),
            .B(1'b1),
            .Y(Y[0]),
            .Cin(1'b0),
            .Cout(string[0]));
            
            for (i = 1; i <8; i = i+1) begin
                full_adder add(
                    .A(~A[i]),
                    .B(1'b0),
                    .Y(Y[i]),
                    .Cin(string[i-1]),
                    .Cout(string[i])
                );
            end
            endgenerate
 endmodule