#!/usr/bin/env python
import os, sys

domainFile  = 'domain.pddl'
problemFile = 'problems/$'
tempFile    = 'stdout.txt'
PATH_TO_FD  = "~/Desktop/FAST-DOWNWARD/fast-downward.py $1 $2 --search 'astar(lmcut())' > " + tempFile

def get_plan(domainFile, problemFile):
    cmd = PATH_TO_FD.replace("$1", domainFile).replace("$2", problemFile)
    os.system(cmd)
    with open(tempFile, 'r') as temp:
        flag = False
        plan = ""
        for line in temp:

            if 'Plan length:' in line:
                flag = False

            if flag:
                plan += line.strip().split('(')[0].strip() + '\n'
            
            if 'Actual search time:' in line:
                flag = True

    return plan


if __name__ == '__main__':

    root = os.getcwd()
    problemList = os.walk('./problems/').next()[2]
    for problem in problemList:
        print 'Solving ' + problem + '...'
        plan = get_plan(domainFile, problemFile.replace('$', problem))
        with open('plans/plan$.dat'.replace('$', problem.split('.')[0].replace('problem','')), 'w') as planFile:
            planFile.write(plan)
