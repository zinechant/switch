;buildInfoPackage: chisel3, version: 3.1.6, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-12-21 23:42:51.273, builtAtMillis: 1545435771273
circuit SwitchWrapper : 
  module Switch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inAddr : UInt<2>[4], flip inData : UInt<48>[4], flip inValid : UInt<1>[4], outAck : UInt<1>[4], outData : UInt<48>[4], outValid : UInt<1>[4]}
    
    wire select : UInt<2>[4] @[Switch.scala 25:20]
    wire valid : UInt<1>[4][4] @[Switch.scala 26:19]
    node _T_194 = eq(io.inAddr[0], UInt<2>("h00")) @[Switch.scala 30:53]
    node _T_195 = and(io.inValid[0], _T_194) @[Switch.scala 30:36]
    valid[0][0] <= _T_195 @[Switch.scala 30:19]
    node _T_197 = eq(io.inAddr[1], UInt<2>("h00")) @[Switch.scala 30:53]
    node _T_198 = and(io.inValid[1], _T_197) @[Switch.scala 30:36]
    valid[0][1] <= _T_198 @[Switch.scala 30:19]
    node _T_200 = eq(io.inAddr[2], UInt<2>("h00")) @[Switch.scala 30:53]
    node _T_201 = and(io.inValid[2], _T_200) @[Switch.scala 30:36]
    valid[0][2] <= _T_201 @[Switch.scala 30:19]
    node _T_203 = eq(io.inAddr[3], UInt<2>("h00")) @[Switch.scala 30:53]
    node _T_204 = and(io.inValid[3], _T_203) @[Switch.scala 30:36]
    valid[0][3] <= _T_204 @[Switch.scala 30:19]
    node _T_209 = mux(valid[0][2], UInt<2>("h02"), UInt<2>("h03")) @[Mux.scala 31:69]
    node _T_210 = mux(valid[0][1], UInt<1>("h01"), _T_209) @[Mux.scala 31:69]
    node _T_211 = mux(valid[0][0], UInt<1>("h00"), _T_210) @[Mux.scala 31:69]
    select[0] <= _T_211 @[Switch.scala 32:15]
    io.outData[0] <= io.inData[select[0]] @[Switch.scala 33:19]
    node _T_213 = cat(valid[0][1], valid[0][0]) @[Switch.scala 34:32]
    node _T_214 = cat(valid[0][3], valid[0][2]) @[Switch.scala 34:32]
    node _T_215 = cat(_T_214, _T_213) @[Switch.scala 34:32]
    node _T_217 = neq(_T_215, UInt<1>("h00")) @[Switch.scala 34:39]
    io.outValid[0] <= _T_217 @[Switch.scala 34:20]
    node _T_219 = eq(io.inAddr[0], UInt<2>("h01")) @[Switch.scala 30:53]
    node _T_220 = and(io.inValid[0], _T_219) @[Switch.scala 30:36]
    valid[1][0] <= _T_220 @[Switch.scala 30:19]
    node _T_222 = eq(io.inAddr[1], UInt<2>("h01")) @[Switch.scala 30:53]
    node _T_223 = and(io.inValid[1], _T_222) @[Switch.scala 30:36]
    valid[1][1] <= _T_223 @[Switch.scala 30:19]
    node _T_225 = eq(io.inAddr[2], UInt<2>("h01")) @[Switch.scala 30:53]
    node _T_226 = and(io.inValid[2], _T_225) @[Switch.scala 30:36]
    valid[1][2] <= _T_226 @[Switch.scala 30:19]
    node _T_228 = eq(io.inAddr[3], UInt<2>("h01")) @[Switch.scala 30:53]
    node _T_229 = and(io.inValid[3], _T_228) @[Switch.scala 30:36]
    valid[1][3] <= _T_229 @[Switch.scala 30:19]
    node _T_234 = mux(valid[1][2], UInt<2>("h02"), UInt<2>("h03")) @[Mux.scala 31:69]
    node _T_235 = mux(valid[1][1], UInt<1>("h01"), _T_234) @[Mux.scala 31:69]
    node _T_236 = mux(valid[1][0], UInt<1>("h00"), _T_235) @[Mux.scala 31:69]
    select[1] <= _T_236 @[Switch.scala 32:15]
    io.outData[1] <= io.inData[select[1]] @[Switch.scala 33:19]
    node _T_238 = cat(valid[1][1], valid[1][0]) @[Switch.scala 34:32]
    node _T_239 = cat(valid[1][3], valid[1][2]) @[Switch.scala 34:32]
    node _T_240 = cat(_T_239, _T_238) @[Switch.scala 34:32]
    node _T_242 = neq(_T_240, UInt<1>("h00")) @[Switch.scala 34:39]
    io.outValid[1] <= _T_242 @[Switch.scala 34:20]
    node _T_244 = eq(io.inAddr[0], UInt<2>("h02")) @[Switch.scala 30:53]
    node _T_245 = and(io.inValid[0], _T_244) @[Switch.scala 30:36]
    valid[2][0] <= _T_245 @[Switch.scala 30:19]
    node _T_247 = eq(io.inAddr[1], UInt<2>("h02")) @[Switch.scala 30:53]
    node _T_248 = and(io.inValid[1], _T_247) @[Switch.scala 30:36]
    valid[2][1] <= _T_248 @[Switch.scala 30:19]
    node _T_250 = eq(io.inAddr[2], UInt<2>("h02")) @[Switch.scala 30:53]
    node _T_251 = and(io.inValid[2], _T_250) @[Switch.scala 30:36]
    valid[2][2] <= _T_251 @[Switch.scala 30:19]
    node _T_253 = eq(io.inAddr[3], UInt<2>("h02")) @[Switch.scala 30:53]
    node _T_254 = and(io.inValid[3], _T_253) @[Switch.scala 30:36]
    valid[2][3] <= _T_254 @[Switch.scala 30:19]
    node _T_259 = mux(valid[2][2], UInt<2>("h02"), UInt<2>("h03")) @[Mux.scala 31:69]
    node _T_260 = mux(valid[2][1], UInt<1>("h01"), _T_259) @[Mux.scala 31:69]
    node _T_261 = mux(valid[2][0], UInt<1>("h00"), _T_260) @[Mux.scala 31:69]
    select[2] <= _T_261 @[Switch.scala 32:15]
    io.outData[2] <= io.inData[select[2]] @[Switch.scala 33:19]
    node _T_263 = cat(valid[2][1], valid[2][0]) @[Switch.scala 34:32]
    node _T_264 = cat(valid[2][3], valid[2][2]) @[Switch.scala 34:32]
    node _T_265 = cat(_T_264, _T_263) @[Switch.scala 34:32]
    node _T_267 = neq(_T_265, UInt<1>("h00")) @[Switch.scala 34:39]
    io.outValid[2] <= _T_267 @[Switch.scala 34:20]
    node _T_269 = eq(io.inAddr[0], UInt<2>("h03")) @[Switch.scala 30:53]
    node _T_270 = and(io.inValid[0], _T_269) @[Switch.scala 30:36]
    valid[3][0] <= _T_270 @[Switch.scala 30:19]
    node _T_272 = eq(io.inAddr[1], UInt<2>("h03")) @[Switch.scala 30:53]
    node _T_273 = and(io.inValid[1], _T_272) @[Switch.scala 30:36]
    valid[3][1] <= _T_273 @[Switch.scala 30:19]
    node _T_275 = eq(io.inAddr[2], UInt<2>("h03")) @[Switch.scala 30:53]
    node _T_276 = and(io.inValid[2], _T_275) @[Switch.scala 30:36]
    valid[3][2] <= _T_276 @[Switch.scala 30:19]
    node _T_278 = eq(io.inAddr[3], UInt<2>("h03")) @[Switch.scala 30:53]
    node _T_279 = and(io.inValid[3], _T_278) @[Switch.scala 30:36]
    valid[3][3] <= _T_279 @[Switch.scala 30:19]
    node _T_284 = mux(valid[3][2], UInt<2>("h02"), UInt<2>("h03")) @[Mux.scala 31:69]
    node _T_285 = mux(valid[3][1], UInt<1>("h01"), _T_284) @[Mux.scala 31:69]
    node _T_286 = mux(valid[3][0], UInt<1>("h00"), _T_285) @[Mux.scala 31:69]
    select[3] <= _T_286 @[Switch.scala 32:15]
    io.outData[3] <= io.inData[select[3]] @[Switch.scala 33:19]
    node _T_288 = cat(valid[3][1], valid[3][0]) @[Switch.scala 34:32]
    node _T_289 = cat(valid[3][3], valid[3][2]) @[Switch.scala 34:32]
    node _T_290 = cat(_T_289, _T_288) @[Switch.scala 34:32]
    node _T_292 = neq(_T_290, UInt<1>("h00")) @[Switch.scala 34:39]
    io.outValid[3] <= _T_292 @[Switch.scala 34:20]
    wire output : UInt<1>[4][4] @[Switch.scala 37:20]
    node _T_420 = eq(select[0], UInt<2>("h00")) @[Switch.scala 41:52]
    node _T_421 = and(io.outValid[0], _T_420) @[Switch.scala 41:38]
    output[0][0] <= _T_421 @[Switch.scala 41:20]
    node _T_423 = eq(select[1], UInt<2>("h00")) @[Switch.scala 41:52]
    node _T_424 = and(io.outValid[1], _T_423) @[Switch.scala 41:38]
    output[0][1] <= _T_424 @[Switch.scala 41:20]
    node _T_426 = eq(select[2], UInt<2>("h00")) @[Switch.scala 41:52]
    node _T_427 = and(io.outValid[2], _T_426) @[Switch.scala 41:38]
    output[0][2] <= _T_427 @[Switch.scala 41:20]
    node _T_429 = eq(select[3], UInt<2>("h00")) @[Switch.scala 41:52]
    node _T_430 = and(io.outValid[3], _T_429) @[Switch.scala 41:38]
    output[0][3] <= _T_430 @[Switch.scala 41:20]
    node _T_431 = cat(output[0][1], output[0][0]) @[Switch.scala 43:31]
    node _T_432 = cat(output[0][3], output[0][2]) @[Switch.scala 43:31]
    node _T_433 = cat(_T_432, _T_431) @[Switch.scala 43:31]
    node _T_435 = neq(_T_433, UInt<1>("h00")) @[Switch.scala 43:38]
    io.outAck[0] <= _T_435 @[Switch.scala 43:18]
    node _T_437 = eq(select[0], UInt<2>("h01")) @[Switch.scala 41:52]
    node _T_438 = and(io.outValid[0], _T_437) @[Switch.scala 41:38]
    output[1][0] <= _T_438 @[Switch.scala 41:20]
    node _T_440 = eq(select[1], UInt<2>("h01")) @[Switch.scala 41:52]
    node _T_441 = and(io.outValid[1], _T_440) @[Switch.scala 41:38]
    output[1][1] <= _T_441 @[Switch.scala 41:20]
    node _T_443 = eq(select[2], UInt<2>("h01")) @[Switch.scala 41:52]
    node _T_444 = and(io.outValid[2], _T_443) @[Switch.scala 41:38]
    output[1][2] <= _T_444 @[Switch.scala 41:20]
    node _T_446 = eq(select[3], UInt<2>("h01")) @[Switch.scala 41:52]
    node _T_447 = and(io.outValid[3], _T_446) @[Switch.scala 41:38]
    output[1][3] <= _T_447 @[Switch.scala 41:20]
    node _T_448 = cat(output[1][1], output[1][0]) @[Switch.scala 43:31]
    node _T_449 = cat(output[1][3], output[1][2]) @[Switch.scala 43:31]
    node _T_450 = cat(_T_449, _T_448) @[Switch.scala 43:31]
    node _T_452 = neq(_T_450, UInt<1>("h00")) @[Switch.scala 43:38]
    io.outAck[1] <= _T_452 @[Switch.scala 43:18]
    node _T_454 = eq(select[0], UInt<2>("h02")) @[Switch.scala 41:52]
    node _T_455 = and(io.outValid[0], _T_454) @[Switch.scala 41:38]
    output[2][0] <= _T_455 @[Switch.scala 41:20]
    node _T_457 = eq(select[1], UInt<2>("h02")) @[Switch.scala 41:52]
    node _T_458 = and(io.outValid[1], _T_457) @[Switch.scala 41:38]
    output[2][1] <= _T_458 @[Switch.scala 41:20]
    node _T_460 = eq(select[2], UInt<2>("h02")) @[Switch.scala 41:52]
    node _T_461 = and(io.outValid[2], _T_460) @[Switch.scala 41:38]
    output[2][2] <= _T_461 @[Switch.scala 41:20]
    node _T_463 = eq(select[3], UInt<2>("h02")) @[Switch.scala 41:52]
    node _T_464 = and(io.outValid[3], _T_463) @[Switch.scala 41:38]
    output[2][3] <= _T_464 @[Switch.scala 41:20]
    node _T_465 = cat(output[2][1], output[2][0]) @[Switch.scala 43:31]
    node _T_466 = cat(output[2][3], output[2][2]) @[Switch.scala 43:31]
    node _T_467 = cat(_T_466, _T_465) @[Switch.scala 43:31]
    node _T_469 = neq(_T_467, UInt<1>("h00")) @[Switch.scala 43:38]
    io.outAck[2] <= _T_469 @[Switch.scala 43:18]
    node _T_471 = eq(select[0], UInt<2>("h03")) @[Switch.scala 41:52]
    node _T_472 = and(io.outValid[0], _T_471) @[Switch.scala 41:38]
    output[3][0] <= _T_472 @[Switch.scala 41:20]
    node _T_474 = eq(select[1], UInt<2>("h03")) @[Switch.scala 41:52]
    node _T_475 = and(io.outValid[1], _T_474) @[Switch.scala 41:38]
    output[3][1] <= _T_475 @[Switch.scala 41:20]
    node _T_477 = eq(select[2], UInt<2>("h03")) @[Switch.scala 41:52]
    node _T_478 = and(io.outValid[2], _T_477) @[Switch.scala 41:38]
    output[3][2] <= _T_478 @[Switch.scala 41:20]
    node _T_480 = eq(select[3], UInt<2>("h03")) @[Switch.scala 41:52]
    node _T_481 = and(io.outValid[3], _T_480) @[Switch.scala 41:38]
    output[3][3] <= _T_481 @[Switch.scala 41:20]
    node _T_482 = cat(output[3][1], output[3][0]) @[Switch.scala 43:31]
    node _T_483 = cat(output[3][3], output[3][2]) @[Switch.scala 43:31]
    node _T_484 = cat(_T_483, _T_482) @[Switch.scala 43:31]
    node _T_486 = neq(_T_484, UInt<1>("h00")) @[Switch.scala 43:38]
    io.outAck[3] <= _T_486 @[Switch.scala 43:18]
    
  module SwitchWrapper : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inAddr : UInt<2>[4], flip inData : UInt<48>[4], flip inValid : UInt<1>[4], outAck : UInt<1>[4], outData : UInt<48>[4], outValid : UInt<1>[4]}
    
    inst switch of Switch @[Switch.scala 50:22]
    switch.clock <= clock
    switch.reset <= reset
    reg _T_70 : UInt<2>[4], clock @[Switch.scala 51:30]
    _T_70[0] <= io.inAddr[0] @[Switch.scala 51:30]
    _T_70[1] <= io.inAddr[1] @[Switch.scala 51:30]
    _T_70[2] <= io.inAddr[2] @[Switch.scala 51:30]
    _T_70[3] <= io.inAddr[3] @[Switch.scala 51:30]
    switch.io.inAddr[0] <= _T_70[0] @[Switch.scala 51:20]
    switch.io.inAddr[1] <= _T_70[1] @[Switch.scala 51:20]
    switch.io.inAddr[2] <= _T_70[2] @[Switch.scala 51:20]
    switch.io.inAddr[3] <= _T_70[3] @[Switch.scala 51:20]
    reg _T_99 : UInt<48>[4], clock @[Switch.scala 52:30]
    _T_99[0] <= io.inData[0] @[Switch.scala 52:30]
    _T_99[1] <= io.inData[1] @[Switch.scala 52:30]
    _T_99[2] <= io.inData[2] @[Switch.scala 52:30]
    _T_99[3] <= io.inData[3] @[Switch.scala 52:30]
    switch.io.inData[0] <= _T_99[0] @[Switch.scala 52:20]
    switch.io.inData[1] <= _T_99[1] @[Switch.scala 52:20]
    switch.io.inData[2] <= _T_99[2] @[Switch.scala 52:20]
    switch.io.inData[3] <= _T_99[3] @[Switch.scala 52:20]
    reg _T_128 : UInt<1>[4], clock @[Switch.scala 53:31]
    _T_128[0] <= io.inValid[0] @[Switch.scala 53:31]
    _T_128[1] <= io.inValid[1] @[Switch.scala 53:31]
    _T_128[2] <= io.inValid[2] @[Switch.scala 53:31]
    _T_128[3] <= io.inValid[3] @[Switch.scala 53:31]
    switch.io.inValid[0] <= _T_128[0] @[Switch.scala 53:21]
    switch.io.inValid[1] <= _T_128[1] @[Switch.scala 53:21]
    switch.io.inValid[2] <= _T_128[2] @[Switch.scala 53:21]
    switch.io.inValid[3] <= _T_128[3] @[Switch.scala 53:21]
    reg _T_157 : UInt<1>[4], clock @[Switch.scala 54:23]
    _T_157[0] <= switch.io.outAck[0] @[Switch.scala 54:23]
    _T_157[1] <= switch.io.outAck[1] @[Switch.scala 54:23]
    _T_157[2] <= switch.io.outAck[2] @[Switch.scala 54:23]
    _T_157[3] <= switch.io.outAck[3] @[Switch.scala 54:23]
    io.outAck[0] <= _T_157[0] @[Switch.scala 54:13]
    io.outAck[1] <= _T_157[1] @[Switch.scala 54:13]
    io.outAck[2] <= _T_157[2] @[Switch.scala 54:13]
    io.outAck[3] <= _T_157[3] @[Switch.scala 54:13]
    reg _T_186 : UInt<48>[4], clock @[Switch.scala 55:24]
    _T_186[0] <= switch.io.outData[0] @[Switch.scala 55:24]
    _T_186[1] <= switch.io.outData[1] @[Switch.scala 55:24]
    _T_186[2] <= switch.io.outData[2] @[Switch.scala 55:24]
    _T_186[3] <= switch.io.outData[3] @[Switch.scala 55:24]
    io.outData[0] <= _T_186[0] @[Switch.scala 55:14]
    io.outData[1] <= _T_186[1] @[Switch.scala 55:14]
    io.outData[2] <= _T_186[2] @[Switch.scala 55:14]
    io.outData[3] <= _T_186[3] @[Switch.scala 55:14]
    reg _T_215 : UInt<1>[4], clock @[Switch.scala 56:25]
    _T_215[0] <= switch.io.outValid[0] @[Switch.scala 56:25]
    _T_215[1] <= switch.io.outValid[1] @[Switch.scala 56:25]
    _T_215[2] <= switch.io.outValid[2] @[Switch.scala 56:25]
    _T_215[3] <= switch.io.outValid[3] @[Switch.scala 56:25]
    io.outValid[0] <= _T_215[0] @[Switch.scala 56:15]
    io.outValid[1] <= _T_215[1] @[Switch.scala 56:15]
    io.outValid[2] <= _T_215[2] @[Switch.scala 56:15]
    io.outValid[3] <= _T_215[3] @[Switch.scala 56:15]
    
