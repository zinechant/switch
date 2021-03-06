// See README.md for license details.

package switch

import chisel3._

/**
  * This provides an alternate way to run tests, by executing then as a main
  * From sbt (Note: the test: prefix is because this main is under the test package hierarchy):
  * {{{
  * test:runMain switch.SwitchMain
  * }}}
  * To see all command line options use:
  * {{{
  * test:runMain switch.SwitchMain --help
  * }}}
  * To run with verilator:
  * {{{
  * test:runMain switch.SwitchMain --backend-name verilator
  * }}}
  * To run with verilator from your terminal shell use:
  * {{{
  * sbt 'test:runMain switch.SwitchMain --backend-name verilator'
  * }}}
  */
object SwitchTest extends App {
  iotesters.Driver.execute[SwitchInterfaceModule](args, () => new Switch(2, 2, 8)) {
    c => new SwitchUnitTester(c)
  }
}

object SwitchWrapperTest extends App {
  for (i <- 1 to 7) {
    iotesters.Driver.execute[SwitchInterfaceModule](args ++ Array("-td", "B%d".format(i)), () => new SwitchWrapper(i, i, 48)) {
      c:SwitchInterfaceModule => new SwitchUnitTester(c)
    }
  }
  println()
}

object SwitchWrapperMain extends App {
  for (i <- 1 to 7) {
    chisel3.Driver.execute(args ++ Array("-td", "B%d".format(i)), () => new SwitchWrapper(i, i, 48))
  }
  println()
}


/**
  * This provides a way to run the firrtl-interpreter REPL (or shell)
  * on the lowered firrtl generated by your circuit. You will be placed
  * in an interactive shell. This can be very helpful as a debugging
  * technique. Type help to see a list of commands.
  *
  * To run from sbt
  * {{{
  * test:runMain switch.SwitchRepl
  * }}}
  * To run from sbt and see the half a zillion options try
  * {{{
  * test:runMain switch.SwitchRepl --help
  * }}}
  */
object SwitchRepl extends App {
  iotesters.Driver.executeFirrtlRepl(args, () => new Switch(2, 2, 8))
}