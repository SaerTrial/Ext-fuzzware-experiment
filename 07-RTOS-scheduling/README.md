# RTOS Scheduler Testing
In this experiment, we evaluate whether the extended system is able to drive a RTOS core to schedule tasks properly

## Running the experiment
Invocation: `./run_experiment.sh`


## Computation Resources
For this experiment, each of firmware target is evaluated for 15 mins. 
Runtime: 2*15 mins on 1 instance.
RAM: 4GB RAM per parallel instance.


## Expected Results
All context-switch scenarios should be passed against groudtruth.csv.
