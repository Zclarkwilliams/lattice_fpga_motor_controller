// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.1.112
// Netlist written on Mon Aug 27 11:43:34 2018
//
// Verilog Description of module drone2
//

module drone2 (motor_1_pwm, led_data_out, throttle_pwm, machxo3_switch_leds_disp, 
            machxo3_switch_reset_n) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(40[8:14])
    output motor_1_pwm;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(42[14:25])
    output [7:0]led_data_out;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    input throttle_pwm;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(48[13:25])
    input machxo3_switch_leds_disp;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(55[13:37])
    input machxo3_switch_reset_n;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(56[13:35])
    
    wire sys_clk /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(76[7:14])
    wire us_clk /* synthesis is_clock=1, SET_AS_NETWORK=us_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(77[7:13])
    
    wire GND_net, VCC_net, motor_1_pwm_c_0, led_data_out_c_7, led_data_out_c_6, 
        led_data_out_c_5, led_data_out_c_4, led_data_out_c_3, led_data_out_c_2, 
        led_data_out_c_1, led_data_out_c_0, machxo3_switch_leds_disp_c, 
        machxo3_switch_reset_n_c;
    wire [7:0]motor_1_rate;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(70[3:15])
    
    wire n27, n29, n31, n33;
    wire [7:0]led_data_out_7__N_9;
    
    wire n1796;
    wire [15:0]adjusted_value;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(30[34:48])
    
    wire state_2__N_92_c_1, n1805, n1804, n1803, n1801, n1799, n1835;
    
    VHI i1575 (.Z(VCC_net));
    LUT4 i1532_2_lut_rep_16 (.A(machxo3_switch_leds_disp_c), .B(machxo3_switch_reset_n_c), 
         .Z(n1796)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(174[8] 177[34])
    defparam i1532_2_lut_rep_16.init = 16'h7777;
    FD1S3IX led_data_out_i1 (.D(led_data_out_7__N_9[0]), .CK(sys_clk), .CD(n1799), 
            .Q(led_data_out_c_0));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i1.GSR = "DISABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(sys_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "38.00";
    LUT4 i1556_2_lut_3_lut (.A(machxo3_switch_leds_disp_c), .B(machxo3_switch_reset_n_c), 
         .C(adjusted_value[4]), .Z(led_data_out_7__N_9[2])) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(174[8] 177[34])
    defparam i1556_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1562_2_lut_3_lut (.A(machxo3_switch_leds_disp_c), .B(machxo3_switch_reset_n_c), 
         .C(adjusted_value[2]), .Z(led_data_out_7__N_9[0])) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(174[8] 177[34])
    defparam i1562_2_lut_3_lut.init = 16'h7f7f;
    FD1S3IX led_data_out_i7 (.D(led_data_out_7__N_9[6]), .CK(sys_clk), .CD(n1799), 
            .Q(led_data_out_c_6));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i7.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i1551_2_lut_3_lut (.A(machxo3_switch_leds_disp_c), .B(machxo3_switch_reset_n_c), 
         .C(adjusted_value[8]), .Z(led_data_out_7__N_9[6])) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(174[8] 177[34])
    defparam i1551_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1553_2_lut_3_lut (.A(machxo3_switch_leds_disp_c), .B(machxo3_switch_reset_n_c), 
         .C(adjusted_value[6]), .Z(led_data_out_7__N_9[4])) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(174[8] 177[34])
    defparam i1553_2_lut_3_lut.init = 16'h7f7f;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n1835)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    OB motor_1_pwm_pad (.I(motor_1_pwm_c_0), .O(motor_1_pwm));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(42[14:25])
    FD1S3JX led_data_out_i6 (.D(n29), .CK(sys_clk), .PD(n1796), .Q(led_data_out_c_5));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i6.GSR = "DISABLED";
    FD1S3IX led_data_out_i5 (.D(led_data_out_7__N_9[4]), .CK(sys_clk), .CD(n1799), 
            .Q(led_data_out_c_4));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i5.GSR = "DISABLED";
    FD1S3JX led_data_out_i4 (.D(n31), .CK(sys_clk), .PD(n1796), .Q(led_data_out_c_3));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i4.GSR = "DISABLED";
    FD1S3IX led_data_out_i3 (.D(led_data_out_7__N_9[2]), .CK(sys_clk), .CD(n1799), 
            .Q(led_data_out_c_2));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i3.GSR = "DISABLED";
    FD1S3JX led_data_out_i2 (.D(n33), .CK(sys_clk), .PD(n1796), .Q(led_data_out_c_1));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i2.GSR = "DISABLED";
    OB led_data_out_pad_7 (.I(led_data_out_c_7), .O(led_data_out[7]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    OB led_data_out_pad_6 (.I(led_data_out_c_6), .O(led_data_out[6]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    OB led_data_out_pad_5 (.I(led_data_out_c_5), .O(led_data_out[5]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    OB led_data_out_pad_4 (.I(led_data_out_c_4), .O(led_data_out[4]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    OB led_data_out_pad_3 (.I(led_data_out_c_3), .O(led_data_out[3]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    OB led_data_out_pad_2 (.I(led_data_out_c_2), .O(led_data_out[2]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    OB led_data_out_pad_1 (.I(led_data_out_c_1), .O(led_data_out[1]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    OB led_data_out_pad_0 (.I(led_data_out_c_0), .O(led_data_out[0]));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(46[20:32])
    IB state_2__N_92_pad_1 (.I(throttle_pwm), .O(state_2__N_92_c_1));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(48[13:25])
    IB machxo3_switch_leds_disp_pad (.I(machxo3_switch_leds_disp), .O(machxo3_switch_leds_disp_c));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(55[13:37])
    IB machxo3_switch_reset_n_pad (.I(machxo3_switch_reset_n), .O(machxo3_switch_reset_n_c));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(56[13:35])
    FD1S3JX led_data_out_i8 (.D(n27), .CK(sys_clk), .PD(n1796), .Q(led_data_out_c_7));   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(171[9] 178[6])
    defparam led_data_out_i8.GSR = "DISABLED";
    receiver receiver (.state_2__N_92_c_1(state_2__N_92_c_1), .GND_net(GND_net), 
            .us_clk(us_clk), .\adjusted_value[2] (adjusted_value[2]), .n1799(n1799), 
            .machxo3_switch_reset_n_c(machxo3_switch_reset_n_c), .n1801(n1801), 
            .n27(n27), .\motor_1_rate[0] (motor_1_rate[0]), .\adjusted_value[4] (adjusted_value[4]), 
            .\adjusted_value[6] (adjusted_value[6]), .\adjusted_value[8] (adjusted_value[8]), 
            .n1803(n1803), .n33(n33), .\motor_1_rate[2] (motor_1_rate[2]), 
            .n1804(n1804), .\motor_1_rate[4] (motor_1_rate[4]), .n31(n31), 
            .\motor_1_rate[6] (motor_1_rate[6]), .n1805(n1805), .n29(n29)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(106[11] 124[19])
    TSALL TSALL_INST (.TSALL(GND_net));
    us_clk us_clk_divider (.sys_clk(sys_clk), .GND_net(GND_net), .us_clk(us_clk)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(97[9] 100[19])
    GSR GSR_INST (.GSR(machxo3_switch_reset_n_c));
    pwm_generator pwm_generator (.GND_net(GND_net), .us_clk(us_clk), .\motor_1_rate[0] (motor_1_rate[0]), 
            .n1835(n1835), .n1803(n1803), .\motor_1_rate[2] (motor_1_rate[2]), 
            .n1804(n1804), .\motor_1_rate[4] (motor_1_rate[4]), .n1805(n1805), 
            .\motor_1_rate[6] (motor_1_rate[6]), .n1801(n1801), .machxo3_switch_reset_n_c(machxo3_switch_reset_n_c), 
            .n1799(n1799), .motor_1_pwm_c_0(motor_1_pwm_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(152[16] 164[19])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module receiver
//

module receiver (state_2__N_92_c_1, GND_net, us_clk, \adjusted_value[2] , 
            n1799, machxo3_switch_reset_n_c, n1801, n27, \motor_1_rate[0] , 
            \adjusted_value[4] , \adjusted_value[6] , \adjusted_value[8] , 
            n1803, n33, \motor_1_rate[2] , n1804, \motor_1_rate[4] , 
            n31, \motor_1_rate[6] , n1805, n29) /* synthesis syn_module_defined=1 */ ;
    input state_2__N_92_c_1;
    input GND_net;
    input us_clk;
    output \adjusted_value[2] ;
    input n1799;
    input machxo3_switch_reset_n_c;
    output n1801;
    output n27;
    output \motor_1_rate[0] ;
    output \adjusted_value[4] ;
    output \adjusted_value[6] ;
    output \adjusted_value[8] ;
    output n1803;
    output n33;
    output \motor_1_rate[2] ;
    output n1804;
    output \motor_1_rate[4] ;
    output n31;
    output \motor_1_rate[6] ;
    output n1805;
    output n29;
    
    wire us_clk /* synthesis is_clock=1, SET_AS_NETWORK=us_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(77[7:13])
    wire [15:0]time_high_us;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(56[13:25])
    
    \pwm_reader(DEFAULT_PWM_TIME_HIGH_US=16'b01111101000)  throttle_reader (.state_2__N_92_c_1(state_2__N_92_c_1), 
            .GND_net(GND_net), .us_clk(us_clk), .\time_high_us[4] (time_high_us[4]), 
            .\time_high_us[9] (time_high_us[9]), .\time_high_us[8] (time_high_us[8]), 
            .\time_high_us[7] (time_high_us[7]), .\time_high_us[6] (time_high_us[6]), 
            .\time_high_us[5] (time_high_us[5]), .\time_high_us[3] (time_high_us[3]), 
            .\time_high_us[2] (time_high_us[2])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/receiver.v(57[36] 63[19])
    pwm_to_value throttle_pwm_to_value (.\adjusted_value[2] (\adjusted_value[2] ), 
            .us_clk(us_clk), .n1799(n1799), .\time_high_us[2] (time_high_us[2]), 
            .\time_high_us[5] (time_high_us[5]), .\time_high_us[7] (time_high_us[7]), 
            .\time_high_us[6] (time_high_us[6]), .\time_high_us[8] (time_high_us[8]), 
            .machxo3_switch_reset_n_c(machxo3_switch_reset_n_c), .n1801(n1801), 
            .n27(n27), .\time_high_us[4] (time_high_us[4]), .\time_high_us[3] (time_high_us[3]), 
            .\motor_1_rate[0] (\motor_1_rate[0] ), .\adjusted_value[4] (\adjusted_value[4] ), 
            .\adjusted_value[6] (\adjusted_value[6] ), .\adjusted_value[8] (\adjusted_value[8] ), 
            .n1803(n1803), .n33(n33), .\motor_1_rate[2] (\motor_1_rate[2] ), 
            .n1804(n1804), .\motor_1_rate[4] (\motor_1_rate[4] ), .n31(n31), 
            .\motor_1_rate[6] (\motor_1_rate[6] ), .n1805(n1805), .n29(n29), 
            .\time_high_us[9] (time_high_us[9])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/receiver.v(65[15] 71[19])
    
endmodule
//
// Verilog Description of module \pwm_reader(DEFAULT_PWM_TIME_HIGH_US=16'b01111101000) 
//

module \pwm_reader(DEFAULT_PWM_TIME_HIGH_US=16'b01111101000)  (state_2__N_92_c_1, 
            GND_net, us_clk, \time_high_us[4] , \time_high_us[9] , \time_high_us[8] , 
            \time_high_us[7] , \time_high_us[6] , \time_high_us[5] , \time_high_us[3] , 
            \time_high_us[2] ) /* synthesis syn_module_defined=1 */ ;
    input state_2__N_92_c_1;
    input GND_net;
    input us_clk;
    output \time_high_us[4] ;
    output \time_high_us[9] ;
    output \time_high_us[8] ;
    output \time_high_us[7] ;
    output \time_high_us[6] ;
    output \time_high_us[5] ;
    output \time_high_us[3] ;
    output \time_high_us[2] ;
    
    wire us_clk /* synthesis is_clock=1, SET_AS_NETWORK=us_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(77[7:13])
    
    wire n106, n1159;
    wire [2:0]state;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(51[12:17])
    wire [15:0]time_high_count;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(54[13:28])
    
    wire n3, us_clk_enable_35, n959, n1390, n1795, pwm_pulse_level_flag;
    wire [15:0]time_high_count_15__N_117;
    
    wire n1786, n1717, us_clk_enable_18, us_clk_enable_36, n3_adj_300, 
        n1806;
    wire [15:0]time_high_us_15__N_76;
    
    wire n3_adj_301;
    wire [2:0]state_2__N_57;
    
    wire us_clk_enable_16, n1385, n1386;
    wire [15:0]time_high_count_15__N_60;
    
    wire n1389, n1384, n1037, n1388, n1383, n1387, n1564, n1787, 
        n1566, n3_adj_302, n1163, n1585, n1605, n4, n12, n1427, 
        n1574, n6, n3_adj_303, n3_adj_304;
    
    LUT4 i953_3_lut_4_lut (.A(n106), .B(n1159), .C(state[1]), .D(time_high_count[9]), 
         .Z(n3)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(132[12] 135[42])
    defparam i953_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i1524_3_lut_rep_20 (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(us_clk_enable_35)) /* synthesis lut_function=(A (B)+!A (B (C)+!B !(C))) */ ;
    defparam i1524_3_lut_rep_20.init = 16'hc9c9;
    LUT4 i796_3_lut_4_lut_3_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .Z(n959)) /* synthesis lut_function=(A (B)+!A !(B+(C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam i796_3_lut_4_lut_3_lut.init = 16'h8989;
    CCU2D add_152_17 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[15]), 
          .D0(pwm_pulse_level_flag), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1390), .S0(time_high_count_15__N_117[15]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_17.INIT0 = 16'hf070;
    defparam add_152_17.INIT1 = 16'h0000;
    defparam add_152_17.INJECT1_0 = "NO";
    defparam add_152_17.INJECT1_1 = "NO";
    LUT4 n569_bdd_3_lut_3_lut (.A(state[1]), .B(state[0]), .C(state_2__N_92_c_1), 
         .Z(n1786)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam n569_bdd_3_lut_3_lut.init = 16'h5151;
    LUT4 i1538_3_lut_3_lut (.A(state[1]), .B(state[0]), .C(n1717), .Z(us_clk_enable_18)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam i1538_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i20_4_lut_3_lut_4_lut (.A(state[1]), .B(state_2__N_92_c_1), .C(state[0]), 
         .D(state[2]), .Z(us_clk_enable_36)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A !(D)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam i20_4_lut_3_lut_4_lut.init = 16'haa5d;
    LUT4 i952_3_lut_4_lut (.A(n106), .B(n1159), .C(state[1]), .D(time_high_count[8]), 
         .Z(n3_adj_300)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(132[12] 135[42])
    defparam i952_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i2_3_lut_4_lut (.A(n106), .B(n1159), .C(time_high_count[2]), 
         .D(n1806), .Z(time_high_us_15__N_76[2])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(132[12] 135[42])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i946_3_lut_4_lut (.A(n106), .B(n1159), .C(state[1]), .D(time_high_count[6]), 
         .Z(n3_adj_301)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(132[12] 135[42])
    defparam i946_3_lut_4_lut.init = 16'hf0b0;
    LUT4 state_2__N_92_c_1_bdd_4_lut_4_lut (.A(state[1]), .B(state[0]), 
         .C(state[2]), .D(state_2__N_92_c_1), .Z(state_2__N_57[0])) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C (D))+!B (C)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam state_2__N_92_c_1_bdd_4_lut_4_lut.init = 16'h0d4f;
    LUT4 i2_3_lut (.A(n1717), .B(state[1]), .C(state[0]), .Z(us_clk_enable_16)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hdfdf;
    CCU2D add_152_7 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[5]), 
          .D0(pwm_pulse_level_flag), .A1(n1795), .B1(state_2__N_92_c_1), 
          .C1(time_high_count[6]), .D1(pwm_pulse_level_flag), .CIN(n1385), 
          .COUT(n1386), .S0(time_high_count_15__N_117[5]), .S1(time_high_count_15__N_117[6]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_7.INIT0 = 16'hf070;
    defparam add_152_7.INIT1 = 16'hf070;
    defparam add_152_7.INJECT1_0 = "NO";
    defparam add_152_7.INJECT1_1 = "NO";
    FD1P3AX time_high_count_i0 (.D(time_high_count_15__N_60[0]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i0.GSR = "ENABLED";
    LUT4 i1520_3_lut (.A(state[2]), .B(state_2__N_92_c_1), .C(pwm_pulse_level_flag), 
         .Z(n1717)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1520_3_lut.init = 16'hfefe;
    FD1S3AX state_i0 (.D(state_2__N_57[0]), .CK(us_clk), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam state_i0.GSR = "ENABLED";
    CCU2D add_152_15 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[13]), 
          .D0(pwm_pulse_level_flag), .A1(n1795), .B1(state_2__N_92_c_1), 
          .C1(time_high_count[14]), .D1(pwm_pulse_level_flag), .CIN(n1389), 
          .COUT(n1390), .S0(time_high_count_15__N_117[13]), .S1(time_high_count_15__N_117[14]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_15.INIT0 = 16'hf070;
    defparam add_152_15.INIT1 = 16'hf070;
    defparam add_152_15.INJECT1_0 = "NO";
    defparam add_152_15.INJECT1_1 = "NO";
    CCU2D add_152_5 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[3]), 
          .D0(pwm_pulse_level_flag), .A1(n1795), .B1(state_2__N_92_c_1), 
          .C1(time_high_count[4]), .D1(pwm_pulse_level_flag), .CIN(n1384), 
          .COUT(n1385), .S0(time_high_count_15__N_117[3]), .S1(time_high_count_15__N_117[4]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_5.INIT0 = 16'hf070;
    defparam add_152_5.INIT1 = 16'hf070;
    defparam add_152_5.INJECT1_0 = "NO";
    defparam add_152_5.INJECT1_1 = "NO";
    LUT4 i871_2_lut (.A(state[2]), .B(state[1]), .Z(n1037)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam i871_2_lut.init = 16'h8888;
    CCU2D add_152_13 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[11]), 
          .D0(pwm_pulse_level_flag), .A1(n1795), .B1(state_2__N_92_c_1), 
          .C1(time_high_count[12]), .D1(pwm_pulse_level_flag), .CIN(n1388), 
          .COUT(n1389), .S0(time_high_count_15__N_117[11]), .S1(time_high_count_15__N_117[12]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_13.INIT0 = 16'hf070;
    defparam add_152_13.INIT1 = 16'hf070;
    defparam add_152_13.INJECT1_0 = "NO";
    defparam add_152_13.INJECT1_1 = "NO";
    CCU2D add_152_3 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[1]), 
          .D0(pwm_pulse_level_flag), .A1(n1795), .B1(state_2__N_92_c_1), 
          .C1(time_high_count[2]), .D1(pwm_pulse_level_flag), .CIN(n1383), 
          .COUT(n1384), .S0(time_high_count_15__N_117[1]), .S1(time_high_count_15__N_117[2]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_3.INIT0 = 16'hf070;
    defparam add_152_3.INIT1 = 16'hf070;
    defparam add_152_3.INJECT1_0 = "NO";
    defparam add_152_3.INJECT1_1 = "NO";
    CCU2D add_152_11 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[9]), 
          .D0(pwm_pulse_level_flag), .A1(n1795), .B1(state_2__N_92_c_1), 
          .C1(time_high_count[10]), .D1(pwm_pulse_level_flag), .CIN(n1387), 
          .COUT(n1388), .S0(time_high_count_15__N_117[9]), .S1(time_high_count_15__N_117[10]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_11.INIT0 = 16'hf070;
    defparam add_152_11.INIT1 = 16'hf070;
    defparam add_152_11.INJECT1_0 = "NO";
    defparam add_152_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(pwm_pulse_level_flag), .B(state[1]), .C(state_2__N_92_c_1), 
         .D(state[0]), .Z(n1564)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(71[4] 158[11])
    defparam i1_4_lut.init = 16'heccc;
    LUT4 n569_bdd_4_lut (.A(pwm_pulse_level_flag), .B(state[1]), .C(state_2__N_92_c_1), 
         .D(state[0]), .Z(n1787)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;
    defparam n569_bdd_4_lut.init = 16'h0280;
    FD1P3AX time_high_count_i1 (.D(time_high_count_15__N_60[1]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i1.GSR = "ENABLED";
    FD1P3AX time_high_count_i2 (.D(time_high_count_15__N_60[2]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i2.GSR = "ENABLED";
    FD1P3AX time_high_count_i3 (.D(time_high_count_15__N_60[3]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i3.GSR = "ENABLED";
    FD1P3AX time_high_count_i4 (.D(time_high_count_15__N_60[4]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i4.GSR = "ENABLED";
    FD1P3AX time_high_count_i5 (.D(time_high_count_15__N_60[5]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i5.GSR = "ENABLED";
    FD1P3AX time_high_count_i6 (.D(time_high_count_15__N_60[6]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i6.GSR = "ENABLED";
    FD1P3AX time_high_count_i7 (.D(time_high_count_15__N_60[7]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i7.GSR = "ENABLED";
    FD1P3AX time_high_count_i8 (.D(time_high_count_15__N_60[8]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[8])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i8.GSR = "ENABLED";
    FD1P3AX time_high_count_i9 (.D(time_high_count_15__N_60[9]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[9])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i9.GSR = "ENABLED";
    FD1P3AX time_high_count_i10 (.D(time_high_count_15__N_60[10]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[10])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i10.GSR = "ENABLED";
    FD1P3AX time_high_count_i11 (.D(time_high_count_15__N_60[11]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[11])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i11.GSR = "ENABLED";
    FD1P3AX time_high_count_i12 (.D(time_high_count_15__N_60[12]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[12])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i12.GSR = "ENABLED";
    FD1P3AX time_high_count_i13 (.D(time_high_count_15__N_60[13]), .SP(us_clk_enable_16), 
            .CK(us_clk), .Q(time_high_count[13])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i13.GSR = "ENABLED";
    FD1P3AX time_high_count_i14 (.D(time_high_count_15__N_60[14]), .SP(us_clk_enable_18), 
            .CK(us_clk), .Q(time_high_count[14])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i14.GSR = "ENABLED";
    FD1P3AX time_high_count_i15 (.D(time_high_count_15__N_60[15]), .SP(us_clk_enable_18), 
            .CK(us_clk), .Q(time_high_count[15])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_count_i15.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(state_2__N_57[1]), .CK(us_clk), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam state_i1.GSR = "ENABLED";
    FD1S3IX state_i2 (.D(n1566), .CK(us_clk), .CD(state[2]), .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam state_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_26 (.A(state[1]), .B(state[2]), .Z(n1806)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_26.init = 16'h2222;
    FD1P3AX time_high_us_i4 (.D(time_high_us_15__N_76[4]), .SP(us_clk_enable_35), 
            .CK(us_clk), .Q(\time_high_us[4] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[1]), 
         .D(state[0]), .Z(time_high_count_15__N_60[1])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[0]), 
         .D(state[0]), .Z(time_high_count_15__N_60[0])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[2]), 
         .D(state[0]), .Z(time_high_count_15__N_60[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[3]), 
         .D(state[0]), .Z(time_high_count_15__N_60[3])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[4]), 
         .D(state[0]), .Z(time_high_count_15__N_60[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[5]), 
         .D(state[0]), .Z(time_high_count_15__N_60[5])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[6]), 
         .D(state[0]), .Z(time_high_count_15__N_60[6])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[7]), 
         .D(state[0]), .Z(time_high_count_15__N_60[7])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[8]), 
         .D(state[0]), .Z(time_high_count_15__N_60[8])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[9]), 
         .D(state[0]), .Z(time_high_count_15__N_60[9])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'h0020;
    LUT4 i951_3_lut_4_lut (.A(n106), .B(n1159), .C(state[1]), .D(time_high_count[7]), 
         .Z(n3_adj_302)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(132[12] 135[42])
    defparam i951_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[10]), 
         .D(state[0]), .Z(time_high_count_15__N_60[10])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'h0020;
    LUT4 i21_4_lut (.A(state_2__N_92_c_1), .B(pwm_pulse_level_flag), .C(state[1]), 
         .D(state[0]), .Z(n1566)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A ((D)+!C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(71[4] 158[11])
    defparam i21_4_lut.init = 16'h0a70;
    LUT4 i1_4_lut_adj_19 (.A(state[2]), .B(time_high_count[4]), .C(n1163), 
         .D(n106), .Z(time_high_us_15__N_76[4])) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_19.init = 16'h5040;
    LUT4 i997_2_lut (.A(n1159), .B(state[1]), .Z(n1163)) /* synthesis lut_function=(A (B)) */ ;
    defparam i997_2_lut.init = 16'h8888;
    LUT4 i2_4_lut (.A(n1585), .B(n1605), .C(time_high_count[10]), .D(n4), 
         .Z(n1159)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(130[11:50])
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i1_3_lut (.A(time_high_count[3]), .B(time_high_count[5]), .C(time_high_count[4]), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i1_4_lut_adj_20 (.A(n1605), .B(n1585), .C(n12), .D(time_high_count[10]), 
         .Z(n106)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(130[11:50])
    defparam i1_4_lut_adj_20.init = 16'heccc;
    LUT4 i284_3_lut (.A(n1427), .B(time_high_count[5]), .C(time_high_count[4]), 
         .Z(n12)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i284_3_lut.init = 16'hecec;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[11]), 
         .D(state[0]), .Z(time_high_count_15__N_60[11])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'h0020;
    LUT4 i3_4_lut (.A(time_high_count[0]), .B(time_high_count[3]), .C(time_high_count[2]), 
         .D(time_high_count[1]), .Z(n1427)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[12]), 
         .D(state[0]), .Z(time_high_count_15__N_60[12])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[13]), 
         .D(state[0]), .Z(time_high_count_15__N_60[13])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[14]), 
         .D(state[0]), .Z(time_high_count_15__N_60[14])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h0020;
    LUT4 i3_4_lut_adj_25 (.A(time_high_count[9]), .B(time_high_count[8]), 
         .C(time_high_count[7]), .D(time_high_count[6]), .Z(n1605)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_25.init = 16'h8000;
    CCU2D add_152_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_high_count[0]), .B1(n1574), .C1(state_2__N_92_c_1), 
          .D1(pwm_pulse_level_flag), .COUT(n1383), .S1(time_high_count_15__N_117[0]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_1.INIT0 = 16'hF000;
    defparam add_152_1.INIT1 = 16'hd222;
    defparam add_152_1.INJECT1_0 = "NO";
    defparam add_152_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(time_high_count[15]), .B(time_high_count[12]), .C(time_high_count[14]), 
         .D(n6), .Z(n1585)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(130[11:50])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(time_high_count[11]), .B(time_high_count[13]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(130[11:50])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3JX time_high_us_i9 (.D(n3), .SP(us_clk_enable_35), .PD(n959), 
            .CK(us_clk), .Q(\time_high_us[9] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i9.GSR = "ENABLED";
    CCU2D add_152_9 (.A0(n1795), .B0(state_2__N_92_c_1), .C0(time_high_count[7]), 
          .D0(pwm_pulse_level_flag), .A1(n1795), .B1(state_2__N_92_c_1), 
          .C1(time_high_count[8]), .D1(pwm_pulse_level_flag), .CIN(n1386), 
          .COUT(n1387), .S0(time_high_count_15__N_117[7]), .S1(time_high_count_15__N_117[8]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[11] 122[9])
    defparam add_152_9.INIT0 = 16'hf070;
    defparam add_152_9.INIT1 = 16'hf070;
    defparam add_152_9.INJECT1_0 = "NO";
    defparam add_152_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(state[1]), .B(state[2]), .C(time_high_count_15__N_117[15]), 
         .D(state[0]), .Z(time_high_count_15__N_60[15])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'h0020;
    FD1P3JX time_high_us_i8 (.D(n3_adj_300), .SP(us_clk_enable_35), .PD(n959), 
            .CK(us_clk), .Q(\time_high_us[8] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i8.GSR = "ENABLED";
    FD1P3JX time_high_us_i7 (.D(n3_adj_302), .SP(us_clk_enable_35), .PD(n959), 
            .CK(us_clk), .Q(\time_high_us[7] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i7.GSR = "ENABLED";
    FD1P3JX time_high_us_i6 (.D(n3_adj_301), .SP(us_clk_enable_35), .PD(n959), 
            .CK(us_clk), .Q(\time_high_us[6] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i6.GSR = "ENABLED";
    FD1P3JX time_high_us_i5 (.D(n3_adj_303), .SP(us_clk_enable_35), .PD(n959), 
            .CK(us_clk), .Q(\time_high_us[5] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i5.GSR = "ENABLED";
    FD1P3JX time_high_us_i3 (.D(n3_adj_304), .SP(us_clk_enable_35), .PD(n959), 
            .CK(us_clk), .Q(\time_high_us[3] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i3.GSR = "ENABLED";
    FD1P3AX time_high_us_i2 (.D(time_high_us_15__N_76[2]), .SP(us_clk_enable_35), 
            .CK(us_clk), .Q(\time_high_us[2] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam time_high_us_i2.GSR = "ENABLED";
    FD1P3IX pwm_pulse_level_flag_48 (.D(n1564), .SP(us_clk_enable_36), .CD(n1037), 
            .CK(us_clk), .Q(pwm_pulse_level_flag)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=36, LSE_RCOL=19, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(70[8] 159[6])
    defparam pwm_pulse_level_flag_48.GSR = "ENABLED";
    LUT4 pwm_pulse_level_flag_I_0_57_1_lut_rep_15 (.A(pwm_pulse_level_flag), 
         .Z(n1795)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[31:59])
    defparam pwm_pulse_level_flag_I_0_57_1_lut_rep_15.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(pwm_pulse_level_flag), .B(state_2__N_92_c_1), 
         .Z(n1574)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(112[31:59])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i944_4_lut (.A(time_high_count[5]), .B(state[1]), .C(n1159), 
         .D(n106), .Z(n3_adj_303)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C)+!B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(71[4] 158[11])
    defparam i944_4_lut.init = 16'h0c8c;
    LUT4 i942_4_lut (.A(time_high_count[3]), .B(state[1]), .C(n1159), 
         .D(n106), .Z(n3_adj_304)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C)+!B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_reader.v(71[4] 158[11])
    defparam i942_4_lut.init = 16'h0c8c;
    PFUMX i1568 (.BLUT(n1787), .ALUT(n1786), .C0(state[2]), .Z(state_2__N_57[1]));
    
endmodule
//
// Verilog Description of module pwm_to_value
//

module pwm_to_value (\adjusted_value[2] , us_clk, n1799, \time_high_us[2] , 
            \time_high_us[5] , \time_high_us[7] , \time_high_us[6] , \time_high_us[8] , 
            machxo3_switch_reset_n_c, n1801, n27, \time_high_us[4] , 
            \time_high_us[3] , \motor_1_rate[0] , \adjusted_value[4] , 
            \adjusted_value[6] , \adjusted_value[8] , n1803, n33, \motor_1_rate[2] , 
            n1804, \motor_1_rate[4] , n31, \motor_1_rate[6] , n1805, 
            n29, \time_high_us[9] ) /* synthesis syn_module_defined=1 */ ;
    output \adjusted_value[2] ;
    input us_clk;
    input n1799;
    input \time_high_us[2] ;
    input \time_high_us[5] ;
    input \time_high_us[7] ;
    input \time_high_us[6] ;
    input \time_high_us[8] ;
    input machxo3_switch_reset_n_c;
    output n1801;
    output n27;
    input \time_high_us[4] ;
    input \time_high_us[3] ;
    output \motor_1_rate[0] ;
    output \adjusted_value[4] ;
    output \adjusted_value[6] ;
    output \adjusted_value[8] ;
    output n1803;
    output n33;
    output \motor_1_rate[2] ;
    output n1804;
    output \motor_1_rate[4] ;
    output n31;
    output \motor_1_rate[6] ;
    output n1805;
    output n29;
    input \time_high_us[9] ;
    
    wire us_clk /* synthesis is_clock=1, SET_AS_NETWORK=us_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(77[7:13])
    
    wire n1802, n664, n1794, n662;
    wire [15:0]adjusted_value;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(30[34:48])
    
    wire n512, n654;
    wire [15:0]throttle_pwm_pulse_length_us;   // c:/lscc/projects/motor_controller/impl1/source/receiver.v(48[3:31])
    wire [15:0]adjusted_value_9__N_164;
    
    wire n670, n1793;
    
    FD1S3IX adjusted_value_i1 (.D(\time_high_us[2] ), .CK(us_clk), .CD(n1799), 
            .Q(\adjusted_value[2] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i1.GSR = "ENABLED";
    LUT4 i514_2_lut_3_lut_4_lut (.A(\time_high_us[5] ), .B(n1802), .C(\time_high_us[7] ), 
         .D(\time_high_us[6] ), .Z(n664)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i514_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i512_2_lut_3_lut_4_lut (.A(\time_high_us[6] ), .B(n1794), .C(\time_high_us[8] ), 
         .D(\time_high_us[7] ), .Z(n662)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i512_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i909_2_lut_rep_21 (.A(adjusted_value[9]), .B(machxo3_switch_reset_n_c), 
         .Z(n1801)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i909_2_lut_rep_21.init = 16'h8888;
    LUT4 inv_7_i8_1_lut_2_lut (.A(adjusted_value[9]), .B(machxo3_switch_reset_n_c), 
         .Z(n27)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam inv_7_i8_1_lut_2_lut.init = 16'h7777;
    LUT4 i331_2_lut_rep_22 (.A(\time_high_us[4] ), .B(\time_high_us[3] ), 
         .Z(n1802)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i331_2_lut_rep_22.init = 16'heeee;
    LUT4 i852_2_lut (.A(\adjusted_value[2] ), .B(machxo3_switch_reset_n_c), 
         .Z(\motor_1_rate[0] )) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i852_2_lut.init = 16'h8888;
    LUT4 i363_2_lut_3_lut (.A(\time_high_us[4] ), .B(\time_high_us[3] ), 
         .C(\time_high_us[5] ), .Z(n512)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i363_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i505_2_lut_3_lut_4_lut (.A(\time_high_us[4] ), .B(\time_high_us[3] ), 
         .C(\time_high_us[6] ), .D(\time_high_us[5] ), .Z(n654)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i505_2_lut_3_lut_4_lut.init = 16'h1ef0;
    FD1S3AX adjusted_value_i2 (.D(throttle_pwm_pulse_length_us[3]), .CK(us_clk), 
            .Q(adjusted_value[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i2.GSR = "ENABLED";
    FD1S3AX adjusted_value_i3 (.D(adjusted_value_9__N_164[4]), .CK(us_clk), 
            .Q(\adjusted_value[4] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i3.GSR = "ENABLED";
    FD1S3IX adjusted_value_i4 (.D(n512), .CK(us_clk), .CD(n1799), .Q(adjusted_value[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i4.GSR = "ENABLED";
    FD1S3IX adjusted_value_i5 (.D(n654), .CK(us_clk), .CD(n1799), .Q(\adjusted_value[6] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i5.GSR = "ENABLED";
    FD1S3IX adjusted_value_i6 (.D(n664), .CK(us_clk), .CD(n1799), .Q(adjusted_value[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i6.GSR = "ENABLED";
    FD1S3IX adjusted_value_i7 (.D(n662), .CK(us_clk), .CD(n1799), .Q(\adjusted_value[8] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i7.GSR = "ENABLED";
    FD1S3IX adjusted_value_i8 (.D(n670), .CK(us_clk), .CD(n1799), .Q(adjusted_value[9])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=15, LSE_RCOL=19, LSE_LLINE=65, LSE_RLINE=71 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(36[4:63])
    defparam adjusted_value_i8.GSR = "ENABLED";
    LUT4 i503_2_lut_rep_14_3_lut (.A(\time_high_us[4] ), .B(\time_high_us[3] ), 
         .C(\time_high_us[5] ), .Z(n1794)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i503_2_lut_rep_14_3_lut.init = 16'he0e0;
    LUT4 i507_2_lut_rep_13_3_lut_4_lut (.A(\time_high_us[4] ), .B(\time_high_us[3] ), 
         .C(\time_high_us[6] ), .D(\time_high_us[5] ), .Z(n1793)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i507_2_lut_rep_13_3_lut_4_lut.init = 16'he000;
    LUT4 i1535_2_lut (.A(\time_high_us[3] ), .B(machxo3_switch_reset_n_c), 
         .Z(throttle_pwm_pulse_length_us[3])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1535_2_lut.init = 16'h7777;
    LUT4 i1560_3_lut (.A(\time_high_us[4] ), .B(machxo3_switch_reset_n_c), 
         .C(\time_high_us[3] ), .Z(adjusted_value_9__N_164[4])) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i1560_3_lut.init = 16'hb7b7;
    LUT4 i903_2_lut_rep_23 (.A(adjusted_value[3]), .B(machxo3_switch_reset_n_c), 
         .Z(n1803)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i903_2_lut_rep_23.init = 16'h8888;
    LUT4 inv_7_i2_1_lut_2_lut (.A(adjusted_value[3]), .B(machxo3_switch_reset_n_c), 
         .Z(n33)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam inv_7_i2_1_lut_2_lut.init = 16'h7777;
    LUT4 i904_2_lut (.A(\adjusted_value[4] ), .B(machxo3_switch_reset_n_c), 
         .Z(\motor_1_rate[2] )) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i904_2_lut.init = 16'h8888;
    LUT4 i905_2_lut_rep_24 (.A(adjusted_value[5]), .B(machxo3_switch_reset_n_c), 
         .Z(n1804)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i905_2_lut_rep_24.init = 16'h8888;
    LUT4 i906_2_lut (.A(\adjusted_value[6] ), .B(machxo3_switch_reset_n_c), 
         .Z(\motor_1_rate[4] )) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i906_2_lut.init = 16'h8888;
    LUT4 inv_7_i4_1_lut_2_lut (.A(adjusted_value[5]), .B(machxo3_switch_reset_n_c), 
         .Z(n31)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam inv_7_i4_1_lut_2_lut.init = 16'h7777;
    LUT4 i908_2_lut (.A(\adjusted_value[8] ), .B(machxo3_switch_reset_n_c), 
         .Z(\motor_1_rate[6] )) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i908_2_lut.init = 16'h8888;
    LUT4 i907_2_lut_rep_25 (.A(adjusted_value[7]), .B(machxo3_switch_reset_n_c), 
         .Z(n1805)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam i907_2_lut_rep_25.init = 16'h8888;
    LUT4 inv_7_i6_1_lut_2_lut (.A(adjusted_value[7]), .B(machxo3_switch_reset_n_c), 
         .Z(n29)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_to_value.v(40[21:69])
    defparam inv_7_i6_1_lut_2_lut.init = 16'h7777;
    LUT4 i520_3_lut_4_lut (.A(\time_high_us[7] ), .B(n1793), .C(\time_high_us[8] ), 
         .D(\time_high_us[9] ), .Z(n670)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i520_3_lut_4_lut.init = 16'h7f80;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module us_clk
//

module us_clk (sys_clk, GND_net, us_clk) /* synthesis syn_module_defined=1 */ ;
    input sys_clk;
    input GND_net;
    output us_clk;
    
    wire sys_clk /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(76[7:14])
    wire us_clk /* synthesis is_clock=1, SET_AS_NETWORK=us_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(77[7:13])
    wire [14:0]sys_clk_counter;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(19[13:28])
    
    wire n950;
    wire [14:0]n7;
    wire [14:0]sys_clk_counter_14__N_19;
    
    wire n1361, n359, n1709, n1367, n1366, n1365, n1364, n1792, 
        n29, n1703, n694, n20_adj_297, n16_adj_298, n18_adj_299, 
        n1363, n1362;
    
    FD1S3IX sys_clk_counter_i8 (.D(n7[8]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i8.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i7 (.D(n7[7]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i7.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i6 (.D(n7[6]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i6.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i5 (.D(n7[5]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i5.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i0 (.D(n7[0]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i0.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i3 (.D(n7[3]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i3.GSR = "ENABLED";
    FD1S3AX sys_clk_counter_i2 (.D(sys_clk_counter_14__N_19[2]), .CK(sys_clk), 
            .Q(sys_clk_counter[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i2.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i1 (.D(n7[1]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i1.GSR = "ENABLED";
    CCU2D add_7_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sys_clk_counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1361), .S1(n7[0]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_1.INIT0 = 16'hF000;
    defparam add_7_1.INIT1 = 16'h5555;
    defparam add_7_1.INJECT1_0 = "NO";
    defparam add_7_1.INJECT1_1 = "NO";
    FD1S3AY us_clk_16 (.D(n359), .CK(sys_clk), .Q(us_clk));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam us_clk_16.GSR = "ENABLED";
    LUT4 i1512_2_lut (.A(sys_clk_counter[5]), .B(sys_clk_counter[2]), .Z(n1709)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1512_2_lut.init = 16'h8888;
    CCU2D add_7_15 (.A0(sys_clk_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sys_clk_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1367), .S0(n7[13]), .S1(n7[14]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_15.INIT0 = 16'h5aaa;
    defparam add_7_15.INIT1 = 16'h5aaa;
    defparam add_7_15.INJECT1_0 = "NO";
    defparam add_7_15.INJECT1_1 = "NO";
    CCU2D add_7_13 (.A0(sys_clk_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sys_clk_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1366), .COUT(n1367), .S0(n7[11]), .S1(n7[12]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_13.INIT0 = 16'h5aaa;
    defparam add_7_13.INIT1 = 16'h5aaa;
    defparam add_7_13.INJECT1_0 = "NO";
    defparam add_7_13.INJECT1_1 = "NO";
    FD1S3IX sys_clk_counter_i10 (.D(n7[10]), .CK(sys_clk), .CD(n950), 
            .Q(sys_clk_counter[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i10.GSR = "ENABLED";
    CCU2D add_7_11 (.A0(sys_clk_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sys_clk_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1365), .COUT(n1366), .S0(n7[9]), .S1(n7[10]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_11.INIT0 = 16'h5aaa;
    defparam add_7_11.INIT1 = 16'h5aaa;
    defparam add_7_11.INJECT1_0 = "NO";
    defparam add_7_11.INJECT1_1 = "NO";
    CCU2D add_7_9 (.A0(sys_clk_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sys_clk_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1364), .COUT(n1365), .S0(n7[7]), .S1(n7[8]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_9.INIT0 = 16'h5aaa;
    defparam add_7_9.INIT1 = 16'h5aaa;
    defparam add_7_9.INJECT1_0 = "NO";
    defparam add_7_9.INJECT1_1 = "NO";
    LUT4 i859_3_lut (.A(n7[2]), .B(n1792), .C(n29), .Z(sys_clk_counter_14__N_19[2])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(30[8] 35[46])
    defparam i859_3_lut.init = 16'hb3b3;
    LUT4 i1506_2_lut (.A(sys_clk_counter[4]), .B(sys_clk_counter[1]), .Z(n1703)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1506_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(sys_clk_counter[1]), .B(sys_clk_counter[4]), .C(n694), 
         .D(n1709), .Z(n29)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i853_3_lut (.A(us_clk), .B(n1792), .C(n29), .Z(n359)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam i853_3_lut.init = 16'h8c8c;
    LUT4 i858_3_lut (.A(n7[4]), .B(n1792), .C(n29), .Z(sys_clk_counter_14__N_19[4])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(30[8] 35[46])
    defparam i858_3_lut.init = 16'hb3b3;
    LUT4 i10_4_lut (.A(sys_clk_counter[6]), .B(n20_adj_297), .C(n16_adj_298), 
         .D(sys_clk_counter[9]), .Z(n694)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[12:50])
    defparam i10_4_lut.init = 16'hfffe;
    FD1S3IX sys_clk_counter_i11 (.D(n7[11]), .CK(sys_clk), .CD(n950), 
            .Q(sys_clk_counter[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i11.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i12 (.D(n7[12]), .CK(sys_clk), .CD(n950), 
            .Q(sys_clk_counter[12])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i12.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i13 (.D(n7[13]), .CK(sys_clk), .CD(n950), 
            .Q(sys_clk_counter[13])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i13.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i14 (.D(n7[14]), .CK(sys_clk), .CD(n950), 
            .Q(sys_clk_counter[14])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i14.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(sys_clk_counter[8]), .B(n18_adj_299), .C(sys_clk_counter[13]), 
         .D(sys_clk_counter[14]), .Z(n20_adj_297)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[12:50])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(sys_clk_counter[11]), .B(sys_clk_counter[7]), .Z(n16_adj_298)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[12:50])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(sys_clk_counter[10]), .B(sys_clk_counter[3]), .C(sys_clk_counter[12]), 
         .D(sys_clk_counter[0]), .Z(n18_adj_299)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[12:50])
    defparam i7_4_lut.init = 16'hfeff;
    LUT4 i1565_2_lut_2_lut (.A(n1792), .B(n29), .Z(n950)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(30[8] 35[46])
    defparam i1565_2_lut_2_lut.init = 16'h7777;
    CCU2D add_7_7 (.A0(sys_clk_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sys_clk_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1363), .COUT(n1364), .S0(n7[5]), .S1(n7[6]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_7.INIT0 = 16'h5aaa;
    defparam add_7_7.INIT1 = 16'h5aaa;
    defparam add_7_7.INJECT1_0 = "NO";
    defparam add_7_7.INJECT1_1 = "NO";
    CCU2D add_7_5 (.A0(sys_clk_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sys_clk_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1362), .COUT(n1363), .S0(n7[3]), .S1(n7[4]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_5.INIT0 = 16'h5aaa;
    defparam add_7_5.INIT1 = 16'h5aaa;
    defparam add_7_5.INJECT1_0 = "NO";
    defparam add_7_5.INJECT1_1 = "NO";
    CCU2D add_7_3 (.A0(sys_clk_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sys_clk_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1361), .COUT(n1362), .S0(n7[1]), .S1(n7[2]));   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(35[23:45])
    defparam add_7_3.INIT0 = 16'h5aaa;
    defparam add_7_3.INIT1 = 16'h5aaa;
    defparam add_7_3.INJECT1_0 = "NO";
    defparam add_7_3.INJECT1_1 = "NO";
    FD1S3AX sys_clk_counter_i4 (.D(sys_clk_counter_14__N_19[4]), .CK(sys_clk), 
            .Q(sys_clk_counter[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i4.GSR = "ENABLED";
    FD1S3IX sys_clk_counter_i9 (.D(n7[9]), .CK(sys_clk), .CD(n950), .Q(sys_clk_counter[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=97, LSE_RLINE=100 */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[8] 35[46])
    defparam sys_clk_counter_i9.GSR = "ENABLED";
    LUT4 i3_4_lut_rep_12 (.A(n694), .B(sys_clk_counter[5]), .C(sys_clk_counter[2]), 
         .D(n1703), .Z(n1792)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/us_clk.v(26[12:50])
    defparam i3_4_lut_rep_12.init = 16'hfeff;
    
endmodule
//
// Verilog Description of module pwm_generator
//

module pwm_generator (GND_net, us_clk, \motor_1_rate[0] , n1835, n1803, 
            \motor_1_rate[2] , n1804, \motor_1_rate[4] , n1805, \motor_1_rate[6] , 
            n1801, machxo3_switch_reset_n_c, n1799, motor_1_pwm_c_0) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input us_clk;
    input \motor_1_rate[0] ;
    input n1835;
    input n1803;
    input \motor_1_rate[2] ;
    input n1804;
    input \motor_1_rate[4] ;
    input n1805;
    input \motor_1_rate[6] ;
    input n1801;
    input machxo3_switch_reset_n_c;
    output n1799;
    output motor_1_pwm_c_0;
    
    wire us_clk /* synthesis is_clock=1, SET_AS_NETWORK=us_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(77[7:13])
    
    wire n1369;
    wire [15:0]period_counter;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(43[13:27])
    wire [15:0]n11;
    
    wire n1370, n1375, n1376, n1374, high_counter_9__N_250;
    wire [15:0]period_counter_15__N_251;
    
    wire n1373;
    wire [9:0]m1_rate;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(48[27:34])
    
    wire high_counter_en, us_clk_enable_1, n1797;
    wire [9:0]high_counter;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(44[27:39])
    
    wire us_clk_enable_28;
    wire [9:0]n29;
    
    wire n1582, n6, n1381, n1380, n1372, n1379, n1371, n1798, 
        n1378, n6_adj_294, n718, n954, n1701, n6_adj_295, n1713, 
        n12_adj_296, n5;
    wire [2:0]state;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(41[12:17])
    
    wire n4;
    
    CCU2D add_7_3 (.A0(period_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(period_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1369), .COUT(n1370), .S0(n11[1]), .S1(n11[2]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_3.INIT0 = 16'h5aaa;
    defparam add_7_3.INIT1 = 16'h5aaa;
    defparam add_7_3.INJECT1_0 = "NO";
    defparam add_7_3.INJECT1_1 = "NO";
    CCU2D add_7_15 (.A0(period_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(period_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1375), .COUT(n1376), .S0(n11[13]), .S1(n11[14]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_15.INIT0 = 16'h5aaa;
    defparam add_7_15.INIT1 = 16'h5aaa;
    defparam add_7_15.INJECT1_0 = "NO";
    defparam add_7_15.INJECT1_1 = "NO";
    CCU2D add_7_13 (.A0(period_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(period_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1374), .COUT(n1375), .S0(n11[11]), .S1(n11[12]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_13.INIT0 = 16'h5aaa;
    defparam add_7_13.INIT1 = 16'h5aaa;
    defparam add_7_13.INJECT1_0 = "NO";
    defparam add_7_13.INJECT1_1 = "NO";
    FD1S3IX period_counter__i0 (.D(period_counter_15__N_251[0]), .CK(us_clk), 
            .CD(high_counter_9__N_250), .Q(period_counter[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i0.GSR = "ENABLED";
    CCU2D add_7_11 (.A0(period_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(period_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1373), .COUT(n1374), .S0(n11[9]), .S1(n11[10]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_11.INIT0 = 16'h5aaa;
    defparam add_7_11.INIT1 = 16'h5aaa;
    defparam add_7_11.INJECT1_0 = "NO";
    defparam add_7_11.INJECT1_1 = "NO";
    CCU2D add_7_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(period_counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1369), .S1(n11[0]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_1.INIT0 = 16'hF000;
    defparam add_7_1.INIT1 = 16'h5555;
    defparam add_7_1.INJECT1_0 = "NO";
    defparam add_7_1.INJECT1_1 = "NO";
    FD1P3AX m1_rate__i1 (.D(\motor_1_rate[0] ), .SP(high_counter_9__N_250), 
            .CK(us_clk), .Q(m1_rate[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i1.GSR = "ENABLED";
    FD1P3IX high_counter_en_28 (.D(n1835), .SP(us_clk_enable_1), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter_en));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter_en_28.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_17 (.A(period_counter[3]), .B(period_counter[10]), 
         .Z(n1797)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i1_2_lut_rep_17.init = 16'hbbbb;
    FD1P3IX high_counter__i0 (.D(n29[0]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut (.A(period_counter[3]), .B(period_counter[10]), 
         .C(n1582), .Z(n6)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i2_2_lut_3_lut.init = 16'hfbfb;
    CCU2D add_8_10 (.A0(high_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(high_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1381), .S0(n29[8]), .S1(n29[9]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(126[21:42])
    defparam add_8_10.INIT0 = 16'h5aaa;
    defparam add_8_10.INIT1 = 16'h5aaa;
    defparam add_8_10.INJECT1_0 = "NO";
    defparam add_8_10.INJECT1_1 = "NO";
    CCU2D add_8_8 (.A0(high_counter[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(high_counter[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1380), .COUT(n1381), .S0(n29[6]), .S1(n29[7]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(126[21:42])
    defparam add_8_8.INIT0 = 16'h5aaa;
    defparam add_8_8.INIT1 = 16'h5aaa;
    defparam add_8_8.INJECT1_0 = "NO";
    defparam add_8_8.INJECT1_1 = "NO";
    CCU2D add_7_9 (.A0(period_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(period_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1372), .COUT(n1373), .S0(n11[7]), .S1(n11[8]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_9.INIT0 = 16'h5aaa;
    defparam add_7_9.INIT1 = 16'h5aaa;
    defparam add_7_9.INJECT1_0 = "NO";
    defparam add_7_9.INJECT1_1 = "NO";
    CCU2D add_8_6 (.A0(high_counter[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(high_counter[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1379), .COUT(n1380), .S0(n29[4]), .S1(n29[5]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(126[21:42])
    defparam add_8_6.INIT0 = 16'h5aaa;
    defparam add_8_6.INIT1 = 16'h5aaa;
    defparam add_8_6.INJECT1_0 = "NO";
    defparam add_8_6.INJECT1_1 = "NO";
    CCU2D add_7_7 (.A0(period_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(period_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1371), .COUT(n1372), .S0(n11[5]), .S1(n11[6]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_7.INIT0 = 16'h5aaa;
    defparam add_7_7.INIT1 = 16'h5aaa;
    defparam add_7_7.INJECT1_0 = "NO";
    defparam add_7_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_18 (.A(period_counter[4]), .B(period_counter[5]), 
         .Z(n1798)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i1_2_lut_rep_18.init = 16'hbbbb;
    CCU2D add_8_4 (.A0(high_counter[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(high_counter[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1378), .COUT(n1379), .S0(n29[2]), .S1(n29[3]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(126[21:42])
    defparam add_8_4.INIT0 = 16'h5aaa;
    defparam add_8_4.INIT1 = 16'h5aaa;
    defparam add_8_4.INJECT1_0 = "NO";
    defparam add_8_4.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut_adj_7 (.A(period_counter[4]), .B(period_counter[5]), 
         .C(n1582), .Z(n6_adj_294)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i2_2_lut_3_lut_adj_7.init = 16'hfbfb;
    LUT4 i1193_2_lut (.A(high_counter[0]), .B(high_counter_en), .Z(n29[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1193_2_lut.init = 16'h6666;
    LUT4 i1549_4_lut_rep_11 (.A(period_counter[10]), .B(n718), .C(n6_adj_294), 
         .D(period_counter[3]), .Z(us_clk_enable_1)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(119[12:51])
    defparam i1549_4_lut_rep_11.init = 16'h0100;
    LUT4 i1557_2_lut (.A(us_clk_enable_1), .B(high_counter_9__N_250), .Z(n954)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam i1557_2_lut.init = 16'heeee;
    FD1S3IX period_counter__i2 (.D(n11[2]), .CK(us_clk), .CD(n954), .Q(period_counter[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i2.GSR = "ENABLED";
    FD1S3IX period_counter__i3 (.D(period_counter_15__N_251[3]), .CK(us_clk), 
            .CD(high_counter_9__N_250), .Q(period_counter[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i3.GSR = "ENABLED";
    FD1S3IX period_counter__i4 (.D(n11[4]), .CK(us_clk), .CD(n954), .Q(period_counter[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i4.GSR = "ENABLED";
    FD1S3IX period_counter__i5 (.D(period_counter_15__N_251[5]), .CK(us_clk), 
            .CD(high_counter_9__N_250), .Q(period_counter[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i5.GSR = "ENABLED";
    FD1S3IX period_counter__i6 (.D(period_counter_15__N_251[6]), .CK(us_clk), 
            .CD(high_counter_9__N_250), .Q(period_counter[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i6.GSR = "ENABLED";
    FD1S3IX period_counter__i7 (.D(period_counter_15__N_251[7]), .CK(us_clk), 
            .CD(high_counter_9__N_250), .Q(period_counter[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i7.GSR = "ENABLED";
    FD1S3IX period_counter__i8 (.D(period_counter_15__N_251[8]), .CK(us_clk), 
            .CD(high_counter_9__N_250), .Q(period_counter[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i8.GSR = "ENABLED";
    FD1S3IX period_counter__i9 (.D(period_counter_15__N_251[9]), .CK(us_clk), 
            .CD(high_counter_9__N_250), .Q(period_counter[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i9.GSR = "ENABLED";
    FD1S3IX period_counter__i10 (.D(n11[10]), .CK(us_clk), .CD(n954), 
            .Q(period_counter[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i10.GSR = "ENABLED";
    FD1S3IX period_counter__i11 (.D(n11[11]), .CK(us_clk), .CD(n954), 
            .Q(period_counter[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i11.GSR = "ENABLED";
    FD1S3IX period_counter__i12 (.D(n11[12]), .CK(us_clk), .CD(n954), 
            .Q(period_counter[12])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i12.GSR = "ENABLED";
    FD1S3IX period_counter__i13 (.D(n11[13]), .CK(us_clk), .CD(n954), 
            .Q(period_counter[13])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i13.GSR = "ENABLED";
    FD1S3IX period_counter__i14 (.D(n11[14]), .CK(us_clk), .CD(n954), 
            .Q(period_counter[14])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i14.GSR = "ENABLED";
    FD1S3IX period_counter__i15 (.D(n11[15]), .CK(us_clk), .CD(n954), 
            .Q(period_counter[15])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i15.GSR = "ENABLED";
    LUT4 i897_2_lut (.A(n11[3]), .B(us_clk_enable_1), .Z(period_counter_15__N_251[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(123[8] 127[6])
    defparam i897_2_lut.init = 16'heeee;
    FD1P3AX m1_rate__i2 (.D(n1803), .SP(high_counter_9__N_250), .CK(us_clk), 
            .Q(m1_rate[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i2.GSR = "ENABLED";
    FD1P3AX m1_rate__i3 (.D(\motor_1_rate[2] ), .SP(high_counter_9__N_250), 
            .CK(us_clk), .Q(m1_rate[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i3.GSR = "ENABLED";
    FD1P3AX m1_rate__i4 (.D(n1804), .SP(high_counter_9__N_250), .CK(us_clk), 
            .Q(m1_rate[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i4.GSR = "ENABLED";
    FD1P3AX m1_rate__i5 (.D(\motor_1_rate[4] ), .SP(high_counter_9__N_250), 
            .CK(us_clk), .Q(m1_rate[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i5.GSR = "ENABLED";
    FD1P3AX m1_rate__i6 (.D(n1805), .SP(high_counter_9__N_250), .CK(us_clk), 
            .Q(m1_rate[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i6.GSR = "ENABLED";
    FD1P3AX m1_rate__i7 (.D(\motor_1_rate[6] ), .SP(high_counter_9__N_250), 
            .CK(us_clk), .Q(m1_rate[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i7.GSR = "ENABLED";
    FD1P3AX m1_rate__i8 (.D(n1801), .SP(high_counter_9__N_250), .CK(us_clk), 
            .Q(m1_rate[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam m1_rate__i8.GSR = "ENABLED";
    LUT4 i898_2_lut (.A(n11[5]), .B(us_clk_enable_1), .Z(period_counter_15__N_251[5])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(123[8] 127[6])
    defparam i898_2_lut.init = 16'heeee;
    LUT4 i899_2_lut (.A(n11[6]), .B(us_clk_enable_1), .Z(period_counter_15__N_251[6])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(123[8] 127[6])
    defparam i899_2_lut.init = 16'heeee;
    LUT4 i900_2_lut (.A(n11[7]), .B(us_clk_enable_1), .Z(period_counter_15__N_251[7])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(123[8] 127[6])
    defparam i900_2_lut.init = 16'heeee;
    LUT4 i901_2_lut (.A(n11[8]), .B(us_clk_enable_1), .Z(period_counter_15__N_251[8])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(123[8] 127[6])
    defparam i901_2_lut.init = 16'heeee;
    LUT4 i902_2_lut (.A(n11[9]), .B(us_clk_enable_1), .Z(period_counter_15__N_251[9])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(123[8] 127[6])
    defparam i902_2_lut.init = 16'heeee;
    LUT4 i1543_4_lut (.A(period_counter[14]), .B(n1701), .C(n718), .D(period_counter[11]), 
         .Z(high_counter_9__N_250)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i1543_4_lut.init = 16'h0200;
    LUT4 i4_4_lut (.A(period_counter[6]), .B(n1797), .C(n1798), .D(n6_adj_295), 
         .Z(n1701)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i4_4_lut.init = 16'hfffe;
    CCU2D add_7_5 (.A0(period_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(period_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1370), .COUT(n1371), .S0(n11[3]), .S1(n11[4]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_5.INIT0 = 16'h5aaa;
    defparam add_7_5.INIT1 = 16'h5aaa;
    defparam add_7_5.INJECT1_0 = "NO";
    defparam add_7_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(period_counter[8]), .B(period_counter[7]), .Z(n6_adj_295)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX high_counter__i1 (.D(n29[1]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i1.GSR = "ENABLED";
    FD1P3IX high_counter__i2 (.D(n29[2]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i2.GSR = "ENABLED";
    FD1P3IX high_counter__i3 (.D(n29[3]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i3.GSR = "ENABLED";
    FD1P3IX high_counter__i4 (.D(n29[4]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i4.GSR = "ENABLED";
    FD1P3IX high_counter__i5 (.D(n29[5]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i5.GSR = "ENABLED";
    FD1P3IX high_counter__i6 (.D(n29[6]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i6.GSR = "ENABLED";
    FD1P3IX high_counter__i7 (.D(n29[7]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i7.GSR = "ENABLED";
    FD1P3IX high_counter__i8 (.D(n29[8]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i8.GSR = "ENABLED";
    FD1P3IX high_counter__i9 (.D(n29[9]), .SP(us_clk_enable_28), .CD(high_counter_9__N_250), 
            .CK(us_clk), .Q(high_counter[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam high_counter__i9.GSR = "ENABLED";
    CCU2D add_8_2 (.A0(high_counter[0]), .B0(high_counter_en), .C0(GND_net), 
          .D0(GND_net), .A1(high_counter[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1378), .S1(n29[1]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(126[21:42])
    defparam add_8_2.INIT0 = 16'h7000;
    defparam add_8_2.INIT1 = 16'h5aaa;
    defparam add_8_2.INJECT1_0 = "NO";
    defparam add_8_2.INJECT1_1 = "NO";
    LUT4 i851_2_lut (.A(n11[0]), .B(us_clk_enable_1), .Z(period_counter_15__N_251[0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(123[8] 127[6])
    defparam i851_2_lut.init = 16'heeee;
    CCU2D add_7_17 (.A0(period_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1376), .S0(n11[15]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(124[23:44])
    defparam add_7_17.INIT0 = 16'h5aaa;
    defparam add_7_17.INIT1 = 16'h0000;
    defparam add_7_17.INJECT1_0 = "NO";
    defparam add_7_17.INJECT1_1 = "NO";
    LUT4 i203_2_lut_2_lut (.A(us_clk_enable_1), .B(high_counter_9__N_250), 
         .Z(us_clk_enable_28)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(119[12:51])
    defparam i203_2_lut_2_lut.init = 16'hdddd;
    LUT4 i2_4_lut (.A(period_counter[8]), .B(period_counter[14]), .C(n1713), 
         .D(period_counter[11]), .Z(n1582)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i1516_2_lut (.A(period_counter[6]), .B(period_counter[7]), .Z(n1713)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1516_2_lut.init = 16'h8888;
    LUT4 i6_4_lut (.A(period_counter[13]), .B(n12_adj_296), .C(period_counter[15]), 
         .D(period_counter[2]), .Z(n718)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(period_counter[12]), .B(period_counter[1]), .C(period_counter[9]), 
         .D(period_counter[0]), .Z(n12_adj_296)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i5_4_lut.init = 16'hffef;
    FD1S3IX period_counter__i1 (.D(n11[1]), .CK(us_clk), .CD(n954), .Q(period_counter[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=19, LSE_LLINE=152, LSE_RLINE=164 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[8] 127[6])
    defparam period_counter__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_8 (.A(period_counter[5]), .B(period_counter[4]), .Z(n5)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(108[12:44])
    defparam i1_2_lut_adj_8.init = 16'hbbbb;
    pwm_generator_block pwm4 (.machxo3_switch_reset_n_c(machxo3_switch_reset_n_c), 
            .n1799(n1799), .us_clk_enable_1(us_clk_enable_1), .\state[1] (state[1]), 
            .\state[0] (state[0]), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(85[22] 93[19])
    pwm_generator_block_U0 pwm1 (.\m1_rate[5] (m1_rate[5]), .high_counter({high_counter}), 
            .\m1_rate[4] (m1_rate[4]), .\m1_rate[3] (m1_rate[3]), .\m1_rate[2] (m1_rate[2]), 
            .\m1_rate[9] (m1_rate[9]), .\m1_rate[8] (m1_rate[8]), .\m1_rate[7] (m1_rate[7]), 
            .\m1_rate[6] (m1_rate[6]), .us_clk(us_clk), .\state[1] (state[1]), 
            .machxo3_switch_reset_n_c(machxo3_switch_reset_n_c), .high_counter_9__N_250(high_counter_9__N_250), 
            .n4(n4), .\state[0] (state[0]), .motor_1_pwm_c_0(motor_1_pwm_c_0), 
            .us_clk_enable_1(us_clk_enable_1), .GND_net(GND_net), .n5(n5), 
            .n718(n718), .n6(n6)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator.v(52[22] 60[19])
    
endmodule
//
// Verilog Description of module pwm_generator_block
//

module pwm_generator_block (machxo3_switch_reset_n_c, n1799, us_clk_enable_1, 
            \state[1] , \state[0] , n4) /* synthesis syn_module_defined=1 */ ;
    input machxo3_switch_reset_n_c;
    output n1799;
    input us_clk_enable_1;
    input \state[1] ;
    input \state[0] ;
    output n4;
    
    
    LUT4 resetn_I_0_1_lut_rep_19 (.A(machxo3_switch_reset_n_c), .Z(n1799)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(80[21:30])
    defparam resetn_I_0_1_lut_rep_19.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(machxo3_switch_reset_n_c), .B(us_clk_enable_1), 
         .C(\state[1] ), .D(\state[0] ), .Z(n4)) /* synthesis lut_function=(!(A (B+!(D))+!A !(C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(80[21:30])
    defparam i1_4_lut_4_lut.init = 16'h7750;
    
endmodule
//
// Verilog Description of module pwm_generator_block_U0
//

module pwm_generator_block_U0 (\m1_rate[5] , high_counter, \m1_rate[4] , 
            \m1_rate[3] , \m1_rate[2] , \m1_rate[9] , \m1_rate[8] , 
            \m1_rate[7] , \m1_rate[6] , us_clk, \state[1] , machxo3_switch_reset_n_c, 
            high_counter_9__N_250, n4, \state[0] , motor_1_pwm_c_0, 
            us_clk_enable_1, GND_net, n5, n718, n6) /* synthesis syn_module_defined=1 */ ;
    input \m1_rate[5] ;
    input [9:0]high_counter;
    input \m1_rate[4] ;
    input \m1_rate[3] ;
    input \m1_rate[2] ;
    input \m1_rate[9] ;
    input \m1_rate[8] ;
    input \m1_rate[7] ;
    input \m1_rate[6] ;
    input us_clk;
    output \state[1] ;
    input machxo3_switch_reset_n_c;
    input high_counter_9__N_250;
    input n4;
    output \state[0] ;
    output motor_1_pwm_c_0;
    input us_clk_enable_1;
    input GND_net;
    input n5;
    input n718;
    input n6;
    
    wire us_clk /* synthesis is_clock=1, SET_AS_NETWORK=us_clk */ ;   // c:/lscc/projects/motor_controller/impl1/source/top_motor_controller.v(77[7:13])
    
    wire n1359, n1360, n1358;
    wire [2:0]state;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(41[12:17])
    
    wire n1809;
    wire [2:0]next_state_2__N_288;
    
    wire n1807, n1423, n1524, n3, n19, n1808;
    
    CCU2D equal_11_10_1192 (.A0(\m1_rate[5] ), .B0(high_counter[5]), .C0(\m1_rate[4] ), 
          .D0(high_counter[4]), .A1(\m1_rate[3] ), .B1(high_counter[3]), 
          .C1(\m1_rate[2] ), .D1(high_counter[2]), .CIN(n1359), .COUT(n1360));
    defparam equal_11_10_1192.INIT0 = 16'h9009;
    defparam equal_11_10_1192.INIT1 = 16'h9009;
    defparam equal_11_10_1192.INJECT1_0 = "YES";
    defparam equal_11_10_1192.INJECT1_1 = "YES";
    CCU2D equal_11_8 (.A0(\m1_rate[9] ), .B0(high_counter[9]), .C0(\m1_rate[8] ), 
          .D0(high_counter[8]), .A1(\m1_rate[7] ), .B1(high_counter[7]), 
          .C1(\m1_rate[6] ), .D1(high_counter[6]), .CIN(n1358), .COUT(n1359));
    defparam equal_11_8.INIT0 = 16'h9009;
    defparam equal_11_8.INIT1 = 16'h9009;
    defparam equal_11_8.INJECT1_0 = "YES";
    defparam equal_11_8.INJECT1_1 = "YES";
    FD1S3AX state_FSM_i0 (.D(n1809), .CK(us_clk), .Q(state[2]));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(53[3] 76[10])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i330_4_lut_else_4_lut (.A(\state[1] ), .B(machxo3_switch_reset_n_c), 
         .C(next_state_2__N_288[2]), .Z(n1807)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(53[3] 76[10])
    defparam i330_4_lut_else_4_lut.init = 16'h8080;
    LUT4 i2_3_lut_4_lut (.A(machxo3_switch_reset_n_c), .B(high_counter_9__N_250), 
         .C(state[2]), .D(n4), .Z(n1423)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffd0;
    LUT4 i854_3_lut (.A(\state[0] ), .B(machxo3_switch_reset_n_c), .C(\state[1] ), 
         .Z(motor_1_pwm_c_0)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(80[21:108])
    defparam i854_3_lut.init = 16'hc8c8;
    FD1S3AX state_FSM_i1 (.D(n1524), .CK(us_clk), .Q(\state[1] ));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(53[3] 76[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AY state_FSM_i2 (.D(n1423), .CK(us_clk), .Q(\state[0] ));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(53[3] 76[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(machxo3_switch_reset_n_c), .B(next_state_2__N_288[2]), 
         .C(n3), .D(\state[1] ), .Z(n1524)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(53[3] 76[10])
    defparam i1_4_lut.init = 16'ha2a0;
    LUT4 i1_2_lut (.A(us_clk_enable_1), .B(\state[0] ), .Z(n3)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(53[3] 76[10])
    defparam i1_2_lut.init = 16'h8888;
    CCU2D equal_11_10 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1360), 
          .S0(n19));
    defparam equal_11_10.INIT0 = 16'hFFFF;
    defparam equal_11_10.INIT1 = 16'h0000;
    defparam equal_11_10.INJECT1_0 = "NO";
    defparam equal_11_10.INJECT1_1 = "NO";
    LUT4 i330_4_lut_then_4_lut (.A(\state[1] ), .B(high_counter_9__N_250), 
         .C(machxo3_switch_reset_n_c), .D(next_state_2__N_288[2]), .Z(n1808)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B+!(C))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(53[3] 76[10])
    defparam i330_4_lut_then_4_lut.init = 16'hb030;
    CCU2D equal_11_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(high_counter[1]), .B1(high_counter[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1358));   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(65[14:41])
    defparam equal_11_0.INIT0 = 16'hF000;
    defparam equal_11_0.INIT1 = 16'h1111;
    defparam equal_11_0.INJECT1_0 = "NO";
    defparam equal_11_0.INJECT1_1 = "YES";
    LUT4 i14_4_lut (.A(n19), .B(n5), .C(n718), .D(n6), .Z(next_state_2__N_288[2])) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/lscc/projects/motor_controller/impl1/source/pwm_generator_block.v(65[14:86])
    defparam i14_4_lut.init = 16'haaab;
    PFUMX i1570 (.BLUT(n1807), .ALUT(n1808), .C0(state[2]), .Z(n1809));
    
endmodule
