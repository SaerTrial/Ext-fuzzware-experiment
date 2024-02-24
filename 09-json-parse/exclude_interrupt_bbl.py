import argparse
import os
import glob
import shutil
import subprocess


			
def aggregate_interrupt_bbs(trace_path):
    with open(trace_path, "r") as f:
        bbs = set()
        collect = False
        for line in f.readlines():
            order, addr, cnt = line.split(" ")
            if int(addr,16) == 0x9fc01600:
                collect = True
                #print(f"{order}, {addr}, {cnt}")
            if int(addr,16) == 0x9d0052a4:
                collect = False
                bbs.add(int(addr, 16))
            if collect:
                bbs.add(int(addr, 16))
    return bbs
            

	
    		
