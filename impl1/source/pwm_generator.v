/**
 * Lattice Semiconductor MachX03 FPGA Motor Controller
 * Date Last Revisioned: 08/22/2018
 * Original Authors Found At: https://github.com/Zclarkwilliams/Drone2_LS_Capstone
 * Author: Zachary Clark-Williams
 */

/**
 * pwm_generator - Generates PWM signals for the ESC(s).
 *
 * Outputs:
 * @motor_1_pwm: signal to drive motor 1
 * @motor_2_pwm: signal to drive motor 2 // unconnected in top module
 * @motor_3_pwm: signal to drive motor 3 // unconnected in top module
 * @motor_4_pwm: signal to drive motor 4 // unconnected in top module
 *
 * Inputs:
 * @motor_1_rate: rate to run motor 1 at (units?)
 * @motor_2_rate: rate to run motor 2 at (units?) // unconnected in top module
 * @motor_3_rate: rate to run motor 3 at (units?) // unconnected in top module
 * @motor_4_rate: rate to run motor 4 at (units?) // unconnected in top module
 */
`timescale 1ns/1ns
`include "common_defines.v"

module pwm_generator (
	output wire motor_1_pwm,
	output wire motor_2_pwm, // unconnected in top module
	output wire motor_3_pwm, // unconnected in top module
	output wire motor_4_pwm, // unconnected in top module
	input wire [`BIT_WIDTH_8 - 1:0] motor_1_rate,
	input wire [`BIT_WIDTH_8 - 1:0] motor_2_rate, // unconnected in top module
	input wire [`BIT_WIDTH_8 - 1:0] motor_3_rate, // unconnected in top module
	input wire [`BIT_WIDTH_8 - 1:0] motor_4_rate, // unconnected in top module
	input wire resetn,
	input wire us_clk);

	// params for padding the zeros and counter high/zero values
	localparam LATCH_APPEND_BITS = 2'b00;
	localparam HIGH_COUNTER_ZEROS = 10'd0;

	// Internal counters
	reg [15:0] period_counter;
	reg [`BIT_WIDTH_8 + 1:0] high_counter;
	reg high_counter_en;

	// Latched PWM values
	reg [`BIT_WIDTH_8 + 1:0] m1_rate, m2_rate, m3_rate, m4_rate;

	// PWM gen blocks
	// Motor_1 PWM Generator Block
	pwm_generator_block pwm1 (
		// Output
		.motor_pwm(motor_1_pwm),
		// Inputs
		.motor_val(m1_rate),
		.period_counter(period_counter),
		.high_counter(high_counter),
		.resetn(resetn),
		.us_clk(us_clk));

	// Motor_2 PWM Generator Block
	pwm_generator_block pwm2 (
		// Output
		.motor_pwm(motor_2_pwm),
		// Inptus
		.motor_val(m2_rate),
		.period_counter(period_counter),
		.high_counter(high_counter),
		.resetn(resetn),
		.us_clk(us_clk));

	// Motor_3 PWM Generator Block
	pwm_generator_block pwm3 (
		// Output
		.motor_pwm(motor_3_pwm),
		// Inputs
		.motor_val(m3_rate),
		.period_counter(period_counter),
		.high_counter(high_counter),
		.resetn(resetn),
		.us_clk(us_clk));

	// Motor_4 PWM Generator Block
	pwm_generator_block pwm4 (
		// Output
		.motor_pwm(motor_4_pwm),
		// Inputs
		.motor_val(m4_rate),
		.period_counter(period_counter),
		.high_counter(high_counter),
		.resetn(resetn),
		.us_clk(us_clk));

	// Control counters, latch new values
	always @(posedge us_clk or negedge resetn) begin
		if (!resetn) begin
			// Reset counters
			high_counter_en  <= `FALSE;
			high_counter 	 <= HIGH_COUNTER_ZEROS;
			period_counter	 <= `ALL_ZERO_2BYTE;
			// Start with default values
			m1_rate 		 <= `BYTE_ALL_ZERO;
			m2_rate 		 <= `BYTE_ALL_ZERO;
			m3_rate 		 <= `BYTE_ALL_ZERO;
			m4_rate 		 <= `BYTE_ALL_ZERO;
		end
		else if (period_counter == `PWM_PERIOD_US) begin
			// Reset counters
			high_counter_en  <= `FALSE;
			high_counter 	 <= HIGH_COUNTER_ZEROS;
			period_counter	 <= `ALL_ZERO_2BYTE;
			// Latch in new values
			m1_rate 		 <= {motor_1_rate, LATCH_APPEND_BITS};
			m2_rate 		 <= {motor_2_rate, LATCH_APPEND_BITS};
			m3_rate 		 <= {motor_3_rate, LATCH_APPEND_BITS};
			m4_rate 		 <= {motor_4_rate, LATCH_APPEND_BITS};
		end
		else if (period_counter == `MIN_PWM_TIME_HIGH_US) begin
			high_counter_en	 <= `TRUE;
			period_counter	 <= period_counter + `ONE;
		end
		else begin
			period_counter	 <= period_counter + `ONE;
			if (high_counter_en)
				high_counter <= high_counter   + `ONE;
		end
	end
endmodule
