# Functional testing of modeling engine
In this experiment we evaluate functionality of modeling engine.

## Running the experiment
In its most basic form, reproduce the experiments by running:
```
./run_experiment.sh 
```

## Expected Result
With totally 24 test cases, there are 17 successes and 7 failures as expected.

```
Got 18 successes and 6 failures
Failures:  [('Curiosity.elf', 'Switch case'), ('Curiosity.elf', 'If-else case within a function'), ('Curiosity.elf', 'Bitmask opeartion within a function'), ('StarterKit.elf', 'Switch case'), ('StarterKit.elf', 'If-else case within a function'), ('StarterKit.elf', 'Bitmask opeartion within a function')]
```
