module half_sub(
    input A,
    input B,
    output sum,
    output Cout
    // Declare Y output
    // Declare carry output
);

    assign sum = A^B;
    
    assign Cout = ~A&B;

endmodule