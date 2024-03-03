#!/bin/bash
DIR="$(dirname "$(readlink -f "$0")")"

TARGET_LIST="interrupt-mode/Curiosity_PIC32MX_FreeRTOS"
TARGET_LIST="$TARGET_LIST polling-mode/Curiosity_PIC32MX_FreeRTOS"
FUZZING_RUNTIME=24:00:00

if [ $# -ge 1 ]; then
    NUM_PARALLEL_INSTANCES="$1"
else
    # Experiment default: No parallelization
    NUM_PARALLEL_INSTANCES=1
fi

if [ $# -ge 2 ]; then
    EXPERIMENT_REPETITION_COUNT="$2"
else
    # Experiment default: 5 repetitions
    EXPERIMENT_REPETITION_COUNT=5
fi


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

$DIR/run_metric_aggregation.py
