// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerperipheralhdladi_pcore_dut.v
// Created: 2014-09-06 13:32:10
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerperipheralhdladi_pcore_dut
// Source Path: controllerperipheralhdladi_pcore/controllerperipheralhdladi_pcore_dut
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerperipheralhdladi_pcore_dut
          (
           CLK_IN,
           reset,
           dut_enable,
           adc_current1,
           adc_current2,
           encoder_a,
           encoder_b,
           encoder_index,
           axi_controller_mode,
           axi_command,
           axi_velocity_p_gain,
           axi_velocity_i_gain,
           axi_current_p_gain,
           axi_current_i_gain,
           axi_open_loop_bias,
           axi_open_loop_scalar,
           axi_encoder_zero_offset,
           ce_out_0,
           ce_out_1,
           pwm_a,
           pwm_b,
           pwm_c,
           mon_phase_voltage_a,
           mon_phase_voltage_b,
           mon_phase_current_a,
           mon_phase_current_b,
           mon_rotor_position,
           mon_electrical_position,
           mon_rotor_velocity,
           mon_d_current,
           mon_q_current,
           axi_electrical_pos_err
          );


  input   CLK_IN;
  input   reset;
  input   dut_enable;  // ufix1
  input   signed [17:0] adc_current1;  // sfix18_En17
  input   signed [17:0] adc_current2;  // sfix18_En17
  input   encoder_a;  // ufix1
  input   encoder_b;  // ufix1
  input   encoder_index;  // ufix1
  input   [1:0] axi_controller_mode;  // ufix2
  input   signed [17:0] axi_command;  // sfix18_En8
  input   signed [17:0] axi_velocity_p_gain;  // sfix18_En16
  input   signed [17:0] axi_velocity_i_gain;  // sfix18_En15
  input   signed [17:0] axi_current_p_gain;  // sfix18_En10
  input   signed [17:0] axi_current_i_gain;  // sfix18_En2
  input   signed [17:0] axi_open_loop_bias;  // sfix18_En14
  input   signed [17:0] axi_open_loop_scalar;  // sfix18_En16
  input   signed [17:0] axi_encoder_zero_offset;  // sfix18_En14
  output  ce_out_0;  // ufix1
  output  ce_out_1;  // ufix1
  output  pwm_a;  // ufix1
  output  pwm_b;  // ufix1
  output  pwm_c;  // ufix1
  output  signed [31:0] mon_phase_voltage_a;  // sfix32
  output  signed [31:0] mon_phase_voltage_b;  // sfix32
  output  signed [31:0] mon_phase_current_a;  // sfix32
  output  signed [31:0] mon_phase_current_b;  // sfix32
  output  signed [31:0] mon_rotor_position;  // sfix32
  output  signed [31:0] mon_electrical_position;  // sfix32
  output  signed [31:0] mon_rotor_velocity;  // sfix32
  output  signed [31:0] mon_d_current;  // sfix32
  output  signed [31:0] mon_q_current;  // sfix32
  output  signed [18:0] axi_electrical_pos_err;  // sfix19_En14


  wire enb;
  wire ce_out_0_sig;  // ufix1
  wire ce_out_1_sig;  // ufix1
  wire pwm_a_sig;  // ufix1
  wire pwm_b_sig;  // ufix1
  wire pwm_c_sig;  // ufix1
  wire signed [31:0] mon_phase_voltage_a_sig;  // sfix32
  wire signed [31:0] mon_phase_voltage_b_sig;  // sfix32
  wire signed [31:0] mon_phase_current_a_sig;  // sfix32
  wire signed [31:0] mon_phase_current_b_sig;  // sfix32
  wire signed [31:0] mon_rotor_position_sig;  // sfix32
  wire signed [31:0] mon_electrical_position_sig;  // sfix32
  wire signed [31:0] mon_rotor_velocity_sig;  // sfix32
  wire signed [31:0] mon_d_current_sig;  // sfix32
  wire signed [31:0] mon_q_current_sig;  // sfix32
  wire signed [18:0] axi_electrical_pos_err_sig;  // sfix19_En14


  assign enb = dut_enable;

  controllerPeripheralHdlAdi   u_controllerPeripheralHdlAdi   (.CLK_IN(CLK_IN),
                                                               .clk_enable(enb),
                                                               .reset(reset),
                                                               .adc_current1(adc_current1),  // sfix18_En17
                                                               .adc_current2(adc_current2),  // sfix18_En17
                                                               .encoder_a(encoder_a),  // ufix1
                                                               .encoder_b(encoder_b),  // ufix1
                                                               .encoder_index(encoder_index),  // ufix1
                                                               .axi_controller_mode(axi_controller_mode),  // ufix2
                                                               .axi_command(axi_command),  // sfix18_En8
                                                               .axi_velocity_p_gain(axi_velocity_p_gain),  // sfix18_En16
                                                               .axi_velocity_i_gain(axi_velocity_i_gain),  // sfix18_En15
                                                               .axi_current_p_gain(axi_current_p_gain),  // sfix18_En10
                                                               .axi_current_i_gain(axi_current_i_gain),  // sfix18_En2
                                                               .axi_open_loop_bias(axi_open_loop_bias),  // sfix18_En14
                                                               .axi_open_loop_scalar(axi_open_loop_scalar),  // sfix18_En16
                                                               .axi_encoder_zero_offset(axi_encoder_zero_offset),  // sfix18_En14
                                                               .ce_out_0(ce_out_0_sig),  // ufix1
                                                               .ce_out_1(ce_out_1_sig),  // ufix1
                                                               .pwm_a(pwm_a_sig),  // ufix1
                                                               .pwm_b(pwm_b_sig),  // ufix1
                                                               .pwm_c(pwm_c_sig),  // ufix1
                                                               .mon_phase_voltage_a(mon_phase_voltage_a_sig),  // sfix32
                                                               .mon_phase_voltage_b(mon_phase_voltage_b_sig),  // sfix32
                                                               .mon_phase_current_a(mon_phase_current_a_sig),  // sfix32
                                                               .mon_phase_current_b(mon_phase_current_b_sig),  // sfix32
                                                               .mon_rotor_position(mon_rotor_position_sig),  // sfix32
                                                               .mon_electrical_position(mon_electrical_position_sig),  // sfix32
                                                               .mon_rotor_velocity(mon_rotor_velocity_sig),  // sfix32
                                                               .mon_d_current(mon_d_current_sig),  // sfix32
                                                               .mon_q_current(mon_q_current_sig),  // sfix32
                                                               .axi_electrical_pos_err(axi_electrical_pos_err_sig)  // sfix19_En14
                                                               );

  assign ce_out_0 = ce_out_0_sig;

  assign ce_out_1 = ce_out_1_sig;

  assign pwm_a = pwm_a_sig;

  assign pwm_b = pwm_b_sig;

  assign pwm_c = pwm_c_sig;

  assign mon_phase_voltage_a = mon_phase_voltage_a_sig;

  assign mon_phase_voltage_b = mon_phase_voltage_b_sig;

  assign mon_phase_current_a = mon_phase_current_a_sig;

  assign mon_phase_current_b = mon_phase_current_b_sig;

  assign mon_rotor_position = mon_rotor_position_sig;

  assign mon_electrical_position = mon_electrical_position_sig;

  assign mon_rotor_velocity = mon_rotor_velocity_sig;

  assign mon_d_current = mon_d_current_sig;

  assign mon_q_current = mon_q_current_sig;

  assign axi_electrical_pos_err = axi_electrical_pos_err_sig;

endmodule  // controllerperipheralhdladi_pcore_dut

