/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 4
     DIV = 0
     TOP = 4b1010
     UP = 1
*/
module counter_42 (
    input clk,
    input rst,
    output reg [3:0] value
  );
  
  localparam SIZE = 3'h4;
  localparam DIV = 1'h0;
  localparam TOP = 4'ha;
  localparam UP = 1'h1;
  
  
  reg [3:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 4'ha;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[0+3-:4];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h1 && M_ctr_q == 4'ha) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h1 && M_ctr_q == 1'h0) begin
        M_ctr_d = 4'ha;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
