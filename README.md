# Approximate_Multiplier
A 4x4  approximat multiplier has been implemented in verilog utilizing a 4:2 compressor module, based on the approximation scheme provided in //reference. Two columns in the partial product tree have 
been reduced using this compressor leading to reduction in the hardware complexity and power consumed for computation. This arrangement of combinational logic has succesfully reduced the
number of LUTs(look up tables) to 12 from a conventinal requirement of 16. Complexity is reduced by compromising the accuraccy in approximate computing. Here careful adjustments have led to a mean relative error of
11.07 percent in the 4x4 bit multiplication.

LUT reduction:
![image](https://github.com/user-attachments/assets/3e448302-88e8-4be7-a34f-bd4ed71c9e0e)

Mean Relative error:
![image](https://github.com/user-attachments/assets/4a030957-81cb-4e0a-bb6f-fb25f3f44f02)

Power consumptions:
![image](https://github.com/user-attachments/assets/9223340d-5263-434e-8638-bd96508f9ac3)


