package switch

import chisel3._
import chisel3.util.PriorityEncoder


class SwitchInterface(IDWidth: Int, AddrWidth: Int, DataWidth: Int) extends Bundle{
  val Ni: Int = 1 << IDWidth
  val No: Int = 1 << AddrWidth
  val inAddr = Input(Vec(Ni, UInt(AddrWidth.W)))
  val inData = Input(Vec(Ni, UInt(DataWidth.W)))
  val inValid = Input(Vec(Ni, Bool()))
  val outAck = Output(Vec(Ni, Bool()))
  val outData = Output(Vec(No, UInt(DataWidth.W)))
  val outValid = Output(Vec(No, Bool()))
}

abstract class SwitchInterfaceModule(IDWidth: Int, AddrWidth: Int, DataWidth: Int) extends Module {
  val Ni: Int = 1 << IDWidth
  val No: Int = 1 << AddrWidth
  val io = IO(new SwitchInterface(IDWidth, AddrWidth, DataWidth))
}

class Switch(IDWidth: Int, AddrWidth: Int, DataWidth: Int) extends SwitchInterfaceModule(IDWidth, AddrWidth, DataWidth) {
  val select = Wire(Vec(No, UInt(IDWidth.W)))
  val valid = Wire(Vec(No, Vec(Ni, Bool())))

  for (i <- 0 until No) {
    for (j <- 0 until Ni){
      valid(i)(j) := io.inValid(j) && (io.inAddr(j) === i.asUInt(AddrWidth.W))
    }
    select(i) := PriorityEncoder(valid(i))
    io.outData(i) := io.inData(select(i))
    io.outValid(i) := valid(i).asUInt.orR
  }

  val output = Wire(Vec(Ni, Vec(No, Bool())))

  for (i <- 0 until Ni) {
    for (j <- 0 until No) {
      output(i)(j) := io.outValid(j) && (select(j) === i.asUInt(IDWidth.W))
    }
    io.outAck(i) := output(i).asUInt.orR
//    assert(io.outAck(i) === output(i).asUInt.xorR)
  }

}

class SwitchWrapper(IDWidth: Int, AddrWidth: Int, DataWidth: Int) extends SwitchInterfaceModule(IDWidth, AddrWidth, DataWidth) {
  val switch = Module(new Switch(IDWidth, AddrWidth, DataWidth))
  switch.io.inAddr := RegNext(io.inAddr)
  switch.io.inData := RegNext(io.inData)
  switch.io.inValid := RegNext(io.inValid)
  io.outAck := RegNext(switch.io.outAck)
  io.outData := RegNext(switch.io.outData)
  io.outValid := RegNext(switch.io.outValid)
}