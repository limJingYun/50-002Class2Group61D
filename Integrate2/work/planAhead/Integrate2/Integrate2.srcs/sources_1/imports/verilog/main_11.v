/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module main_11 (
    input clk,
    input rst,
    input left2,
    input center1,
    input right0,
    output reg [1:0] result,
    output reg high1,
    output reg high2,
    output reg high3,
    output reg high4,
    output reg high5,
    output reg high6,
    output reg high7,
    output reg high8,
    output reg high9,
    output reg high10,
    output reg low1,
    output reg low2,
    output reg low3,
    output reg [3:0] rowOn
  );
  
  
  
  wire [1-1:0] M_button_cond1_out;
  reg [1-1:0] M_button_cond1_in;
  button_conditioner_17 button_cond1 (
    .clk(clk),
    .in(M_button_cond1_in),
    .out(M_button_cond1_out)
  );
  wire [1-1:0] M_button_cond2_out;
  reg [1-1:0] M_button_cond2_in;
  button_conditioner_17 button_cond2 (
    .clk(clk),
    .in(M_button_cond2_in),
    .out(M_button_cond2_out)
  );
  wire [1-1:0] M_button_cond3_out;
  reg [1-1:0] M_button_cond3_in;
  button_conditioner_17 button_cond3 (
    .clk(clk),
    .in(M_button_cond3_in),
    .out(M_button_cond3_out)
  );
  wire [1-1:0] M_edge_ctr_value;
  counter_20 edge_ctr (
    .clk(clk),
    .rst(rst),
    .value(M_edge_ctr_value)
  );
  wire [4-1:0] M_mypropogater_rowLit;
  wire [3-1:0] M_mypropogater_numSeq;
  wire [1-1:0] M_mypropogater_row1;
  wire [1-1:0] M_mypropogater_row2;
  wire [1-1:0] M_mypropogater_row3;
  wire [1-1:0] M_mypropogater_row4;
  wire [1-1:0] M_mypropogater_row5;
  wire [1-1:0] M_mypropogater_row6;
  wire [1-1:0] M_mypropogater_row7;
  wire [1-1:0] M_mypropogater_row8;
  wire [1-1:0] M_mypropogater_row9;
  wire [1-1:0] M_mypropogater_row10;
  wire [1-1:0] M_mypropogater_gnd1;
  wire [1-1:0] M_mypropogater_gnd2;
  wire [1-1:0] M_mypropogater_gnd3;
  wire [3-1:0] M_mypropogater_clkChoice;
  propogate_28 mypropogater (
    .clk(clk),
    .rst(rst),
    .rowLit(M_mypropogater_rowLit),
    .numSeq(M_mypropogater_numSeq),
    .row1(M_mypropogater_row1),
    .row2(M_mypropogater_row2),
    .row3(M_mypropogater_row3),
    .row4(M_mypropogater_row4),
    .row5(M_mypropogater_row5),
    .row6(M_mypropogater_row6),
    .row7(M_mypropogater_row7),
    .row8(M_mypropogater_row8),
    .row9(M_mypropogater_row9),
    .row10(M_mypropogater_row10),
    .gnd1(M_mypropogater_gnd1),
    .gnd2(M_mypropogater_gnd2),
    .gnd3(M_mypropogater_gnd3),
    .clkChoice(M_mypropogater_clkChoice)
  );
  wire [2-1:0] M_score_out;
  reg [1-1:0] M_score_en;
  reg [2-1:0] M_score_data;
  reg2bit_29 score (
    .clk(clk),
    .rst(rst),
    .en(M_score_en),
    .data(M_score_data),
    .out(M_score_out)
  );
  
  wire [1-1:0] M_edge_detector1_out;
  reg [1-1:0] M_edge_detector1_in;
  edge_detector_21 edge_detector1 (
    .clk(M_edge_ctr_value),
    .in(M_edge_detector1_in),
    .out(M_edge_detector1_out)
  );
  wire [1-1:0] M_edge_detector2_out;
  reg [1-1:0] M_edge_detector2_in;
  edge_detector_21 edge_detector2 (
    .clk(M_edge_ctr_value),
    .in(M_edge_detector2_in),
    .out(M_edge_detector2_out)
  );
  wire [1-1:0] M_edge_detector3_out;
  reg [1-1:0] M_edge_detector3_in;
  edge_detector_21 edge_detector3 (
    .clk(M_edge_ctr_value),
    .in(M_edge_detector3_in),
    .out(M_edge_detector3_out)
  );
  reg [0:0] M_left_d, M_left_q = 1'h0;
  reg [0:0] M_right_d, M_right_q = 1'h0;
  reg [0:0] M_cent_d, M_cent_q = 1'h0;
  
  wire [1-1:0] M_myalu_z;
  wire [1-1:0] M_myalu_v;
  wire [1-1:0] M_myalu_n;
  wire [8-1:0] M_myalu_alu;
  reg [8-1:0] M_myalu_a;
  reg [8-1:0] M_myalu_b;
  reg [6-1:0] M_myalu_alufn;
  alu_12 myalu (
    .a(M_myalu_a),
    .b(M_myalu_b),
    .alufn(M_myalu_alufn),
    .z(M_myalu_z),
    .v(M_myalu_v),
    .n(M_myalu_n),
    .alu(M_myalu_alu)
  );
  
  always @* begin
    M_cent_d = M_cent_q;
    M_left_d = M_left_q;
    M_right_d = M_right_q;
    
    M_myalu_alufn = 6'h00;
    M_myalu_a = 8'h00;
    M_myalu_b = 8'h00;
    result = 2'h0;
    rowOn = M_mypropogater_rowLit;
    result = M_score_out;
    M_score_data = 2'h0;
    high1 = M_mypropogater_row1;
    high2 = M_mypropogater_row2;
    high3 = M_mypropogater_row3;
    high4 = M_mypropogater_row4;
    high5 = M_mypropogater_row5;
    high6 = M_mypropogater_row6;
    high7 = M_mypropogater_row7;
    high8 = M_mypropogater_row8;
    high9 = M_mypropogater_row9;
    high10 = M_mypropogater_row10;
    low1 = M_mypropogater_gnd1;
    low2 = M_mypropogater_gnd2;
    low3 = M_mypropogater_gnd3;
    M_button_cond1_in = left2;
    M_edge_detector1_in = M_button_cond1_out;
    M_button_cond2_in = center1;
    M_edge_detector2_in = M_button_cond2_out;
    M_button_cond3_in = right0;
    M_edge_detector3_in = M_button_cond3_out;
    if (M_edge_detector1_out) begin
      M_left_d = 1'h1;
    end
    if (M_edge_detector2_out) begin
      M_cent_d = 1'h1;
    end
    if (M_edge_detector3_out) begin
      M_right_d = 1'h1;
    end
    M_myalu_alufn = 6'h33;
    M_myalu_a[2+0-:1] = M_left_q;
    M_myalu_a[1+0-:1] = M_cent_q;
    M_myalu_a[0+0-:1] = M_right_q;
    M_myalu_b[0+2-:3] = M_mypropogater_numSeq;
    if (M_mypropogater_rowLit == 4'h8) begin
      if (M_myalu_alu[0+0-:1]) begin
        M_score_data = 2'h1;
        M_score_en = 1'h1;
      end else begin
        M_score_data = 2'h0;
        M_score_en = 1'h1;
      end
    end else begin
      if (M_mypropogater_rowLit == 4'h9) begin
        if (M_score_out == 2'h0 && M_myalu_alu[0+0-:1]) begin
          M_score_data = 2'h2;
          M_score_en = 1'h1;
        end else begin
          M_score_en = 1'h0;
        end
      end else begin
        if (M_mypropogater_rowLit == 4'h0) begin
          M_score_data = 2'h0;
          M_score_en = 1'h1;
        end else begin
          M_score_en = 1'h0;
          M_left_d = 1'h0;
          M_right_d = 1'h0;
          M_cent_d = 1'h0;
        end
      end
    end
  end
  
  always @(posedge M_edge_ctr_value) begin
    if (rst == 1'b1) begin
      M_left_q <= 1'h0;
      M_right_q <= 1'h0;
      M_cent_q <= 1'h0;
    end else begin
      M_left_q <= M_left_d;
      M_right_q <= M_right_d;
      M_cent_q <= M_cent_d;
    end
  end
  
endmodule