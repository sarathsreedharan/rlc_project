#!/usr/bin/env python
import os, sys, copy, string

positionList = list(string.ascii_lowercase)[:7]
domainName   = 'domain.pddl'
problemName  = 'template.pddl'
path         = 'problems/'

if __name__ == '__main__':
    
    problemString = ""

    with open('template.pddl','r') as templateFile:
        for line in templateFile:
            problemString += line
            if '(:init' in line:
                problemString += '\t(xx)\n'
            if '(and' in line:
                problemString += '\t(yy)\n'
    
    prob_count = 0
    for init_loc_cup in positionList:
        for init_loc_icecube in positionList:
            if init_loc_icecube != init_loc_cup:

                initString = "(at cup " + init_loc_cup + ")\n\t" + "(at icecube " + init_loc_icecube + ")\n"
                for position in positionList:
                    if position != init_loc_cup and position != init_loc_icecube:
                        initString += '\t(free ' + position + ')\n'
                
                newproblemString = copy.deepcopy(problemString)
                newproblemString = newproblemString.replace("(xx)", initString)
                
                for goal_loc_cup in positionList:

                    goalString = "(at cup " + goal_loc_cup + ")\n\t(in icecube mug)"
                    newproblemString1 = newproblemString.replace("(yy)", goalString)
                    goalString += "\n\t(in water mug)"
                    newproblemString2 = newproblemString.replace("(yy)", goalString)

                    prob_count += 1
                    with open(path + 'problem' + str(prob_count) + '.pddl', 'w') as problemFile:
                        problemFile.write(newproblemString1)
                        
                    prob_count += 1
                    with open(path + 'problem' + str(prob_count) + '.pddl', 'w') as problemFile:
                        problemFile.write(newproblemString2)


                    for goal_loc_icecube in positionList:
                        if goal_loc_icecube != goal_loc_cup:
                            
                            goalString = "(at cup " + goal_loc_cup + ")\n\t" + "(at icecube " + goal_loc_icecube + ")"
                            newproblemString1 = newproblemString.replace("(yy)", goalString)
                            goalString += "\n\t(in water mug)"
                            newproblemString2 = newproblemString.replace("(yy)", goalString)

                            prob_count += 1
                            with open(path + 'problem' + str(prob_count) + '.pddl', 'w') as problemFile:
                                problemFile.write(newproblemString1)
       
                            prob_count += 1
                            with open(path + 'problem' + str(prob_count) + '.pddl', 'w') as problemFile:
                                problemFile.write(newproblemString2)

