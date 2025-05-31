`timescale 1ns / 1ps


module multiplier(
 input [3:0] A,
  input [3:0] B,
   output [7:0] result
    );
    
    wire [3:0] pp [3:0]; 
    genvar i,j;
    generate
    
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
              assign pp[i][j] = A[j] & B[i];
            end
        end
     endgenerate 
      assign result[0]=pp[0][0];
      assign result[1]=pp[0][1]^pp[1][0];
      assign c1=pp[0][1]&pp[1][0];
      wire c1,c2,s1,c3,c4,s2,c5,c6,c7,c8,s3,c9;
     
       
        
        A_compressor a1(pp[0][2],pp[2][0],pp[1][1],c1,result[2],c3);
        A_compressor a2(pp[3][0],pp[0][3],pp[2][1],pp[1][2],s1,c4);
        assign result[3]=s1^c3;
      assign c5=s1&c3;
        fa f1(pp[1][3],pp[2][2],pp[3][1],s2,c6);
        fa f2(c4,c5,s2,result[4],c7);
        fa f3(pp[3][2],pp[2][3],c6,s3,c8);
       
        assign result[5]=s3^c7;
        assign c9=s3&c7;
        fa f4(c9,c8,pp[3][3],result[6],result[7]);
       
endmodule
 
module A_compressor (
    input p1, input p2, input p3, input p4, 
    output Sum, output Carry
);
    assign Sum= p1|p2;
    assign Carry= ~((p1^p2)|(~(p3|p4)));
endmodule


module fa(input a, input b, input c, output s, output Cout);
    assign s    = a ^ b ^ c;
    assign Cout = (a & b) | (b & c) | (c & a);
endmodule
