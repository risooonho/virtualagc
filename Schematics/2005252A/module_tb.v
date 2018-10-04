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

reg A2X_ = 0, CGA7 = 0, CGMC = 0, CI = 0, CT_ = 0, CYL_ = 0, CYR_ = 0,
  EAC_ = 0, EAD09 = 0, EAD09_ = 0, EAD10 = 0, EAD10_ = 0, EAD11 = 0, EAD11_ = 0,
  EDOP_ = 0, GINH = 0, L15_ = 0, L2GD_ = 0, NEAC = 0, P04_ = 0, PIFL_ = 0,
  PIPPLS_ = 0, RA_ = 0, RB_ = 0, RCHG_ = 0, RC_ = 0, RG_ = 0, RL10BB = 0,
  RL_ = 0, RQ_ = 0, RSCG_ = 0, RT_ = 0, RUS_ = 0, RU_ = 0, RZ_ = 0, SB2_ = 0,
  SHIFT = 0, SR_ = 0, STFET1_ = 0, T10_ = 0, TT_ = 0, U2BBK = 0, WA_ = 0,
  WB_ = 0, WCHG_ = 0, WGA_ = 0, WG_ = 0, WL_ = 0, WQ_ = 0, WSCG_ = 0, WS_ = 0,
  WT_ = 0, WY12_ = 0, WYD_ = 0, WY_ = 0, WZ_ = 0, XB0_ = 0, XB1_ = 0, XB2_ = 0,
  XB3_ = 0, XB4_ = 0, XB5_ = 0, XB6_ = 0, XT0_ = 0, ZAP_ = 0;

wire A2XG_, CAG, CBG, CEBG, CFBG, CGG, CI01_, CIFF, CINORM, CLG1G, CLG2G,
  CQG, CSG, CUG, CZG, G2LSG, G2LSG_, L2GDG_, MRAG, MRGG, MRLG, MRULOG,
  MWAG, MWBBEG, MWBG, MWEBG, MWFBG, MWG, MWLG, MWQG, MWSG, MWYG, MWZG,
  P04A, PIPSAM, RAG_, RBBEG_, RBBK, RBHG_, RBLG_, RCG_, REBG_, RFBG_, RGG1,
  RGG_, RLG1, RLG2, RLG3, RLG_, RQG_, RUG_, RULOG_, RUSG_, RZG_, WAG_,
  WALSG, WALSG_, WBBEG_, WBG_, WEBG_, WEDOPG_, WFBG_, WG1G_, WG2G_, WG3G_,
  WG4G_, WG5G_, WGNORM, WLG_, WQG_, WSG_, WYDG_, WYDLOG_, WYHIG_, WYLOG_,
  WZG_, YT0, YT0E, YT0_, YT1, YT1E, YT1_, YT2, YT2E, YT2_, YT3, YT3E, YT3_,
  YT4, YT4E, YT4_, YT5, YT5E, YT5_, YT6, YT6E, YT6_, YT7, YT7E, YT7_;

A7 iA7 (
  rst, A2X_, CGA7, CGMC, CI, CT_, CYL_, CYR_, EAC_, EAD09, EAD09_, EAD10,
  EAD10_, EAD11, EAD11_, EDOP_, GINH, L15_, L2GD_, NEAC, P04_, PIFL_, PIPPLS_,
  RA_, RB_, RCHG_, RC_, RG_, RL10BB, RL_, RQ_, RSCG_, RT_, RUS_, RU_, RZ_,
  SB2_, SHIFT, SR_, STFET1_, T10_, TT_, U2BBK, WA_, WB_, WCHG_, WGA_, WG_,
  WL_, WQ_, WSCG_, WS_, WT_, WY12_, WYD_, WY_, WZ_, XB0_, XB1_, XB2_, XB3_,
  XB4_, XB5_, XB6_, XT0_, ZAP_, CIFF, CINORM, CSG, CUG, G2LSG, MRAG, MRGG,
  MRLG, MRULOG, MWAG, MWBBEG, MWBG, MWEBG, MWFBG, MWG, MWLG, MWQG, MWSG,
  MWYG, MWZG, P04A, RBBK, RGG1, RGG_, RLG1, RLG2, RLG3, RLG_, WALSG, WSG_,
  YT0E, YT1E, YT2E, YT3E, YT4E, YT5E, YT6E, YT7E, A2XG_, CAG, CBG, CEBG,
  CFBG, CGG, CI01_, CLG1G, CLG2G, CQG, CZG, G2LSG_, L2GDG_, PIPSAM, RAG_,
  RBBEG_, RBHG_, RBLG_, RCG_, REBG_, RFBG_, RQG_, RUG_, RULOG_, RUSG_, RZG_,
  WAG_, WALSG_, WBBEG_, WBG_, WEBG_, WEDOPG_, WFBG_, WG1G_, WG2G_, WG3G_,
  WG4G_, WG5G_, WGNORM, WLG_, WQG_, WYDG_, WYDLOG_, WYHIG_, WYLOG_, WZG_,
  YT0, YT0_, YT1, YT1_, YT2, YT2_, YT3, YT3_, YT4, YT4_, YT5, YT5_, YT6,
  YT6_, YT7, YT7_
);

initial $timeformat(-9, 0, " ns", 10);
initial $monitor("%t: %d", $time, CLOCK);

endmodule
