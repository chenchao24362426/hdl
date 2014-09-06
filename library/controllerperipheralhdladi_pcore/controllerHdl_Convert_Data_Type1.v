// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Convert_Data_Type1.v
// Created: 2014-09-06 13:26:47
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Convert_Data_Type1
// Source Path: controllerHdl/Field_Oriented_Control/Open_Loop_Control/Transform_dq_to_ABC/Inverse_Park_Transform/Convert_Data_Type1
// Hierarchy Level: 6
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Convert_Data_Type1
          (
           In1,
           Out1
          );


  input   signed [35:0] In1;  // sfix36_En28
  output  signed [17:0] Out1;  // sfix18_En10


  wire signed [17:0] Data_Type_Conversion_out1;  // sfix18_En10


  // <S42>/Data Type Conversion
  assign Data_Type_Conversion_out1 = In1[35:18];



  assign Out1 = Data_Type_Conversion_out1;

endmodule  // controllerHdl_Convert_Data_Type1

