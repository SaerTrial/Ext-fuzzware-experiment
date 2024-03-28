#!/bin/bash
DIR="$(dirname "$(readlink -f "$0")")"

TARGET_LIST="PIC32MX-FreeRTOS/Curiosity-Idle PIC32MX-FreeRTOS/Curiosity-Task2 PIC32MX-FreeRTOS/Curiosity-Task3 PIC32MX-FreeRTOS/Curiosity-Task4 PIC32MX-FreeRTOS/Curiosity-Task3-Task4"
TARGET_LIST="$TARGET_LIST PIC32MZ-FreeRTOS/StarterKit-Idle PIC32MZ-FreeRTOS/StarterKit-Task2 PIC32MZ-FreeRTOS/StarterKit-Task3 PIC32MZ-FreeRTOS/StarterKit-Task4 PIC32MZ-FreeRTOS/StarterKit-Task3-Task4"

FUZZING_RUNTIME=00:05:00

if [ $# -ge 1 ]; then
    NUM_PARALLEL_INSTANCES="$1"
else
    # Experiment default: No parallelization
    NUM_PARALLEL_INSTANCES=$(nproc)
fi

# Experiment default: 1 repetition
EXPERIMENT_REPETITION_COUNT=1

SKIP_NON_MODELING=1

fuzzware checkenv -n $NUM_PARALLEL_INSTANCES || { echo "Error during initial sanity checks. Please fix according to debug output."; exit 1; }


echo "This is a testing of UART mode in bare-metal and FreeRTOS targets. In total, there are 8 targets, each of which takes 24 hours for running"
echo "Configuration: $EXPERIMENT_REPETITION_COUNT repetitions, $NUM_PARALLEL_INSTANCES running instances in parallel"
sleep 5

# Run all targets with modeling
$DIR/run_targets.sh 1 $EXPERIMENT_REPETITION_COUNT $NUM_PARALLEL_INSTANCES $FUZZING_RUNTIME $TARGET_LIST

if [ $SKIP_NON_MODELING -ne 1 ]; then
    # Run all targets without modeling
    $DIR/run_targets.sh 0 $EXPERIMENT_REPETITION_COUNT $NUM_PARALLEL_INSTANCES $FUZZING_RUNTIME $TARGET_LIST
fi

# "$DIR"/check_results.py "$DIR/groundtruth.csv" || { echo "[ERROR] run_targets failed"; exit 1; }

