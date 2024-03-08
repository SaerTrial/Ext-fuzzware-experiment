import os
import glob
import re
import sys

try:
    from fuzzware_pipeline import naming_conventions as nc
    from fuzzware_pipeline.util.eval_utils import load_job_timing_summary, load_mmio_overhead_elimination_map, merge_mmio_overhead_elimination_maps, describe_mmio_overhead_elimination_map, load_milestone_discovery_timings
    from fuzzware_pipeline.workers.pool import MMIO_MODELING_INCLUDE_PATH
    from fuzzware_pipeline.util.config import load_config_shallow, get_modeled_mmio_contexts
except ImportError as e:
    print(e)
    print("Could not import pipeline. Workon fuzzware?")
    exit(1)



DIR = os.path.dirname(os.path.realpath(__file__))
target_names = ['PIC32MX/Curiosity', 'PIC32MZ/StarterKit']

all_mmio_config = dict()
pattern = re.compile(r'pc_([0-9a-fA-F]+)_mmio_([0-9a-fA-F]+)')



def parse_all_mmio_model_config(config, parent_dict):
    if not parent_dict:
        parent_dict = dict()
    if 'mmio_models' in config and config['mmio_models']:
        for model_name, models in config['mmio_models'].items():
            if model_name not in parent_dict:
                parent_dict[model_name] = set()
            for entry in models.values():
                parent_dict[model_name].add((hex(entry['pc']), hex(entry['addr'])))
    
    return parent_dict
    
    
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
    

def main(file_path):
    num_projects = 0
    for target_name in target_names:
        print(target_name)
        target_mmio_config = dict()
        projdirs = glob.glob(os.path.join(DIR, target_name, "fuzzware-project"))
        if not projdirs:
            print(f"[WARNING] Could not find any project directories for target '{target_name}'")
            continue
	
        for projdir in projdirs:         
            num_projects += 1
            mmio_config = load_config_shallow(os.path.join(projdir, nc.PIPELINE_FILENAME_MMIO_MODEL_CFG))
            target_mmio_config = parse_all_mmio_model_config(mmio_config, target_mmio_config)
        all_mmio_config[target_name.split("/")[1].split(".")[0]] = target_mmio_config
    
    entries = parse_groundtruth_csv(file_path)
    successes, failures = [], []
    for elf_path, model_type, mmio_declaration, comment in entries:
        target_name = elf_path.split("/")[1].split(".")[0]
        elf_name = os.path.basename(elf_path)
        resolved_mmio_declaration = {(f"0x{pattern.search(md).group(1)}", f"0x{pattern.search(md).group(2)}") for md in mmio_declaration.split(",")}

        result = set.intersection(all_mmio_config[target_name][model_type], resolved_mmio_declaration)
        # print(f"{target_name}:{model_type}:{all_mmio_config[target_name][model_type]}:{resolved_mmio_declaration}")
        if len(result):
            successes.append((elf_name, comment))
        else:
            failures.append((elf_name, comment))
	
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
