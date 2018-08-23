/**
 * Lattice Semiconductor MachX03 FPGA Motor Controller
 * Date Last Revisioned: 08/22/2018
 * Original Authors Found At: https://github.com/Zclarkwilliams/Drone2_LS_Capstone
 * Author: Zachary Clark-Williams
 */

/**
 * common_defines - Contains defines that will be used throughout multiple modules in system
 */

// Signal levels
`define HIGH	1'b1
`define LOW 	1'b0

// Conditionals
`define TRUE	1'b1
`define FALSE	1'b0

// Mathematical bit addition
`define ONE		1'b1

// A byte of all zeros
`define BYTE_ALL_ZERO            8'sd0
`define ALL_ZERO_2BYTE          16'sd0

// PWM signal pulse lengths
`define MIN_PWM_TIME_HIGH_US	16'd1000
`define MAX_PWM_TIME_HIGH_US	16'd2000
`define PWM_PERIOD_US			16'd20000

// PWM Bit widths
`define PWM_TIME_BIT_WIDTH		5'd16	// Sized to hold the MAX_PWM_TIME_HIGH_US
`define BIT_WIDTH_8 			4'd8	// Sized to hold: mapped pwm value
										// 				  motor rates to the PWM generator
										// 				  outputs of receiver

// Default values (on reset or error) for pwm pulse high values in microseconds
`define PULSE_TIME_HIGH_US  	16'd1000
