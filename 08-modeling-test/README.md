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
An example of failed case as the following code snippets, the tracked MMIO variable is written to the stack then read back to register v0, which is later being used for comparison of a guard-condition value of a branch statement. 

As a result, the modeling engine reported this variable is written out to the envirnment. Upon exmination, the current implementation can not manage a stack, which is left for future work and will be patched soon.
```
lw      $v0, 0xBF806030
sw      $v0, 0x18+var_8($fp)
lw      $v0, 0x18+var_8($fp)
andi    $v0, 0xFF
li      $v1, 2
beq     $v0, $v1, loc_9D000058
nop
```