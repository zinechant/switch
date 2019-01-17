module Switch( // @[:@3.2]
  input         io_inAddr_0, // @[:@6.4]
  input         io_inAddr_1, // @[:@6.4]
  input  [47:0] io_inData_0, // @[:@6.4]
  input  [47:0] io_inData_1, // @[:@6.4]
  input         io_inValid_0, // @[:@6.4]
  input         io_inValid_1, // @[:@6.4]
  output        io_outAck_0, // @[:@6.4]
  output        io_outAck_1, // @[:@6.4]
  output [47:0] io_outData_0, // @[:@6.4]
  output [47:0] io_outData_1, // @[:@6.4]
  output        io_outValid_0, // @[:@6.4]
  output        io_outValid_1 // @[:@6.4]
);
  wire  _T_108; // @[Switch.scala 30:53:@10.4]
  wire  valid_0_0; // @[Switch.scala 30:36:@11.4]
  wire  _T_111; // @[Switch.scala 30:53:@13.4]
  wire  valid_0_1; // @[Switch.scala 30:36:@14.4]
  wire  select_0; // @[Mux.scala 31:69:@16.4]
  wire [1:0] _T_117; // @[Switch.scala 34:32:@19.4]
  wire  valid_1_0; // @[Switch.scala 30:36:@23.4]
  wire  valid_1_1; // @[Switch.scala 30:36:@26.4]
  wire  select_1; // @[Mux.scala 31:69:@28.4]
  wire [1:0] _T_130; // @[Switch.scala 34:32:@31.4]
  wire  _T_188; // @[Switch.scala 41:52:@35.4]
  wire  output_0_0; // @[Switch.scala 41:38:@36.4]
  wire  _T_191; // @[Switch.scala 41:52:@38.4]
  wire  output_0_1; // @[Switch.scala 41:38:@39.4]
  wire [1:0] _T_193; // @[Switch.scala 43:31:@41.4]
  wire  output_1_0; // @[Switch.scala 41:38:@45.4]
  wire  output_1_1; // @[Switch.scala 41:38:@48.4]
  wire [1:0] _T_202; // @[Switch.scala 43:31:@50.4]
  assign _T_108 = io_inAddr_0 == 1'h0; // @[Switch.scala 30:53:@10.4]
  assign valid_0_0 = io_inValid_0 & _T_108; // @[Switch.scala 30:36:@11.4]
  assign _T_111 = io_inAddr_1 == 1'h0; // @[Switch.scala 30:53:@13.4]
  assign valid_0_1 = io_inValid_1 & _T_111; // @[Switch.scala 30:36:@14.4]
  assign select_0 = valid_0_0 ? 1'h0 : 1'h1; // @[Mux.scala 31:69:@16.4]
  assign _T_117 = {valid_0_1,valid_0_0}; // @[Switch.scala 34:32:@19.4]
  assign valid_1_0 = io_inValid_0 & io_inAddr_0; // @[Switch.scala 30:36:@23.4]
  assign valid_1_1 = io_inValid_1 & io_inAddr_1; // @[Switch.scala 30:36:@26.4]
  assign select_1 = valid_1_0 ? 1'h0 : 1'h1; // @[Mux.scala 31:69:@28.4]
  assign _T_130 = {valid_1_1,valid_1_0}; // @[Switch.scala 34:32:@31.4]
  assign _T_188 = select_0 == 1'h0; // @[Switch.scala 41:52:@35.4]
  assign output_0_0 = io_outValid_0 & _T_188; // @[Switch.scala 41:38:@36.4]
  assign _T_191 = select_1 == 1'h0; // @[Switch.scala 41:52:@38.4]
  assign output_0_1 = io_outValid_1 & _T_191; // @[Switch.scala 41:38:@39.4]
  assign _T_193 = {output_0_1,output_0_0}; // @[Switch.scala 43:31:@41.4]
  assign output_1_0 = io_outValid_0 & select_0; // @[Switch.scala 41:38:@45.4]
  assign output_1_1 = io_outValid_1 & select_1; // @[Switch.scala 41:38:@48.4]
  assign _T_202 = {output_1_1,output_1_0}; // @[Switch.scala 43:31:@50.4]
  assign io_outAck_0 = _T_193 != 2'h0; // @[Switch.scala 43:18:@43.4]
  assign io_outAck_1 = _T_202 != 2'h0; // @[Switch.scala 43:18:@52.4]
  assign io_outData_0 = select_0 ? io_inData_1 : io_inData_0; // @[Switch.scala 33:19:@18.4]
  assign io_outData_1 = select_1 ? io_inData_1 : io_inData_0; // @[Switch.scala 33:19:@30.4]
  assign io_outValid_0 = _T_117 != 2'h0; // @[Switch.scala 34:20:@21.4]
  assign io_outValid_1 = _T_130 != 2'h0; // @[Switch.scala 34:20:@33.4]
