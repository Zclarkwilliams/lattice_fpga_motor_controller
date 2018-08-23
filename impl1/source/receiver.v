/**
 * Lattice Semiconductor MachX03 FPGA Motor Controller
 * Date Last Revisioned: 08/22/2018
 * Original Authors Found At: https://github.com/Zclarkwilliams/Drone2_LS_Capstone
 * Author: Zachary Clark-Williams
 */

/**
 * receiver - Receive pwm input from the hardware receiver and output values.  The pwm inputs have a
 *			  period of 20ms and a duty cycle rangeing between ~5% to ~10% which equals ~1ms to ~2ms.
 *
 * Outputs:
 * @throttle_val: Value between 0 and 2^(BIT_WIDTH_8-1 that corresponds to between 1ms and 2ms pwm
 * @yaw_val: Value between 0 and 2^(BIT_WIDTH_8-1 that corresponds to between 1ms and 2ms pwm //disabled for future use
 * @roll_val: Value between 0 and 2^(BIT_WIDTH_8-1 that corresponds to between 1ms and 2ms pwm //disabled for future use
 * @pitch_val: Value between 0 and 2^(BIT_WIDTH_8-1 that corresponds to between 1ms and 2ms pwm //disabled for future use
 *
 * Inputs:
 * @throttle_pwm: from the hardware receiver (duty cycle between ~5% and 10%)
 * @yaw_pwm: from the hardware receiver (duty cycle between ~5% and 10%) //disabled for future use
 * @roll_pwm: from the hardware receiver (duty cycle between ~5% and 10%) //disabled for future use
 * @pitch_pwm: from the hardware receiver (duty cycle between ~5% and 10%) //disabled for future use
 * @sys_clk: system clock
 */
`timescale 1ns / 1ns

`include "common_defines.v"

module receiver (
	output wire [`BIT_WIDTH_8 - 1:0] throttle_val,
	/*output wire [`BIT_WIDTH_8 - 1:0] yaw_val,
	output wire [`BIT_WIDTH_8 - 1:0] roll_val,
	output wire [`BIT_WIDTH_8 - 1:0] pitch_val,
	output wire [`BIT_WIDTH_8 - 1:0] aux1_val,
	output wire [`BIT_WIDTH_8 - 1:0] aux2_val,
	output wire [`BIT_WIDTH_8 - 1:0] swa_swb_val,*/
	input wire throttle_pwm,
	/*input wire yaw_pwm,
	input wire roll_pwm,
	input wire pitch_pwm,
	input wire aux1_pwm,
	input wire aux2_pwm,
	input wire swa_swb_pwm,*/
	input wire us_clk,
	input wire resetn);

	wire [`PWM_TIME_BIT_WIDTH - 1:0]
		throttle_pwm_pulse_length_us; /*,
		yaw_pwm_pulse_length_us,
		roll_pwm_pulse_length_us,
		pitch_pwm_pulse_length_us,
		aux1_pwm_pulse_length_us,
		aux2_pwm_pulse_length_us,
		swa_swb_pwm_pulse_length_us;*/

	// THROTTLE input/output module instances
	pwm_reader #(`PULSE_TIME_HIGH_US) throttle_reader (
		// Output
		.pwm_pulse_length_us(throttle_pwm_pulse_length_us),
		// Inputs
		.pwm(throttle_pwm),
		.us_clk(us_clk),
		.resetn(resetn));

	pwm_to_value throttle_pwm_to_value (
		// Output
		.value_out(throttle_val),
		// Inputs
		.pwm_time_high_us(throttle_pwm_pulse_length_us),
		.us_clk(us_clk),
		.resetn(resetn));
/*
	// YAW input/output module instances
	pwm_reader #(`PULSE_TIME_HIGH_US) yaw_reader (
		// Output
		.pwm_pulse_length_us(yaw_pwm_pulse_length_us),
		// Inputs
		.pwm(yaw_pwm),
		.us_clk(us_clk),
		.resetn(resetn));

	pwm_to_value yaw_pwm_to_value (
		// Output
		.value_out(yaw_val),
		// Inputs
		.pwm_time_high_us(yaw_pwm_pulse_length_us),
		.us_clk(us_clk),
		.resetn(resetn));
		
	// ROLL input/output module instances
	pwm_reader #(`PULSE_TIME_HIGH_US) roll_reader (
		// Output
		.pwm_pulse_length_us(roll_pwm_pulse_length_us),
		// Inputs
		.pwm(roll_pwm),
		.us_clk(us_clk),
		.resetn(resetn));

	pwm_to_value roll_pwm_to_value (
		// Output
		.value_out(roll_val),
		// Input
		.pwm_time_high_us(roll_pwm_pulse_length_us),
		.us_clk(us_clk),
		.resetn(resetn));

	// PITCH input/output module instances
	pwm_reader #(`PULSE_TIME_HIGH_US) pitch_reader (
		// Output
		.pwm_pulse_length_us(pitch_pwm_pulse_length_us),
		// Input
		.pwm(pitch_pwm),
		.us_clk(us_clk),
		.resetn(resetn));

	pwm_to_value pitch_pwm_to_value (
		// Output
		.value_out(pitch_val),
		// Input
		.pwm_time_high_us(pitch_pwm_pulse_length_us),
		.us_clk(us_clk),
		.resetn(resetn));

	// AUX1 input/output module instances
	pwm_reader #(`PULSE_TIME_HIGH_US)
	aux1_reader (
		// Output
		.pwm_pulse_length_us(aux1_pwm_pulse_length_us),
		// Inputs
		.pwm(aux1_pwm),
		.us_clk(us_clk),
		.resetn(resetn));

	pwm_to_value aux1_pwm_to_value (
		// Output
		.value_out(aux1_val),
		// Inputs
		.pwm_time_high_us(aux1_pwm_pulse_length_us),
		.us_clk(us_clk),
		.resetn(resetn));

	// AUX2 input/output module instances
	pwm_reader #(`PULSE_TIME_HIGH_US)
	aux2_reader (
		// Output
		.pwm_pulse_length_us(aux2_pwm_pulse_length_us),
		// Inputs
		.pwm(aux2_pwm),
		.us_clk(us_clk),
		.resetn(resetn));

	pwm_to_value aux2_pwm_to_value (
		// Output
		.value_out(aux2_val),
		// Inputs
		.pwm_time_high_us(aux2_pwm_pulse_length_us),
		.us_clk(us_clk),
		.resetn(resetn));

	// SWA/SWB input/output module instances
	pwm_reader #(`PULSE_TIME_HIGH_US)
	swa_swb_reader (
		// Output
		.pwm_pulse_length_us(swa_swb_pwm_pulse_length_us),
		// Inputs
		.pwm(swa_swb_pwm),
		.us_clk(us_clk),
		.resetn(resetn));

	pwm_to_value swab_pwm_to_value (
		// Output
		.value_out(swa_swb_val),
		// Inputs
		.pwm_time_high_us(swa_swb_pwm_pulse_length_us),
		.us_clk(us_clk),
		.resetn(resetn));
*/
endmodule
