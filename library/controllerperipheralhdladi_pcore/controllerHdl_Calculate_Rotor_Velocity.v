// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Calculate_Rotor_Velocity.v
// Created: 2014-09-06 13:26:47
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Calculate_Rotor_Velocity
// Source Path: controllerHdl/Encoder_To_Position_And_Velocity/Calculate_Rotor_Velocity
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Calculate_Rotor_Velocity
          (
           CLK_IN,
           reset,
           enb_1_2000_0,
           valid,
           position,
           rotor_velocity
          );


  input   CLK_IN;
  input   reset;
  input   enb_1_2000_0;
  input   valid;
  input   signed [17:0] position;  // sfix18_En14
  output  signed [17:0] rotor_velocity;  // sfix18_En8


  wire Constant_out1;
  reg  Delay3_out1;
  reg  [0:1] Delay2_reg;  // ufix1 [2]
  wire [0:1] Delay2_reg_next;  // ufix1 [2]
  wire Delay2_out1;
  wire Detect_Rise_relop1;
  wire Detect_Rise_out1;
  wire Delay2_out1_1;
  wire update_velocity;
  reg signed [17:0] Delay1_out1;  // sfix18_En14
  wire signed [18:0] Add_sub_cast;  // sfix19_En14
  wire signed [18:0] Add_sub_cast_1;  // sfix19_En14
  wire signed [18:0] Add_out1;  // sfix19_En14
  wire signed [17:0] position_delta;  // sfix18_En15
  wire [17:0] time_delta_1;  // ufix18_En3
  wire signed [18:0] Product_cast;  // sfix19_En3
  wire signed [36:0] Product_mul_temp;  // sfix37_En18
  wire signed [35:0] velocity;  // sfix36_En18
  wire signed [35:0] Switch_out1;  // sfix36_En18
  reg signed [35:0] Delay_out1;  // sfix36_En18
  wire signed [17:0] Data_Type_Conversion_out1;  // sfix18_En8

  // First two velocity calculations are not valid
  // 
  // If detect positive rise in valid, this is a bad sample
  // since encoder index just reset. In this case hold the last value
  // 
  // Calculate Velocity


  // <S6>/Constant
  assign Constant_out1 = 1'b1;



  // <S6>/Delay3
  always @(posedge CLK_IN)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_out1 <= 1'b0;
      end
      else if (enb_1_2000_0) begin
        Delay3_out1 <= valid;
      end
    end



  // <S6>/Delay2
  always @(posedge CLK_IN)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_reg[0] <= 1'b0;
        Delay2_reg[1] <= 1'b0;
      end
      else if (enb_1_2000_0) begin
        Delay2_reg[0] <= Delay2_reg_next[0];
        Delay2_reg[1] <= Delay2_reg_next[1];
      end
    end

  assign Delay2_out1 = Delay2_reg[1];
  assign Delay2_reg_next[0] = Constant_out1;
  assign Delay2_reg_next[1] = Delay2_reg[0];



  // <S6>/Detect_Rise
  assign Detect_Rise_relop1 = (valid > Delay3_out1 ? 1'b1 :
              1'b0);



  // <S6>/No_Rise_Detected
  assign Detect_Rise_out1 =  ~ Detect_Rise_relop1;



  // <S6>/Logical Operator
  assign Delay2_out1_1 = Delay2_out1 & Detect_Rise_out1;



  assign update_velocity = Delay2_out1_1;

  // <S6>/Delay1
  always @(posedge CLK_IN)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_out1 <= 18'sb000000000000000000;
      end
      else if (enb_1_2000_0) begin
        Delay1_out1 <= position;
      end
    end



  // <S6>/Add
  assign Add_sub_cast = position;
  assign Add_sub_cast_1 = Delay1_out1;
  assign Add_out1 = Add_sub_cast - Add_sub_cast_1;



  // <S6>/Wrap_NegPi_To_Pi
  controllerHdl_Wrap_NegPi_To_Pi   u_Wrap_NegPi_To_Pi   (.position(Add_out1),  // sfix19_En14
                                                         .wrap(position_delta)  // sfix18_En15
                                                         );

  // <S6>/Time_Delta
  assign time_delta_1 = 18'b110000110101000000;



  // <S6>/Product
  assign Product_cast = time_delta_1;
  assign Product_mul_temp = position_delta * Product_cast;
  assign velocity = Product_mul_temp[35:0];



  // <S6>/Delay
  always @(posedge CLK_IN)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 36'sh000000000;
      end
      else if (enb_1_2000_0) begin
        Delay_out1 <= Switch_out1;
      end
    end



  // <S6>/Switch
  assign Switch_out1 = (update_velocity == 1'b0 ? Delay_out1 :
              velocity);



  // <S6>/Data Type Conversion
  assign Data_Type_Conversion_out1 = Switch_out1[27:10];



  assign rotor_velocity = Data_Type_Conversion_out1;

endmodule  // controllerHdl_Calculate_Rotor_Velocity

