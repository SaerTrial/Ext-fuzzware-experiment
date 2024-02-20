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



# TODO
explain how to build these firmware images
