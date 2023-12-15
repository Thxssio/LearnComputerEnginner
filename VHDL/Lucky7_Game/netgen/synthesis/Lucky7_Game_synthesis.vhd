--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Lucky7_Game_synthesis.vhd
-- /___/   /\     Timestamp: Fri Dec 15 06:36:52 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Lucky7_Game -w -dir netgen/synthesis -ofmt vhdl -sim Lucky7_Game.ngc Lucky7_Game_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: Lucky7_Game.ngc
-- Output file	: /home/thxssio/projects/LearnComputerEnginner/VHDL/Lucky7_Game/netgen/synthesis/Lucky7_Game_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Lucky7_Game
-- Xilinx	: /opt/14.7/ISE_DS/ISE/
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

entity Lucky7_Game is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    button : in STD_LOGIC := 'X'; 
    win : out STD_LOGIC; 
    led1 : out STD_LOGIC; 
    led2 : out STD_LOGIC; 
    led3 : out STD_LOGIC; 
    led4 : out STD_LOGIC; 
    led5 : out STD_LOGIC; 
    led6 : out STD_LOGIC; 
    led7 : out STD_LOGIC; 
    led8 : out STD_LOGIC; 
    seven_seg : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end Lucky7_Game;

architecture Structure of Lucky7_Game is
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal reset_IBUF_1 : STD_LOGIC; 
  signal button_IBUF_2 : STD_LOGIC; 
  signal debounce_button_instance_result_3 : STD_LOGIC; 
  signal debounce_button_instance_reset_out_4 : STD_LOGIC; 
  signal seven_seg_6_OBUF_5 : STD_LOGIC; 
  signal seven_seg_5_OBUF_6 : STD_LOGIC; 
  signal seven_seg_4_OBUF_7 : STD_LOGIC; 
  signal seven_seg_3_OBUF_8 : STD_LOGIC; 
  signal seven_seg_2_OBUF_9 : STD_LOGIC; 
  signal seven_seg_1_OBUF_10 : STD_LOGIC; 
  signal seven_seg_0_OBUF_11 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal win_OBUF_13 : STD_LOGIC; 
  signal Mcount_rand_num_val : STD_LOGIC; 
  signal Mcount_rand_num_xor_3_12 : STD_LOGIC; 
  signal debounce_button_instance_Result_23_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_22_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_21_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_20_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_19_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_18_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_17_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_16_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_15_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_14_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_13_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_12_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_11_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_10_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_9_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_8_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_7_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_6_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_5_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_4_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_3_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_2_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_1_1 : STD_LOGIC; 
  signal debounce_button_instance_Result_0_1 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_val : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_val : STD_LOGIC; 
  signal debounce_button_instance_reset_d2_170 : STD_LOGIC; 
  signal debounce_button_instance_reset_d1_171 : STD_LOGIC; 
  signal debounce_button_instance_button_d2_172 : STD_LOGIC; 
  signal debounce_button_instance_button_d1_173 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o2 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o21_175 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o22_176 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o2 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o21_178 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o22_179 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_22_rt_199 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_21_rt_200 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_20_rt_201 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_19_rt_202 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_18_rt_203 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_17_rt_204 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_16_rt_205 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_15_rt_206 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_14_rt_207 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_13_rt_208 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_12_rt_209 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_11_rt_210 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_10_rt_211 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_9_rt_212 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_8_rt_213 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_7_rt_214 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_6_rt_215 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_5_rt_216 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_4_rt_217 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_3_rt_218 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_2_rt_219 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_cy_1_rt_220 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_22_rt_221 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_21_rt_222 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_20_rt_223 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_19_rt_224 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_18_rt_225 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_17_rt_226 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_16_rt_227 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_15_rt_228 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_14_rt_229 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_13_rt_230 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_12_rt_231 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_11_rt_232 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_10_rt_233 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_9_rt_234 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_8_rt_235 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_7_rt_236 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_6_rt_237 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_5_rt_238 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_4_rt_239 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_3_rt_240 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_2_rt_241 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_cy_1_rt_242 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_xor_23_rt_243 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_xor_23_rt_244 : STD_LOGIC; 
  signal debounce_button_instance_n0055_inv1_cepot_245 : STD_LOGIC; 
  signal debounce_button_instance_reset_out_dpot_246 : STD_LOGIC; 
  signal debounce_button_instance_n0051_inv1_cepot_247 : STD_LOGIC; 
  signal debounce_button_instance_result_dpot_248 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_0_rstpot_253 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_0_rstpot_254 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_11_rstpot_255 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_10_rstpot_256 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_8_rstpot_257 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_7_rstpot_258 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_9_rstpot_259 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_6_rstpot_260 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_5_rstpot_261 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_4_rstpot_262 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_3_rstpot_263 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_1_rstpot_264 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_2_rstpot_265 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_11_rstpot_266 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_10_rstpot_267 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_9_rstpot_268 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_8_rstpot_269 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_7_rstpot_270 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_5_rstpot_271 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_4_rstpot_272 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_6_rstpot_273 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_3_rstpot_274 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_2_rstpot_275 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_1_rstpot_276 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_12_rstpot_277 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_12_rstpot_278 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_13_rstpot_279 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_13_rstpot_280 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_14_rstpot_281 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_14_rstpot_282 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_15_rstpot_283 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_15_rstpot_284 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_16_rstpot_285 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_16_rstpot_286 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_17_rstpot_287 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_17_rstpot_288 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_18_rstpot_289 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_18_rstpot_290 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_19_rstpot_291 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_19_rstpot_292 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_20_rstpot_293 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_20_rstpot_294 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_21_rstpot_295 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_21_rstpot_296 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_22_rstpot_297 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_22_rstpot_298 : STD_LOGIC; 
  signal debounce_button_instance_reset_counter_23_rstpot_299 : STD_LOGIC; 
  signal debounce_button_instance_button_counter_23_rstpot_300 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_reset_counter_val241_301 : STD_LOGIC; 
  signal debounce_button_instance_Mcount_button_counter_val241_302 : STD_LOGIC; 
  signal debounce_button_instance_Mshreg_reset_d1_303 : STD_LOGIC; 
  signal debounce_button_instance_Mshreg_button_d1_304 : STD_LOGIC; 
  signal NLW_debounce_button_instance_Mshreg_reset_d1_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_debounce_button_instance_Mshreg_button_d1_Q15_UNCONNECTED : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal rand_num : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal debounce_button_instance_Mcount_reset_counter_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal debounce_button_instance_Mcount_reset_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal debounce_button_instance_Mcount_button_counter_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal debounce_button_instance_Mcount_button_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal debounce_button_instance_Result_0 : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal debounce_button_instance_reset_counter : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal debounce_button_instance_button_counter : STD_LOGIC_VECTOR ( 23 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => win_OBUF_13
    );
  rand_num_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => debounce_button_instance_result_3,
      D => Result(0),
      R => Mcount_rand_num_val,
      Q => rand_num(0)
    );
  rand_num_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => debounce_button_instance_result_3,
      D => Result(3),
      R => Mcount_rand_num_val,
      Q => rand_num(3)
    );
  rand_num_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => debounce_button_instance_result_3,
      D => Result(1),
      R => Mcount_rand_num_val,
      Q => rand_num(1)
    );
  rand_num_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => debounce_button_instance_result_3,
      D => Result(2),
      R => Mcount_rand_num_val,
      Q => rand_num(2)
    );
  debounce_button_instance_Mcount_reset_counter_xor_23_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(22),
      LI => debounce_button_instance_Mcount_reset_counter_xor_23_rt_243,
      O => debounce_button_instance_Result_23_1
    );
  debounce_button_instance_Mcount_reset_counter_xor_22_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(21),
      LI => debounce_button_instance_Mcount_reset_counter_cy_22_rt_199,
      O => debounce_button_instance_Result_22_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_22_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(21),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_22_rt_199,
      O => debounce_button_instance_Mcount_reset_counter_cy(22)
    );
  debounce_button_instance_Mcount_reset_counter_xor_21_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(20),
      LI => debounce_button_instance_Mcount_reset_counter_cy_21_rt_200,
      O => debounce_button_instance_Result_21_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_21_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(20),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_21_rt_200,
      O => debounce_button_instance_Mcount_reset_counter_cy(21)
    );
  debounce_button_instance_Mcount_reset_counter_xor_20_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(19),
      LI => debounce_button_instance_Mcount_reset_counter_cy_20_rt_201,
      O => debounce_button_instance_Result_20_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_20_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(19),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_20_rt_201,
      O => debounce_button_instance_Mcount_reset_counter_cy(20)
    );
  debounce_button_instance_Mcount_reset_counter_xor_19_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(18),
      LI => debounce_button_instance_Mcount_reset_counter_cy_19_rt_202,
      O => debounce_button_instance_Result_19_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_19_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(18),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_19_rt_202,
      O => debounce_button_instance_Mcount_reset_counter_cy(19)
    );
  debounce_button_instance_Mcount_reset_counter_xor_18_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(17),
      LI => debounce_button_instance_Mcount_reset_counter_cy_18_rt_203,
      O => debounce_button_instance_Result_18_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_18_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(17),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_18_rt_203,
      O => debounce_button_instance_Mcount_reset_counter_cy(18)
    );
  debounce_button_instance_Mcount_reset_counter_xor_17_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(16),
      LI => debounce_button_instance_Mcount_reset_counter_cy_17_rt_204,
      O => debounce_button_instance_Result_17_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_17_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(16),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_17_rt_204,
      O => debounce_button_instance_Mcount_reset_counter_cy(17)
    );
  debounce_button_instance_Mcount_reset_counter_xor_16_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(15),
      LI => debounce_button_instance_Mcount_reset_counter_cy_16_rt_205,
      O => debounce_button_instance_Result_16_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_16_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(15),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_16_rt_205,
      O => debounce_button_instance_Mcount_reset_counter_cy(16)
    );
  debounce_button_instance_Mcount_reset_counter_xor_15_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(14),
      LI => debounce_button_instance_Mcount_reset_counter_cy_15_rt_206,
      O => debounce_button_instance_Result_15_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_15_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(14),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_15_rt_206,
      O => debounce_button_instance_Mcount_reset_counter_cy(15)
    );
  debounce_button_instance_Mcount_reset_counter_xor_14_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(13),
      LI => debounce_button_instance_Mcount_reset_counter_cy_14_rt_207,
      O => debounce_button_instance_Result_14_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_14_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(13),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_14_rt_207,
      O => debounce_button_instance_Mcount_reset_counter_cy(14)
    );
  debounce_button_instance_Mcount_reset_counter_xor_13_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(12),
      LI => debounce_button_instance_Mcount_reset_counter_cy_13_rt_208,
      O => debounce_button_instance_Result_13_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_13_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(12),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_13_rt_208,
      O => debounce_button_instance_Mcount_reset_counter_cy(13)
    );
  debounce_button_instance_Mcount_reset_counter_xor_12_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(11),
      LI => debounce_button_instance_Mcount_reset_counter_cy_12_rt_209,
      O => debounce_button_instance_Result_12_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_12_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(11),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_12_rt_209,
      O => debounce_button_instance_Mcount_reset_counter_cy(12)
    );
  debounce_button_instance_Mcount_reset_counter_xor_11_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(10),
      LI => debounce_button_instance_Mcount_reset_counter_cy_11_rt_210,
      O => debounce_button_instance_Result_11_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_11_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(10),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_11_rt_210,
      O => debounce_button_instance_Mcount_reset_counter_cy(11)
    );
  debounce_button_instance_Mcount_reset_counter_xor_10_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(9),
      LI => debounce_button_instance_Mcount_reset_counter_cy_10_rt_211,
      O => debounce_button_instance_Result_10_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_10_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(9),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_10_rt_211,
      O => debounce_button_instance_Mcount_reset_counter_cy(10)
    );
  debounce_button_instance_Mcount_reset_counter_xor_9_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(8),
      LI => debounce_button_instance_Mcount_reset_counter_cy_9_rt_212,
      O => debounce_button_instance_Result_9_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_9_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(8),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_9_rt_212,
      O => debounce_button_instance_Mcount_reset_counter_cy(9)
    );
  debounce_button_instance_Mcount_reset_counter_xor_8_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(7),
      LI => debounce_button_instance_Mcount_reset_counter_cy_8_rt_213,
      O => debounce_button_instance_Result_8_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_8_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(7),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_8_rt_213,
      O => debounce_button_instance_Mcount_reset_counter_cy(8)
    );
  debounce_button_instance_Mcount_reset_counter_xor_7_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(6),
      LI => debounce_button_instance_Mcount_reset_counter_cy_7_rt_214,
      O => debounce_button_instance_Result_7_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_7_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(6),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_7_rt_214,
      O => debounce_button_instance_Mcount_reset_counter_cy(7)
    );
  debounce_button_instance_Mcount_reset_counter_xor_6_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(5),
      LI => debounce_button_instance_Mcount_reset_counter_cy_6_rt_215,
      O => debounce_button_instance_Result_6_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_6_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(5),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_6_rt_215,
      O => debounce_button_instance_Mcount_reset_counter_cy(6)
    );
  debounce_button_instance_Mcount_reset_counter_xor_5_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(4),
      LI => debounce_button_instance_Mcount_reset_counter_cy_5_rt_216,
      O => debounce_button_instance_Result_5_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_5_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(4),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_5_rt_216,
      O => debounce_button_instance_Mcount_reset_counter_cy(5)
    );
  debounce_button_instance_Mcount_reset_counter_xor_4_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(3),
      LI => debounce_button_instance_Mcount_reset_counter_cy_4_rt_217,
      O => debounce_button_instance_Result_4_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_4_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(3),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_4_rt_217,
      O => debounce_button_instance_Mcount_reset_counter_cy(4)
    );
  debounce_button_instance_Mcount_reset_counter_xor_3_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(2),
      LI => debounce_button_instance_Mcount_reset_counter_cy_3_rt_218,
      O => debounce_button_instance_Result_3_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_3_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(2),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_3_rt_218,
      O => debounce_button_instance_Mcount_reset_counter_cy(3)
    );
  debounce_button_instance_Mcount_reset_counter_xor_2_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(1),
      LI => debounce_button_instance_Mcount_reset_counter_cy_2_rt_219,
      O => debounce_button_instance_Result_2_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_2_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(1),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_2_rt_219,
      O => debounce_button_instance_Mcount_reset_counter_cy(2)
    );
  debounce_button_instance_Mcount_reset_counter_xor_1_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(0),
      LI => debounce_button_instance_Mcount_reset_counter_cy_1_rt_220,
      O => debounce_button_instance_Result_1_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_1_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_reset_counter_cy(0),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_reset_counter_cy_1_rt_220,
      O => debounce_button_instance_Mcount_reset_counter_cy(1)
    );
  debounce_button_instance_Mcount_reset_counter_xor_0_Q : XORCY
    port map (
      CI => win_OBUF_13,
      LI => debounce_button_instance_Mcount_reset_counter_lut(0),
      O => debounce_button_instance_Result_0_1
    );
  debounce_button_instance_Mcount_reset_counter_cy_0_Q : MUXCY
    port map (
      CI => win_OBUF_13,
      DI => N0,
      S => debounce_button_instance_Mcount_reset_counter_lut(0),
      O => debounce_button_instance_Mcount_reset_counter_cy(0)
    );
  debounce_button_instance_Mcount_button_counter_xor_23_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(22),
      LI => debounce_button_instance_Mcount_button_counter_xor_23_rt_244,
      O => debounce_button_instance_Result_0(23)
    );
  debounce_button_instance_Mcount_button_counter_xor_22_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(21),
      LI => debounce_button_instance_Mcount_button_counter_cy_22_rt_221,
      O => debounce_button_instance_Result_0(22)
    );
  debounce_button_instance_Mcount_button_counter_cy_22_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(21),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_22_rt_221,
      O => debounce_button_instance_Mcount_button_counter_cy(22)
    );
  debounce_button_instance_Mcount_button_counter_xor_21_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(20),
      LI => debounce_button_instance_Mcount_button_counter_cy_21_rt_222,
      O => debounce_button_instance_Result_0(21)
    );
  debounce_button_instance_Mcount_button_counter_cy_21_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(20),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_21_rt_222,
      O => debounce_button_instance_Mcount_button_counter_cy(21)
    );
  debounce_button_instance_Mcount_button_counter_xor_20_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(19),
      LI => debounce_button_instance_Mcount_button_counter_cy_20_rt_223,
      O => debounce_button_instance_Result_0(20)
    );
  debounce_button_instance_Mcount_button_counter_cy_20_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(19),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_20_rt_223,
      O => debounce_button_instance_Mcount_button_counter_cy(20)
    );
  debounce_button_instance_Mcount_button_counter_xor_19_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(18),
      LI => debounce_button_instance_Mcount_button_counter_cy_19_rt_224,
      O => debounce_button_instance_Result_0(19)
    );
  debounce_button_instance_Mcount_button_counter_cy_19_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(18),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_19_rt_224,
      O => debounce_button_instance_Mcount_button_counter_cy(19)
    );
  debounce_button_instance_Mcount_button_counter_xor_18_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(17),
      LI => debounce_button_instance_Mcount_button_counter_cy_18_rt_225,
      O => debounce_button_instance_Result_0(18)
    );
  debounce_button_instance_Mcount_button_counter_cy_18_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(17),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_18_rt_225,
      O => debounce_button_instance_Mcount_button_counter_cy(18)
    );
  debounce_button_instance_Mcount_button_counter_xor_17_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(16),
      LI => debounce_button_instance_Mcount_button_counter_cy_17_rt_226,
      O => debounce_button_instance_Result_0(17)
    );
  debounce_button_instance_Mcount_button_counter_cy_17_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(16),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_17_rt_226,
      O => debounce_button_instance_Mcount_button_counter_cy(17)
    );
  debounce_button_instance_Mcount_button_counter_xor_16_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(15),
      LI => debounce_button_instance_Mcount_button_counter_cy_16_rt_227,
      O => debounce_button_instance_Result_0(16)
    );
  debounce_button_instance_Mcount_button_counter_cy_16_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(15),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_16_rt_227,
      O => debounce_button_instance_Mcount_button_counter_cy(16)
    );
  debounce_button_instance_Mcount_button_counter_xor_15_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(14),
      LI => debounce_button_instance_Mcount_button_counter_cy_15_rt_228,
      O => debounce_button_instance_Result_0(15)
    );
  debounce_button_instance_Mcount_button_counter_cy_15_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(14),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_15_rt_228,
      O => debounce_button_instance_Mcount_button_counter_cy(15)
    );
  debounce_button_instance_Mcount_button_counter_xor_14_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(13),
      LI => debounce_button_instance_Mcount_button_counter_cy_14_rt_229,
      O => debounce_button_instance_Result_0(14)
    );
  debounce_button_instance_Mcount_button_counter_cy_14_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(13),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_14_rt_229,
      O => debounce_button_instance_Mcount_button_counter_cy(14)
    );
  debounce_button_instance_Mcount_button_counter_xor_13_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(12),
      LI => debounce_button_instance_Mcount_button_counter_cy_13_rt_230,
      O => debounce_button_instance_Result_0(13)
    );
  debounce_button_instance_Mcount_button_counter_cy_13_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(12),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_13_rt_230,
      O => debounce_button_instance_Mcount_button_counter_cy(13)
    );
  debounce_button_instance_Mcount_button_counter_xor_12_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(11),
      LI => debounce_button_instance_Mcount_button_counter_cy_12_rt_231,
      O => debounce_button_instance_Result_0(12)
    );
  debounce_button_instance_Mcount_button_counter_cy_12_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(11),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_12_rt_231,
      O => debounce_button_instance_Mcount_button_counter_cy(12)
    );
  debounce_button_instance_Mcount_button_counter_xor_11_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(10),
      LI => debounce_button_instance_Mcount_button_counter_cy_11_rt_232,
      O => debounce_button_instance_Result_0(11)
    );
  debounce_button_instance_Mcount_button_counter_cy_11_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(10),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_11_rt_232,
      O => debounce_button_instance_Mcount_button_counter_cy(11)
    );
  debounce_button_instance_Mcount_button_counter_xor_10_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(9),
      LI => debounce_button_instance_Mcount_button_counter_cy_10_rt_233,
      O => debounce_button_instance_Result_0(10)
    );
  debounce_button_instance_Mcount_button_counter_cy_10_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(9),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_10_rt_233,
      O => debounce_button_instance_Mcount_button_counter_cy(10)
    );
  debounce_button_instance_Mcount_button_counter_xor_9_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(8),
      LI => debounce_button_instance_Mcount_button_counter_cy_9_rt_234,
      O => debounce_button_instance_Result_0(9)
    );
  debounce_button_instance_Mcount_button_counter_cy_9_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(8),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_9_rt_234,
      O => debounce_button_instance_Mcount_button_counter_cy(9)
    );
  debounce_button_instance_Mcount_button_counter_xor_8_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(7),
      LI => debounce_button_instance_Mcount_button_counter_cy_8_rt_235,
      O => debounce_button_instance_Result_0(8)
    );
  debounce_button_instance_Mcount_button_counter_cy_8_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(7),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_8_rt_235,
      O => debounce_button_instance_Mcount_button_counter_cy(8)
    );
  debounce_button_instance_Mcount_button_counter_xor_7_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(6),
      LI => debounce_button_instance_Mcount_button_counter_cy_7_rt_236,
      O => debounce_button_instance_Result_0(7)
    );
  debounce_button_instance_Mcount_button_counter_cy_7_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(6),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_7_rt_236,
      O => debounce_button_instance_Mcount_button_counter_cy(7)
    );
  debounce_button_instance_Mcount_button_counter_xor_6_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(5),
      LI => debounce_button_instance_Mcount_button_counter_cy_6_rt_237,
      O => debounce_button_instance_Result_0(6)
    );
  debounce_button_instance_Mcount_button_counter_cy_6_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(5),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_6_rt_237,
      O => debounce_button_instance_Mcount_button_counter_cy(6)
    );
  debounce_button_instance_Mcount_button_counter_xor_5_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(4),
      LI => debounce_button_instance_Mcount_button_counter_cy_5_rt_238,
      O => debounce_button_instance_Result_0(5)
    );
  debounce_button_instance_Mcount_button_counter_cy_5_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(4),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_5_rt_238,
      O => debounce_button_instance_Mcount_button_counter_cy(5)
    );
  debounce_button_instance_Mcount_button_counter_xor_4_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(3),
      LI => debounce_button_instance_Mcount_button_counter_cy_4_rt_239,
      O => debounce_button_instance_Result_0(4)
    );
  debounce_button_instance_Mcount_button_counter_cy_4_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(3),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_4_rt_239,
      O => debounce_button_instance_Mcount_button_counter_cy(4)
    );
  debounce_button_instance_Mcount_button_counter_xor_3_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(2),
      LI => debounce_button_instance_Mcount_button_counter_cy_3_rt_240,
      O => debounce_button_instance_Result_0(3)
    );
  debounce_button_instance_Mcount_button_counter_cy_3_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(2),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_3_rt_240,
      O => debounce_button_instance_Mcount_button_counter_cy(3)
    );
  debounce_button_instance_Mcount_button_counter_xor_2_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(1),
      LI => debounce_button_instance_Mcount_button_counter_cy_2_rt_241,
      O => debounce_button_instance_Result_0(2)
    );
  debounce_button_instance_Mcount_button_counter_cy_2_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(1),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_2_rt_241,
      O => debounce_button_instance_Mcount_button_counter_cy(2)
    );
  debounce_button_instance_Mcount_button_counter_xor_1_Q : XORCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(0),
      LI => debounce_button_instance_Mcount_button_counter_cy_1_rt_242,
      O => debounce_button_instance_Result_0(1)
    );
  debounce_button_instance_Mcount_button_counter_cy_1_Q : MUXCY
    port map (
      CI => debounce_button_instance_Mcount_button_counter_cy(0),
      DI => win_OBUF_13,
      S => debounce_button_instance_Mcount_button_counter_cy_1_rt_242,
      O => debounce_button_instance_Mcount_button_counter_cy(1)
    );
  debounce_button_instance_Mcount_button_counter_xor_0_Q : XORCY
    port map (
      CI => win_OBUF_13,
      LI => debounce_button_instance_Mcount_button_counter_lut(0),
      O => debounce_button_instance_Result_0(0)
    );
  debounce_button_instance_Mcount_button_counter_cy_0_Q : MUXCY
    port map (
      CI => win_OBUF_13,
      DI => N0,
      S => debounce_button_instance_Mcount_button_counter_lut(0),
      O => debounce_button_instance_Mcount_button_counter_cy(0)
    );
  debounce_button_instance_reset_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_d1_171,
      Q => debounce_button_instance_reset_d2_170
    );
  debounce_button_instance_button_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_d1_173,
      Q => debounce_button_instance_button_d2_172
    );
  debounce_button_instance_reset_out : FDE
    port map (
      C => clk_BUFGP_0,
      CE => debounce_button_instance_n0055_inv1_cepot_245,
      D => debounce_button_instance_reset_out_dpot_246,
      Q => debounce_button_instance_reset_out_4
    );
  debounce_button_instance_result : FDE
    port map (
      C => clk_BUFGP_0,
      CE => debounce_button_instance_n0051_inv1_cepot_247,
      D => debounce_button_instance_result_dpot_248,
      Q => debounce_button_instance_result_3
    );
  Mram_seven_seg21 : LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      I0 => rand_num(0),
      I1 => rand_num(1),
      I2 => rand_num(2),
      I3 => rand_num(3),
      O => seven_seg_2_OBUF_9
    );
  Mcount_rand_num_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rand_num(1),
      I1 => rand_num(0),
      O => Result(1)
    );
  Mcount_rand_num_val1 : LUT6
    generic map(
      INIT => X"AAAAAAEAAAAAAAAA"
    )
    port map (
      I0 => debounce_button_instance_reset_out_4,
      I1 => debounce_button_instance_result_3,
      I2 => rand_num(3),
      I3 => rand_num(2),
      I4 => rand_num(1),
      I5 => rand_num(0),
      O => Mcount_rand_num_val
    );
  Mram_seven_seg111 : LUT4
    generic map(
      INIT => X"FA8E"
    )
    port map (
      I0 => rand_num(1),
      I1 => rand_num(0),
      I2 => rand_num(2),
      I3 => rand_num(3),
      O => seven_seg_1_OBUF_10
    );
  Mcount_rand_num_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => rand_num(2),
      I1 => rand_num(0),
      I2 => rand_num(1),
      O => Result(2)
    );
  Mcount_rand_num_xor_3_121 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => rand_num(1),
      I1 => rand_num(2),
      I2 => rand_num(0),
      I3 => rand_num(3),
      O => Mcount_rand_num_xor_3_12
    );
  Mram_seven_seg61 : LUT4
    generic map(
      INIT => X"FA14"
    )
    port map (
      I0 => rand_num(1),
      I1 => rand_num(0),
      I2 => rand_num(2),
      I3 => rand_num(3),
      O => seven_seg_6_OBUF_5
    );
  Mcount_rand_num_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => rand_num(3),
      I1 => rand_num(0),
      I2 => rand_num(1),
      I3 => rand_num(2),
      O => Result(3)
    );
  Mram_seven_seg11 : LUT4
    generic map(
      INIT => X"EE91"
    )
    port map (
      I0 => rand_num(2),
      I1 => rand_num(1),
      I2 => rand_num(0),
      I3 => rand_num(3),
      O => seven_seg_0_OBUF_11
    );
  Mram_seven_seg41 : LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      I0 => rand_num(3),
      I1 => rand_num(1),
      I2 => rand_num(2),
      I3 => rand_num(0),
      O => seven_seg_4_OBUF_7
    );
  debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o21 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(17),
      I1 => debounce_button_instance_reset_counter(18),
      I2 => debounce_button_instance_reset_counter(16),
      O => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o2
    );
  debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o22 : LUT6
    generic map(
      INIT => X"01555555FFFFFFFF"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(11),
      I1 => debounce_button_instance_reset_counter(8),
      I2 => debounce_button_instance_reset_counter(7),
      I3 => debounce_button_instance_reset_counter(10),
      I4 => debounce_button_instance_reset_counter(9),
      I5 => debounce_button_instance_reset_counter(12),
      O => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o21_175
    );
  debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o23 : LUT5
    generic map(
      INIT => X"1F000F00"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(13),
      I1 => debounce_button_instance_reset_counter(14),
      I2 => debounce_button_instance_reset_counter(15),
      I3 => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o2,
      I4 => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o21_175,
      O => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o22_176
    );
  debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o21 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => debounce_button_instance_button_counter(17),
      I1 => debounce_button_instance_button_counter(18),
      I2 => debounce_button_instance_button_counter(16),
      O => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o2
    );
  debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o22 : LUT6
    generic map(
      INIT => X"01555555FFFFFFFF"
    )
    port map (
      I0 => debounce_button_instance_button_counter(11),
      I1 => debounce_button_instance_button_counter(8),
      I2 => debounce_button_instance_button_counter(7),
      I3 => debounce_button_instance_button_counter(10),
      I4 => debounce_button_instance_button_counter(9),
      I5 => debounce_button_instance_button_counter(12),
      O => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o21_178
    );
  debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o23 : LUT5
    generic map(
      INIT => X"1F000F00"
    )
    port map (
      I0 => debounce_button_instance_button_counter(13),
      I1 => debounce_button_instance_button_counter(14),
      I2 => debounce_button_instance_button_counter(15),
      I3 => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o2,
      I4 => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o21_178,
      O => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o22_179
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_1
    );
  button_IBUF : IBUF
    port map (
      I => button,
      O => button_IBUF_2
    );
  seven_seg_6_OBUF : OBUF
    port map (
      I => seven_seg_6_OBUF_5,
      O => seven_seg(6)
    );
  seven_seg_5_OBUF : OBUF
    port map (
      I => seven_seg_5_OBUF_6,
      O => seven_seg(5)
    );
  seven_seg_4_OBUF : OBUF
    port map (
      I => seven_seg_4_OBUF_7,
      O => seven_seg(4)
    );
  seven_seg_3_OBUF : OBUF
    port map (
      I => seven_seg_3_OBUF_8,
      O => seven_seg(3)
    );
  seven_seg_2_OBUF : OBUF
    port map (
      I => seven_seg_2_OBUF_9,
      O => seven_seg(2)
    );
  seven_seg_1_OBUF : OBUF
    port map (
      I => seven_seg_1_OBUF_10,
      O => seven_seg(1)
    );
  seven_seg_0_OBUF : OBUF
    port map (
      I => seven_seg_0_OBUF_11,
      O => seven_seg(0)
    );
  win_OBUF : OBUF
    port map (
      I => win_OBUF_13,
      O => win
    );
  led1_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led1
    );
  led2_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led2
    );
  led3_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led3
    );
  led4_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led4
    );
  led5_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led5
    );
  led6_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led6
    );
  led7_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led7
    );
  led8_OBUF : OBUF
    port map (
      I => Mcount_rand_num_xor_3_12,
      O => led8
    );
  debounce_button_instance_Mcount_reset_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(22),
      O => debounce_button_instance_Mcount_reset_counter_cy_22_rt_199
    );
  debounce_button_instance_Mcount_reset_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(21),
      O => debounce_button_instance_Mcount_reset_counter_cy_21_rt_200
    );
  debounce_button_instance_Mcount_reset_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(20),
      O => debounce_button_instance_Mcount_reset_counter_cy_20_rt_201
    );
  debounce_button_instance_Mcount_reset_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(19),
      O => debounce_button_instance_Mcount_reset_counter_cy_19_rt_202
    );
  debounce_button_instance_Mcount_reset_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(18),
      O => debounce_button_instance_Mcount_reset_counter_cy_18_rt_203
    );
  debounce_button_instance_Mcount_reset_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(17),
      O => debounce_button_instance_Mcount_reset_counter_cy_17_rt_204
    );
  debounce_button_instance_Mcount_reset_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(16),
      O => debounce_button_instance_Mcount_reset_counter_cy_16_rt_205
    );
  debounce_button_instance_Mcount_reset_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(15),
      O => debounce_button_instance_Mcount_reset_counter_cy_15_rt_206
    );
  debounce_button_instance_Mcount_reset_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(14),
      O => debounce_button_instance_Mcount_reset_counter_cy_14_rt_207
    );
  debounce_button_instance_Mcount_reset_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(13),
      O => debounce_button_instance_Mcount_reset_counter_cy_13_rt_208
    );
  debounce_button_instance_Mcount_reset_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(12),
      O => debounce_button_instance_Mcount_reset_counter_cy_12_rt_209
    );
  debounce_button_instance_Mcount_reset_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(11),
      O => debounce_button_instance_Mcount_reset_counter_cy_11_rt_210
    );
  debounce_button_instance_Mcount_reset_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(10),
      O => debounce_button_instance_Mcount_reset_counter_cy_10_rt_211
    );
  debounce_button_instance_Mcount_reset_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(9),
      O => debounce_button_instance_Mcount_reset_counter_cy_9_rt_212
    );
  debounce_button_instance_Mcount_reset_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(8),
      O => debounce_button_instance_Mcount_reset_counter_cy_8_rt_213
    );
  debounce_button_instance_Mcount_reset_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(7),
      O => debounce_button_instance_Mcount_reset_counter_cy_7_rt_214
    );
  debounce_button_instance_Mcount_reset_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(6),
      O => debounce_button_instance_Mcount_reset_counter_cy_6_rt_215
    );
  debounce_button_instance_Mcount_reset_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(5),
      O => debounce_button_instance_Mcount_reset_counter_cy_5_rt_216
    );
  debounce_button_instance_Mcount_reset_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(4),
      O => debounce_button_instance_Mcount_reset_counter_cy_4_rt_217
    );
  debounce_button_instance_Mcount_reset_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(3),
      O => debounce_button_instance_Mcount_reset_counter_cy_3_rt_218
    );
  debounce_button_instance_Mcount_reset_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(2),
      O => debounce_button_instance_Mcount_reset_counter_cy_2_rt_219
    );
  debounce_button_instance_Mcount_reset_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(1),
      O => debounce_button_instance_Mcount_reset_counter_cy_1_rt_220
    );
  debounce_button_instance_Mcount_button_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(22),
      O => debounce_button_instance_Mcount_button_counter_cy_22_rt_221
    );
  debounce_button_instance_Mcount_button_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(21),
      O => debounce_button_instance_Mcount_button_counter_cy_21_rt_222
    );
  debounce_button_instance_Mcount_button_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(20),
      O => debounce_button_instance_Mcount_button_counter_cy_20_rt_223
    );
  debounce_button_instance_Mcount_button_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(19),
      O => debounce_button_instance_Mcount_button_counter_cy_19_rt_224
    );
  debounce_button_instance_Mcount_button_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(18),
      O => debounce_button_instance_Mcount_button_counter_cy_18_rt_225
    );
  debounce_button_instance_Mcount_button_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(17),
      O => debounce_button_instance_Mcount_button_counter_cy_17_rt_226
    );
  debounce_button_instance_Mcount_button_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(16),
      O => debounce_button_instance_Mcount_button_counter_cy_16_rt_227
    );
  debounce_button_instance_Mcount_button_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(15),
      O => debounce_button_instance_Mcount_button_counter_cy_15_rt_228
    );
  debounce_button_instance_Mcount_button_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(14),
      O => debounce_button_instance_Mcount_button_counter_cy_14_rt_229
    );
  debounce_button_instance_Mcount_button_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(13),
      O => debounce_button_instance_Mcount_button_counter_cy_13_rt_230
    );
  debounce_button_instance_Mcount_button_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(12),
      O => debounce_button_instance_Mcount_button_counter_cy_12_rt_231
    );
  debounce_button_instance_Mcount_button_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(11),
      O => debounce_button_instance_Mcount_button_counter_cy_11_rt_232
    );
  debounce_button_instance_Mcount_button_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(10),
      O => debounce_button_instance_Mcount_button_counter_cy_10_rt_233
    );
  debounce_button_instance_Mcount_button_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(9),
      O => debounce_button_instance_Mcount_button_counter_cy_9_rt_234
    );
  debounce_button_instance_Mcount_button_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(8),
      O => debounce_button_instance_Mcount_button_counter_cy_8_rt_235
    );
  debounce_button_instance_Mcount_button_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(7),
      O => debounce_button_instance_Mcount_button_counter_cy_7_rt_236
    );
  debounce_button_instance_Mcount_button_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(6),
      O => debounce_button_instance_Mcount_button_counter_cy_6_rt_237
    );
  debounce_button_instance_Mcount_button_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(5),
      O => debounce_button_instance_Mcount_button_counter_cy_5_rt_238
    );
  debounce_button_instance_Mcount_button_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(4),
      O => debounce_button_instance_Mcount_button_counter_cy_4_rt_239
    );
  debounce_button_instance_Mcount_button_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(3),
      O => debounce_button_instance_Mcount_button_counter_cy_3_rt_240
    );
  debounce_button_instance_Mcount_button_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(2),
      O => debounce_button_instance_Mcount_button_counter_cy_2_rt_241
    );
  debounce_button_instance_Mcount_button_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(1),
      O => debounce_button_instance_Mcount_button_counter_cy_1_rt_242
    );
  debounce_button_instance_Mcount_reset_counter_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(23),
      O => debounce_button_instance_Mcount_reset_counter_xor_23_rt_243
    );
  debounce_button_instance_Mcount_button_counter_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_button_counter(23),
      O => debounce_button_instance_Mcount_button_counter_xor_23_rt_244
    );
  debounce_button_instance_n0055_inv1_cepot : LUT6
    generic map(
      INIT => X"FFAA0000FFEA0000"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(21),
      I1 => debounce_button_instance_reset_counter(20),
      I2 => debounce_button_instance_reset_counter(19),
      I3 => debounce_button_instance_reset_counter(22),
      I4 => debounce_button_instance_reset_counter(23),
      I5 => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o22_176,
      O => debounce_button_instance_n0055_inv1_cepot_245
    );
  debounce_button_instance_n0051_inv1_cepot : LUT6
    generic map(
      INIT => X"FFAA0000FFEA0000"
    )
    port map (
      I0 => debounce_button_instance_button_counter(21),
      I1 => debounce_button_instance_button_counter(20),
      I2 => debounce_button_instance_button_counter(19),
      I3 => debounce_button_instance_button_counter(22),
      I4 => debounce_button_instance_button_counter(23),
      I5 => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o22_179,
      O => debounce_button_instance_n0051_inv1_cepot_247
    );
  debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o24_SW0 : LUT3
    generic map(
      INIT => X"7E"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => debounce_button_instance_reset_d2_170,
      I2 => debounce_button_instance_reset_d1_171,
      O => N01
    );
  debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o24_SW1 : LUT5
    generic map(
      INIT => X"D5FFFFEA"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => debounce_button_instance_reset_counter(20),
      I2 => debounce_button_instance_reset_counter(19),
      I3 => debounce_button_instance_reset_d2_170,
      I4 => debounce_button_instance_reset_d1_171,
      O => N1
    );
  debounce_button_instance_Mcount_reset_counter_val241 : LUT6
    generic map(
      INIT => X"FFE0FFE0FFF0EFE0"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(22),
      I1 => debounce_button_instance_reset_counter(21),
      I2 => debounce_button_instance_reset_counter(23),
      I3 => N01,
      I4 => N1,
      I5 => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o22_176,
      O => debounce_button_instance_Mcount_reset_counter_val
    );
  debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o24_SW0 : LUT3
    generic map(
      INIT => X"7E"
    )
    port map (
      I0 => button_IBUF_2,
      I1 => debounce_button_instance_button_d2_172,
      I2 => debounce_button_instance_button_d1_173,
      O => N3
    );
  debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o24_SW1 : LUT5
    generic map(
      INIT => X"D5FFFFEA"
    )
    port map (
      I0 => button_IBUF_2,
      I1 => debounce_button_instance_button_counter(20),
      I2 => debounce_button_instance_button_counter(19),
      I3 => debounce_button_instance_button_d2_172,
      I4 => debounce_button_instance_button_d1_173,
      O => N4
    );
  debounce_button_instance_Mcount_button_counter_val241 : LUT6
    generic map(
      INIT => X"FFE0FFE0FFF0EFE0"
    )
    port map (
      I0 => debounce_button_instance_button_counter(22),
      I1 => debounce_button_instance_button_counter(21),
      I2 => debounce_button_instance_button_counter(23),
      I3 => N3,
      I4 => N4,
      I5 => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o22_179,
      O => debounce_button_instance_Mcount_button_counter_val
    );
  debounce_button_instance_reset_counter_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_0_rstpot_253
    );
  debounce_button_instance_reset_counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_0_rstpot_253,
      Q => debounce_button_instance_reset_counter(0)
    );
  debounce_button_instance_button_counter_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(0),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_0_rstpot_254
    );
  debounce_button_instance_button_counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_0_rstpot_254,
      Q => debounce_button_instance_button_counter(0)
    );
  debounce_button_instance_reset_counter_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_11_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_11_rstpot_255
    );
  debounce_button_instance_reset_counter_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_11_rstpot_255,
      Q => debounce_button_instance_reset_counter(11)
    );
  debounce_button_instance_reset_counter_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_10_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_10_rstpot_256
    );
  debounce_button_instance_reset_counter_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_10_rstpot_256,
      Q => debounce_button_instance_reset_counter(10)
    );
  debounce_button_instance_reset_counter_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_8_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_8_rstpot_257
    );
  debounce_button_instance_reset_counter_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_8_rstpot_257,
      Q => debounce_button_instance_reset_counter(8)
    );
  debounce_button_instance_reset_counter_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_7_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_7_rstpot_258
    );
  debounce_button_instance_reset_counter_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_7_rstpot_258,
      Q => debounce_button_instance_reset_counter(7)
    );
  debounce_button_instance_reset_counter_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_9_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_9_rstpot_259
    );
  debounce_button_instance_reset_counter_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_9_rstpot_259,
      Q => debounce_button_instance_reset_counter(9)
    );
  debounce_button_instance_reset_counter_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_6_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_6_rstpot_260
    );
  debounce_button_instance_reset_counter_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_6_rstpot_260,
      Q => debounce_button_instance_reset_counter(6)
    );
  debounce_button_instance_reset_counter_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_5_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_5_rstpot_261
    );
  debounce_button_instance_reset_counter_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_5_rstpot_261,
      Q => debounce_button_instance_reset_counter(5)
    );
  debounce_button_instance_reset_counter_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_4_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_4_rstpot_262
    );
  debounce_button_instance_reset_counter_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_4_rstpot_262,
      Q => debounce_button_instance_reset_counter(4)
    );
  debounce_button_instance_reset_counter_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_3_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_3_rstpot_263
    );
  debounce_button_instance_reset_counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_3_rstpot_263,
      Q => debounce_button_instance_reset_counter(3)
    );
  debounce_button_instance_reset_counter_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_1_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_1_rstpot_264
    );
  debounce_button_instance_reset_counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_1_rstpot_264,
      Q => debounce_button_instance_reset_counter(1)
    );
  debounce_button_instance_reset_counter_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_2_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_2_rstpot_265
    );
  debounce_button_instance_reset_counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_2_rstpot_265,
      Q => debounce_button_instance_reset_counter(2)
    );
  debounce_button_instance_button_counter_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(11),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_11_rstpot_266
    );
  debounce_button_instance_button_counter_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_11_rstpot_266,
      Q => debounce_button_instance_button_counter(11)
    );
  debounce_button_instance_button_counter_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(10),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_10_rstpot_267
    );
  debounce_button_instance_button_counter_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_10_rstpot_267,
      Q => debounce_button_instance_button_counter(10)
    );
  debounce_button_instance_button_counter_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(9),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_9_rstpot_268
    );
  debounce_button_instance_button_counter_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_9_rstpot_268,
      Q => debounce_button_instance_button_counter(9)
    );
  debounce_button_instance_button_counter_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(8),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_8_rstpot_269
    );
  debounce_button_instance_button_counter_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_8_rstpot_269,
      Q => debounce_button_instance_button_counter(8)
    );
  debounce_button_instance_button_counter_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(7),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_7_rstpot_270
    );
  debounce_button_instance_button_counter_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_7_rstpot_270,
      Q => debounce_button_instance_button_counter(7)
    );
  debounce_button_instance_button_counter_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(5),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_5_rstpot_271
    );
  debounce_button_instance_button_counter_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_5_rstpot_271,
      Q => debounce_button_instance_button_counter(5)
    );
  debounce_button_instance_button_counter_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(4),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_4_rstpot_272
    );
  debounce_button_instance_button_counter_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_4_rstpot_272,
      Q => debounce_button_instance_button_counter(4)
    );
  debounce_button_instance_button_counter_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(6),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_6_rstpot_273
    );
  debounce_button_instance_button_counter_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_6_rstpot_273,
      Q => debounce_button_instance_button_counter(6)
    );
  debounce_button_instance_button_counter_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(3),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_3_rstpot_274
    );
  debounce_button_instance_button_counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_3_rstpot_274,
      Q => debounce_button_instance_button_counter(3)
    );
  debounce_button_instance_button_counter_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(2),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_2_rstpot_275
    );
  debounce_button_instance_button_counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_2_rstpot_275,
      Q => debounce_button_instance_button_counter(2)
    );
  debounce_button_instance_button_counter_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(1),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_1_rstpot_276
    );
  debounce_button_instance_button_counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_1_rstpot_276,
      Q => debounce_button_instance_button_counter(1)
    );
  debounce_button_instance_reset_counter_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_12_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val,
      O => debounce_button_instance_reset_counter_12_rstpot_277
    );
  debounce_button_instance_reset_counter_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_12_rstpot_277,
      Q => debounce_button_instance_reset_counter(12)
    );
  debounce_button_instance_button_counter_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(12),
      I1 => debounce_button_instance_Mcount_button_counter_val,
      O => debounce_button_instance_button_counter_12_rstpot_278
    );
  debounce_button_instance_button_counter_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_12_rstpot_278,
      Q => debounce_button_instance_button_counter(12)
    );
  debounce_button_instance_reset_counter_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_13_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_13_rstpot_279
    );
  debounce_button_instance_reset_counter_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_13_rstpot_279,
      Q => debounce_button_instance_reset_counter(13)
    );
  debounce_button_instance_button_counter_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(13),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_13_rstpot_280
    );
  debounce_button_instance_button_counter_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_13_rstpot_280,
      Q => debounce_button_instance_button_counter(13)
    );
  debounce_button_instance_reset_counter_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_14_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_14_rstpot_281
    );
  debounce_button_instance_reset_counter_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_14_rstpot_281,
      Q => debounce_button_instance_reset_counter(14)
    );
  debounce_button_instance_button_counter_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(14),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_14_rstpot_282
    );
  debounce_button_instance_button_counter_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_14_rstpot_282,
      Q => debounce_button_instance_button_counter(14)
    );
  debounce_button_instance_reset_counter_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_15_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_15_rstpot_283
    );
  debounce_button_instance_reset_counter_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_15_rstpot_283,
      Q => debounce_button_instance_reset_counter(15)
    );
  debounce_button_instance_button_counter_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(15),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_15_rstpot_284
    );
  debounce_button_instance_button_counter_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_15_rstpot_284,
      Q => debounce_button_instance_button_counter(15)
    );
  debounce_button_instance_reset_counter_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_16_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_16_rstpot_285
    );
  debounce_button_instance_reset_counter_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_16_rstpot_285,
      Q => debounce_button_instance_reset_counter(16)
    );
  debounce_button_instance_button_counter_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(16),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_16_rstpot_286
    );
  debounce_button_instance_button_counter_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_16_rstpot_286,
      Q => debounce_button_instance_button_counter(16)
    );
  debounce_button_instance_reset_counter_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_17_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_17_rstpot_287
    );
  debounce_button_instance_reset_counter_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_17_rstpot_287,
      Q => debounce_button_instance_reset_counter(17)
    );
  debounce_button_instance_button_counter_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(17),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_17_rstpot_288
    );
  debounce_button_instance_button_counter_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_17_rstpot_288,
      Q => debounce_button_instance_button_counter(17)
    );
  debounce_button_instance_reset_counter_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_18_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_18_rstpot_289
    );
  debounce_button_instance_reset_counter_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_18_rstpot_289,
      Q => debounce_button_instance_reset_counter(18)
    );
  debounce_button_instance_button_counter_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(18),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_18_rstpot_290
    );
  debounce_button_instance_button_counter_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_18_rstpot_290,
      Q => debounce_button_instance_button_counter(18)
    );
  debounce_button_instance_reset_counter_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_19_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_19_rstpot_291
    );
  debounce_button_instance_reset_counter_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_19_rstpot_291,
      Q => debounce_button_instance_reset_counter(19)
    );
  debounce_button_instance_button_counter_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(19),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_19_rstpot_292
    );
  debounce_button_instance_button_counter_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_19_rstpot_292,
      Q => debounce_button_instance_button_counter(19)
    );
  debounce_button_instance_reset_counter_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_20_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_20_rstpot_293
    );
  debounce_button_instance_reset_counter_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_20_rstpot_293,
      Q => debounce_button_instance_reset_counter(20)
    );
  debounce_button_instance_button_counter_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(20),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_20_rstpot_294
    );
  debounce_button_instance_button_counter_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_20_rstpot_294,
      Q => debounce_button_instance_button_counter(20)
    );
  debounce_button_instance_reset_counter_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_21_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_21_rstpot_295
    );
  debounce_button_instance_reset_counter_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_21_rstpot_295,
      Q => debounce_button_instance_reset_counter(21)
    );
  debounce_button_instance_button_counter_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(21),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_21_rstpot_296
    );
  debounce_button_instance_button_counter_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_21_rstpot_296,
      Q => debounce_button_instance_button_counter(21)
    );
  debounce_button_instance_reset_counter_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_22_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_22_rstpot_297
    );
  debounce_button_instance_reset_counter_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_22_rstpot_297,
      Q => debounce_button_instance_reset_counter(22)
    );
  debounce_button_instance_button_counter_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(22),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_22_rstpot_298
    );
  debounce_button_instance_button_counter_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_22_rstpot_298,
      Q => debounce_button_instance_button_counter(22)
    );
  debounce_button_instance_reset_counter_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_23_1,
      I1 => debounce_button_instance_Mcount_reset_counter_val241_301,
      O => debounce_button_instance_reset_counter_23_rstpot_299
    );
  debounce_button_instance_reset_counter_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_reset_counter_23_rstpot_299,
      Q => debounce_button_instance_reset_counter(23)
    );
  debounce_button_instance_button_counter_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => debounce_button_instance_Result_0(23),
      I1 => debounce_button_instance_Mcount_button_counter_val241_302,
      O => debounce_button_instance_button_counter_23_rstpot_300
    );
  debounce_button_instance_button_counter_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => debounce_button_instance_button_counter_23_rstpot_300,
      Q => debounce_button_instance_button_counter(23)
    );
  debounce_button_instance_reset_out_dpot : LUT4
    generic map(
      INIT => X"EAA8"
    )
    port map (
      I0 => debounce_button_instance_reset_out_4,
      I1 => reset_IBUF_1,
      I2 => debounce_button_instance_reset_d1_171,
      I3 => debounce_button_instance_reset_d2_170,
      O => debounce_button_instance_reset_out_dpot_246
    );
  debounce_button_instance_result_dpot : LUT4
    generic map(
      INIT => X"EAA8"
    )
    port map (
      I0 => debounce_button_instance_result_3,
      I1 => button_IBUF_2,
      I2 => debounce_button_instance_button_d1_173,
      I3 => debounce_button_instance_button_d2_172,
      O => debounce_button_instance_result_dpot_248
    );
  Mram_seven_seg31 : LUT4
    generic map(
      INIT => X"FA86"
    )
    port map (
      I0 => rand_num(2),
      I1 => rand_num(0),
      I2 => rand_num(1),
      I3 => rand_num(3),
      O => seven_seg_3_OBUF_8
    );
  Mram_seven_seg51 : LUT4
    generic map(
      INIT => X"EE28"
    )
    port map (
      I0 => rand_num(2),
      I1 => rand_num(1),
      I2 => rand_num(0),
      I3 => rand_num(3),
      O => seven_seg_5_OBUF_6
    );
  debounce_button_instance_Mcount_reset_counter_val241_1 : LUT6
    generic map(
      INIT => X"FFE0FFE0FFF0EFE0"
    )
    port map (
      I0 => debounce_button_instance_reset_counter(22),
      I1 => debounce_button_instance_reset_counter(21),
      I2 => debounce_button_instance_reset_counter(23),
      I3 => N01,
      I4 => N1,
      I5 => debounce_button_instance_reset_counter_23_PWR_5_o_LessThan_5_o22_176,
      O => debounce_button_instance_Mcount_reset_counter_val241_301
    );
  debounce_button_instance_Mcount_button_counter_val241_1 : LUT6
    generic map(
      INIT => X"FFE0FFE0FFF0EFE0"
    )
    port map (
      I0 => debounce_button_instance_button_counter(22),
      I1 => debounce_button_instance_button_counter(21),
      I2 => debounce_button_instance_button_counter(23),
      I3 => N3,
      I4 => N4,
      I5 => debounce_button_instance_button_counter_23_PWR_5_o_LessThan_1_o22_179,
      O => debounce_button_instance_Mcount_button_counter_val241_302
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  debounce_button_instance_Mcount_reset_counter_lut_0_INV_0 : INV
    port map (
      I => debounce_button_instance_reset_counter(0),
      O => debounce_button_instance_Mcount_reset_counter_lut(0)
    );
  debounce_button_instance_Mcount_button_counter_lut_0_INV_0 : INV
    port map (
      I => debounce_button_instance_button_counter(0),
      O => debounce_button_instance_Mcount_button_counter_lut(0)
    );
  Mcount_rand_num_xor_0_11_INV_0 : INV
    port map (
      I => rand_num(0),
      O => Result(0)
    );
  debounce_button_instance_Mshreg_reset_d1 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => win_OBUF_13,
      A1 => win_OBUF_13,
      A2 => win_OBUF_13,
      A3 => win_OBUF_13,
      CE => N0,
      CLK => clk_BUFGP_0,
      D => reset_IBUF_1,
      Q => debounce_button_instance_Mshreg_reset_d1_303,
      Q15 => NLW_debounce_button_instance_Mshreg_reset_d1_Q15_UNCONNECTED
    );
  debounce_button_instance_reset_d1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => N0,
      D => debounce_button_instance_Mshreg_reset_d1_303,
      Q => debounce_button_instance_reset_d1_171
    );
  debounce_button_instance_Mshreg_button_d1 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => win_OBUF_13,
      A1 => win_OBUF_13,
      A2 => win_OBUF_13,
      A3 => win_OBUF_13,
      CE => N0,
      CLK => clk_BUFGP_0,
      D => button_IBUF_2,
      Q => debounce_button_instance_Mshreg_button_d1_304,
      Q15 => NLW_debounce_button_instance_Mshreg_button_d1_Q15_UNCONNECTED
    );
  debounce_button_instance_button_d1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => N0,
      D => debounce_button_instance_Mshreg_button_d1_304,
      Q => debounce_button_instance_button_d1_173
    );

end Structure;

