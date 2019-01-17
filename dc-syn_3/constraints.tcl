# This constraint sets the target clock period for the chip in
# nanoseconds. Note that the first parameter is the name of the clock
# signal in your verlog design. If you called it something different than
# clk you will need to change this. You should set this constraint
# carefully. If the period is unrealistically small then the tools will
# spend forever trying to meet timing and ultimately fail. If the period
# is too large the tools will have no trouble but you will get a very
# conservative implementation.

#${CLOCK_PERIOD}

# This constrainst sets the load capacitance in picofarads of the
# output pins of your design. 4fF is reasonable if your design is
# driving another block of on-chip logic.

set_flatten true
#set_load -pin_load 0.004 [all_outputs]

# This constraint sets the input drive strength of the input pins of
# your design. We specifiy a specific standard cell which models what
# would be driving the inputs. INVX1 is a small inverter and is
# reasonable if another block of on-chip logic is driving your inputs.


create_clock clock -name idea_clock1 -period 0.1

#if {$CR_Design ne "SBPUnit"} {
#	create_clock clk -name ideal_clock1 -period 0.95
#	set_output_delay 0.0 -clock ideal_clock1 [all_outputs]
#	set_input_delay 0.0 -clock ideal_clock1 [all_inputs]
#}
# set_max_delay 0.2 -from opcode -to [all_outputs]
# set_max_delay 0.2 -from [all_input] -to ToContinue
# set_max_delay 0.35 -from [all_input] -to new_next_symbol
# set_max_delay 0.3 -from new_issuewidth -to new_SBP
# set_max_delay 0.5 -from new_issuewidth -to new_next_symbol
# set_max_delay 0.4 -from new_issuewidth -to new_SBP_symbol
# set_input_delay 0.18 -clock ideal_clock1 FetchedTranTypeRefill
# set_input_delay 0.18 -clock ideal_clock1 opcode
# set_input_delay 0.2 -clock ideal_clock1 QinEmpty
# set_input_delay 0.2 -clock ideal_clock1 EndingCurrFSM
# set_input_delay 0.18 -clock ideal_clock1 EndingNotAction
# set_output_delay 0.1 -clock ideal_clock1 ToContinue
# set_false_path -from MemUnit_/FetchedAction_ -to MemUnit_/FetchedTran_
