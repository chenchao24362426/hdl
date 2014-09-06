// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Double_Range.v
// Created: 2014-09-06 13:26:47
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Double_Range
// Source Path: controllerHdl/Field_Oriented_Control/Open_Loop_Control/Generate_Position_And_Voltage_Ramp/Frequency_To_Volts/Double_Range
// Hierarchy Level: 6
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Double_Range
          (
           In1,
           Out1
          );


  input   signed [31:0] In1;  // sfix32_En22
  output  signed [31:0] Out1;  // sfix32_En21


  wire signed [31:0] Data_Type_Conversion_out1;  // sfix32_En21


  // <S27>/Data Type Conversion
  assign Data_Type_Conversion_out1 = {In1[31], In1[31:1]};



  assign Out1 = Data_Type_Conversion_out1;

endmodule  // controllerHdl_Double_Range

