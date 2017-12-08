/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module state_4 (
    input clk,
    input rst,
    input leftBtn,
    input centBtn,
    input rightBtn,
    output reg row1,
    output reg row2,
    output reg row3,
    output reg row4,
    output reg row5,
    output reg row6,
    output reg row7,
    output reg row8,
    output reg row9,
    output reg row10,
    output reg gnd1,
    output reg gnd2,
    output reg gnd3,
    output reg [7:0] totalScore,
    output reg [1:0] rowresult,
    output reg startbutt,
    output reg [15:0] scoreDisplay,
    output reg test1,
    output reg test2,
    output reg [7:0] buttonCounter,
    output reg [7:0] buttonReg,
    output reg [7:0] highScoreOut
  );
  
  
  
  localparam MAIN_state = 2'd0;
  localparam HALT_state = 2'd1;
  localparam SUMUP_state = 2'd2;
  
  reg [1:0] M_state_d, M_state_q = HALT_state;
  wire [8-1:0] M_btnCounter_count;
  reg [1-1:0] M_btnCounter_button;
  reg [1-1:0] M_btnCounter_button2;
  reg [1-1:0] M_btnCounter_button3;
  bcounter_6 btnCounter (
    .clk(clk),
    .rst(rst),
    .button(M_btnCounter_button),
    .button2(M_btnCounter_button2),
    .button3(M_btnCounter_button3),
    .count(M_btnCounter_count)
  );
  wire [8-1:0] M_scoreSum_out;
  reg [1-1:0] M_scoreSum_en;
  reg [8-1:0] M_scoreSum_data;
  reg8bit_7 scoreSum (
    .clk(clk),
    .rst(rst),
    .en(M_scoreSum_en),
    .data(M_scoreSum_data),
    .out(M_scoreSum_out)
  );
  wire [8-1:0] M_btnReg_out;
  reg [1-1:0] M_btnReg_en;
  reg [8-1:0] M_btnReg_data;
  reg8bit_7 btnReg (
    .clk(clk),
    .rst(rst),
    .en(M_btnReg_en),
    .data(M_btnReg_data),
    .out(M_btnReg_out)
  );
  wire [8-1:0] M_addReg_out;
  reg [1-1:0] M_addReg_en;
  reg [8-1:0] M_addReg_data;
  reg8bit_7 addReg (
    .clk(clk),
    .rst(rst),
    .en(M_addReg_en),
    .data(M_addReg_data),
    .out(M_addReg_out)
  );
  
  wire [2-1:0] M_mainState_result;
  wire [1-1:0] M_mainState_high1;
  wire [1-1:0] M_mainState_high2;
  wire [1-1:0] M_mainState_high3;
  wire [1-1:0] M_mainState_high4;
  wire [1-1:0] M_mainState_high5;
  wire [1-1:0] M_mainState_high6;
  wire [1-1:0] M_mainState_high7;
  wire [1-1:0] M_mainState_high8;
  wire [1-1:0] M_mainState_high9;
  wire [1-1:0] M_mainState_high10;
  wire [1-1:0] M_mainState_low1;
  wire [1-1:0] M_mainState_low2;
  wire [1-1:0] M_mainState_low3;
  wire [4-1:0] M_mainState_rowOn;
  reg [1-1:0] M_mainState_clk;
  reg [1-1:0] M_mainState_rst;
  reg [1-1:0] M_mainState_left2;
  reg [1-1:0] M_mainState_center1;
  reg [1-1:0] M_mainState_right0;
  main_10 mainState (
    .clk(M_mainState_clk),
    .rst(M_mainState_rst),
    .left2(M_mainState_left2),
    .center1(M_mainState_center1),
    .right0(M_mainState_right0),
    .result(M_mainState_result),
    .high1(M_mainState_high1),
    .high2(M_mainState_high2),
    .high3(M_mainState_high3),
    .high4(M_mainState_high4),
    .high5(M_mainState_high5),
    .high6(M_mainState_high6),
    .high7(M_mainState_high7),
    .high8(M_mainState_high8),
    .high9(M_mainState_high9),
    .high10(M_mainState_high10),
    .low1(M_mainState_low1),
    .low2(M_mainState_low2),
    .low3(M_mainState_low3),
    .rowOn(M_mainState_rowOn)
  );
  
  wire [1-1:0] M_myalu_z;
  wire [1-1:0] M_myalu_v;
  wire [1-1:0] M_myalu_n;
  wire [8-1:0] M_myalu_alu;
  reg [8-1:0] M_myalu_a;
  reg [8-1:0] M_myalu_b;
  reg [6-1:0] M_myalu_alufn;
  alu_11 myalu (
    .a(M_myalu_a),
    .b(M_myalu_b),
    .alufn(M_myalu_alufn),
    .z(M_myalu_z),
    .v(M_myalu_v),
    .n(M_myalu_n),
    .alu(M_myalu_alu)
  );
  
  reg result;
  
  reg anybttnStart;
  
  reg [7:0] highScore;
  
  wire [12-1:0] M_trans_digits;
  reg [10-1:0] M_trans_value;
  bin_to_dec_12 trans (
    .value(M_trans_value),
    .digits(M_trans_digits)
  );
  
  always @* begin
    M_state_d = M_state_q;
    
    test1 = 1'h0;
    test2 = 1'h0;
    buttonCounter = M_btnCounter_count;
    buttonReg = M_btnReg_out;
    startbutt = 1'h0;
    M_mainState_clk = clk;
    totalScore = M_scoreSum_out;
    M_scoreSum_data = 8'h00;
    M_scoreSum_en = 1'h0;
    M_addReg_data = M_scoreSum_out;
    M_addReg_en = 1'h0;
    M_mainState_rst = rst;
    rowresult = M_mainState_result;
    M_mainState_left2 = leftBtn;
    M_mainState_right0 = rightBtn;
    M_mainState_center1 = centBtn;
    highScore = 8'h00;
    highScoreOut = highScore;
    M_btnCounter_button = leftBtn;
    M_btnCounter_button2 = rightBtn;
    M_btnCounter_button3 = centBtn;
    M_btnReg_data = 8'h00;
    M_btnReg_en = 1'h0;
    M_myalu_a = 1'h0;
    M_myalu_b = 1'h0;
    M_myalu_alufn = 1'h0;
    row1 = 1'h0;
    row2 = 1'h0;
    row3 = 1'h0;
    row4 = 1'h0;
    row5 = 1'h0;
    row6 = 1'h0;
    row7 = 1'h0;
    row8 = 1'h0;
    row9 = 1'h0;
    row10 = 1'h0;
    gnd1 = 1'h1;
    gnd2 = 1'h1;
    gnd3 = 1'h1;
    scoreDisplay[12+3-:4] = 1'h0;
    scoreDisplay[8+3-:4] = 1'h0;
    scoreDisplay[4+3-:4] = 1'h0;
    scoreDisplay[0+3-:4] = 1'h0;
    M_trans_value = 1'h0;
    
    case (M_state_q)
      MAIN_state: begin
        test1 = 1'h1;
        M_addReg_en = 1'h1;
        M_scoreSum_en = 1'h0;
        M_btnCounter_button = 1'h0;
        M_btnCounter_button2 = 1'h0;
        M_btnCounter_button3 = 1'h0;
        M_btnReg_en = 1'h0;
        gnd1 = M_mainState_low1;
        gnd2 = M_mainState_low2;
        gnd3 = M_mainState_low3;
        row1 = M_mainState_high1;
        row2 = M_mainState_high2;
        row3 = M_mainState_high3;
        row4 = M_mainState_high4;
        row5 = M_mainState_high5;
        row6 = M_mainState_high6;
        row7 = M_mainState_high7;
        row8 = M_mainState_high8;
        row9 = M_mainState_high9;
        row10 = M_mainState_high10;
        if (M_mainState_result != 2'h0 && M_mainState_rowOn == 4'ha) begin
          M_myalu_alufn = 6'h00;
          M_myalu_a = M_mainState_result;
          M_myalu_b = M_addReg_out;
          M_scoreSum_data = M_myalu_alu;
          M_scoreSum_en = 1'h1;
          M_addReg_en = 1'h0;
          M_trans_value = M_scoreSum_out;
          scoreDisplay[0+11-:12] = M_trans_digits[0+11-:12];
          scoreDisplay[12+3-:4] = 4'hb;
        end else begin
          if (M_mainState_result == 2'h0 && M_mainState_rowOn == 4'ha) begin
            M_state_d = HALT_state;
          end
        end
      end
      HALT_state: begin
        test2 = 1'h1;
        M_scoreSum_en = 1'h0;
        M_addReg_en = 1'h0;
        if (highScore < M_scoreSum_out) begin
          M_myalu_alufn = 6'h35;
          M_myalu_a = highScore;
          M_myalu_b = M_scoreSum_out;
          if (M_myalu_alu[0+0-:1]) begin
            highScore = M_scoreSum_out;
          end else begin
            
          end
        end
        M_trans_value = highScore;
        scoreDisplay[0+11-:12] = M_trans_digits[0+11-:12];
        scoreDisplay[12+3-:4] = 4'hb;
        row1 = 1'h0;
        row2 = 1'h0;
        row3 = 1'h0;
        row4 = 1'h0;
        row5 = 1'h0;
        row6 = 1'h0;
        row7 = 1'h0;
        row8 = 1'h0;
        row9 = 1'h0;
        row10 = 1'h0;
        gnd1 = 1'h1;
        gnd2 = 1'h1;
        gnd3 = 1'h1;
        test2 = 1'h1;
        M_btnCounter_button = leftBtn;
        M_btnCounter_button2 = rightBtn;
        M_btnCounter_button3 = centBtn;
        M_btnReg_en = 1'h0;
        if (M_btnReg_out < M_btnCounter_count) begin
          anybttnStart = 1'h1;
        end else begin
          anybttnStart = 1'h0;
        end
        if (anybttnStart == 1'h1) begin
          M_mainState_rst = 1'h1;
          M_btnReg_data = M_btnCounter_count;
          M_btnReg_en = 1'h1;
          M_scoreSum_data = 2'h0;
          M_scoreSum_en = 1'h1;
          M_state_d = MAIN_state;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_state_q <= 1'h1;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
endmodule
