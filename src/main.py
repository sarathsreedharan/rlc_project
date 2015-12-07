#!/usr/bin/env python
import os, sys
from plan_executor import *

filePath    = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'demo-files/')
domainFile  = filePath + 'domain.pddl'
problemFile = filePath
tempFile    = 'stdout.txt'
PATH_TO_FD  = "~/Desktop/FAST-DOWNWARD/fast-downward.py $1 $2 --search 'astar(lmcut())' > " + tempFile

def get_plan(domainFile, problemFile):
    cmd = PATH_TO_FD.replace("$1", domainFile).replace("$2", problemFile)
    os.system(cmd)
    with open(tempFile, 'r') as temp:
        flag = False
        plan = []
        for line in temp:

            if 'Plan length:' in line:
                flag = False

            if flag:
                plan.append(line.strip().split('(')[0].strip())

            if 'Actual search time:' in line:
                flag = True

    return plan


if __name__ == '__main__':

    problemFile = problemFile + sys.argv[1]
    record_file_dir =  sys.argv[2]
    plan        = get_plan(domainFile, problemFile)
    print plan
    execute_plan(plan, record_file_dir)
