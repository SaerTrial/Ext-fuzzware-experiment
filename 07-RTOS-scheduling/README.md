# RTOS Scheduler Testing
In this experiment, we evaluate whether the extended system is able to drive a RTOS core to schedule tasks properly

## Running the experiment
Invocation: `./run_experiment.sh` and this command will run this testing with max number of cores on your machine.


## Computation Resources
For this experiment, two firmware targets are evaluated for 5 mins and each test case will be running for 5 mins. 
Runtime: 10*5 mins on 1 instance.
RAM: 4GB RAM per parallel instance.

## Evaluation method
Apply a user hook in UART write function to redirect output to a terminal, resulting in these UART outputs recorded in gentrace log; Then parse these context switch and compare ones in csv ,e.g., Tsk2-P2 <- means Task2 is executed at this point while Tsk2-P2 -> indicates its exit.


For instance, "Tsk2 -> Tsk3" in the csv file would be translated into a comparison where this specific sequence of task scheduling will be compared with actual logs; It hits when "Tsk2-P2 <-" and "Tsk3-P3 <-" occur in the logs in order. Additionally, schedule type involves occurance and preemption. occurance will only check if a particular task is executed throughout emulation by checking log, while preemption represents a sequence of context switching as examined as the previous example.


## Expected Results
Ten test cases should be passed against groudtruth.csv.