endmodule
module SwitchWrapper( // @[:@54.2]
  input         clock, // @[:@55.4]
  input         reset, // @[:@56.4]
  input         io_inAddr_0, // @[:@57.4]
  input         io_inAddr_1, // @[:@57.4]
  input  [47:0] io_inData_0, // @[:@57.4]
  input  [47:0] io_inData_1, // @[:@57.4]
  input         io_inValid_0, // @[:@57.4]
  input         io_inValid_1, // @[:@57.4]
  output        io_outAck_0, // @[:@57.4]
  output        io_outAck_1, // @[:@57.4]
  output [47:0] io_outData_0, // @[:@57.4]
  output [47:0] io_outData_1, // @[:@57.4]
  output        io_outValid_0, // @[:@57.4]
  output        io_outValid_1 // @[:@57.4]
);
  wire  switch_io_inAddr_0; // @[Switch.scala 50:22:@59.4]
  wire  switch_io_inAddr_1; // @[Switch.scala 50:22:@59.4]
  wire [47:0] switch_io_inData_0; // @[Switch.scala 50:22:@59.4]
  wire [47:0] switch_io_inData_1; // @[Switch.scala 50:22:@59.4]
  wire  switch_io_inValid_0; // @[Switch.scala 50:22:@59.4]
  wire  switch_io_inValid_1; // @[Switch.scala 50:22:@59.4]
  wire  switch_io_outAck_0; // @[Switch.scala 50:22:@59.4]
  wire  switch_io_outAck_1; // @[Switch.scala 50:22:@59.4]
  wire [47:0] switch_io_outData_0; // @[Switch.scala 50:22:@59.4]
  wire [47:0] switch_io_outData_1; // @[Switch.scala 50:22:@59.4]
  wire  switch_io_outValid_0; // @[Switch.scala 50:22:@59.4]
  wire  switch_io_outValid_1; // @[Switch.scala 50:22:@59.4]
  reg  _T_54_0; // @[Switch.scala 51:30:@62.4]
  reg [31:0] _RAND_0;
  reg  _T_54_1; // @[Switch.scala 51:30:@62.4]
  reg [31:0] _RAND_1;
  reg [47:0] _T_73_0; // @[Switch.scala 52:30:@67.4]
  reg [63:0] _RAND_2;
  reg [47:0] _T_73_1; // @[Switch.scala 52:30:@67.4]
  reg [63:0] _RAND_3;
  reg  _T_92_0; // @[Switch.scala 53:31:@72.4]
  reg [31:0] _RAND_4;
  reg  _T_92_1; // @[Switch.scala 53:31:@72.4]
  reg [31:0] _RAND_5;
  reg  _T_111_0; // @[Switch.scala 54:23:@77.4]
  reg [31:0] _RAND_6;
  reg  _T_111_1; // @[Switch.scala 54:23:@77.4]
  reg [31:0] _RAND_7;
  reg [47:0] _T_130_0; // @[Switch.scala 55:24:@82.4]
  reg [63:0] _RAND_8;
  reg [47:0] _T_130_1; // @[Switch.scala 55:24:@82.4]
  reg [63:0] _RAND_9;
  reg  _T_149_0; // @[Switch.scala 56:25:@87.4]
  reg [31:0] _RAND_10;
  reg  _T_149_1; // @[Switch.scala 56:25:@87.4]
  reg [31:0] _RAND_11;
  Switch switch ( // @[Switch.scala 50:22:@59.4]
    .io_inAddr_0(switch_io_inAddr_0),
    .io_inAddr_1(switch_io_inAddr_1),
    .io_inData_0(switch_io_inData_0),
    .io_inData_1(switch_io_inData_1),
    .io_inValid_0(switch_io_inValid_0),
    .io_inValid_1(switch_io_inValid_1),
    .io_outAck_0(switch_io_outAck_0),
    .io_outAck_1(switch_io_outAck_1),
    .io_outData_0(switch_io_outData_0),
    .io_outData_1(switch_io_outData_1),
    .io_outValid_0(switch_io_outValid_0),
    .io_outValid_1(switch_io_outValid_1)
  );
  assign io_outAck_0 = _T_111_0; // @[Switch.scala 54:13:@80.4]
  assign io_outAck_1 = _T_111_1; // @[Switch.scala 54:13:@81.4]
  assign io_outData_0 = _T_130_0; // @[Switch.scala 55:14:@85.4]
  assign io_outData_1 = _T_130_1; // @[Switch.scala 55:14:@86.4]
  assign io_outValid_0 = _T_149_0; // @[Switch.scala 56:15:@90.4]
  assign io_outValid_1 = _T_149_1; // @[Switch.scala 56:15:@91.4]
  assign switch_io_inAddr_0 = _T_54_0; // @[Switch.scala 51:20:@65.4]
  assign switch_io_inAddr_1 = _T_54_1; // @[Switch.scala 51:20:@66.4]
  assign switch_io_inData_0 = _T_73_0; // @[Switch.scala 52:20:@70.4]
  assign switch_io_inData_1 = _T_73_1; // @[Switch.scala 52:20:@71.4]
  assign switch_io_inValid_0 = _T_92_0; // @[Switch.scala 53:21:@75.4]
  assign switch_io_inValid_1 = _T_92_1; // @[Switch.scala 53:21:@76.4]
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
  _T_54_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_54_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_73_0 = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_73_1 = _RAND_3[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_92_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_92_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_111_0 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_111_1 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  _T_130_0 = _RAND_8[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {2{`RANDOM}};
  _T_130_1 = _RAND_9[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_149_0 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_149_1 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    _T_54_0 <= io_inAddr_0;
    _T_54_1 <= io_inAddr_1;
    _T_73_0 <= io_inData_0;
    _T_73_1 <= io_inData_1;
    _T_92_0 <= io_inValid_0;
    _T_92_1 <= io_inValid_1;
    _T_111_0 <= switch_io_outAck_0;
    _T_111_1 <= switch_io_outAck_1;
    _T_130_0 <= switch_io_outData_0;
    _T_130_1 <= switch_io_outData_1;
    _T_149_0 <= switch_io_outValid_0;
    _T_149_1 <= switch_io_outValid_1;
  end
endmodule
