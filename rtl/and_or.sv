module and_or #(parameter width=20) (clk, A, B, C, D, Y);

input        logic clk;
input        [width-1:0] A, B, C, D;
output logic [width-1:0] Y;
       logic [width-1:0] X;


genvar i;

	for (i=0;i<width;i=i+1)

	begin

	assign	X[i]=! ( (A[i] & B[i]) | (C[i] & D[i]) );
        
        always_ff @(posedge clk)
         
            Y[i] <= X[i];

	end


endmodule


