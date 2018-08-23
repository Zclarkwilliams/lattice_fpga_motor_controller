/**
 * Lattice Semiconductor MachX03 FPGA Motor Controller
 * Date Last Revisioned: 08/22/2018
 * Original Authors Found At: https://github.com/Zclarkwilliams/Drone2_LS_Capstone
 * Author: Zachary Clark-Williams
 */

/**
 * pwm_to_value - Translates a pwm time high in us to a value between 0 and
 *				  2^(OUTPUT_BIT_WIDTH-1)
 *
 * Outputs:
 * @value: whether or not the address specified is valid
 *
 * Inputs:
 * @pwm_time_high_us: value between MIN_PWM_TIME_HIGH_US and MAX_PWM_TIME_HIGH_US
 * @us_clk: output is updated on every positive edge of the input clock
 */
`timescale 1ns / 1ns

`include "common_defines.v"

module pwm_to_value (
	output wire [`BIT_WIDTH_8 - 1:0] value_out,
	input wire [`PWM_TIME_BIT_WIDTH - 1:0] pwm_time_high_us,
	input wire us_clk,
	input wire resetn);

	// Ranges from 0 to MIN_PWM_TIME_HIGH_US
	reg [`PWM_TIME_BIT_WIDTH - 1:0] adjusted_value;

	always @(posedge us_clk or negedge resetn) begin
		if (!resetn)
			adjusted_value <= `ALL_ZERO_2BYTE;
		else // Slide the pwm_time_high_us to a value between 0 and MIN_PWM_TIME_HIGH_US
			adjusted_value <= pwm_time_high_us - `MIN_PWM_TIME_HIGH_US;
	end

	// Use truncation as a simplified map() function
	assign value_out = (!resetn) ? `BYTE_ALL_ZERO : adjusted_value[9:2];
endmodule
