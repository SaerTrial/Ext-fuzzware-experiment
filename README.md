# Ext-fuzzware Experiments

These experiments are designed to demonstrate the capability of extended Fuzzware.

# Directory Layout
The layout of this directory maps subdirectories to the respective experiments within the publication.

| Subdirectory   | Section  | Experiment | Description |
| -------------- | -------- | -----------| ----------- |
| [05-fuzzing-uart-operating-mode](05-fuzzing-uart-operating-mode)       | 5 | Exploration rate under interrupt and polling modes | Bare-metal and FreeRTOS firmware images are evaluated on their capability to exercise the firmware loig under two different operating mode  |
| [06-PIC32-unittests](06-PIC32-unittests)           | 6 | Unit test cases for peripheral functionality | Evalute if commonly used peripherals are functioning correctly  |
| [07-RTOS-scheduling](07-RTOS-scheduling)           | 7 | Task scheduling between different tasks in FreeRTOS     | Evaluate if tasks are scheduled properly under certain scenarios by a couple of functional testing |
| [08-modeling-test](08-modeling-test)                         | 8 |  Generation of peripheral access models  | Evaluate if the extended system generates a correct model under different scenarios |
| [09-json-parse](09-json-parse)                                                         | 9 | Crashes triggered across experiments                    | Evalute the fuzzing performance when fuzz testing a JSON parse under the interrupt and polling modes |
| [10-RTOS-exit-condition](10-RTOS-exit-condition)                                                         | 10 | Validate if setting an exit point will help improve fuzzing performance                    | Setting an exit point after a password check function has been called to shorten corpus size during fuzzing |



# Building a firmware target
The src folder in each experiment includes source code. Due to time constraints, although we haven't unlocked an option to compile them as cortex-M targets, users only need to open a project corresponding to each target in the src folder, then compile them with MPLABX v6.15 and XC4.35. 

Moreover, each src folder contains compiled binary and its artifacts, feel free to gain more information from there if anything goes unexpected.

Beware that the experiment results may differ if you compile them with a different toolchain than aforementioned one.
