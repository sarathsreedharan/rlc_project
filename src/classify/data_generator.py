#!/usr/bin/env python
import os, sys


def setFeatureList(actionName = 'MoveAndGrasp', domainFile = 'domain.pddl'):

    featureList = []
    with open(domainFile, 'r') as file:
        for line in file:
            if '(:action' in line:
                action = line.strip().split(' ')[1].lower()
                if action != actionName.lower():
                    featureList.append(action)

    return featureList


if __name__ == '__main__':

    actionName   = 'MoveAndGrasp'
    featureList  = setFeatureList(actionName)

    data         = []
    root         = os.getcwd()
    planFileList = os.walk('./plans/').next()[2]

    for planFile in planFileList:
        print 'Reading ' + planFile + '...'

        with open('plans/' + planFile, 'r') as ff:

            newdata = [0]*len(featureList)
            plan    = ff.read().strip().split('\n')
            flag    = False
            classID = 0

            for action in plan:
                if flag:
                    if actionName.lower() not in action:
                        newdata[featureList.index(action.strip().split(' ')[0])] += 1
                        if 'pour' in action:
                            classID = 1
                    
                if actionName.lower() in action or plan.index(action) == len(plan)-1:
                    if plan.index(action) != 0:
                        data.append([newdata, classID])
                        classID = 0
                        newdata = [0]*len(featureList)
                    flag = True

    with open('data.dat', 'w') as dataFile:
        dataString = ""
        for d in data:
            dataString += str(d) + '\n'
        dataFile.write(dataString)
