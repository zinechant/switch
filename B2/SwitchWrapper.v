module Switch( // @[:@3.2]
  input  [1:0]  io_inAddr_0, // @[:@6.4]
  input  [1:0]  io_inAddr_1, // @[:@6.4]
  input  [1:0]  io_inAddr_2, // @[:@6.4]
  input  [1:0]  io_inAddr_3, // @[:@6.4]
  input  [47:0] io_inData_0, // @[:@6.4]
  input  [47:0] io_inData_1, // @[:@6.4]
  input  [47:0] io_inData_2, // @[:@6.4]
  input  [47:0] io_inData_3, // @[:@6.4]
  input         io_inValid_0, // @[:@6.4]
  input         io_inValid_1, // @[:@6.4]
  input         io_inValid_2, // @[:@6.4]
  input         io_inValid_3, // @[:@6.4]
  output        io_outAck_0, // @[:@6.4]
  output        io_outAck_1, // @[:@6.4]
  output        io_outAck_2, // @[:@6.4]
  output        io_outAck_3, // @[:@6.4]
  output [47:0] io_outData_0, // @[:@6.4]
  output [47:0] io_outData_1, // @[:@6.4]
  output [47:0] io_outData_2, // @[:@6.4]
  output [47:0] io_outData_3, // @[:@6.4]
  output        io_outValid_0, // @[:@6.4]
  output        io_outValid_1, // @[:@6.4]
  output        io_outValid_2, // @[:@6.4]
  output        io_outValid_3 // @[:@6.4]
);
  wire  _T_194; // @[Switch.scala 30:53:@10.4]
  wire  valid_0_0; // @[Switch.scala 30:36:@11.4]
  wire  _T_197; // @[Switch.scala 30:53:@13.4]
  wire  valid_0_1; // @[Switch.scala 30:36:@14.4]
  wire  _T_200; // @[Switch.scala 30:53:@16.4]
  wire  valid_0_2; // @[Switch.scala 30:36:@17.4]
  wire  _T_203; // @[Switch.scala 30:53:@19.4]
  wire  valid_0_3; // @[Switch.scala 30:36:@20.4]
  wire [1:0] _T_209; // @[Mux.scala 31:69:@22.4]
  wire [1:0] _T_210; // @[Mux.scala 31:69:@23.4]
  wire [1:0] select_0; // @[Mux.scala 31:69:@24.4]
  wire [47:0] _GEN_1; // @[Switch.scala 33:19:@26.4]
  wire [47:0] _GEN_2; // @[Switch.scala 33:19:@26.4]
  wire [3:0] _T_215; // @[Switch.scala 34:32:@29.4]
  wire  _T_219; // @[Switch.scala 30:53:@32.4]
  wire  valid_1_0; // @[Switch.scala 30:36:@33.4]
  wire  _T_222; // @[Switch.scala 30:53:@35.4]
  wire  valid_1_1; // @[Switch.scala 30:36:@36.4]
  wire  _T_225; // @[Switch.scala 30:53:@38.4]
  wire  valid_1_2; // @[Switch.scala 30:36:@39.4]
  wire  _T_228; // @[Switch.scala 30:53:@41.4]
  wire  valid_1_3; // @[Switch.scala 30:36:@42.4]
  wire [1:0] _T_234; // @[Mux.scala 31:69:@44.4]
  wire [1:0] _T_235; // @[Mux.scala 31:69:@45.4]
  wire [1:0] select_1; // @[Mux.scala 31:69:@46.4]
  wire [47:0] _GEN_5; // @[Switch.scala 33:19:@48.4]
  wire [47:0] _GEN_6; // @[Switch.scala 33:19:@48.4]
  wire [3:0] _T_240; // @[Switch.scala 34:32:@51.4]
  wire  _T_244; // @[Switch.scala 30:53:@54.4]
  wire  valid_2_0; // @[Switch.scala 30:36:@55.4]
  wire  _T_247; // @[Switch.scala 30:53:@57.4]
  wire  valid_2_1; // @[Switch.scala 30:36:@58.4]
  wire  _T_250; // @[Switch.scala 30:53:@60.4]
  wire  valid_2_2; // @[Switch.scala 30:36:@61.4]
  wire  _T_253; // @[Switch.scala 30:53:@63.4]
  wire  valid_2_3; // @[Switch.scala 30:36:@64.4]
  wire [1:0] _T_259; // @[Mux.scala 31:69:@66.4]
  wire [1:0] _T_260; // @[Mux.scala 31:69:@67.4]
  wire [1:0] select_2; // @[Mux.scala 31:69:@68.4]
  wire [47:0] _GEN_9; // @[Switch.scala 33:19:@70.4]
  wire [47:0] _GEN_10; // @[Switch.scala 33:19:@70.4]
  wire [3:0] _T_265; // @[Switch.scala 34:32:@73.4]
  wire  _T_269; // @[Switch.scala 30:53:@76.4]
  wire  valid_3_0; // @[Switch.scala 30:36:@77.4]
  wire  _T_272; // @[Switch.scala 30:53:@79.4]
  wire  valid_3_1; // @[Switch.scala 30:36:@80.4]
  wire  _T_275; // @[Switch.scala 30:53:@82.4]
  wire  valid_3_2; // @[Switch.scala 30:36:@83.4]
  wire  _T_278; // @[Switch.scala 30:53:@85.4]
  wire  valid_3_3; // @[Switch.scala 30:36:@86.4]
  wire [1:0] _T_284; // @[Mux.scala 31:69:@88.4]
  wire [1:0] _T_285; // @[Mux.scala 31:69:@89.4]
  wire [1:0] select_3; // @[Mux.scala 31:69:@90.4]
  wire [47:0] _GEN_13; // @[Switch.scala 33:19:@92.4]
  wire [47:0] _GEN_14; // @[Switch.scala 33:19:@92.4]
  wire [3:0] _T_290; // @[Switch.scala 34:32:@95.4]
  wire  _T_420; // @[Switch.scala 41:52:@99.4]
  wire  output_0_0; // @[Switch.scala 41:38:@100.4]
  wire  _T_423; // @[Switch.scala 41:52:@102.4]
  wire  output_0_1; // @[Switch.scala 41:38:@103.4]
  wire  _T_426; // @[Switch.scala 41:52:@105.4]
  wire  output_0_2; // @[Switch.scala 41:38:@106.4]
  wire  _T_429; // @[Switch.scala 41:52:@108.4]
  wire  output_0_3; // @[Switch.scala 41:38:@109.4]
  wire [3:0] _T_433; // @[Switch.scala 43:31:@113.4]
  wire  _T_437; // @[Switch.scala 41:52:@116.4]
  wire  output_1_0; // @[Switch.scala 41:38:@117.4]
  wire  _T_440; // @[Switch.scala 41:52:@119.4]
  wire  output_1_1; // @[Switch.scala 41:38:@120.4]
  wire  _T_443; // @[Switch.scala 41:52:@122.4]
  wire  output_1_2; // @[Switch.scala 41:38:@123.4]
  wire  _T_446; // @[Switch.scala 41:52:@125.4]
  wire  output_1_3; // @[Switch.scala 41:38:@126.4]
  wire [3:0] _T_450; // @[Switch.scala 43:31:@130.4]
  wire  _T_454; // @[Switch.scala 41:52:@133.4]
  wire  output_2_0; // @[Switch.scala 41:38:@134.4]
  wire  _T_457; // @[Switch.scala 41:52:@136.4]
  wire  output_2_1; // @[Switch.scala 41:38:@137.4]
  wire  _T_460; // @[Switch.scala 41:52:@139.4]
  wire  output_2_2; // @[Switch.scala 41:38:@140.4]
  wire  _T_463; // @[Switch.scala 41:52:@142.4]
  wire  output_2_3; // @[Switch.scala 41:38:@143.4]
  wire [3:0] _T_467; // @[Switch.scala 43:31:@147.4]
  wire  _T_471; // @[Switch.scala 41:52:@150.4]
  wire  output_3_0; // @[Switch.scala 41:38:@151.4]
  wire  _T_474; // @[Switch.scala 41:52:@153.4]
  wire  output_3_1; // @[Switch.scala 41:38:@154.4]
  wire  _T_477; // @[Switch.scala 41:52:@156.4]
  wire  output_3_2; // @[Switch.scala 41:38:@157.4]
  wire  _T_480; // @[Switch.scala 41:52:@159.4]
  wire  output_3_3; // @[Switch.scala 41:38:@160.4]
  wire [3:0] _T_484; // @[Switch.scala 43:31:@164.4]
  assign _T_194 = io_inAddr_0 == 2'h0; // @[Switch.scala 30:53:@10.4]
  assign valid_0_0 = io_inValid_0 & _T_194; // @[Switch.scala 30:36:@11.4]
  assign _T_197 = io_inAddr_1 == 2'h0; // @[Switch.scala 30:53:@13.4]
  assign valid_0_1 = io_inValid_1 & _T_197; // @[Switch.scala 30:36:@14.4]
  assign _T_200 = io_inAddr_2 == 2'h0; // @[Switch.scala 30:53:@16.4]
  assign valid_0_2 = io_inValid_2 & _T_200; // @[Switch.scala 30:36:@17.4]
  assign _T_203 = io_inAddr_3 == 2'h0; // @[Switch.scala 30:53:@19.4]
  assign valid_0_3 = io_inValid_3 & _T_203; // @[Switch.scala 30:36:@20.4]
  assign _T_209 = valid_0_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:@22.4]
  assign _T_210 = valid_0_1 ? 2'h1 : _T_209; // @[Mux.scala 31:69:@23.4]
  assign select_0 = valid_0_0 ? 2'h0 : _T_210; // @[Mux.scala 31:69:@24.4]
  assign _GEN_1 = 2'h1 == select_0 ? io_inData_1 : io_inData_0; // @[Switch.scala 33:19:@26.4]
  assign _GEN_2 = 2'h2 == select_0 ? io_inData_2 : _GEN_1; // @[Switch.scala 33:19:@26.4]
  assign _T_215 = {valid_0_3,valid_0_2,valid_0_1,valid_0_0}; // @[Switch.scala 34:32:@29.4]
  assign _T_219 = io_inAddr_0 == 2'h1; // @[Switch.scala 30:53:@32.4]
  assign valid_1_0 = io_inValid_0 & _T_219; // @[Switch.scala 30:36:@33.4]
  assign _T_222 = io_inAddr_1 == 2'h1; // @[Switch.scala 30:53:@35.4]
  assign valid_1_1 = io_inValid_1 & _T_222; // @[Switch.scala 30:36:@36.4]
  assign _T_225 = io_inAddr_2 == 2'h1; // @[Switch.scala 30:53:@38.4]
  assign valid_1_2 = io_inValid_2 & _T_225; // @[Switch.scala 30:36:@39.4]
  assign _T_228 = io_inAddr_3 == 2'h1; // @[Switch.scala 30:53:@41.4]
  assign valid_1_3 = io_inValid_3 & _T_228; // @[Switch.scala 30:36:@42.4]
  assign _T_234 = valid_1_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:@44.4]
  assign _T_235 = valid_1_1 ? 2'h1 : _T_234; // @[Mux.scala 31:69:@45.4]
  assign select_1 = valid_1_0 ? 2'h0 : _T_235; // @[Mux.scala 31:69:@46.4]
  assign _GEN_5 = 2'h1 == select_1 ? io_inData_1 : io_inData_0; // @[Switch.scala 33:19:@48.4]
  assign _GEN_6 = 2'h2 == select_1 ? io_inData_2 : _GEN_5; // @[Switch.scala 33:19:@48.4]
  assign _T_240 = {valid_1_3,valid_1_2,valid_1_1,valid_1_0}; // @[Switch.scala 34:32:@51.4]
  assign _T_244 = io_inAddr_0 == 2'h2; // @[Switch.scala 30:53:@54.4]
  assign valid_2_0 = io_inValid_0 & _T_244; // @[Switch.scala 30:36:@55.4]
  assign _T_247 = io_inAddr_1 == 2'h2; // @[Switch.scala 30:53:@57.4]
  assign valid_2_1 = io_inValid_1 & _T_247; // @[Switch.scala 30:36:@58.4]
  assign _T_250 = io_inAddr_2 == 2'h2; // @[Switch.scala 30:53:@60.4]
  assign valid_2_2 = io_inValid_2 & _T_250; // @[Switch.scala 30:36:@61.4]
  assign _T_253 = io_inAddr_3 == 2'h2; // @[Switch.scala 30:53:@63.4]
  assign valid_2_3 = io_inValid_3 & _T_253; // @[Switch.scala 30:36:@64.4]
  assign _T_259 = valid_2_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:@66.4]
  assign _T_260 = valid_2_1 ? 2'h1 : _T_259; // @[Mux.scala 31:69:@67.4]
  assign select_2 = valid_2_0 ? 2'h0 : _T_260; // @[Mux.scala 31:69:@68.4]
  assign _GEN_9 = 2'h1 == select_2 ? io_inData_1 : io_inData_0; // @[Switch.scala 33:19:@70.4]
  assign _GEN_10 = 2'h2 == select_2 ? io_inData_2 : _GEN_9; // @[Switch.scala 33:19:@70.4]
  assign _T_265 = {valid_2_3,valid_2_2,valid_2_1,valid_2_0}; // @[Switch.scala 34:32:@73.4]
  assign _T_269 = io_inAddr_0 == 2'h3; // @[Switch.scala 30:53:@76.4]
  assign valid_3_0 = io_inValid_0 & _T_269; // @[Switch.scala 30:36:@77.4]
  assign _T_272 = io_inAddr_1 == 2'h3; // @[Switch.scala 30:53:@79.4]
  assign valid_3_1 = io_inValid_1 & _T_272; // @[Switch.scala 30:36:@80.4]
  assign _T_275 = io_inAddr_2 == 2'h3; // @[Switch.scala 30:53:@82.4]
  assign valid_3_2 = io_inValid_2 & _T_275; // @[Switch.scala 30:36:@83.4]
  assign _T_278 = io_inAddr_3 == 2'h3; // @[Switch.scala 30:53:@85.4]
  assign valid_3_3 = io_inValid_3 & _T_278; // @[Switch.scala 30:36:@86.4]
  assign _T_284 = valid_3_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:@88.4]
  assign _T_285 = valid_3_1 ? 2'h1 : _T_284; // @[Mux.scala 31:69:@89.4]
  assign select_3 = valid_3_0 ? 2'h0 : _T_285; // @[Mux.scala 31:69:@90.4]
  assign _GEN_13 = 2'h1 == select_3 ? io_inData_1 : io_inData_0; // @[Switch.scala 33:19:@92.4]
  assign _GEN_14 = 2'h2 == select_3 ? io_inData_2 : _GEN_13; // @[Switch.scala 33:19:@92.4]
  assign _T_290 = {valid_3_3,valid_3_2,valid_3_1,valid_3_0}; // @[Switch.scala 34:32:@95.4]
  assign _T_420 = select_0 == 2'h0; // @[Switch.scala 41:52:@99.4]
  assign output_0_0 = io_outValid_0 & _T_420; // @[Switch.scala 41:38:@100.4]
  assign _T_423 = select_1 == 2'h0; // @[Switch.scala 41:52:@102.4]
  assign output_0_1 = io_outValid_1 & _T_423; // @[Switch.scala 41:38:@103.4]
  assign _T_426 = select_2 == 2'h0; // @[Switch.scala 41:52:@105.4]
  assign output_0_2 = io_outValid_2 & _T_426; // @[Switch.scala 41:38:@106.4]
  assign _T_429 = select_3 == 2'h0; // @[Switch.scala 41:52:@108.4]
  assign output_0_3 = io_outValid_3 & _T_429; // @[Switch.scala 41:38:@109.4]
  assign _T_433 = {output_0_3,output_0_2,output_0_1,output_0_0}; // @[Switch.scala 43:31:@113.4]
  assign _T_437 = select_0 == 2'h1; // @[Switch.scala 41:52:@116.4]
  assign output_1_0 = io_outValid_0 & _T_437; // @[Switch.scala 41:38:@117.4]
  assign _T_440 = select_1 == 2'h1; // @[Switch.scala 41:52:@119.4]
  assign output_1_1 = io_outValid_1 & _T_440; // @[Switch.scala 41:38:@120.4]
  assign _T_443 = select_2 == 2'h1; // @[Switch.scala 41:52:@122.4]
  assign output_1_2 = io_outValid_2 & _T_443; // @[Switch.scala 41:38:@123.4]
  assign _T_446 = select_3 == 2'h1; // @[Switch.scala 41:52:@125.4]
  assign output_1_3 = io_outValid_3 & _T_446; // @[Switch.scala 41:38:@126.4]
  assign _T_450 = {output_1_3,output_1_2,output_1_1,output_1_0}; // @[Switch.scala 43:31:@130.4]
  assign _T_454 = select_0 == 2'h2; // @[Switch.scala 41:52:@133.4]
  assign output_2_0 = io_outValid_0 & _T_454; // @[Switch.scala 41:38:@134.4]
  assign _T_457 = select_1 == 2'h2; // @[Switch.scala 41:52:@136.4]
  assign output_2_1 = io_outValid_1 & _T_457; // @[Switch.scala 41:38:@137.4]
  assign _T_460 = select_2 == 2'h2; // @[Switch.scala 41:52:@139.4]
  assign output_2_2 = io_outValid_2 & _T_460; // @[Switch.scala 41:38:@140.4]
  assign _T_463 = select_3 == 2'h2; // @[Switch.scala 41:52:@142.4]
  assign output_2_3 = io_outValid_3 & _T_463; // @[Switch.scala 41:38:@143.4]
  assign _T_467 = {output_2_3,output_2_2,output_2_1,output_2_0}; // @[Switch.scala 43:31:@147.4]
  assign _T_471 = select_0 == 2'h3; // @[Switch.scala 41:52:@150.4]
  assign output_3_0 = io_outValid_0 & _T_471; // @[Switch.scala 41:38:@151.4]
  assign _T_474 = select_1 == 2'h3; // @[Switch.scala 41:52:@153.4]
  assign output_3_1 = io_outValid_1 & _T_474; // @[Switch.scala 41:38:@154.4]
  assign _T_477 = select_2 == 2'h3; // @[Switch.scala 41:52:@156.4]
  assign output_3_2 = io_outValid_2 & _T_477; // @[Switch.scala 41:38:@157.4]
  assign _T_480 = select_3 == 2'h3; // @[Switch.scala 41:52:@159.4]
  assign output_3_3 = io_outValid_3 & _T_480; // @[Switch.scala 41:38:@160.4]
  assign _T_484 = {output_3_3,output_3_2,output_3_1,output_3_0}; // @[Switch.scala 43:31:@164.4]
  assign io_outAck_0 = _T_433 != 4'h0; // @[Switch.scala 43:18:@115.4]
  assign io_outAck_1 = _T_450 != 4'h0; // @[Switch.scala 43:18:@132.4]
  assign io_outAck_2 = _T_467 != 4'h0; // @[Switch.scala 43:18:@149.4]
  assign io_outAck_3 = _T_484 != 4'h0; // @[Switch.scala 43:18:@166.4]
  assign io_outData_0 = 2'h3 == select_0 ? io_inData_3 : _GEN_2; // @[Switch.scala 33:19:@26.4]
  assign io_outData_1 = 2'h3 == select_1 ? io_inData_3 : _GEN_6; // @[Switch.scala 33:19:@48.4]
  assign io_outData_2 = 2'h3 == select_2 ? io_inData_3 : _GEN_10; // @[Switch.scala 33:19:@70.4]
  assign io_outData_3 = 2'h3 == select_3 ? io_inData_3 : _GEN_14; // @[Switch.scala 33:19:@92.4]
  assign io_outValid_0 = _T_215 != 4'h0; // @[Switch.scala 34:20:@31.4]
  assign io_outValid_1 = _T_240 != 4'h0; // @[Switch.scala 34:20:@53.4]
  assign io_outValid_2 = _T_265 != 4'h0; // @[Switch.scala 34:20:@75.4]
  assign io_outValid_3 = _T_290 != 4'h0; // @[Switch.scala 34:20:@97.4]
