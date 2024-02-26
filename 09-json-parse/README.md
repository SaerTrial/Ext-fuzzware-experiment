# Code coverage of a JSON parser in fuzz testing
In this experiment we perform fuzz testing of a JSON parser in bare-metal firmware images under two operating modes.

## Running the experiment
In its most basic form, reproduce the experiments by running:
```
./run_experiment.sh 
```

## Expected Result
Both modes converge at 880 basic blocks at certain points. The interrupt mode presents a stable exploration of the application logic of this parser while the polling mode performs more aggresively by exploring a high number of unseen basic blocks within 2 hours.
