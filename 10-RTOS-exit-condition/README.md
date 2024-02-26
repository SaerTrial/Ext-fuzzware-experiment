# Minimization of Corpus Size with Exit Conditions
In this experiment we validate if setting an exit point to terminate emulation, after the password check function has been called, will help discover more password characters.

## Running the experiment
In its most basic form, reproduce the experiments by running:
```
./run_experiment.sh $(nproc) 6
```

## Expected Result
The interrupt mode found 0 while the polling mode performs better than no exit condition case.