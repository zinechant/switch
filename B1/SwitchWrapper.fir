;buildInfoPackage: chisel3, version: 3.1.6, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-12-21 23:42:51.273, builtAtMillis: 1545435771273
circuit SwitchWrapper : 
  module Switch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inAddr : UInt<1>[2], flip inData : UInt<48>[2], flip inValid : UInt<1>[2], outAck : UInt<1>[2], outData : UInt<48>[2], outValid : UInt<1>[2]}
    
    wire select : UInt<1>[2] @[Switch.scala 25:20]
    wire valid : UInt<1>[2][2] @[Switch.scala 26:19]
    node _T_108 = eq(io.inAddr[0], UInt<1>("h00")) @[Switch.scala 30:53]
    node _T_109 = and(io.inValid[0], _T_108) @[Switch.scala 30:36]
    valid[0][0] <= _T_109 @[Switch.scala 30:19]
    node _T_111 = eq(io.inAddr[1], UInt<1>("h00")) @[Switch.scala 30:53]
    node _T_112 = and(io.inValid[1], _T_111) @[Switch.scala 30:36]
    valid[0][1] <= _T_112 @[Switch.scala 30:19]
    node _T_115 = mux(valid[0][0], UInt<1>("h00"), UInt<1>("h01")) @[Mux.scala 31:69]
    select[0] <= _T_115 @[Switch.scala 32:15]
    io.outData[0] <= io.inData[select[0]] @[Switch.scala 33:19]
    node _T_117 = cat(valid[0][1], valid[0][0]) @[Switch.scala 34:32]
    node _T_119 = neq(_T_117, UInt<1>("h00")) @[Switch.scala 34:39]
    io.outValid[0] <= _T_119 @[Switch.scala 34:20]
    node _T_121 = eq(io.inAddr[0], UInt<1>("h01")) @[Switch.scala 30:53]
    node _T_122 = and(io.inValid[0], _T_121) @[Switch.scala 30:36]
    valid[1][0] <= _T_122 @[Switch.scala 30:19]
    node _T_124 = eq(io.inAddr[1], UInt<1>("h01")) @[Switch.scala 30:53]
    node _T_125 = and(io.inValid[1], _T_124) @[Switch.scala 30:36]
    valid[1][1] <= _T_125 @[Switch.scala 30:19]
    node _T_128 = mux(valid[1][0], UInt<1>("h00"), UInt<1>("h01")) @[Mux.scala 31:69]
    select[1] <= _T_128 @[Switch.scala 32:15]
    io.outData[1] <= io.inData[select[1]] @[Switch.scala 33:19]
    node _T_130 = cat(valid[1][1], valid[1][0]) @[Switch.scala 34:32]
    node _T_132 = neq(_T_130, UInt<1>("h00")) @[Switch.scala 34:39]
    io.outValid[1] <= _T_132 @[Switch.scala 34:20]
    wire output : UInt<1>[2][2] @[Switch.scala 37:20]
    node _T_188 = eq(select[0], UInt<1>("h00")) @[Switch.scala 41:52]
    node _T_189 = and(io.outValid[0], _T_188) @[Switch.scala 41:38]
    output[0][0] <= _T_189 @[Switch.scala 41:20]
    node _T_191 = eq(select[1], UInt<1>("h00")) @[Switch.scala 41:52]
    node _T_192 = and(io.outValid[1], _T_191) @[Switch.scala 41:38]
    output[0][1] <= _T_192 @[Switch.scala 41:20]
    node _T_193 = cat(output[0][1], output[0][0]) @[Switch.scala 43:31]
    node _T_195 = neq(_T_193, UInt<1>("h00")) @[Switch.scala 43:38]
    io.outAck[0] <= _T_195 @[Switch.scala 43:18]
    node _T_197 = eq(select[0], UInt<1>("h01")) @[Switch.scala 41:52]
    node _T_198 = and(io.outValid[0], _T_197) @[Switch.scala 41:38]
    output[1][0] <= _T_198 @[Switch.scala 41:20]
    node _T_200 = eq(select[1], UInt<1>("h01")) @[Switch.scala 41:52]
    node _T_201 = and(io.outValid[1], _T_200) @[Switch.scala 41:38]
    output[1][1] <= _T_201 @[Switch.scala 41:20]
    node _T_202 = cat(output[1][1], output[1][0]) @[Switch.scala 43:31]
    node _T_204 = neq(_T_202, UInt<1>("h00")) @[Switch.scala 43:38]
    io.outAck[1] <= _T_204 @[Switch.scala 43:18]
    
  module SwitchWrapper : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inAddr : UInt<1>[2], flip inData : UInt<48>[2], flip inValid : UInt<1>[2], outAck : UInt<1>[2], outData : UInt<48>[2], outValid : UInt<1>[2]}
    
    inst switch of Switch @[Switch.scala 50:22]
    switch.clock <= clock
    switch.reset <= reset
    reg _T_54 : UInt<1>[2], clock @[Switch.scala 51:30]
    _T_54[0] <= io.inAddr[0] @[Switch.scala 51:30]
    _T_54[1] <= io.inAddr[1] @[Switch.scala 51:30]
    switch.io.inAddr[0] <= _T_54[0] @[Switch.scala 51:20]
    switch.io.inAddr[1] <= _T_54[1] @[Switch.scala 51:20]
    reg _T_73 : UInt<48>[2], clock @[Switch.scala 52:30]
    _T_73[0] <= io.inData[0] @[Switch.scala 52:30]
    _T_73[1] <= io.inData[1] @[Switch.scala 52:30]
    switch.io.inData[0] <= _T_73[0] @[Switch.scala 52:20]
    switch.io.inData[1] <= _T_73[1] @[Switch.scala 52:20]
    reg _T_92 : UInt<1>[2], clock @[Switch.scala 53:31]
    _T_92[0] <= io.inValid[0] @[Switch.scala 53:31]
    _T_92[1] <= io.inValid[1] @[Switch.scala 53:31]
    switch.io.inValid[0] <= _T_92[0] @[Switch.scala 53:21]
    switch.io.inValid[1] <= _T_92[1] @[Switch.scala 53:21]
    reg _T_111 : UInt<1>[2], clock @[Switch.scala 54:23]
    _T_111[0] <= switch.io.outAck[0] @[Switch.scala 54:23]
    _T_111[1] <= switch.io.outAck[1] @[Switch.scala 54:23]
    io.outAck[0] <= _T_111[0] @[Switch.scala 54:13]
    io.outAck[1] <= _T_111[1] @[Switch.scala 54:13]
    reg _T_130 : UInt<48>[2], clock @[Switch.scala 55:24]
    _T_130[0] <= switch.io.outData[0] @[Switch.scala 55:24]
    _T_130[1] <= switch.io.outData[1] @[Switch.scala 55:24]
    io.outData[0] <= _T_130[0] @[Switch.scala 55:14]
    io.outData[1] <= _T_130[1] @[Switch.scala 55:14]
    reg _T_149 : UInt<1>[2], clock @[Switch.scala 56:25]
    _T_149[0] <= switch.io.outValid[0] @[Switch.scala 56:25]
    _T_149[1] <= switch.io.outValid[1] @[Switch.scala 56:25]
    io.outValid[0] <= _T_149[0] @[Switch.scala 56:15]
    io.outValid[1] <= _T_149[1] @[Switch.scala 56:15]
    
