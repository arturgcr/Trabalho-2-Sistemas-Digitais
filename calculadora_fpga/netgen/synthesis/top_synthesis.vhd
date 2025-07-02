--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jul  1 18:42:01 2025
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc3s700an-5-fgg484
-- Input file	: top.ngc
-- Output file	: /home/ise/VirtualBox/Trabalho-2-Sistemas-Digitais/calculadora_fpga/netgen/synthesis/top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    clk : in STD_LOGIC := 'X'; 
    ps2_clk : in STD_LOGIC := 'X'; 
    ps2_data : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    lcd_rs : out STD_LOGIC; 
    lcd_rw : out STD_LOGIC; 
    lcd_enable : out STD_LOGIC; 
    resultado_pronto : out STD_LOGIC; 
    erro_div_zero : out STD_LOGIC; 
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N1111 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal a1_0_Q : STD_LOGIC; 
  signal a1_3_Q : STD_LOGIC; 
  signal a1_mux0001_2_Q : STD_LOGIC; 
  signal a1_mux0001_4_Q : STD_LOGIC; 
  signal a1_mux0001_5_Q : STD_LOGIC; 
  signal a1_not0001 : STD_LOGIC; 
  signal a2_1_Q : STD_LOGIC; 
  signal a2_4_Q : STD_LOGIC; 
  signal a2_5_Q : STD_LOGIC; 
  signal ascii_conv_inst_i_cmp_gt0000 : STD_LOGIC; 
  signal ascii_conv_inst_i_cmp_gt0000212_105 : STD_LOGIC; 
  signal ascii_conv_inst_i_cmp_gt0000217_106 : STD_LOGIC; 
  signal ascii_conv_inst_i_cmp_gt0000232_107 : STD_LOGIC; 
  signal calculadora_inst_Madd_tmp_index0000 : STD_LOGIC; 
  signal calculadora_inst_N01 : STD_LOGIC; 
  signal calculadora_inst_N10 : STD_LOGIC; 
  signal calculadora_inst_N111 : STD_LOGIC; 
  signal calculadora_inst_N12 : STD_LOGIC; 
  signal calculadora_inst_erro_r_158 : STD_LOGIC; 
  signal calculadora_inst_erro_r_mux0001_159 : STD_LOGIC; 
  signal calculadora_inst_neg_r_160 : STD_LOGIC; 
  signal calculadora_inst_pronto_r_161 : STD_LOGIC; 
  signal calculadora_inst_tmp : STD_LOGIC; 
  signal calculadora_inst_tmp1 : STD_LOGIC; 
  signal clk_BUFGP_228 : STD_LOGIC; 
  signal escrever_lcd_230 : STD_LOGIC; 
  signal escrever_lcd_mux0000 : STD_LOGIC; 
  signal iniciar_calc_232 : STD_LOGIC; 
  signal iniciar_calc_not0001 : STD_LOGIC; 
  signal lcd_ctrl_inst_Mmux_varindex0000_5_f5 : STD_LOGIC; 
  signal lcd_ctrl_inst_Mmux_varindex0000_5_f51 : STD_LOGIC; 
  signal lcd_ctrl_inst_Mmux_varindex0000_5_f511_244 : STD_LOGIC; 
  signal lcd_ctrl_inst_Mmux_varindex0000_5_f512_245 : STD_LOGIC; 
  signal lcd_ctrl_inst_Mmux_varindex0000_5_f52 : STD_LOGIC; 
  signal lcd_ctrl_inst_Mmux_varindex0000_5_f53 : STD_LOGIC; 
  signal lcd_ctrl_inst_Msub_contador_addsub0000_cy_0_rt_249 : STD_LOGIC; 
  signal lcd_ctrl_inst_N10 : STD_LOGIC; 
  signal lcd_ctrl_inst_N111 : STD_LOGIC; 
  signal lcd_ctrl_inst_N7 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_0_Q : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_10_12 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_10_121_312 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_10_17 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_11_1_314 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_12_1_315 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_13_Q_316 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_14_1_317 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_1_Q : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_2_Q : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_3_1_320 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_4_Q_321 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_5_1_322 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_6_Q : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_7_1_324 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_8_Q_325 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_8_SW0 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_8_SW01_327 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_9_Q : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_9_1_329 : STD_LOGIC; 
  signal lcd_ctrl_inst_contador_mux0000_9_2_330 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_1_1_341 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_1_2_342 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_2_15_344 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_3_15 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_3_151_347 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_3_152_348 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_4_15_350 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_5_15_352 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_6_14 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_6_141_355 : STD_LOGIC; 
  signal lcd_ctrl_inst_data_reg_mux0000_7_15_357 : STD_LOGIC; 
  signal lcd_ctrl_inst_enable_reg_358 : STD_LOGIC; 
  signal lcd_ctrl_inst_enable_reg_mux00001 : STD_LOGIC; 
  signal lcd_ctrl_inst_enable_reg_or0000 : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd1_361 : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd1_In : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd2_363 : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd2_In : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd3_365 : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd3_In : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd4_367 : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd5_368 : STD_LOGIC; 
  signal lcd_ctrl_inst_estado_FSM_FFd6_369 : STD_LOGIC; 
  signal lcd_ctrl_inst_rs_reg_370 : STD_LOGIC; 
  signal lcd_ctrl_inst_rs_reg_mux0000 : STD_LOGIC; 
  signal lcd_ctrl_inst_rs_reg_not0001 : STD_LOGIC; 
  signal lcd_ctrl_inst_write_index_mux0000_2_1_379 : STD_LOGIC; 
  signal lcd_ctrl_inst_write_index_mux0000_2_2_380 : STD_LOGIC; 
  signal op1_mux0000_0_25 : STD_LOGIC; 
  signal op1_mux0000_0_251_415 : STD_LOGIC; 
  signal op1_mux0000_1_25 : STD_LOGIC; 
  signal op1_mux0000_1_251_418 : STD_LOGIC; 
  signal op1_mux0000_2_25 : STD_LOGIC; 
  signal op1_mux0000_2_251_421 : STD_LOGIC; 
  signal op1_mux0000_3_25 : STD_LOGIC; 
  signal op1_mux0000_3_251_424 : STD_LOGIC; 
  signal op1_mux0000_4_26 : STD_LOGIC; 
  signal op1_mux0000_4_261_427 : STD_LOGIC; 
  signal op2_mux0000_0_12_452 : STD_LOGIC; 
  signal op2_mux0000_1_12_454 : STD_LOGIC; 
  signal op2_mux0000_2_12_456 : STD_LOGIC; 
  signal op2_mux0000_3_12_458 : STD_LOGIC; 
  signal op2_mux0000_4_23_460 : STD_LOGIC; 
  signal op2_mux0000_5_12_462 : STD_LOGIC; 
  signal op2_mux0000_6_12_464 : STD_LOGIC; 
  signal operador_ascii_and0000 : STD_LOGIC; 
  signal operador_ascii_and00001_472 : STD_LOGIC; 
  signal operador_ascii_not0001 : STD_LOGIC; 
  signal ps2_clk_IBUF_475 : STD_LOGIC; 
  signal ps2_data_IBUF_477 : STD_LOGIC; 
  signal reset_IBUF_479 : STD_LOGIC; 
  signal state_FSM_FFd1_481 : STD_LOGIC; 
  signal state_FSM_FFd1_In1 : STD_LOGIC; 
  signal state_FSM_FFd2_483 : STD_LOGIC; 
  signal state_FSM_FFd2_In2 : STD_LOGIC; 
  signal state_FSM_FFd2_In21_485 : STD_LOGIC; 
  signal state_FSM_FFd3_486 : STD_LOGIC; 
  signal state_FSM_FFd3_In111 : STD_LOGIC; 
  signal state_FSM_FFd3_In1111 : STD_LOGIC; 
  signal state_FSM_FFd3_In11111_489 : STD_LOGIC; 
  signal state_FSM_FFd3_In36_490 : STD_LOGIC; 
  signal state_FSM_FFd3_In62_491 : STD_LOGIC; 
  signal state_FSM_FFd3_In8_492 : STD_LOGIC; 
  signal tecla_pronta_inv : STD_LOGIC; 
  signal teclado_inst_Mshreg_ps2_clk_sync_1_494 : STD_LOGIC; 
  signal teclado_inst_N0 : STD_LOGIC; 
  signal teclado_inst_N19 : STD_LOGIC; 
  signal teclado_inst_N21 : STD_LOGIC; 
  signal teclado_inst_bit_count_or0000 : STD_LOGIC; 
  signal teclado_inst_dado_reg_and0000 : STD_LOGIC; 
  signal teclado_inst_dado_reg_and000024 : STD_LOGIC; 
  signal teclado_inst_dado_reg_and00009 : STD_LOGIC; 
  signal teclado_inst_dado_reg_and000091_516 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_3_16 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_3_161_520 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_3_33_521 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_3_73_522 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_4_17 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_4_171_525 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_4_48_526 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_4_82 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_4_821_528 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_17_530 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_2_531 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_36 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_361_533 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_362_534 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_72 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_721_536 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_722_537 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_99 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_991_539 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_5_992_540 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_118_542 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_138 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_1381_544 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_1382_545 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_15 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_151_547 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_152_548 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_153_549 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_5_550 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_50_551 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_6_60_552 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_17 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_171_555 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_172_556 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_43 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_431_558 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_432_559 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_92 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_921_561 : STD_LOGIC; 
  signal teclado_inst_dado_reg_mux0001_7_922_562 : STD_LOGIC; 
  signal teclado_inst_pronto_reg_571 : STD_LOGIC; 
  signal teclado_inst_ps2_falling_edge_574 : STD_LOGIC; 
  signal teclado_inst_recebido_575 : STD_LOGIC; 
  signal teclado_inst_recebido_mux0000 : STD_LOGIC; 
  signal teclado_inst_recebido_not0001 : STD_LOGIC; 
  signal teclado_inst_reset_inv : STD_LOGIC; 
  signal teclado_inst_scan_code_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_1_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_2_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_3_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_4_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_5_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_6_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_7_not0001 : STD_LOGIC; 
  signal teclado_inst_shift_reg_8_not0001 : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_P_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op2_mult0000_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_P_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_op1_mult0000_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal Madd_op1_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Madd_op1_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Madd_op2_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Madd_op2_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Q_sub0000 : STD_LOGIC_VECTOR ( 6 downto 5 ); 
  signal a3 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal a3_mux0001 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal a5 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a5_mux0001 : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal calculadora_inst_Madd_res_abs_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal calculadora_inst_Madd_res_abs_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal calculadora_inst_Madd_res_abs_not0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal calculadora_inst_Madd_tmp_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal calculadora_inst_Madd_tmp_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal calculadora_inst_Msub_tmp_sub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal calculadora_inst_Msub_tmp_sub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal calculadora_inst_res_abs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal calculadora_inst_res_abs_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal calculadora_inst_res_abs_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal calculadora_inst_tmp_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal calculadora_inst_tmp_mult0000 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal calculadora_inst_tmp_mult0002 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal calculadora_inst_tmp_mux0000 : STD_LOGIC_VECTOR ( 9 downto 9 ); 
  signal calculadora_inst_tmp_sub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_ctrl_inst_Msub_contador_addsub0000_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal lcd_ctrl_inst_Msub_contador_addsub0000_lut : STD_LOGIC_VECTOR ( 14 downto 1 ); 
  signal lcd_ctrl_inst_contador : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal lcd_ctrl_inst_contador_addsub0000 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal lcd_ctrl_inst_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal lcd_ctrl_inst_data_reg_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal lcd_ctrl_inst_write_index : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal lcd_ctrl_inst_write_index_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal op1 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal op1_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal op1_mult0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal op1_mux0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal op2 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal op2_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal op2_mult0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal op2_mux0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal operador_ascii : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal teclado_inst_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal teclado_inst_bit_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal teclado_inst_dado_reg : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal teclado_inst_dado_reg_mux0001 : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal teclado_inst_previous_scan_code : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal teclado_inst_ps2_clk_sync : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal teclado_inst_scan_code : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal teclado_inst_shift_reg : STD_LOGIC_VECTOR ( 8 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  a2_1 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => calculadora_inst_erro_r_158,
      R => reset_IBUF_479,
      Q => a2_1_Q
    );
  a2_4 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => N1,
      R => reset_IBUF_479,
      Q => a2_4_Q
    );
  a2_5 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a1_mux0001_2_Q,
      R => reset_IBUF_479,
      Q => a2_5_Q
    );
  a1_0 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a1_mux0001_5_Q,
      R => reset_IBUF_479,
      Q => a1_0_Q
    );
  a1_3 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a1_mux0001_4_Q,
      R => reset_IBUF_479,
      Q => a1_3_Q
    );
  a5_0 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a5_mux0001(7),
      R => reset_IBUF_479,
      Q => a5(0)
    );
  a5_1 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a5_mux0001(6),
      R => reset_IBUF_479,
      Q => a5(1)
    );
  a5_2 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a5_mux0001(5),
      R => reset_IBUF_479,
      Q => a5(2)
    );
  a5_3 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a5_mux0001(4),
      R => reset_IBUF_479,
      Q => a5(3)
    );
  a3_0 : FDRE
    port map (
      C => clk_BUFGP_228,
      CE => a1_not0001,
      D => a3_mux0001(7),
      R => reset_IBUF_479,
      Q => a3(0)
    );
  operador_ascii_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => operador_ascii_not0001,
      D => teclado_inst_dado_reg(0),
      R => reset_IBUF_479,
      Q => operador_ascii(0)
    );
  operador_ascii_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => operador_ascii_not0001,
      D => teclado_inst_dado_reg(1),
      R => reset_IBUF_479,
      Q => operador_ascii(1)
    );
  operador_ascii_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => operador_ascii_not0001,
      D => teclado_inst_dado_reg(2),
      R => reset_IBUF_479,
      Q => operador_ascii(2)
    );
  operador_ascii_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => operador_ascii_not0001,
      D => teclado_inst_dado_reg(3),
      R => reset_IBUF_479,
      Q => operador_ascii(3)
    );
  operador_ascii_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => operador_ascii_not0001,
      D => teclado_inst_dado_reg(4),
      R => reset_IBUF_479,
      Q => operador_ascii(4)
    );
  operador_ascii_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => operador_ascii_not0001,
      D => teclado_inst_dado_reg(5),
      R => reset_IBUF_479,
      Q => operador_ascii(5)
    );
  op2_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op2_mux0000(0),
      R => reset_IBUF_479,
      Q => op2(0)
    );
  op2_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op2_mux0000(1),
      R => reset_IBUF_479,
      Q => op2(1)
    );
  op2_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op2_mux0000(2),
      R => reset_IBUF_479,
      Q => op2(2)
    );
  op2_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op2_mux0000(3),
      R => reset_IBUF_479,
      Q => op2(3)
    );
  op2_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op2_mux0000(4),
      R => reset_IBUF_479,
      Q => op2(4)
    );
  op2_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op2_mux0000(5),
      R => reset_IBUF_479,
      Q => op2(5)
    );
  op2_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op2_mux0000(6),
      R => reset_IBUF_479,
      Q => op2(6)
    );
  escrever_lcd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => tecla_pronta_inv,
      D => escrever_lcd_mux0000,
      R => reset_IBUF_479,
      Q => escrever_lcd_230
    );
  op1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op1_mux0000(0),
      R => reset_IBUF_479,
      Q => op1(0)
    );
  op1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op1_mux0000(1),
      R => reset_IBUF_479,
      Q => op1(1)
    );
  op1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op1_mux0000(2),
      R => reset_IBUF_479,
      Q => op1(2)
    );
  op1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op1_mux0000(3),
      R => reset_IBUF_479,
      Q => op1(3)
    );
  op1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op1_mux0000(4),
      R => reset_IBUF_479,
      Q => op1(4)
    );
  op1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op1_mux0000(5),
      R => reset_IBUF_479,
      Q => op1(5)
    );
  op1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_pronto_reg_571,
      D => op1_mux0000(6),
      R => reset_IBUF_479,
      Q => op1(6)
    );
  iniciar_calc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_not0001,
      D => teclado_inst_pronto_reg_571,
      R => reset_IBUF_479,
      Q => iniciar_calc_232
    );
  Mmult_op2_mult0000 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 1,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => teclado_inst_pronto_reg_571,
      CEB => N0,
      CEP => N0,
      CLK => clk_BUFGP_228,
      RSTA => reset_IBUF_479,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => N0,
      A(6) => op2_mux0000(6),
      A(5) => op2_mux0000(5),
      A(4) => op2_mux0000(4),
      A(3) => op2_mux0000(3),
      A(2) => op2_mux0000(2),
      A(1) => op2_mux0000(1),
      A(0) => op2_mux0000(0),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N0,
      B(4) => N0,
      B(3) => N1,
      B(2) => N0,
      B(1) => N1,
      B(0) => N0,
      BCIN(17) => NLW_Mmult_op2_mult0000_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_Mmult_op2_mult0000_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_Mmult_op2_mult0000_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_Mmult_op2_mult0000_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_Mmult_op2_mult0000_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_Mmult_op2_mult0000_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_Mmult_op2_mult0000_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_Mmult_op2_mult0000_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_Mmult_op2_mult0000_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_Mmult_op2_mult0000_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_Mmult_op2_mult0000_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_Mmult_op2_mult0000_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_Mmult_op2_mult0000_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_Mmult_op2_mult0000_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_Mmult_op2_mult0000_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_Mmult_op2_mult0000_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_Mmult_op2_mult0000_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_Mmult_op2_mult0000_BCIN_0_UNCONNECTED,
      P(35) => NLW_Mmult_op2_mult0000_P_35_UNCONNECTED,
      P(34) => NLW_Mmult_op2_mult0000_P_34_UNCONNECTED,
      P(33) => NLW_Mmult_op2_mult0000_P_33_UNCONNECTED,
      P(32) => NLW_Mmult_op2_mult0000_P_32_UNCONNECTED,
      P(31) => NLW_Mmult_op2_mult0000_P_31_UNCONNECTED,
      P(30) => NLW_Mmult_op2_mult0000_P_30_UNCONNECTED,
      P(29) => NLW_Mmult_op2_mult0000_P_29_UNCONNECTED,
      P(28) => NLW_Mmult_op2_mult0000_P_28_UNCONNECTED,
      P(27) => NLW_Mmult_op2_mult0000_P_27_UNCONNECTED,
      P(26) => NLW_Mmult_op2_mult0000_P_26_UNCONNECTED,
      P(25) => NLW_Mmult_op2_mult0000_P_25_UNCONNECTED,
      P(24) => NLW_Mmult_op2_mult0000_P_24_UNCONNECTED,
      P(23) => NLW_Mmult_op2_mult0000_P_23_UNCONNECTED,
      P(22) => NLW_Mmult_op2_mult0000_P_22_UNCONNECTED,
      P(21) => NLW_Mmult_op2_mult0000_P_21_UNCONNECTED,
      P(20) => NLW_Mmult_op2_mult0000_P_20_UNCONNECTED,
      P(19) => NLW_Mmult_op2_mult0000_P_19_UNCONNECTED,
      P(18) => NLW_Mmult_op2_mult0000_P_18_UNCONNECTED,
      P(17) => NLW_Mmult_op2_mult0000_P_17_UNCONNECTED,
      P(16) => NLW_Mmult_op2_mult0000_P_16_UNCONNECTED,
      P(15) => NLW_Mmult_op2_mult0000_P_15_UNCONNECTED,
      P(14) => NLW_Mmult_op2_mult0000_P_14_UNCONNECTED,
      P(13) => NLW_Mmult_op2_mult0000_P_13_UNCONNECTED,
      P(12) => NLW_Mmult_op2_mult0000_P_12_UNCONNECTED,
      P(11) => NLW_Mmult_op2_mult0000_P_11_UNCONNECTED,
      P(10) => NLW_Mmult_op2_mult0000_P_10_UNCONNECTED,
      P(9) => NLW_Mmult_op2_mult0000_P_9_UNCONNECTED,
      P(8) => NLW_Mmult_op2_mult0000_P_8_UNCONNECTED,
      P(7) => NLW_Mmult_op2_mult0000_P_7_UNCONNECTED,
      P(6) => op2_mult0000(6),
      P(5) => op2_mult0000(5),
      P(4) => op2_mult0000(4),
      P(3) => op2_mult0000(3),
      P(2) => op2_mult0000(2),
      P(1) => op2_mult0000(1),
      P(0) => op2_mult0000(0),
      BCOUT(17) => NLW_Mmult_op2_mult0000_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_Mmult_op2_mult0000_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_Mmult_op2_mult0000_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_Mmult_op2_mult0000_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_Mmult_op2_mult0000_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_Mmult_op2_mult0000_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_Mmult_op2_mult0000_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_Mmult_op2_mult0000_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_Mmult_op2_mult0000_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_Mmult_op2_mult0000_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_Mmult_op2_mult0000_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_Mmult_op2_mult0000_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_Mmult_op2_mult0000_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_Mmult_op2_mult0000_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_Mmult_op2_mult0000_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_Mmult_op2_mult0000_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_Mmult_op2_mult0000_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_Mmult_op2_mult0000_BCOUT_0_UNCONNECTED
    );
  Mmult_op1_mult0000 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 1,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => teclado_inst_pronto_reg_571,
      CEB => N0,
      CEP => N0,
      CLK => clk_BUFGP_228,
      RSTA => reset_IBUF_479,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => N0,
      A(6) => op1_mux0000(6),
      A(5) => op1_mux0000(5),
      A(4) => op1_mux0000(4),
      A(3) => op1_mux0000(3),
      A(2) => op1_mux0000(2),
      A(1) => op1_mux0000(1),
      A(0) => op1_mux0000(0),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N0,
      B(4) => N0,
      B(3) => N1,
      B(2) => N0,
      B(1) => N1,
      B(0) => N0,
      BCIN(17) => NLW_Mmult_op1_mult0000_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_Mmult_op1_mult0000_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_Mmult_op1_mult0000_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_Mmult_op1_mult0000_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_Mmult_op1_mult0000_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_Mmult_op1_mult0000_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_Mmult_op1_mult0000_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_Mmult_op1_mult0000_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_Mmult_op1_mult0000_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_Mmult_op1_mult0000_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_Mmult_op1_mult0000_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_Mmult_op1_mult0000_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_Mmult_op1_mult0000_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_Mmult_op1_mult0000_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_Mmult_op1_mult0000_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_Mmult_op1_mult0000_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_Mmult_op1_mult0000_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_Mmult_op1_mult0000_BCIN_0_UNCONNECTED,
      P(35) => NLW_Mmult_op1_mult0000_P_35_UNCONNECTED,
      P(34) => NLW_Mmult_op1_mult0000_P_34_UNCONNECTED,
      P(33) => NLW_Mmult_op1_mult0000_P_33_UNCONNECTED,
      P(32) => NLW_Mmult_op1_mult0000_P_32_UNCONNECTED,
      P(31) => NLW_Mmult_op1_mult0000_P_31_UNCONNECTED,
      P(30) => NLW_Mmult_op1_mult0000_P_30_UNCONNECTED,
      P(29) => NLW_Mmult_op1_mult0000_P_29_UNCONNECTED,
      P(28) => NLW_Mmult_op1_mult0000_P_28_UNCONNECTED,
      P(27) => NLW_Mmult_op1_mult0000_P_27_UNCONNECTED,
      P(26) => NLW_Mmult_op1_mult0000_P_26_UNCONNECTED,
      P(25) => NLW_Mmult_op1_mult0000_P_25_UNCONNECTED,
      P(24) => NLW_Mmult_op1_mult0000_P_24_UNCONNECTED,
      P(23) => NLW_Mmult_op1_mult0000_P_23_UNCONNECTED,
      P(22) => NLW_Mmult_op1_mult0000_P_22_UNCONNECTED,
      P(21) => NLW_Mmult_op1_mult0000_P_21_UNCONNECTED,
      P(20) => NLW_Mmult_op1_mult0000_P_20_UNCONNECTED,
      P(19) => NLW_Mmult_op1_mult0000_P_19_UNCONNECTED,
      P(18) => NLW_Mmult_op1_mult0000_P_18_UNCONNECTED,
      P(17) => NLW_Mmult_op1_mult0000_P_17_UNCONNECTED,
      P(16) => NLW_Mmult_op1_mult0000_P_16_UNCONNECTED,
      P(15) => NLW_Mmult_op1_mult0000_P_15_UNCONNECTED,
      P(14) => NLW_Mmult_op1_mult0000_P_14_UNCONNECTED,
      P(13) => NLW_Mmult_op1_mult0000_P_13_UNCONNECTED,
      P(12) => NLW_Mmult_op1_mult0000_P_12_UNCONNECTED,
      P(11) => NLW_Mmult_op1_mult0000_P_11_UNCONNECTED,
      P(10) => NLW_Mmult_op1_mult0000_P_10_UNCONNECTED,
      P(9) => NLW_Mmult_op1_mult0000_P_9_UNCONNECTED,
      P(8) => NLW_Mmult_op1_mult0000_P_8_UNCONNECTED,
      P(7) => NLW_Mmult_op1_mult0000_P_7_UNCONNECTED,
      P(6) => op1_mult0000(6),
      P(5) => op1_mult0000(5),
      P(4) => op1_mult0000(4),
      P(3) => op1_mult0000(3),
      P(2) => op1_mult0000(2),
      P(1) => op1_mult0000(1),
      P(0) => op1_mult0000(0),
      BCOUT(17) => NLW_Mmult_op1_mult0000_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_Mmult_op1_mult0000_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_Mmult_op1_mult0000_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_Mmult_op1_mult0000_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_Mmult_op1_mult0000_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_Mmult_op1_mult0000_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_Mmult_op1_mult0000_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_Mmult_op1_mult0000_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_Mmult_op1_mult0000_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_Mmult_op1_mult0000_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_Mmult_op1_mult0000_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_Mmult_op1_mult0000_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_Mmult_op1_mult0000_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_Mmult_op1_mult0000_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_Mmult_op1_mult0000_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_Mmult_op1_mult0000_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_Mmult_op1_mult0000_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_Mmult_op1_mult0000_BCOUT_0_UNCONNECTED
    );
  Madd_op1_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1_mult0000(0),
      I1 => teclado_inst_dado_reg(0),
      O => Madd_op1_addsub0000_lut(0)
    );
  Madd_op1_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => op1_mult0000(0),
      S => Madd_op1_addsub0000_lut(0),
      O => Madd_op1_addsub0000_cy(0)
    );
  Madd_op1_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Madd_op1_addsub0000_lut(0),
      O => op1_addsub0000(0)
    );
  Madd_op1_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1_mult0000(1),
      I1 => teclado_inst_dado_reg(1),
      O => Madd_op1_addsub0000_lut(1)
    );
  Madd_op1_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_op1_addsub0000_cy(0),
      DI => op1_mult0000(1),
      S => Madd_op1_addsub0000_lut(1),
      O => Madd_op1_addsub0000_cy(1)
    );
  Madd_op1_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_op1_addsub0000_cy(0),
      LI => Madd_op1_addsub0000_lut(1),
      O => op1_addsub0000(1)
    );
  Madd_op1_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1_mult0000(2),
      I1 => teclado_inst_dado_reg(2),
      O => Madd_op1_addsub0000_lut(2)
    );
  Madd_op1_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_op1_addsub0000_cy(1),
      DI => op1_mult0000(2),
      S => Madd_op1_addsub0000_lut(2),
      O => Madd_op1_addsub0000_cy(2)
    );
  Madd_op1_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_op1_addsub0000_cy(1),
      LI => Madd_op1_addsub0000_lut(2),
      O => op1_addsub0000(2)
    );
  Madd_op1_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1_mult0000(3),
      I1 => teclado_inst_dado_reg(3),
      O => Madd_op1_addsub0000_lut(3)
    );
  Madd_op1_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_op1_addsub0000_cy(2),
      DI => op1_mult0000(3),
      S => Madd_op1_addsub0000_lut(3),
      O => Madd_op1_addsub0000_cy(3)
    );
  Madd_op1_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_op1_addsub0000_cy(2),
      LI => Madd_op1_addsub0000_lut(3),
      O => op1_addsub0000(3)
    );
  Madd_op1_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_op1_addsub0000_cy(3),
      DI => op1_mult0000(4),
      S => Madd_op1_addsub0000_lut(4),
      O => Madd_op1_addsub0000_cy(4)
    );
  Madd_op1_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_op1_addsub0000_cy(3),
      LI => Madd_op1_addsub0000_lut(4),
      O => op1_addsub0000(4)
    );
  Madd_op1_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_op1_addsub0000_cy(4),
      DI => op1_mult0000(5),
      S => Madd_op1_addsub0000_lut(5),
      O => Madd_op1_addsub0000_cy(5)
    );
  Madd_op1_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_op1_addsub0000_cy(4),
      LI => Madd_op1_addsub0000_lut(5),
      O => op1_addsub0000(5)
    );
  Madd_op1_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_op1_addsub0000_cy(5),
      LI => Madd_op1_addsub0000_lut(6),
      O => op1_addsub0000(6)
    );
  Madd_op2_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op2_mult0000(0),
      I1 => teclado_inst_dado_reg(0),
      O => Madd_op2_addsub0000_lut(0)
    );
  Madd_op2_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => op2_mult0000(0),
      S => Madd_op2_addsub0000_lut(0),
      O => Madd_op2_addsub0000_cy(0)
    );
  Madd_op2_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Madd_op2_addsub0000_lut(0),
      O => op2_addsub0000(0)
    );
  Madd_op2_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op2_mult0000(1),
      I1 => teclado_inst_dado_reg(1),
      O => Madd_op2_addsub0000_lut(1)
    );
  Madd_op2_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_op2_addsub0000_cy(0),
      DI => op2_mult0000(1),
      S => Madd_op2_addsub0000_lut(1),
      O => Madd_op2_addsub0000_cy(1)
    );
  Madd_op2_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_op2_addsub0000_cy(0),
      LI => Madd_op2_addsub0000_lut(1),
      O => op2_addsub0000(1)
    );
  Madd_op2_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op2_mult0000(2),
      I1 => teclado_inst_dado_reg(2),
      O => Madd_op2_addsub0000_lut(2)
    );
  Madd_op2_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_op2_addsub0000_cy(1),
      DI => op2_mult0000(2),
      S => Madd_op2_addsub0000_lut(2),
      O => Madd_op2_addsub0000_cy(2)
    );
  Madd_op2_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_op2_addsub0000_cy(1),
      LI => Madd_op2_addsub0000_lut(2),
      O => op2_addsub0000(2)
    );
  Madd_op2_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op2_mult0000(3),
      I1 => teclado_inst_dado_reg(3),
      O => Madd_op2_addsub0000_lut(3)
    );
  Madd_op2_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_op2_addsub0000_cy(2),
      DI => op2_mult0000(3),
      S => Madd_op2_addsub0000_lut(3),
      O => Madd_op2_addsub0000_cy(3)
    );
  Madd_op2_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_op2_addsub0000_cy(2),
      LI => Madd_op2_addsub0000_lut(3),
      O => op2_addsub0000(3)
    );
  Madd_op2_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_op2_addsub0000_cy(3),
      DI => op2_mult0000(4),
      S => Madd_op2_addsub0000_lut(4),
      O => Madd_op2_addsub0000_cy(4)
    );
  Madd_op2_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_op2_addsub0000_cy(3),
      LI => Madd_op2_addsub0000_lut(4),
      O => op2_addsub0000(4)
    );
  Madd_op2_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_op2_addsub0000_cy(4),
      DI => op2_mult0000(5),
      S => Madd_op2_addsub0000_lut(5),
      O => Madd_op2_addsub0000_cy(5)
    );
  Madd_op2_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_op2_addsub0000_cy(4),
      LI => Madd_op2_addsub0000_lut(5),
      O => op2_addsub0000(5)
    );
  Madd_op2_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_op2_addsub0000_cy(5),
      LI => Madd_op2_addsub0000_lut(6),
      O => op2_addsub0000(6)
    );
  teclado_inst_bit_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_ps2_falling_edge_574,
      D => teclado_inst_Result(3),
      R => teclado_inst_bit_count_or0000,
      Q => teclado_inst_bit_count(3)
    );
  teclado_inst_bit_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_ps2_falling_edge_574,
      D => teclado_inst_Result(2),
      R => teclado_inst_bit_count_or0000,
      Q => teclado_inst_bit_count(2)
    );
  teclado_inst_bit_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_ps2_falling_edge_574,
      D => teclado_inst_Result(1),
      R => teclado_inst_bit_count_or0000,
      Q => teclado_inst_bit_count(1)
    );
  teclado_inst_bit_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_ps2_falling_edge_574,
      D => teclado_inst_Result(0),
      R => teclado_inst_bit_count_or0000,
      Q => teclado_inst_bit_count(0)
    );
  teclado_inst_previous_scan_code_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(7),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(7)
    );
  teclado_inst_previous_scan_code_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(6),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(6)
    );
  teclado_inst_previous_scan_code_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(5),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(5)
    );
  teclado_inst_previous_scan_code_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(4),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(4)
    );
  teclado_inst_previous_scan_code_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(3),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(3)
    );
  teclado_inst_previous_scan_code_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(2),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(2)
    );
  teclado_inst_previous_scan_code_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(1),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(1)
    );
  teclado_inst_previous_scan_code_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_scan_code(0),
      R => reset_IBUF_479,
      Q => teclado_inst_previous_scan_code(0)
    );
  teclado_inst_scan_code_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(8),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(7)
    );
  teclado_inst_scan_code_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(7),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(6)
    );
  teclado_inst_scan_code_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(6),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(5)
    );
  teclado_inst_scan_code_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(5),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(4)
    );
  teclado_inst_scan_code_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(4),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(3)
    );
  teclado_inst_scan_code_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(3),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(2)
    );
  teclado_inst_scan_code_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(2),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(1)
    );
  teclado_inst_scan_code_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_scan_code_not0001,
      D => teclado_inst_shift_reg(1),
      R => reset_IBUF_479,
      Q => teclado_inst_scan_code(0)
    );
  teclado_inst_ps2_clk_sync_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_228,
      D => teclado_inst_ps2_clk_sync(1),
      Q => teclado_inst_ps2_clk_sync(2)
    );
  teclado_inst_recebido : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_recebido_not0001,
      D => teclado_inst_recebido_mux0000,
      Q => teclado_inst_recebido_575
    );
  teclado_inst_dado_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_dado_reg_and0000,
      D => teclado_inst_dado_reg_mux0001(2),
      R => reset_IBUF_479,
      Q => teclado_inst_dado_reg(5)
    );
  teclado_inst_dado_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_dado_reg_and0000,
      D => teclado_inst_dado_reg_mux0001(3),
      R => reset_IBUF_479,
      Q => teclado_inst_dado_reg(4)
    );
  teclado_inst_dado_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_dado_reg_and0000,
      D => teclado_inst_dado_reg_mux0001(4),
      R => reset_IBUF_479,
      Q => teclado_inst_dado_reg(3)
    );
  teclado_inst_dado_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_dado_reg_and0000,
      D => teclado_inst_dado_reg_mux0001(5),
      R => reset_IBUF_479,
      Q => teclado_inst_dado_reg(2)
    );
  teclado_inst_dado_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_dado_reg_and0000,
      D => teclado_inst_dado_reg_mux0001(6),
      R => reset_IBUF_479,
      Q => teclado_inst_dado_reg(1)
    );
  teclado_inst_dado_reg_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_dado_reg_and0000,
      D => teclado_inst_dado_reg_mux0001(7),
      R => reset_IBUF_479,
      Q => teclado_inst_dado_reg(0)
    );
  teclado_inst_shift_reg_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_8_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(8)
    );
  teclado_inst_shift_reg_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_7_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(7)
    );
  teclado_inst_shift_reg_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_6_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(6)
    );
  teclado_inst_shift_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_5_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(5)
    );
  teclado_inst_pronto_reg : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_reset_inv,
      D => teclado_inst_dado_reg_and0000,
      Q => teclado_inst_pronto_reg_571
    );
  teclado_inst_shift_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_4_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(4)
    );
  teclado_inst_shift_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_3_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(3)
    );
  teclado_inst_shift_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_2_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(2)
    );
  teclado_inst_shift_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => teclado_inst_shift_reg_1_not0001,
      D => ps2_data_IBUF_477,
      R => reset_IBUF_479,
      Q => teclado_inst_shift_reg(1)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_9_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(8),
      LI => calculadora_inst_Madd_res_abs_not0000(9),
      O => calculadora_inst_res_abs_addsub0000(9)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_8_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(7),
      LI => calculadora_inst_Madd_res_abs_not0000(8),
      O => calculadora_inst_res_abs_addsub0000(8)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(7),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(8),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(8)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_7_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(6),
      LI => calculadora_inst_Madd_res_abs_not0000(7),
      O => calculadora_inst_res_abs_addsub0000(7)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(6),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(7),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(7)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_6_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(5),
      LI => calculadora_inst_Madd_res_abs_not0000(6),
      O => calculadora_inst_res_abs_addsub0000(6)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(5),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(6),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(6)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_5_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(4),
      LI => calculadora_inst_Madd_res_abs_not0000(5),
      O => calculadora_inst_res_abs_addsub0000(5)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(4),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(5),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(5)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_4_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(3),
      LI => calculadora_inst_Madd_res_abs_not0000(4),
      O => calculadora_inst_res_abs_addsub0000(4)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(3),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(4),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(4)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_3_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(2),
      LI => calculadora_inst_Madd_res_abs_not0000(3),
      O => calculadora_inst_res_abs_addsub0000(3)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(2),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(3),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(3)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_2_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(1),
      LI => calculadora_inst_Madd_res_abs_not0000(2),
      O => calculadora_inst_res_abs_addsub0000(2)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(1),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(2),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(2)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_1_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(0),
      LI => calculadora_inst_Madd_res_abs_not0000(1),
      O => calculadora_inst_res_abs_addsub0000(1)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_res_abs_addsub0000_cy(0),
      DI => N0,
      S => calculadora_inst_Madd_res_abs_not0000(1),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(1)
    );
  calculadora_inst_Madd_res_abs_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => calculadora_inst_Madd_res_abs_addsub0000_lut(0),
      O => calculadora_inst_res_abs_addsub0000(0)
    );
  calculadora_inst_Madd_res_abs_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => calculadora_inst_Madd_res_abs_addsub0000_lut(0),
      O => calculadora_inst_Madd_res_abs_addsub0000_cy(0)
    );
  calculadora_inst_Msub_tmp_sub0000_xor_6_Q : XORCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(5),
      LI => calculadora_inst_Msub_tmp_sub0000_lut(6),
      O => calculadora_inst_tmp_sub0000(6)
    );
  calculadora_inst_Msub_tmp_sub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1(6),
      I1 => op2(6),
      O => calculadora_inst_Msub_tmp_sub0000_lut(6)
    );
  calculadora_inst_Msub_tmp_sub0000_xor_5_Q : XORCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(4),
      LI => calculadora_inst_Msub_tmp_sub0000_lut(5),
      O => calculadora_inst_tmp_sub0000(5)
    );
  calculadora_inst_Msub_tmp_sub0000_cy_5_Q : MUXCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(4),
      DI => op1(5),
      S => calculadora_inst_Msub_tmp_sub0000_lut(5),
      O => calculadora_inst_Msub_tmp_sub0000_cy(5)
    );
  calculadora_inst_Msub_tmp_sub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1(5),
      I1 => op2(5),
      O => calculadora_inst_Msub_tmp_sub0000_lut(5)
    );
  calculadora_inst_Msub_tmp_sub0000_xor_4_Q : XORCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(3),
      LI => calculadora_inst_Msub_tmp_sub0000_lut(4),
      O => calculadora_inst_tmp_sub0000(4)
    );
  calculadora_inst_Msub_tmp_sub0000_cy_4_Q : MUXCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(3),
      DI => op1(4),
      S => calculadora_inst_Msub_tmp_sub0000_lut(4),
      O => calculadora_inst_Msub_tmp_sub0000_cy(4)
    );
  calculadora_inst_Msub_tmp_sub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1(4),
      I1 => op2(4),
      O => calculadora_inst_Msub_tmp_sub0000_lut(4)
    );
  calculadora_inst_Msub_tmp_sub0000_xor_3_Q : XORCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(2),
      LI => calculadora_inst_Msub_tmp_sub0000_lut(3),
      O => calculadora_inst_tmp_sub0000(3)
    );
  calculadora_inst_Msub_tmp_sub0000_cy_3_Q : MUXCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(2),
      DI => op1(3),
      S => calculadora_inst_Msub_tmp_sub0000_lut(3),
      O => calculadora_inst_Msub_tmp_sub0000_cy(3)
    );
  calculadora_inst_Msub_tmp_sub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1(3),
      I1 => op2(3),
      O => calculadora_inst_Msub_tmp_sub0000_lut(3)
    );
  calculadora_inst_Msub_tmp_sub0000_xor_2_Q : XORCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(1),
      LI => calculadora_inst_Msub_tmp_sub0000_lut(2),
      O => calculadora_inst_tmp_sub0000(2)
    );
  calculadora_inst_Msub_tmp_sub0000_cy_2_Q : MUXCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(1),
      DI => op1(2),
      S => calculadora_inst_Msub_tmp_sub0000_lut(2),
      O => calculadora_inst_Msub_tmp_sub0000_cy(2)
    );
  calculadora_inst_Msub_tmp_sub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1(2),
      I1 => op2(2),
      O => calculadora_inst_Msub_tmp_sub0000_lut(2)
    );
  calculadora_inst_Msub_tmp_sub0000_xor_1_Q : XORCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(0),
      LI => calculadora_inst_Msub_tmp_sub0000_lut(1),
      O => calculadora_inst_tmp_sub0000(1)
    );
  calculadora_inst_Msub_tmp_sub0000_cy_1_Q : MUXCY
    port map (
      CI => calculadora_inst_Msub_tmp_sub0000_cy(0),
      DI => op1(1),
      S => calculadora_inst_Msub_tmp_sub0000_lut(1),
      O => calculadora_inst_Msub_tmp_sub0000_cy(1)
    );
  calculadora_inst_Msub_tmp_sub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1(1),
      I1 => op2(1),
      O => calculadora_inst_Msub_tmp_sub0000_lut(1)
    );
  calculadora_inst_Msub_tmp_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => calculadora_inst_Msub_tmp_sub0000_lut(0),
      O => calculadora_inst_tmp_sub0000(0)
    );
  calculadora_inst_Msub_tmp_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => op1(0),
      S => calculadora_inst_Msub_tmp_sub0000_lut(0),
      O => calculadora_inst_Msub_tmp_sub0000_cy(0)
    );
  calculadora_inst_Msub_tmp_sub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1(0),
      I1 => op2(0),
      O => calculadora_inst_Msub_tmp_sub0000_lut(0)
    );
  calculadora_inst_Madd_tmp_addsub0000_xor_6_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(5),
      LI => calculadora_inst_Madd_tmp_addsub0000_lut(6),
      O => calculadora_inst_tmp_addsub0000(6)
    );
  calculadora_inst_Madd_tmp_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(5),
      DI => op1(6),
      S => calculadora_inst_Madd_tmp_addsub0000_lut(6),
      O => calculadora_inst_Madd_tmp_index0000
    );
  calculadora_inst_Madd_tmp_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1(6),
      I1 => op2(6),
      O => calculadora_inst_Madd_tmp_addsub0000_lut(6)
    );
  calculadora_inst_Madd_tmp_addsub0000_xor_5_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(4),
      LI => calculadora_inst_Madd_tmp_addsub0000_lut(5),
      O => calculadora_inst_tmp_addsub0000(5)
    );
  calculadora_inst_Madd_tmp_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(4),
      DI => op1(5),
      S => calculadora_inst_Madd_tmp_addsub0000_lut(5),
      O => calculadora_inst_Madd_tmp_addsub0000_cy(5)
    );
  calculadora_inst_Madd_tmp_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1(5),
      I1 => op2(5),
      O => calculadora_inst_Madd_tmp_addsub0000_lut(5)
    );
  calculadora_inst_Madd_tmp_addsub0000_xor_4_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(3),
      LI => calculadora_inst_Madd_tmp_addsub0000_lut(4),
      O => calculadora_inst_tmp_addsub0000(4)
    );
  calculadora_inst_Madd_tmp_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(3),
      DI => op1(4),
      S => calculadora_inst_Madd_tmp_addsub0000_lut(4),
      O => calculadora_inst_Madd_tmp_addsub0000_cy(4)
    );
  calculadora_inst_Madd_tmp_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1(4),
      I1 => op2(4),
      O => calculadora_inst_Madd_tmp_addsub0000_lut(4)
    );
  calculadora_inst_Madd_tmp_addsub0000_xor_3_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(2),
      LI => calculadora_inst_Madd_tmp_addsub0000_lut(3),
      O => calculadora_inst_tmp_addsub0000(3)
    );
  calculadora_inst_Madd_tmp_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(2),
      DI => op1(3),
      S => calculadora_inst_Madd_tmp_addsub0000_lut(3),
      O => calculadora_inst_Madd_tmp_addsub0000_cy(3)
    );
  calculadora_inst_Madd_tmp_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1(3),
      I1 => op2(3),
      O => calculadora_inst_Madd_tmp_addsub0000_lut(3)
    );
  calculadora_inst_Madd_tmp_addsub0000_xor_2_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(1),
      LI => calculadora_inst_Madd_tmp_addsub0000_lut(2),
      O => calculadora_inst_tmp_addsub0000(2)
    );
  calculadora_inst_Madd_tmp_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(1),
      DI => op1(2),
      S => calculadora_inst_Madd_tmp_addsub0000_lut(2),
      O => calculadora_inst_Madd_tmp_addsub0000_cy(2)
    );
  calculadora_inst_Madd_tmp_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1(2),
      I1 => op2(2),
      O => calculadora_inst_Madd_tmp_addsub0000_lut(2)
    );
  calculadora_inst_Madd_tmp_addsub0000_xor_1_Q : XORCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(0),
      LI => calculadora_inst_Madd_tmp_addsub0000_lut(1),
      O => calculadora_inst_tmp_addsub0000(1)
    );
  calculadora_inst_Madd_tmp_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => calculadora_inst_Madd_tmp_addsub0000_cy(0),
      DI => op1(1),
      S => calculadora_inst_Madd_tmp_addsub0000_lut(1),
      O => calculadora_inst_Madd_tmp_addsub0000_cy(1)
    );
  calculadora_inst_Madd_tmp_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1(1),
      I1 => op2(1),
      O => calculadora_inst_Madd_tmp_addsub0000_lut(1)
    );
  calculadora_inst_Madd_tmp_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => calculadora_inst_Madd_tmp_addsub0000_lut(0),
      O => calculadora_inst_tmp_addsub0000(0)
    );
  calculadora_inst_Madd_tmp_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => op1(0),
      S => calculadora_inst_Madd_tmp_addsub0000_lut(0),
      O => calculadora_inst_Madd_tmp_addsub0000_cy(0)
    );
  calculadora_inst_Madd_tmp_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => op1(0),
      I1 => op2(0),
      O => calculadora_inst_Madd_tmp_addsub0000_lut(0)
    );
  calculadora_inst_Mmult_tmp_mult0002 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => calculadora_inst_tmp_sub0000(6),
      A(16) => calculadora_inst_tmp_sub0000(6),
      A(15) => calculadora_inst_tmp_sub0000(6),
      A(14) => calculadora_inst_tmp_sub0000(6),
      A(13) => calculadora_inst_tmp_sub0000(6),
      A(12) => calculadora_inst_tmp_sub0000(6),
      A(11) => calculadora_inst_tmp_sub0000(6),
      A(10) => calculadora_inst_tmp_sub0000(6),
      A(9) => calculadora_inst_tmp_sub0000(6),
      A(8) => calculadora_inst_tmp_sub0000(6),
      A(7) => calculadora_inst_tmp_sub0000(6),
      A(6) => calculadora_inst_tmp_sub0000(6),
      A(5) => calculadora_inst_tmp_sub0000(5),
      A(4) => calculadora_inst_tmp_sub0000(4),
      A(3) => calculadora_inst_tmp_sub0000(3),
      A(2) => calculadora_inst_tmp_sub0000(2),
      A(1) => calculadora_inst_tmp_sub0000(1),
      A(0) => calculadora_inst_tmp_sub0000(0),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N0,
      B(4) => N0,
      B(3) => N1,
      B(2) => N0,
      B(1) => N1,
      B(0) => N0,
      BCIN(17) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCIN_0_UNCONNECTED,
      P(35) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_35_UNCONNECTED,
      P(34) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_34_UNCONNECTED,
      P(33) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_33_UNCONNECTED,
      P(32) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_32_UNCONNECTED,
      P(31) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_31_UNCONNECTED,
      P(30) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_30_UNCONNECTED,
      P(29) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_29_UNCONNECTED,
      P(28) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_28_UNCONNECTED,
      P(27) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_27_UNCONNECTED,
      P(26) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_26_UNCONNECTED,
      P(25) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_25_UNCONNECTED,
      P(24) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_24_UNCONNECTED,
      P(23) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_23_UNCONNECTED,
      P(22) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_22_UNCONNECTED,
      P(21) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_21_UNCONNECTED,
      P(20) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_20_UNCONNECTED,
      P(19) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_19_UNCONNECTED,
      P(18) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_18_UNCONNECTED,
      P(17) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_17_UNCONNECTED,
      P(16) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_16_UNCONNECTED,
      P(15) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_15_UNCONNECTED,
      P(14) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_14_UNCONNECTED,
      P(13) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_13_UNCONNECTED,
      P(12) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_12_UNCONNECTED,
      P(11) => calculadora_inst_tmp1,
      P(10) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_10_UNCONNECTED,
      P(9) => NLW_calculadora_inst_Mmult_tmp_mult0002_P_9_UNCONNECTED,
      P(8) => calculadora_inst_tmp_mult0002(8),
      P(7) => calculadora_inst_tmp_mult0002(7),
      P(6) => calculadora_inst_tmp_mult0002(6),
      P(5) => calculadora_inst_tmp_mult0002(5),
      P(4) => calculadora_inst_tmp_mult0002(4),
      P(3) => calculadora_inst_tmp_mult0002(3),
      P(2) => calculadora_inst_tmp_mult0002(2),
      P(1) => calculadora_inst_tmp_mult0002(1),
      P(0) => calculadora_inst_tmp_mult0002(0),
      BCOUT(17) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_calculadora_inst_Mmult_tmp_mult0002_BCOUT_0_UNCONNECTED
    );
  calculadora_inst_Mmult_tmp_mult0000 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => calculadora_inst_Madd_tmp_index0000,
      A(6) => calculadora_inst_tmp_addsub0000(6),
      A(5) => calculadora_inst_tmp_addsub0000(5),
      A(4) => calculadora_inst_tmp_addsub0000(4),
      A(3) => calculadora_inst_tmp_addsub0000(3),
      A(2) => calculadora_inst_tmp_addsub0000(2),
      A(1) => calculadora_inst_tmp_addsub0000(1),
      A(0) => calculadora_inst_tmp_addsub0000(0),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N0,
      B(4) => N0,
      B(3) => N1,
      B(2) => N0,
      B(1) => N1,
      B(0) => N0,
      BCIN(17) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCIN_0_UNCONNECTED,
      P(35) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_35_UNCONNECTED,
      P(34) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_34_UNCONNECTED,
      P(33) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_33_UNCONNECTED,
      P(32) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_32_UNCONNECTED,
      P(31) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_31_UNCONNECTED,
      P(30) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_30_UNCONNECTED,
      P(29) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_29_UNCONNECTED,
      P(28) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_28_UNCONNECTED,
      P(27) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_27_UNCONNECTED,
      P(26) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_26_UNCONNECTED,
      P(25) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_25_UNCONNECTED,
      P(24) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_24_UNCONNECTED,
      P(23) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_23_UNCONNECTED,
      P(22) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_22_UNCONNECTED,
      P(21) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_21_UNCONNECTED,
      P(20) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_20_UNCONNECTED,
      P(19) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_19_UNCONNECTED,
      P(18) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_18_UNCONNECTED,
      P(17) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_17_UNCONNECTED,
      P(16) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_16_UNCONNECTED,
      P(15) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_15_UNCONNECTED,
      P(14) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_14_UNCONNECTED,
      P(13) => calculadora_inst_tmp,
      P(12) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_12_UNCONNECTED,
      P(11) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_11_UNCONNECTED,
      P(10) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_10_UNCONNECTED,
      P(9) => NLW_calculadora_inst_Mmult_tmp_mult0000_P_9_UNCONNECTED,
      P(8) => calculadora_inst_tmp_mult0000(8),
      P(7) => calculadora_inst_tmp_mult0000(7),
      P(6) => calculadora_inst_tmp_mult0000(6),
      P(5) => calculadora_inst_tmp_mult0000(5),
      P(4) => calculadora_inst_tmp_mult0000(4),
      P(3) => calculadora_inst_tmp_mult0000(3),
      P(2) => calculadora_inst_tmp_mult0000(2),
      P(1) => calculadora_inst_tmp_mult0000(1),
      P(0) => calculadora_inst_tmp_mult0000(0),
      BCOUT(17) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_calculadora_inst_Mmult_tmp_mult0000_BCOUT_0_UNCONNECTED
    );
  calculadora_inst_neg_r : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_tmp_mux0000(9),
      R => reset_IBUF_479,
      Q => calculadora_inst_neg_r_160
    );
  calculadora_inst_erro_r : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_erro_r_mux0001_159,
      R => reset_IBUF_479,
      Q => calculadora_inst_erro_r_158
    );
  calculadora_inst_pronto_r : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => N1,
      R => reset_IBUF_479,
      Q => calculadora_inst_pronto_r_161
    );
  calculadora_inst_res_abs_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(9),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(9)
    );
  calculadora_inst_res_abs_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(8),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(8)
    );
  calculadora_inst_res_abs_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(7),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(7)
    );
  calculadora_inst_res_abs_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(6),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(6)
    );
  calculadora_inst_res_abs_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(5),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(5)
    );
  calculadora_inst_res_abs_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(4),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(4)
    );
  calculadora_inst_res_abs_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(3),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(3)
    );
  calculadora_inst_res_abs_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(2),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(2)
    );
  calculadora_inst_res_abs_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(1),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(1)
    );
  calculadora_inst_res_abs_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => iniciar_calc_232,
      D => calculadora_inst_res_abs_mux0001(0),
      R => reset_IBUF_479,
      Q => calculadora_inst_res_abs(0)
    );
  lcd_ctrl_inst_estado_FSM_FFd4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_estado_FSM_FFd5_368,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_estado_FSM_FFd4_367
    );
  lcd_ctrl_inst_estado_FSM_FFd5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_estado_FSM_FFd6_369,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_estado_FSM_FFd5_368
    );
  lcd_ctrl_inst_estado_FSM_FFd6 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => N0,
      S => reset_IBUF_479,
      Q => lcd_ctrl_inst_estado_FSM_FFd6_369
    );
  lcd_ctrl_inst_estado_FSM_FFd2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_estado_FSM_FFd2_In,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_estado_FSM_FFd2_363
    );
  lcd_ctrl_inst_estado_FSM_FFd1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_estado_FSM_FFd1_In,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_estado_FSM_FFd1_361
    );
  lcd_ctrl_inst_estado_FSM_FFd3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_estado_FSM_FFd3_In,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_estado_FSM_FFd3_365
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(2),
      DI => N0,
      S => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(3),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3)
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => lcd_ctrl_inst_contador(12),
      I1 => lcd_ctrl_inst_contador(13),
      I2 => lcd_ctrl_inst_contador(14),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(3)
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(1),
      DI => N0,
      S => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(2),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(2)
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcd_ctrl_inst_contador(8),
      I1 => lcd_ctrl_inst_contador(9),
      I2 => lcd_ctrl_inst_contador(10),
      I3 => lcd_ctrl_inst_contador(11),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(2)
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(0),
      DI => N0,
      S => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(1),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(1)
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcd_ctrl_inst_contador(4),
      I1 => lcd_ctrl_inst_contador(5),
      I2 => lcd_ctrl_inst_contador(6),
      I3 => lcd_ctrl_inst_contador(7),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(1)
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(0),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(0)
    );
  lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcd_ctrl_inst_contador(0),
      I1 => lcd_ctrl_inst_contador(1),
      I2 => lcd_ctrl_inst_contador(2),
      I3 => lcd_ctrl_inst_contador(3),
      O => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_lut(0)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_14_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(13),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(14),
      O => lcd_ctrl_inst_contador_addsub0000(14)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_13_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(12),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(13),
      O => lcd_ctrl_inst_contador_addsub0000(13)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(12),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(13),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(13)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_12_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(11),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(12),
      O => lcd_ctrl_inst_contador_addsub0000(12)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(11),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(12),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(12)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_11_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(10),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(11),
      O => lcd_ctrl_inst_contador_addsub0000(11)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(10),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(11),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(11)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_10_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(9),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(10),
      O => lcd_ctrl_inst_contador_addsub0000(10)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(9),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(10),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(10)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_9_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(8),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(9),
      O => lcd_ctrl_inst_contador_addsub0000(9)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(8),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(9),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(9)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_8_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(7),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(8),
      O => lcd_ctrl_inst_contador_addsub0000(8)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(7),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(8),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(8)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_7_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(6),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(7),
      O => lcd_ctrl_inst_contador_addsub0000(7)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(6),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(7),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(7)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_6_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(5),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(6),
      O => lcd_ctrl_inst_contador_addsub0000(6)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(5),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(6),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(6)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_5_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(4),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(5),
      O => lcd_ctrl_inst_contador_addsub0000(5)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(4),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(5),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(5)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_4_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(3),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(4),
      O => lcd_ctrl_inst_contador_addsub0000(4)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(3),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(4),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(4)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_3_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(2),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(3),
      O => lcd_ctrl_inst_contador_addsub0000(3)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(2),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(3),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(3)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_2_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(1),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(2),
      O => lcd_ctrl_inst_contador_addsub0000(2)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(1),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(2),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(2)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_1_Q : XORCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(0),
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_lut(1),
      O => lcd_ctrl_inst_contador_addsub0000(1)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => lcd_ctrl_inst_Msub_contador_addsub0000_cy(0),
      DI => N1,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_lut(1),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(1)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => lcd_ctrl_inst_Msub_contador_addsub0000_cy_0_rt_249,
      O => lcd_ctrl_inst_contador_addsub0000(0)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => lcd_ctrl_inst_Msub_contador_addsub0000_cy_0_rt_249,
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy(0)
    );
  lcd_ctrl_inst_contador_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_13_Q_316,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(13)
    );
  lcd_ctrl_inst_contador_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_9_Q,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(9)
    );
  lcd_ctrl_inst_contador_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_8_Q_325,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(8)
    );
  lcd_ctrl_inst_contador_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_6_Q,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(6)
    );
  lcd_ctrl_inst_contador_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_4_Q_321,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(4)
    );
  lcd_ctrl_inst_contador_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_2_Q,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(2)
    );
  lcd_ctrl_inst_contador_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_1_Q,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(1)
    );
  lcd_ctrl_inst_contador_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_0_Q,
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_contador(0)
    );
  lcd_ctrl_inst_rs_reg : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_rs_reg_not0001,
      D => lcd_ctrl_inst_rs_reg_mux0000,
      Q => lcd_ctrl_inst_rs_reg_370
    );
  lcd_ctrl_inst_data_reg_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(0),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(7)
    );
  lcd_ctrl_inst_data_reg_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(1),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(6)
    );
  lcd_ctrl_inst_data_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(2),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(5)
    );
  lcd_ctrl_inst_data_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(3),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(4)
    );
  lcd_ctrl_inst_data_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(4),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(3)
    );
  lcd_ctrl_inst_data_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(5),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(2)
    );
  lcd_ctrl_inst_data_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(6),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(1)
    );
  lcd_ctrl_inst_data_reg_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_data_reg_mux0000(7),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_data_reg(0)
    );
  lcd_ctrl_inst_write_index_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_write_index_mux0000(2),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_write_index(2)
    );
  lcd_ctrl_inst_write_index_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_write_index_mux0000(1),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_write_index(1)
    );
  lcd_ctrl_inst_write_index_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      D => lcd_ctrl_inst_write_index_mux0000(0),
      R => reset_IBUF_479,
      Q => lcd_ctrl_inst_write_index(0)
    );
  lcd_ctrl_inst_estado_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => escrever_lcd_230,
      I1 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      O => lcd_ctrl_inst_estado_FSM_FFd2_In
    );
  lcd_ctrl_inst_estado_FSM_FFd1_In1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      O => lcd_ctrl_inst_estado_FSM_FFd1_In
    );
  a5_mux0001_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => calculadora_inst_erro_r_158,
      I1 => calculadora_inst_res_abs(0),
      O => a5_mux0001(7)
    );
  a1_mux0001_5_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => calculadora_inst_erro_r_158,
      I1 => calculadora_inst_neg_r_160,
      O => a1_mux0001_5_Q
    );
  a1_mux0001_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => calculadora_inst_erro_r_158,
      I1 => calculadora_inst_neg_r_160,
      O => a1_mux0001_4_Q
    );
  teclado_inst_Mcount_bit_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => teclado_inst_bit_count(1),
      I1 => teclado_inst_bit_count(0),
      O => teclado_inst_Result(1)
    );
  lcd_ctrl_inst_rs_reg_mux00001 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_rs_reg_370,
      I2 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_rs_reg_mux0000
    );
  lcd_ctrl_inst_estado_FSM_FFd3_In1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => escrever_lcd_230,
      I2 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      O => lcd_ctrl_inst_estado_FSM_FFd3_In
    );
  lcd_ctrl_inst_data_reg_mux0000_0_1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => lcd_ctrl_inst_data_reg(7),
      I1 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I2 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      O => lcd_ctrl_inst_data_reg_mux0000(0)
    );
  teclado_inst_Mcount_bit_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => teclado_inst_bit_count(2),
      I1 => teclado_inst_bit_count(1),
      I2 => teclado_inst_bit_count(0),
      O => teclado_inst_Result(2)
    );
  escrever_lcd_mux00001 : LUT4
    generic map(
      INIT => X"4E4C"
    )
    port map (
      I0 => state_FSM_FFd1_481,
      I1 => escrever_lcd_230,
      I2 => state_FSM_FFd3_486,
      I3 => calculadora_inst_pronto_r_161,
      O => escrever_lcd_mux0000
    );
  teclado_inst_Mcount_bit_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => teclado_inst_bit_count(3),
      I1 => teclado_inst_bit_count(1),
      I2 => teclado_inst_bit_count(0),
      I3 => teclado_inst_bit_count(2),
      O => teclado_inst_Result(3)
    );
  teclado_inst_dado_reg_mux0001_2_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => teclado_inst_scan_code(2),
      I1 => teclado_inst_scan_code(7),
      I2 => teclado_inst_scan_code(0),
      I3 => teclado_inst_scan_code(1),
      O => N01
    );
  teclado_inst_dado_reg_mux0001_2_Q : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => teclado_inst_scan_code(6),
      I1 => N01,
      I2 => teclado_inst_scan_code(3),
      I3 => teclado_inst_scan_code(5),
      O => teclado_inst_dado_reg_mux0001(2)
    );
  teclado_inst_shift_reg_8_not00012 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => teclado_inst_N21,
      I1 => teclado_inst_ps2_falling_edge_574,
      I2 => teclado_inst_bit_count(1),
      O => teclado_inst_shift_reg_8_not0001
    );
  teclado_inst_shift_reg_7_not00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => teclado_inst_N0,
      I1 => teclado_inst_bit_count(2),
      I2 => teclado_inst_bit_count(1),
      O => teclado_inst_shift_reg_7_not0001
    );
  teclado_inst_shift_reg_6_not00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => teclado_inst_N19,
      I1 => teclado_inst_bit_count(2),
      I2 => teclado_inst_bit_count(1),
      O => teclado_inst_shift_reg_6_not0001
    );
  teclado_inst_shift_reg_5_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => teclado_inst_N0,
      I1 => teclado_inst_bit_count(2),
      I2 => teclado_inst_bit_count(1),
      O => teclado_inst_shift_reg_5_not0001
    );
  teclado_inst_shift_reg_4_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => teclado_inst_N19,
      I1 => teclado_inst_bit_count(2),
      I2 => teclado_inst_bit_count(1),
      O => teclado_inst_shift_reg_4_not0001
    );
  teclado_inst_shift_reg_3_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => teclado_inst_bit_count(1),
      I1 => teclado_inst_N0,
      I2 => teclado_inst_bit_count(2),
      O => teclado_inst_shift_reg_3_not0001
    );
  teclado_inst_shift_reg_2_not000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => teclado_inst_ps2_falling_edge_574,
      I1 => teclado_inst_bit_count(3),
      I2 => teclado_inst_bit_count(0),
      O => teclado_inst_N19
    );
  teclado_inst_shift_reg_2_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => teclado_inst_bit_count(1),
      I1 => teclado_inst_N19,
      I2 => teclado_inst_bit_count(2),
      O => teclado_inst_shift_reg_2_not0001
    );
  teclado_inst_shift_reg_1_not000111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => teclado_inst_ps2_falling_edge_574,
      I1 => teclado_inst_bit_count(0),
      I2 => teclado_inst_bit_count(3),
      O => teclado_inst_N0
    );
  teclado_inst_shift_reg_1_not00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => teclado_inst_N0,
      I1 => teclado_inst_bit_count(2),
      I2 => teclado_inst_bit_count(1),
      O => teclado_inst_shift_reg_1_not0001
    );
  state_FSM_FFd3_In41 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => state_FSM_FFd1_481,
      I1 => state_FSM_FFd3_486,
      I2 => teclado_inst_pronto_reg_571,
      O => N91
    );
  a1_not00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N91,
      I1 => state_FSM_FFd2_483,
      I2 => calculadora_inst_pronto_r_161,
      O => a1_not0001
    );
  calculadora_inst_res_abs_mux0001_9_11 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => operador_ascii(5),
      I1 => operador_ascii(4),
      I2 => operador_ascii(0),
      I3 => operador_ascii(3),
      O => calculadora_inst_N10
    );
  state_FSM_FFd2_In_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => teclado_inst_pronto_reg_571,
      I1 => state_FSM_FFd3_486,
      O => N4
    );
  teclado_inst_dado_reg_mux0001_3_33 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => teclado_inst_scan_code(3),
      I1 => teclado_inst_scan_code(2),
      I2 => teclado_inst_scan_code(5),
      I3 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_3_33_521
    );
  teclado_inst_dado_reg_mux0001_3_84 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_3_16,
      I1 => teclado_inst_dado_reg_mux0001_3_33_521,
      I2 => teclado_inst_dado_reg_mux0001_3_73_522,
      O => teclado_inst_dado_reg_mux0001(3)
    );
  operador_ascii_not00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => N101,
      I1 => state_FSM_FFd2_483,
      I2 => state_FSM_FFd1_481,
      O => operador_ascii_not0001
    );
  iniciar_calc_not00013 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => N91,
      I1 => state_FSM_FFd2_483,
      I2 => N111,
      I3 => state_FSM_FFd1_481,
      O => iniciar_calc_not0001
    );
  iniciar_calc_not000111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => teclado_inst_dado_reg(5),
      I1 => teclado_inst_pronto_reg_571,
      I2 => teclado_inst_dado_reg(3),
      O => N7
    );
  lcd_ctrl_inst_write_index_mux0000_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I2 => lcd_ctrl_inst_N7,
      O => lcd_ctrl_inst_write_index_mux0000(0)
    );
  lcd_ctrl_inst_write_index_mux0000_1_1 : LUT4
    generic map(
      INIT => X"DA88"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(1),
      I1 => lcd_ctrl_inst_N7,
      I2 => lcd_ctrl_inst_write_index(0),
      I3 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_write_index_mux0000(1)
    );
  iniciar_calc_not00012_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => teclado_inst_dado_reg(2),
      I1 => state_FSM_FFd2_483,
      I2 => N7,
      I3 => state_FSM_FFd3_486,
      O => N12
    );
  iniciar_calc_not00012 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => teclado_inst_dado_reg(1),
      I1 => teclado_inst_dado_reg(0),
      I2 => teclado_inst_dado_reg(4),
      I3 => N12,
      O => N111
    );
  teclado_inst_dado_reg_mux0001_4_48 : LUT4
    generic map(
      INIT => X"7DFD"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(3),
      I2 => teclado_inst_scan_code(4),
      I3 => teclado_inst_scan_code(5),
      O => teclado_inst_dado_reg_mux0001_4_48_526
    );
  teclado_inst_dado_reg_mux0001_4_93 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_4_48_526,
      I1 => teclado_inst_scan_code(1),
      I2 => teclado_inst_dado_reg_mux0001_4_82,
      I3 => teclado_inst_dado_reg_mux0001_4_17,
      O => teclado_inst_dado_reg_mux0001(4)
    );
  teclado_inst_dado_reg_mux0001_7_121 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_7_92,
      I1 => teclado_inst_scan_code(1),
      I2 => teclado_inst_dado_reg_mux0001_7_43,
      I3 => teclado_inst_dado_reg_mux0001_7_17,
      O => teclado_inst_dado_reg_mux0001(7)
    );
  teclado_inst_dado_reg_mux0001_5_2 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(1),
      I2 => teclado_inst_scan_code(7),
      O => teclado_inst_dado_reg_mux0001_5_2_531
    );
  teclado_inst_dado_reg_mux0001_5_17 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => teclado_inst_scan_code(6),
      I1 => teclado_inst_scan_code(1),
      I2 => teclado_inst_scan_code(5),
      I3 => teclado_inst_scan_code(4),
      O => teclado_inst_dado_reg_mux0001_5_17_530
    );
  lcd_ctrl_inst_data_reg_mux0000_7_15 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => lcd_ctrl_inst_write_index(2),
      I2 => lcd_ctrl_inst_Mmux_varindex0000_5_f5,
      I3 => a5(0),
      O => lcd_ctrl_inst_data_reg_mux0000_7_15_357
    );
  lcd_ctrl_inst_data_reg_mux0000_5_15 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => lcd_ctrl_inst_write_index(2),
      I2 => lcd_ctrl_inst_Mmux_varindex0000_5_f52,
      I3 => a5(2),
      O => lcd_ctrl_inst_data_reg_mux0000_5_15_352
    );
  lcd_ctrl_inst_data_reg_mux0000_4_15 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => lcd_ctrl_inst_write_index(2),
      I2 => lcd_ctrl_inst_Mmux_varindex0000_5_f53,
      I3 => a5(3),
      O => lcd_ctrl_inst_data_reg_mux0000_4_15_350
    );
  lcd_ctrl_inst_data_reg_mux0000_2_15 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => lcd_ctrl_inst_write_index(2),
      I2 => a2_5_Q,
      I3 => a2_4_Q,
      O => lcd_ctrl_inst_data_reg_mux0000_2_15_344
    );
  lcd_ctrl_inst_data_reg_mux0000_4_32 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd6_369,
      I1 => lcd_ctrl_inst_estado_FSM_FFd5_368,
      O => lcd_ctrl_inst_N10
    );
  lcd_ctrl_inst_contador_mux0000_9_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      I2 => lcd_ctrl_inst_N10,
      I3 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      O => lcd_ctrl_inst_N111
    );
  teclado_inst_dado_reg_mux0001_6_5 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => teclado_inst_scan_code(6),
      I1 => teclado_inst_scan_code(3),
      I2 => teclado_inst_scan_code(2),
      I3 => teclado_inst_scan_code(7),
      O => teclado_inst_dado_reg_mux0001_6_5_550
    );
  teclado_inst_dado_reg_mux0001_6_50 : LUT4
    generic map(
      INIT => X"3F1F"
    )
    port map (
      I0 => teclado_inst_scan_code(4),
      I1 => teclado_inst_scan_code(5),
      I2 => teclado_inst_scan_code(2),
      I3 => teclado_inst_scan_code(3),
      O => teclado_inst_dado_reg_mux0001_6_50_551
    );
  teclado_inst_dado_reg_mux0001_6_60 : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => teclado_inst_scan_code(1),
      I1 => teclado_inst_scan_code(5),
      I2 => teclado_inst_scan_code(3),
      I3 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_6_60_552
    );
  teclado_inst_dado_reg_mux0001_6_118 : LUT3
    generic map(
      INIT => X"7D"
    )
    port map (
      I0 => teclado_inst_scan_code(4),
      I1 => teclado_inst_scan_code(5),
      I2 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_6_118_542
    );
  teclado_inst_dado_reg_mux0001_6_153 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_6_118_542,
      I1 => teclado_inst_scan_code(2),
      I2 => teclado_inst_dado_reg_mux0001_6_138,
      I3 => teclado_inst_scan_code(3),
      O => teclado_inst_dado_reg_mux0001_6_153_549
    );
  state_FSM_FFd3_In8 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => teclado_inst_dado_reg(3),
      I1 => teclado_inst_dado_reg(2),
      I2 => teclado_inst_dado_reg(1),
      O => state_FSM_FFd3_In8_492
    );
  state_FSM_FFd3_In62 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => teclado_inst_dado_reg(5),
      I1 => teclado_inst_dado_reg(4),
      I2 => teclado_inst_pronto_reg_571,
      O => state_FSM_FFd3_In62_491
    );
  teclado_inst_recebido_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => teclado_inst_recebido_575,
      I1 => teclado_inst_recebido_mux0000,
      O => teclado_inst_recebido_not0001
    );
  teclado_inst_shift_reg_8_not000111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => teclado_inst_bit_count(3),
      I1 => teclado_inst_bit_count(0),
      I2 => teclado_inst_bit_count(2),
      O => teclado_inst_N21
    );
  teclado_inst_bit_count_or000011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => teclado_inst_N21,
      I1 => teclado_inst_bit_count(1),
      I2 => teclado_inst_ps2_falling_edge_574,
      O => teclado_inst_scan_code_not0001
    );
  Q_sub0000_6_1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => teclado_inst_dado_reg(4),
      I1 => teclado_inst_dado_reg(5),
      O => Q_sub0000(6)
    );
  a5_mux0001_4_1 : LUT4
    generic map(
      INIT => X"4114"
    )
    port map (
      I0 => calculadora_inst_erro_r_158,
      I1 => calculadora_inst_res_abs(3),
      I2 => ascii_conv_inst_i_cmp_gt0000,
      I3 => N02,
      O => a5_mux0001(4)
    );
  ascii_conv_inst_i_cmp_gt0000212 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => calculadora_inst_res_abs(4),
      I1 => calculadora_inst_res_abs(5),
      O => ascii_conv_inst_i_cmp_gt0000212_105
    );
  ascii_conv_inst_i_cmp_gt0000217 : LUT4
    generic map(
      INIT => X"444C"
    )
    port map (
      I0 => calculadora_inst_res_abs(3),
      I1 => ascii_conv_inst_i_cmp_gt0000212_105,
      I2 => calculadora_inst_res_abs(2),
      I3 => calculadora_inst_res_abs(1),
      O => ascii_conv_inst_i_cmp_gt0000217_106
    );
  ascii_conv_inst_i_cmp_gt0000232 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => calculadora_inst_res_abs(6),
      I1 => calculadora_inst_res_abs(7),
      I2 => calculadora_inst_res_abs(8),
      I3 => calculadora_inst_res_abs(9),
      O => ascii_conv_inst_i_cmp_gt0000232_107
    );
  ascii_conv_inst_i_cmp_gt0000233 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ascii_conv_inst_i_cmp_gt0000217_106,
      I1 => ascii_conv_inst_i_cmp_gt0000232_107,
      O => ascii_conv_inst_i_cmp_gt0000
    );
  Q_sub0000_5_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => teclado_inst_dado_reg(5),
      I1 => teclado_inst_dado_reg(4),
      O => Q_sub0000(5)
    );
  calculadora_inst_erro_r_mux0001_SW0 : LUT3
    generic map(
      INIT => X"D7"
    )
    port map (
      I0 => operador_ascii(0),
      I1 => operador_ascii(1),
      I2 => operador_ascii(2),
      O => N37
    );
  calculadora_inst_erro_r_mux0001 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => operador_ascii(5),
      I1 => N37,
      I2 => operador_ascii(4),
      I3 => operador_ascii(3),
      O => calculadora_inst_erro_r_mux0001_159
    );
  op2_mux0000_0_12 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => op2(0),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000_0_12_452
    );
  op2_mux0000_1_12 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => op2(1),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000_1_12_454
    );
  op2_mux0000_2_12 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => op2(2),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000_2_12_456
    );
  op2_mux0000_3_12 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => op2(3),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000_3_12_458
    );
  op2_mux0000_5_12 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => op2(5),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000_5_12_462
    );
  op2_mux0000_6_12 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => op2(6),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000_6_12_464
    );
  calculadora_inst_tmp_mux0000_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => N119,
      O => calculadora_inst_tmp_mux0000(9)
    );
  calculadora_inst_res_abs_mux0001_0_221 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => operador_ascii(2),
      I2 => calculadora_inst_tmp,
      O => calculadora_inst_N12
    );
  calculadora_inst_res_abs_mux0001_2_Q : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_res_abs_addsub0000(2),
      I2 => calculadora_inst_N01,
      I3 => N39,
      O => calculadora_inst_res_abs_mux0001(2)
    );
  calculadora_inst_res_abs_mux0001_1_Q : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_res_abs_addsub0000(1),
      I2 => calculadora_inst_N01,
      I3 => N41,
      O => calculadora_inst_res_abs_mux0001(1)
    );
  calculadora_inst_res_abs_mux0001_0_Q : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_res_abs_addsub0000(0),
      I2 => calculadora_inst_N01,
      I3 => N43,
      O => calculadora_inst_res_abs_mux0001(0)
    );
  calculadora_inst_res_abs_mux0001_3_Q : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_res_abs_addsub0000(3),
      I2 => calculadora_inst_N01,
      I3 => N45,
      O => calculadora_inst_res_abs_mux0001(3)
    );
  calculadora_inst_res_abs_mux0001_4_Q : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_res_abs_addsub0000(4),
      I2 => calculadora_inst_N01,
      I3 => N47,
      O => calculadora_inst_res_abs_mux0001(4)
    );
  calculadora_inst_Madd_res_abs_not0000_9_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp1,
      O => N49
    );
  calculadora_inst_Madd_res_abs_not0000_9_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp,
      I3 => N49,
      O => calculadora_inst_Madd_res_abs_not0000(9)
    );
  calculadora_inst_res_abs_mux0001_5_Q : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_res_abs_addsub0000(5),
      I2 => calculadora_inst_N01,
      I3 => N51,
      O => calculadora_inst_res_abs_mux0001(5)
    );
  calculadora_inst_res_abs_mux0001_6_Q : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_res_abs_addsub0000(6),
      I2 => calculadora_inst_N01,
      I3 => N53,
      O => calculadora_inst_res_abs_mux0001(6)
    );
  calculadora_inst_Madd_res_abs_not0000_5_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(5),
      O => N55
    );
  calculadora_inst_Madd_res_abs_not0000_5_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(5),
      I3 => N55,
      O => calculadora_inst_Madd_res_abs_not0000(5)
    );
  calculadora_inst_Madd_res_abs_not0000_4_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(4),
      O => N57
    );
  calculadora_inst_Madd_res_abs_not0000_4_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(4),
      I3 => N57,
      O => calculadora_inst_Madd_res_abs_not0000(4)
    );
  calculadora_inst_Madd_res_abs_not0000_3_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(3),
      O => N59
    );
  calculadora_inst_Madd_res_abs_not0000_3_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(3),
      I3 => N59,
      O => calculadora_inst_Madd_res_abs_not0000(3)
    );
  calculadora_inst_Madd_res_abs_not0000_2_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(2),
      O => N61
    );
  calculadora_inst_Madd_res_abs_not0000_2_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(2),
      I3 => N61,
      O => calculadora_inst_Madd_res_abs_not0000(2)
    );
  calculadora_inst_Madd_res_abs_not0000_1_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(1),
      O => N63
    );
  calculadora_inst_Madd_res_abs_not0000_1_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(1),
      I3 => N63,
      O => calculadora_inst_Madd_res_abs_not0000(1)
    );
  calculadora_inst_Madd_res_abs_not0000_0_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(0),
      O => N65
    );
  calculadora_inst_res_abs_mux0001_9_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_N01,
      I2 => calculadora_inst_res_abs_addsub0000(9),
      O => calculadora_inst_res_abs_mux0001(9)
    );
  calculadora_inst_Madd_res_abs_not0000_8_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(8),
      O => N67
    );
  calculadora_inst_Madd_res_abs_not0000_8_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(8),
      I3 => N67,
      O => calculadora_inst_Madd_res_abs_not0000(8)
    );
  calculadora_inst_res_abs_mux0001_7_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(7),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(7),
      I3 => N120,
      O => N69
    );
  calculadora_inst_res_abs_mux0001_7_Q : LUT4
    generic map(
      INIT => X"A8A0"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_N01,
      I2 => N69,
      I3 => calculadora_inst_res_abs_addsub0000(7),
      O => calculadora_inst_res_abs_mux0001(7)
    );
  calculadora_inst_Madd_res_abs_not0000_6_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(6),
      O => N71
    );
  calculadora_inst_Madd_res_abs_not0000_6_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(6),
      I3 => N71,
      O => calculadora_inst_Madd_res_abs_not0000(6)
    );
  calculadora_inst_Madd_res_abs_not0000_7_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => calculadora_inst_tmp_mult0002(7),
      O => N73
    );
  calculadora_inst_Madd_res_abs_not0000_7_Q : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(7),
      I3 => N73,
      O => calculadora_inst_Madd_res_abs_not0000(7)
    );
  calculadora_inst_res_abs_mux0001_8_Q : LUT4
    generic map(
      INIT => X"A8A0"
    )
    port map (
      I0 => calculadora_inst_N10,
      I1 => calculadora_inst_N01,
      I2 => N75,
      I3 => calculadora_inst_res_abs_addsub0000(8),
      O => calculadora_inst_res_abs_mux0001(8)
    );
  ps2_clk_IBUF : IBUF
    port map (
      I => ps2_clk,
      O => ps2_clk_IBUF_475
    );
  ps2_data_IBUF : IBUF
    port map (
      I => ps2_data,
      O => ps2_data_IBUF_477
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_479
    );
  lcd_rs_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_rs_reg_370,
      O => lcd_rs
    );
  lcd_rw_OBUF : OBUF
    port map (
      I => N0,
      O => lcd_rw
    );
  lcd_enable_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_enable_reg_358,
      O => lcd_enable
    );
  resultado_pronto_OBUF : OBUF
    port map (
      I => calculadora_inst_pronto_r_161,
      O => resultado_pronto
    );
  erro_div_zero_OBUF : OBUF
    port map (
      I => calculadora_inst_erro_r_158,
      O => erro_div_zero
    );
  lcd_data_7_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(7),
      O => lcd_data(7)
    );
  lcd_data_6_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(6),
      O => lcd_data(6)
    );
  lcd_data_5_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(5),
      O => lcd_data(5)
    );
  lcd_data_4_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(4),
      O => lcd_data(4)
    );
  lcd_data_3_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(3),
      O => lcd_data(3)
    );
  lcd_data_2_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(2),
      O => lcd_data(2)
    );
  lcd_data_1_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(1),
      O => lcd_data(1)
    );
  lcd_data_0_OBUF : OBUF
    port map (
      I => lcd_ctrl_inst_data_reg(0),
      O => lcd_data(0)
    );
  teclado_inst_ps2_falling_edge : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => teclado_inst_ps2_clk_sync(2),
      R => teclado_inst_ps2_clk_sync(1),
      Q => teclado_inst_ps2_falling_edge_574
    );
  state_FSM_FFd3 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => state_FSM_FFd3_In111,
      R => reset_IBUF_479,
      S => state_FSM_FFd3_In36_490,
      Q => state_FSM_FFd3_486
    );
  state_FSM_FFd1 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => state_FSM_FFd1_In1,
      R => reset_IBUF_479,
      S => N111,
      Q => state_FSM_FFd1_481
    );
  state_FSM_FFd1_In11 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => state_FSM_FFd3_486,
      I1 => state_FSM_FFd1_481,
      I2 => teclado_inst_pronto_reg_571,
      O => state_FSM_FFd1_In1
    );
  lcd_ctrl_inst_contador_14 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_14_1_317,
      R => reset_IBUF_479,
      S => N22,
      Q => lcd_ctrl_inst_contador(14)
    );
  lcd_ctrl_inst_contador_12 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_12_1_315,
      R => reset_IBUF_479,
      S => N24,
      Q => lcd_ctrl_inst_contador(12)
    );
  lcd_ctrl_inst_contador_11 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_11_1_314,
      R => reset_IBUF_479,
      S => N26,
      Q => lcd_ctrl_inst_contador(11)
    );
  lcd_ctrl_inst_contador_10 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_10_17,
      R => reset_IBUF_479,
      S => lcd_ctrl_inst_contador_mux0000_10_12,
      Q => lcd_ctrl_inst_contador(10)
    );
  lcd_ctrl_inst_contador_7 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_7_1_324,
      R => reset_IBUF_479,
      S => N16,
      Q => lcd_ctrl_inst_contador(7)
    );
  lcd_ctrl_inst_contador_5 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_5_1_322,
      R => reset_IBUF_479,
      S => N18,
      Q => lcd_ctrl_inst_contador(5)
    );
  lcd_ctrl_inst_contador_3 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_contador_mux0000_3_1_320,
      R => reset_IBUF_479,
      S => N20,
      Q => lcd_ctrl_inst_contador(3)
    );
  lcd_ctrl_inst_enable_reg : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      D => lcd_ctrl_inst_enable_reg_mux00001,
      R => lcd_ctrl_inst_enable_reg_or0000,
      S => lcd_ctrl_inst_N111,
      Q => lcd_ctrl_inst_enable_reg_358
    );
  lcd_ctrl_inst_enable_reg_mux000011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcd_ctrl_inst_enable_reg_358,
      I1 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      O => lcd_ctrl_inst_enable_reg_mux00001
    );
  state_FSM_FFd2 : FDRSE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_228,
      CE => state_FSM_FFd1_481,
      D => N4,
      R => reset_IBUF_479,
      S => N101,
      Q => state_FSM_FFd2_483
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcd_ctrl_inst_contador(0),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_cy_0_rt_249
    );
  calculadora_inst_Madd_res_abs_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"0032"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => calculadora_inst_erro_r_mux0001_159,
      I2 => calculadora_inst_tmp_mult0000(0),
      I3 => N65,
      O => calculadora_inst_Madd_res_abs_addsub0000_lut(0)
    );
  lcd_ctrl_inst_Mmux_varindex0000_5_f5_21 : LUT4
    generic map(
      INIT => X"9810"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => lcd_ctrl_inst_write_index(1),
      I2 => a1_3_Q,
      I3 => a2_4_Q,
      O => lcd_ctrl_inst_Mmux_varindex0000_5_f53
    );
  lcd_ctrl_inst_Mmux_varindex0000_5_f5_0 : LUT4
    generic map(
      INIT => X"E848"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => a2_1_Q,
      I2 => lcd_ctrl_inst_write_index(1),
      I3 => a2_4_Q,
      O => lcd_ctrl_inst_Mmux_varindex0000_5_f51
    );
  lcd_ctrl_inst_data_reg_mux0000_7_16 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      I1 => lcd_ctrl_inst_data_reg(0),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_data_reg_mux0000_7_15_357,
      O => lcd_ctrl_inst_data_reg_mux0000(7)
    );
  lcd_ctrl_inst_data_reg_mux0000_5_16 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd5_368,
      I1 => lcd_ctrl_inst_data_reg(2),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_data_reg_mux0000_5_15_352,
      O => lcd_ctrl_inst_data_reg_mux0000(5)
    );
  lcd_ctrl_inst_data_reg_mux0000_4_16 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_N10,
      I1 => lcd_ctrl_inst_data_reg(3),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_data_reg_mux0000_4_15_350,
      O => lcd_ctrl_inst_data_reg_mux0000(4)
    );
  lcd_ctrl_inst_data_reg_mux0000_3_16 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd6_369,
      I1 => lcd_ctrl_inst_data_reg(4),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_data_reg_mux0000_3_15,
      O => lcd_ctrl_inst_data_reg_mux0000(3)
    );
  lcd_ctrl_inst_data_reg_mux0000_2_16 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd6_369,
      I1 => lcd_ctrl_inst_data_reg(5),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_data_reg_mux0000_2_15_344,
      O => lcd_ctrl_inst_data_reg_mux0000(2)
    );
  teclado_inst_dado_reg_mux0001_5_130_SW0 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_5_36,
      I1 => teclado_inst_scan_code(3),
      I2 => teclado_inst_dado_reg_mux0001_5_99,
      I3 => teclado_inst_scan_code(5),
      O => N77
    );
  teclado_inst_dado_reg_mux0001_5_130 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_5_17_530,
      I1 => teclado_inst_dado_reg_mux0001_5_2_531,
      I2 => teclado_inst_dado_reg_mux0001_5_72,
      I3 => N77,
      O => teclado_inst_dado_reg_mux0001(5)
    );
  op1_mux0000_6_25 : LUT4
    generic map(
      INIT => X"8ABA"
    )
    port map (
      I0 => op1(6),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => N79,
      O => op1_mux0000(6)
    );
  op1_mux0000_5_25 : LUT4
    generic map(
      INIT => X"8ABA"
    )
    port map (
      I0 => op1(5),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => N81,
      O => op1_mux0000(5)
    );
  op2_mux0000_6_37 : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => op2_mux0000_6_12_464,
      I1 => N93,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000(6)
    );
  op2_mux0000_5_37 : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => op2_mux0000_5_12_462,
      I1 => N95,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000(5)
    );
  op2_mux0000_3_37 : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => op2_mux0000_3_12_458,
      I1 => N97,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000(3)
    );
  op2_mux0000_2_37 : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => op2_mux0000_2_12_456,
      I1 => N99,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000(2)
    );
  op2_mux0000_1_37 : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => op2_mux0000_1_12_454,
      I1 => N1011,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000(1)
    );
  op2_mux0000_0_37 : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => op2_mux0000_0_12_452,
      I1 => N103,
      I2 => operador_ascii_and0000,
      I3 => state_FSM_FFd1_481,
      O => op2_mux0000(0)
    );
  state_FSM_FFd3_In86_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => teclado_inst_dado_reg(3),
      I1 => teclado_inst_dado_reg(1),
      I2 => teclado_inst_dado_reg(2),
      I3 => state_FSM_FFd3_In62_491,
      O => N105
    );
  teclado_inst_dado_reg_mux0001_6_167_SW0 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_6_5_550,
      I1 => teclado_inst_dado_reg_mux0001_6_15,
      I2 => teclado_inst_scan_code(1),
      I3 => teclado_inst_dado_reg_mux0001_6_153_549,
      O => N107
    );
  teclado_inst_dado_reg_mux0001_6_167 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => teclado_inst_dado_reg_mux0001_6_50_551,
      I1 => teclado_inst_scan_code(6),
      I2 => teclado_inst_dado_reg_mux0001_6_60_552,
      I3 => N107,
      O => teclado_inst_dado_reg_mux0001(6)
    );
  a5_mux0001_5_1 : LUT4
    generic map(
      INIT => X"5041"
    )
    port map (
      I0 => calculadora_inst_erro_r_158,
      I1 => calculadora_inst_res_abs(1),
      I2 => calculadora_inst_res_abs(2),
      I3 => ascii_conv_inst_i_cmp_gt0000,
      O => a5_mux0001(5)
    );
  lcd_ctrl_inst_enable_reg_or00001 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => reset_IBUF_479,
      I1 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => lcd_ctrl_inst_enable_reg_or0000
    );
  lcd_ctrl_inst_rs_reg_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => reset_IBUF_479,
      I1 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => lcd_ctrl_inst_rs_reg_not0001
    );
  lcd_ctrl_inst_Mmux_varindex0000_5_f5_11 : LUT4
    generic map(
      INIT => X"9810"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => lcd_ctrl_inst_write_index(1),
      I2 => a1_0_Q,
      I3 => a2_4_Q,
      O => lcd_ctrl_inst_Mmux_varindex0000_5_f52
    );
  a3_mux0001_7_1 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => ascii_conv_inst_i_cmp_gt0000217_106,
      I1 => calculadora_inst_erro_r_158,
      I2 => ascii_conv_inst_i_cmp_gt0000232_107,
      O => a3_mux0001(7)
    );
  teclado_inst_recebido_not000111 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => teclado_inst_N21,
      I1 => reset_IBUF_479,
      I2 => teclado_inst_bit_count(1),
      I3 => teclado_inst_ps2_falling_edge_574,
      O => teclado_inst_recebido_mux0000
    );
  teclado_inst_bit_count_or00002 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => teclado_inst_N21,
      I1 => teclado_inst_bit_count(1),
      I2 => teclado_inst_ps2_falling_edge_574,
      I3 => reset_IBUF_479,
      O => teclado_inst_bit_count_or0000
    );
  lcd_ctrl_inst_write_index_mux0000_0_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd6_369,
      I1 => lcd_ctrl_inst_estado_FSM_FFd5_368,
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      O => lcd_ctrl_inst_N7
    );
  lcd_ctrl_inst_contador_mux0000_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador_addsub0000(3),
      I2 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_contador_mux0000_3_1_320
    );
  lcd_ctrl_inst_contador_mux0000_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador_addsub0000(5),
      I2 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      O => lcd_ctrl_inst_contador_mux0000_5_1_322
    );
  lcd_ctrl_inst_contador_mux0000_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador_addsub0000(7),
      I2 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_contador_mux0000_7_1_324
    );
  lcd_ctrl_inst_contador_mux0000_14_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador_addsub0000(14),
      I2 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      O => lcd_ctrl_inst_contador_mux0000_14_1_317
    );
  lcd_ctrl_inst_contador_mux0000_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador_addsub0000(12),
      I2 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_contador_mux0000_12_1_315
    );
  lcd_ctrl_inst_contador_mux0000_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador_addsub0000(11),
      I2 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      O => lcd_ctrl_inst_contador_mux0000_11_1_314
    );
  op2_mux0000_4_40_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => state_FSM_FFd1_481,
      I1 => state_FSM_FFd2_483,
      O => N109
    );
  op2_mux0000_4_40 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => op2_mux0000_4_23_460,
      I2 => N109,
      I3 => op2(4),
      O => op2_mux0000(4)
    );
  Madd_op1_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op1_mult0000(4),
      I1 => teclado_inst_dado_reg(4),
      O => Madd_op1_addsub0000_lut(4)
    );
  Madd_op2_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => op2_mult0000(4),
      I1 => teclado_inst_dado_reg(4),
      O => Madd_op2_addsub0000_lut(4)
    );
  Madd_op1_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => op1_mult0000(5),
      I1 => teclado_inst_dado_reg(5),
      I2 => teclado_inst_dado_reg(4),
      O => Madd_op1_addsub0000_lut(5)
    );
  Madd_op2_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => op2_mult0000(5),
      I1 => teclado_inst_dado_reg(5),
      I2 => teclado_inst_dado_reg(4),
      O => Madd_op2_addsub0000_lut(5)
    );
  Madd_op1_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => op1_mult0000(6),
      I1 => teclado_inst_dado_reg(4),
      I2 => teclado_inst_dado_reg(5),
      O => Madd_op1_addsub0000_lut(6)
    );
  Madd_op2_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => op2_mult0000(6),
      I1 => teclado_inst_dado_reg(4),
      I2 => teclado_inst_dado_reg(5),
      O => Madd_op2_addsub0000_lut(6)
    );
  lcd_ctrl_inst_contador_mux0000_7_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_contador(7),
      I2 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => N16
    );
  lcd_ctrl_inst_contador_mux0000_5_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_contador(5),
      I2 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => N18
    );
  lcd_ctrl_inst_contador_mux0000_3_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_contador(3),
      I2 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => N20
    );
  lcd_ctrl_inst_contador_mux0000_14_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_contador(14),
      I2 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => N22
    );
  lcd_ctrl_inst_contador_mux0000_12_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_contador(12),
      I2 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => N24
    );
  lcd_ctrl_inst_contador_mux0000_11_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_contador(11),
      I2 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => N26
    );
  lcd_ctrl_inst_contador_mux0000_10_171 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_contador(10),
      I2 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => lcd_ctrl_inst_contador_mux0000_10_17
    );
  a5_mux0001_6_1 : LUT4
    generic map(
      INIT => X"4111"
    )
    port map (
      I0 => calculadora_inst_erro_r_158,
      I1 => calculadora_inst_res_abs(1),
      I2 => ascii_conv_inst_i_cmp_gt0000217_106,
      I3 => ascii_conv_inst_i_cmp_gt0000232_107,
      O => a5_mux0001(6)
    );
  lcd_ctrl_inst_contador_mux0000_0_1 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador(0),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_contador_addsub0000(0),
      O => lcd_ctrl_inst_contador_mux0000_0_Q
    );
  lcd_ctrl_inst_contador_mux0000_1_1 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador(1),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_contador_addsub0000(1),
      O => lcd_ctrl_inst_contador_mux0000_1_Q
    );
  lcd_ctrl_inst_contador_mux0000_2_1 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador(2),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_contador_addsub0000(2),
      O => lcd_ctrl_inst_contador_mux0000_2_Q
    );
  lcd_ctrl_inst_contador_mux0000_6_1 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador(6),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_contador_addsub0000(6),
      O => lcd_ctrl_inst_contador_mux0000_6_Q
    );
  lcd_ctrl_inst_contador_mux0000_8_Q : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_N10,
      I2 => lcd_ctrl_inst_contador_addsub0000(8),
      I3 => N34,
      O => lcd_ctrl_inst_contador_mux0000_8_Q_325
    );
  a5_mux0001_4_11 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => calculadora_inst_res_abs(2),
      I1 => ascii_conv_inst_i_cmp_gt0000212_105,
      I2 => ascii_conv_inst_i_cmp_gt0000232_107,
      I3 => calculadora_inst_res_abs(1),
      O => N02
    );
  lcd_ctrl_inst_contador_mux0000_4_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd5_368,
      I1 => lcd_ctrl_inst_contador(4),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_estado_FSM_FFd6_369,
      O => N1111
    );
  lcd_ctrl_inst_contador_mux0000_4_Q : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      I2 => lcd_ctrl_inst_contador_addsub0000(4),
      I3 => N1111,
      O => lcd_ctrl_inst_contador_mux0000_4_Q_321
    );
  lcd_ctrl_inst_contador_mux0000_13_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd5_368,
      I1 => lcd_ctrl_inst_contador(13),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_estado_FSM_FFd6_369,
      O => N113
    );
  lcd_ctrl_inst_contador_mux0000_13_Q : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      I2 => lcd_ctrl_inst_contador_addsub0000(13),
      I3 => N113,
      O => lcd_ctrl_inst_contador_mux0000_13_Q_316
    );
  teclado_inst_dado_reg_mux0001_3_73 : MUXF5
    port map (
      I0 => N115,
      I1 => N116,
      S => teclado_inst_scan_code(2),
      O => teclado_inst_dado_reg_mux0001_3_73_522
    );
  teclado_inst_dado_reg_mux0001_3_73_F : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => teclado_inst_scan_code(4),
      I1 => teclado_inst_scan_code(5),
      I2 => teclado_inst_scan_code(0),
      O => N115
    );
  teclado_inst_dado_reg_mux0001_3_73_G : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => teclado_inst_scan_code(5),
      I1 => teclado_inst_scan_code(1),
      I2 => teclado_inst_scan_code(3),
      I3 => teclado_inst_scan_code(0),
      O => N116
    );
  state_FSM_FFd3_In36 : MUXF5
    port map (
      I0 => N117,
      I1 => N118,
      S => teclado_inst_pronto_reg_571,
      O => state_FSM_FFd3_In36_490
    );
  state_FSM_FFd3_In36_F : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => calculadora_inst_pronto_r_161,
      I1 => state_FSM_FFd1_481,
      I2 => state_FSM_FFd3_486,
      O => N117
    );
  state_FSM_FFd3_In36_G : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => teclado_inst_dado_reg(4),
      I1 => state_FSM_FFd2_483,
      I2 => state_FSM_FFd3_In8_492,
      I3 => teclado_inst_dado_reg(5),
      O => N118
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_228
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_14_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(14),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(14)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_13_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(13),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(13)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_12_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(12),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(12)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_11_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(11),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(11)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_10_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(10),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(10)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_9_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(9),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(9)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_8_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(8),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(8)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_7_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(7),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(7)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_6_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(6),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(6)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_5_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(5),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(5)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_4_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(4),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(4)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_3_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(3),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(3)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_2_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(2),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(2)
    );
  lcd_ctrl_inst_Msub_contador_addsub0000_lut_1_INV_0 : INV
    port map (
      I => lcd_ctrl_inst_contador(1),
      O => lcd_ctrl_inst_Msub_contador_addsub0000_lut(1)
    );
  teclado_inst_reset_inv1_INV_0 : INV
    port map (
      I => reset_IBUF_479,
      O => teclado_inst_reset_inv
    );
  tecla_pronta_inv1_INV_0 : INV
    port map (
      I => teclado_inst_pronto_reg_571,
      O => tecla_pronta_inv
    );
  teclado_inst_Mcount_bit_count_xor_0_11_INV_0 : INV
    port map (
      I => teclado_inst_bit_count(0),
      O => teclado_inst_Result(0)
    );
  a1_mux0001_2_1_INV_0 : INV
    port map (
      I => calculadora_inst_erro_r_158,
      O => a1_mux0001_2_Q
    );
  teclado_inst_dado_reg_and000091 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => teclado_inst_previous_scan_code(5),
      I1 => teclado_inst_previous_scan_code(0),
      I2 => teclado_inst_previous_scan_code(7),
      I3 => teclado_inst_previous_scan_code(6),
      O => teclado_inst_dado_reg_and000091_516
    );
  teclado_inst_dado_reg_and00009_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => teclado_inst_dado_reg_and000091_516,
      S => teclado_inst_recebido_575,
      O => teclado_inst_dado_reg_and00009
    );
  teclado_inst_dado_reg_and0000241 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => teclado_inst_dado_reg_and00009,
      I1 => teclado_inst_previous_scan_code(3),
      I2 => teclado_inst_previous_scan_code(2),
      I3 => teclado_inst_previous_scan_code(1),
      O => teclado_inst_dado_reg_and000024
    );
  teclado_inst_dado_reg_and000024_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => teclado_inst_dado_reg_and000024,
      S => teclado_inst_previous_scan_code(4),
      O => teclado_inst_dado_reg_and0000
    );
  lcd_ctrl_inst_data_reg_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_data_reg(6),
      O => lcd_ctrl_inst_data_reg_mux0000_1_1_341
    );
  lcd_ctrl_inst_data_reg_mux0000_1_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I1 => lcd_ctrl_inst_data_reg(6),
      I2 => a2_1_Q,
      I3 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_data_reg_mux0000_1_2_342
    );
  lcd_ctrl_inst_data_reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_data_reg_mux0000_1_2_342,
      I1 => lcd_ctrl_inst_data_reg_mux0000_1_1_341,
      S => lcd_ctrl_inst_write_index(2),
      O => lcd_ctrl_inst_data_reg_mux0000(1)
    );
  teclado_inst_dado_reg_mux0001_3_161 : LUT4
    generic map(
      INIT => X"13FF"
    )
    port map (
      I0 => teclado_inst_scan_code(3),
      I1 => teclado_inst_scan_code(1),
      I2 => teclado_inst_scan_code(4),
      I3 => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_3_161_520
    );
  teclado_inst_dado_reg_mux0001_3_16_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_3_161_520,
      I1 => N1,
      S => teclado_inst_scan_code(7),
      O => teclado_inst_dado_reg_mux0001_3_16
    );
  state_FSM_FFd2_In21 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => N7,
      I1 => teclado_inst_dado_reg(4),
      I2 => state_FSM_FFd3_486,
      I3 => teclado_inst_dado_reg(0),
      O => state_FSM_FFd2_In2
    );
  state_FSM_FFd2_In22 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => N7,
      I1 => teclado_inst_dado_reg(4),
      I2 => state_FSM_FFd3_486,
      I3 => teclado_inst_dado_reg(1),
      O => state_FSM_FFd2_In21_485
    );
  state_FSM_FFd2_In2_f5 : MUXF5
    port map (
      I0 => state_FSM_FFd2_In21_485,
      I1 => state_FSM_FFd2_In2,
      S => teclado_inst_dado_reg(2),
      O => N101
    );
  operador_ascii_and00001 : LUT4
    generic map(
      INIT => X"444C"
    )
    port map (
      I0 => teclado_inst_dado_reg(3),
      I1 => teclado_inst_dado_reg(4),
      I2 => teclado_inst_dado_reg(1),
      I3 => teclado_inst_dado_reg(2),
      O => operador_ascii_and00001_472
    );
  operador_ascii_and0000_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => operador_ascii_and00001_472,
      S => teclado_inst_dado_reg(5),
      O => operador_ascii_and0000
    );
  lcd_ctrl_inst_write_index_mux0000_2_1 : LUT4
    generic map(
      INIT => X"FF4C"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I2 => lcd_ctrl_inst_write_index(1),
      I3 => lcd_ctrl_inst_N7,
      O => lcd_ctrl_inst_write_index_mux0000_2_1_379
    );
  lcd_ctrl_inst_write_index_mux0000_2_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => lcd_ctrl_inst_write_index(1),
      I2 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_write_index_mux0000_2_2_380
    );
  lcd_ctrl_inst_write_index_mux0000_2_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_write_index_mux0000_2_2_380,
      I1 => lcd_ctrl_inst_write_index_mux0000_2_1_379,
      S => lcd_ctrl_inst_write_index(2),
      O => lcd_ctrl_inst_write_index_mux0000(2)
    );
  teclado_inst_dado_reg_mux0001_4_821 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => teclado_inst_scan_code(5),
      I1 => teclado_inst_scan_code(4),
      I2 => teclado_inst_scan_code(3),
      I3 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_4_821_528
    );
  teclado_inst_dado_reg_mux0001_4_82_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_4_821_528,
      I1 => N1,
      S => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_4_82
    );
  teclado_inst_dado_reg_mux0001_7_431 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => teclado_inst_scan_code(3),
      I1 => teclado_inst_scan_code(5),
      I2 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_7_431_558
    );
  teclado_inst_dado_reg_mux0001_7_432 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(4),
      O => teclado_inst_dado_reg_mux0001_7_432_559
    );
  teclado_inst_dado_reg_mux0001_7_43_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_7_432_559,
      I1 => teclado_inst_dado_reg_mux0001_7_431_558,
      S => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_7_43
    );
  teclado_inst_dado_reg_mux0001_5_361 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => teclado_inst_scan_code(4),
      I1 => teclado_inst_scan_code(2),
      I2 => teclado_inst_scan_code(0),
      I3 => teclado_inst_scan_code(1),
      O => teclado_inst_dado_reg_mux0001_5_361_533
    );
  teclado_inst_dado_reg_mux0001_5_362 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => teclado_inst_scan_code(4),
      I1 => teclado_inst_scan_code(2),
      I2 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_5_362_534
    );
  teclado_inst_dado_reg_mux0001_5_36_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_5_362_534,
      I1 => teclado_inst_dado_reg_mux0001_5_361_533,
      S => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_5_36
    );
  teclado_inst_dado_reg_mux0001_5_721 : LUT4
    generic map(
      INIT => X"222F"
    )
    port map (
      I0 => teclado_inst_scan_code(4),
      I1 => teclado_inst_scan_code(3),
      I2 => teclado_inst_scan_code(2),
      I3 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_5_721_536
    );
  teclado_inst_dado_reg_mux0001_5_722 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(2),
      O => teclado_inst_dado_reg_mux0001_5_722_537
    );
  teclado_inst_dado_reg_mux0001_5_72_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_5_722_537,
      I1 => teclado_inst_dado_reg_mux0001_5_721_536,
      S => teclado_inst_scan_code(5),
      O => teclado_inst_dado_reg_mux0001_5_72
    );
  teclado_inst_dado_reg_mux0001_5_991 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => teclado_inst_scan_code(2),
      I1 => teclado_inst_scan_code(0),
      I2 => teclado_inst_scan_code(1),
      I3 => teclado_inst_scan_code(4),
      O => teclado_inst_dado_reg_mux0001_5_991_539
    );
  teclado_inst_dado_reg_mux0001_5_992 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => teclado_inst_scan_code(2),
      I1 => teclado_inst_scan_code(1),
      I2 => teclado_inst_scan_code(0),
      I3 => teclado_inst_scan_code(4),
      O => teclado_inst_dado_reg_mux0001_5_992_540
    );
  teclado_inst_dado_reg_mux0001_5_99_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_5_992_540,
      I1 => teclado_inst_dado_reg_mux0001_5_991_539,
      S => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_5_99
    );
  lcd_ctrl_inst_data_reg_mux0000_3_151 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => a2_5_Q,
      O => lcd_ctrl_inst_data_reg_mux0000_3_151_347
    );
  lcd_ctrl_inst_data_reg_mux0000_3_152 : LUT4
    generic map(
      INIT => X"2800"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I1 => lcd_ctrl_inst_write_index(0),
      I2 => lcd_ctrl_inst_write_index(1),
      I3 => a2_4_Q,
      O => lcd_ctrl_inst_data_reg_mux0000_3_152_348
    );
  lcd_ctrl_inst_data_reg_mux0000_3_15_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_data_reg_mux0000_3_152_348,
      I1 => lcd_ctrl_inst_data_reg_mux0000_3_151_347,
      S => lcd_ctrl_inst_write_index(2),
      O => lcd_ctrl_inst_data_reg_mux0000_3_15
    );
  teclado_inst_dado_reg_mux0001_6_151 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(3),
      I2 => teclado_inst_scan_code(5),
      I3 => teclado_inst_scan_code(4),
      O => teclado_inst_dado_reg_mux0001_6_151_547
    );
  teclado_inst_dado_reg_mux0001_6_152 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => teclado_inst_scan_code(3),
      I1 => teclado_inst_scan_code(0),
      I2 => teclado_inst_scan_code(4),
      O => teclado_inst_dado_reg_mux0001_6_152_548
    );
  teclado_inst_dado_reg_mux0001_6_15_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_6_152_548,
      I1 => teclado_inst_dado_reg_mux0001_6_151_547,
      S => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_6_15
    );
  teclado_inst_dado_reg_mux0001_6_1381 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => teclado_inst_scan_code(1),
      I1 => teclado_inst_scan_code(0),
      I2 => teclado_inst_scan_code(4),
      I3 => teclado_inst_scan_code(5),
      O => teclado_inst_dado_reg_mux0001_6_1381_544
    );
  teclado_inst_dado_reg_mux0001_6_1382 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(1),
      O => teclado_inst_dado_reg_mux0001_6_1382_545
    );
  teclado_inst_dado_reg_mux0001_6_138_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_6_1382_545,
      I1 => teclado_inst_dado_reg_mux0001_6_1381_544,
      S => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_6_138
    );
  lcd_ctrl_inst_contador_mux0000_8_SW01 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      I1 => lcd_ctrl_inst_contador(8),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_contador_mux0000_8_SW0
    );
  lcd_ctrl_inst_contador_mux0000_8_SW02 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      I1 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      O => lcd_ctrl_inst_contador_mux0000_8_SW01_327
    );
  lcd_ctrl_inst_contador_mux0000_8_SW0_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_contador_mux0000_8_SW01_327,
      I1 => lcd_ctrl_inst_contador_mux0000_8_SW0,
      S => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => N34
    );
  state_FSM_FFd3_In11111 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => state_FSM_FFd3_486,
      I1 => state_FSM_FFd1_481,
      I2 => state_FSM_FFd2_483,
      I3 => N105,
      O => state_FSM_FFd3_In1111
    );
  state_FSM_FFd3_In11112 : LUT4
    generic map(
      INIT => X"08AA"
    )
    port map (
      I0 => state_FSM_FFd3_486,
      I1 => N105,
      I2 => state_FSM_FFd1_481,
      I3 => state_FSM_FFd2_483,
      O => state_FSM_FFd3_In11111_489
    );
  state_FSM_FFd3_In1111_f5 : MUXF5
    port map (
      I0 => state_FSM_FFd3_In11111_489,
      I1 => state_FSM_FFd3_In1111,
      S => teclado_inst_pronto_reg_571,
      O => state_FSM_FFd3_In111
    );
  teclado_inst_dado_reg_mux0001_4_171 : LUT4
    generic map(
      INIT => X"D5D7"
    )
    port map (
      I0 => teclado_inst_scan_code(2),
      I1 => teclado_inst_scan_code(5),
      I2 => teclado_inst_scan_code(6),
      I3 => teclado_inst_scan_code(4),
      O => teclado_inst_dado_reg_mux0001_4_171_525
    );
  teclado_inst_dado_reg_mux0001_4_17_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_4_171_525,
      I1 => N1,
      S => teclado_inst_scan_code(7),
      O => teclado_inst_dado_reg_mux0001_4_17
    );
  teclado_inst_dado_reg_mux0001_7_171 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(2),
      I2 => teclado_inst_scan_code(7),
      O => teclado_inst_dado_reg_mux0001_7_171_555
    );
  teclado_inst_dado_reg_mux0001_7_172 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => teclado_inst_scan_code(2),
      I1 => teclado_inst_scan_code(6),
      I2 => teclado_inst_scan_code(5),
      I3 => teclado_inst_scan_code(7),
      O => teclado_inst_dado_reg_mux0001_7_172_556
    );
  teclado_inst_dado_reg_mux0001_7_17_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_7_172_556,
      I1 => teclado_inst_dado_reg_mux0001_7_171_555,
      S => teclado_inst_scan_code(3),
      O => teclado_inst_dado_reg_mux0001_7_17
    );
  teclado_inst_dado_reg_mux0001_7_921 : LUT4
    generic map(
      INIT => X"727F"
    )
    port map (
      I0 => teclado_inst_scan_code(4),
      I1 => teclado_inst_scan_code(3),
      I2 => teclado_inst_scan_code(5),
      I3 => teclado_inst_scan_code(0),
      O => teclado_inst_dado_reg_mux0001_7_921_561
    );
  teclado_inst_dado_reg_mux0001_7_922 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => teclado_inst_scan_code(0),
      I1 => teclado_inst_scan_code(4),
      I2 => teclado_inst_scan_code(3),
      O => teclado_inst_dado_reg_mux0001_7_922_562
    );
  teclado_inst_dado_reg_mux0001_7_92_f5 : MUXF5
    port map (
      I0 => teclado_inst_dado_reg_mux0001_7_922_562,
      I1 => teclado_inst_dado_reg_mux0001_7_921_561,
      S => teclado_inst_scan_code(6),
      O => teclado_inst_dado_reg_mux0001_7_92
    );
  lcd_ctrl_inst_data_reg_mux0000_6_141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => lcd_ctrl_inst_data_reg(1),
      I1 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I2 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I3 => a5(1),
      O => lcd_ctrl_inst_data_reg_mux0000_6_14
    );
  lcd_ctrl_inst_data_reg_mux0000_6_142 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => lcd_ctrl_inst_data_reg(1),
      I1 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I2 => lcd_ctrl_inst_estado_FSM_FFd1_361,
      I3 => lcd_ctrl_inst_Mmux_varindex0000_5_f51,
      O => lcd_ctrl_inst_data_reg_mux0000_6_141_355
    );
  lcd_ctrl_inst_data_reg_mux0000_6_14_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_data_reg_mux0000_6_141_355,
      I1 => lcd_ctrl_inst_data_reg_mux0000_6_14,
      S => lcd_ctrl_inst_write_index(2),
      O => lcd_ctrl_inst_data_reg_mux0000(6)
    );
  op1_mux0000_4_261 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => op1_addsub0000(4),
      I2 => state_FSM_FFd2_483,
      I3 => op1(4),
      O => op1_mux0000_4_26
    );
  op1_mux0000_4_262 : LUT4
    generic map(
      INIT => X"8ABA"
    )
    port map (
      I0 => op1(4),
      I1 => state_FSM_FFd2_483,
      I2 => operador_ascii_and0000,
      I3 => teclado_inst_dado_reg(4),
      O => op1_mux0000_4_261_427
    );
  op1_mux0000_4_26_f5 : MUXF5
    port map (
      I0 => op1_mux0000_4_261_427,
      I1 => op1_mux0000_4_26,
      S => state_FSM_FFd3_486,
      O => op1_mux0000(4)
    );
  op1_mux0000_3_251 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => op1_addsub0000(3),
      I2 => state_FSM_FFd2_483,
      I3 => op1(3),
      O => op1_mux0000_3_25
    );
  op1_mux0000_3_252 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => teclado_inst_dado_reg(3),
      I2 => state_FSM_FFd2_483,
      I3 => op1(3),
      O => op1_mux0000_3_251_424
    );
  op1_mux0000_3_25_f5 : MUXF5
    port map (
      I0 => op1_mux0000_3_251_424,
      I1 => op1_mux0000_3_25,
      S => state_FSM_FFd3_486,
      O => op1_mux0000(3)
    );
  op1_mux0000_2_251 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => op1_addsub0000(2),
      I2 => state_FSM_FFd2_483,
      I3 => op1(2),
      O => op1_mux0000_2_25
    );
  op1_mux0000_2_252 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => teclado_inst_dado_reg(2),
      I2 => state_FSM_FFd2_483,
      I3 => op1(2),
      O => op1_mux0000_2_251_421
    );
  op1_mux0000_2_25_f5 : MUXF5
    port map (
      I0 => op1_mux0000_2_251_421,
      I1 => op1_mux0000_2_25,
      S => state_FSM_FFd3_486,
      O => op1_mux0000(2)
    );
  op1_mux0000_1_251 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => op1_addsub0000(1),
      I2 => state_FSM_FFd2_483,
      I3 => op1(1),
      O => op1_mux0000_1_25
    );
  op1_mux0000_1_252 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => teclado_inst_dado_reg(1),
      I2 => state_FSM_FFd2_483,
      I3 => op1(1),
      O => op1_mux0000_1_251_418
    );
  op1_mux0000_1_25_f5 : MUXF5
    port map (
      I0 => op1_mux0000_1_251_418,
      I1 => op1_mux0000_1_25,
      S => state_FSM_FFd3_486,
      O => op1_mux0000(1)
    );
  op1_mux0000_0_251 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => op1_addsub0000(0),
      I2 => state_FSM_FFd2_483,
      I3 => op1(0),
      O => op1_mux0000_0_25
    );
  op1_mux0000_0_252 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => operador_ascii_and0000,
      I1 => teclado_inst_dado_reg(0),
      I2 => state_FSM_FFd2_483,
      I3 => op1(0),
      O => op1_mux0000_0_251_415
    );
  op1_mux0000_0_25_f5 : MUXF5
    port map (
      I0 => op1_mux0000_0_251_415,
      I1 => op1_mux0000_0_25,
      S => state_FSM_FFd3_486,
      O => op1_mux0000(0)
    );
  lcd_ctrl_inst_contador_mux0000_9_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador_addsub0000(9),
      O => lcd_ctrl_inst_contador_mux0000_9_1_329
    );
  lcd_ctrl_inst_contador_mux0000_9_2 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      I1 => lcd_ctrl_inst_contador(9),
      I2 => lcd_ctrl_inst_estado_FSM_FFd3_365,
      I3 => lcd_ctrl_inst_contador_addsub0000(9),
      O => lcd_ctrl_inst_contador_mux0000_9_2_330
    );
  lcd_ctrl_inst_contador_mux0000_9_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_contador_mux0000_9_2_330,
      I1 => lcd_ctrl_inst_contador_mux0000_9_1_329,
      S => lcd_ctrl_inst_N111,
      O => lcd_ctrl_inst_contador_mux0000_9_Q
    );
  lcd_ctrl_inst_contador_mux0000_10_121 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcd_ctrl_inst_estado_FSM_FFd6_369,
      I1 => lcd_ctrl_inst_estado_FSM_FFd5_368,
      I2 => lcd_ctrl_inst_estado_FSM_FFd4_367,
      I3 => lcd_ctrl_inst_estado_FSM_FFd2_363,
      O => lcd_ctrl_inst_contador_mux0000_10_121_312
    );
  lcd_ctrl_inst_contador_mux0000_10_12_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_contador_addsub0000(10),
      I1 => lcd_ctrl_inst_contador_mux0000_10_121_312,
      S => lcd_ctrl_inst_Mcompar_estado_cmp_gt0000_cy(3),
      O => lcd_ctrl_inst_contador_mux0000_10_12
    );
  lcd_ctrl_inst_Mmux_varindex0000_5_f511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => a3(0),
      I2 => a2_1_Q,
      O => lcd_ctrl_inst_Mmux_varindex0000_5_f511_244
    );
  lcd_ctrl_inst_Mmux_varindex0000_5_f512 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => lcd_ctrl_inst_write_index(0),
      I1 => a1_0_Q,
      O => lcd_ctrl_inst_Mmux_varindex0000_5_f512_245
    );
  lcd_ctrl_inst_Mmux_varindex0000_5_f51_f5 : MUXF5
    port map (
      I0 => lcd_ctrl_inst_Mmux_varindex0000_5_f512_245,
      I1 => lcd_ctrl_inst_Mmux_varindex0000_5_f511_244,
      S => lcd_ctrl_inst_write_index(1),
      O => lcd_ctrl_inst_Mmux_varindex0000_5_f5
    );
  op2_mux0000_4_23 : LUT3_L
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => state_FSM_FFd3_486,
      I1 => teclado_inst_dado_reg(4),
      I2 => op2_addsub0000(4),
      LO => op2_mux0000_4_23_460
    );
  calculadora_inst_res_abs_mux0001_0_11 : LUT4_D
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => operador_ascii(1),
      I1 => operador_ascii(2),
      I2 => calculadora_inst_tmp,
      I3 => calculadora_inst_tmp1,
      LO => N119,
      O => calculadora_inst_N01
    );
  calculadora_inst_res_abs_mux0001_0_211 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => operador_ascii(2),
      I1 => operador_ascii(1),
      I2 => calculadora_inst_tmp1,
      LO => N120,
      O => calculadora_inst_N111
    );
  calculadora_inst_res_abs_mux0001_2_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(2),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(2),
      I3 => calculadora_inst_N111,
      LO => N39
    );
  calculadora_inst_res_abs_mux0001_1_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(1),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(1),
      I3 => calculadora_inst_N111,
      LO => N41
    );
  calculadora_inst_res_abs_mux0001_0_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(0),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(0),
      I3 => calculadora_inst_N111,
      LO => N43
    );
  calculadora_inst_res_abs_mux0001_3_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(3),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(3),
      I3 => calculadora_inst_N111,
      LO => N45
    );
  calculadora_inst_res_abs_mux0001_4_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(4),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(4),
      I3 => calculadora_inst_N111,
      LO => N47
    );
  calculadora_inst_res_abs_mux0001_5_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(5),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(5),
      I3 => calculadora_inst_N111,
      LO => N51
    );
  calculadora_inst_res_abs_mux0001_6_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(6),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(6),
      I3 => calculadora_inst_N111,
      LO => N53
    );
  calculadora_inst_res_abs_mux0001_8_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => calculadora_inst_tmp_mult0000(8),
      I1 => calculadora_inst_N12,
      I2 => calculadora_inst_tmp_mult0002(8),
      I3 => calculadora_inst_N111,
      LO => N75
    );
  op2_mux0000_6_37_SW0 : LUT4_L
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => state_FSM_FFd2_483,
      I1 => state_FSM_FFd3_486,
      I2 => op2_addsub0000(6),
      I3 => Q_sub0000(6),
      LO => N93
    );
  op2_mux0000_5_37_SW0 : LUT4_L
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => state_FSM_FFd2_483,
      I1 => state_FSM_FFd3_486,
      I2 => op2_addsub0000(5),
      I3 => Q_sub0000(5),
      LO => N95
    );
  op2_mux0000_3_37_SW0 : LUT4_L
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => state_FSM_FFd2_483,
      I1 => state_FSM_FFd3_486,
      I2 => op2_addsub0000(3),
      I3 => teclado_inst_dado_reg(3),
      LO => N97
    );
  op2_mux0000_2_37_SW0 : LUT4_L
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => state_FSM_FFd2_483,
      I1 => state_FSM_FFd3_486,
      I2 => op2_addsub0000(2),
      I3 => teclado_inst_dado_reg(2),
      LO => N99
    );
  op2_mux0000_1_37_SW0 : LUT4_L
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => state_FSM_FFd2_483,
      I1 => state_FSM_FFd3_486,
      I2 => op2_addsub0000(1),
      I3 => teclado_inst_dado_reg(1),
      LO => N1011
    );
  op2_mux0000_0_37_SW0 : LUT4_L
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => state_FSM_FFd2_483,
      I1 => state_FSM_FFd3_486,
      I2 => op2_addsub0000(0),
      I3 => teclado_inst_dado_reg(0),
      LO => N103
    );
  op1_mux0000_5_25_SW0 : LUT4_L
    generic map(
      INIT => X"41EB"
    )
    port map (
      I0 => state_FSM_FFd3_486,
      I1 => teclado_inst_dado_reg(4),
      I2 => teclado_inst_dado_reg(5),
      I3 => op1_addsub0000(5),
      LO => N81
    );
  op1_mux0000_6_25_SW0 : LUT4_L
    generic map(
      INIT => X"7222"
    )
    port map (
      I0 => state_FSM_FFd3_486,
      I1 => op1_addsub0000(6),
      I2 => teclado_inst_dado_reg(4),
      I3 => teclado_inst_dado_reg(5),
      LO => N79
    );
  teclado_inst_Mshreg_ps2_clk_sync_1 : SRL16
    generic map(
      INIT => X"0001"
    )
    port map (
      A0 => N0,
      A1 => N0,
      A2 => N0,
      A3 => N0,
      CLK => clk_BUFGP_228,
      D => ps2_clk_IBUF_475,
      Q => teclado_inst_Mshreg_ps2_clk_sync_1_494
    );
  teclado_inst_ps2_clk_sync_1 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_228,
      D => teclado_inst_Mshreg_ps2_clk_sync_1_494,
      Q => teclado_inst_ps2_clk_sync(1)
    );

end Structure;

