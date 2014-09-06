// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_MATLAB_Function_block.v
// Created: 2014-09-06 13:26:47
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_MATLAB_Function_block
// Source Path: controllerHdl/Field_Oriented_Control/Open_Loop_Control/Sin_Cos/Mark_Extract_Bits/MATLAB Function
// Hierarchy Level: 6
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_MATLAB_Function_block
          (
           u,
           y
          );


  input   [17:0] u;  // ufix18
  output  [8:0] y;  // ufix9


  wire [8:0] y1;  // ufix9_E9


  //MATLAB Function 'Open_Loop_Control/Sin_Cos/Mark_Extract_Bits/MATLAB Function': '<S37>:1'
  // Non-tunable mask parameter
  //'<S37>:1:8'
  //'<S37>:1:10'
  assign y1 = u[17:9];
  //'<S37>:1:14'
  assign y = y1;



endmodule  // controllerHdl_MATLAB_Function_block

