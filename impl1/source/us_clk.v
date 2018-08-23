/**
 * Lattice Semiconductor MachX03 FPGA Motor Controller
 * Date Last Revisioned: 08/22/2018
 * Original Authors Found At: https://github.com/Zclarkwilliams/Drone2_LS_Capstone
 */

/**
 * us_clk - Convert from sys_clk to us_clk (1 MHz and 1 us period).
 */

`timescale 1ns / 1ns

module us_clk #(parameter CLK_CONVERSION_HIGH = 19,
	  			parameter CLK_CONVERSION_LOW = 37)
			   (output reg us_clk,
				input wire sys_clk,
				input wire resetn);

	reg [14:0] sys_clk_counter;

	always @(posedge sys_clk or negedge resetn) begin
		if (!resetn) begin
			us_clk <= 1'b1;
			sys_clk_counter <= 15'h0000;
		end
		else if (sys_clk_counter == CLK_CONVERSION_HIGH) begin
			us_clk <= 1'b0;
			sys_clk_counter <= sys_clk_counter + 1'b1;
		end
		else if (sys_clk_counter == CLK_CONVERSION_LOW) begin
			us_clk <= 1'b1;
			sys_clk_counter <= 15'h0000;
		end
		else
			sys_clk_counter <= sys_clk_counter + 1'b1;
	end
endmodule
