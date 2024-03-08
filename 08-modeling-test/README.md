# Functional testing of modeling engine
In this experiment we evaluate functionality of modeling engine.

## Running the experiment
In its most basic form, reproduce the experiments by running:
```
./run_experiment.sh 
```

## Expected Result
With totally 24 test cases, there are 18 successes and 6 failures as expected.

```
Got 18 successes and 6 failures
Failures:  [('Curiosity.elf', 'Switch case'), ('Curiosity.elf', 'If-else case within a function'), ('Curiosity.elf', 'Bitmask opeartion within a function'), ('StarterKit.elf', 'Switch case'), ('StarterKit.elf', 'If-else case within a function'), ('StarterKit.elf', 'Bitmask opeartion within a function')]
```
## Buggy features in the current implementation
### Switch-case and if-else scenarios
An example of failed case as the following code snippets, this is an entry point to the switch-case/if-else statement, which manages three user-defined cases guarded by value 1,2 and 3. The tracked MMIO variable is written to the stack then read back to register v0, which is later being used for comparison of a guard-condition value of a branch statement. Nonetheless, after fixing this issue by adding an additional checking of the frame pointer, the further problem occurs - three cases are successfully modeled with three corresponding states, and these states are placed in "var-dead-but-path-constrained" stash where the tracked MMIO variable is dead but path is constrained. However, the default case is modeled with a state finally placed in "return-val" stash to indicate a value being returned, then failed set model check to generate a set model for this scenario. This mainly because this problematic state still holds one reference to the tracked MMIO variable when the top-level function has been returned, and this reference has not been killed due to no path constraint on this case. More notebly, the register v0 and v1 have been used throughout the entire function then any reference in both of them can not be killed when returning from this top-level function.


As a result, the modeling engine recognized this scenario as "unmodeled", which is still accpetable since a wrong model isn't assigned.


Given C code example:
```
void set_if_else_model(){
  int rByte;
  rByte = U1RXREG; U1RXREG is represented as a symbolic variable to be tracked
  if (rByte == 0x100) {
    dummy_func();
  }
  else if (rByte == 0x200){
    dummy_func();
  }else {
    dummy_func();
  }
}
```


Its assembly in MIPS:
```
.text.set_if_else_model:9D0005D4                 lw      $v0, 0xBF806030 # symbolic variable, ref: 1
.text.set_if_else_model:9D0005DC                 sw      $v0, 0x18+var_8($fp) # ref: 2
.text.set_if_else_model:9D0005E0                 lw      $v1, 0x18+var_8($fp) # ref: 3
.text.set_if_else_model:9D0005E4                 li      $v0, 0x100 # ref: 2
.text.set_if_else_model:9D0005E8                 bne     $v1, $v0, loc_9D000600 # fixing a var will kill one ref
.text.set_if_else_model:9D0005EC                 nop
.text.set_if_else_model:9D0005F0                 jal     handle_A # ref: 1
.text.set_if_else_model:9D0005F4                 nop
.text.set_if_else_model:9D0005F8                 b       loc_9D000628
.text.set_if_else_model:9D0005FC                 nop
------------------------------------------------------------------------------------
.text.set_if_else_model:9D000600
.text.set_if_else_model:9D000600 loc_9D000600:                            # CODE XREF: set_if_else_model+24↑j
.text.set_if_else_model:9D000600                 lw      $v1, 0x18+var_8($fp)
.text.set_if_else_model:9D000604                 li      $v0, 0x200
.text.set_if_else_model:9D000608                 bne     $v1, $v0, loc_9D000620
.text.set_if_else_model:9D00060C                 nop
.text.set_if_else_model:9D000610                 jal     handle_B
.text.set_if_else_model:9D000614                 nop
.text.set_if_else_model:9D000618                 b       loc_9D000628
.text.set_if_else_model:9D00061C                 nop
... other cases
-----------------------------------------------------------------------------------
.text.set_if_else_model:9D000628 loc_9D000628:                            # CODE XREF: set_if_else_model+34↑j
.text.set_if_else_model:9D000628                                          # set_if_else_model+54↑j
.text.set_if_else_model:9D000628                 nop
.text.set_if_else_model:9D00062C                 move    $sp, $fp
.text.set_if_else_model:9D000630                 lw      $ra, 0x18+var_s4($sp)
.text.set_if_else_model:9D000634                 lw      $fp, 0x18+var_s0($sp)
.text.set_if_else_model:9D000638                 addiu   $sp, 0x20
.text.set_if_else_model:9D00063C                 jr      $ra
.text.set_if_else_model:9D000640                 nop
.text.set_if_else_model:9D000640  # End of function set_if_else_model
```

<strong>Potential solution</strong>: To identify if this current function will return a value, we need to keep track of the usgae over return registers. Based on observations made, we realize data flow analysis may come into play since we have found:

1. If v0 or v1 are set but not used, it is likely used to pass a return value
2. If they are set but only used for branching and are not set later, so it indicates that they are not used for returning a value: that is a strategy you could implement.

This is left to a future work and requires more considerations when it comes to a generic solution for all architectures.