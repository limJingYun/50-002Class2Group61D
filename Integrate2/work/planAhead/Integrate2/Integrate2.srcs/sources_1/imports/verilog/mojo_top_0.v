/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    input button,
    input button2,
    input button3,
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
    output reg [7:0] ext_sev_seg,
    output reg [3:0] sev_seg_sel,
    output reg [23:0] io_led
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_reset_cond2_out;
  reg [1-1:0] M_reset_cond2_in;
  reset_conditioner_1 reset_cond2 (
    .clk(clk),
    .in(M_reset_cond2_in),
    .out(M_reset_cond2_out)
  );
  wire [1-1:0] M_reset_cond3_out;
  reg [1-1:0] M_reset_cond3_in;
  reset_conditioner_1 reset_cond3 (
    .clk(clk),
    .in(M_reset_cond3_in),
    .out(M_reset_cond3_out)
  );
  wire [1-1:0] M_myState_row1;
  wire [1-1:0] M_myState_row2;
  wire [1-1:0] M_myState_row3;
  wire [1-1:0] M_myState_row4;
  wire [1-1:0] M_myState_row5;
  wire [1-1:0] M_myState_row6;
  wire [1-1:0] M_myState_row7;
  wire [1-1:0] M_myState_row8;
  wire [1-1:0] M_myState_row9;
  wire [1-1:0] M_myState_row10;
  wire [1-1:0] M_myState_gnd1;
  wire [1-1:0] M_myState_gnd2;
  wire [1-1:0] M_myState_gnd3;
  wire [8-1:0] M_myState_totalScore;
  wire [2-1:0] M_myState_rowresult;
  wire [1-1:0] M_myState_startbutt;
  wire [16-1:0] M_myState_scoreDisplay;
  wire [1-1:0] M_myState_test1;
  wire [1-1:0] M_myState_test2;
  wire [8-1:0] M_myState_buttonCounter;
  wire [8-1:0] M_myState_buttonReg;
  wire [8-1:0] M_myState_highScoreOut;
  reg [1-1:0] M_myState_leftBtn;
  reg [1-1:0] M_myState_centBtn;
  reg [1-1:0] M_myState_rightBtn;
  state_4 myState (
    .clk(clk),
    .rst(rst),
    .leftBtn(M_myState_leftBtn),
    .centBtn(M_myState_centBtn),
    .rightBtn(M_myState_rightBtn),
    .row1(M_myState_row1),
    .row2(M_myState_row2),
    .row3(M_myState_row3),
    .row4(M_myState_row4),
    .row5(M_myState_row5),
    .row6(M_myState_row6),
    .row7(M_myState_row7),
    .row8(M_myState_row8),
    .row9(M_myState_row9),
    .row10(M_myState_row10),
    .gnd1(M_myState_gnd1),
    .gnd2(M_myState_gnd2),
    .gnd3(M_myState_gnd3),
    .totalScore(M_myState_totalScore),
    .rowresult(M_myState_rowresult),
    .startbutt(M_myState_startbutt),
    .scoreDisplay(M_myState_scoreDisplay),
    .test1(M_myState_test1),
    .test2(M_myState_test2),
    .buttonCounter(M_myState_buttonCounter),
    .buttonReg(M_myState_buttonReg),
    .highScoreOut(M_myState_highScoreOut)
  );
  wire [7-1:0] M_seg_seg;
  wire [4-1:0] M_seg_sel;
  reg [16-1:0] M_seg_values;
  multi_seven_seg_5 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    M_reset_cond2_in = ~rst_n;
    rst = M_reset_cond2_out;
    M_reset_cond3_in = ~rst_n;
    rst = M_reset_cond3_out;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    M_myState_leftBtn = !button;
    M_myState_centBtn = !button2;
    M_myState_rightBtn = !button3;
    high1 = M_myState_row1;
    high2 = M_myState_row2;
    high3 = M_myState_row3;
    high4 = M_myState_row4;
    high5 = M_myState_row5;
    high6 = M_myState_row6;
    high7 = M_myState_row7;
    high8 = M_myState_row8;
    high9 = M_myState_row9;
    high10 = M_myState_row10;
    low1 = M_myState_gnd1;
    low2 = M_myState_gnd2;
    low3 = M_myState_gnd3;
    ext_sev_seg = M_seg_seg;
    sev_seg_sel = ~M_seg_sel;
    M_seg_values = M_myState_scoreDisplay;
    led[0+1-:2] = M_myState_rowresult;
    led[2+5-:6] = M_myState_totalScore[0+5-:6];
    io_led[0+7-:8] = M_myState_buttonCounter;
    io_led[8+7-:8] = M_myState_buttonReg;
    io_led[16+7-:8] = M_myState_highScoreOut;
  end
endmodule