endmodule
module SwitchWrapper( // @[:@168.2]
  input         clock, // @[:@169.4]
  input         reset, // @[:@170.4]
  input  [1:0]  io_inAddr_0, // @[:@171.4]
  input  [1:0]  io_inAddr_1, // @[:@171.4]
  input  [1:0]  io_inAddr_2, // @[:@171.4]
  input  [1:0]  io_inAddr_3, // @[:@171.4]
  input  [47:0] io_inData_0, // @[:@171.4]
  input  [47:0] io_inData_1, // @[:@171.4]
  input  [47:0] io_inData_2, // @[:@171.4]
  input  [47:0] io_inData_3, // @[:@171.4]
  input         io_inValid_0, // @[:@171.4]
  input         io_inValid_1, // @[:@171.4]
  input         io_inValid_2, // @[:@171.4]
  input         io_inValid_3, // @[:@171.4]
  output        io_outAck_0, // @[:@171.4]
  output        io_outAck_1, // @[:@171.4]
  output        io_outAck_2, // @[:@171.4]
  output        io_outAck_3, // @[:@171.4]
  output [47:0] io_outData_0, // @[:@171.4]
  output [47:0] io_outData_1, // @[:@171.4]
  output [47:0] io_outData_2, // @[:@171.4]
  output [47:0] io_outData_3, // @[:@171.4]
  output        io_outValid_0, // @[:@171.4]
  output        io_outValid_1, // @[:@171.4]
  output        io_outValid_2, // @[:@171.4]
  output        io_outValid_3 // @[:@171.4]
);
  wire [1:0] switch_io_inAddr_0; // @[Switch.scala 50:22:@173.4]
  wire [1:0] switch_io_inAddr_1; // @[Switch.scala 50:22:@173.4]
  wire [1:0] switch_io_inAddr_2; // @[Switch.scala 50:22:@173.4]
  wire [1:0] switch_io_inAddr_3; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_inData_0; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_inData_1; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_inData_2; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_inData_3; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_inValid_0; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_inValid_1; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_inValid_2; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_inValid_3; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outAck_0; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outAck_1; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outAck_2; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outAck_3; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_outData_0; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_outData_1; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_outData_2; // @[Switch.scala 50:22:@173.4]
  wire [47:0] switch_io_outData_3; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outValid_0; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outValid_1; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outValid_2; // @[Switch.scala 50:22:@173.4]
  wire  switch_io_outValid_3; // @[Switch.scala 50:22:@173.4]
  reg [1:0] _T_70_0; // @[Switch.scala 51:30:@176.4]
  reg [31:0] _RAND_0;
  reg [1:0] _T_70_1; // @[Switch.scala 51:30:@176.4]
  reg [31:0] _RAND_1;
  reg [1:0] _T_70_2; // @[Switch.scala 51:30:@176.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_70_3; // @[Switch.scala 51:30:@176.4]
  reg [31:0] _RAND_3;
  reg [47:0] _T_99_0; // @[Switch.scala 52:30:@185.4]
  reg [63:0] _RAND_4;
  reg [47:0] _T_99_1; // @[Switch.scala 52:30:@185.4]
  reg [63:0] _RAND_5;
  reg [47:0] _T_99_2; // @[Switch.scala 52:30:@185.4]
  reg [63:0] _RAND_6;
  reg [47:0] _T_99_3; // @[Switch.scala 52:30:@185.4]
  reg [63:0] _RAND_7;
  reg  _T_128_0; // @[Switch.scala 53:31:@194.4]
  reg [31:0] _RAND_8;
  reg  _T_128_1; // @[Switch.scala 53:31:@194.4]
  reg [31:0] _RAND_9;
  reg  _T_128_2; // @[Switch.scala 53:31:@194.4]
  reg [31:0] _RAND_10;
  reg  _T_128_3; // @[Switch.scala 53:31:@194.4]
  reg [31:0] _RAND_11;
  reg  _T_157_0; // @[Switch.scala 54:23:@203.4]
  reg [31:0] _RAND_12;
  reg  _T_157_1; // @[Switch.scala 54:23:@203.4]
  reg [31:0] _RAND_13;
  reg  _T_157_2; // @[Switch.scala 54:23:@203.4]
  reg [31:0] _RAND_14;
  reg  _T_157_3; // @[Switch.scala 54:23:@203.4]
  reg [31:0] _RAND_15;
  reg [47:0] _T_186_0; // @[Switch.scala 55:24:@212.4]
  reg [63:0] _RAND_16;
  reg [47:0] _T_186_1; // @[Switch.scala 55:24:@212.4]
  reg [63:0] _RAND_17;
  reg [47:0] _T_186_2; // @[Switch.scala 55:24:@212.4]
  reg [63:0] _RAND_18;
  reg [47:0] _T_186_3; // @[Switch.scala 55:24:@212.4]
  reg [63:0] _RAND_19;
  reg  _T_215_0; // @[Switch.scala 56:25:@221.4]
  reg [31:0] _RAND_20;
  reg  _T_215_1; // @[Switch.scala 56:25:@221.4]
  reg [31:0] _RAND_21;
  reg  _T_215_2; // @[Switch.scala 56:25:@221.4]
  reg [31:0] _RAND_22;
  reg  _T_215_3; // @[Switch.scala 56:25:@221.4]
  reg [31:0] _RAND_23;
  Switch switch ( // @[Switch.scala 50:22:@173.4]
    .io_inAddr_0(switch_io_inAddr_0),
    .io_inAddr_1(switch_io_inAddr_1),
    .io_inAddr_2(switch_io_inAddr_2),
    .io_inAddr_3(switch_io_inAddr_3),
    .io_inData_0(switch_io_inData_0),
    .io_inData_1(switch_io_inData_1),
    .io_inData_2(switch_io_inData_2),
    .io_inData_3(switch_io_inData_3),
    .io_inValid_0(switch_io_inValid_0),
    .io_inValid_1(switch_io_inValid_1),
    .io_inValid_2(switch_io_inValid_2),
    .io_inValid_3(switch_io_inValid_3),
    .io_outAck_0(switch_io_outAck_0),
    .io_outAck_1(switch_io_outAck_1),
    .io_outAck_2(switch_io_outAck_2),
    .io_outAck_3(switch_io_outAck_3),
    .io_outData_0(switch_io_outData_0),
    .io_outData_1(switch_io_outData_1),
    .io_outData_2(switch_io_outData_2),
    .io_outData_3(switch_io_outData_3),
    .io_outValid_0(switch_io_outValid_0),
    .io_outValid_1(switch_io_outValid_1),
    .io_outValid_2(switch_io_outValid_2),
    .io_outValid_3(switch_io_outValid_3)
  );
  assign io_outAck_0 = _T_157_0; // @[Switch.scala 54:13:@208.4]
  assign io_outAck_1 = _T_157_1; // @[Switch.scala 54:13:@209.4]
  assign io_outAck_2 = _T_157_2; // @[Switch.scala 54:13:@210.4]
  assign io_outAck_3 = _T_157_3; // @[Switch.scala 54:13:@211.4]
  assign io_outData_0 = _T_186_0; // @[Switch.scala 55:14:@217.4]
  assign io_outData_1 = _T_186_1; // @[Switch.scala 55:14:@218.4]
  assign io_outData_2 = _T_186_2; // @[Switch.scala 55:14:@219.4]
  assign io_outData_3 = _T_186_3; // @[Switch.scala 55:14:@220.4]
  assign io_outValid_0 = _T_215_0; // @[Switch.scala 56:15:@226.4]
  assign io_outValid_1 = _T_215_1; // @[Switch.scala 56:15:@227.4]
  assign io_outValid_2 = _T_215_2; // @[Switch.scala 56:15:@228.4]
  assign io_outValid_3 = _T_215_3; // @[Switch.scala 56:15:@229.4]
  assign switch_io_inAddr_0 = _T_70_0; // @[Switch.scala 51:20:@181.4]
  assign switch_io_inAddr_1 = _T_70_1; // @[Switch.scala 51:20:@182.4]
  assign switch_io_inAddr_2 = _T_70_2; // @[Switch.scala 51:20:@183.4]
  assign switch_io_inAddr_3 = _T_70_3; // @[Switch.scala 51:20:@184.4]
  assign switch_io_inData_0 = _T_99_0; // @[Switch.scala 52:20:@190.4]
  assign switch_io_inData_1 = _T_99_1; // @[Switch.scala 52:20:@191.4]
  assign switch_io_inData_2 = _T_99_2; // @[Switch.scala 52:20:@192.4]
  assign switch_io_inData_3 = _T_99_3; // @[Switch.scala 52:20:@193.4]
  assign switch_io_inValid_0 = _T_128_0; // @[Switch.scala 53:21:@199.4]
  assign switch_io_inValid_1 = _T_128_1; // @[Switch.scala 53:21:@200.4]
  assign switch_io_inValid_2 = _T_128_2; // @[Switch.scala 53:21:@201.4]
  assign switch_io_inValid_3 = _T_128_3; // @[Switch.scala 53:21:@202.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_70_0 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_70_1 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_70_2 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_70_3 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_99_0 = _RAND_4[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  _T_99_1 = _RAND_5[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  _T_99_2 = _RAND_6[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{`RANDOM}};
  _T_99_3 = _RAND_7[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_128_0 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_128_1 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_128_2 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_128_3 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_157_0 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_157_1 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_157_2 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_157_3 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{`RANDOM}};
  _T_186_0 = _RAND_16[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {2{`RANDOM}};
  _T_186_1 = _RAND_17[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{`RANDOM}};
  _T_186_2 = _RAND_18[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {2{`RANDOM}};
  _T_186_3 = _RAND_19[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_215_0 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_215_1 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_215_2 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_215_3 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    _T_70_0 <= io_inAddr_0;
    _T_70_1 <= io_inAddr_1;
    _T_70_2 <= io_inAddr_2;
    _T_70_3 <= io_inAddr_3;
    _T_99_0 <= io_inData_0;
    _T_99_1 <= io_inData_1;
    _T_99_2 <= io_inData_2;
    _T_99_3 <= io_inData_3;
    _T_128_0 <= io_inValid_0;
    _T_128_1 <= io_inValid_1;
    _T_128_2 <= io_inValid_2;
    _T_128_3 <= io_inValid_3;
    _T_157_0 <= switch_io_outAck_0;
    _T_157_1 <= switch_io_outAck_1;
    _T_157_2 <= switch_io_outAck_2;
    _T_157_3 <= switch_io_outAck_3;
    _T_186_0 <= switch_io_outData_0;
    _T_186_1 <= switch_io_outData_1;
    _T_186_2 <= switch_io_outData_2;
    _T_186_3 <= switch_io_outData_3;
    _T_215_0 <= switch_io_outValid_0;
    _T_215_1 <= switch_io_outValid_1;
    _T_215_2 <= switch_io_outValid_2;
    _T_215_3 <= switch_io_outValid_3;
  end
endmodule
