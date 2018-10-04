// Verilog testbench created by dumbTestbench.py
`timescale 100ns / 1ns

module agc;

reg rst = 1;
reg STRT2 = 1;
initial
  begin
    $dumpfile("agc.lxt2");
    $dumpvars(0, agc);
    # 1 rst = 0;
    # 50 STRT2 = 0;
    # 1000 $finish;
  end

reg CLOCK = 0;
always #2.44140625 CLOCK = !CLOCK;

reg C32M = 0, C32P = 0, C33M = 0, C33P = 0, C34M = 0, C34P = 0, C35M = 0,
  C35P = 0, C36M = 0, C36P = 0, C37M = 0, C40M = 0, C41M = 0, C42M = 0,
  C43M = 0, C44M = 0, CA2_ = 0, CA3_ = 0, CAD1 = 0, CAD2 = 0, CAD3 = 0,
  CEBG = 0, CFBG = 0, CGA15 = 0, DLKPLS = 0, E5 = 0, E6 = 0, E7_ = 0, GOJAM = 0,
  HNDRPT = 0, INCSET_ = 0, KRPT = 0, KYRPT1 = 0, KYRPT2 = 0, MKRPT = 0,
  OVF_ = 0, R6 = 0, RADRPT = 0, RB1F = 0, RBBEG_ = 0, REBG_ = 0, RFBG_ = 0,
  RRPA = 0, RSTRT = 0, S10 = 0, S10_ = 0, S11_ = 0, S12_ = 0, STRGAT = 0,
  SUMA01_ = 0, SUMA02_ = 0, SUMA03_ = 0, SUMA11_ = 0, SUMA12_ = 0, SUMA13_ = 0,
  SUMA14_ = 0, SUMA16_ = 0, SUMB01_ = 0, SUMB02_ = 0, SUMB03_ = 0, SUMB11_ = 0,
  SUMB12_ = 0, SUMB13_ = 0, SUMB14_ = 0, SUMB16_ = 0, T10 = 0, T12A = 0,
  U2BBKG_ = 0, UPRUPT = 0, WBBEG_ = 0, WEBG_ = 0, WFBG_ = 0, WL01_ = 0,
  WL02_ = 0, WL03_ = 0, WL09_ = 0, WL10_ = 0, WL11_ = 0, WL12_ = 0, WL13_ = 0,
  WL14_ = 0, WL16_ = 0, WOVR = 0, XB0_ = 0, XB1_ = 0, XB4_ = 0, XB6_ = 0,
  XB7_ = 0, XT0_ = 0, XT1_ = 0, XT2_ = 0, XT3_ = 0, XT4_ = 0, XT5_ = 0,
  ZOUT_ = 0;

wire BBK1, BBK2, BBK3, BK16, DNRPTA, DRPRST, EB10, EB10_, EB11, EB11_,
  EB9, EB9_, F11, F11_, F12, F12_, F13, F13_, F14, F14_, F15, F15_, F16,
  F16_, FB11, FB11_, FB12, FB12_, FB13, FB13_, FB14, FB14_, FB16, FB16_,
  HIMOD, KRPTA_, KY1RST, KY2RST, LOMOD, MCDU, MCDU_, MINC, MINC_, PCDU,
  PCDU_, PRPOR1, PRPOR2, PRPOR3, PRPOR4, RL01_, RL02_, RL03_, RL09_, RL10_,
  RL11_, RL12_, RL13_, RL14_, RL16_, ROPER, ROPES, ROPET, RPTA12, RPTAD3,
  RPTAD4, RPTAD5, RPTAD6, RRPA1_, RUPTOR_, STR14, STR19, STR210, STR311,
  STR412, STR58, STR912, T6RPT, WOVR_;

A15 iA15 (
  rst, C32M, C32P, C33M, C33P, C34M, C34P, C35M, C35P, C36M, C36P, C37M,
  C40M, C41M, C42M, C43M, C44M, CA2_, CA3_, CAD1, CAD2, CAD3, CEBG, CFBG,
  CGA15, DLKPLS, E5, E6, E7_, GOJAM, HNDRPT, INCSET_, KRPT, KYRPT1, KYRPT2,
  MKRPT, OVF_, R6, RADRPT, RB1F, RBBEG_, REBG_, RFBG_, RRPA, RSTRT, S10,
  S10_, S11_, S12_, STRGAT, SUMA01_, SUMA02_, SUMA03_, SUMA11_, SUMA12_,
  SUMA13_, SUMA14_, SUMA16_, SUMB01_, SUMB02_, SUMB03_, SUMB11_, SUMB12_,
  SUMB13_, SUMB14_, SUMB16_, T10, T12A, U2BBKG_, UPRUPT, WBBEG_, WEBG_, WFBG_,
  WL01_, WL02_, WL03_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WL16_, WOVR,
  XB0_, XB1_, XB4_, XB6_, XB7_, XT0_, XT1_, XT2_, XT3_, XT4_, XT5_, ZOUT_,
  BBK1, BBK2, BBK3, DNRPTA, F11, F11_, F12, F12_, F13, F13_, F14, F14_, F15,
  F15_, F16, F16_, HIMOD, KRPTA_, LOMOD, PRPOR1, PRPOR2, PRPOR3, PRPOR4,
  RL01_, RL02_, RL03_, RL09_, RL10_, RL11_, RL12_, RL13_, RL14_, RL16_, ROPER,
  ROPES, ROPET, RPTA12, RPTAD3, RRPA1_, STR14, STR19, STR210, STR311, STR412,
  STR58, STR912, BK16, DRPRST, EB10, EB10_, EB11, EB11_, EB9, EB9_, FB11,
  FB11_, FB12, FB12_, FB13, FB13_, FB14, FB14_, FB16, FB16_, KY1RST, KY2RST,
  MCDU, MCDU_, MINC, MINC_, PCDU, PCDU_, RPTAD4, RPTAD5, RPTAD6, RUPTOR_,
  T6RPT, WOVR_
);

initial $timeformat(-9, 0, " ns", 10);
initial $monitor("%t: %d", $time, CLOCK);

endmodule
