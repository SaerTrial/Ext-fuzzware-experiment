# Input Discovery Testing
In this experiment, we evaluate the extended system on Input Discovery Testing in two different operating mode when communiating peripherals over UART to identify any area for improvement.

## Running the experiment
Invocation: `./run_experiment.sh 8 10`, which runs the entire experiment with 8 instances and 10 24-hour runs.


## Computation Resources
Runtime: 24*10 hours on 8 instances.
RAM: 8GB RAM per parallel instance.

Estimated Run Time details:
For this experiment, each of target is evaluted for 10 24-hour runs.


The fuzzing stage can be sped up by multiprocessing. Fuzzing multiple targets at once can be enabled by specifying how many instances to run in parallel as an argument to `./run_experiment.sh 8 10`. By default, the number of instances is 1 and users can modify according to their CPU cores.


## Expected Results

Regarding FreeRTOS targets, both modes should be failed to progress in this testing, while bare-metal firmware samples can be able to reach the deep logic of the password reader.

