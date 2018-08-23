/**
 * Lattice Semiconductor MachX03 FPGA Motor Controller
 * Date Last Revisioned: 08/22/2018
 * Original Authors Found At: https://github.com/Zclarkwilliams/Drone2_LS_Capstone
 * Author: Zachary Clark-Williams
 */

/**
 * top_motor_controller - Top level module for the motor controller system.
 *		System Flow: Remote->Reciever->MachX03 FPGA->ESC->DC 
 *
 *	***NOTE: This system is a stripped down and modified version of the Drone2
 * 			 quadcopter flight controller. The original system repository and
 * 			 code can be found at:
 *					https://github.com/Zclarkwilliams/Drone2_LS_Capstone
 *
 * Outputs:
 * @motor_1_pwm:  signal to drive the ESC connected to motor 1
 * @motor_2_pwm:  signal to drive the ESC connected to motor 2 //disabled for future use
 * @motor_3_pwm:  signal to drive the ESC connected to motor 3 //disabled for future use
 * @motor_4_pwm:  signal to drive the ESC connected to motor 4 //disabled for future use
 * @led_data_out: signal mapping data to FPGA board's 8 LEDs
 *
 * Inputs:
 * @yaw_pwm: 	  signal from yaw on the rc/receiver //disabled for future use
 * @roll_pwm: 	  signal from roll on the rc/receiver //disabled for future use
 * @pitch_pwm: 	  signal from pitch on the rc/receiver //disabled for future use
 * @throttle_pwm: signal from throttle on the rc/receiver
 * @aux1_pwm: 	  signal from 1(aux1) on the rc/receiver //disabled for future use
 * @aux2_pwm:	  signal from 2(aux2) on the rc/receiver //disabled for future use
 * @swa_swb_pwm:  signal from 3(swa/swb) on the rc/receiver //disabled for future use
 * @machxo3_switch_reset_n: signal from the onbaord switch for user commanded reset
 */

`timescale 1ns / 1ns
`default_nettype none

`include "common_defines.v"

module drone2 (
	// Outputs
	output wire motor_1_pwm,
	//output wire motor_2_pwm,
	//output wire motor_3_pwm,
	//output wire motor_4_pwm,
	output reg  [7:0] led_data_out,
	// Inputs
	input wire throttle_pwm,
	//input wire yaw_pwm,
	//input wire roll_pwm,
	//input wire pitch_pwm,
	//input wire aux1_pwm /* synthesis syn_force_pads=1 syn_noprune=1*/ ,
	//input wire aux2_pwm /* synthesis syn_force_pads=1 syn_noprune=1*/ ,
	//input wire swa_swb_pwm /* synthesis syn_force_pads=1 syn_noprune=1*/ ,
	input wire machxo3_switch_reset_n);

	//--------------- Receiver Wires --------------//
	wire [`BIT_WIDTH_8-1:0]
		throttle_val;/*,
		yaw_val,
		roll_val,
		pitch_val,
		aux1_val,
		aux2_val,
		swa_swb_val;*/

	//------------- Motor_Mixer Wires -------------//
	wire [`BIT_WIDTH_8-1:0]
		motor_1_rate;/*,
		motor_2_rate,
		motor_3_rate,
		motor_4_rate;*/

	//--------------- Clock Wires -----------------//
	wire sys_clk;
	wire us_clk;

	//---------------- Reset Wires ----------------//
	wire resetn;
	wire soft_reset_n = 1; //Disable this reset for now, connect if soft reset is needed
	assign resetn = (machxo3_switch_reset_n & soft_reset_n);

	/**
	 * Generate System Clock
	 */
	defparam OSCH_inst.NOM_FREQ = "38.00";
	OSCH OSCH_inst (
		.STDBY(1'b0),
       	.OSC(sys_clk),
       	.SEDSTDBY());

	/**
	 * Then scale system clock down to 1 microsecond
	 *		file - us_clk.v
	 */
	us_clk us_clk_divider (
		.us_clk(us_clk),
		.sys_clk(sys_clk),
		.resetn(resetn));

	/**
	 * Gets inputs from the physical receiver and converts them to 0-255.
	 * 		file - receiver.v
	 */
	receiver receiver (
		// Outputs
		.throttle_val(motor_1_rate),
		//.yaw_val(yaw_val),
		//.roll_val(roll_val),
		//.pitch_val(pitch_val),
		//.aux1_val(aux1_val),
		//.aux2_val(aux2_val),
		//.swa_swb_val(control_mode),
		// Inputs
		.throttle_pwm(throttle_pwm),
		//.yaw_pwm(yaw_pwm),
		//.roll_pwm(roll_pwm),
		//.pitch_pwm(pitch_pwm),
		//.aux1_pwm(aux1_pwm),
		//.aux2_pwm(aux2_pwm),
		//.swa_swb_pwm(swa_swb_pwm),
		.us_clk(us_clk),
		.resetn(resetn));
	

	/**
	 * Get axis rates and calculate respective motor rates to achieve correct
	 * drone movements.
	 *		file - motor_mixer.v
	 */
/*	motor_mixer motor_mixer (
		// Outputs
		.motor_1_rate(motor_1_rate),
		.motor_2_rate(motor_2_rate),
		.motor_3_rate(motor_3_rate),
		.motor_4_rate(motor_4_rate),
		// Inputs
		.control_type(control_mode)
		.throttle_rate(throttle_target_rate),
		.yaw_rate(yaw_rate),
		.roll_rate(roll_rate),
		.pitch_rate(pitch_rate),
		.sys_clk(sys_clk),
		.resetn(resetn));
*/
	/**
	 * Take respective motor rate outputs from motor mixer and convert the
	 * 0-250 value to a PWM output to ESCs.
	 *		file - pwm_generator.v
	 */
	pwm_generator pwm_generator (
		// Outputs
		.motor_1_pwm(motor_1_pwm),
		//.motor_2_pwm(motor_2_pwm),
		//.motor_3_pwm(motor_3_pwm),
		//.motor_4_pwm(motor_4_pwm),
		// Inputs
		.motor_1_rate(motor_1_rate),
		//.motor_2_rate(motor_2_rate),
		//.motor_3_rate(motor_3_rate),
		//.motor_4_rate(motor_4_rate),
		.us_clk(us_clk),
		.resetn(resetn));

	/**
	 * The secotion below is for use with Debug LEDs and other
	 * debuging output pins and LEDs.
	 */
	// On board LEDs, all inputs are active low
	always @(posedge sys_clk) begin
		if (!resetn)
			led_data_out <= 8'hAA;
		else if (!machxo3_switch_reset_n)
			led_data_out <= ~throttle_val;
		else
			led_data_out <= ~motor_1_rate;
		end
endmodule

