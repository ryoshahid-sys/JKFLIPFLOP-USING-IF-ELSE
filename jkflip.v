module jkflip(j, k, clk, rst, q); 
  input j, k, clk, rst; 
  output reg q; 
  always @(posedge clk or posedge rst) begin 
    if (rst) 
      q <= 0; // Reset the flip-flop 
    else if (j == 0 && k == 0) 
      q <= q; // No change 
    else if (j == 0 && k == 1) 
      q <= 0; // Reset 
    else if (j == 1 && k == 0) 
      q <= 1; // Set 
    else if (j == 1 && k == 1) 
      q <= ~q; // Toggle 
  end 
endmodule