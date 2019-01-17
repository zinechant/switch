// See README.md for license details.

package switch

import java.io.File

import chisel3.iotesters
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}


class SwitchUnitTester(c: SwitchInterfaceModule) extends PeekPokeTester[SwitchInterfaceModule](c) {

  private val switch = c

  poke(switch.io.inAddr, IndexedSeq(BigInt(0), BigInt(1), BigInt(2), BigInt(3)))
  poke(switch.io.inData, IndexedSeq(BigInt(0), BigInt(1), BigInt(2), BigInt(3)))
  poke(switch.io.inValid, IndexedSeq(BigInt(1), BigInt(1), BigInt(1), BigInt(1)))
  step(2)
  printf("outAck: %s\n" , peek(switch.io.outAck).toString())
  printf("outData: %s\n" , peek(switch.io.outData).toString())
  printf("outValid: %s\n" , peek(switch.io.outValid).toString())
  println()

  poke(switch.io.inValid, IndexedSeq(BigInt(0), BigInt(0), BigInt(0), BigInt(0)))
  step(2)
  printf("outAck: %s\n" , peek(switch.io.outAck).toString())
  printf("outData: %s\n" , peek(switch.io.outData).toString())
  printf("outValid: %s\n" , peek(switch.io.outValid).toString())
  println()

  poke(switch.io.inAddr, IndexedSeq(BigInt(1), BigInt(1), BigInt(2), BigInt(2)))
  poke(switch.io.inData, IndexedSeq(BigInt(0), BigInt(1), BigInt(2), BigInt(3)))
  poke(switch.io.inValid, IndexedSeq(BigInt(1), BigInt(0), BigInt(1), BigInt(1)))
  step(2)
  printf("outAck: %s\n" , peek(switch.io.outAck).toString())
  printf("outData: %s\n" , peek(switch.io.outData).toString())
  printf("outValid: %s\n" , peek(switch.io.outValid).toString())
  println()
}

