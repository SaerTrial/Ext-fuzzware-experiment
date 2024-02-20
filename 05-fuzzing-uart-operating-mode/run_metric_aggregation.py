#!/usr/bin/env python3
import os
import glob
try:
    from fuzzware_pipeline import naming_conventions as nc
    from fuzzware_pipeline.util.eval_utils import load_job_timing_summary, load_mmio_overhead_elimination_map, merge_mmio_overhead_elimination_maps, describe_mmio_overhead_elimination_map, load_milestone_discovery_timings
    from fuzzware_pipeline.workers.pool import MMIO_MODELING_INCLUDE_PATH
    from fuzzware_pipeline.util.config import load_config_shallow, get_modeled_mmio_contexts
except ImportError as e:
    print(e)
    print("Could not import pipeline. Workon fuzzware?")
    exit(1)

from plot import *




FILENAME_MILESTONE_DISCOVERY_TIMINGS="milestone_discovery_timings.csv"
DIR = os.path.dirname(os.path.realpath(__file__))
target_names = [
"interrupt-mode/Curiosity_PIC32MX_FreeRTOS", "interrupt-mode/DUINOMITE_MEGA", "interrupt-mode/StarterKit_PIC32MZ", "interrupt-mode/StarterKit_PIC32MZ_FreeRTOS", "polling-mode/Curiosity_PIC32MX_FreeRTOS", "polling-mode/DUINOMITE_MEGA", "polling-mode/StarterKit_PIC32MZ", "polling-mode/StarterKit_PIC32MZ_FreeRTOS",
]


# 3. Password Discovery Timings
"""
Here we collect and print out all password character discovery timings per run.

This represents the data in Evaluation in the thesis.
"""
print("=== Password Discovery Timings ===")

target_dict = dict()


def load_milestone_discovery_timings_testing(milestone_discovery_path):

    with open(milestone_discovery_path, "r") as f:
        return [int(l.split("\t")[1], 10) for l in f.readlines() if l.strip()]

for target_name in target_names:
    projdirs = glob.glob(os.path.join(DIR, target_name, "fuzzware-project*-run-[0-9][0-9]"))
    if not projdirs:
        print(f"\n[WARNING] Could not find any project directories for target '{target_name}'")
        continue

    discovery_timing_lists_polling = []
    discovery_timing_lists_interrupt = []
    for projdir in projdirs:
        if "_old" in projdir:
            continue
        if "polling" in projdir:
            l = discovery_timing_lists_polling
        elif "interrupt" in projdir:
            l = discovery_timing_lists_interrupt
        milestone_discovery_path = os.path.join(projdir, nc.PIPELINE_DIRNAME_STATS, FILENAME_MILESTONE_DISCOVERY_TIMINGS)
        if not os.path.exists(milestone_discovery_path):
            print(f"[WARNING] Could not find password discovery timings file '{milestone_discovery_path}' in project directory '{projdir}'. The fuzzing running probably has not concluded, yet, was interrupted, or genstats has not been run, yet. Skipping...")
            continue
	
        char_discovery_timings = load_milestone_discovery_timings_testing(milestone_discovery_path)
        l.append(char_discovery_timings)

    dataset = None
    target_name = target_name.split("/")[-1]

    if len(discovery_timing_lists_polling) != 0:
        print(f"\n= Discovery timings per character for target {target_name} (polling) =")
        resulting_discovery_dict = dict(enumerate(zip(*discovery_timing_lists_polling)))
        for i, seconds_to_discovery in resulting_discovery_dict.items():
            print(f"Character {i+1:2d}: {' '.join([f'{s:d}' for s in seconds_to_discovery])}")
        dataset = import_from_dataset(dict(resulting_discovery_dict), target_name, "polling")
              
    if len(discovery_timing_lists_interrupt) != 0:
        print(f"\n= Discovery timings per character for target {target_name} (interrupt) =")
        resulting_discovery_dict = dict(enumerate(zip(*discovery_timing_lists_interrupt)))
        for i, seconds_to_discovery in resulting_discovery_dict.items():
            print(f"Character {i+1:2d}: {' '.join([f'{s:d}' for s in seconds_to_discovery])}")
        dataset = import_from_dataset(dict(resulting_discovery_dict), target_name, "interrupt")

    if target_name not in target_dict:
        target_dict[target_name] = list()
    target_dict[target_name].append(dataset)

# for target_name, timing in target_dict.items():
#     print(f"{target_name}")
#     for each in timing:
#         print(f"{each.mode}: {each.processed_dataset}")

wrapper_plot(target_dict)


print("==================================\n")
