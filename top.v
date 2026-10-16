//module top(
//    input [9:0]sw,
//    output [13:0]led
//    );
    
//    wire string1;
//    wire string2;
//    wire string3;
    
//    half_sub a_inst(
//        .A(sw[0]),
//        .B(sw[1]),
//        .sum(led[0]),
//        .Cout(led[1])
//       );

//    ones_compliment b_inst(
//        .A(sw[5:2]),
//        .B(sw[9:6]),
//        .Y(led[5:2])
//        );
    
//    twos_compliment c_inst(
//        .A(sw[9:2]),
//        .Y(led[13:6])
//        );
//endmodule
 
 
 module top(
    input [9:0] sw,
    output [13:0] led
);

    half_sub sub(
        .A(sw[0]), // Take the zeroth signal from switches
        .B(sw[1]), // and the first for B
        .sum(led[0]), // Same for LEDs, just as...
        .Cout(led[1]) // ... the I/O table declares
    );

    // Things are a little more complicated for the other modules
    // They have vector, not scalar inputs
    ones_compliment ones(
        .A(sw[5:2]), // Oh! But we can do this!
        .B(sw[9:6]), // We can take an arbitrary slice of a vector
        .Y(led[5:2]) // And assign it into our vectors
    );

    // Be careful with this. Make sure you do the following:
    // - [MSB:LSB] ordering
    // - Ensure the width of each signal matches

    // And, finally:
    twos_compliment two(
        .A(sw[9:2]), // 8 bits!
        .Y(led[13:6]) // 8 more bits :)
    );

endmodule