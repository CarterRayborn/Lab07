module ones_compliment(
        input[3:0]A,
        input[3:0]B,
        output[3:0]Y
        );
        
        wire[3:0]string1;
        wire[3:0]string2;
        wire[3:0]string3;
        genvar i;
        generate
            full_adder lsb(
            .A(A[0]),
            .B(B[0]),
            .Y(string3[0]),
            .Cin(1'b0),
            .Cout(string1[0]));
            
            for (i = 1; i<4; i = i+1) begin
                full_adder add(
                    .A(A[i]),
                    .B(B[i]),
                    .Y(string3[i]),
                    .Cin(string1[i-1]),
                    .Cout(string1[i])
                );
            end
            endgenerate
            
            
        generate
            full_adder lsp(
            .A(string3[0]),
            .B(1'b0),
            .Y(Y[0]),
            .Cin(string1[3]),
            .Cout(string2[0]));
            
            for (i = 1; i<4; i = i+1) begin
                full_adder add(
                    .A(string3[i]),
                    .B(1'b0),
                    .Y(Y[i]),
                    .Cin(string2[i-1]),
                    .Cout(string2[i])
                );
            end
            endgenerate
            

 endmodule





