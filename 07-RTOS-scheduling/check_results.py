#!/usr/bin/env python3

import sys
import os
import glob
import re

DIR = os.path.dirname(os.path.realpath(__file__))

NUM_TRACE_ALL = 999999

def parse_groundtruth_csv(file_path):
    entries = []

    with open(file_path, "r") as f:
        prev_elf = None
        first = True
        for l in f.readlines():
            # Skip first
            if first:
                first = False
                continue

            e = l.rstrip().split("\t")
            if not e[0]:
                # print("[*] Taking elf entry from previous")
                e[0] = prev_elf
            prev_elf = e[0]
            if len(e) == 2:
                continue

            entries.append(e)

    return entries

def extract_ordered_bb_lists(bb_text, name_to_addr):
    # First strip whitespaces
    bb_text = bb_text.replace(" ", "")
    if "||" in bb_text:
        bb_texts = bb_text.split("||")
    else:
        bb_texts = [bb_text]

    res = []
    # Check each || - separated entry as a possible success condition
    for bb_text in bb_texts:
        if "->" in bb_text:
            bbs = [int(v, 16) if v.startswith("0x") else name_to_addr[v] for v in bb_text.split("->")]
        else:
            bbs = [int(bb_text, 16) if bb_text.startswith("0x") else name_to_addr[bb_text]]
        res.append(bbs)

    return res



def resolve_context_switch(schedule_type, tasks, log_path) -> bool:
    
    match_pattern = r".*Tsk[0-9]-P[0-9].*"
    extract_pattern = r"Tsk[0-9]"
    context = []

    # read the log file
    with open(log_path, "r") as f:
        for line in f.readlines():
            if re.match(match_pattern, line):
                cur = re.findall(extract_pattern, line)[0]
                
                if schedule_type == "Occurrence":
                    if cur == tasks:
                        return True

                # find the task already in the context, then we clear all
                if "<-" in line :
                    if cur in context:
                        context.clear()
                    context.append(cur)

                    # context-switch checking
                    if schedule_type == "Preemption":
                        if "||" in tasks:
                            for switch in tasks.split("||"):
                                if "->" not in switch:
                                    raise ValueError("expression of context switch is incorrect")
                                
                                if len(context) >= len(switch.split("->")):
                                    # print("test!", context, switch)
                                    tasks_in_switch = switch.replace(" ", "").split("->")
                                    for index in range(len(context)):
                                        if context[index] == tasks_in_switch[0]:
                                            # sub list in another list
                                            if context[index:index+len(tasks_in_switch)] == tasks_in_switch:
                                                return True
                                            else:
                                                break
                        else:
                            if "->" not in tasks:
                                raise ValueError("expression of context switch is incorrect")
                            
                            if len(context) >= len(tasks.split("->")):
                                    # print("test!", context, tasks)
                                    tasks_in_switch = tasks.replace(" ", "").split("->")
                                    for index in range(len(context)):
                                        if context[index] == tasks_in_switch[0]:
                                            # sub list in another list
                                            if context[index:index+len(tasks_in_switch)] == tasks_in_switch:
                                                return True
                                            else:
                                                break   
                                                                        
                elif "->" in line:
                    if cur in context and context[-1] == cur:
                        context.pop()
                    if cur in context and context[-1] != cur:
                        context.clear()

    return False
                

def main(file_path):
    entries = parse_groundtruth_csv(file_path)
    
    successes, failures = [], []
    for elf_path, schedule_type, tasks, comment in entries:
        print(f"elf_path: {elf_path}, schedule_type:{schedule_type}, tasks:{tasks}")
        elf_name = os.path.basename(elf_path)
        target_dir = os.path.join(DIR, elf_path.split(".")[0])

        config_path = os.path.join(target_dir, "config.yml")
        proj_dir = os.path.join(target_dir, "fuzzware-project-run-01")
        assert(os.path.exists(proj_dir))
        assert(os.path.exists(config_path))
        assert(os.path.exists(target_dir))

        logdirs = glob.glob(os.path.join(proj_dir, "logs", "worker_tracegen_[0-9][0-9].log"))
        found = False
        for logdir in logdirs:
            assert(logdir)
            found = resolve_context_switch(schedule_type.replace(" ", ""), tasks.replace(" ", ""), logdir)
            if found:
                successes.append(elf_name)
                break
        
        if not found:
            print(f"Failed {elf_path}")
            failures.append((elf_name, schedule_type))            

    print(f"Got {len(successes)} successes and {len(failures)} failures")

    if failures:
        print("Failures: ", failures)

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f"Usage {sys.argv[0]} <csv_results_file_path>.csv")
        exit(0)

    file_path = sys.argv[1]
    if os.path.exists(file_path):
        main(file_path)
    else:
        print("[-] File does not exist")
